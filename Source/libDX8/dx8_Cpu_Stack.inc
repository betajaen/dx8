#include "dx8.h"

#if defined(DX8_CPU_NO_INLINING)

void Cpu_Halt(Byte name);

inline void Cpu_Stack_PushByte(Byte value)
{
  if (cpu.stack == 0xFF)
  {
    Cpu_Halt(HALT_STACK_OVERFLOW);
    return;
  }
  Stack_Set(cpu.stack, value);
  ++cpu.stack;
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
  return value;
}

inline Word Cpu_Stack_PopWord()
{
  Word w;
  w  = Cpu_Stack_PopByte() * 256;
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

inline void PushRegisters()
{
  Cpu_Stack_PushByte(cpu.I.x);
  Cpu_Stack_PushByte(cpu.I.y);
  Cpu_Stack_PushByte(cpu.J.z);
  Cpu_Stack_PushByte(cpu.J.w);
  Cpu_Stack_PushByte(cpu.a);
  Cpu_Stack_PushByte(cpu.flags._data);
}

inline void PopRegisters()
{
  cpu.flags._data = Cpu_Stack_PopByte();
  cpu.a = Cpu_Stack_PopByte();
  cpu.J.w = Cpu_Stack_PopByte();
  cpu.J.z = Cpu_Stack_PopByte();
  cpu.I.y = Cpu_Stack_PopByte();
  cpu.I.x = Cpu_Stack_PopByte();
}

#endif
