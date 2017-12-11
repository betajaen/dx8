#include "dx8.h"
#include <stdio.h>
#include <string.h>

bool DebugLog = false;

#if defined OP
#undef OP
#endif
#define OP(OP, A,B,C,D,E)  STR(OP),

const char* kOpcodesStr[] = {
#include "dx8_Cpu_Opcodes.inc"
};

DebuggedInstruction sDebugInstruction;
DebuggedInstruction sDebugHistory[DX8_DEBUG_INSTRUCTIONS_HISTORY];
Word sDebugHistoryIdx = 0;

void Cpu_Debug_PushDebugInstruction(h)
{
  sDebugHistory[sDebugHistoryIdx++] = sDebugInstruction;

  if (sDebugHistoryIdx == DX8_DEBUG_INSTRUCTIONS_HISTORY)
    sDebugHistoryIdx = 0;
}

#if defined(DX8_CPU_NO_INLINING)

void Cpu_Halt(Byte name);

#define DBG_LOG(NAME, EXTRA_TEXT, ...)\
  DX8_DEBUGF(NAME " [$%4X]" EXTRA_TEXT, cpu.pc.w, __VA_ARGS__)
#define DBG_LOG_NT(NAME)\
  DX8_DEBUGF("%s [$%4X]", NAME, cpu.pc.w)

void Cpu_Debug_Register(Byte byte)
{
  switch (byte)
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
  Byte* np = (Byte*)&note;
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

int Cpu_FormatInstruction(char* str, Byte opcode, Word imm);

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

  for (int i = 0; i < 8; i++)
  {
    interruptMask[i] = '0' + cpu.interruptMask[i];
  }

  interruptMask[8] = '\0';

  DX8_LOGF("CPU Interrupts Mask = %sb", interruptMask);

  DX8_LOGF("CPU Opcode     = '%s' $%02X", kOpcodesStr[cpu.lastOpcode], cpu.lastOpcode);
  DX8_LOGF("CPU Lo Operand = $%02X", LO_BYTE(cpu.lastOperand));
  DX8_LOGF("CPU Hi Operand = $%02X", HI_BYTE(cpu.lastOperand));
  DX8_LOGF("CPU Ad Operand = $%04X", cpu.lastOperand);

#if DX8_DEBUG_INSTRUCTIONS == 1
  int idx = sDebugHistoryIdx - 1;

  char line[128];

  for (int i = 0; i < DX8_DEBUG_INSTRUCTIONS_HISTORY; i++)
  {
    line[0] = 0;
    char* s = &line[0];

    if (idx < 0)
      idx = DX8_DEBUG_INSTRUCTIONS_HISTORY - 1;

    DebuggedInstruction h = sDebugHistory[idx];

    if (h.length == 1)
    {
      s += sprintf(s, "[$%04X] %02X .. .. ", h.pc, h.opcode);
    }
    else if (h.length == 2)
    {
      s += sprintf(s, "[$%04X] %02X %02X .. ", h.pc, h.opcode, h.operand.lo);
    }
    else if (h.length == 3)
    {
      s += sprintf(s, "[$%04X] %02X %02X %02X ", h.pc, h.opcode, h.operand.lo, h.operand.hi);
    }

    s += Cpu_FormatInstruction(s, h.opcode, h.operand.w);

    if (h.context1Type != 0)
    {
      switch(h.context1Type)
      {
         case CpuCtx_Pc:         s += sprintf(s, " => pc=$%04X", h.context1.w); break;
         case CpuCtx_A:          s += sprintf(s, " => a=$%02X", h.context1.lo); break;
         case CpuCtx_X:          s += sprintf(s, " => x=$%02X", h.context1.lo); break;
         case CpuCtx_Y:          s += sprintf(s, " => y=$%02X", h.context1.lo); break;
         case CpuCtx_Z:          s += sprintf(s, " => z=$%02X", h.context1.lo); break;
         case CpuCtx_W:          s += sprintf(s, " => w=$%02X", h.context1.lo); break;
         case CpuCtx_I:          s += sprintf(s, " => i=$%04X", h.context1.w); break;
         case CpuCtx_J:          s += sprintf(s, " => j=$%02X", h.context1.w); break;
         case CpuCtx_Stack:      s += sprintf(s, " => Stack=$%04X", h.context1.lo); break;
         case CpuCtx_PcStack:    s += sprintf(s, " => PcStack=$%02X", h.context1.lo); break;
         case CpuCtx_LeftByte:   s += sprintf(s, " L=$%02X", h.context1.lo); break;
         case CpuCtx_RightByte:  s += sprintf(s, " R=$%02X", h.context1.lo); break;
         case CpuCtx_LeftWord:   s += sprintf(s, " L=$%04X", h.context1.w); break;
         case CpuCtx_RightWord:  s += sprintf(s, " R=$%04X", h.context1.w); break;
         case CpuCtx_Condition:  s += sprintf(s, " => cond=%i", h.context1.lo); break;
         case CpuCtx_Param:      s += sprintf(s, " => Param=$%02X", h.context1.lo); break;
         case CpuCtx_MemoryAddress:      s += sprintf(s, " => Address=$%04X", h.context1.w); break;
         case CpuCtx_MemoryByte:      s += sprintf(s, " => Value=$%02X", h.context1.lo); break;
         case CpuCtx_MemoryWord:      s += sprintf(s, " => Value=$%04X", h.context1.w); break;
      }
    }

    if (h.context2Type != 0)
    {
      switch (h.context2Type)
      {
        case CpuCtx_Pc:         s += sprintf(s, " pc=$%04X", h.context2.w); break;
        case CpuCtx_A:          s += sprintf(s, " a=$%02X", h.context2.lo); break;
        case CpuCtx_X:          s += sprintf(s, " x=$%02X", h.context2.lo); break;
        case CpuCtx_Y:          s += sprintf(s, " y=$%02X", h.context2.lo); break;
        case CpuCtx_Z:          s += sprintf(s, " z=$%02X", h.context2.lo); break;
        case CpuCtx_W:          s += sprintf(s, " w=$%02X", h.context2.lo); break;
        case CpuCtx_I:          s += sprintf(s, " i=$%04X", h.context2.w); break;
        case CpuCtx_J:          s += sprintf(s, " j=$%02X", h.context2.w); break;
        case CpuCtx_Stack:      s += sprintf(s, " => Stack=$%04X", h.context1.lo); break;
        case CpuCtx_PcStack:    s += sprintf(s, " => PcStack=$%02X", h.context1.lo); break;
        case CpuCtx_LeftByte:   s += sprintf(s, " L=$%02X", h.context2.lo); break;
        case CpuCtx_RightByte:  s += sprintf(s, " R=$%02X", h.context2.lo); break;
        case CpuCtx_LeftWord:   s += sprintf(s, " L=$%04X", h.context2.w); break;
        case CpuCtx_RightWord:  s += sprintf(s, " R=$%04X", h.context2.w); break;
        case CpuCtx_Condition:  s += sprintf(s, " cond=%i", h.context2.lo); break;
        case CpuCtx_MemoryAddress:      s += sprintf(s, " Address=$%04X", h.context2.w); break;
        case CpuCtx_MemoryByte:      s += sprintf(s, " Value=$%02X", h.context2.lo); break;
        case CpuCtx_MemoryWord:      s += sprintf(s, " Value=$%04X", h.context2.w); break;
      }
    }

    DX8_LOGF("%s", &line[0]);

    idx--;
  }
#endif

}

#endif
