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

#include <dx8/Core/Mmu160512/dx8_Mmu160512.h>
#include <malloc.h>
#include <string.h>

u8 sMmu160512_PageTable[256] = {
// 0     1     2     3     4     5     6     7
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 1
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 2
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 3
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 4
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 5
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 6
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 7
};

u8 sMmu160512_DmaTable[256] = {
// 0     1     2     3     4     5     6     7
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 0
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 1
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 2
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 3
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 4
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 5
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 6
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // 7
};

u16   sMmu160512_Command;

