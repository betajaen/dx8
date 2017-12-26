#include "dx8.h"

#if defined(DX8_CPU_NO_INLINING)

inline Byte Cpu_Memory_LoadByte(Word address)
{
  Byte m = Mmu_Get(address);

#if defined(DX8_DEBUG_INSTRUCTIONS)
  sDebugInstruction.context1.w = address;
  sDebugInstruction.context1Type = CpuCtx_MemoryAddress;
  sDebugInstruction.context2.lo = m;
  sDebugInstruction.context2Type = CpuCtx_MemoryByte;
#endif
  
  return m;
}

inline void Cpu_Memory_StoreByte(Word address, Byte value)
{
  Mmu_Set(address, value);

#if defined(DX8_DEBUG_INSTRUCTIONS)
  sDebugInstruction.context1.w = address;
  sDebugInstruction.context1Type = CpuCtx_MemoryAddress;
  sDebugInstruction.context2.lo = value;
  sDebugInstruction.context2Type = CpuCtx_MemoryByte;
#endif
}

inline Word Cpu_Memory_LoadWord(Word address)
{
  Byte lo, hi;
  lo = Cpu_Memory_LoadByte(address);
  hi = Cpu_Memory_LoadByte(address + 1);

  Word w = MAKE_WORD(lo, hi);

#if defined(DX8_DEBUG_INSTRUCTIONS)
  sDebugInstruction.context1.w = address;
  sDebugInstruction.context1Type = CpuCtx_MemoryAddress;
  sDebugInstruction.context2.w = w;
  sDebugInstruction.context2Type = CpuCtx_MemoryByte;
#endif

  return w;
}

inline void Cpu_Memory_StoreWord(Word address, Word value)
{
  Byte lo, hi;
  MAKE_LOHI(value, lo, hi);
  Mmu_Set(address, lo);
  Mmu_Set(address + 1, hi);

#if defined(DX8_DEBUG_INSTRUCTIONS)
  sDebugInstruction.context1.w = address;
  sDebugInstruction.context1Type = CpuCtx_MemoryAddress;
  sDebugInstruction.context2.w = value;
  sDebugInstruction.context2Type = CpuCtx_MemoryByte;
#endif
}

#endif
