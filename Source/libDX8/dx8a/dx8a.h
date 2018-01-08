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

#ifndef DX8_H
#define DX8_H

#include <stdint.h>
#include <stdbool.h>

#define DX8_CPU_NO_INLINING

#define DX8_DEBUG_INSTRUCTIONS      1
#define DX8_DEBUG_INSTRUCTIONS_HISTORY 512


#define DX8_KILOBYTES(BYTES)            ((BYTES) * 1024)

#define LO_WORD(WORD)    ((WORD) & 0xFF)
#define HI_WORD(WORD)    ((WORD >> 8) & 0xFF)
#define LO_BYTE(WORD)    ((Byte)(WORD & 0xFF))
#define HI_BYTE(WORD)    ((Byte)((WORD >> 8) & 0xFF))
#define LO_NIBBLE(BYTE)  ((BYTE) & 0xF)
#define HI_NIBBLE(BYTE)  ((BYTE >> 4) & 0xF)

#define MAKE_WORD(LO, HI) ((LO) + (HI) * 256)
#define MAKE_LOHI(W, LO, HI) LO = (W & 0xFF);  HI = (W >> 8) & 0xFF;

#define QUOTE(name) #name
#define STR(macro) QUOTE(macro)

typedef uint8_t  Byte;
typedef uint16_t Word;
typedef int8_t   Sbyte;
typedef int16_t  Sword;

typedef uint8_t  u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

typedef int8_t   i8;
typedef int16_t  i16;
typedef int32_t  i32;
typedef int64_t  i64;

#endif
