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

Byte*   sRam;
Byte*   sFastRam;
Word    sRand;

#define PAGE_SIZE 1024

#define DBO_V_ALLOWED 1
bool  sRam_DebugMode;

inline bool Mmu_IsRealMode()
{
  return sRam[REG_MMU_PAGE_REAL_MODE] != 0;
}

Byte Mmu_Real_Get(Word address)
{

  if (address == REG_RAND)
  {
    // http://excamera.com/sphinx/article-xorshift.html
    sRand ^= sRand << 13;
    sRand ^= (Word)((int)sRand >> 17);
    sRand ^= sRand << 5;
    if (sRand == 0)
      sRand = -1;
    return (Byte)sRand;
  }

  if (address >= MEM_CHIP_SIZE)
  {
    return Rom_Get(address);
  }
  else
  {
    return sRam[address];
  }
}

void Mmu_Real_Set(Word address, Byte value)
{
  if (address < MEM_CHIP_SIZE)
  {
    sRam[address] = value;

    if (address == 0xE0)
    {
      DX8_LOGF("Real Mode = %i", value);
    }

  }

}

inline int Mmu_Virtual_To_Real_Address(Word address)
{
  Byte page = address / PAGE_SIZE;
  Byte pageTarget = sRam[REG_MMU_PAGE + page];

  int  m = (pageTarget * PAGE_SIZE) + (address % PAGE_SIZE);

  return m;
}

Byte Mmu_Virtual_Get(Word address)
{
  int real = Mmu_Virtual_To_Real_Address(address);

  if (real >= RAM_SIZE)
    return 0x00;

  return sRam[real];
}

void Mmu_Virtual_Set(Word address, Byte value)
{
  int real = Mmu_Virtual_To_Real_Address(address);

  if (real < RAM_SIZE)
  {
    sRam[real] = value;
  }
}



void Mmu_SetDboV(bool v)
{
  sRam_DebugMode = v;
}


void Mmu_Setup()
{
  sRam_DebugMode = false;
  sRam = malloc(RAM_SIZE);
  sFastRam = &sRam[MEM_CHIP_SIZE];
  DX8_LOGF("Mmu Ram Ptr=%p Size=%i", sRam, RAM_SIZE);
}

void Mmu_Teardown()
{
  free(sRam);
}

void Mmu_TurnOn()
{
  DX8_LOGF("MMU Turn on");
  sRam_DebugMode = false;
  sRand = 7;
  memset(sRam, 0xFF, RAM_SIZE); // Memory is initialised with 0xFF's
  sRam[REG_MMU_PAGE_REAL_MODE] = 0xFF;
}

#define MAX_PAGE_DEFS 8

void Mmu_Set(Word address, Byte value)
{
  bool realMode = Mmu_IsRealMode();

  if (address < 1024 || realMode)
  {
    Mmu_Real_Set(address, value);
  }
  else
  {
    Mmu_Virtual_Set(address, value);
  }
}

Byte Mmu_Get(Word address)
{
  bool realMode = Mmu_IsRealMode();

  if (address < 1024 || realMode)
  {
    return Mmu_Real_Get(address);
  }
  else
  {
    return Mmu_Virtual_Get(address);
  }
}

Word Mmu_GetWord(Word address)
{
  Word v;
  v = Mmu_Get(address);
  v |= ((Word) Mmu_Get(address + 1)) << 8;
  return v;
}
