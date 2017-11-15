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
#define FL_Z      (cpu.flags.bZero)
#define FL_N      (cpu.flags.bNegative)
#define FL_C      (cpu.flags.bCarry)
#define REG_IMM   (data.lo)

typedef CPU_REGISTER(w, lo, hi) Data;

#define LO_BYTE(WORD)  ((Byte)(WORD & 0xFF))
#define HI_BYTE(WORD)  ((Byte)((WORD >> 8) & 0xFF))



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

#define DO_OP_LOAD(R0)              R0 = LoadFromMemory(data.w);       REG_PC += Opf_Address;
#define DO_OP_STORE(R0)             StoreToMemory(data.w, R0);         REG_PC += Opf_Address;

#define DO_OP_LOADXY(R0)            R0 = LoadFromMemoryW(REG_X, REG_Y);REG_PC += Opf_Single;
#define DO_OP_STOREXY(R0)           StoreToMemoryW(REG_X, REG_Y, R0);  REG_PC += Opf_Single;

#define DO_OP_CALL()                Do_Call(Opf_Address, data.w);

#define DO_OP_RETURN()              Return(cpu);

#define DO_OP_SET(R0)               R0 = REG_IMM;  REG_PC += Opf_Byte;
#define DO_OP_SETW(R0, R1)          R0 = data.lo; R1 = data.hi;        REG_PC += Opf_Address;

#define DO_OP_ADD(R0, R1)           R0 = FlagsOp(R0 + R1);             REG_PC += Opf_Single;
#define DO_OP_ADC(R0, R1)          R0 = ADC(R0, R1);                  REG_PC += Opf_Single;

#define DO_OP_ADD_IMM(R0)           R0 = FlagsOp(R0 + REG_IMM);        REG_PC += Opf_Byte;
#define DO_OP_ADC_IMM(R0)           R0 = ADC(R0, REG_IMM);             REG_PC += Opf_Byte;

#define DO_OP_ADDW()                ADW(&REG_X, &REG_Y, REG_Z, REG_W); REG_PC += Opf_Single;

#define DO_OP_SUB(R0, R1)           R0 = FlagsOp(R0 - R1);             REG_PC += Opf_Single;
#define DO_OP_SUB_IMM(R0)           R0 = FlagsOp(R0 - REG_IMM);        REG_PC += Opf_Byte;

#define DO_OP_MUL(R0, R1)           R0 = FlagsOp(R0 * R1);             REG_PC += Opf_Single;
#define DO_OP_MUL_IMM(R0)           R0 = FlagsOp(R0 * REG_IMM);        REG_PC += Opf_Byte;

#define DO_OP_INC(R0)               R0 = FlagsOp(R0 + 1);              REG_PC += Opf_Single;
#define DO_OP_DEC(R0)               R0 = FlagsOp(R0 - 1);              REG_PC += Opf_Single;

#define DO_OP_CMP(R0, R1)           Compare(R0, R1);                   REG_PC += Opf_Single;
#define DO_OP_CMP_IMM(R0)           Compare(R0, REG_IMM);              REG_PC += Opf_Byte;

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

#define DO_OP_JMP()                 Pc_Set(data.w);
#define DO_OP_JMP_ADD(LO, HI)       JumpAdd(data.w, LO, HI);
#define DO_OP_JMP_ABS(LO, HI)       JumpAbs(LO, HI);
#define DO_OP_JMP_REL()             JumpRel(REG_IMM);
#define DO_OP_JMP_EQ()              JumpCond(FL_Z == 1, data.w, REG_PC + Opf_Address);
#define DO_OP_JMP_NEQ()             JumpCond(FL_Z == 0, data.w, REG_PC + Opf_Address);
#define DO_OP_JMP_GT()              JumpCond(FL_N == 1, data.w, REG_PC + Opf_Address);
#define DO_OP_JMP_LT()              JumpCond(FL_C == 1, data.w, REG_PC + Opf_Address);
#define DO_OP_JMP_Z()               JumpCond(FL_Z == 1, data.w, REG_PC + Opf_Address);
#define DO_OP_JMP_NOT_Z()           JumpCond(FL_Z == 0, data.w, REG_PC + Opf_Address);

#define DO_OP_JMP_REL_EQ()          JumpCondRel(FL_Z == 1, REG_IMM, REG_PC + Opf_Address);
#define DO_OP_JMP_REL_NEQ()         JumpCondRel(FL_Z == 0, REG_IMM, REG_PC + Opf_Address);
#define DO_OP_JMP_REL_GT()          JumpCondRel(FL_N == 1, REG_IMM, REG_PC + Opf_Address);
#define DO_OP_JMP_REL_LT()          JumpCondRel(FL_C == 1, REG_IMM, REG_PC + Opf_Address);
#define DO_OP_JMP_REL_Z()           JumpCondRel(FL_Z == 1, REG_IMM, REG_PC + Opf_Address);
#define DO_OP_JMP_REL_NOT_Z()       JumpCondRel(FL_Z == 0, REG_IMM, REG_PC + Opf_Address);
#define DO_OP_INT()                 DoInterrupt(data.lo);              REG_PC += Opf_Byte;
#define DO_OP_RESUME()              Cpu_ResumeInterrupt()                  

#define DO_OP_SET_PC_OFFSET()       cpu.pcOffset.w = data.w; REG_PC += Opf_Address;

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

// Pc Routines
inline void Pc_Set(Word address)
{
  cpu.pc.w = cpu.pcOffset.w + address;
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

inline void Return()
{
  cpu.pc.hi = PopFromStack();
  cpu.pc.lo = PopFromStack();
}

inline Byte LoadFromMemory(Word address)
{
  return Mmu_Get(address);
}

inline Byte LoadFromMemoryW(Byte lo, Byte hi)
{
  Word address = lo;
  address |= ((Word) (hi) << 8);
  return Mmu_Get(address);
}

inline void StoreToMemory(Word address, Byte value)
{
  if (address == 0x826E)
  {
    LOGF("$%4X >>> $%2X %c", address, value, value);
    Cpu_Print("CPU", &cpu);
  }

  Mmu_Set(address, value);
}

inline void StoreToMemoryW(Byte lo, Byte hi, Byte value)
{
  Word address = lo;
  address |= ((Word)(hi) << 8);

  Mmu_Set(address, value);
}

inline Byte FlagsOp(int value)
{
  cpu.flags.bZero     = (value == 0);
  cpu.flags.bNegative = (value < 0);
  cpu.flags.bCarry    = (value > 0xFF);
  return value & 0xFF;
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
  Byte v = (val & bit);
  cpu.flags.bZero     = (v == 0);
  cpu.flags.bNegative = 0;
  cpu.flags.bCarry    = 0;

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

inline void JumpRel(Byte signedValue)
{
  int relAddr, newPc;
  if ((signedValue & 0x80) == 0x80)
  {
    relAddr = (char) signedValue;
    newPc = (cpu.pc.w + relAddr) & 0xFFFF;
    LOGF("JumpRel NEGATIVE given=$%2X signed=%i newPC = $%4X", signedValue, relAddr, newPc);
  }
  else
  {
    relAddr = (signedValue);
    newPc = (cpu.pc.w + relAddr) & 0xFFFF;
    LOGF("JumpRel POSITIVE given=$%2X signed=%i newPC = $%4X", signedValue, relAddr, newPc);
  }
  //@@@ cpu.pc.w = (Word) newPc;
  Pc_Set((Word) newPc);
}

inline void JumpCond(bool cond, Word ifTrue, Word ifFalse)
{
  if (cond)
  {
    //@@@ cpu.pc.w = ifTrue;
    Pc_Set(ifTrue);
  }
  else
  {
    //@@@ cpu.pc.w = ifFalse;
    Pc_Set(ifFalse);
  }
}

inline void JumpCondRel(bool cond, Byte relIfTrue, Word absIfFalse)
{
  if (cond)
  {
    JumpRel(relIfTrue);
  }
  else
  {
    //@@@ cpu.pc.w = absIfFalse;
    Pc_Set(absIfFalse);
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
  if (cpu.interrupt)
  {
    LOGF("Interupt already happening $%2X when I want $%2X!!!", cpu.interrupt, name);
    return;
  }

  // Grab interrupt address
  Word interruptAddress = Mmu_GetWord(0x02 * name);

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
  if (cpu.interrupt == 0)
  {
    LOGF("Interupt not happening. Already interrupted for $%2X!!!", cpu.interrupt);
    Cpu_Print("CPU", &cpu);
    return;
  }

  int wasInterrupt = cpu.interrupt;

  cpu.interrupt = 0;

  PopPc();
  PopRegisters();
  
  if (wasInterrupt == INTVEC_FLOPPY)
  {
    LOGF("Resume from interrupt %i to $%04X", wasInterrupt, cpu.pc.w);
  
    Cpu_Print("CPU", &cpu);
    Stack_Print();
  }
}

bool IsInterrupt()
{
  return cpu.interrupt != 0;
}

void Mmu_Interrupt(Byte name);
void Gpu_Interrupt(Byte name);
void Gpu_On();

inline void DoInterrupt(Byte name)
{
  LOGF("Interrupt $%2X", name);

  switch(name)
  {
    case INT_MEMCPY:
    case INT_MEMSET:
    case INT_PRG2MEM:
      Mmu_Interrupt(name);
      return;
    case INT_RESET:
      Cpu_Reset(true);
      return;
    case INT_PRG2GPU:
    case INT_GPUSET:
      Gpu_Interrupt(name);
    break;
    case INT_GPUON:
      Gpu_On();
    break;
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
  return REG_PC;
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
  cpu.stack;
}

// CPU Stepping


#define QUOTE(name) #name
#define STR(macro) QUOTE(macro)

#define OP(OP, A,B,C,D)  STR(OP),

const char* OpcodeStr[] = {
#include "dx8_Cpu_Opcodes.inc"
};

int Cpu_Step()
{
  if (cpu.halt)
    return 4;

  Byte opcode = Mmu_Get(REG_PC);
  Data data;
  data.lo = Mmu_Get(REG_PC + 1);
  data.hi = Mmu_Get(REG_PC + 2);

  //LOGF("**CPU STEP >> PC=$%4X ($%4X) OP=%2X:%s LO=$%2X HI=$%2X", REG_PC, (Word) (cpu.pc.w - cpu.pcOffset.w),  opcode, OpcodeStr[opcode], data.lo, data.hi);

#undef OP
#define OP(OP, OPERANDS, FORMAT, TIME, CODE) case Op_##OP##_##OPERANDS: CODE; return TIME;

  cpu.lastOpcode = opcode;
  cpu.lastOperand = data.w;

  switch (opcode)
  {
  default:
#include "dx8_Cpu_Opcodes.inc"
  }

  return 1;
}
