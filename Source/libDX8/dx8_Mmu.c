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

#define DBO_V_ALLOWED 1
bool  sDboV;

void Mmu_SetDboV(bool v)
{
  sDboV = v;
}

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

  switch (mask)
  {
    default:
    case 0:
      sRam[0x8000 + (bank * 0x1000) + address] = value;
    break;
    case 1:
      sRam[0xFFFF + (bank * 0x1000) + address] = value;
    break;
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
  if (address == REG_RAND)
    return rand();
  return sRam[address];
}

Byte* Ram_Get()
{
  return sRam;
}

void Mmu_Setup()
{
  sDboV = false;
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
  sDboV = false;
  memset(sRam, 0xFF, RAM_SIZE); // Memory is initialised with 0xFF's
}

#define PAGE_SIZE 512
#define MAX_PAGE_DEFS 8

inline int Page_VirtualToReal(Word virtual)
{
  int virtualI = virtual, dst, srcLower, srcUpper;
  for(int i=0;i < MAX_PAGE_DEFS;i++)
  {
    dst      = sRam[(REG_MMU_MAP0_DST + 3 * i) + 0] * PAGE_SIZE;

    if (dst == 0)
      continue;

    srcLower = sRam[(REG_MMU_MAP0_DST + 3 * i) + 1] * PAGE_SIZE;
    srcUpper = sRam[(REG_MMU_MAP0_DST + 3 * i) + 2] * PAGE_SIZE;

    if (virtualI >= srcLower && virtualI > srcUpper)
    {
      int realAddress = dst + (virtualI - srcLower);

      LOGF("Id=%i Virtual=%8x Virtual.lo=%8x Virtual.hi=%8x  Dest=%8x", i, virtualI, srcLower, srcUpper, realAddress);

      return realAddress;
    }
  }
  return -1;
}

void Mmu_Set_Real(Word address, Byte value)
{
  int m = address & 0xF000;

  switch(address & 0xF000)
  {
    // Chip or var
    case 0x0000:
      if (address < 512)  // Chip
        Chip_Set(address, value);
      else                // Stack/Var
        sRam[address] = value;
      break;
    // Program
    case 0x1000:
    case 0x2000:
    case 0x3000:
    case 0x4000:
    case 0x5000:
    case 0x6000:
    case 0x7000:
       sRam[address] = value;
       break;
    // Shared
    case 0x8000:  // Bank 0
      Bank_Set(0, address - 0x8000, value);
      break;
    case 0x9000:  // Bank 1
      Bank_Set(1, address - 0x9000, value);
      break;
    case 0xA000:  // Bank 2
      Bank_Set(2, address - 0xA000, value);
      break;
    case 0xB000:  // Bank 3
      Bank_Set(3, address - 0xB000, value);
      break;
    case 0xC000:  // Bank 4
      Bank_Set(4, address - 0xC000, value);
      break;
    case 0xD000:  // Bank 5
      Bank_Set(5, address - 0xD000, value);
      break;
    case 0xE000:  // Bank 6
      Bank_Set(6, address - 0xE000, value);
      break;
    case 0xF000:  // Bank 7
      Bank_Set(7, address - 0xF000, value);
      break;
  }

}

void Mmu_Set(Word address, Byte value)
{
  
  // Virtual mode
  if (sRam[REG_MMU_PAGE_REAL_MODE] == 0)
  {
    // First page is as is. Registers, etc.
    if (address < PAGE_SIZE)
    {
    #if DBO_V_ALLOWED == 1
      if (sDboV)
      {
        LOGF("[Mmu_Set] Virtual Mode;  Virtual=$%4X, Real=$%8X, Value=$%2X", address, address, value);
      }
    #endif
      sRam[address] = value;
    }
    else
    {
      int realAddress = Page_VirtualToReal(address);
    
      if (realAddress >= 0 && realAddress < RAM_SIZE)
      {

#if DBO_V_ALLOWED == 1
        if (sDboV)
        {
          LOGF("[Mmu_Set] Virtual Mode;  Virtual=$%4X, Real=$%8X, Value=$%2X", address, realAddress, value);
        }
#endif

        sRam[realAddress] = value;
      }
    }

#if DBO_V_ALLOWED == 1
    if (sDboV)
    {
      LOGF("[Mmu_Set] Virtual Mode;  Virtual=$%4X, Real=Unmapped, Value=$%2X", address, value);
    }
#endif
    return;
  }
  // Real mode
  else
  {
    Mmu_Set_Real(address, value);
  }
}

Byte Mmu_Get_Real(Word address)
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

Byte Mmu_Get(Word address)
{
  // Virtual mode
  if (sRam[REG_MMU_PAGE_REAL_MODE] == 0)
  {
    // First page is as is. Registers, etc.
    if (address < PAGE_SIZE)
    {
#if DBO_V_ALLOWED == 1
      if (sDboV)
      {
        LOGF("[Mmu_Get] Virtual Mode;  Virtual=$%4X, Real=$%8X, Value=$%2X", address, address, sRam[address]);
      }
#endif
      return sRam[address];
    }
    else
    {
      int realAddress = Page_VirtualToReal(address);

      if (realAddress >= 0 && realAddress < RAM_SIZE)
      {
#if DBO_V_ALLOWED == 1
        if (sDboV)
        {
          LOGF("[Mmu_Get] Virtual Mode;  Virtual=$%4X, Real=$%8X, Value=$%2X", address, realAddress, sRam[realAddress]);
        }
#endif
        return sRam[realAddress];
      }
    }

#if DBO_V_ALLOWED == 1
    if (sDboV)
    {
      LOGF("[Mmu_Get] Virtual Mode;  Virtual=$%4X, Real=Unmapped, Value=$%2X", address, 0x00);
    }
#endif
    return 0x00;
  }
  // Real mode
  else
  {
    return Mmu_Get_Real(address);
  }
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
