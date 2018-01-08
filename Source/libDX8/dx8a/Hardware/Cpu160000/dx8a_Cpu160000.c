//! d8888b.    db    db    .d888b. 
//! 88  `8D    `8b  d8'    88   8D 
//! 88   88     `8bd8'     `VoooY' 
//! 88   88     .dPYb.     .d~~~b.
//! 88  .8D    .8P  Y8.    88   8D
//! Y8888D'    YP    YP    `Y888P'
//!
//!      Dragon X8 Computer
//!    Cyfrifiadur y Ddraig X8
//! 
//! Copyright (c) 2017 Robin Southern   :: https://github.com/betajaen
//! Made in Wales -- For the FC Dev Jam :: https://itch.io/jam/fc-dev-jam
//! 
//! Permission is hereby granted, free of charge, to any person obtaining a copy
//! of this software and associated documentation files (the "Software"), to deal
//! in the Software without restriction, including without limitation the rights
//! to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//! copies of the Software, and to permit persons to whom the Software is
//! furnished to do so, subject to the following conditions:
//! 
//! The above copyright notice and this permission notice shall be included in
//! all copies or substantial portions of the Software.
//! 
//! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//! IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//! THE SOFTWARE.

#include <dx8a/Hardware/Cpu160000/dx8a_Cpu160000.h>
#include <dx8a/Hardware/Mmu164512/dx8a_Mmu164512.h>

#include <string.h>

#define DX8_CYCLES_PER_MEMORY 4

extern struct Cpu16 CPU;

void Cpu16_Execute(Byte opcode, Byte operand, Byte* subCycle);

void Cpu16_Reset()
{
  memset(&CPU, 0, sizeof(struct Cpu16));
  CPU.er.subCycle = 0xF;  // For fetching first instruction.
}

void Cpu16_Bus_WriteWord(Word address, Word data);
void Cpu16_Bus_WriteByte(Word address, Word data);
Word Cpu16_Bus_ReadWord(Word address);
Word Cpu16_Bus_ReadByte(Word address);

void Cpu16_Bus_WriteWord(Word address, Word data)
{
  CPU.memoryAccessThisCycle = true;

  // If any IO pin is raised then the address is treated as second data, and is not modified
  if (CPU.io != 0)
  {
    Mmu_Write(address, data, (CPU.io & 1));
  }
  // Memory write
  else
  {
    // Check for Even Address
    if ((address & 1) == 0)
    {
      // Nice clean write to aligned memory!
      Mmu_Write(address, data, 0);
      CPU.memoryAccessThisCycle = 1;
      CPU.memoryBusDelay = 0;
    }
    else
    {
        // Oh boy! You've done it now.
        // Not only we have have problematic page boundaries, we have to preserve the aligned
        // memory around this unaligned write. So we have to fetch four bytes, and replace
        // our bytes with the new ones, and then do the write.
        // 
        // It'll also take up four extra memory cycles to do so. Seriously, align your memory.
      
        Word lowerWord = Mmu_Read(address - 1);
        Word upperWord = Mmu_Read(address + 1);
        
        Word lo = ((data & 0xFF) << 8)  | (lowerWord & 0xFF);   // (opposite because higher numbers are more left shifted, regardless of endian)
        Word hi = ((data >> 8) & 0xFF)  | (upperWord & 0xFF00); // 

        Mmu_Write(address - 1, lo, 0);
        Mmu_Write(address + 1, hi, 1);
        
        CPU.memoryAccessThisCycle = 1;
        CPU.memoryBusDelay = 3;
    }
  }
}

Word Cpu16_Bus_ReadWord(Word address)
{
  if ((address & 1) == 0)
  {
    CPU.memoryAccessThisCycle = 1;
    CPU.memoryBusDelay = 0;
    // Clean read to aligned memory
    return Mmu_Read(address);
  }
  else
  {
    // Unaligned read from memory.
    return 0;
  }
}

void Cpu16_Bus_WriteByte(Word address, Word value)
{
  CPU.memoryAccessThisCycle = true;

  if ((address & 1) == 1)
  {
    // Odd Address
    // Adjust address to memory, and read the hi byte.
    Word v = Cpu16_Bus_ReadWord(address - 1);
    Word lo = LO_BYTE(v);
    Word m = MAKE_WORD(lo, value);

    Cpu16_Bus_WriteWord(address - 1, m);
  }
  else
  {
    // Even Address, byte will always be lo byte.
    // Odd Address
    // Access aligned to memory, and read the hi byte.
    Word v = Cpu16_Bus_ReadWord(address - 1);
    Word lo = LO_BYTE(v);
    Word m = MAKE_WORD(lo, value);

    Cpu16_Bus_WriteWord(address - 1, m);
  }
}

Word Cpu16_Bus_ReadByte(Word address)
{
  CPU.memoryAccessThisCycle = true;

  if ((address & 1) == 1)
  {
    // Odd Address
    // Adjust address to memory, and read the hi byte.
    Word v = Cpu16_Bus_ReadWord(address - 1);
    Byte hi = HI_BYTE(v);
    return hi;
  }
  else
  {
    // Even Address, byte will always be lo byte.
    Word v = Cpu16_Bus_ReadWord(address);
    Byte lo = LO_BYTE(v);
    return lo;
  }
}

static void Cpu16_PushPcCache(Word pc, Word data)
{
  CPU.programCache[CPU.programCacheNextIndex].pc = pc;
  CPU.programCache[CPU.programCacheNextIndex].data = data;

  CPU.programCacheNextIndex++;
  if (CPU.programCacheNextIndex == CPU16_MAX_PROGRAM_CACHE)
  {
    CPU.programCacheNextIndex = 0;
  }
}

bool Cpu16_SearchCache(Word pc, Word* value)
{
  for(u32 i=0;i < CPU16_MAX_PROGRAM_CACHE;i++)
  {
    struct Cpu16ProgramCacheRegister* cache = CPU.programCache;
    if (cache->pc == pc)
    {
      (*value) = cache->data;
      return true;
    }
  }
  return false;
}

Word Cpu16_PcRead()
{
  Word value;
  if (Cpu16_SearchCache(CPU.pc, &value))
  {
    return value;
  }

  value = Cpu16_Bus_ReadWord(CPU.pc);
  Cpu16_PushPcCache(CPU.pc, value);

  return value;
}

int  Cpu16_PcReadToMdr()
{
  Word value;
  if (Cpu16_SearchCache(CPU.pc, &value))
  {
    return 2;
  }

  CPU.mdr.w = Cpu16_Bus_ReadWord(CPU.pc);
  Cpu16_PushPcCache(CPU.pc, value);

  return 1;
}

void Cpu16_FetchNextInstruction()
{
  memset(&CPU.er, 0, sizeof(CPU.er));

  Word instruction    = Cpu16_PcRead();
  CPU.er.opcode       = LO_BYTE(instruction);
  CPU.er.operand      = HI_BYTE(instruction);
  CPU.er.subCycle     = 0x0;
  CPU.pc         += 2;
}

void Cpu16_Prefetch()
{
  // @TODO
  //  Essentially fetches PC+n. Where n increases each free bus cycle unless PC goes all crazy, and get's reset.
}

void Cpu16_FlushPrefetch()
{
  // This just resets the cache to empty, because the JSR may have moved. We can be clever and only
  // flush if the PC isn't in the cache. Making short jumps really efficent!
  
  for(u32 i=0;i < CPU16_MAX_PROGRAM_CACHE;i++)
  {
    struct Cpu16ProgramCacheRegister* cache = CPU.programCache;
    if (cache->pc == CPU.pc)
    {
      return; // Good, we have the PC cached, no need to flush.
    }
  }
  
  // PC isn't in the area we have cached. Let's clear it.
  for(u32 i=0;i < CPU16_MAX_PROGRAM_CACHE;i++)
  {
    struct Cpu16ProgramCacheRegister* cache = CPU.programCache;
    cache->pc = 0;
    cache->data = 0;
  }

  CPU.memoryAccessThisCycle = true;
  CPU.memoryBusDelay = 2;
}

void Cpu16_BusClock(u32 numBusCycles)
{
  while((numBusCycles--) > 0)
  {
    if (CPU.halt)
    {
      break;
    }
  
    CPU.memoryAccessThisCycle = false;

    // Some memory bus operations take more than one bus cycle; i.e. unaligned writes
    // Delay the CPU until they are done.
    if (CPU.memoryBusDelay > 0)
    {
      CPU.memoryAccessThisCycle = true;
      --CPU.memoryBusDelay;
      continue;
    }

    // Done? Fetch the next instruction.
    if (CPU.er.subCycle == 0xFF)
    {
      Cpu16_FetchNextInstruction();
    }

    // Execute instruction
    Cpu16_Execute(CPU.er.opcode, CPU.er.operand, &CPU.er.subCycle);

    // If we haven't done anything on the bus, then let's do a prefetch!
    if (CPU.memoryAccessThisCycle == false)
    {
      Cpu16_Prefetch();
    }
  }
}

void Cpu16_StartOfFrame()
{
  // @TODO
}

void Cpu16_EndOfFrame(u32 remainingCycles)
{
  // @TODO
}

void Cpu16_CallInterrupt(int interruptName)
{
  // @TODO
}

void Cpu16_Branch_Sword(Sword address)
{
  CPU.pc += address;
  Cpu16_FlushPrefetch();
}

void Cpu16_Branch_Sbyte(Sbyte address)
{
  CPU.pc += address;
  Cpu16_FlushPrefetch();
}
