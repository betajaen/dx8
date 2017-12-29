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

#include <dx8/Core/Cpu16/dx8_Cpu16.h>
#include <dx8/Core/Mmu160512/dx8_Mmu160512.h>

#include "string.h"

#define DX8_CYCLES_PER_MEMORY 4

struct Cpu16 cpu16;

#define CPU cpu16

#define CPU16_INSTRUCTION_NOP 0x00FE
#define OPERAND_dst LO_NIBBLE(operand)
#define OPERAND_src HI_NIBBLE(operand)

//#define MAKE_WORD(LO, HI) (LO + ((HI) * 256))

#define PC_FETCH() imm = 0

void Cpu16_Reset()
{
  memset(&cpu16, 0, sizeof(struct Cpu16));
  CPU.er.subCycle = 0xF;  // For fetching first instruction.
}

static void Cpu16_WriteW(Word address, Word data);
static void Cpu16_WriteB(Word address, Word data);
static Word Cpu16_ReadW(Word address);
static Word Cpu16_ReadB(Word address);


static void Cpu16_WriteW(Word address, Word data)
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
      CPU.memoryCyclePenalty = 1;
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
        
        CPU.memoryCyclePenalty = 4;
    }
  }
}

static Word Cpu16_ReadW(Word address)
{
  CPU.memoryAccessThisCycle = true;

  if ((address & 1) == 0)
  {
    // Clean read to aligned memory
    return Mmu_Read(address);
  }
  else
  {
    // Unaligned read from memory.

  }
}

static void Cpu16_WriteB(Word address, Word value)
{
  CPU.memoryAccessThisCycle = true;

  if ((address & 1) == 1)
  {
    // Odd Address
    // Adjust address to memory, and read the hi byte.
    Word v = Cpu16_ReadW(address - 1);
    Word lo = LO_BYTE(v);
    Word m;
    MAKE_WORD(lo, value);

    Cpu16_WriteW(address - 1, m);
  }
  else
  {
    // Even Address, byte will always be lo byte.
    // Odd Address
    // Access aligned to memory, and read the hi byte.
    Word v = Cpu16_ReadW(address - 1);
    Word lo = LO_BYTE(v);
    Word m;
    MAKE_WORD(lo, value);

    Cpu16_WriteW(address - 1, m);
  }
}

static Word Cpu16_ReadB(Word address)
{
  CPU.memoryAccessThisCycle = true;

  if ((address & 1) == 1)
  {
    // Odd Address
    // Adjust address to memory, and read the hi byte.
    Word v = Cpu16_ReadW(address - 1);
    Byte hi = HI_BYTE(v);
    return hi;
  }
  else
  {
    // Even Address, byte will always be lo byte.
    Word v = Cpu16_ReadW(address);
    Byte lo = LO_BYTE(v);
    return lo;
  }
}

#define COND_EQ            (false)
#define COND_NEQ           (false)
#define COND_OVERFLOW      (false)
#define COND_CARRY         (false)
#define COND_LT            (false)
#define COND_GT            (false)
#define COND_LT_EQ         (false)
#define COND_GT_EQ         (false)
#define COND_MORE          (false)
#define COND_LOWER         (false)
#define COND_MORE_EQ       (false)
#define COND_LOWER_EQ      (false)
#define COND_ZERO          (false)
#define COND_NOT_ZERO      (false)
#define COND_POSITIVE      (false)
#define COND_NEGATIVE      (false)
#define COND_EQ            (false)
#define COND_NEQ           (false)
#define COND_OVERFLOW      (false)
#define COND_CARRY         (false)
#define COND_LT            (false)
#define COND_GT            (false)
#define COND_LT_EQ         (false)
#define COND_GT_EQ         (false)
#define COND_MORE          (false)
#define COND_LOWER         (false)
#define COND_MORE_EQ       (false)
#define COND_LOWER_EQ      (false)
#define COND_ZERO          (false)
#define COND_NOT_ZERO      (false)
#define COND_POSITIVE      (false)
#define COND_NOT_ZERO      (false)

#define CPU16_ADC(D, S) (0)
#define CPU16_SBC(D, S) (0)
#define CPU16_ROL(D, S) (0)
#define CPU16_ROR(D, S) (0)

static void Cpu16_CmpW(Word a, Word b)
{
}

static void Cpu16_CmpB(Word a, Word b)
{
}

static void Cpu16_CmpBit(Word a, Word bit)
{
}

static void Cpu16_PushPcCache(Word pc, Word data)
{
  CPU.cr[CPU.prCacheNextIdx].pc = pc;
  CPU.cr[CPU.prCacheNextIdx].data = data;

  CPU.prCacheNextIdx++;
  if (CPU.prCacheNextIdx == CPU16_MAX_INSTRUCTION_CACHE)
  {
    CPU.prCacheNextIdx = 0;
  }
}

bool Cpu16_SearchCache(Word pc, Word* value)
{
  for(u32 i=0;i < CPU16_MAX_INSTRUCTION_CACHE;i++)
  {
    struct Cpu16PrefetchRegister* cache = CPU.cr;
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
  // @TODO
  //    Either grab from cache or from memory. Cache first though!
  //    Remember to set CPU.er.pcNextCached if cached!
  //    And remember to set CPU.memoryAccessThisCycle = true; if we got it from memory!!
  //    This is will automatically add to the instruction cache.

  Word value;
  if (Cpu16_SearchCache(CPU.pc, &value))
  {
    CPU.er.pcNextCached;
    return value;
  }

  value = Cpu16_ReadW(CPU.pc);
  Cpu16_PushPcCache(CPU.pc, value);

  return value;
}

#include <dx8/Core/Cpu16/dx8_Cpu16_Opcodes.inc>
#include <dx8/Core/Cpu16/dx8_Cpu16_Cycles.inc>

void Cpu16_FetchNextInstruction()
{
  memset(&CPU.er, 0, sizeof(CPU.er));

  CPU.er.instruction  = Cpu16_PcRead();
  CPU.er.opcode       = CPU.dr.opcode;
  CPU.er.operand      = CPU.dr.operand;
  CPU.er.imm          = 0;
  CPU.er.pcNextCached = false;
  
}

void Cpu16_Prefetch()
{
  // @TODO
  //    Improve on this. Have some sort of resetable counter (reset during a flush), where
  //    it will get PC + counter, and add it into the cache.
  Word next = Cpu16_ReadW(CPU.pc + 2);
  Cpu16_PushPcCache(CPU.pc + 2, next);
}

void Cpu16_Flush()
{
  // This just resets the cache to empty, because the JSR may have moved. We can be clever and only
  // flush if the PC isn't in the cache. Making short jumps really efficent!
  
  for(u32 i=0;i < CPU16_MAX_INSTRUCTION_CACHE;i++)
  {
    struct Cpu16RegisterCache* cache = CPU.cr;
    if (cache->pc == CPU.pc)
    {
      return; // Good, we have the PC cached, no need to flush.
    }
  }
  
  // PC isn't in the area we have cached. Let's clear it.
  for(u32 i=0;i < CPU16_MAX_INSTRUCTION_CACHE;i++)
  {
    struct Cpu16RegisterCache* cache = CPU.cr;
    cache->pc = 0;
    cache->value = 0;
  }
  
}


void Cpu16_BusClock()
{

  if (CPU.halt)
  {
    return;
  }
  
  CPU.memoryAccessThisCycle = false;

  if (CPU.er.subCycle == 0xF)
  {
    Cpu16_FetchNextInstruction();
  }

  // @TODO
  //    We need to pre-know if the next instruction will do a memory read/write
  //    If it does we can't execute it, unless memoryAccessThisCycle is false.
  //    because we've already used it for fetching the memory
  Cpu_DecodeAndRun(CPU.er.opcode, CPU.er.operand, &CPU.er.operand); // Run state

  CPU.busCycles += 1;
  
  // Sneaky get more PC stuff.
  if (CPU.memoryAccessThisCycle = false)
  {
    Cpu16_Prefetch();
  }

}

void Cpu16_StartOfFrame()
{
}

void Cpu16_EndOfFrame(u32 remainingCycles)
{
  CPU.busCycles -= remainingCycles;
}
