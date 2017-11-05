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

#define PROG_SIZE (2 << 15)
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

enum OperandPair
{
  Opr_None,
  Opr_Address,
  Opr_Byte,
  Opr_x,
  Opr_y,
  Opr_z,
  Opr_w,
  Opr_a,
  Opr_xx,
  Opr_xy,
  Opr_xz,
  Opr_xw,
  Opr_xa,
  Opr_yx,
  Opr_yy,
  Opr_yz,
  Opr_yw,
  Opr_ya,
  Opr_zx,
  Opr_zy,
  Opr_zz,
  Opr_zw,
  Opr_za,
  Opr_wx,
  Opr_wy,
  Opr_wz,
  Opr_ww,
  Opr_wa,
  Opr_ax,
  Opr_ay,
  Opr_az,
  Opr_aw,
  Opr_aa
};

enum Opcodes
{
  Op_Nop,
  Op_Push,   
  Op_Pop,
  Op_Load,
  Op_Store,
  Op_Call,
  Op_Return,
  Op_Set,
  Op_Swap,
  Op_Add, 
  Op_Sub,
  Op_Mul,
  Op_Div,
  Op_Jmp,
  Op_SetPc,
  Op_Cmp,
  Op_Jmp_eq,
  Op_Jmp_neq,
  Op_Jmp_gt,
  Op_Jmp_lt,
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

inline void Compare(Cpu* cpu, Byte lhs, Byte rhs)
{
  cpu->flags.bCarry = (rhs >= lhs);
  Sword val = rhs - lhs;
  cpu->flags.bZero     = (val == 0);
  cpu->flags.bNegative = (val < 0);
}

inline void Jump(Cpu* cpu, Word addr, Word lo, Word hi)
{
  cpu->pc.w = (addr + lo + hi * 256) & PROG_SIZE;
}

#define Math_Op(R0, R1, OP, TIME, LEN) R0 OP R1; REG_PC += LEN; return TIME;

int Cpu_Step(Cpu* cpu, Mmu* mmu)
{
  Byte opcode  = mmu->get(REG_PC);
  Data data;
  data.lo = mmu->get(REG_PC + 1);
  data.hi = mmu->get(REG_PC + 2);
  
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
  // JUMP     -- Set PC to DATA + (R0, R1)
  // SET_PC   -- Set PC to R0, R1
  // JMP_EQ   -- Jump to DATA, flags.z    = 1
  // JMP_NEQ  -- Jump to DATA, flags.z    = 0
  // JMP_GT   -- Jump to DATA, flags.n    = 1
  // JMP_LT   -- Jump to DATA, flags.c    = 1

#define OP(IDX, OP, OPERANDS) IDX

#define DO_OP_PUSH(R0)       PushToStack(cpu, mmu, R0);        REG_PC += 1; return 3
#define DO_OP_POP(R0)        R0 = PopFromStack(cpu, mmu);      REG_PC += 1; return 3
#define DO_OP_LOAD(R0)       R0 = LoadFromMemory(mmu, data.w); REG_PC += 3; return 4
#define DO_OP_STORE(R0)      StoreToMemory(mmu, data.w, R0);   REG_PC += 3; return 4
#define DO_OP_SET(R0)        R0 = data.lo;                     REG_PC += 2; return 3
#define DO_OP_ADD(R0, R1)    R0 += R1;                         REG_PC += 1; return 3
#define DO_OP_SUB(R0, R1)    R0 -= R1;                         REG_PC += 1; return 3
#define DO_OP_MUL(R0, R1)    R0 *= R1;                         REG_PC += 2; return 3
#define DO_OP_DIV(R0, R1)    R0 /= R1;                         REG_PC += 2; return 3
#define DO_OP_CMP(R0, R1)    Compare(cpu, R0, R1);             REG_PC += 3; return 3
#define DO_OP_JMP(LO, HI)    Jump(cpu, data.w, LO, HI);        return 4 
#define DO_OP_SET_PC(LO, HI) REG_PC = ((LO + (((Word)HI) * 256)) & PROG_SIZE);  return 4 

  switch(opcode)
  {
    default:
    case OP(0, Op_Nop, Opr_None):
      REG_PC += 1;
      return 1;

    // Push
    case OP(1,  Op_Push, Opr_x): DO_OP_PUSH(REG_X);
    case OP(2,  Op_Push, Opr_y): DO_OP_PUSH(REG_Y);
    case OP(3,  Op_Push, Opr_z): DO_OP_PUSH(REG_Z);
    case OP(4,  Op_Push, Opr_w): DO_OP_PUSH(REG_W);
    case OP(5,  Op_Push, Opr_a): DO_OP_PUSH(REG_A);

    // Pop
    case OP(6,  Op_Pop, Opr_x): DO_OP_POP(REG_X);
    case OP(7,  Op_Pop, Opr_y): DO_OP_POP(REG_Y);
    case OP(8,  Op_Pop, Opr_z): DO_OP_POP(REG_Z);
    case OP(9,  Op_Pop, Opr_w): DO_OP_POP(REG_W);
    case OP(10, Op_Pop, Opr_a): DO_OP_POP(REG_A);

    // Load
    case OP(11, Op_Load, Opr_x): DO_OP_LOAD(REG_X);
    case OP(12, Op_Load, Opr_y): DO_OP_LOAD(REG_Y);
    case OP(13, Op_Load, Opr_z): DO_OP_LOAD(REG_Z);
    case OP(14, Op_Load, Opr_w): DO_OP_LOAD(REG_W);
    case OP(15, Op_Load, Opr_a): DO_OP_LOAD(REG_A);

    // Store
    case OP(16, Op_Store, Opr_x): DO_OP_STORE(REG_X);
    case OP(17, Op_Store, Opr_y): DO_OP_STORE(REG_Y);
    case OP(18, Op_Store, Opr_z): DO_OP_STORE(REG_Z);
    case OP(19, Op_Store, Opr_w): DO_OP_STORE(REG_W);
    case OP(20, Op_Store, Opr_a): DO_OP_STORE(REG_A);

    // Call
    case OP(21, Op_Call, Opr_Address):
      PushToStack(cpu, mmu, cpu->pc.lo);
      PushToStack(cpu, mmu, cpu->pc.hi);
      REG_PC = data.w;
    return 4;

    // Return
    case OP(22, Op_Return, Opr_None):
      data.hi = PopFromStack(cpu, mmu);
      data.lo = PopFromStack(cpu, mmu);
      REG_PC = data.w;
      return 4;
    
    // Set
    case OP(23, Op_Set, Opr_x): DO_OP_SET(REG_X);
    case OP(24, Op_Set, Opr_y): DO_OP_SET(REG_Y);
    case OP(25, Op_Set, Opr_z): DO_OP_SET(REG_Z);
    case OP(26, Op_Set, Opr_w): DO_OP_SET(REG_W);
    case OP(27, Op_Set, Opr_a): DO_OP_SET(REG_A);

    // Add
    case OP(28, Op_Add, Opr_xx): DO_OP_ADD(REG_X, REG_X);
    case OP(29, Op_Add, Opr_xy): DO_OP_ADD(REG_X, REG_Y);
    case OP(30, Op_Add, Opr_xz): DO_OP_ADD(REG_X, REG_Z);
    case OP(31, Op_Add, Opr_xw): DO_OP_ADD(REG_X, REG_W);
    case OP(32, Op_Add, Opr_xa): DO_OP_ADD(REG_X, REG_A);
    case OP(33, Op_Add, Opr_yx): DO_OP_ADD(REG_Y, REG_X);
    case OP(34, Op_Add, Opr_yy): DO_OP_ADD(REG_Y, REG_Y);
    case OP(35, Op_Add, Opr_yz): DO_OP_ADD(REG_Y, REG_Z);
    case OP(36, Op_Add, Opr_yw): DO_OP_ADD(REG_Y, REG_W);
    case OP(37, Op_Add, Opr_ya): DO_OP_ADD(REG_Y, REG_A);
    case OP(38, Op_Add, Opr_zx): DO_OP_ADD(REG_Z, REG_X);
    case OP(39, Op_Add, Opr_zy): DO_OP_ADD(REG_Z, REG_Y);
    case OP(40, Op_Add, Opr_zz): DO_OP_ADD(REG_Z, REG_Z);
    case OP(41, Op_Add, Opr_zw): DO_OP_ADD(REG_Z, REG_W);
    case OP(42, Op_Add, Opr_za): DO_OP_ADD(REG_Z, REG_A);
    case OP(43, Op_Add, Opr_wx): DO_OP_ADD(REG_W, REG_X);
    case OP(44, Op_Add, Opr_wy): DO_OP_ADD(REG_W, REG_Y);
    case OP(45, Op_Add, Opr_wz): DO_OP_ADD(REG_W, REG_Z);
    case OP(46, Op_Add, Opr_ww): DO_OP_ADD(REG_W, REG_W);
    case OP(47, Op_Add, Opr_wa): DO_OP_ADD(REG_W, REG_A);
    case OP(48, Op_Add, Opr_ax): DO_OP_ADD(REG_A, REG_X);
    case OP(49, Op_Add, Opr_ay): DO_OP_ADD(REG_A, REG_Y);
    case OP(50, Op_Add, Opr_az): DO_OP_ADD(REG_A, REG_Z);
    case OP(51, Op_Add, Opr_aw): DO_OP_ADD(REG_A, REG_W);
    case OP(52, Op_Add, Opr_aa): DO_OP_ADD(REG_A, REG_A);

    // Sub
    case OP(53, Op_Sub, Opr_xx): DO_OP_SUB(REG_X, REG_X);
    case OP(54, Op_Sub, Opr_xy): DO_OP_SUB(REG_X, REG_Y);
    case OP(55, Op_Sub, Opr_xz): DO_OP_SUB(REG_X, REG_Z);
    case OP(56, Op_Sub, Opr_xw): DO_OP_SUB(REG_X, REG_W);
    case OP(57, Op_Sub, Opr_xa): DO_OP_SUB(REG_X, REG_A);
    case OP(58, Op_Sub, Opr_yx): DO_OP_SUB(REG_Y, REG_X);
    case OP(59, Op_Sub, Opr_yy): DO_OP_SUB(REG_Y, REG_Y);
    case OP(60, Op_Sub, Opr_yz): DO_OP_SUB(REG_Y, REG_Z);
    case OP(61, Op_Sub, Opr_yw): DO_OP_SUB(REG_Y, REG_W);
    case OP(62, Op_Sub, Opr_ya): DO_OP_SUB(REG_Y, REG_A);
    case OP(63, Op_Sub, Opr_zx): DO_OP_SUB(REG_Z, REG_X);
    case OP(64, Op_Sub, Opr_zy): DO_OP_SUB(REG_Z, REG_Y);
    case OP(65, Op_Sub, Opr_zz): DO_OP_SUB(REG_Z, REG_Z);
    case OP(66, Op_Sub, Opr_zw): DO_OP_SUB(REG_Z, REG_W);
    case OP(67, Op_Sub, Opr_za): DO_OP_SUB(REG_Z, REG_A);
    case OP(68, Op_Sub, Opr_wx): DO_OP_SUB(REG_W, REG_X);
    case OP(69, Op_Sub, Opr_wy): DO_OP_SUB(REG_W, REG_Y);
    case OP(70, Op_Sub, Opr_wz): DO_OP_SUB(REG_W, REG_Z);
    case OP(71, Op_Sub, Opr_ww): DO_OP_SUB(REG_W, REG_W);
    case OP(72, Op_Sub, Opr_wa): DO_OP_SUB(REG_W, REG_A);
    case OP(73, Op_Sub, Opr_ax): DO_OP_SUB(REG_A, REG_X);
    case OP(74, Op_Sub, Opr_ay): DO_OP_SUB(REG_A, REG_Y);
    case OP(75, Op_Sub, Opr_az): DO_OP_SUB(REG_A, REG_Z);
    case OP(76, Op_Sub, Opr_aw): DO_OP_SUB(REG_A, REG_W);
    case OP(77, Op_Sub, Opr_aa): DO_OP_SUB(REG_A, REG_A);

    // Mul
    case OP(78, Op_Sub, Opr_xx): DO_OP_MUL(REG_X, REG_X);
    case OP(79, Op_Sub, Opr_xy): DO_OP_MUL(REG_X, REG_Y);
    case OP(80, Op_Sub, Opr_xz): DO_OP_MUL(REG_X, REG_Z);
    case OP(81, Op_Sub, Opr_xw): DO_OP_MUL(REG_X, REG_W);
    case OP(82, Op_Sub, Opr_xa): DO_OP_MUL(REG_X, REG_A);
    case OP(83, Op_Sub, Opr_yx): DO_OP_MUL(REG_Y, REG_X);
    case OP(84, Op_Sub, Opr_yy): DO_OP_MUL(REG_Y, REG_Y);
    case OP(85, Op_Sub, Opr_yz): DO_OP_MUL(REG_Y, REG_Z);
    case OP(86, Op_Sub, Opr_yw): DO_OP_MUL(REG_Y, REG_W);
    case OP(87, Op_Sub, Opr_ya): DO_OP_MUL(REG_Y, REG_A);
    case OP(88, Op_Sub, Opr_zx): DO_OP_MUL(REG_Z, REG_X);
    case OP(89, Op_Sub, Opr_zy): DO_OP_MUL(REG_Z, REG_Y);
    case OP(90, Op_Sub, Opr_zz): DO_OP_MUL(REG_Z, REG_Z);
    case OP(91, Op_Sub, Opr_zw): DO_OP_MUL(REG_Z, REG_W);
    case OP(92, Op_Sub, Opr_za): DO_OP_MUL(REG_Z, REG_A);
    case OP(93, Op_Sub, Opr_wx): DO_OP_MUL(REG_W, REG_X);
    case OP(94, Op_Sub, Opr_wy): DO_OP_MUL(REG_W, REG_Y);
    case OP(95, Op_Sub, Opr_wz): DO_OP_MUL(REG_W, REG_Z);
    case OP(96, Op_Sub, Opr_ww): DO_OP_MUL(REG_W, REG_W);
    case OP(97, Op_Sub, Opr_wa): DO_OP_MUL(REG_W, REG_A);
    case OP(98, Op_Sub, Opr_ax): DO_OP_MUL(REG_A, REG_X);
    case OP(99, Op_Sub, Opr_ay): DO_OP_MUL(REG_A, REG_Y);
    case OP(100, Op_Sub, Opr_az): DO_OP_MUL(REG_A, REG_Z);
    case OP(101, Op_Sub, Opr_aw): DO_OP_MUL(REG_A, REG_W);
    case OP(102, Op_Sub, Opr_aa): DO_OP_MUL(REG_A, REG_A);

    // Div
    case OP(103, Op_Div, Opr_xx): DO_OP_DIV(REG_X, REG_X);
    case OP(104, Op_Div, Opr_xy): DO_OP_DIV(REG_X, REG_Y);
    case OP(105, Op_Div, Opr_xz): DO_OP_DIV(REG_X, REG_Z);
    case OP(106, Op_Div, Opr_xw): DO_OP_DIV(REG_X, REG_W);
    case OP(107, Op_Div, Opr_xa): DO_OP_DIV(REG_X, REG_A);
    case OP(108, Op_Div, Opr_yx): DO_OP_DIV(REG_Y, REG_X);
    case OP(109, Op_Div, Opr_yy): DO_OP_DIV(REG_Y, REG_Y);
    case OP(110, Op_Div, Opr_yz): DO_OP_DIV(REG_Y, REG_Z);
    case OP(111, Op_Div, Opr_yw): DO_OP_DIV(REG_Y, REG_W);
    case OP(112, Op_Div, Opr_ya): DO_OP_DIV(REG_Y, REG_A);
    case OP(113, Op_Div, Opr_zx): DO_OP_DIV(REG_Z, REG_X);
    case OP(114, Op_Div, Opr_zy): DO_OP_DIV(REG_Z, REG_Y);
    case OP(115, Op_Div, Opr_zz): DO_OP_DIV(REG_Z, REG_Z);
    case OP(116, Op_Div, Opr_zw): DO_OP_DIV(REG_Z, REG_W);
    case OP(117, Op_Div, Opr_za): DO_OP_DIV(REG_Z, REG_A);
    case OP(118, Op_Div, Opr_wx): DO_OP_DIV(REG_W, REG_X);
    case OP(119, Op_Div, Opr_wy): DO_OP_DIV(REG_W, REG_Y);
    case OP(120, Op_Div, Opr_wz): DO_OP_DIV(REG_W, REG_Z);
    case OP(121, Op_Div, Opr_ww): DO_OP_DIV(REG_W, REG_W);
    case OP(122, Op_Div, Opr_wa): DO_OP_DIV(REG_W, REG_A);
    case OP(123, Op_Div, Opr_ax): DO_OP_DIV(REG_A, REG_X);
    case OP(124, Op_Div, Opr_ay): DO_OP_DIV(REG_A, REG_Y);
    case OP(125, Op_Div, Opr_az): DO_OP_DIV(REG_A, REG_Z);
    case OP(126, Op_Div, Opr_aw): DO_OP_DIV(REG_A, REG_W);
    case OP(127, Op_Div, Opr_aa): DO_OP_DIV(REG_A, REG_A);

    // Cmp
    case OP(128, Op_Cmp, Opr_xx): DO_OP_CMP(REG_X, REG_X);
    case OP(129, Op_Cmp, Opr_xy): DO_OP_CMP(REG_X, REG_Y);
    case OP(130, Op_Cmp, Opr_xz): DO_OP_CMP(REG_X, REG_Z);
    case OP(131, Op_Cmp, Opr_xw): DO_OP_CMP(REG_X, REG_W);
    case OP(132, Op_Cmp, Opr_xa): DO_OP_CMP(REG_X, REG_A);
    case OP(133, Op_Cmp, Opr_yx): DO_OP_CMP(REG_Y, REG_X);
    case OP(134, Op_Cmp, Opr_yy): DO_OP_CMP(REG_Y, REG_Y);
    case OP(135, Op_Cmp, Opr_yz): DO_OP_CMP(REG_Y, REG_Z);
    case OP(136, Op_Cmp, Opr_yw): DO_OP_CMP(REG_Y, REG_W);
    case OP(137, Op_Cmp, Opr_ya): DO_OP_CMP(REG_Y, REG_A);
    case OP(138, Op_Cmp, Opr_zx): DO_OP_CMP(REG_Z, REG_X);
    case OP(139, Op_Cmp, Opr_zy): DO_OP_CMP(REG_Z, REG_Y);
    case OP(141, Op_Cmp, Opr_zz): DO_OP_CMP(REG_Z, REG_Z);
    case OP(142, Op_Cmp, Opr_zw): DO_OP_CMP(REG_Z, REG_W);
    case OP(143, Op_Cmp, Opr_za): DO_OP_CMP(REG_Z, REG_A);
    case OP(144, Op_Cmp, Opr_wx): DO_OP_CMP(REG_W, REG_X);
    case OP(145, Op_Cmp, Opr_wy): DO_OP_CMP(REG_W, REG_Y);
    case OP(146, Op_Cmp, Opr_wz): DO_OP_CMP(REG_W, REG_Z);
    case OP(147, Op_Cmp, Opr_ww): DO_OP_CMP(REG_W, REG_W);
    case OP(148, Op_Cmp, Opr_wa): DO_OP_CMP(REG_W, REG_A);
    case OP(149, Op_Cmp, Opr_ax): DO_OP_CMP(REG_A, REG_X);
    case OP(150, Op_Cmp, Opr_ay): DO_OP_CMP(REG_A, REG_Y);
    case OP(151, Op_Cmp, Opr_az): DO_OP_CMP(REG_A, REG_Z);
    case OP(152, Op_Cmp, Opr_aw): DO_OP_CMP(REG_A, REG_W);
    case OP(153, Op_Cmp, Opr_aa): DO_OP_CMP(REG_A, REG_A);

    // Jmp
    case OP(154, Op_Jmp, Opr_Address): REG_PC = data.w & PROG_SIZE; return 4;
    case OP(155, Op_Jmp, Opr_xy):      DO_OP_JMP(REG_X, REG_Y);
    case OP(156, Op_Jmp, Opr_xz):      DO_OP_JMP(REG_X, REG_Z);
    case OP(157, Op_Jmp, Opr_xw):      DO_OP_JMP(REG_X, REG_W);
    case OP(158, Op_Jmp, Opr_xa):      DO_OP_JMP(REG_X, REG_A);
    case OP(159, Op_Jmp, Opr_yx):      DO_OP_JMP(REG_Y, REG_X);
    case OP(160, Op_Jmp, Opr_yz):      DO_OP_JMP(REG_Y, REG_Z);
    case OP(161, Op_Jmp, Opr_yw):      DO_OP_JMP(REG_Y, REG_W);
    case OP(162, Op_Jmp, Opr_ya):      DO_OP_JMP(REG_Y, REG_A);
    case OP(163, Op_Jmp, Opr_zx):      DO_OP_JMP(REG_Z, REG_X);
    case OP(164, Op_Jmp, Opr_zy):      DO_OP_JMP(REG_Z, REG_Y);
    case OP(165, Op_Jmp, Opr_zw):      DO_OP_JMP(REG_Z, REG_W);
    case OP(166, Op_Jmp, Opr_za):      DO_OP_JMP(REG_Z, REG_A);
    case OP(167, Op_Jmp, Opr_wx):      DO_OP_JMP(REG_W, REG_X);
    case OP(168, Op_Jmp, Opr_wy):      DO_OP_JMP(REG_W, REG_Y);
    case OP(169, Op_Jmp, Opr_wz):      DO_OP_JMP(REG_W, REG_Z);
    case OP(170, Op_Jmp, Opr_wa):      DO_OP_JMP(REG_W, REG_A);
    case OP(171, Op_Jmp, Opr_ax):      DO_OP_JMP(REG_A, REG_X);
    case OP(172, Op_Jmp, Opr_ay):      DO_OP_JMP(REG_A, REG_Y);
    case OP(173, Op_Jmp, Opr_az):      DO_OP_JMP(REG_A, REG_Z);
    case OP(174, Op_Jmp, Opr_aw):      DO_OP_JMP(REG_A, REG_W);
    case OP(175, Op_Jmp, Opr_x):       DO_OP_JMP(REG_X, 0);
    case OP(176, Op_Jmp, Opr_y):       DO_OP_JMP(REG_Y, 0);
    case OP(177, Op_Jmp, Opr_z):       DO_OP_JMP(REG_Z, 0);
    case OP(178, Op_Jmp, Opr_w):       DO_OP_JMP(REG_W, 0);
    case OP(179, Op_Jmp, Opr_a):       DO_OP_JMP(REG_A, 0);

    case OP(180, Op_SetPc, Opr_xy):    DO_OP_SET_PC(REG_X, REG_Y);
    case OP(181, Op_SetPc, Opr_xz):    DO_OP_SET_PC(REG_X, REG_Z);
    case OP(182, Op_SetPc, Opr_xw):    DO_OP_SET_PC(REG_X, REG_W);
    case OP(183, Op_SetPc, Opr_xa):    DO_OP_SET_PC(REG_X, REG_A);
    case OP(184, Op_SetPc, Opr_yx):    DO_OP_SET_PC(REG_Y, REG_X);
    case OP(185, Op_SetPc, Opr_yz):    DO_OP_SET_PC(REG_Y, REG_Z);
    case OP(186, Op_SetPc, Opr_yw):    DO_OP_SET_PC(REG_Y, REG_W);
    case OP(187, Op_SetPc, Opr_ya):    DO_OP_SET_PC(REG_Y, REG_A);
    case OP(188, Op_SetPc, Opr_zx):    DO_OP_SET_PC(REG_Z, REG_X);
    case OP(189, Op_SetPc, Opr_zy):    DO_OP_SET_PC(REG_Z, REG_Y);
    case OP(190, Op_SetPc, Opr_zw):    DO_OP_SET_PC(REG_Z, REG_W);
    case OP(191, Op_SetPc, Opr_za):    DO_OP_SET_PC(REG_Z, REG_A);
    case OP(192, Op_SetPc, Opr_wx):    DO_OP_SET_PC(REG_W, REG_X);
    case OP(193, Op_SetPc, Opr_wy):    DO_OP_SET_PC(REG_W, REG_Y);
    case OP(194, Op_SetPc, Opr_wz):    DO_OP_SET_PC(REG_W, REG_Z);
    case OP(195, Op_SetPc, Opr_wa):    DO_OP_SET_PC(REG_W, REG_A);
    case OP(196, Op_SetPc, Opr_ax):    DO_OP_SET_PC(REG_A, REG_X);
    case OP(197, Op_SetPc, Opr_ay):    DO_OP_SET_PC(REG_A, REG_Y);
    case OP(198, Op_SetPc, Opr_az):    DO_OP_SET_PC(REG_A, REG_Z);
    case OP(199, Op_SetPc, Opr_aw):    DO_OP_SET_PC(REG_A, REG_W);

    // Jmp Eq
    case OP(200, Op_Jmp_eq, Opr_Address):
    {
      if (FL_Z == 1)
        REG_PC = data.w & PROG_SIZE;
      else
        REG_PC += 3;
    }
    return 2;

    // Jmp neq
    case OP(201, Op_Jmp_neq, Opr_Address):
    {
      if (FL_Z == 0)
        REG_PC = data.w & PROG_SIZE;
      else
        REG_PC += 3;
    }
    return 2;

    // Jmp gt
    case OP(202, Op_Jmp_gt, Opr_Address):
    {
      if (FL_N == 1)
        REG_PC = data.w & PROG_SIZE;
      else
        REG_PC += 3;
    }
    return 2;

    // Jmp lt
    case OP(203, Op_Jmp_lt, Opr_Address):
    {
      if (FL_C == 1)
        REG_PC = data.w & PROG_SIZE;
      else
        REG_PC += 3;
    }
    return 2;
  }

}




















