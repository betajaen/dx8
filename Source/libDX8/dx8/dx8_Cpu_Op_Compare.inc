#include "dx8.h"

#if defined(DX8_CPU_NO_INLINING)

void Cpu_Halt(Byte name);


inline void Cpu_CompareByte(Byte lhs, Byte rhs)
{
  cpu.flags.bCarry = (rhs >= lhs);
  int val = rhs - lhs;
  cpu.flags.bZero = (val == 0);
  cpu.flags.bNegative = (val < 0);
  cpu.flags.bGreater = lhs > rhs;

#if defined(DX8_DEBUG_INSTRUCTIONS)
  sDebugInstruction.context1.lo = lhs;
  sDebugInstruction.context1Type = CpuCtx_LeftByte;
  sDebugInstruction.context2.lo = rhs;
  sDebugInstruction.context2Type = CpuCtx_RightByte;
#endif
}

inline void Cpu_CompareWord(Word lhs, Word rhs)
{
  cpu.flags.bCarry = (rhs >= lhs);
  int val = rhs - lhs;
  cpu.flags.bZero = (val == 0);
  cpu.flags.bNegative = (val < 0);
  cpu.flags.bGreater = lhs > rhs;

#if defined(DX8_DEBUG_INSTRUCTIONS)
  sDebugInstruction.context1.w = lhs;
  sDebugInstruction.context1Type = CpuCtx_LeftWord;
  sDebugInstruction.context2.w = rhs;
  sDebugInstruction.context2Type = CpuCtx_RightWord;
#endif
}

inline void Cpu_CompareBit(Byte val, Byte bit)
{
  Byte v = (val & bit);
  cpu.flags.bZero = (v == 0);
  cpu.flags.bNegative = 0;
  cpu.flags.bCarry = 0;
  cpu.flags.bGreater = 0;

#if defined(DX8_DEBUG_INSTRUCTIONS)
  sDebugInstruction.context1.lo = val;
  sDebugInstruction.context1Type = CpuCtx_LeftByte;
  sDebugInstruction.context2.lo = bit;
  sDebugInstruction.context2Type = CpuCtx_RightByte;
#endif
  // DX8_LOGF("CMPBIT >> Val=$%2X Bit=$%2X => V=$%2X, $%2X", val, bit, v, cpu.flags.bZero);
}

#endif
