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

void Mmu_Set(Word address, Byte value)
{
  switch(address & 0xF000)
  {
    case 0x0000:
    case 0x1000:
    case 0x2000:
    case 0x3000:
      Program_Set(address, value);
      return;
    case 0x4000:
      ChipRam_Set(address & 0xBFFF, value);
      return;
    case 0x5000:
      GpuMmu_Set(address & 0xAFFF, value);
      return;
    case 0x6000:
      SfxMmu_Set(address & 0x9FFF, value);
      return;
    case 0x7000:
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
    case 0x0000:
    case 0x1000:
    case 0x2000:
    case 0x3000:
      return Program_Get(address);
    case 0x4000:
      return ChipRam_Get(address & 0xBFFF);
    case 0x5000:
      return GpuMmu_Get(address & 0xAFFF);
    case 0x6000:
      return SfxMmu_Get(address & 0x9FFF);
    case 0x7000:
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
}
