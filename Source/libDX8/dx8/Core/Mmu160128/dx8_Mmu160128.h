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

#ifndef DX8_MMU1600128_H
#define DX8_MMU1600128_H

#include <dx8/dx8.h>

#define MMU1600128_PAGE_SIZE      1024
#define MMU1600128_COMMAND_WRITE  0
#define MMU1600128_COMMAND_SET_PAGE  1

extern u8*    sRam;
extern u16    sMmu160128_Command;
extern u8     sMmu160128_PageTable[256];

inline Word Mmu1600128_ReadW(Word address)
{
  u32 page       = address / MMU1600128_PAGE_SIZE;
  u32 pageTarget = sMmu160128_PageTable[page];
  u32 real    = (pageTarget * MMU1600128_PAGE_SIZE) + (address % MMU1600128_PAGE_SIZE);
  
  Word m;
  m  = sRam[real    ];
  m |= sRam[real + 1] * 256;
  
  return m;
}

inline void Mmu1600128_WriteW(Word address, Word data, bool commandLine)
{
  // Unlikey!
  if (commandLine && address > MMU1600128_COMMAND_WRITE)
  {
    switch(sMmu160128_Command)
    {
      case MMU1600128_COMMAND_SET_PAGE:
      {
        u8 dst, src;
        dst = LO_BYTE(data);
        src = HI_BYTE(data);
        sMmu160128_PageTable[src] = dst;
      }
      return;
    }
  }
  
  u32 page       = address / MMU1600128_PAGE_SIZE;
  u32 pageTarget = sMmu160128_PageTable[page];
  u32 real    = (pageTarget * MMU1600128_PAGE_SIZE) + (address % MMU1600128_PAGE_SIZE);
      
  Byte lo, hi;
  MAKE_LOHI(data, lo, hi);

  sRam[real    ] = lo;
  sRam[real + 1] = hi;
}

#define Mmu_Read(ADDRESS)               Mmu1600128_ReadW(ADDRESS)
#define Mmu_Write(ADDRESS, DATA, CMD)   Mmu1600128_WriteW(ADDRESS, DATA, CMD)
#define Mmu_Setup()                     Mmu1600128_Setup();
#define MMu_Teardown()                  Mmu1600128_Teardown();


#endif
