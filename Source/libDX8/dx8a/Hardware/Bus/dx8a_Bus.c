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

#include <dx8a/Hardware/Bus/dx8a_Bus.h>
#include <dx8a/Hardware/Ram/dx8a_Ram.h>
#include <dx8a/dx8a_Configuration.h>

#define ROM_MASK     (DX8_ROM_SIZE - 1)
#define RAM12_MASK   (DX8_RAM_12_SIZE - 1)
#define RAM34_MASK   (DX8_RAM_34_SIZE - 1)
#define TILE_MASK    (DX8_RAM_TILE_SIZE - 1)
#define SPRITE_MASK  (DX8_RAM_SPRITE_SIZE - 1)

extern Byte* sRom; //[DX8_ROM_SIZE]
extern Byte* sRam12; //[DX8_KILOBYTES(64)];
extern Byte* sRam34; //[DX8_KILOBYTES(64)];
extern Byte* sTileRam; //[DX8_KILOBYTES(4)];
extern Byte* sSpriteRam; //[DX8_KILOBYTES(4)];

Word Bus_Read(Word address, Byte dma)
{
  Word addressLo, addressHi;
  Word w;
  switch(dma)
  {
    // 0 Rom
    case DMA_Rom:
    {
      addressLo = (address + 0) & ROM_MASK;
      addressHi = (address + 1) & ROM_MASK;
      return MAKE_WORD(sRom[addressLo], sRom[addressHi]);
    }
    // Ram 1 and Ram 2
    case DMA_Ram12:
    {
      addressLo = (address + 0) & RAM12_MASK;
      addressHi = (address + 1) & RAM12_MASK;
      return MAKE_WORD(sRam12[addressLo], sRam12[addressHi]);
    }
    return w;
    // Ram 3 and Ram 4
    case DMA_Ram34:
    {
      addressLo = (address + 0) & RAM34_MASK;
      addressHi = (address + 1) & RAM34_MASK;
      return MAKE_WORD(sRam34[addressLo], sRam34[addressHi]);
    }
    return w;
    // Tile and Sprite Ram
    case DMA_TileSprite:
    {
      if (address < DX8_RAM_TILE_SIZE)
      {
        addressLo = (address + 0) & TILE_MASK;
        addressHi = (address + 1) & TILE_MASK;
        return MAKE_WORD(sTileRam[addressLo], sTileRam[addressHi]);
      }
      else
      {
        addressLo = (address - DX8_RAM_TILE_SIZE + 0) & SPRITE_MASK;
        addressHi = (address - DX8_RAM_TILE_SIZE + 1) & SPRITE_MASK;
        return MAKE_WORD(sSpriteRam[addressLo], sSpriteRam[addressHi]);
      }
    }
    return w;
    // Video Registers
    case DMA_Video168256:
    {
      // @TODO
    }
    return 0;
    // IO
    case DMA_IO:
    {
      // @TODO
    }
    return 0;
    // Reserved
    case DMA_Reserved6:
    { 
      // @TODO
    }
    return 0;
    // Expansion
    case DMA_Expansion:
    {
      // @TODO
    }
    return 0;
  }
  return 0;
}

void Bus_Write(Word address, Byte dma, Word value)
{
  switch(dma)
  {
    // 0 Rom
    case DMA_Rom:
      return;
    // Ram 1 and Ram 2
    case DMA_Ram12:
    {
      sRam12[((address + 0) & (0xFFFF - 1))] = (value & 0xFF);
      sRam12[((address + 1) & (0xFFFF - 1))] = (value >> 8) & 0xFF;
    }
    return;
    // Ram 3 and Ram 4
    case DMA_Ram34:
    {
      sRam34[((address + 0) & (0xFFFF - 1))] = (value & 0xFF);
      sRam34[((address + 1) & (0xFFFF - 1))] = (value >> 8) & 0xFF;
    }
    return;
    // Tile and Sprite Ram
    case DMA_TileSprite:
    {
      address = address & ((DX8_KILOBYTES(8) - 1));

      if (address < 4096)
      {
        sTileRam[((address + 0) & (4096 - 1))] = (value & 0xFF);
        sTileRam[((address + 1) & (4096 - 1))] = (value >> 8) & 0xFF;
      }
      else
      {
        address = address - 4096;
        sTileRam[((address + 0) & (4096 - 1))] = (value & 0xFF);
        sTileRam[((address + 1) & (4096 - 1))] = (value >> 8) & 0xFF;
      }
    }
    return;
    // Graphics Registers
    case DMA_Video168256:
    {
      // @TODO
    }
    return;
    // IO
    case DMA_IO:
    {
      // @TODO
    }
    return;
    // Reserved
    case DMA_Reserved6:
    {
      // @TODO
    }
    return;
    // Expansion
    case DMA_Expansion:
    {
      // @TODO
    }
    return;
  }
}