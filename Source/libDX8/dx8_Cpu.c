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

Cpu cpu;

void Cpu_StepOnce();

void Cpu_Setup()
{
#define CPU_Version "DX8-CPU-A"

  DX8_INFOF("Cpu %s", CPU_Version);
//  DX8_INFOF("%i Opcodes", Op_COUNT);
  memset(&cpu, 0, sizeof(Cpu));
}

void Cpu_Teardown()
{
  memset(&cpu, 0, sizeof(Cpu));
}

void Cpu_Reset()
{
  cpu.a   = rand() & 0xFF;
  cpu.I.x = rand() & 0xFF;
  cpu.I.y = rand() & 0xFF;
  cpu.J.z = rand() & 0xFF;
  cpu.J.w = rand() & 0xFF;

  for (int i = 0; i < 8; i++)
    cpu.interruptMask[i] = 0;

  cpu.interruptsStopped = false;
  cpu.interrupt = 0;
  cpu.stack = 0;
  cpu.pcStack = 0;
  cpu.flags._data = 0;
  cpu.halt = false;
  cpu.pc.lo = Mmu_Get(INTVEC_ADDR_RESET); // Get Reset from IVT
  cpu.pc.hi = Mmu_Get(INTVEC_ADDR_RESET + 1);
  cpu.interruptsStopped = true;

  DX8_INFOF("Cpu Reset.");
  DX8_INFOF("Reset Address=$%04X", cpu.pc.w);
}

void Cpu_TurnOn()
{
  cpu.a = rand() & 0xFF;
  cpu.I.x = rand() & 0xFF;
  cpu.I.y = rand() & 0xFF;
  cpu.J.z = rand() & 0xFF;
  cpu.J.w = rand() & 0xFF;
  cpu.stack = rand() & 0xFF;
  cpu.pcStack = rand() & 0xFF;
  cpu.pc.lo = rand() & 0xFF;
  cpu.pc.hi = rand() & 0xFF;
  cpu.flags._data = rand() & 0xFF;

  // Cpu is halted.
  cpu.halt = true;

  DX8_INFOF("Cpu Turned On.");
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
  return cpu.a;
}

void Cpu_SetARegister(Byte value)
{
  cpu.a = value;
}

Byte Cpu_GetXRegister()
{
  return cpu.I.x;
}

void Cpu_SetXRegister(Byte value)
{
  cpu.I.x = value;
}

Byte Cpu_GetYRegister()
{
  return cpu.I.y;
}

void Cpu_SetYRegister(Byte value)
{
  cpu.I.y = value;
}

Byte Cpu_GetZRegister()
{
  return cpu.J.z;
}

void Cpu_SetZRegister(Byte value)
{
  cpu.J.z = value;
}

Byte Cpu_GetWRegister()
{
  return cpu.J.w;
}

void Cpu_SetWRegister(Byte value)
{
  cpu.J.w = value;
}

Word Cpu_GetPcRegister()
{
  return cpu.pc.w;
}

void Cpu_SetPcRegister(Word value)
{
  cpu.pc.w = value;
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
  DX8_LOGF("Cpu_SetHalt = %i", value);
  cpu.halt = value != 0 ? true : false;
}

void Cpu_Check_Interrupts();

int Cpu_Step()
{
  if (cpu.halt)
    return 4;

  cpu.cycle++;

  Cpu_StepOnce();

  Cpu_Check_Interrupts();

  return 0;
}

#if 0


Cpu cpu;

void Cpu_Halt(Byte id);
void Cpu_TurnOn();

#include "dx8_Cpu_Stack.inc"
#include "dx8_Cpu_PcStack.inc"
#include "dx8_Cpu_Jump.inc"
#include "dx8_Cpu_Call.inc"
#include "dx8_Cpu_Memory.inc"
#include "dx8_Cpu_Debug.inc"

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

#define DO_OP_NOP()                                                                   REG_PC += Opf_Single;

#define DO_OP_PUSH(R0)                    Cpu_Stack_PushByte(R0);                     REG_PC += Opf_Single;
#define DO_OP_PUSHW(R0)                   Cpu_Stack_PushWord(R0);                     REG_PC += Opf_Single;
#define DO_OP_PUSHF()                     Cpu_Stack_PushFlags();                      REG_PC += Opf_Single;
#define DO_OP_PUSHIMM()                   Cpu_Stack_PushByte(REG_IMM);                REG_PC += Opf_Byte;
#define DO_OP_PUSHIMM_W()                 Cpu_Stack_PushWord(REG_WORD);               REG_PC += Opf_Word;
#define DO_OP_PUSHPC()                    Cpu_PcStack_Push(0);                        REG_PC += Opf_Single;
#define DO_OP_PUSHPC_R(R0)                Cpu_PcStack_Push(R0);                       REG_PC += Opf_Single;
#define DO_OP_PUSHPC_IMM()                Cpu_PcStack_Push(REG_IMM);                  REG_PC += Opf_Byte;

#define DO_OP_POP(R0)                     R0 = Cpu_Stack_PopByte();                   REG_PC += Opf_Single;
#define DO_OP_POPW(R0)                    R0 = Cpu_Stack_PopWord();                   REG_PC += Opf_Single;
#define DO_OP_POPF()                      Cpu_Stack_PopFlags();                       REG_PC += Opf_Single;
#define DO_OP_POPPC()                     Cpu_PcStack_Pop();

#define DO_OP_LOAD_INDIRECT(DST, SRC)     DST = FlagsOpB(Cpu_Memory_LoadByte(SRC));    REG_PC += Opf_Single;
#define DO_OP_LOAD_ABSOLUTE(DST, SRC)     DST = FlagsOpB(Cpu_Memory_LoadByte(SRC));    REG_PC += Opf_Address;
#define DO_OP_LOADW_ABSOLUTE(DST, SRC)    DST = FlagsOpW(Cpu_Memory_LoadWord(SRC));   REG_PC += Opf_Address;

#define DO_OP_STORE_INDIRECT(DST, SRC)    Cpu_Memory_StoreByte(DST, SRC);             REG_PC += Opf_Single;
#define DO_OP_STORE_ABSOLUTE(DST, SRC)    Cpu_Memory_StoreByte(DST, SRC);             REG_PC += Opf_Address;
#define DO_OP_STOREW_ABSOLUTE(DST, SRC)   Cpu_Memory_StoreWord(DST, SRC);             REG_PC += Opf_Address;

#define DO_OP_CALL()                      Cpu_Call_Always(Opf_Address, REG_WORD);
#define DO_OP_CALL_EQ()                   Cpu_Call_Conditional(FL_Z == 1, Opf_Address, REG_WORD);
#define DO_OP_CALL_NEQ()                  Cpu_Call_Conditional(FL_Z == 0, Opf_Address, REG_WORD);
#define DO_OP_CALL_GT()                   Cpu_Call_Conditional(FL_G == 1, Opf_Address, REG_WORD);
#define DO_OP_CALL_LT()                   Cpu_Call_Conditional(FL_G == 0 && FL_Z == 0, Opf_Address, REG_WORD);
#define DO_OP_CALL_Z()                    Cpu_Call_Conditional(FL_Z == 1, Opf_Address, REG_WORD);
#define DO_OP_CALL_NOT_Z()                Cpu_Call_Conditional(FL_Z == 0, Opf_Address, REG_WORD);

#define DO_OP_RETURN()                    Cpu_Call_Return();

#define DO_OP_COPY(DST, SRC)              DST = SRC;                         REG_PC += Opf_Single;
#define DO_OP_SET(DST, SRC)               DST = SRC;                         REG_PC += Opf_Byte;
#define DO_OP_SETW(DST, SRC)              DST = SRC;                         REG_PC += Opf_Word;

#define DO_OP_ADD(R0, R1)                 R0 = FlagsOpB(R0 + R1);             REG_PC += Opf_Single;
#define DO_OP_ADD_IMM(R0)                 R0 = FlagsOpB(R0 + REG_IMM);        REG_PC += Opf_Byte;
#define DO_OP_ADDW(R0, R1)                R0 = FlagsOpW(R0 + R1);            REG_PC += Opf_Single;
#define DO_OP_ADDW_IMM(R0)                R0 = FlagsOpW(R0 + REG_WORD);      REG_PC += Opf_Word;

#define DO_OP_SUB(R0, R1)                 R0 = FlagsOpB(R0 - R1);             REG_PC += Opf_Single;
#define DO_OP_SUB_IMM(R0)                 R0 = FlagsOpB(R0 - REG_IMM);        REG_PC += Opf_Byte;
#define DO_OP_SUBW(R0, R1)                R0 = FlagsOpW(R0 - R1);            REG_PC += Opf_Single;
#define DO_OP_SUBW_IMM(R0)                R0 = FlagsOpW(R0 - REG_WORD);      REG_PC += Opf_Word;

#define DO_OP_MUL(R0, R1)           R0 = FlagsOpB(R0 * R1);             REG_PC += Opf_Single;
#define DO_OP_MUL_IMM(R0)           R0 = FlagsOpB(R0 * REG_IMM);        REG_PC += Opf_Byte;
#define DO_OP_MULW(R0, R1)          R0 = FlagsOpW(R0 * R1);            REG_PC += Opf_Single;
#define DO_OP_MULW_IMM(R0)          R0 = FlagsOpW(R0 * REG_WORD);      REG_PC += Opf_Word;

#define DO_OP_DIV(R0, R1)           if (R1 == 0) { Cpu_Halt(HALT_DIVISION_BY_ZERO); } else { R0 =  FlagsOpB(R0 / R1); } REG_PC += Opf_Single;
#define DO_OP_DIV_IMM(R0)           R0 = FlagsOpB(R0 / REG_IMM);        REG_PC += Opf_Byte;
#define DO_OP_DIVW(R0, R1)          R0 = FlagsOpW(R0 / R1);            REG_PC += Opf_Single;
#define DO_OP_DIVW_IMM(R0)          R0 = FlagsOpW(R0 / REG_WORD);      REG_PC += Opf_Word;

#define DO_OP_MOD(R0, R1)           R0 = FlagsOpB(R0 % R1);             REG_PC += Opf_Single;
#define DO_OP_MOD_IMM(R0)           R0 = FlagsOpB(R0 % REG_IMM);        REG_PC += Opf_Byte;
#define DO_OP_MODW(R0, R1)          R0 = FlagsOpW(R0 % R1);            REG_PC += Opf_Single;
#define DO_OP_MODW_IMM(R0)          R0 = FlagsOpW(R0 % REG_WORD);      REG_PC += Opf_Word;

#define DO_OP_NEG(R0)               R0 = -R0;                          REG_PC += Opf_Single;

#define DO_OP_INC(R0)               R0 = FlagsOpB(R0 + 1);              REG_PC += Opf_Single;
#define DO_OP_DEC(R0)               R0 = FlagsOpB(R0 - 1);              REG_PC += Opf_Single;
#define DO_OP_INCW(R0)              R0 = FlagsOpW(R0 + 1);             REG_PC += Opf_Single;
#define DO_OP_DECW(R0)              R0 = FlagsOpW(R0 - 1);             REG_PC += Opf_Single;

#define DO_OP_CMP(R0, R1)           Cpu_CompareByte(R0, R1);                   REG_PC += Opf_Single;
#define DO_OP_CMP_IMM(R0)           Cpu_CompareByte(R0, REG_IMM);              REG_PC += Opf_Byte;
#define DO_OP_CMP_IMMW(R0)          Cpu_CompareWord(R0, REG_WORD);            REG_PC += Opf_Word;
#define DO_OP_CMP_SELF(R0)          FlagsOpB(R0);                       REG_PC += Opf_Single;

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

#define DO_OP_JMP(R0)               Cpu_Jump_Always(R0);
#define DO_OP_JMP_REL()             Cpu_JumpRel_Always(REG_IMM);
#define DO_OP_JMP_EQ()              Cpu_Jump_Conditional(FL_Z == 1, data.w, Opf_Address);
#define DO_OP_JMP_NEQ()             Cpu_Jump_Conditional(FL_Z == 0, data.w, Opf_Address);
#define DO_OP_JMP_GT()              Cpu_Jump_Conditional(FL_G == 1, data.w, Opf_Address);
#define DO_OP_JMP_LT()              Cpu_Jump_Conditional(FL_G == 0 && FL_Z == 0, data.w, Opf_Address);
#define DO_OP_JMP_Z()               Cpu_Jump_Conditional(FL_Z == 1, data.w, Opf_Address);
#define DO_OP_JMP_NOT_Z()           Cpu_Jump_Conditional(FL_Z == 0, data.w, Opf_Address);
#define DO_OP_JMP_CARRY()           Cpu_Jump_Conditional(FL_C == 1, data.w, Opf_Address);

#define DO_OP_JMP_REL_EQ()          Cpu_JumpRel_Conditional(FL_Z == 1, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_NEQ()         Cpu_JumpRel_Conditional(FL_Z == 0, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_GT()          Cpu_JumpRel_Conditional(FL_G == 1, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_LT()          Cpu_JumpRel_Conditional(FL_G == 0 && FL_Z == 0, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_Z()           Cpu_JumpRel_Conditional(FL_Z == 1, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_NOT_Z()       Cpu_JumpRel_Conditional(FL_Z == 0, REG_IMM, Opf_Byte);
#define DO_OP_INT()                 Cpu_Interrupt_Emit(REG_IMM);              REG_PC += Opf_Byte;
#define DO_OP_RESUME()              Cpu_Interrupt_Resume()                  

#define DO_OP_SET_PC_OFFSET()       REG_PC += Opf_Address;
#define DO_OP_SET_PC_ROFFSET()      cpu.pc.w = 0;

#define DO_OP_DEBUG_REGISTER()      Cpu_Debug_Register(REG_IMM);   REG_PC += Opf_Byte;
#define DO_OP_DEBUG_ADDRESS()       Cpu_Debug_Address(REG_WORD);    REG_PC += Opf_Word;
#define DO_OP_DEBUG_BREAKPOINT()    Cpu_Debug_Breakpoint(); REG_PC += Opf_Single;
#define DO_OP_DEBUG_NOTE()          Cpu_Debug_Note(REG_WORD); REG_PC += Opf_Word;
#define DO_OP_DEBUG_OPTION()        Cpu_Debug_Option(REG_IMM); REG_PC += Opf_Byte;

#define DO_OP_JMP_BRANCH(R0)        Cpu_Jump_Branch(R0, REG_WORD);
#define DO_OP_CALL_BRANCH(R0)       Cpu_Call_Branch(R0, REG_WORD, Opf_Address);

#define DO_OP_STOP_INTERRUPTS()     Cpu_Interrupt_SetEnabled(false); REG_PC += Opf_Single;
#define DO_OP_RESUME_INTERRUPTS()   Cpu_Interrupt_SetEnabled(true);  REG_PC += Opf_Single;

enum OpFormat
{
  Opf_Single     = 1,
  Opf_Byte       = 2,
  Opf_Address    = 3,
  Opf_Word       = 3,
};

enum PcModifier
{
  Pcm_Length  = 1,
  Pcm_Set     = 2
};

#ifdef OP
#undef OP
#endif
#define OP(OP, OPERANDS, FORMAT, PCMOD, TIME, CODE) Op_##OP##_##OPERANDS,

enum Instructions
{
  #include "dx8_Cpu_Opcodes.inc"
  Op_COUNT
};

// Power/Reset Routines


void Cpu_Setup()
{
#define CPU_Version "DX8-CPU-1"

  DX8_INFOF("Cpu %s", CPU_Version);
  DX8_INFOF("%i Opcodes", Op_COUNT);
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
  cpu.stack = rand() & 0xFF;
  cpu.pcStack = rand() & 0xFF;
  cpu.pc.lo = rand() & 0xFF;
  cpu.pc.hi = rand() & 0xFF;
  cpu.flags._data = rand() & 0xFF;

  // Cpu is halted.
  cpu.halt = true;

  DX8_INFOF("Cpu Turned On.");
}
void Cpu_Reset()
{
  REG_A = rand() & 0xFF;
  REG_X = rand() & 0xFF;
  REG_Y = rand() & 0xFF;
  REG_Z = rand() & 0xFF;
  REG_W = rand() & 0xFF;

  for(int i=0;i < 8;i++)
    cpu.interruptMask[i] = 0;

  cpu.interruptsStopped = false;
  cpu.interrupt = 0;
  cpu.stack = 0;
  cpu.pcStack = 0;
  cpu.flags._data = 0;
  cpu.halt = false;
  cpu.pc.lo = Mmu_Get(INTVEC_ADDR_RESET  ); // Get Reset from IVT
  cpu.pc.hi = Mmu_Get(INTVEC_ADDR_RESET+1);
  cpu.interruptsStopped = true;

  DX8_INFOF("Cpu Reset.");
  DX8_INFOF("Reset Address=$%04X", cpu.pc.w);
}

// Halt routines

void Cpu_Halt(Byte id)
{
  cpu.halt = 1;
  DX8_LOGF("*** CPU HALTED ***");
  switch(id)
  {
    case HALT_UNKNOWN_OPCODE:
      DX8_LOGF(" Unknown Opcode ");
    break;
    case HALT_DIVISION_BY_ZERO:
      DX8_LOGF(" Division by Zero ");
    break;
    case HALT_STACK_OVERFLOW:
      DX8_LOGF(" Stack overflow ");
    break;
    case HALT_PCSTACK_OVERFLOW:
      DX8_LOGF(" Program Counter Stack overflow ");
      break;
    case HALT_STACK_UNDERFLOW:
      DX8_LOGF(" Stack underflow ");
    break;
    case HALT_PCSTACK_UNDERFLOW:
      DX8_LOGF(" Program Counter Stack underflow ");
      break;
    case HALT_BLOCKED_INTERRUPT:
      DX8_LOGF(" Interrupt being fired whilst an interrupt is happening");
    break;
    case HALT_BREAKPOINT:
      DX8_LOGF(" Breakpoint");
    break;
  }
  Cpu_Print();
}

inline Byte FlagsOpB(int value)
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

// Interrupts
void Cpu_Interrupt(Byte name)
{
  if (cpu.halt)
    return;

  if (name >= 8)
    return;

  cpu.interruptMask[name] = true;
}

void Cpu_StartInterrupt(Byte name);

void Cpu_Check_Interrupts()
{
  if (cpu.interruptsStopped == true)
    return;

  if (cpu.interrupt == 0)
  {
    for(int i=0;i < 8;i++)
    {
      if (cpu.interruptMask[i])
      {
        cpu.interrupt = i;
        cpu.interruptMask[i] = false;

        Cpu_StartInterrupt(i);
        break;
      }
    }
  }
}

void Cpu_Interrupt_SetEnabled(bool isEnabled)
{
  cpu.interruptsStopped = !isEnabled;
}

void Cpu_StartInterrupt(Byte name)
{
  if (cpu.halt)
    return;

  // Grab interrupt address
  Word interruptAddress = Mmu_GetWord(0x02 * name);

  if (interruptAddress == 0)
  {
    DX8_LOGF("Cannot do interrupt. No address for $%2X", name);
    return;
  }

  PushRegisters();
  Cpu_PcStack_Push(REG_PC);

 // interruptAddress = Mmu_Get((name * 2));
 // interruptAddress |= ((Word) Mmu_Get((name * 2) + 1)) << 8;

  cpu.interrupt = name;
  //@@@ cpu.pc.w = interruptAddress;
  Cpu_Jump_Always(interruptAddress);

  if (name == INTVEC_HALT)
  {
    DX8_LOGF("HALT INTERRUPT!! $%4X", interruptAddress);
    //cpu.halt = 1;
  }

  REG_A = 0;
  REG_X = 0;
  REG_Y = 0;
  REG_Z = 0;
  REG_W = 0;
  cpu.flags._data = 0;

}

void Cpu_Interrupt_Resume()
{
  if (cpu.halt)
    return;

  if (cpu.interrupt == 0)
  {
    DX8_LOGF("Interupt not happening. Already interrupted for $%2X!!!", cpu.interrupt);
    Cpu_Halt(HALT_BLOCKED_INTERRUPT);
    return;
  }

  int wasInterrupt = cpu.interrupt;

  cpu.interrupt = 0;

  REG_PC = Cpu_PcStack_Pop();
  PopRegisters();
}

bool IsInterrupt()
{
  return cpu.interrupt != 0;
}

void Gpu_Interrupt(Byte name);
void Gpu_On();
void Floppy_Interrupt();

inline void Cpu_Interrupt_Emit(Byte name)
{
  DX8_LOGF("Interrupt $%2X", name);
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
  cpu.stack = value;
}

Byte Cpu_GetHalt()
{
  return cpu.halt;
}

void Cpu_SetHalt(Byte value)
{
  DX8_LOGF("Cpu_SetHalt = %i", value);
  cpu.halt = value != 0 ? true : false;
}

// CPU Stepping

#define QUOTE(name) #name
#define STR(macro) QUOTE(macro)
#undef OP
#define OP(OP, A,B,C,D,E)  #OP "_" #A,

const char* OpcodeStr[] = {
#include "dx8_Cpu_Opcodes.inc"
};

int Cpu_Step()
{
  if (cpu.halt)
    return 4;

  Word pc = REG_PC;

  //if (cpu.interrupt != 0)
  //{
  //   pc += cpu.pcOffset.w;
  //}

  Byte opcode = Mmu_Get(pc);
  Data data;
  data.lo = Mmu_Get(pc + 1);
  data.hi = Mmu_Get(pc + 2);

 // DX8_LOGF("![$%4X] ($%4X) OP=%2X:%s LO=$%2X HI=$%2X", REG_PC, (Word) (cpu.pc.w - cpu.pcOffset.w),  opcode, OpcodeStr[opcode], data.lo, data.hi);

  if (DebugLog)
  {
    DX8_LOGF("[$%4X:$%4X] $%2X:%-12s LO=$%2X HI=$%2X", cpu.pc.w, pc, opcode, OpcodeStr[opcode], data.lo, data.hi);
  }

#undef OP
#define OP(OP, OPERANDS, FORMAT, PCMOD, TIME, CODE) case Op_##OP##_##OPERANDS: CODE; break; // TIME;

  cpu.lastOpcode = opcode;
  cpu.lastOperand = data.w;

#if DEBUG_HISTORY == 1
  PushOpcodeHistory(cpu.pc.w, cpu.lastOpcode, cpu.lastOperand);
#endif

  switch (opcode)
  {
#include "dx8_Cpu_Opcodes.inc"
  default:
    Cpu_Halt(HALT_UNKNOWN_OPCODE);
    break;
  }

  Cpu_Check_Interrupts();

  return 1;
}


#endif

