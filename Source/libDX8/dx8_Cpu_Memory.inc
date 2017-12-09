#include "dx8.h"

#if defined(DX8_CPU_NO_INLINING)

inline Byte Cpu_Memory_LoadByte(Word address)
{
  return Mmu_Get(address);
}

inline void Cpu_Memory_StoreByte(Word address, Byte value)
{
  Mmu_Set(address, value);
}

inline Word Cpu_Memory_LoadWord(Word address)
{
  Byte lo, hi;
  lo = Cpu_Memory_LoadByte(address);
  hi = Cpu_Memory_LoadByte(address + 1);

  return MAKE_WORD(lo, hi);
}

inline void Cpu_Memory_StoreWord(Word address, Word value)
{
  Byte lo, hi;
  MAKE_LOHI(value, lo, hi);
  Mmu_Set(address, lo);
  Mmu_Set(address + 1, hi);
}

#endif
