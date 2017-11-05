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

enum Operands
{
  Opr_X = (0) << 5,
  Opr_Y = (1) << 5,
  Opr_Z = (2) << 5,
  Opr_W = (3) << 5,
  Opr_A = (4) << 5,
};

enum OperandPair
{
  Opr_Pair_xx = (0) << 5,
  Opr_Pair_xy = (1) << 5,
  Opr_Pair_xz = (2) << 5,
  Opr_Pair_xw = (3) << 5,
  Opr_Pair_xa = (4) << 5,
  Opr_Pair_yy = (5) << 5,
  Opr_Pair_yz = (6) << 5,
  Opr_Pair_yw = (7) << 5,
  
  Opr_Pair_ya = (0) << 5,
  Opr_Pair_zz = (1) << 5,
  Opr_Pair_zw = (2) << 5,
  Opr_Pair_za = (3) << 5,
  Opr_Pair_ww = (4) << 5,
  Opr_Pair_wa = (5) << 5,
  Opr_Pair_aa = (6) << 5,
};

enum Opcodes
{
  Op_Nop      = 0,
  Op_Push     = 1,
  Op_Pop      = 2,
  Op_Load     = 3,
  Op_Store    = 4,
  Op_Call     = 5,
  Op_Return   = 6,
  Op_Set      = 7,
  Op_Add_1    = 8,
  Op_Add_2    = 9,
  Op_Sub_1    = 10,
  Op_Sub_2    = 11,
  Op_Mul_1    = 12,
  Op_Mul_2    = 13,
  Op_Div_1    = 14,
  Op_Div_2    = 15,
  Op_Jmp      = 16,
  Op_Cmp_1    = 17,
  Op_Cmp_2    = 18,
  Op_Jmp_eq   = 19,
  Op_Jmp_neq  = 20,
  Op_Jmp_gt   = 21,
  Op_Jmp_lt   = 22,
  Op_Swap     = 19,
};


void Cpu_Reset(Cpu* cpu)
{
  memset(cpu, 0, sizeof(Cpu));
}


inline void PushToStack(Cpu* cpu, Mmu* mmu, Byte value)
{
  //! TODO
}

inline Byte PopFromStack(Cpu* cpu, Mmu* mmu)
{
  //! TODO
  return 0;
}

inline Byte LoadFromMemory(Mmu* mmu, Word address)
{
  return mmu->get(address);
}

inline void StoreToMemory(Mmu* mmu, Word address, Byte value)
{
  mmu->set(address, value);
}

typedef CPU_REGISTER(w, lo, hi) Data;


int Cpu_Step(Cpu* cpu, Mmu* mmu)
{
  Byte opcode  = mmu->get(cpu->pc.w);
  Data data;
  data.lo = mmu->get(cpu->pc.w + 1);
  data.hi = mmu->get(cpu->pc.w + 2);
  
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
  // JUMP     -- Set PC to DATA
  // CMP      -- Compare R and R1, and set flags to result; R1 - R
  // JMP_EQ   -- Jump to DATA, flags.zero = 1
  // JMP_NEQ  -- Jump to DATA, flags.zero = 0
  // JMP_GT   -- Jump to DATA, flags???
  // JMP_LT   -- Jump to DATA, flags???

  switch(opcode)
  {
    case Op_Nop: // 0
      cpu->pc.w += 1;
      return 1;


    case (Op_Push | Opr_X): // 1
      PushToStack(cpu, mmu, cpu->I.x);
      cpu->pc.w += 1;
      return 3;
    case (Op_Push | Opr_Y): // 33
      PushToStack(cpu, mmu, cpu->I.y);
      cpu->pc.w += 1;
      return 3;
    case (Op_Push | Opr_Z): // 65
      PushToStack(cpu, mmu, cpu->J.z);
      cpu->pc.w += 1;
      return 3;
    case (Op_Push | Opr_W): // 97
      PushToStack(cpu, mmu, cpu->J.w);
      cpu->pc.w += 1;
      return 3;
    case (Op_Push | Opr_A): // 129
      PushToStack(cpu, mmu, cpu->a);
      cpu->pc.w += 1;
      return 3;


    case (Op_Pop | Opr_X): // 2
      cpu->I.x = PopFromStack(cpu, mmu);
      cpu->pc.w += 1;
      return 3;
    case (Op_Pop | Opr_Y): // 34
      cpu->I.y = PopFromStack(cpu, mmu);
      cpu->pc.w += 1;
      return 3;
    case (Op_Pop | Opr_Z): // 66
      cpu->J.z = PopFromStack(cpu, mmu);
      cpu->pc.w += 1;
      return 3;
    case (Op_Pop | Opr_W): // 98
      cpu->J.w = PopFromStack(cpu, mmu);
      cpu->pc.w += 1;
      return 3;
    case (Op_Pop | Opr_A): // 130
      cpu->a = PopFromStack(cpu, mmu);
      cpu->pc.w += 1;
      return 3;


    case (Op_Load | Opr_X): // 3
      cpu->I.x = LoadFromMemory(mmu, data.w);
      cpu->pc.w += 3;
      return 4;
    case (Op_Load | Opr_Y): // 35
      cpu->I.y = LoadFromMemory(mmu, data.w);
      cpu->pc.w += 3;
      return 4;
    case (Op_Load | Opr_Z): // 67
      cpu->J.z = LoadFromMemory(mmu, data.w);
      cpu->pc.w += 3;
      return 4;
    case (Op_Load | Opr_W): // 99
      cpu->J.w = LoadFromMemory(mmu, data.w);
      cpu->pc.w += 3;
      return 4;
    case (Op_Load | Opr_A): // 131
      cpu->a = LoadFromMemory(mmu, data.w);
      cpu->pc.w += 3;
      return 4;


    case (Op_Store | Opr_X): // 4
      StoreToMemory(mmu, data.w, cpu->I.x);
      cpu->pc.w += 3;
      return 4;
    case (Op_Store | Opr_Y): // 36
      StoreToMemory(mmu, data.w, cpu->I.y);
      cpu->pc.w += 3;
      return 4;
    case (Op_Store | Opr_Z): // 68
      StoreToMemory(mmu, data.w, cpu->J.z);
      cpu->pc.w += 3;
      return 4;
    case (Op_Store | Opr_W): // 100
      StoreToMemory(mmu, data.w, cpu->J.w);
      cpu->pc.w += 3;
      return 4;
    case (Op_Store | Opr_A): // 131
      StoreToMemory(mmu, data.w, cpu->a);
      cpu->pc.w += 3;
      return 4;

    case (Op_Call):  // 5
      PushToStack(cpu, mmu, cpu->pc.lo);
      PushToStack(cpu, mmu, cpu->pc.hi);
      cpu->pc.w = data.w;
      return 4;


    case (Op_Return): // 6
      data.hi = PopFromStack(cpu, mmu);
      data.lo = PopFromStack(cpu, mmu);
      cpu->pc.w = data.w;
      return 4;
   

    case (Op_Set | Opr_X): // 4
      cpu->I.x = data.lo;
      cpu->pc.w += 2;
      return 2;

    case (Op_Set | Opr_Y): // 4
      cpu->I.y = data.lo;
      cpu->pc.w += 2;
      return 2;

    case (Op_Set | Opr_Z): // 4
      cpu->J.z = data.lo;
      cpu->pc.w += 2;
      return 2;

    case (Op_Set | Opr_W): // 4
      cpu->J.w = data.lo;
      cpu->pc.w += 2;
      return 2;

    case (Op_Set | Opr_A): // 4
      cpu->a = data.lo;
      cpu->pc.w += 2;
      return 2;


    case (Op_Add_1 | Opr_Pair_xx): // 8
      cpu->I.x += cpu->I.x;
      cpu->pc.w += 1;
      return 1;

    case (Op_Add_1 | Opr_Pair_xy): // 40
      cpu->I.x += cpu->I.y;
      cpu->pc.w += 1;
      return 1;

    case (Op_Add_1 | Opr_Pair_xz): // 72
      cpu->I.x += cpu->J.z;
      cpu->pc.w += 1;
      return 1;

    case (Op_Add_1 | Opr_Pair_xw): // 104
      cpu->I.x += cpu->J.w;
      cpu->pc.w += 1;
      return 1;

    case (Op_Add_1 | Opr_Pair_xa): // 136
      cpu->I.x += cpu->a;
      cpu->pc.w += 1;
      return 1;


  }

}
