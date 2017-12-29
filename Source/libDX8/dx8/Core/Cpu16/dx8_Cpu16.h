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

#ifndef DX8_CPU_H
#define DX8_CPU_H

#include <dx8/dx8.h>

#define CPU16_MAX_INSTRUCTION_CACHE 8

typedef Word CpuRegister;

enum RegisterName
{
  Reg_X,
  Reg_Y,
  Reg_Z,
  Reg_W,
  Reg_A,
  Reg_Instruction,
  Reg_ProgramCounter,
  Reg_Stack,
  Reg_ProgramCounterStack,
  Reg_ConditionFlags,
  Reg_COUNT
};

union Cpu16Registers
{
  Word registers[Reg_COUNT];
  Word x, y, z, w, a, ir, pc, stack, pcStack, cf, mdr, mar;
};

struct Cpu16PrefetchRegister
{
  Word pc, data;
};

struct Cpu16ExecuteRegister
{
  Byte                    opcode;
  Byte                    operand;
  Byte                    subCycle;
  Word                    imm;
  Word                    pc;     // PC where this from.
  Word                    pcNext; // Next address (after PC). Increases by 2 when reading opcode/operand, and then later an imm value
  Word                    mar, mdr, temp;
  bool                    pcNextCached;
};

struct Cpu16
{
  union   Cpu16Registers;
  u32     busCycles;
  bool    halt;
  u8      io;
  u32     memoryCyclePenalty;
  struct  Cpu16PrefetchRegister      cr[CPU16_MAX_INSTRUCTION_CACHE];
  struct  Cpu16ExecuteRegister       er;
  u32                                prCacheNextIdx;
  bool                               memoryAccessThisCycle;
};

void Cpu16_Reset();

void Cpu16_BusClock(u32 cycles);

void Cpu16_StartOfFrame();

void Cpu16_EndOfFrame(u32 cycles);

#endif