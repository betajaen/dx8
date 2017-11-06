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
#include "string.h"

#define REG_A     (cpu->a)
#define REG_PC    (cpu->pc.w)
#define REG_X     (cpu->I.x)
#define REG_Y     (cpu->I.y)
#define REG_Z     (cpu->J.z)
#define REG_W     (cpu->J.w)
#define FL_Z      (cpu->flags.bZero)
#define FL_N      (cpu->flags.bNegative)
#define FL_C      (cpu->flags.bCarry)

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

void Cpu_Reset(Cpu* cpu)
{
  memset(cpu, 0, sizeof(Cpu));
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
// MUL      -- Set R to be R * R1   R /= R1
// DIV      -- Set R to be R / R1   R *= R1
// CMP      -- Compare R and R1, and set flags to result; R1 - R
// JUMP     -- Set PC to DATA + (R0)
// JMP_EQ   -- Jump to DATA, flags.z    = 1
// JMP_NEQ  -- Jump to DATA, flags.z    = 0
// JMP_GT   -- Jump to DATA, flags.n    = 1
// JMP_LT   -- Jump to DATA, flags.c    = 1
// BRA_EQ   -- Call to DATA, flags.z    = 1
// BRA_NEQ  -- Call to DATA, flags.z    = 0
// BRA_GT   -- Call to DATA, flags.n    = 1
// BRA_LT   -- Call to DATA, flags.c    = 1

#define DO_OP_NOP()                 REG_PC += Opf_Single;
#define DO_OP_PUSH(R0)              PushToStack(cpu, R0);             REG_PC += Opf_Single; 
#define DO_OP_POP(R0)               R0 = PopFromStack(cpu);           REG_PC += Opf_Single; 
#define DO_OP_LOAD(R0)              R0 = LoadFromMemory(data.w);      REG_PC += Opf_Address;
#define DO_OP_STORE(R0)             StoreToMemory(data.w, R0);        REG_PC += Opf_Address;
#define DO_OP_CALL()                Call(cpu, 0, data.w);
#define DO_OP_RETURN()              Return(cpu);
#define DO_OP_SET(R0)               R0 = data.lo;                     REG_PC += Opf_Byte;
#define DO_OP_ADD(R0, R1)           R0 += R1;                         REG_PC += Opf_Single;
#define DO_OP_SUB(R0, R1)           R0 -= R1;                         REG_PC += Opf_Single;
#define DO_OP_MUL(R0, R1)           R0 *= R1;                         REG_PC += Opf_Single;
#define DO_OP_AND(R0, R1)           R0 &= R1;                         REG_PC += Opf_Single;
#define DO_OP_OR(R0, R1)            R0 |= R1;                         REG_PC += Opf_Single;
#define DO_OP_XOR(R0, R1)           R0 ^= R1;                         REG_PC += Opf_Single;
#define DO_OP_NOT(R0)               R0 = ~R0;                         REG_PC += Opf_Single;
#define DO_OP_SHIFT_LEFT(R0)        R0 <<= 1;                         REG_PC += Opf_Byte;  
#define DO_OP_SHIFT_RIGHT(R0)       R0 >>= 1;                         REG_PC += Opf_Byte;  
#define DO_OP_ROLL_LEFT(R0)         /*  */                            REG_PC += Opf_Single;
#define DO_OP_ROLL_RIGHT(R0)        /*  */                            REG_PC += Opf_Single;
#define DO_OP_CMP(R0, R1)           Compare(cpu, R0, R1);             REG_PC += Opf_Single;
#define DO_OP_CMP_BIT(R0)           CompareBit(cpu, R0, data.lo);     REG_PC += Opf_Byte;  
#define DO_OP_JMP_ADD(LO, HI)       JumpAdd(cpu, data.w, LO, HI);
#define DO_OP_JMP_ABS(LO, HI)       JumpAbs(cpu, LO, HI);
#define DO_OP_JMP_EQ()              JumpCond(cpu, FL_Z == 1, data.w, REG_PC + Opf_Address);
#define DO_OP_JMP_NEQ()             JumpCond(cpu, FL_Z == 0, data.w, REG_PC + Opf_Address);
#define DO_OP_JMP_GT()              JumpCond(cpu, FL_N == 1, data.w, REG_PC + Opf_Address);
#define DO_OP_JMP_LT()              JumpCond(cpu, FL_C == 1, data.w, REG_PC + Opf_Address);

inline void PushToStack(Cpu* cpu, Byte value)
{
  //! TODO
}

inline Byte PopFromStack(Cpu* cpu)
{
  //! TODO
  return 0;
}

inline void Call(Cpu* cpu, Byte lo_offset, Word callAddress)
{
  Word pc = cpu->pc.w + lo_offset;

  PushToStack(cpu, LO_BYTE(pc));
  PushToStack(cpu, HI_BYTE(pc));
  REG_PC = (callAddress & PROGRAM_SIZE);
}

inline void Return(Cpu* cpu)
{
  cpu->pc.hi = PopFromStack(cpu);
  cpu->pc.lo = PopFromStack(cpu);
}

inline Byte LoadFromMemory(Word address)
{
  return Mmu_Get(address);
}

inline void StoreToMemory(Word address, Byte value)
{
  Mmu_Set(address, value);
}

inline void Compare(Cpu* cpu, Byte lhs, Byte rhs)
{
  cpu->flags.bCarry = (rhs >= lhs);
  Sword val = rhs - lhs;
  cpu->flags.bZero     = (val == 0);
  cpu->flags.bNegative = (val < 0);
}

inline void CompareBit(Cpu* cpu, Byte val, Byte bit)
{
  // TODO
}

inline void JumpAdd(Cpu* cpu, Word addr, Word lo, Word hi)
{
  cpu->pc.w = (addr + lo + hi * 256) & PROGRAM_SIZE;
}

inline void JumpAbs(Cpu* cpu, Word lo, Word hi)
{
  cpu->pc.w = (lo + hi * 256) & PROGRAM_SIZE;
}

inline void JumpCond(Cpu* cpu, bool cond, Word ifTrue, Word ifFalse)
{
  if (cond)
  {
    cpu->pc.w = ifTrue & PROGRAM_SIZE;
  }
  else
  {
    cpu->pc.w = ifFalse & PROGRAM_SIZE;
  }
}

inline void BranchCond(Cpu* cpu, bool cond, Word ifTrue, Word ifFalse)
{
  if (cond)
  {
    Call(cpu, 0, ifTrue);
  }
  else
  {
    cpu->pc.w = ifFalse & PROGRAM_SIZE;
  }
}

int Cpu_Step(Cpu* cpu)
{
  Byte opcode  = Mmu_Get(REG_PC);
  Data data;
  data.lo = Mmu_Get(REG_PC + 1);
  data.hi = Mmu_Get(REG_PC + 2);
  
#undef OP
#define OP(OP, OPERANDS, FORMAT, TIME, CODE) case Op_##OP##_##OPERANDS: CODE; return TIME;

  switch(opcode)
  {
    default:
#include "dx8_Cpu_Opcodes.inc"
  }

  return 1;
}
