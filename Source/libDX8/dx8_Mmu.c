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

#include "dx8.h"
#include <malloc.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include "log_c/src/log.h"

Byte* sRam;

Byte Bank_Get(Byte bank, int address)
{
  Byte mask = sRam[REG_MMU_BANK + bank];

  //LOGF("Get Bank=%i Mask=$%2X Address=%i", bank, mask, address);

  switch(mask)
  {
    default:
    case 0:
      return sRam[0x8000 + (bank * 0x1000) + address];
    case 1:
      return sRam[0xFFFF + (bank * 0x1000) + address];
    case 0xFF:
      return Rom_Get(address);
  }
}

void Bank_Set(Byte bank, int address, Byte value)
{
  Byte mask = sRam[REG_MMU_BANK + bank];
  //LOGF("Set Bank=%i Mask=$%2X Address=%i", bank, mask, address);

  switch (address)
  {
    default:
    case 0:
      sRam[0x8000 + (bank * 0x1000) + address] = value;
    case 1:
      sRam[0xFFFF + (bank * 0x1000) + address] = value;
    case 0xFF:
      return; // Can't write to the ROM!
  }
}

void Stack_Set(Byte offset, Byte value)
{
  sRam[REG_STACK_END - offset] = value;
}

Byte Stack_Get(Byte offset)
{
  return sRam[REG_STACK_END - offset];
}

void Chip_Set(Word address, Byte value)
{
  sRam[address] = value;
}

Byte Chip_Get(Word address)
{
  return sRam[address];
}

Byte* Ram_Get()
{
  return sRam;
}

void Mmu_Setup()
{
  sRam = malloc(RAM_SIZE);
  LOGF("Mmu Ram Ptr=%p Size=%i", sRam, RAM_SIZE);
}

void Mmu_Teardown()
{
  free(sRam);
}

void Mmu_TurnOn()
{
  LOGF("MMU Turn on");
  memset(sRam, 0xFF, RAM_SIZE); // Memory is initialised with 0xFF's
}

void Mmu_Set(Word address, Byte value)
{
  int m = address & 0xF000;

  switch(address & 0xF000)
  {
    // Chip or var
    case 0x0000:
      if (address < 512)  // Chip
        Chip_Set(address, value);
      else                // Var
        sRam[address] = value;
      return;
    // Program
    case 0x1000:
    case 0x2000:
    case 0x3000:
    case 0x4000:
    case 0x5000:
    case 0x6000:
    case 0x7000:
       sRam[address] = value;
       return;
    // Shared
    case 0x8000:  // Bank 0
      Bank_Set(0, address - 0x8000, value);
      return;
    case 0x9000:  // Bank 1
      Bank_Set(1, address - 0x9000, value);
      return;
    case 0xA000:  // Bank 2
      Bank_Set(2, address - 0xA000, value);
      return;
    case 0xB000:  // Bank 3
      Bank_Set(3, address - 0xB000, value);
      return;
    case 0xC000:  // Bank 4
      Bank_Set(4, address - 0xC000, value);
      return;
    case 0xD000:  // Bank 5
      Bank_Set(5, address - 0xD000, value);
      return;
    case 0xE000:  // Bank 6
      Bank_Set(6, address - 0xE000, value);
      return;
    case 0xF000:  // Bank 7
      Bank_Set(7, address - 0xF000, value);
      return;
  }
}

Byte Mmu_Get(Word address)
{
  switch(address & 0xF000)
  {
    // Chip or var
    case 0x0000:
      if (address < 512)  // Chip
        return Chip_Get(address);
      else                // Var
        return sRam[address];
    // Program
    case 0x1000:
    case 0x2000:
    case 0x3000:
    case 0x4000:
    case 0x5000:
    case 0x6000:
    case 0x7000:
       return sRam[address];
    // Shared
    case 0x8000:  // Bank 0
      return Bank_Get(0, address - 0x8000);
    case 0x9000:  // Bank 1
      return Bank_Get(1, address - 0x9000);
    case 0xA000:  // Bank 2
      return Bank_Get(2, address - 0xA000);
    case 0xB000:  // Bank 3
      return Bank_Get(3, address - 0xB000);
    case 0xC000:  // Bank 4
      return Bank_Get(4, address - 0xC000);
    case 0xD000:  // Bank 5
      return Bank_Get(5, address - 0xD000);
    case 0xE000:  // Bank 6
      return Bank_Get(6, address - 0xE000);
    case 0xF000:  // Bank 7
      return Bank_Get(7, address - 0xF000);
  }
  return 0xFF;
}

Word Mmu_GetWord(Word address)
{
  Word v;
  v = Mmu_Get(address);
  v |= ((Word) Mmu_Get(address + 1)) << 8;
  return v;
}

Byte Mmu_GetAbs(int address)
{
  if (address >= RAM_SIZE)
    address = address % RAM_SIZE;
  return sRam[address];
}

Word Mmu_GetWordAbs(int address)
{
  Word v;
  v = Mmu_GetAbs(address);
  v |= ((Word)Mmu_GetAbs(address + 1)) << 8;
  return v;
}

typedef struct
{
  Byte op;  // See Interrupts
  Byte state;
  Word cycles;
  union
  {
    struct
    {
      Word dst, len;
      Byte val;
    } opMemSet;
    struct
    {
      Word dst, src, len;
    } opMemCpy;
    struct
    {
      Word dst, src, len;
    } opPrgCpy;
    struct
    {
      Word dst, src, len;
    } opGpuCpy;
    struct
    {
      Word dst, src, len;
    } opBitExp;
  };
} Mmu_CoroutineData;

Mmu_CoroutineData mmuCoroutineData;

#define MMU_DATA       mmuCoroutineData
#define MMU_YIELD      return 2;
#define MMU_RETURN     MMU_DATA.op = 0xFF; return 1;
#define MMU_YIELD_FAIL MMU_DATA.state = 0xFF; MMU_DATA.op = 0xFF; return -1;

int Mmu_Coroutine_Start(Byte type)
{
  MMU_DATA.op = type;
  MMU_DATA.cycles = 0;
  MMU_DATA.state  = 0;

  LOGF("Mmu_Coroutine_Start $%2X", MMU_DATA.op);

  switch(MMU_DATA.op)
  {
    case INT_MEMCPY:
    {
      MMU_DATA.cycles += 2;
      MMU_DATA.opMemCpy.dst = Mmu_GetWord(REG_MMU_W1);
      MMU_DATA.opMemCpy.src = Mmu_GetWord(REG_MMU_W2);
      MMU_DATA.opMemCpy.len = Mmu_GetWord(REG_MMU_W3); // & ~SHARED_SIZE;

      LOGF("ogMemCpy.dst = %4X", MMU_DATA.opMemCpy.dst);
      LOGF("ogMemCpy.src = %4X", MMU_DATA.opMemCpy.src);
      LOGF("ogMemCpy.len = %4X", MMU_DATA.opMemCpy.len);

      if (MMU_DATA.opMemCpy.len == 0)
      {
        LOGF("Failed. Length zero.");
        MMU_YIELD_FAIL;
      }

//     if (MMU_DATA.opMemCpy.src < SHARED_BANK_0 || 
//          MMU_DATA.opMemCpy.dst < SHARED_BANK_0)
//      {
//        MMU_YIELD_FAIL;
//      }

//      MMU_DATA.opMemCpy.src -= SHARED_BANK_0;
//      MMU_DATA.opMemCpy.dst -= SHARED_BANK_0;

      MMU_YIELD;
    }
    break;
    case INT_MEMSET:
    {
      MMU_DATA.cycles += 2;
      MMU_DATA.opMemSet.dst = Mmu_GetWord(REG_MMU_W1);
      MMU_DATA.opMemSet.len = Mmu_GetWord(REG_MMU_W2);
      MMU_DATA.opMemSet.val = Mmu_Get(REG_MMU_B1);

      LOGF("ogMemSet.dst = %4X", MMU_DATA.opMemSet.dst);
      LOGF("ogMemSet.len = %4X", MMU_DATA.opMemSet.len);
      LOGF("ogMemSet.val = %0X", MMU_DATA.opMemSet.val);
      
      if (MMU_DATA.opMemSet.len == 0)
      {
        LOGF("Failed. Length zero.");
        MMU_YIELD_FAIL;
      }

//      if (MMU_DATA.opMemSet.dst < SHARED_BANK_0)
//      {
//        MMU_YIELD_FAIL;
//      }

//      MMU_DATA.opMemSet.dst -= SHARED_BANK_0;

      MMU_YIELD;
    }
    break;
    case INT_PRG2MEM:
    {
      MMU_DATA.cycles += 2;
      MMU_DATA.opPrgCpy.dst = Mmu_GetWord(REG_MMU_W1); //& ~PROGRAM_SIZE;
      MMU_DATA.opPrgCpy.src = Mmu_GetWord(REG_MMU_W2);
      MMU_DATA.opPrgCpy.len = Mmu_GetWord(REG_MMU_W3); //& ~PROGRAM_SIZE;

      LOGF("ogPrgCpy.dst = %4X", MMU_DATA.opPrgCpy.dst);
      LOGF("ogPrgCpy.src = %4X", MMU_DATA.opPrgCpy.src);
      LOGF("ogPrgCpy.len = %4X", MMU_DATA.opPrgCpy.len);

      if (MMU_DATA.opPrgCpy.len == 0)
      {
        LOGF("Failed. Length zero.");
        MMU_YIELD_FAIL;
      }

//      if (MMU_DATA.opPrgCpy.dst < SHARED_BANK_0 || 
//          MMU_DATA.opPrgCpy.src > PROGRAM_SIZE)
//      {
//        LOGF("Failed. (MMU_DATA.opPrgCpy.dst < SHARED_BANK_0) == %i, MMU_DATA.opPrgCpy.src > PROGRAM_SIZE == %i",
//          MMU_DATA.opPrgCpy.dst < SHARED_BANK_0,
//          MMU_DATA.opPrgCpy.src > PROGRAM_SIZE
//        );
//        MMU_YIELD_FAIL;
//      }

//      LOGF("ogPrgCpy seems to be okay");

//      MMU_DATA.opPrgCpy.dst -= SHARED_BANK_0;

      MMU_YIELD;
    }
    break;
    case INT_DEFLATE:
    {
      MMU_DATA.cycles += 2;
      MMU_DATA.opBitExp.dst = Mmu_GetWord(REG_MMU_W1);
      MMU_DATA.opBitExp.src = Mmu_GetWord(REG_MMU_W2);
      MMU_DATA.opBitExp.len = Mmu_GetWord(REG_MMU_W3);

      LOGF("ogRleCpy.dst = %4X", MMU_DATA.opBitExp.dst);
      LOGF("ogRleCpy.src = %4X", MMU_DATA.opBitExp.src);
      LOGF("ogRleCpy.len = %4X", MMU_DATA.opBitExp.len);

      if (MMU_DATA.opBitExp.len == 0)
      {
        LOGF("Failed. Length zero.");
        MMU_YIELD_FAIL;
      }

//      if (MMU_DATA.opBitExp.dst < SHARED_BANK_0 ||
//        MMU_DATA.opBitExp.src > PROGRAM_SIZE)
//      {
//        LOGF("Failed. (MMU_DATA.opBitExp.dst < SHARED_BANK_0) == %i, MMU_DATA.opBitExp.src > PROGRAM_SIZE == %i",
//          MMU_DATA.opBitExp.dst < SHARED_BANK_0,
//          MMU_DATA.opBitExp.src > PROGRAM_SIZE
//        );
//        MMU_YIELD_FAIL;
//      }

      LOGF("ogRleCpy seems to be okay");

//      MMU_DATA.opBitExp.dst -= SHARED_BANK_0;

      MMU_YIELD;
    }
    break;
  }
  return 0;
}

int Mmu_Coroutine()
{
  LOGF("Mmu_Interrupt $%2X About to do", MMU_DATA.op);
  if (MMU_DATA.op == 0xFF)
    return 0;

  LOGF("Mmu_Interrupt $%2X - Okay!", MMU_DATA.op);
  switch(MMU_DATA.op)
  {
    case INT_MEMSET:
    {
      int subCycles = 64;

      while(MMU_DATA.opMemSet.len > 0 || subCycles > 0)
      {
        sRam[MMU_DATA.opMemSet.dst++] = MMU_DATA.opMemSet.val;
        --subCycles;
        --MMU_DATA.opMemSet.len;
      }
      
      MMU_DATA.cycles++;
      
      if (MMU_DATA.opMemSet.len <= 0)
      {
        MMU_RETURN;
      }

      MMU_YIELD;
    }
    break;
    case INT_MEMCPY:
    {
      int subCycles = 64;
      
      while (MMU_DATA.opMemCpy.len > 0 || subCycles > 0)
      {
        sRam[MMU_DATA.opMemCpy.dst++] = sRam[MMU_DATA.opMemCpy.src++];
        --subCycles;
        --MMU_DATA.opMemCpy.len;
      }

      MMU_DATA.cycles++;

      if (MMU_DATA.opMemCpy.len <= 0)
      {
        MMU_RETURN;
      }

      MMU_YIELD;
    }
    break;
    case INT_PRG2MEM:
    {
      int subCycles = 32;
      
      while (MMU_DATA.opPrgCpy.len > 0 || subCycles > 0)
      {
        sRam[MMU_DATA.opPrgCpy.dst++] = sRam[MMU_DATA.opPrgCpy.src++];
        --subCycles;
        --MMU_DATA.opPrgCpy.len;
      }
      
      MMU_DATA.cycles++;

      if (MMU_DATA.opPrgCpy.len <= 0)
      {
        MMU_RETURN;
      }

      MMU_YIELD;

    }
    break;
    case INT_DEFLATE:
    {
      int subCycles = 8;

      while (MMU_DATA.opBitExp.len > 0 || subCycles > 0)
      {
        // Simple bit-length compression.
        // 7th bit is 0 or 1 (data)
        // 6-0 bits is length (max of 126)
        Byte m = sRam[MMU_DATA.opBitExp.src++];
        Byte len = m & 0x7F;
        Byte v = (m & 0x80) >> 7;
        
        //for (Byte i = 0; i < len; i++)
        // {
        //  sSharedRam[MMU_DATA.opBitExp.dst] |= ;
        //}
        --subCycles;
        --MMU_DATA.opBitExp.len;
      }

      MMU_DATA.cycles++;

      if (MMU_DATA.opBitExp.len <= 0)
      {
        MMU_RETURN;
      }

      MMU_YIELD;

    }
    break;
  }

  LOGF("Mmu_Interrupt Pass through???");

  MMU_RETURN;
}


void Mmu_Interrupt(Byte interrupt)
{
  LOGF("Mmu_Interrupt $%2X", interrupt);
  Mmu_Coroutine_Start(interrupt);
}

bool IsInterrupt();

void Mmu_Step(int steps)
{
  if (IsInterrupt())
    return;
  for(int ii=0;ii < steps;ii++)
  {
    if (MMU_DATA.op == 0xFF)
      return;
    Mmu_Coroutine();
  }
}
