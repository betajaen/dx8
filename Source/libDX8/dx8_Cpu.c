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

#define DEBUG_HISTORY      1
#define MAX_OPCODE_HISTORY 512

#define QUOTE(name) #name
#define STR(macro) QUOTE(macro)

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

#define DO_OP_NOP()                                                          REG_PC += Opf_Single;

#define DO_OP_PUSH(R0)                    Cpu_Stack_PushByte(R0);                   REG_PC += Opf_Single;
#define DO_OP_PUSHW(R0)                   Cpu_Stack_PushWord(R0);                  REG_PC += Opf_Single;
#define DO_OP_PUSHF()                     Cpu_Stack_PushFlags();                REG_PC += Opf_Single;
#define DO_OP_PUSHIMM()                   Cpu_Stack_PushByte(REG_IMM);              REG_PC += Opf_Byte;
#define DO_OP_PUSHIMM_W()                 Cpu_Stack_PushWord(REG_WORD);            REG_PC += Opf_Word;
#define DO_OP_PUSHPC()                    Cpu_PcStack_Push(0);                  REG_PC += Opf_Single;
#define DO_OP_PUSHPC_R(R0)                Cpu_PcStack_Push(R0);                 REG_PC += Opf_Single;
#define DO_OP_PUSHPC_IMM()                Cpu_PcStack_Push(REG_IMM);            REG_PC += Opf_Byte;

#define DO_OP_POP(R0)                     R0 = Cpu_Stack_PopByte();               REG_PC += Opf_Single;
#define DO_OP_POPW(R0)                    R0 = Cpu_Stack_PopWord();              REG_PC += Opf_Single;
#define DO_OP_POPF()                      Cpu_Stack_PopFlags();               REG_PC += Opf_Single;
#define DO_OP_POPPC()                     Cpu_PcStack_Pop();

#define DO_OP_LOAD_INDIRECT(DST, SRC)     DST = FlagsOp(Cpu_Memory_LoadByte(SRC));         REG_PC += Opf_Single;
#define DO_OP_LOAD_ABSOLUTE(DST, SRC)     DST = FlagsOp(Cpu_Memory_LoadByte(SRC));         REG_PC += Opf_Address;
#define DO_OP_LOADW_ABSOLUTE(DST, SRC)    DST = FlagsOpW(Cpu_Memory_LoadWord(SRC));        REG_PC += Opf_Address;

#define DO_OP_STORE_INDIRECT(DST, SRC)    Cpu_Memory_StoreByte(DST, SRC);           REG_PC += Opf_Single;
#define DO_OP_STORE_ABSOLUTE(DST, SRC)    Cpu_Memory_StoreByte(DST, SRC);           REG_PC += Opf_Address;
#define DO_OP_STOREW_ABSOLUTE(DST, SRC)   Cpu_Memory_StoreWord(DST, SRC);          REG_PC += Opf_Address;

#define DO_OP_CALL()                Cpu_Call_Always(Opf_Address, REG_WORD);
#define DO_OP_CALL_EQ()             Cpu_Call_Conditional(FL_Z == 1, Opf_Address, REG_WORD);
#define DO_OP_CALL_NEQ()            Cpu_Call_Conditional(FL_Z == 0, Opf_Address, REG_WORD);
#define DO_OP_CALL_GT()             Cpu_Call_Conditional(FL_G == 1, Opf_Address, REG_WORD);
#define DO_OP_CALL_LT()             Cpu_Call_Conditional(FL_G == 0 && FL_Z == 0, Opf_Address, REG_WORD);
#define DO_OP_CALL_Z()              Cpu_Call_Conditional(FL_Z == 1, Opf_Address, REG_WORD);
#define DO_OP_CALL_NOT_Z()          Cpu_Call_Conditional(FL_Z == 0, Opf_Address, REG_WORD);

#define DO_OP_RETURN()              Cpu_Return(cpu);

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

#define DO_OP_DIV(R0, R1)           if (R1 == 0) { Cpu_Halt(HALT_DIVISION_BY_ZERO); } else { R0 =  FlagsOp(R0 / R1); } REG_PC += Opf_Single;
#define DO_OP_DIV_IMM(R0)           R0 = FlagsOp(R0 / REG_IMM);        REG_PC += Opf_Byte;
#define DO_OP_DIVW(R0, R1)          R0 = FlagsOpW(R0 / R1);            REG_PC += Opf_Single;
#define DO_OP_DIVW_IMM(R0)          R0 = FlagsOpW(R0 / REG_WORD);      REG_PC += Opf_Word;

#define DO_OP_MOD(R0, R1)           R0 = FlagsOp(R0 % R1);             REG_PC += Opf_Single;
#define DO_OP_MOD_IMM(R0)           R0 = FlagsOp(R0 % REG_IMM);        REG_PC += Opf_Byte;
#define DO_OP_MODW(R0, R1)          R0 = FlagsOpW(R0 % R1);            REG_PC += Opf_Single;
#define DO_OP_MODW_IMM(R0)          R0 = FlagsOpW(R0 % REG_WORD);      REG_PC += Opf_Word;

#define DO_OP_NEG(R0)               R0 = -R0;                          REG_PC += Opf_Single;

#define DO_OP_INC(R0)               R0 = FlagsOp(R0 + 1);              REG_PC += Opf_Single;
#define DO_OP_DEC(R0)               R0 = FlagsOp(R0 - 1);              REG_PC += Opf_Single;
#define DO_OP_INCW(R0)              R0 = FlagsOpW(R0 + 1);             REG_PC += Opf_Single;
#define DO_OP_DECW(R0)              R0 = FlagsOpW(R0 - 1);             REG_PC += Opf_Single;

#define DO_OP_CMP(R0, R1)           Cpu_CompareByte(R0, R1);                   REG_PC += Opf_Single;
#define DO_OP_CMP_IMM(R0)           Cpu_CompareByte(R0, REG_IMM);              REG_PC += Opf_Byte;
#define DO_OP_CMP_IMMW(R0)          Cpu_CompareWord(R0, REG_WORD);            REG_PC += Opf_Word;
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

#define DO_OP_JMP()                 Cpu_Pc_Set(REG_WORD);
#define DO_OP_JMP_ADD(LO, HI)       Cpu_Pc_SetAdd(REG_WORD, LO, HI);
#define DO_OP_JMP_ABS(LO, HI)       Cpu_Pc_SetHiLo(LO, HI);
#define DO_OP_JMP_REL()             Cpu_Pc_SetRelative(REG_IMM);
#define DO_OP_JMP_EQ()              Cpu_Pc_SetCond(FL_Z == 1, data.w, Opf_Address);
#define DO_OP_JMP_NEQ()             Cpu_Pc_SetCond(FL_Z == 0, data.w, Opf_Address);
#define DO_OP_JMP_GT()              Cpu_Pc_SetCond(FL_G == 1, data.w, Opf_Address);
#define DO_OP_JMP_LT()              Cpu_Pc_SetCond(FL_G == 0 && FL_Z == 0, data.w, Opf_Address);
#define DO_OP_JMP_Z()               Cpu_Pc_SetCond(FL_Z == 1, data.w, Opf_Address);
#define DO_OP_JMP_NOT_Z()           Cpu_Pc_SetCond(FL_Z == 0, data.w, Opf_Address);
#define DO_OP_JMP_CARRY()           Cpu_Pc_SetCond(FL_C == 1, data.w, Opf_Address);

#define DO_OP_JMP_REL_EQ()          Cpu_Pc_SetRelativeCond(FL_Z == 1, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_NEQ()         Cpu_Pc_SetRelativeCond(FL_Z == 0, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_GT()          Cpu_Pc_SetRelativeCond(FL_G == 1, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_LT()          Cpu_Pc_SetRelativeCond(FL_G == 0 && FL_Z == 0, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_Z()           Cpu_Pc_SetRelativeCond(FL_Z == 1, REG_IMM, Opf_Byte);
#define DO_OP_JMP_REL_NOT_Z()       Cpu_Pc_SetRelativeCond(FL_Z == 0, REG_IMM, Opf_Byte);
#define DO_OP_INT()                 Cpu_Interrupt_Emit(REG_IMM);              REG_PC += Opf_Byte;
#define DO_OP_RESUME()              Cpu_Interrupt_Resume()                  

#define DO_OP_SET_PC_OFFSET()       REG_PC += Opf_Address;
#define DO_OP_SET_PC_ROFFSET()      cpu.pc.w = 0;

#define DO_OP_DEBUG_REGISTER()      Cpu_Debug_Register(REG_IMM);   REG_PC += Opf_Byte;
#define DO_OP_DEBUG_ADDRESS()       Cpu_Debug_Address(REG_WORD);    REG_PC += Opf_Word;
#define DO_OP_DEBUG_BREAKPOINT()    Cpu_Debug_Breakpoint(); REG_PC += Opf_Single;
#define DO_OP_DEBUG_NOTE()          Cpu_Debug_Note(REG_WORD); REG_PC += Opf_Word;
#define DO_OP_DEBUG_OPTION()        Cpu_Debug_Option(REG_IMM); REG_PC += Opf_Byte;

#define DO_OP_JMP_BRANCH(R0)        Cpu_Pc_BranchJump(R0, REG_WORD);
#define DO_OP_CALL_BRANCH(R0)       Cpu_Pc_BranchCall(R0, REG_WORD, Opf_Address);

#define DO_OP_STOP_INTERRUPTS()     Cpu_Interrupt_SetEnabled(false); REG_PC += Opf_Single;
#define DO_OP_RESUME_INTERRUPTS()   Cpu_Interrupt_SetEnabled(true);  REG_PC += Opf_Single;


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

void Cpu_Halt(Byte name);
void Cpu_TurnOn();

typedef struct {
  Word pc;
  Byte opcode;
  Word operand;
} OpcodeHistory;

OpcodeHistory sDebugHistory[MAX_OPCODE_HISTORY];
Word sDebugHistoryIdx = 0;

void PushOpcodeHistory(Word pc, Byte opcode, Word operand)
{
  OpcodeHistory h;
  h.pc = pc;
  h.opcode = opcode;
  h.operand = operand;

  sDebugHistory[sDebugHistoryIdx++] = h;

  if (sDebugHistoryIdx == MAX_OPCODE_HISTORY)
    sDebugHistoryIdx = 0;
}

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

// Debug Routines

#if defined OP
#undef OP
#endif
#define OP(OP, A,B,C,D)  STR(OP),

const char* kOpcodesStr[] = {
#include "dx8_Cpu_Opcodes.inc"
};

void Cpu_Print()
{
  DX8_LOGF("Cpu State");
  DX8_LOGF("CPU PC = $%04X", cpu.pc.w);
  DX8_LOGF("CPU A = $%04X", cpu.a);
  DX8_LOGF("CPU X = $%02X", cpu.I.x);
  DX8_LOGF("CPU Y = $%02X", cpu.I.y);
  DX8_LOGF("CPU I = $%04X", cpu.I.I);
  DX8_LOGF("CPU Z = $%02X", cpu.J.z);
  DX8_LOGF("CPU W = $%02X", cpu.J.w);
  DX8_LOGF("CPU J = $%04X", cpu.J.J);
  DX8_LOGF("CPU Stack = $%02X", cpu.stack);
  DX8_LOGF("CPU Pc Stack = $%02X", cpu.pcStack);
  DX8_LOGF("CPU Interrupt = $%02X", cpu.interrupt);
  DX8_LOGF("CPU Interrupts Enabled = %s", cpu.interruptsStopped ? "false" : "true");

  char interruptMask[9];

  for(int i=0;i < 8;i++)
  {
    interruptMask[i] = '0' + cpu.interruptMask[i];
  }
  
  interruptMask[8] = '\0';

  DX8_LOGF("CPU Interrupts Mask = %sb", interruptMask);

  DX8_LOGF("CPU Opcode     = '%s' $%02X", kOpcodesStr[cpu.lastOpcode], cpu.lastOpcode);
  DX8_LOGF("CPU Lo Operand = $%02X", LO_BYTE(cpu.lastOperand));
  DX8_LOGF("CPU Hi Operand = $%02X", HI_BYTE(cpu.lastOperand));
  DX8_LOGF("CPU Ad Operand = $%04X", cpu.lastOperand);

  #if DEBUG_HISTORY == 1
  int idx = sDebugHistoryIdx - 1;

  for (int i = 0; i < MAX_OPCODE_HISTORY; i++)
  {
    if (idx < 0)
      idx = MAX_OPCODE_HISTORY - 1;

    OpcodeHistory h = sDebugHistory[idx];
    DX8_LOGF("[$%04X] %02X %02X %02X %s", h.pc, h.opcode, LO_BYTE(h.operand), HI_BYTE(h.operand), kOpcodesStr[h.opcode]);
    idx--;
  }
  #endif

}

#define DBG_LOG(NAME, EXTRA_TEXT, ...)\
  DX8_DEBUGF(NAME " [$%4X]" EXTRA_TEXT, cpu.pc.w, __VA_ARGS__)
#define DBG_LOG_NT(NAME)\
  DX8_DEBUGF("%s [$%4X]", NAME, cpu.pc.w)

void Cpu_Debug_Register(Byte byte)
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
    case 'C':
      DBG_LOG("DBG-CND", "Zero=%i Negative=%i Greater=%i", cpu.flags.bZero, cpu.flags.bNegative, cpu.flags.bGreater);
    break;
    default: DBG_LOG_NT("?"); break;
  }
}

void Cpu_Debug_Address(Word address)
{
  Byte b = Mmu_Get(address);
  DBG_LOG("DBG-ADDR", "$%4X = $%2X/%i", address, b, b);
}

void Cpu_Debug_Note(Word note)
{
  Byte* np = (Byte*) &note;
  Byte m[3];
  m[0] = np[0];
  m[1] = np[1];
  m[2] = 0;
  DBG_LOG("DBG-NOTE", "%s", m);
}

void Cpu_Debug_Breakpoint()
{
  Cpu_Halt(HALT_BREAKPOINT);
}

void Mmu_SetDboV(bool v);

void Cpu_Debug_Option(Byte option)
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

// Halt routines

inline void Cpu_Halt(Byte id)
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


// Pc Routines
inline void Cpu_Pc_Set(Word address)
{
  cpu.pc.w = address;
}

inline void Pc_Add(int address)
{
  Cpu_Pc_Set(cpu.pc.w + address);
}

inline void Pc_SetLoHi(Byte lo, Byte hi)
{
  Word w = lo;
  w |= ((Word) hi) << 8;
  Cpu_Pc_Set(w);
}

// Stack Routines

inline void Stack_Print()
{
  DX8_LOGF("Stack = %i", cpu.stack);
  for (int i = 0; i < 16; i++)
  {
    DX8_LOGF("[%i:$%2X] $%2X", i, i, Stack_Get(i));
  }
}

inline void Cpu_Stack_PushByte(Byte value)
{
  if (cpu.stack == 0xFF)
  {
    Cpu_Halt(HALT_STACK_OVERFLOW);
    return;
  }
  Stack_Set(cpu.stack, value);
  ++cpu.stack;
 // DX8_LOGF("Pushed %02X to stack. Stack size is %i", value, cpu.stack);
}

inline void Cpu_Stack_PushWord(Word value)
{
  Cpu_Stack_PushByte(LO_BYTE(value));
  Cpu_Stack_PushByte(HI_BYTE(value));
}

inline Byte Cpu_Stack_PopByte()
{
  if (cpu.stack == 0)
  {
    Cpu_Halt(HALT_STACK_UNDERFLOW);
    return 0;
  }
  --cpu.stack;
  Byte value = Stack_Get(cpu.stack);
 // DX8_LOGF("Popped %02X from stack. Stack size is %i", value, cpu.stack);
  return value;
}

inline Word Cpu_Stack_PopWord()
{
  Word w;
  w = Cpu_Stack_PopByte() * 256;
  w += Cpu_Stack_PopByte();
  return w;
}

inline void Cpu_Stack_PushFlags()
{
  Cpu_Stack_PushByte(cpu.flags._data);
}

inline void Cpu_Stack_PopFlags()
{
  cpu.flags._data = Cpu_Stack_PopByte(); 
}

inline void Cpu_PcStack_Push(Word address)
{
  if (cpu.pcStack == 0xFF)
  {
    Cpu_Halt(HALT_PCSTACK_OVERFLOW);
    return;
  }

  PcStack_Set((cpu.pcStack * 2) + 0, LO_BYTE(address));
  PcStack_Set((cpu.pcStack * 2) + 1, HI_BYTE(address));

  ++cpu.pcStack;
}

inline Word Cpu_PcStack_Pop()
{
  if (cpu.pcStack == 0)
  {
    Cpu_Halt(HALT_PCSTACK_UNDERFLOW);
    return 0;
  }
  --cpu.pcStack;

  Word pc;

  pc = PcStack_Get((cpu.pcStack * 2) + 0);
  pc += PcStack_Get((cpu.pcStack * 2) + 1) * 256;

  return pc;
}

inline void PushRegisters()
{
  Cpu_Stack_PushByte(REG_X);
  Cpu_Stack_PushByte(REG_Y);
  Cpu_Stack_PushByte(REG_Z);
  Cpu_Stack_PushByte(REG_W);
  Cpu_Stack_PushByte(REG_A);
  Cpu_Stack_PushByte(cpu.flags._data);
}

inline void PopRegisters()
{
  cpu.flags._data = Cpu_Stack_PopByte();
  REG_A = Cpu_Stack_PopByte();
  REG_W = Cpu_Stack_PopByte();
  REG_Z = Cpu_Stack_PopByte();
  REG_Y = Cpu_Stack_PopByte();
  REG_X = Cpu_Stack_PopByte();
}

// Opcodes

inline void Cpu_Call_Always(Byte lo_offset, Word callAddress)
{
  Word pc = cpu.pc.w + lo_offset;

  Cpu_PcStack_Push(pc);
  // REG_PC = callAddress;
  Cpu_Pc_Set(callAddress);
}

inline void Cpu_Call_Conditional(bool cond, Byte lo_offset, Word callAddress)
{
  if (cond)
  {
    Cpu_Call_Always(lo_offset, callAddress);
  }
  else
  {
    //@@@ cpu.pc.w = ifFalse;
    Pc_Add(lo_offset);
  }
}

inline void Cpu_Pc_BranchCall(Byte value, Word tableAddress, Byte lo_offset)
{
  Word address = Mmu_GetWord(tableAddress + ((Word)value) * 2);
  //DX8_LOGF("***CALL*** Address=$%4X, TableAddress=$%4X, Value=$%2X", address, tableAddress, value);
  Cpu_Call_Always(lo_offset, address);
}


inline void Cpu_Return()
{
  cpu.pc.w = Cpu_PcStack_Pop();
}

inline Byte Cpu_Memory_LoadByte(Word address)
{
  return Mmu_Get(address);
}

inline Word Cpu_Memory_LoadWord(Word address)
{
  Byte lo, hi;
  lo = Cpu_Memory_LoadByte(address);
  hi = Cpu_Memory_LoadByte(address+1);

  return MAKE_WORD(lo, hi);
}

inline void Cpu_Memory_StoreByte(Word address, Byte value)
{
  Mmu_Set(address, value);
}

inline void Cpu_Memory_StoreWord(Word address, Word value)
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

inline void Cpu_CompareByte(Byte lhs, Byte rhs)
{
  cpu.flags.bCarry = (rhs >= lhs);
  int val = rhs - lhs;
  cpu.flags.bZero     = (val == 0);
  cpu.flags.bNegative = (val < 0);
  cpu.flags.bGreater  = lhs > rhs;
}

inline void Cpu_CompareWord(Word lhs, Word rhs)
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

  // DX8_LOGF("CMPBIT >> Val=$%2X Bit=$%2X => V=$%2X, $%2X", val, bit, v, cpu.flags.bZero);
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

inline void Cpu_Pc_SetAdd(Word addr, Word lo, Word hi)
{
  //@@@cpu.pc.w = (addr + lo + hi * 256) & 0xFFFF;
  Cpu_Pc_Set((addr + lo + hi * 256) & 0xFFFF);
}

inline void Cpu_Pc_SetHiLo(Word lo, Word hi)
{
  //Word lastPc = cpu.pc.w;
  //@@@ cpu.pc.w = (lo + hi * 256) & 0xFFFF;
  Cpu_Pc_Set((lo + hi * 256) & 0xFFFF);
  //DX8_LOGF("JMP hi= %2X lo=%2X pc  from %4X  to %4X", hi, lo, lastPc, cpu.pc.w);
}

inline void Cpu_Pc_BranchJump(Byte value, Word tableAddress)
{
  Word address = Mmu_GetWord(tableAddress + ((Word)value) * 2);
  //DX8_LOGF("***JUMP*** Address=$%4X, TableAddress=$%4X, Value=$%2X", address, tableAddress, value);
  Cpu_Pc_Set(address);
}

inline void Cpu_Pc_SetRelative(Byte signedValue)
{
  int relAddr = (char) signedValue;
  Pc_Add(relAddr);
}

inline void Cpu_Pc_SetCond(bool cond, Word absIfTrue, Byte relIfFalse)
{
  if (cond)
  {
    //@@@ cpu.pc.w = ifTrue;
    Cpu_Pc_Set(absIfTrue);
  }
  else
  {
    //@@@ cpu.pc.w = ifFalse;
    Pc_Add(relIfFalse);
  }
}

inline void Cpu_Pc_SetRelativeCond(bool cond, Byte relIfTrue, Byte relIfFalse)
{
  if (cond)
  {
    Cpu_Pc_SetRelative(relIfTrue);
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
    Cpu_Call_Always(0, ifTrue);
  }
  else
  {
    //@@@ cpu.pc.w = ifFalse;
    Cpu_Pc_Set(ifFalse);
  }
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
  Cpu_Pc_Set(interruptAddress);

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
#define OP(OP, A,B,C,D)  #OP "_" #A,

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
#define OP(OP, OPERANDS, FORMAT, TIME, CODE) case Op_##OP##_##OPERANDS: CODE; break; // TIME;

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
