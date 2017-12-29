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

#ifndef DX8_MMU1600512_H
#define DX8_MMU1600512_H

#include <dx8/dx8.h>
#include <dx8/Core/Bus/dx8_Bus.h>

#define MMU1600512_PAGE_SIZE         2048
#define MMU1600512_COMMAND_WRITE     0
#define MMU1600512_COMMAND_SET_PAGE  1

extern u8*    sRam;
extern u16    sMmu160512_Command;
extern u8     sMmu160512_PageTable[256];
extern u8     sMmu160512_DmaTable[256];


inline void Mmu1600512_GetPageAndDma(Word address, Word* realAddress, Byte* realDma)
{
  u32 page       = address & MMU1600512_PAGE_SIZE;
  u32 pageOffset = address & ~MMU1600512_PAGE_SIZE;
  u32 realPage   = sMmu160512_PageTable[page];

  (*realAddress) = realPage * MMU1600512_PAGE_SIZE;
  (*realDma)     = sMmu160512_DmaTable[page];
}

Byte Rom_Get(Word address);

inline Word Mmu1600512_ReadW(Word address)
{
  Word real;
  Byte dma;
    
  // Odd number!
  if ((address & 1) == 1)
  {
      Word real1, real2;
      Byte dma1, dma2;

    // Odd numbers are problematic for the MMU. There is risks of page boundary crossings
    // The CPU fetchs this in two cycles, and fetches two bytes and discarding
    // the extra bytes. It'll also take up extra cycles to do so. Align your memory, yo!
    
    Mmu1600512_GetPageAndDma(address, &real1, &dma1);
    Word lo = Bus_Read(real1, dma1);    // lower part in hi
    Mmu1600512_GetPageAndDma(address  + 1, &real2, &dma2);
    Word hi = Bus_Read(real2, dma2);        // upper part in lo
    
    // @TODO Cpu penalty.

    return ((lo >> 8) & 0xFF) | (hi & 0xFF);
  }
  else
  {
    // Even number, we will be always in the same page. We can grab the entire two bytes at once!
    Mmu1600512_GetPageAndDma(address, &real, &dma);

    return Bus_Read(real, dma);
  }

}

inline void Mmu1600512_WriteW(Word address, Word data, bool commandLine)
{
  // Unlikey!
  if (commandLine && address > MMU1600512_COMMAND_WRITE)
  {
    switch(sMmu160512_Command)
    {
      case MMU1600512_COMMAND_SET_PAGE:
      {
        u8 dst, src;
        dst = LO_BYTE(data);
        src = HI_BYTE(data);
        sMmu160512_PageTable[src] = dst;
      }
      return;
    }
  }
  else
  {
    // Odd number!
    if ((address & 1) == 1)
    {
    
    }
    else
    {
      Word real;
      Byte dma;
    
      // Even number, we will be always in the same page. We can grab the entire two bytes at once!
      Mmu1600512_GetPageAndDma(address, &real, &dma);

      Bus_Write(real, dma, data);
    }
  }
}

#define Mmu_Read(ADDRESS)               Mmu1600512_ReadW(ADDRESS)
#define Mmu_Write(ADDRESS, DATA, CMD)   Mmu1600512_WriteW(ADDRESS, DATA, CMD)
#define Mmu_Setup()                     Mmu1600512_Setup();
#define MMu_Teardown()                  Mmu1600512_Teardown();


#endif
