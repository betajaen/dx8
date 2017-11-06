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

enum OpFormat
{
  Opf_Single  = 1,
  Opf_Byte    = 2,
  Opf_Address = 3
};

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
  Op_And,
  Op_Or,
  Op_Xor,
  Op_CmpBit,
  Op_ShiftLeft,
  Op_ShiftRight,
  Op_RollLeft,
  Op_RollRight,
  Op_Not,
  Op_Jmp,
  Op_SetPc,
  Op_Cmp,
  Op_JmpEq,
  Op_JmpNeq,
  Op_JmpGt,
  Op_JmpLt,
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



#define OP(IDX, OP, OPERANDS, FORMAT, TIME, CODE) case IDX: CODE; return TIME

#define DO_OP_PUSH(R0)              PushToStack(cpu, mmu, R0);        REG_PC += Opf_Single;   // return 3
#define DO_OP_POP(R0)               R0 = PopFromStack(cpu, mmu);      REG_PC += Opf_Single;   // return 3
#define DO_OP_LOAD(R0)              R0 = LoadFromMemory(mmu, data.w); REG_PC += Opf_Address;  // return 4
#define DO_OP_STORE(R0)             StoreToMemory(mmu, data.w, R0);   REG_PC += Opf_Address;  // return 4
#define DO_OP_CALL()                PushToStack(cpu, mmu, cpu->pc.lo);\
                                    PushToStack(cpu, mmu, cpu->pc.hi);\
                                    REG_PC = data.w                    
#define DO_OP_RETURN()              data.hi = PopFromStack(cpu, mmu);\
                                    data.lo = PopFromStack(cpu, mmu);\
                                    REG_PC = data.w;                  
#define DO_OP_SET(R0)               R0 = data.lo;                     REG_PC += Opf_Byte;     // return 3
#define DO_OP_ADD(R0, R1)           R0 += R1;                         REG_PC += Opf_Single;   // return 3
#define DO_OP_SUB(R0, R1)           R0 -= R1;                         REG_PC += Opf_Single;   // return 3
#define DO_OP_MUL(R0, R1)           R0 *= R1;                         REG_PC += Opf_Single;   // return 3
#define DO_OP_AND(R0, R1)           R0 &= R1;                         REG_PC += Opf_Single;   // return 3
#define DO_OP_OR(R0, R1)            R0 |= R1;                         REG_PC += Opf_Single;   // return 3
#define DO_OP_XOR(R0, R1)           R0 ^= R1;                         REG_PC += Opf_Single;   // return 3
#define DO_OP_NOT(R0)               R0 = ~R0;                         REG_PC += Opf_Single;   // return 3
#define DO_OP_SHIFT_LEFT(R0)        R0 <<= 1;                         REG_PC += Opf_Byte;     // return 3
#define DO_OP_SHIFT_RIGHT(R0)       R0 >>= 1;                         REG_PC += Opf_Byte;     // return 3
#define DO_OP_ROLL_LEFT(R0)         /*  */                            REG_PC += Opf_Single;   // return 3
#define DO_OP_ROLL_RIGHT(R0)        /*  */                            REG_PC += Opf_Single;   // return 3
#define DO_OP_CMP(R0, R1)           Compare(cpu, R0, R1);             REG_PC += Opf_Single;   // return 3
#define DO_OP_CMP_BIT(R0)           CompareBit(cpu, R0, data.lo);     REG_PC += Opf_Byte;     // return 3
#define DO_OP_JMP(LO, HI)           Jump(cpu, data.w, LO, HI);                                // return 4 
#define DO_OP_JMP_EQ()              if (FL_Z == 1)\
                                      REG_PC = data.w & PROG_SIZE;\
                                    else\
                                      REG_PC += Opf_Address;
#define DO_OP_JMP_NEQ()             if (FL_Z == 0)\
                                      REG_PC = data.w & PROG_SIZE;\
                                    else\
                                      REG_PC += Opf_Address;
#define DO_OP_JMP_GT()              if (FL_N == 1)\
                                      REG_PC = data.w & PROG_SIZE;\
                                    else\
                                      REG_PC += Opf_Address;
#define DO_OP_JMP_LT()              if (FL_C == 1)\
                                      REG_PC = data.w & PROG_SIZE;\
                                    else\
                                      REG_PC += Opf_Address;

#define DO_OP_SET_PC(LO, HI)        REG_PC = ((LO + (((Word)HI) * 256)) & PROG_SIZE);         // return 4

  switch(opcode)
  {
    default:
    OP(0,   Op_Nop, Opr_None, Opf_Single, 1, {});

    // Push
    OP(1,   Op_Push, Opr_x, Opf_Single, 3,  { DO_OP_PUSH(REG_X); });
    OP(2,   Op_Push, Opr_y, Opf_Single, 3,  { DO_OP_PUSH(REG_Y); });
    OP(3,   Op_Push, Opr_z, Opf_Single, 3,  { DO_OP_PUSH(REG_Z); });
    OP(4,   Op_Push, Opr_w, Opf_Single, 3,  { DO_OP_PUSH(REG_W); });
    OP(5,   Op_Push, Opr_a, Opf_Single, 3,  { DO_OP_PUSH(REG_A); });

    // Pop
    OP(6,   Op_Pop, Opr_x, Opf_Single, 3,   { DO_OP_POP(REG_X) });
    OP(7,   Op_Pop, Opr_y, Opf_Single, 3,   { DO_OP_POP(REG_Y) });
    OP(8,   Op_Pop, Opr_z, Opf_Single, 3,   { DO_OP_POP(REG_Z) });
    OP(9,   Op_Pop, Opr_w, Opf_Single, 3,   { DO_OP_POP(REG_W) });
    OP(10,  Op_Pop, Opr_a, Opf_Single, 3,   { DO_OP_POP(REG_A) });

    // Load
    OP(11,  Op_Load, Opr_x, Opf_Address, 4, { DO_OP_LOAD(REG_X); });
    OP(12,  Op_Load, Opr_y, Opf_Address, 4, { DO_OP_LOAD(REG_Y); });
    OP(13,  Op_Load, Opr_z, Opf_Address, 4, { DO_OP_LOAD(REG_Z); });
    OP(14,  Op_Load, Opr_w, Opf_Address, 4, { DO_OP_LOAD(REG_W); });
    OP(15,  Op_Load, Opr_a, Opf_Address, 4, { DO_OP_LOAD(REG_A); });

    // Store
    OP(16,  Op_Store, Opr_x, Opf_Address, 4, { DO_OP_STORE(REG_X); });
    OP(17,  Op_Store, Opr_y, Opf_Address, 4, { DO_OP_STORE(REG_Y); });
    OP(18,  Op_Store, Opr_z, Opf_Address, 4, { DO_OP_STORE(REG_Z); });
    OP(19,  Op_Store, Opr_w, Opf_Address, 4, { DO_OP_STORE(REG_W); });
    OP(20,  Op_Store, Opr_a, Opf_Address, 4, { DO_OP_STORE(REG_A); });

    // Call
    OP(21,  Op_Call, Opr_Address, Opf_Address, 4, { DO_OP_CALL();  });

    // Return
    OP(22,  Op_Return, Opr_None, Opf_Single, 4,   { DO_OP_RETURN(); });

    // Set
    OP(23,  Op_Set, Opr_x, Opf_Byte, 3, { DO_OP_SET(REG_X); });
    OP(24,  Op_Set, Opr_y, Opf_Byte, 3, { DO_OP_SET(REG_Y); });
    OP(25,  Op_Set, Opr_z, Opf_Byte, 3, { DO_OP_SET(REG_Z); });
    OP(26,  Op_Set, Opr_w, Opf_Byte, 3, { DO_OP_SET(REG_W); });
    OP(27,  Op_Set, Opr_a, Opf_Byte, 3, { DO_OP_SET(REG_A); });

    // Add
    OP(28, Op_Add, Opr_xx, Opf_Single, 3, { DO_OP_ADD(REG_X, REG_X); });
    OP(29, Op_Add, Opr_xy, Opf_Single, 3, { DO_OP_ADD(REG_X, REG_Y); });
    OP(30, Op_Add, Opr_xz, Opf_Single, 3, { DO_OP_ADD(REG_X, REG_Z); });
    OP(31, Op_Add, Opr_xw, Opf_Single, 3, { DO_OP_ADD(REG_X, REG_W); });
    OP(32, Op_Add, Opr_xa, Opf_Single, 3, { DO_OP_ADD(REG_X, REG_A); });
    OP(33, Op_Add, Opr_yx, Opf_Single, 3, { DO_OP_ADD(REG_Y, REG_X); });
    OP(34, Op_Add, Opr_yy, Opf_Single, 3, { DO_OP_ADD(REG_Y, REG_Y); });
    OP(35, Op_Add, Opr_yz, Opf_Single, 3, { DO_OP_ADD(REG_Y, REG_Z); });
    OP(36, Op_Add, Opr_yw, Opf_Single, 3, { DO_OP_ADD(REG_Y, REG_W); });
    OP(37, Op_Add, Opr_ya, Opf_Single, 3, { DO_OP_ADD(REG_Y, REG_A); });
    OP(38, Op_Add, Opr_zx, Opf_Single, 3, { DO_OP_ADD(REG_Z, REG_X); });
    OP(39, Op_Add, Opr_zy, Opf_Single, 3, { DO_OP_ADD(REG_Z, REG_Y); });
    OP(40, Op_Add, Opr_zz, Opf_Single, 3, { DO_OP_ADD(REG_Z, REG_Z); });
    OP(41, Op_Add, Opr_zw, Opf_Single, 3, { DO_OP_ADD(REG_Z, REG_W); });
    OP(42, Op_Add, Opr_za, Opf_Single, 3, { DO_OP_ADD(REG_Z, REG_A); });
    OP(43, Op_Add, Opr_wx, Opf_Single, 3, { DO_OP_ADD(REG_W, REG_X); });
    OP(44, Op_Add, Opr_wy, Opf_Single, 3, { DO_OP_ADD(REG_W, REG_Y); });
    OP(45, Op_Add, Opr_wz, Opf_Single, 3, { DO_OP_ADD(REG_W, REG_Z); });
    OP(46, Op_Add, Opr_ww, Opf_Single, 3, { DO_OP_ADD(REG_W, REG_W); });
    OP(47, Op_Add, Opr_wa, Opf_Single, 3, { DO_OP_ADD(REG_W, REG_A); });
    OP(48, Op_Add, Opr_ax, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_X); });
    OP(49, Op_Add, Opr_ay, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_Y); });
    OP(50, Op_Add, Opr_az, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_Z); });
    OP(51, Op_Add, Opr_aw, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_W); });
    OP(52, Op_Add, Opr_aa, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_A); });

    // Sub
    OP(53, Op_Sub, Opr_xx, Opf_Single, 3, { DO_OP_SUB(REG_X, REG_X); });
    OP(54, Op_Sub, Opr_xy, Opf_Single, 3, { DO_OP_SUB(REG_X, REG_Y); });
    OP(55, Op_Sub, Opr_xz, Opf_Single, 3, { DO_OP_SUB(REG_X, REG_Z); });
    OP(56, Op_Sub, Opr_xw, Opf_Single, 3, { DO_OP_SUB(REG_X, REG_W); });
    OP(57, Op_Sub, Opr_xa, Opf_Single, 3, { DO_OP_SUB(REG_X, REG_A); });
    OP(58, Op_Sub, Opr_yx, Opf_Single, 3, { DO_OP_SUB(REG_Y, REG_X); });
    OP(59, Op_Sub, Opr_yy, Opf_Single, 3, { DO_OP_SUB(REG_Y, REG_Y); });
    OP(60, Op_Sub, Opr_yz, Opf_Single, 3, { DO_OP_SUB(REG_Y, REG_Z); });
    OP(61, Op_Sub, Opr_yw, Opf_Single, 3, { DO_OP_SUB(REG_Y, REG_W); });
    OP(62, Op_Sub, Opr_ya, Opf_Single, 3, { DO_OP_SUB(REG_Y, REG_A); });
    OP(63, Op_Sub, Opr_zx, Opf_Single, 3, { DO_OP_SUB(REG_Z, REG_X); });
    OP(64, Op_Sub, Opr_zy, Opf_Single, 3, { DO_OP_SUB(REG_Z, REG_Y); });
    OP(65, Op_Sub, Opr_zz, Opf_Single, 3, { DO_OP_SUB(REG_Z, REG_Z); });
    OP(66, Op_Sub, Opr_zw, Opf_Single, 3, { DO_OP_SUB(REG_Z, REG_W); });
    OP(67, Op_Sub, Opr_za, Opf_Single, 3, { DO_OP_SUB(REG_Z, REG_A); });
    OP(68, Op_Sub, Opr_wx, Opf_Single, 3, { DO_OP_SUB(REG_W, REG_X); });
    OP(69, Op_Sub, Opr_wy, Opf_Single, 3, { DO_OP_SUB(REG_W, REG_Y); });
    OP(70, Op_Sub, Opr_wz, Opf_Single, 3, { DO_OP_SUB(REG_W, REG_Z); });
    OP(71, Op_Sub, Opr_ww, Opf_Single, 3, { DO_OP_SUB(REG_W, REG_W); });
    OP(72, Op_Sub, Opr_wa, Opf_Single, 3, { DO_OP_SUB(REG_W, REG_A); });
    OP(73, Op_Sub, Opr_ax, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_X); });
    OP(74, Op_Sub, Opr_ay, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_Y); });
    OP(75, Op_Sub, Opr_az, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_Z); });
    OP(76, Op_Sub, Opr_aw, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_W); });
    OP(77, Op_Sub, Opr_aa, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_A); });

    // Mul
    OP(78,  Op_Mul, Opr_xx, Opf_Single, 3, { DO_OP_MUL(REG_X, REG_X); });
    OP(79,  Op_Mul, Opr_xy, Opf_Single, 3, { DO_OP_MUL(REG_X, REG_Y); });
    OP(80,  Op_Mul, Opr_xz, Opf_Single, 3, { DO_OP_MUL(REG_X, REG_Z); });
    OP(81,  Op_Mul, Opr_xw, Opf_Single, 3, { DO_OP_MUL(REG_X, REG_W); });
    OP(82,  Op_Mul, Opr_xa, Opf_Single, 3, { DO_OP_MUL(REG_X, REG_A); });
    OP(83,  Op_Mul, Opr_yx, Opf_Single, 3, { DO_OP_MUL(REG_Y, REG_X); });
    OP(84,  Op_Mul, Opr_yy, Opf_Single, 3, { DO_OP_MUL(REG_Y, REG_Y); });
    OP(85,  Op_Mul, Opr_yz, Opf_Single, 3, { DO_OP_MUL(REG_Y, REG_Z); });
    OP(86,  Op_Mul, Opr_yw, Opf_Single, 3, { DO_OP_MUL(REG_Y, REG_W); });
    OP(87,  Op_Mul, Opr_ya, Opf_Single, 3, { DO_OP_MUL(REG_Y, REG_A); });
    OP(88,  Op_Mul, Opr_zx, Opf_Single, 3, { DO_OP_MUL(REG_Z, REG_X); });
    OP(89,  Op_Mul, Opr_zy, Opf_Single, 3, { DO_OP_MUL(REG_Z, REG_Y); });
    OP(90,  Op_Mul, Opr_zz, Opf_Single, 3, { DO_OP_MUL(REG_Z, REG_Z); });
    OP(91,  Op_Mul, Opr_zw, Opf_Single, 3, { DO_OP_MUL(REG_Z, REG_W); });
    OP(92,  Op_Mul, Opr_za, Opf_Single, 3, { DO_OP_MUL(REG_Z, REG_A); });
    OP(93,  Op_Mul, Opr_wx, Opf_Single, 3, { DO_OP_MUL(REG_W, REG_X); });
    OP(94,  Op_Mul, Opr_wy, Opf_Single, 3, { DO_OP_MUL(REG_W, REG_Y); });
    OP(95,  Op_Mul, Opr_wz, Opf_Single, 3, { DO_OP_MUL(REG_W, REG_Z); });
    OP(96,  Op_Mul, Opr_ww, Opf_Single, 3, { DO_OP_MUL(REG_W, REG_W); });
    OP(97,  Op_Mul, Opr_wa, Opf_Single, 3, { DO_OP_MUL(REG_W, REG_A); });
    OP(98,  Op_Mul, Opr_ax, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_X); });
    OP(99,  Op_Mul, Opr_ay, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_Y); });
    OP(100, Op_Mul, Opr_az, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_Z); });
    OP(101, Op_Mul, Opr_aw, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_W); });
    OP(102, Op_Mul, Opr_aa, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_A); });

    // Cmp
    OP(103, Op_Cmp, Opr_xx, Opf_Single, 3, { DO_OP_CMP(REG_X, REG_X); });
    OP(104, Op_Cmp, Opr_xy, Opf_Single, 3, { DO_OP_CMP(REG_X, REG_Y); });
    OP(105, Op_Cmp, Opr_xz, Opf_Single, 3, { DO_OP_CMP(REG_X, REG_Z); });
    OP(106, Op_Cmp, Opr_xw, Opf_Single, 3, { DO_OP_CMP(REG_X, REG_W); });
    OP(107, Op_Cmp, Opr_xa, Opf_Single, 3, { DO_OP_CMP(REG_X, REG_A); });
    OP(108, Op_Cmp, Opr_yx, Opf_Single, 3, { DO_OP_CMP(REG_Y, REG_X); });
    OP(109, Op_Cmp, Opr_yy, Opf_Single, 3, { DO_OP_CMP(REG_Y, REG_Y); });
    OP(110, Op_Cmp, Opr_yz, Opf_Single, 3, { DO_OP_CMP(REG_Y, REG_Z); });
    OP(111, Op_Cmp, Opr_yw, Opf_Single, 3, { DO_OP_CMP(REG_Y, REG_W); });
    OP(112, Op_Cmp, Opr_ya, Opf_Single, 3, { DO_OP_CMP(REG_Y, REG_A); });
    OP(113, Op_Cmp, Opr_zx, Opf_Single, 3, { DO_OP_CMP(REG_Z, REG_X); });
    OP(114, Op_Cmp, Opr_zy, Opf_Single, 3, { DO_OP_CMP(REG_Z, REG_Y); });
    OP(115, Op_Cmp, Opr_zz, Opf_Single, 3, { DO_OP_CMP(REG_Z, REG_Z); });
    OP(116, Op_Cmp, Opr_zw, Opf_Single, 3, { DO_OP_CMP(REG_Z, REG_W); });
    OP(117, Op_Cmp, Opr_za, Opf_Single, 3, { DO_OP_CMP(REG_Z, REG_A); });
    OP(118, Op_Cmp, Opr_wx, Opf_Single, 3, { DO_OP_CMP(REG_W, REG_X); });
    OP(119, Op_Cmp, Opr_wy, Opf_Single, 3, { DO_OP_CMP(REG_W, REG_Y); });
    OP(120, Op_Cmp, Opr_wz, Opf_Single, 3, { DO_OP_CMP(REG_W, REG_Z); });
    OP(121, Op_Cmp, Opr_ww, Opf_Single, 3, { DO_OP_CMP(REG_W, REG_W); });
    OP(122, Op_Cmp, Opr_wa, Opf_Single, 3, { DO_OP_CMP(REG_W, REG_A); });
    OP(123, Op_Cmp, Opr_ax, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_X); });
    OP(124, Op_Cmp, Opr_ay, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_Y); });
    OP(125, Op_Cmp, Opr_az, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_Z); });
    OP(126, Op_Cmp, Opr_aw, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_W); });
    OP(127, Op_Cmp, Opr_aa, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_A); });

    // Bit Test
    OP(128, Op_CmpBit, Opr_x, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_A); });
    OP(129, Op_CmpBit, Opr_y, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_X); });
    OP(130, Op_CmpBit, Opr_z, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_Y); });
    OP(131, Op_CmpBit, Opr_w, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_Z); });
    OP(132, Op_CmpBit, Opr_a, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_W); });

    // Jmp
    OP(133, Op_Jmp, Opr_Address, Opf_Address, 4, { REG_PC = data.w & PROG_SIZE; });
    OP(134, Op_Jmp, Opr_xy, Opf_Address,      4, { DO_OP_JMP(REG_X, REG_Y);  });
    OP(135, Op_Jmp, Opr_zw, Opf_Address,      4, { DO_OP_JMP(REG_Z, REG_W);  });
    OP(136, Op_Jmp, Opr_x, Opf_Address,       4, { DO_OP_JMP(REG_X, 0); });
    OP(137, Op_Jmp, Opr_y, Opf_Address,       4, { DO_OP_JMP(REG_Y, 0); });
    OP(138, Op_Jmp, Opr_z, Opf_Address,       4, { DO_OP_JMP(REG_Z, 0); });
    OP(139, Op_Jmp, Opr_w, Opf_Address,       4, { DO_OP_JMP(REG_W, 0); });
    OP(140, Op_Jmp, Opr_a, Opf_Address,       4, { DO_OP_JMP(REG_A, 0); });

    // SetPc
    OP(141, Op_SetPc, Opr_xy, Opf_Single,     2, { DO_OP_SET_PC(REG_X, REG_Y); });
    OP(142, Op_SetPc, Opr_zw, Opf_Single,     2, { DO_OP_SET_PC(REG_Z, REG_W); });

    // Jmp Eq
    OP(143, Op_JmpEq, Opr_Address, Opf_Address,   2, { DO_OP_JMP_EQ(); });

    // Jmp Neq
    OP(144, Op_JmpNeq, Opr_Address, Opf_Address,  2, { DO_OP_JMP_NEQ(); });

    // Jmp Gt
    OP(145, Op_JmpGt, Opr_Address, Opf_Address, 2,   { DO_OP_JMP_GT(); });

    // Jmp Lt
    OP(146, Op_JmpLt, Opr_Address, Opf_Address, 2, { DO_OP_JMP_LT(); });

    // And
    OP(147, Op_And, Opr_xy, Opf_Single, 1, { DO_OP_AND(REG_X, REG_Y); });
    OP(148, Op_And, Opr_xz, Opf_Single, 1, { DO_OP_AND(REG_X, REG_Z); });
    OP(149, Op_And, Opr_xw, Opf_Single, 1, { DO_OP_AND(REG_X, REG_W); });
    OP(150, Op_And, Opr_xa, Opf_Single, 1, { DO_OP_AND(REG_X, REG_A); });
    OP(151, Op_And, Opr_yx, Opf_Single, 1, { DO_OP_AND(REG_Y, REG_X); });
    OP(152, Op_And, Opr_yz, Opf_Single, 1, { DO_OP_AND(REG_Y, REG_Z); });
    OP(153, Op_And, Opr_yw, Opf_Single, 1, { DO_OP_AND(REG_Y, REG_W); });
    OP(154, Op_And, Opr_ya, Opf_Single, 1, { DO_OP_AND(REG_Y, REG_A); });
    OP(155, Op_And, Opr_zx, Opf_Single, 1, { DO_OP_AND(REG_Z, REG_X); });
    OP(156, Op_And, Opr_zy, Opf_Single, 1, { DO_OP_AND(REG_Z, REG_Y); });
    OP(157, Op_And, Opr_zw, Opf_Single, 1, { DO_OP_AND(REG_Z, REG_W); });
    OP(158, Op_And, Opr_za, Opf_Single, 1, { DO_OP_AND(REG_Z, REG_A); });
    OP(159, Op_And, Opr_wx, Opf_Single, 1, { DO_OP_AND(REG_W, REG_X); });
    OP(160, Op_And, Opr_wy, Opf_Single, 1, { DO_OP_AND(REG_W, REG_Y); });
    OP(161, Op_And, Opr_wz, Opf_Single, 1, { DO_OP_AND(REG_W, REG_Z); });
    OP(162, Op_And, Opr_wa, Opf_Single, 1, { DO_OP_AND(REG_W, REG_A); });
    OP(163, Op_And, Opr_ax, Opf_Single, 1, { DO_OP_AND(REG_A, REG_X); });
    OP(164, Op_And, Opr_ay, Opf_Single, 1, { DO_OP_AND(REG_A, REG_Y); });
    OP(165, Op_And, Opr_az, Opf_Single, 1, { DO_OP_AND(REG_A, REG_Z); });
    OP(166, Op_And, Opr_aw, Opf_Single, 1, { DO_OP_AND(REG_A, REG_W); });

    // Or
    OP(167, Op_Or, Opr_xy, Opf_Single,  1, { DO_OP_OR(REG_X, REG_Y); });
    OP(168, Op_Or, Opr_xz, Opf_Single,  1, { DO_OP_OR(REG_X, REG_Z); });
    OP(169, Op_Or, Opr_xw, Opf_Single,  1, { DO_OP_OR(REG_X, REG_W); });
    OP(170, Op_Or, Opr_xa, Opf_Single,  1, { DO_OP_OR(REG_X, REG_A); });
    OP(171, Op_Or, Opr_yx, Opf_Single,  1, { DO_OP_OR(REG_Y, REG_X); });
    OP(172, Op_Or, Opr_yz, Opf_Single,  1, { DO_OP_OR(REG_Y, REG_Z); });
    OP(173, Op_Or, Opr_yw, Opf_Single,  1, { DO_OP_OR(REG_Y, REG_W); });
    OP(174, Op_Or, Opr_ya, Opf_Single,  1, { DO_OP_OR(REG_Y, REG_A); });
    OP(175, Op_Or, Opr_zx, Opf_Single,  1, { DO_OP_OR(REG_Z, REG_X); });
    OP(176, Op_Or, Opr_zy, Opf_Single,  1, { DO_OP_OR(REG_Z, REG_Y); });
    OP(177, Op_Or, Opr_zw, Opf_Single,  1, { DO_OP_OR(REG_Z, REG_W); });
    OP(178, Op_Or, Opr_za, Opf_Single,  1, { DO_OP_OR(REG_Z, REG_A); });
    OP(179, Op_Or, Opr_wx, Opf_Single,  1, { DO_OP_OR(REG_W, REG_X); });
    OP(180, Op_Or, Opr_wy, Opf_Single,  1, { DO_OP_OR(REG_W, REG_Y); });
    OP(181, Op_Or, Opr_wz, Opf_Single,  1, { DO_OP_OR(REG_W, REG_Z); });
    OP(182, Op_Or, Opr_wa, Opf_Single,  1, { DO_OP_OR(REG_W, REG_A); });
    OP(183, Op_Or, Opr_ax, Opf_Single,  1, { DO_OP_OR(REG_A, REG_X); });
    OP(184, Op_Or, Opr_ay, Opf_Single,  1, { DO_OP_OR(REG_A, REG_Y); });
    OP(185, Op_Or, Opr_az, Opf_Single,  1, { DO_OP_OR(REG_A, REG_Z); });
    OP(186, Op_Or, Opr_aw, Opf_Single,  1, { DO_OP_OR(REG_A, REG_W); });

    // Not
    OP(187, Op_Not, Opr_x, Opf_Single,  1, { DO_OP_NOT(REG_X); });
    OP(188, Op_Not, Opr_y, Opf_Single,  1, { DO_OP_NOT(REG_Y); });
    OP(189, Op_Not, Opr_z, Opf_Single,  1, { DO_OP_NOT(REG_Z); });
    OP(190, Op_Not, Opr_w, Opf_Single,  1, { DO_OP_NOT(REG_W); });
    OP(191, Op_Not, Opr_a, Opf_Single,  1, { DO_OP_NOT(REG_A); });

    // Xor
    OP(192, Op_Xor, Opr_xx, Opf_Single, 1, { DO_OP_XOR(REG_X, REG_X); });
    OP(193, Op_Xor, Opr_xy, Opf_Single, 1, { DO_OP_XOR(REG_X, REG_Y); });
    OP(194, Op_Xor, Opr_xz, Opf_Single, 1, { DO_OP_XOR(REG_X, REG_Z); });
    OP(195, Op_Xor, Opr_xw, Opf_Single, 1, { DO_OP_XOR(REG_X, REG_W); });
    OP(196, Op_Xor, Opr_xa, Opf_Single, 1, { DO_OP_XOR(REG_X, REG_A); });
    OP(197, Op_Xor, Opr_yx, Opf_Single, 1, { DO_OP_XOR(REG_Y, REG_X); });
    OP(198, Op_Xor, Opr_yy, Opf_Single, 1, { DO_OP_XOR(REG_Y, REG_Y); });
    OP(199, Op_Xor, Opr_yz, Opf_Single, 1, { DO_OP_XOR(REG_Y, REG_Z); });
    OP(200, Op_Xor, Opr_yw, Opf_Single, 1, { DO_OP_XOR(REG_Y, REG_W); });
    OP(201, Op_Xor, Opr_ya, Opf_Single, 1, { DO_OP_XOR(REG_Y, REG_A); });
    OP(202, Op_Xor, Opr_zx, Opf_Single, 1, { DO_OP_XOR(REG_Z, REG_X); });
    OP(203, Op_Xor, Opr_zy, Opf_Single, 1, { DO_OP_XOR(REG_Z, REG_Y); });
    OP(204, Op_Xor, Opr_zz, Opf_Single, 1, { DO_OP_XOR(REG_Z, REG_Z); });
    OP(205, Op_Xor, Opr_zw, Opf_Single, 1, { DO_OP_XOR(REG_Z, REG_W); });
    OP(206, Op_Xor, Opr_za, Opf_Single, 1, { DO_OP_XOR(REG_Z, REG_A); });
    OP(207, Op_Xor, Opr_wx, Opf_Single, 1, { DO_OP_XOR(REG_W, REG_X); });
    OP(208, Op_Xor, Opr_wy, Opf_Single, 1, { DO_OP_XOR(REG_W, REG_Y); });
    OP(209, Op_Xor, Opr_wz, Opf_Single, 1, { DO_OP_XOR(REG_W, REG_Z); });
    OP(210, Op_Xor, Opr_ww, Opf_Single, 1, { DO_OP_XOR(REG_W, REG_W); });
    OP(211, Op_Xor, Opr_wa, Opf_Single, 1, { DO_OP_XOR(REG_W, REG_A); });
    OP(212, Op_Xor, Opr_ax, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_X); });
    OP(213, Op_Xor, Opr_ay, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_Y); });
    OP(214, Op_Xor, Opr_az, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_Z); });
    OP(215, Op_Xor, Opr_aw, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_W); });
    OP(216, Op_Xor, Opr_aa, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_A); });

    // Shift Left
    OP(217, Op_ShiftLeft, Opr_x, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_X);  });
    OP(218, Op_ShiftLeft, Opr_y, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_Y);  });
    OP(219, Op_ShiftLeft, Opr_z, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_Z);  });
    OP(220, Op_ShiftLeft, Opr_w, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_W);  });
    OP(221, Op_ShiftLeft, Opr_a, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_A);  });

    // Shift Right
    OP(222, Op_ShiftRight, Opr_x, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_X); });
    OP(223, Op_ShiftRight, Opr_y, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_Y); });
    OP(224, Op_ShiftRight, Opr_z, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_Z); });
    OP(225, Op_ShiftRight, Opr_w, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_W); });
    OP(226, Op_ShiftRight, Opr_a, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_A); });

    // Roll Left
    OP(227, Op_RollLeft, Opr_x, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_X); });
    OP(228, Op_RollLeft, Opr_y, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_Y); });
    OP(229, Op_RollLeft, Opr_z, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_Z); });
    OP(230, Op_RollLeft, Opr_w, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_W); });
    OP(231, Op_RollLeft, Opr_a, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_A); });

    // Roll Right
    OP(232, Op_RollRight, Opr_x, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_X); });
    OP(233, Op_RollRight, Opr_y, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_Y); });
    OP(234, Op_RollRight, Opr_z, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_Z); });
    OP(235, Op_RollRight, Opr_w, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_W); });
    OP(236, Op_RollRight, Opr_a, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_A); });
  }

}




















