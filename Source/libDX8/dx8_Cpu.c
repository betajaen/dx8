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
#include <string.h>
#include "log_c/src/log.h"

Cpu cpu;

#define REG_A     (cpu.a)
#define REG_PC    (cpu.pc.w)
#define REG_X     (cpu.I.x)
#define REG_Y     (cpu.I.y)
#define REG_Z     (cpu.J.z)
#define REG_W     (cpu.J.w)
#define FL_Z      (cpu.flags.bZero)
#define FL_N      (cpu.flags.bNegative)
#define FL_C      (cpu.flags.bCarry)

typedef CPU_REGISTER(w, lo, hi) Data;

#define LO_BYTE(WORD)  ((Byte)(WORD & 0xFF))
#define HI_BYTE(WORD)  ((Byte)((WORD >> 8) & 0xFF))

enum OpFormat
{
  Opf_Single  = 1,
  Opf_Byte    = 2,
  Opf_Address = 3,
};

#define OP(OP, OPERANDS, FORMAT, TIME, CODE) Op_##OP##_##OPERANDS,

enum Instructions
{
  #include "dx8_Cpu_Opcodes.inc"
  Op_COUNT
};

void Mmu_Reset();

void Cpu_Reset(bool soft)
{
  LOGF("Cpu Reset. Soft = %i", soft);
  memset(&cpu, 0, sizeof(Cpu));
  if (!soft)
  {
    Mmu_Reset();
  }
}


// NOP      -- Noop
// PUSH     -- Push R to stack
// POP      -- Pop  from stack to R
// LOAD     -- Set R from M
// STORE    -- Set M to R
// CALL     -- Push PC to Stack, Set PC to DATA
// RETURN   -- Pop PC to Stack, Set PC to STACK
// SET      -- Set R to DATA[0]
// ADD      -- Set R to be R + R1;  R += R1
// SUB      -- Set R to be R - R1;  R -= R1
// MUL      -- Set R to be R * R1   R *= R1
// CMP      -- Compare R and R1, and set flags to result; R1 - R
// CMP_BIT  -- Compare 
// JUMP     -- Set PC to DATA + (R0)
// JMP_EQ   -- Jump to DATA, flags.z    = 1
// JMP_NEQ  -- Jump to DATA, flags.z    = 0
// JMP_GT   -- Jump to DATA, flags.n    = 1
// JMP_LT   -- Jump to DATA, flags.c    = 1
// BRA_EQ   -- Do_Call to DATA, flags.z    = 1
// BRA_NEQ  -- Do_Call to DATA, flags.z    = 0
// BRA_GT   -- Do_Call to DATA, flags.n    = 1
// BRA_LT   -- Do_Call to DATA, flags.c    = 1
// LSH      --
// RSH      --
// ROL      --
// ROR      --

#define DO_OP_NOP()                 REG_PC += Opf_Single;
#define DO_OP_PUSH(R0)              PushToStack(R0);             REG_PC += Opf_Single; 
#define DO_OP_POP(R0)               R0 = PopFromStack(cpu);           REG_PC += Opf_Single; 
#define DO_OP_LOAD(R0)              R0 = LoadFromMemory(data.w);      REG_PC += Opf_Address;
#define DO_OP_STORE(R0)             StoreToMemory(data.w, R0);        REG_PC += Opf_Address;
#define DO_OP_CALL()                Do_Call(Opf_Address, data.w);
#define DO_OP_RETURN()              Return(cpu);
#define DO_OP_SET(R0)               R0 = data.lo;                     REG_PC += Opf_Byte;
#define DO_OP_ADD(R0, R1)           R0 += R1;             REG_PC += Opf_Single;
#define DO_OP_SUB(R0, R1)           R0 -= R1;                         REG_PC += Opf_Single;
#define DO_OP_MUL(R0, R1)           R0 *= R1;                         REG_PC += Opf_Single;
#define DO_OP_AND(R0, R1)           R0 &= R1;                         REG_PC += Opf_Single;
#define DO_OP_OR(R0, R1)            R0 |= R1;                         REG_PC += Opf_Single;
#define DO_OP_XOR(R0, R1)           R0 ^= R1;                       REG_PC += Opf_Single;
#define DO_OP_NOT(R0)               R0 = ~R0;                         REG_PC += Opf_Single;
#define DO_OP_SHIFT_LEFT(R0)        R0 <<= 1;                         REG_PC += Opf_Byte;  
#define DO_OP_SHIFT_RIGHT(R0)       R0 >>= 1;                         REG_PC += Opf_Byte;  
#define DO_OP_ROLL_LEFT(R0)         /*  */                            REG_PC += Opf_Single;
#define DO_OP_ROLL_RIGHT(R0)        /*  */                            REG_PC += Opf_Single;
#define DO_OP_CMP(R0, R1)           Compare(R0, R1);             REG_PC += Opf_Single;
#define DO_OP_CMP_BIT(R0)           CompareBit(R0, data.lo);     REG_PC += Opf_Byte;  
#define DO_OP_JMP_ADD(LO, HI)       JumpAdd(data.w, LO, HI);
#define DO_OP_JMP_ABS(LO, HI)       JumpAbs(LO, HI);
#define DO_OP_JMP_EQ()              JumpCond(FL_Z == 1, data.w, REG_PC + Opf_Address);
#define DO_OP_JMP_NEQ()             JumpCond(FL_Z == 0, data.w, REG_PC + Opf_Address);
#define DO_OP_JMP_GT()              JumpCond(FL_N == 1, data.w, REG_PC + Opf_Address);
#define DO_OP_JMP_LT()              JumpCond(FL_C == 1, data.w, REG_PC + Opf_Address);
#define DO_OP_INT()                 DoInterrupt(data.lo);              REG_PC += Opf_Byte;

inline void PushToStack(Byte value)
{
  Stack_Set(cpu.stack, value);
  ++cpu.stack;
 // LOGF("Pushed %02X to stack. Stack size is %i", value, cpu.stack);
}

inline Byte PopFromStack()
{
  --cpu.stack;
  Byte value = Stack_Get(cpu.stack);
 // LOGF("Popped %02X from stack. Stack size is %i", value, cpu.stack);
  return value;
}

inline void Do_Call(Byte lo_offset, Word callAddress)
{
  Word pc = cpu.pc.w + lo_offset;

  PushToStack(LO_BYTE(pc));
  PushToStack(HI_BYTE(pc));
  REG_PC = (callAddress & ~PROGRAM_SIZE);
}

inline void Return()
{
  cpu.pc.hi = PopFromStack();
  cpu.pc.lo = PopFromStack();
 // LOGF("Return Pc = %i, lo=%i, hi=%i", cpu.pc.w, cpu.pc.lo, cpu.pc.hi);
}

inline Byte LoadFromMemory(Word address)
{
  return Mmu_Get(address);
}

inline void StoreToMemory(Word address, Byte value)
{
  Mmu_Set(address, value);
}

inline void Compare(Byte lhs, Byte rhs)
{
  cpu.flags.bCarry = (rhs >= lhs);
  Sword val = rhs - lhs;
  cpu.flags.bZero     = (val == 0);
  cpu.flags.bNegative = (val < 0);
}

inline void CompareBit(Byte val, Byte bit)
{
  // TODO
}

inline void JumpAdd(Word addr, Word lo, Word hi)
{
  cpu.pc.w = (addr + lo + hi * 256) & ~PROGRAM_SIZE;
}

inline void JumpAbs(Word lo, Word hi)
{
  cpu.pc.w = (lo + hi * 256) & ~PROGRAM_SIZE;
}

inline void JumpCond(bool cond, Word ifTrue, Word ifFalse)
{
  if (cond)
  {
    cpu.pc.w = ifTrue & ~PROGRAM_SIZE;
  }
  else
  {
    cpu.pc.w = ifFalse & ~PROGRAM_SIZE;
  }
}

inline void BranchCond(bool cond, Word ifTrue, Word ifFalse)
{
  if (cond)
  {
    Do_Call(0, ifTrue);
  }
  else
  {
    cpu.pc.w = ifFalse & PROGRAM_SIZE;
  }
}

void Mmu_Int_MemCpy();
void Mmu_Int_MemSet();
void Mmu_Int_PrgCpy();

inline void DoInterrupt(Byte name)
{
 // LOGF("Interrupt for %i", name);
  switch(name)
  {
    case INT_MMU_MEMCPY:
      Mmu_Int_MemCpy();
      return;
    case INT_MMU_MEMSET:
      Mmu_Int_MemSet();
      return;
    case INT_MMU_PRGCPY:
      Mmu_Int_PrgCpy();
      return;
    case INT_CPU_RESET:
      Cpu_Reset(true);
      return;
  }
 // LOGF("** Unknown Interrupt %i", name);
}

#undef OP

#define QUOTE(name) #name
#define STR(macro) QUOTE(macro)

#define OP(OP, A,B,C,D)  STR(OP),

const char* OpcodeStr[] = {
#include "dx8_Cpu_Opcodes.inc"
};


int Cpu_Step()
{
  Byte opcode  = Mmu_Get(REG_PC);
  Data data;
  data.lo = Mmu_Get(REG_PC + 1);
  data.hi = Mmu_Get(REG_PC + 2);
  
 // LOGF("Step %Pc: %4x, Op: %2x Lo:%2x Hi: %2x", REG_PC, opcode, data.lo, data.hi);

#undef OP
#define OP(OP, OPERANDS, FORMAT, TIME, CODE) case Op_##OP##_##OPERANDS: CODE; return TIME;

  cpu.lastOpcode = opcode;
  cpu.lastOperand = data.w;

 // LOGF("OPCODE = %s:%i", OpcodeStr[opcode], opcode);

  switch(opcode)
  {
    default:
#include "dx8_Cpu_Opcodes.inc"
  }

  return 1;
}

Byte Cpu_GetLastOpcode()
{
  return cpu.lastOpcode;
}

Word Cpu_GetLastOperand()
{
  return cpu.lastOperand;
}

Byte Cpu_GetARegister()
{
  return REG_A;
}

void Cpu_SetARegister(Byte value)
{
  REG_A = value;
}

Byte Cpu_GetXRegister()
{
  return REG_X;
}

void Cpu_SetXRegister(Byte value)
{
  REG_X = value;
}

Byte Cpu_GetYRegister()
{
  return REG_Y;
}

void Cpu_SetYRegister(Byte value)
{
  REG_Y = value;
}

Byte Cpu_GetZRegister()
{
  return REG_Z;
}

void Cpu_SetZRegister(Byte value)
{
  REG_Z = value;
}

Byte Cpu_GetWRegister()
{
  return REG_W;
}

void Cpu_SetWRegister(Byte value)
{
  REG_W = value;
}

Word Cpu_GetPcRegister()
{
  return REG_PC;
}

void Cpu_SetPcRegister(Word value)
{
  REG_PC = value & ~PROGRAM_SIZE;
}

Word Cpu_GetFlagsRegister()
{
  return cpu.flags._data;
}

void Cpu_SetFlagsRegister(Byte value)
{
  cpu.flags._data = value;
}

Byte Cpu_GetStackRegister()
{
  return cpu.stack;
}

void Cpu_SetStackRegister(Byte value)
{
  cpu.stack;
}

void Gpu_Cycle();

int Cpu_Cycle(int ms)
{
  int count = 0;
  if (ms < 0)
  {
    Cpu_Step();
    count = 1;
  }
  else
  {
    // Temp. Will need to call this multiple times, based on time passed
    for(int i=0;i < 1000;i++)
    {
      Cpu_Step();
    }
  }
  
  Gpu_Cycle();
  return count;
}
