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

#include <dx8a/dx8a.h>
#include <dx8a/Hardware/Ram/dx8a_Ram.h>

#include "malloc.h"
#include "string.h"

Byte* sRam12;     
Byte* sRam34;     
Byte* sTileRam;   
Byte* sSpriteRam;
Byte* sRom;

void Ram_Setup()
{
  sRam12 = malloc(DX8_RAM_12_SIZE);
  sRam34 = malloc(DX8_RAM_34_SIZE);
  sTileRam = malloc(DX8_RAM_TILE_SIZE);
  sSpriteRam = malloc(DX8_RAM_SPRITE_SIZE);
  sRom = malloc(DX8_ROM_SIZE);

  memset(sRam12,     0, DX8_RAM_12_SIZE);
  memset(sRam34,     0, DX8_RAM_34_SIZE);
  memset(sTileRam,   0, DX8_RAM_TILE_SIZE);
  memset(sSpriteRam, 0, DX8_RAM_SPRITE_SIZE);
}

void Ram_Teardown()
{
  free(sRom);
  free(sSpriteRam);
  free(sTileRam);
  free(sRam34);
  free(sRam12);
}
