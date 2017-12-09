#include "dx8.h"

#if defined(DX8_CPU_NO_INLINING)

void Cpu_Halt(Byte name);

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

#endif