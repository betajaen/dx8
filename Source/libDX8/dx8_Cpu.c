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
#include <stdlib.h>
#include "log_c/src/log.h"

Cpu cpu;

#define REG_A     (cpu.a)
#define REG_PC    (cpu.pc.w)
#define REG_X     (cpu.I.x)
#define REG_Y     (cpu.I.y)
#define REG_Z     (cpu.J.z)
#define REG_W     (cpu.J.w)
#define REG_I     (cpu.I.I)
#define REG_J     (cpu.J.J)
#define FL_Z      (cpu.flags.bZero)
#define FL_N      (cpu.flags.bNegative)
#define FL_C      (cpu.flags.bCarry)
#define FL_G      (cpu.flags.bGreater)
#define REG_IMM   (data.lo)
#define REG_WORD  (data.w)

typedef CPU_REGISTER(w, lo, hi) Data;

#define LO_BYTE(WORD)  ((Byte)(WORD & 0xFF))
#define HI_BYTE(WORD)  ((Byte)((WORD >> 8) & 0xFF))

#define MAKE_WORD(LO, HI) ((LO) + (HI) * 256)
#define MAKE_LOHI(W, LO, HI) LO = (W & 0xFF);  HI = (W >> 8) & 0xFF;

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

#define DO_OP_NOP()                                                    REG_PC += Opf_Single;

#define DO_OP_PUSH(R0)              PushToStack(R0);                   REG_PC += Opf_Single; 
#define DO_OP_PUSHF()               PushFlagsToStack();                REG_PC += Opf_Single; 
#define DO_OP_PUSHR()               PushRegisters();                   REG_PC += Opf_Single; 

#define DO_OP_POP(R0)               R0 = PopFromStack();               REG_PC += Opf_Single; 
#define DO_OP_POPF()                PopFlagsFromStack();               REG_PC += Opf_Single; 
#define DO_OP_POPR()                PopRegisters();                    REG_PC += Opf_Single; 

#define DO_OP_LOAD_INDIRECT(DST, SRC)   DST = FlagsOp(LoadFromMemory(SRC));         REG_PC += Opf_Single;
#define DO_OP_LOAD_ABSOLUTE(DST, SRC)   DST = FlagsOp(LoadFromMemory(SRC));         REG_PC += Opf_Address;
#define DO_OP_LOADW_ABSOLUTE(DST, SRC)  DST = FlagsOpW(LoadFromMemoryW(SRC));        REG_PC += Opf_Address;

#define DO_OP_STORE_INDIRECT(DST, SRC)  StoreToMemory(DST, SRC);           REG_PC += Opf_Single;
#define DO_OP_STORE_ABSOLUTE(DST, SRC)  StoreToMemory(DST, SRC);           REG_PC += Opf_Address;
#define DO_OP_STOREW_ABSOLUTE(DST, SRC) StoreToMemoryW(DST, SRC);          REG_PC += Opf_Address;

#define DO_OP_CALL()                Do_Call(Opf_Address, REG_WORD);
#define DO_OP_CALL_EQ()             Do_CallCond(FL_Z == 1, Opf_Address, REG_WORD);
#define DO_OP_CALL_NEQ()            Do_CallCond(FL_Z == 0, Opf_Address, REG_WORD);
#define DO_OP_CALL_GT()             Do_CallCond(FL_G == 1, Opf_Address, REG_WORD);
#define DO_OP_CALL_LT()             Do_CallCond(FL_G == 0 && FL_Z == 0, Opf_Address, REG_WORD);
#define DO_OP_CALL_Z()              Do_CallCond(FL_Z == 1, Opf_Address, REG_WORD);
#define DO_OP_CALL_NOT_Z()          Do_CallCond(FL_Z == 0, Opf_Address, REG_WORD);

#define DO_OP_RETURN()              Return(cpu);

#define DO_OP_COPY(DST, SRC)        DST = SRC;                         REG_PC += Opf_Single;
#define DO_OP_SET(DST, SRC)         DST = SRC;                         REG_PC += Opf_Byte;
#define DO_OP_SETW(DST, SRC)        DST = SRC;                         REG_PC += Opf_Word;

#define DO_OP_ADD(R0, R1)           R0 = FlagsOp(R0 + R1);             REG_PC += Opf_Single;
#define DO_OP_ADD_IMM(R0)           R0 = FlagsOp(R0 + REG_IMM);        REG_PC += Opf_Byte;
#define DO_OP_ADDW(R0, R1)          R0 = FlagsOpW(R0 + R1);            REG_PC += Opf_Single;
#define DO_OP_ADDW_IMM(R0)          R0 = FlagsOpW(R0 + REG_WORD);      REG_PC += Opf_Word;

#define DO_OP_SUB(R0, R1)           R0 = FlagsOp(R0 - R1);             REG_PC += Opf_Single;
#define DO_OP_SUB_IMM(R0)           R0 = FlagsOp(R0 - REG_IMM);        REG_PC += Opf_Byte;
#define DO_OP_SUBW(R0, R1)          R0 = FlagsOpW(R0 - R1);            REG_PC += Opf_Single;
#define DO_OP_SUBW_IMM(R0)          R0 = FlagsOpW(R0 - REG_WORD);      REG_PC += Opf_Word;

#define DO_OP_MUL(R0, R1)           R0 = FlagsOp(R0 * R1);             REG_PC += Opf_Single;
#define DO_OP_MUL_IMM(R0)           R0 = FlagsOp(R0 * REG_IMM);        REG_PC += Opf_Byte;
#define DO_OP_MULW(R0, R1)          R0 = FlagsOpW(R0 * R1);            REG_PC += Opf_Single;
#define DO_OP_MULW_IMM(R0)          R0 = FlagsOpW(R0 * REG_WORD);      REG_PC += Opf_Word;

#define DO_OP_DIV(R0, R1)           R0 = FlagsOp(R0 / R1);             REG_PC += Opf_Single;
#define DO_OP_DIV_IMM(R0)           R0 = FlagsOp(R0 / REG_IMM);        REG_PC += Opf_Byte;
#define DO_OP_DIVW(R0, R1)          R0 = FlagsOpW(R0 / R1);            REG_PC += Opf_Single;
#define DO_OP_DIVW_IMM(R0)          R0 = FlagsOpW(R0 / REG_WORD);      REG_PC += Opf_Word;

#define DO_OP_MOD(R0, R1)           R0 = FlagsOp(R0 % R1);             REG_PC += Opf_Single;
#define DO_OP_MOD_IMM(R0)           R0 = FlagsOp(R0 % REG_IMM);        REG_PC += Opf_Byte;
#define DO_OP_MODW(R0, R1)          R0 = FlagsOpW(R0 % R1);            REG_PC += Opf_Single;
#define DO_OP_MODW_IMM(R0)          R0 = FlagsOpW(R0 % REG_WORD);      REG_PC += Opf_Word;

#define DO_OP_INC(R0)               R0 = FlagsOp(R0 + 1);              REG_PC += Opf_Single;
#define DO_OP_DEC(R0)               R0 = FlagsOp(R0 - 1);              REG_PC += Opf_Single;
#define DO_OP_INCW(R0)              R0 = FlagsOpW(R0 + 1);             REG_PC += Opf_Single;
#define DO_OP_DECW(R0)              R0 = FlagsOpW(R0 - 1);             REG_PC += Opf_Single;

#define DO_OP_CMP(R0, R1)           Compare(R0, R1);                   REG_PC += Opf_Single;
#define DO_OP_CMP_IMM(R0)           Compare(R0, REG_IMM);              REG_PC += Opf_Byte;
#define DO_OP_CMP_IMMW(R0)          CompareW(R0, REG_WORD);            REG_PC += Opf_Word;
#define DO_OP_CMP_SELF(R0)          FlagsOp(R0);                       REG_PC += Opf_Single;

#define DO_OP_CMP_BIT(R0)           CompareBit(R0, data.lo);           REG_PC += Opf_Byte;  

#define DO_OP_AND(R0, R1)           R0 &= R1;                          REG_PC += Opf_Single;
#define DO_OP_AND_IMM(R0)           R0 &= REG_IMM;                     REG_PC += Opf_Byte;

#define DO_OP_OR(R0, R1)            R0 |= R1;                          REG_PC += Opf_Single;
#define DO_OP_OR_IMM(R0)            R0 |= REG_IMM;                     REG_PC += Opf_Byte;

#define DO_OP_NOT(R0)               R0 = ~R0;                          REG_PC += Opf_Single;

#define DO_OP_XOR(R0, R1)           R0 ^= R1;                          REG_PC += Opf_Single;
#define DO_OP_XOR_IMM(R0)           R0 ^= REG_IMM;                     REG_PC += Opf_Byte;

#define DO_OP_SHIFT_LEFT(R0, R1)    R0 <<= R1;                         REG_PC += Opf_Byte;
#define DO_OP_SHIFT_RIGHT(R0, R1)   R0 >>= R1;                         REG_PC += Opf_Byte;

#define DO_OP_CLC()                 cpu.flags.bCarry = 0;              REG_PC += Opf_Single;
#define DO_OP_SEC()                 cpu.flags.bCarry = 1;              REG_PC += Opf_Single;

#define DO_OP_ROLL_LEFT(R0)         /*  */                             REG_PC += Opf_Single;
#define DO_OP_ROLL_RIGHT(R0)        /*  */                             REG_PC += Opf_Single;

#define DO_OP_JMP()                 Pc_Set(REG_WORD);
#define DO_OP_JMP_ADD(LO, HI)       JumpAdd(REG_WORD, LO, HI);
#define DO_OP_JMP_ABS(LO, HI)       JumpAbs(LO, HI);
#define DO_OP_JMP_REL()             JumpRel(REG_IMM);
#define DO_OP_JMP_EQ()              JumpCond(FL_Z == 1, data.w, Opf_Address);
#define DO_OP_JMP_NEQ()             JumpCond(FL_Z == 0, data.w, Opf_Address);
#define DO_OP_JMP_GT()              JumpCond(FL_G == 1, data.w, Opf_Address);
#define DO_OP_JMP_LT()              JumpCond(FL_G == 0 && FL_Z == 0, data.w, Opf_Address);
#define DO_OP_JMP_Z()               JumpCond(FL_Z == 1, data.w, Opf_Address);
#define DO_OP_JMP_NOT_Z()           JumpCond(FL_Z == 0, data.w, Opf_Address);

#define DO_OP_JMP_REL_EQ()          JumpCondRel(FL_Z == 1, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_NEQ()         JumpCondRel(FL_Z == 0, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_GT()          JumpCondRel(FL_G == 1, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_LT()          JumpCondRel(FL_G == 0 && FL_Z == 0, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_Z()           JumpCondRel(FL_Z == 1, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_NOT_Z()       JumpCondRel(FL_Z == 0, REG_IMM, Opf_Byte);
#define DO_OP_INT()                 DoInterrupt(REG_IMM);              REG_PC += Opf_Byte;
#define DO_OP_RESUME()              Cpu_ResumeInterrupt()                  

#define DO_OP_SET_PC_OFFSET()       cpu.pcOffset.w = REG_WORD; REG_PC += Opf_Address;
#define DO_OP_SET_PC_ROFFSET()      cpu.pcOffset.w = REG_WORD; cpu.pc.w = 0;

#define DO_OP_DEBUG_REGISTER()      DoDebugRegister(REG_IMM);   REG_PC += Opf_Byte;
#define DO_OP_DEBUG_ADDRESS()       DoDebugAddress(REG_WORD);    REG_PC += Opf_Word;
#define DO_OP_DEBUG_BREAKPOINT()    DoDebugBreakpoint(); REG_PC += Opf_Single;
#define DO_OP_DEBUG_NOTE()          DoDebugNote(REG_WORD); REG_PC += Opf_Word;
#define DO_OP_DEBUG_OPTION()        DoDebugOption(REG_IMM); REG_PC += Opf_Byte;

#define DO_OP_JMP_BRANCH(R0)        CallBranch(R0, REG_WORD, Opf_Address);
#define DO_OP_CALL_BRANCH(R0)       JumpBranch(R0, REG_WORD);

bool DebugLog = false;

enum OpFormat
{
  Opf_Single     = 1,
  Opf_Byte       = 2,
  Opf_Address    = 3,
  Opf_Word       = 3,
  Opf_DoubleWord = 5,
};

#define OP(OP, OPERANDS, FORMAT, TIME, CODE) Op_##OP##_##OPERANDS,

enum Instructions
{
  #include "dx8_Cpu_Opcodes.inc"
  Op_COUNT
};

// Power/Reset Routines

void Cpu_TurnOn();

void Cpu_Setup()
{
  memset(&cpu, 0, sizeof(Cpu));
}

void Cpu_Teardown()
{
  memset(&cpu, 0, sizeof(Cpu));
}

void Cpu_TurnOn()
{
  // 'Flip' on CPU.
  // Registers are interminate.
  REG_A = rand() & 0xFF;
  REG_X = rand() & 0xFF;
  REG_Y = rand() & 0xFF;
  REG_Z = rand() & 0xFF;
  REG_W = rand() & 0xFF;
  cpu.pc.lo = rand() & 0xFF;
  cpu.pc.hi = rand() & 0xFF;
  cpu.pcOffset.lo = rand() & 0xFF;
  cpu.pcOffset.hi = rand() & 0xFF;
  cpu.flags._data = rand() & 0xFF;

  // Cpu is halted.
  cpu.halt = true;

  LOGF("CPU Turn On");
}

void Cpu_Reset()
{
  REG_A = rand() & 0xFF;
  REG_X = rand() & 0xFF;
  REG_Y = rand() & 0xFF;
  REG_Z = rand() & 0xFF;
  REG_W = rand() & 0xFF;

  cpu.stack = 0;
  cpu.flags._data = 0;
  cpu.halt = false;
  cpu.pcOffset.lo = 0;
  cpu.pcOffset.hi = 0;
  cpu.pc.lo = Mmu_Get(INTVEC_ADDR_RESET  ); // Get Reset from IVT
  cpu.pc.hi = Mmu_Get(INTVEC_ADDR_RESET+1);

  LOGF("CPU Reset ResetIVT=$%4X", cpu.pc.w);
}

// Debug Routines

#if defined OP
#undef OP
#endif
#define QUOTE(name) #name
#define STR(macro) QUOTE(macro)
#define OP(OP, A,B,C,D)  STR(OP),

const char* kOpcodesStr[] = {
#include "dx8_Cpu_Opcodes.inc"
};

void Cpu_Print(const char* name, Cpu* c)
{
  LOGF("Cpu[%s] Pc=$%4X Int=$%2X A=$%2X X=$%2X Y=$%2X Z=$%2X W=$%2X Op=$%2X Lo=$%2X Hi=$%2X", name, c->pc.w, c->interrupt, c->a, c->I.x, c->I.y, c->J.z, c->J.w, c->lastOpcode, LO_BYTE(c->lastOperand), HI_BYTE(c->lastOperand));
}

#define DBG_LOG(NAME, EXTRA_TEXT, ...)\
  LOGF(NAME " [$%4X ($%4X)]" EXTRA_TEXT, cpu.pc.w, (cpu.pcOffset.w + cpu.pc.w), __VA_ARGS__)
#define DBG_LOG_NT(NAME)\
  LOGF("%s [$%4X ($%4X)]", NAME, cpu.pc.w, (cpu.pcOffset.w + cpu.pc.w))

void DoDebugRegister(Byte byte)
{
  switch(byte)
  {
    case 'a': DBG_LOG("DBG-REG ", "a   = $%2X", cpu.a);   break;
    case 'x': DBG_LOG("DBG-REG ", "x   = $%2X", cpu.I.x); break;
    case 'y': DBG_LOG("DBG-REG ", "y   = $%2X", cpu.I.y); break;
    case 'z': DBG_LOG("DBG-REG ", "z   = $%2X", cpu.J.z); break;
    case 'w': DBG_LOG("DBG-REG ", "w   = $%2X", cpu.J.w); break;
    case 'p': DBG_LOG("DBG-REG ", "pc  = $%4X", cpu.pc.w); break;
    case 's': DBG_LOG("DBG-REG ", "st  = $%2X", cpu.stack); break;
    case 'i': DBG_LOG("DBG-REG ", "i   = $%4X", cpu.I.I); break;
    case 'j': DBG_LOG("DBG-REG ", "j   = $%4X", cpu.J.J); break;
    case 'I': DBG_LOG("DBG-REG ", "int = $%2X", cpu.interrupt); break;
    default: DBG_LOG_NT("?"); break;
  }
}

void DoDebugAddress(Word address)
{
  Byte b = Mmu_Get(address);
  DBG_LOG("DBG-ADDR", "$%4X = $%2X/%i", address, b, b);
}

void DoDebugNote(Word note)
{
  Byte* np = (Byte*) &note;
  Byte m[3];
  m[0] = np[0];
  m[1] = np[1];
  m[2] = 0;
  DBG_LOG("DBG-NOTE", "%s", m);
}

void DoDebugBreakpoint()
{
  cpu.halt = true;
  LOGF("DBG-BRK  Pc=$%4X Int=$%2X A=$%2X X=$%2X Y=$%2X Z=$%2X W=$%2X Op=$%2X Lo=$%2X Hi=$%2X", cpu.pc.w, cpu.interrupt, cpu.a, cpu.I.x, cpu.I.y, cpu.J.z, cpu.J.w, cpu.lastOpcode, LO_BYTE(cpu.lastOperand), HI_BYTE(cpu.lastOperand));
}

void Mmu_SetDboV(bool v);

void DoDebugOption(Byte option)
{
  if (option == 'L')
    DebugLog = true;
  else if (option == 'l')
    DebugLog = false;
  else if (option == 'V')
    Mmu_SetDboV(true);
  else if (option == 'v')
    Mmu_SetDboV(false);
}

// Pc Routines
inline void Pc_Set(Word address)
{
  cpu.pc.w = address;
}

inline void Pc_Add(int address)
{
  Pc_Set(cpu.pc.w + address);
}

inline void Pc_SetLoHi(Byte lo, Byte hi)
{
  Word w = lo;
  w |= ((Word) hi) << 8;
  Pc_Set(w);
}

// Stack Routines

inline void Stack_Print()
{
  LOGF("Stack = %i", cpu.stack);
  for (int i = 0; i < 16; i++)
  {
    LOGF("[%i:$%2X] $%2X", i, i, Stack_Get(i));
  }
}

inline void PushToStack(Byte value)
{
  if (cpu.stack == 0xFF)
  {
    LOGF("Stack Overflow!!");
    Cpu_Print("CPU", &cpu);
    Stack_Print();
  }
  Stack_Set(cpu.stack, value);
  ++cpu.stack;
 // LOGF("Pushed %02X to stack. Stack size is %i", value, cpu.stack);
}

inline Byte PopFromStack()
{
  if (cpu.stack == 0)
  {
    LOGF("Stack Underflow!!");
    Cpu_Print("CPU", &cpu);
    Stack_Print();
  }
  --cpu.stack;
  Byte value = Stack_Get(cpu.stack);
 // LOGF("Popped %02X from stack. Stack size is %i", value, cpu.stack);
  return value;
}

inline void PushFlagsToStack()
{
  PushToStack(cpu.flags._data);
}

inline void PopFlagsFromStack()
{
  cpu.flags._data = PopFromStack(); 
}

inline void PushRegisters()
{
  PushToStack(REG_X);
  PushToStack(REG_Y);
  PushToStack(REG_Z);
  PushToStack(REG_W);
  PushToStack(REG_A);
  PushToStack(cpu.flags._data);
}

inline void PopRegisters()
{
  cpu.flags._data = PopFromStack();
  REG_A = PopFromStack();
  REG_W = PopFromStack();
  REG_Z = PopFromStack();
  REG_Y = PopFromStack();
  REG_X = PopFromStack();
}

inline void PushPc()
{
  Word pc = cpu.pc.w;

  PushToStack(LO_BYTE(pc));
  PushToStack(HI_BYTE(pc));
}

inline void PopPc()
{
  cpu.pc.hi = PopFromStack();
  cpu.pc.lo = PopFromStack();
}

// Opcodes

inline void Do_Call(Byte lo_offset, Word callAddress)
{
  Word pc = cpu.pc.w + lo_offset;

  PushToStack(LO_BYTE(pc));
  PushToStack(HI_BYTE(pc));
  // REG_PC = callAddress;
  Pc_Set(callAddress);
}

inline void Do_CallCond(bool cond, Byte lo_offset, Word callAddress)
{
  if (cond)
  {
    Do_Call(lo_offset, callAddress);
  }
  else
  {
    //@@@ cpu.pc.w = ifFalse;
    Pc_Add(lo_offset);
  }
}

inline void CallBranch(Byte value, Word tableAddress, Byte lo_offset)
{
  Word address = Mmu_GetWord(tableAddress + ((Word)value) * 2);
  LOGF("Address=$%4X, TableAddress=$%4X, Value=$%2X", address, tableAddress, value);
  Do_Call(lo_offset, address);
  
}


inline void Return()
{
  cpu.pc.hi = PopFromStack();
  cpu.pc.lo = PopFromStack();
}

inline Byte LoadFromMemory(Word address)
{
  return Mmu_Get(address);
}

inline Word LoadFromMemoryW(Word address)
{
  Byte lo, hi;
  lo = LoadFromMemory(address);
  hi = LoadFromMemory(address+1);

  return MAKE_WORD(lo, hi);
}

inline void StoreToMemory(Word address, Byte value)
{
  Mmu_Set(address, value);
}

inline void StoreToMemoryW(Word address, Word value)
{
  Byte lo, hi;
  MAKE_LOHI(value, lo, hi);
  Mmu_Set(address,   lo);
  Mmu_Set(address+1, hi);
}

inline Byte FlagsOp(int value)
{
  cpu.flags.bZero     = (value == 0);
  cpu.flags.bNegative = (value < 0);
  cpu.flags.bCarry    = (value > 0xFF);
  return value & 0xFF;
}

inline Word FlagsOpW(int value)
{
  cpu.flags.bZero = (value == 0);
  cpu.flags.bNegative = (value < 0);
  cpu.flags.bCarry = (value > 0xFFFF);
  return value & 0xFFFF;
}

inline void Compare(Byte lhs, Byte rhs)
{
  cpu.flags.bCarry = (rhs >= lhs);
  int val = rhs - lhs;
  cpu.flags.bZero     = (val == 0);
  cpu.flags.bNegative = (val < 0);
  cpu.flags.bGreater  = lhs > rhs;
}

inline void CompareW(Word lhs, Word rhs)
{
  cpu.flags.bCarry = (rhs >= lhs);
  int val = rhs - lhs;
  cpu.flags.bZero = (val == 0);
  cpu.flags.bNegative = (val < 0);
  cpu.flags.bGreater = lhs > rhs;
}

inline void CompareBit(Byte val, Byte bit)
{
  Byte v = (val & bit);
  cpu.flags.bZero     = (v == 0);
  cpu.flags.bNegative = 0;
  cpu.flags.bCarry    = 0;
  cpu.flags.bGreater  = 0;

  // LOGF("CMPBIT >> Val=$%2X Bit=$%2X => V=$%2X, $%2X", val, bit, v, cpu.flags.bZero);
}

inline Byte ADC(Byte r0, Byte r1)
{
  return 0; // @TODO
}

inline void ADW(Byte* lo0, Byte* hi0, Byte lo1, Byte hi1)
{
  Word a = *lo0;
  a |= ((Word) *hi0) << 8;

  Word b = lo1;
  a |= ((Word) hi1) << 8;

  int value = a + b;

  cpu.flags.bZero = (value == 0);
  cpu.flags.bNegative = (value < 0);
  cpu.flags.bCarry = (value > 0xFFFF);

  *lo0 = value & 0xFF;
  *hi0 = ((value >> 8)) & 0xFF;

}

inline void JumpAdd(Word addr, Word lo, Word hi)
{
  //@@@cpu.pc.w = (addr + lo + hi * 256) & 0xFFFF;
  Pc_Set((addr + lo + hi * 256) & 0xFFFF);
}

inline void JumpAbs(Word lo, Word hi)
{
  //Word lastPc = cpu.pc.w;
  //@@@ cpu.pc.w = (lo + hi * 256) & 0xFFFF;
  Pc_Set((lo + hi * 256) & 0xFFFF);
  //LOGF("JMP hi= %2X lo=%2X pc  from %4X  to %4X", hi, lo, lastPc, cpu.pc.w);
}

inline void JumpBranch(Byte value, Word tableAddress)
{
  Word address = Mmu_GetWord(tableAddress + ((Word)value) * 2);
  Pc_Set(address);
}

inline void JumpRel(Byte signedValue)
{
  int relAddr = (char) signedValue;
  Pc_Add(relAddr);
}

inline void JumpCond(bool cond, Word absIfTrue, Byte relIfFalse)
{
  if (cond)
  {
    //@@@ cpu.pc.w = ifTrue;
    Pc_Set(absIfTrue);
  }
  else
  {
    //@@@ cpu.pc.w = ifFalse;
    Pc_Add(relIfFalse);
  }
}

inline void JumpCondRel(bool cond, Byte relIfTrue, Byte relIfFalse)
{
  if (cond)
  {
    JumpRel(relIfTrue);
  }
  else
  {
    Pc_Add(relIfFalse);
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
    //@@@ cpu.pc.w = ifFalse;
    Pc_Set(ifFalse);
  }
}

// Interrupts

void Cpu_Interrupt(Byte name)
{
  if (cpu.halt)
    return;

  if (cpu.interrupt)
  {
    LOGF("Interupt already happening $%2X when I want $%2X!!!", cpu.interrupt, name);
    return;
  }

  // Grab interrupt address
  Word interruptAddress = Mmu_GetWord(0x02 * name);

  if (interruptAddress == 0)
  {
    LOGF("Cannot do interrupt. No address for $%2X", name);
    return;
  }

  PushRegisters();
  PushPc();

 // interruptAddress = Mmu_Get((name * 2));
 // interruptAddress |= ((Word) Mmu_Get((name * 2) + 1)) << 8;

  cpu.interrupt = name;
  //@@@ cpu.pc.w = interruptAddress;
  Pc_Set(interruptAddress);
  REG_A = 0;
  REG_X = 0;
  REG_Y = 0;
  REG_Z = 0;
  REG_W = 0;
  cpu.flags._data = 0;

}

void Cpu_ResumeInterrupt()
{
  if (cpu.halt)
    return;

  if (cpu.interrupt == 0)
  {
    LOGF("Interupt not happening. Already interrupted for $%2X!!!", cpu.interrupt);
    //Cpu_Print("CPU", &cpu);
    return;
  }

  int wasInterrupt = cpu.interrupt;

  cpu.interrupt = 0;

  PopPc();
  PopRegisters();
}

bool IsInterrupt()
{
  return cpu.interrupt != 0;
}

void Gpu_Interrupt(Byte name);
void Gpu_On();
void Floppy_Interrupt();

inline void DoInterrupt(Byte name)
{
  LOGF("Interrupt $%2X", name);
  switch(name)
  {
    case INT_RESET:
      Cpu_Reset(true);
      return;
    case INT_GPUON:
      Gpu_On();
      return;
    case INT_FLOPPY_OP:
      Floppy_Interrupt();
      return;
  }
}

// Monitor/Debugging

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
  return REG_PC + cpu.pcOffset.w;
}

void Cpu_SetPcRegister(Word value)
{
  REG_PC = value;
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
  cpu.stack = value;
}

Byte Cpu_GetHalt()
{
  return cpu.halt;
}

void Cpu_SetHalt(Byte value)
{
  LOGF("Cpu_SetHalt = %i", value);
  cpu.halt = value != 0 ? true : false;
}

// CPU Stepping

#define QUOTE(name) #name
#define STR(macro) QUOTE(macro)
#undef OP
#define OP(OP, A,B,C,D)  #OP "_" #A,

const char* OpcodeStr[] = {
#include "dx8_Cpu_Opcodes.inc"
};

int Cpu_Step()
{
  if (cpu.halt)
    return 4;

  Word pc = REG_PC;
  pc += cpu.pcOffset.w;

  Byte opcode = Mmu_Get(pc);
  Data data;
  data.lo = Mmu_Get(pc + 1);
  data.hi = Mmu_Get(pc + 2);

 // LOGF("![$%4X] ($%4X) OP=%2X:%s LO=$%2X HI=$%2X", REG_PC, (Word) (cpu.pc.w - cpu.pcOffset.w),  opcode, OpcodeStr[opcode], data.lo, data.hi);

  if (DebugLog)
  {
    LOGF("[$%4X:$%4X] $%2X:%-12s LO=$%2X HI=$%2X", cpu.pc.w, pc, opcode, OpcodeStr[opcode], data.lo, data.hi);
  }

#undef OP
#define OP(OP, OPERANDS, FORMAT, TIME, CODE) case Op_##OP##_##OPERANDS: CODE; return TIME;

  cpu.lastOpcode = opcode;
  cpu.lastOperand = data.w;

  switch (opcode)
  {
#include "dx8_Cpu_Opcodes.inc"
  default:
    cpu.halt = 1;
    LOGF("**HALT - Unknown Opcode ** [$%4X] ($%4X) OP=%2X:%s LO=$%2X HI=$%2X", REG_PC, (Word)(cpu.pc.w + cpu.pcOffset.w), opcode, OpcodeStr[opcode], data.lo, data.hi);
    break;
  }

  return 1;
}
