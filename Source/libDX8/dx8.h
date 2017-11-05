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

typedef uint8_t  Byte;
typedef uint16_t Word;
typedef int8_t   Sbyte;
typedef int16_t  Sword;

#define CPU_REGISTER(NAME, A, B) \
  struct { union { Word NAME; struct { Byte A, B; };  }; }

typedef struct {
  CPU_REGISTER(I, x, y) I;
  CPU_REGISTER(J, z, w) J;
  CPU_REGISTER(pc, lo, hi) pc;
  Byte a;
  Byte stack;
  struct {
    Byte  flag1 : 1;
    Byte  flag2 : 1;
    Byte  flag3 : 1;
    Byte  flag4 : 1;
    Byte  flag5 : 1;
    Byte  flag6 : 1;
    Byte  flag7 : 1;
    Byte  flag8 : 1;
  } flags;
} Cpu;

typedef struct {
  Byte (*get)(Word address);
  void (*set)(Word address, Byte value);
} Mmu;


void Cpu_Reset(Cpu* cpu);

int Cpu_Step(Cpu* cpu, Mmu* mmu);

#endif
