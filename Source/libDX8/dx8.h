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

#define CRT_W 320
#define CRT_H 256
#define CRT_DEPTH 3

#define CRT_H_BLANK 20  // 'Pixels/Cycles'
#define CRT_V_BLANK 5  // 'Lines'
#define CRT_V_BLANK_TIME (CRT_V_BLANK * CRT_W)

#define CRT_SCAN_W (CRT_H_BLANK + CRT_W)
#define CRT_SCAN_H (CRT_H)
#define CRT_SCAN_TOTAL_TIME ((CRT_SCAN_W * CRT_SCAN_H) + CRT_V_BLANK_TIME)

#define GPU_PLANE_SIZE ((CRT_W * CRT_H) / 8)

typedef uint8_t  Byte;
typedef uint16_t Word;
typedef int8_t   Sbyte;
typedef int16_t  Sword;

#define CPU_REGISTER(NAME, A, B) \
  struct { union { Word NAME; struct { Byte A, B; };  }; }

typedef struct {
  CPU_REGISTER(I, x, y) I;
  CPU_REGISTER(J, z, w) J;
  CPU_REGISTER(w, lo, hi) pc;
  CPU_REGISTER(w, lo, hi) pcOffset;
  Byte a;
  Byte stack;
  union
  {
    struct {
      Byte  bZero : 1;
      Byte  bNegative : 1;
      Byte  bCarry : 1;
      Byte  flag4 : 1;
      Byte  flag5 : 1;
      Byte  flag6 : 1;
      Byte  flag7 : 1;
      Byte  flag8 : 1;
    };
    Byte _data;
  }
  flags;

  Byte lastOpcode;
  Word lastOperand;
  Byte interrupt;
  Byte halt;
} Cpu;

int Clock(int ms);

void Cpu_Reset();

int Cpu_Step();

void Cpu_Interrupt(Byte name);

Byte Cpu_GetARegister();

void Cpu_SetARegister(Byte value);

Byte Cpu_GetXRegister();

void Cpu_SetXRegister(Byte value);

Byte Cpu_GetYRegister();

void Cpu_SetYRegister(Byte value);

Byte Cpu_GetZRegister();

void Cpu_SetZRegister(Byte value);

Byte Cpu_GetWRegister();

void Cpu_SetWRegister(Byte value);

Word Cpu_GetPcRegister();

void Cpu_SetPcRegister(Word value);

Word Cpu_GetFlagsRegister();

void Cpu_SetFlagsRegister(Byte value);

Byte Cpu_GetStackRegister();

void Cpu_SetStackRegister(Byte value);

Byte Cpu_GetLastOpcode();

Word Cpu_GetLastOperand();

Byte Cpu_GetHalt();

void Cpu_SetHalt(Byte value);

void Mmu_Set(Word address, Byte value);

Byte Mmu_Get(Word address);

Word Mmu_GetWord(Word address);

Byte Mmu_GetAbs(int address);

Word Mmu_GetWordAbs(int address);

void Stack_Set(Byte offset, Byte value);

Byte Stack_Get(Byte offset);

void Mmu_TurnOn();

void Cpu_TurnOn();

void Gpu_TurnOn();

Byte Rom_Get(Word address);

#define RAM_SIZE      (0x400 + 0x7C00 + 0xFFFF)
#define ROM_SIZE      (0x800)

#include "dx8_Registers.inc"
#include "dx8_Constants.inc"
#include "dx8_Interrupts.inc"

#endif
