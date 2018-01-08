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

#include <dx8a/dx8a.h>

#define CPU16_MAX_PROGRAM_CACHE 8

typedef Word CpuRegister;

#define CHECK_OVERFLOW(X) 0
#define CHECK_CARRY_WORD(X) 0
#define CHECK_CARRY_BYTE(X) 0

enum InterruptName
{
  Int_Reset              = 0,
  Int_BusError           = 1,
  Int_BadOpcode          = 2,
  Int_DivisionByZero     = 3,
  Int_ProtectionEnable = 4,
  Int_ProtectionDisable = 5,
  Int_ProtectionError    = 6
};

enum RegisterName
{
  Reg_X,
  Reg_Y,
  Reg_Z,
  Reg_W,
  Reg_A,
  Reg_COUNT
};

union Cpu16Register
{
  Word w;
  struct { Byte b, b_hi; };
  Sword sw;
  struct { Byte sb, sb_hi; };
};

union Cpu16Registers
{
  union Cpu16Register   registers[Reg_COUNT];
  struct {
    union Cpu16Register x, y, z, w, a;
  };
};

enum ConditionCodeRegisterName
{
  CCR_Negative,
  CCR_Overflow,
  CCR_Zero,
  CCR_Carry,
  CCR_COUNT
};

union Cpu16ConditionCodeRegister
{
  bool registers[CCR_COUNT];
  bool n, v, z, c;
};

struct Cpu16ProgramCacheRegister
{
  Word pc, data;
};

struct Cpu16ExecuteRegister
{
  Byte                               opcode;
  Byte                               operand;
  Byte                               subCycle;
};

struct Cpu16
{
  // Registers
  union   Cpu16Registers             reg;
  union   Cpu16ConditionCodeRegister ccr;
  union   Cpu16Register              mdr;
  Word                               pc;
  Word                               stack[2], pcStack[2];
  int                                protected;
  struct  Cpu16ExecuteRegister       er;

  // Internal state
  struct  Cpu16ProgramCacheRegister  programCache[CPU16_MAX_PROGRAM_CACHE];
  bool                               halt;
  u8                                 io;
  u32                                programCacheNextIndex;
  bool                               memoryAccessThisCycle;
  u32                                memoryBusDelay;
};

void Cpu16_Reset();

void Cpu16_BusClock(u32 numBusCycles);

void Cpu16_StartOfFrame();

void Cpu16_EndOfFrame(u32 cycles);

Word Cpu16_PcRead();

// Reads the next two bytes of PC and puts them in Mdr.
// Does not increase Pc
// 1 - If the data was read not from cache
// 2 - If the data was read from cache
int  Cpu16_PcReadToMdr();

void Cpu16_Bus_WriteWord(Word address, Word data);

void Cpu16_Bus_WriteByte(Word address, Word data);

Word Cpu16_Bus_ReadWord(Word address);

Word Cpu16_Bus_ReadByte(Word address);

void Cpu16_FlushPrefetch();

void Cpu16_CallInterrupt(int interruptName);

void Cpu16_Branch_Sword(Sword address);

void Cpu16_Branch_Sbyte(Sbyte address);

#endif
