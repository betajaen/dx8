#include "dx8.h"

#if defined(DX8_CPU_NO_INLINING)

void Cpu_Halt(Byte name);

inline void Cpu_Jump_Always(Word imm);
inline void Cpu_Jump_Conditional(bool cond, Word absIfTrue, Byte relIfFalse);
inline void Cpu_Jump_Branch(Byte value, Word tableAddress);
inline void Cpu_JumpRel_Always(Byte signedValue);
inline void Cpu_JumpRel_Conditional(bool cond, Byte relIfTrue, Byte relIfFalse);
inline void Cpu_JumpAdd_Always(int imm);

inline void Cpu_Jump_Always(Word imm)
{
  cpu.pc.w = imm;
}

inline void Cpu_Jump_Conditional(bool cond, Word absIfTrue, Byte relIfFalse)
{
  if (cond)
  {
    //@@@ cpu.pc.w = ifTrue;
    Cpu_Jump_Always(absIfTrue);
  }
  else
  {
    //@@@ cpu.pc.w = ifFalse;
    Cpu_JumpAdd_Always(relIfFalse);
  }
}

inline void Cpu_Jump_Branch(Byte value, Word tableAddress)
{
  Word address = Mmu_GetWord(tableAddress + ((Word)value) * 2);
  Cpu_Jump_Always(address);
}

inline void Cpu_JumpRel_Always(Byte signedValue)
{
  int relAddr = (char)signedValue;
  Cpu_JumpAdd_Always(relAddr);
}

inline void Cpu_JumpRel_Conditional(bool cond, Byte relIfTrue, Byte relIfFalse)
{
  if (cond)
  {
    Cpu_JumpRel_Always(relIfTrue);
  }
  else
  {
    Cpu_JumpAdd_Always(relIfFalse);
  }
}

inline void Cpu_JumpAdd_Always(int imm)
{
  Cpu_Jump_Always(cpu.pc.w + imm);
}

#endif
