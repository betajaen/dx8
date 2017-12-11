#include <stdio.h>

void Cpu_Print();

void Cpu_Halt(Byte id)
{
  cpu.halt = 1;
  DX8_LOGF("*** CPU HALTED ***");
  switch (id)
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
  cpu.flags.bZero = (value == 0);
  cpu.flags.bNegative = (value < 0);
  cpu.flags.bCarry = (value > 0xFF);
  return value & 0xFF;
}

inline Word FlagsOpW(int value)
{
  cpu.flags.bZero = (value == 0);
  cpu.flags.bNegative = (value < 0);
  cpu.flags.bCarry = (value > 0xFFFF);
  return value & 0xFFFF;
}

#define DIVISOR_CHECK(X) if (X == 0) { Cpu_Halt(HALT_DIVISION_BY_ZERO); return; }
