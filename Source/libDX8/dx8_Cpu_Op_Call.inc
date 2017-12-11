#include "dx8.h"

#if defined(DX8_CPU_NO_INLINING)

void Cpu_Halt(Byte name);

inline void Cpu_Call_Return()
{
  cpu.pc.w = Cpu_PcStack_Pop();

#if defined(DX8_DEBUG_INSTRUCTIONS)
  sDebugInstruction.context1.w = cpu.pc.w;
  sDebugInstruction.context1Type = CpuCtx_Pc;
#endif
}

inline void Cpu_Call_Always(Byte lo_offset, Word callAddress)
{
  Word pc = cpu.pc.w + lo_offset;

  Cpu_PcStack_Push(pc);
  cpu.pc.w = callAddress;

#if defined(DX8_DEBUG_INSTRUCTIONS)
  sDebugInstruction.context1.w = cpu.pc.w;
  sDebugInstruction.context1Type = CpuCtx_Pc;
#endif
}

inline void Cpu_Call_Conditional(bool cond, Byte lo_offset, Word callAddress)
{
  if (cond)
  {
    Cpu_Call_Always(lo_offset, callAddress);

#if defined(DX8_DEBUG_INSTRUCTIONS)
    sDebugInstruction.context1.w   = cpu.pc.w;
    sDebugInstruction.context1Type = CpuCtx_Pc;
    sDebugInstruction.context2.w   = 1;
    sDebugInstruction.context2Type = CpuCtx_Condition;
#endif
  }
  else
  {
    cpu.pc.w = cpu.pc.w + lo_offset;

#if defined(DX8_DEBUG_INSTRUCTIONS)
    sDebugInstruction.context1.w   = cpu.pc.w;
    sDebugInstruction.context1Type = CpuCtx_Pc;
    sDebugInstruction.context2.w   = 0;
    sDebugInstruction.context2Type = CpuCtx_Condition;
#endif
  }

}

inline void Cpu_Call_Branch(Byte value, Word tableAddress, Byte lo_offset)
{
  Word address = Mmu_GetWord(tableAddress + ((Word)value) * 2);
  Cpu_Call_Always(lo_offset, address);

#if defined(DX8_DEBUG_INSTRUCTIONS)
  sDebugInstruction.context1.w = cpu.pc.w;
  sDebugInstruction.context1Type = CpuCtx_Pc;
  sDebugInstruction.context2.w = value;
  sDebugInstruction.context2Type = CpuCtx_A;
#endif

}

#endif
