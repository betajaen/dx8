#include "dx8.h"

bool DebugLog = false;

#if defined OP
#undef OP
#endif
#define OP(OP, A,B,C,D)  STR(OP),

const char* kOpcodesStr[] = {
#include "dx8_Cpu_Opcodes.inc"
};

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

#endif
