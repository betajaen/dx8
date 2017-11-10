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

Byte* sChipRam;
Byte* sProgramRam;
Byte* sSharedRam;

#define SHARED_BANK_0 0x8000

Byte Program_Get(Word address)
{
  return sProgramRam[address & ~PROGRAM_SIZE];
}

Byte ChipRam_Get(Word address)
{
  return sChipRam[address & ~CHIP_SIZE];
}

Word ChipRam_GetWord(Word address)
{
  Word v;
  v  = sChipRam[(address    )  & ~CHIP_SIZE];
  v |= sChipRam[(address + 1)  & ~CHIP_SIZE]  << 8;
  return v;
}

void ChipRam_Set(Word address, Byte value)
{
  sChipRam[address & ~CHIP_SIZE] = value;
}

Byte Bank_GetMask()
{
  return sChipRam[Chip_MMU_BANK_Relative];
}

void Bank_SetMask(Byte mask)
{
  sChipRam[Chip_MMU_BANK_Relative] = mask;
}

Byte Bank_Get(Byte bank, Word address)
{
  address = (((Bank_GetMask() & bank) != 0) * HALF_SHARED_SIZE) + (bank * BANK_SIZE) + address;
  return sSharedRam[address & ~SHARED_SIZE];
}

void Bank_Set(Byte bank, Word address, Byte value)
{
  address = (((Bank_GetMask() & bank) != 0) * HALF_SHARED_SIZE) + (bank * BANK_SIZE) + address;
  sSharedRam[address & ~SHARED_SIZE] = value;
}

void Stack_Set(Byte offset, Byte value)
{
  sChipRam[Chip_STACK_END_Relative - offset] = value;
}

Byte Stack_Get(Byte offset)
{
  return sChipRam[Chip_STACK_END_Relative - offset];
}

void Shared_Set(Word absoluteAddress, Byte value)
{
  sSharedRam[absoluteAddress & SHARED_SIZE] = value;
}

Byte Shared_Get(Word absoluteAddress)
{
  return sSharedRam[absoluteAddress & SHARED_SIZE];
}

Byte* Shared_GetPtr()
{
  return sSharedRam;
}

void Mmu_Setup()
{
  sChipRam = malloc(CHIP_SIZE);
  memset(sChipRam, 0, CHIP_SIZE);
  sProgramRam = malloc(PROGRAM_SIZE);
  memset(sProgramRam, 0, PROGRAM_SIZE);
  sSharedRam = malloc(SHARED_SIZE);
  memset(sSharedRam, 0xAA, SHARED_SIZE);

  Bank_SetMask(0);

  LOGF("Mmu Chip Ptr=%p Size=%i", sChipRam, CHIP_SIZE);
  LOGF("Mmu Program Ptr=%p Size=%i", sProgramRam, PROGRAM_SIZE);
  LOGF("Mmu Shared Ptr=%p Size=%i", sSharedRam, SHARED_SIZE);
}

void Mmu_Teardown()
{
  free(sSharedRam);
  free(sProgramRam);
  free(sChipRam);
}

void Mmu_Reset()
{
  memset(sChipRam, 0, CHIP_SIZE);
  memset(sProgramRam, 0, PROGRAM_SIZE);
  memset(sSharedRam, 0, SHARED_SIZE);
  LOGF("Mmu Reset");
}

bool Mmu_CopyToProgramRam(void* data, int length)
{
  if (data != NULL)
  {
    int len = length & ~PROGRAM_SIZE;

    memcpy(sProgramRam, data, len);
    LOGF("Loaded Program ROM Length=%i", len);
    Cpu_Reset(true);

    // FILE* f = fopen("program.dat", "wb");
    // fwrite(&len, 4, 1, f);
    // fwrite(sProgramRam, len, 1, f);
    // fclose(f);
    
    return true;
  }
  return false;
}

void Mmu_Set(Word address, Byte value)
{
  switch(address & 0xF000)
  {
    case Program_Begin:
    case Program_Begin + 0x1000:
    case Program_Begin + 0x2000:
    case Program_Begin + 0x3000:
      return;
    case Chip_Begin:
      ChipRam_Set(address & 0xBFFF, value);
      return;
    case Gpu_Begin:
      GpuMmu_Set(address & 0xAFFF, value);
      return;
    case Sfx_Begin:
      SfxMmu_Set(address & 0x9FFF, value);
      return;
    case Io_Begin:
      IoMmu_Set(address & 0x8FFF, value);
      return;
    case 0x8000:
      Bank_Set(0, address & 0x7FFF, value);
      return;
    case 0x9000:
      Bank_Set(1, address & 0x6FFF, value);
      return;
    case 0xA000:
      Bank_Set(2, address & 0x5FFF, value);
      return;
    case 0xB000:
      Bank_Set(3, address & 0x4FFF, value);
      return;
    case 0xC000:
      Bank_Set(4, address & 0x3FFF, value);
      return;
    case 0xD000:
      Bank_Set(5, address & 0x2FFF, value);
      return;
    case 0xE000:
      Bank_Set(6, address & 0x1FFF, value);
      return;
    case 0xF000:
      Bank_Set(7, address & 0x0FFF, value);
      return;
  }
}

Byte Mmu_Get(Word address)
{
  switch (address & 0xF000)
  {
    case Program_Begin:
    case Program_Begin + 0x1000:
    case Program_Begin + 0x2000:
    case Program_Begin + 0x3000:
      return Program_Get(address);
    case Chip_Begin:
      case Chip_RAND:
        return rand() & 0xFF;   // TODO: Make this more authentic. Use clocks, etc. 
      return ChipRam_Get(address & 0xBFFF);
    case Gpu_Begin:
      return GpuMmu_Get(address & 0xAFFF);
    case Sfx_Begin:
      return SfxMmu_Get(address & 0x9FFF);
    case Io_Begin:
      return IoMmu_Get(address & 0x8FFF);
    case 0x8000:
      return Bank_Get(0, address & 0x7FFF);
    case 0x9000:
      return Bank_Get(1, address & 0x6FFF);
    case 0xA000:
      return Bank_Get(2, address & 0x5FFF);
    case 0xB000:
      return Bank_Get(3, address & 0x4FFF);
    case 0xC000:
      return Bank_Get(4, address & 0x3FFF);
    case 0xD000:
      return Bank_Get(5, address & 0x2FFF);
    case 0xE000:
      return Bank_Get(6, address & 0x1FFF);
    case 0xF000:
      return Bank_Get(7, address & 0x0FFF);
  }
  return 0;
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
    } opBitExp;
  };
} Mmu_CoroutineData;

Mmu_CoroutineData mmuCoroutineData;

#define MMU_DATA       mmuCoroutineData
#define MMU_YIELD      return 2;
#define MMU_RETURN     MMU_DATA.op = 0xFF; LOGF("Returned Coop");return 1;
#define MMU_YIELD_FAIL MMU_DATA.state = 0xFF; MMU_DATA.op = 0xFF; LOGF("Failed Coop"); return -1;

int Mmu_Coroutine_Start(Byte type)
{
  MMU_DATA.op = type;
  MMU_DATA.cycles = 0;
  MMU_DATA.state  = 0;

  switch(MMU_DATA.op)
  {
    case INT_MMU_MEMCPY:
    {
      MMU_DATA.cycles += 2;
      MMU_DATA.opMemCpy.dst = ChipRam_GetWord(Chip_MMU_W1_Relative);
      MMU_DATA.opMemCpy.src = ChipRam_GetWord(Chip_MMU_W2_Relative);
      MMU_DATA.opMemCpy.len = ChipRam_GetWord(Chip_MMU_W3_Relative) & ~SHARED_SIZE;

      LOGF("ogMemCpy.dst = %4X", MMU_DATA.opMemCpy.dst);
      LOGF("ogMemCpy.src = %4X", MMU_DATA.opMemCpy.src);
      LOGF("ogMemCpy.len = %4X", MMU_DATA.opMemCpy.len);

      if (MMU_DATA.opMemCpy.len == 0)
      {
        LOGF("Failed. Length zero.");
        MMU_YIELD_FAIL;
      }

      if (MMU_DATA.opMemCpy.src < SHARED_BANK_0 || 
          MMU_DATA.opMemCpy.dst < SHARED_BANK_0)
      {
        MMU_YIELD_FAIL;
      }

      MMU_DATA.opMemCpy.src -= SHARED_BANK_0;
      MMU_DATA.opMemCpy.dst -= SHARED_BANK_0;

      MMU_YIELD;
    }
    break;
    case INT_MMU_MEMSET:
    {
      MMU_DATA.cycles += 2;
      MMU_DATA.opMemSet.dst = ChipRam_GetWord(Chip_MMU_W1_Relative);
      MMU_DATA.opMemSet.len = ChipRam_GetWord(Chip_MMU_W2_Relative) & ~HALF_SHARED_SIZE;
      MMU_DATA.opMemSet.val = ChipRam_Get(Chip_MMU_B1_Relative);

      LOGF("ogMemSet.dst = %4X", MMU_DATA.opMemSet.dst);
      LOGF("ogMemSet.len = %4X", MMU_DATA.opMemSet.len);
      LOGF("ogMemSet.val = %0X", MMU_DATA.opMemSet.val);
      
      if (MMU_DATA.opMemSet.len == 0)
      {
        LOGF("Failed. Length zero.");
        MMU_YIELD_FAIL;
      }

      if (MMU_DATA.opMemSet.dst < SHARED_BANK_0)
      {
        MMU_YIELD_FAIL;
      }

      MMU_DATA.opMemSet.dst -= SHARED_BANK_0;

      MMU_YIELD;
    }
    break;
    case INT_MMU_PRGCPY:
    {
      MMU_DATA.cycles += 2;
      MMU_DATA.opPrgCpy.dst = ChipRam_GetWord(Chip_MMU_W1_Relative); //& ~PROGRAM_SIZE;
      MMU_DATA.opPrgCpy.src = ChipRam_GetWord(Chip_MMU_W2_Relative);
      MMU_DATA.opPrgCpy.len = ChipRam_GetWord(Chip_MMU_W3_Relative); //& ~PROGRAM_SIZE;

      LOGF("ogPrgCpy.dst = %4X", MMU_DATA.opPrgCpy.dst);
      LOGF("ogPrgCpy.src = %4X", MMU_DATA.opPrgCpy.src);
      LOGF("ogPrgCpy.len = %4X", MMU_DATA.opPrgCpy.len);

      if (MMU_DATA.opPrgCpy.len == 0)
      {
        LOGF("Failed. Length zero.");
        MMU_YIELD_FAIL;
      }

      if (MMU_DATA.opPrgCpy.dst < SHARED_BANK_0 || 
          MMU_DATA.opPrgCpy.src > PROGRAM_SIZE)
      {
        LOGF("Failed. (MMU_DATA.opPrgCpy.dst < SHARED_BANK_0) == %i, MMU_DATA.opPrgCpy.src > PROGRAM_SIZE == %i",
          MMU_DATA.opPrgCpy.dst < SHARED_BANK_0,
          MMU_DATA.opPrgCpy.src > PROGRAM_SIZE
        );
        MMU_YIELD_FAIL;
      }

      LOGF("ogPrgCpy seems to be okay");

      MMU_DATA.opPrgCpy.dst -= SHARED_BANK_0;

      MMU_YIELD;
    }
    break;
    case INT_MMU_BITEXP:
    {
      MMU_DATA.cycles += 2;
      MMU_DATA.opBitExp.dst = ChipRam_GetWord(Chip_MMU_W1_Relative) & ~PROGRAM_SIZE;
      MMU_DATA.opBitExp.src = ChipRam_GetWord(Chip_MMU_W2_Relative);
      MMU_DATA.opBitExp.len = ChipRam_GetWord(Chip_MMU_W3_Relative) & ~PROGRAM_SIZE;

      LOGF("ogRleCpy.dst = %4X", MMU_DATA.opBitExp.dst);
      LOGF("ogRleCpy.src = %4X", MMU_DATA.opBitExp.src);
      LOGF("ogRleCpy.len = %4X", MMU_DATA.opBitExp.len);

      if (MMU_DATA.opBitExp.len == 0)
      {
        LOGF("Failed. Length zero.");
        MMU_YIELD_FAIL;
      }

      if (MMU_DATA.opBitExp.dst < SHARED_BANK_0 ||
        MMU_DATA.opBitExp.src > PROGRAM_SIZE)
      {
        LOGF("Failed. (MMU_DATA.opBitExp.dst < SHARED_BANK_0) == %i, MMU_DATA.opBitExp.src > PROGRAM_SIZE == %i",
          MMU_DATA.opBitExp.dst < SHARED_BANK_0,
          MMU_DATA.opBitExp.src > PROGRAM_SIZE
        );
        MMU_YIELD_FAIL;
      }

      LOGF("ogRleCpy seems to be okay");

      MMU_DATA.opBitExp.dst -= SHARED_BANK_0;

      MMU_YIELD;
    }
    break;
  }
  return 0;
}

int Mmu_Coroutine()
{
  if (MMU_DATA.op == 0xFF)
    return 0;

  switch(MMU_DATA.op)
  {
    case INT_MMU_MEMSET:
    {
      int subCycles = 64;

      while(MMU_DATA.opMemSet.len > 0 || subCycles > 0)
      {
        sSharedRam[MMU_DATA.opMemSet.dst++] = MMU_DATA.opMemSet.val;
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
    case INT_MMU_MEMCPY:
    {
      int subCycles = 64;
      
      while (MMU_DATA.opMemCpy.len > 0 || subCycles > 0)
      {
        sSharedRam[MMU_DATA.opMemCpy.dst++] = sSharedRam[MMU_DATA.opMemCpy.src++];
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
    case INT_MMU_PRGCPY:
    {
      int subCycles = 32;
      
      while (MMU_DATA.opPrgCpy.len > 0 || subCycles > 0)
      {
        sSharedRam[MMU_DATA.opPrgCpy.dst++] = sProgramRam[MMU_DATA.opPrgCpy.src++];
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
    case INT_MMU_BITEXP:
    {
      int subCycles = 8;

      while (MMU_DATA.opBitExp.len > 0 || subCycles > 0)
      {
        // Simple bit-length compression.
        // 7th bit is 0 or 1 (data)
        // 6-0 bits is length (max of 126)
        Byte m = sProgramRam[MMU_DATA.opBitExp.src++];
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

  MMU_RETURN;
}


void Mmu_Interrupt(Byte interrupt)
{
  Mmu_Coroutine_Start(interrupt);
}

void Mmu_Step(int steps)
{
  for(int ii=0;ii < steps;ii++)
  {
    if (MMU_DATA.op == 0xFF)
      return;
    Mmu_Coroutine();
  }
}
