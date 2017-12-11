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

#if defined(DX8_DEBUG_INSTRUCTIONS)
  sDebugInstruction.context1.w = imm;
  sDebugInstruction.context1Type = CpuCtx_Pc;
#endif
}

inline void Cpu_Jump_Conditional(bool cond, Word absIfTrue, Byte relIfFalse)
{
  if (cond)
  {
    //@@@ cpu.pc.w = ifTrue;
    Cpu_Jump_Always(absIfTrue);

#if defined(DX8_DEBUG_INSTRUCTIONS)
    sDebugInstruction.context2.lo = 1;
    sDebugInstruction.context2Type = CpuCtx_Condition;
#endif
  }
  else
  {
    //@@@ cpu.pc.w = ifFalse;
    Cpu_JumpAdd_Always(relIfFalse);

#if defined(DX8_DEBUG_INSTRUCTIONS)
    sDebugInstruction.context2.lo = 0;
    sDebugInstruction.context2Type = CpuCtx_Condition;
#endif
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

#if defined(DX8_DEBUG_INSTRUCTIONS)
    sDebugInstruction.context2.lo = 1;
    sDebugInstruction.context2Type = CpuCtx_Condition;
#endif

  }
  else
  {
    Cpu_JumpAdd_Always(relIfFalse);

#if defined(DX8_DEBUG_INSTRUCTIONS)
    sDebugInstruction.context2.lo = 1;
    sDebugInstruction.context2Type = CpuCtx_Condition;
#endif
  }
}

inline void Cpu_JumpAdd_Always(int imm)
{
  Cpu_Jump_Always(cpu.pc.w + imm);
}

#endif
