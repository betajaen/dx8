void Cpu_CopyW_Reg(Byte dst, Byte src)
{
  CPU.registers[dst] = CPU.registers[src];
}

void Cpu_CopyB_Reg(Byte dst, Byte src)
{
  CPU.registers[dst] = LO_BYTE(CPU.registers[src]);
}

void Cpu_SetW_Imm(Byte dst, Word src)
{
  CPU.registers[dst] = src;
}

void Cpu_SwapW_Reg(Byte dst, Byte src)
{
  Word t;
  t = CPU.registers[src];
  CPU.registers[src] = CPU.registers[dst];
  CPU.registers[dst] = t;
}

void Cpu_SwapB_Reg(Byte dst)
{
  Byte lo, hi;
  Word t = CPU.registers[dst];

  lo = LO_BYTE(t);
  hi = HI_BYTE(t);
  
  t = MAKE_WORD(hi, lo);
  CPU.registers[dst] = t;
}

void Cpu_SetQuickW_Imm(Byte dst, Byte src)
{
  CPU.registers[dst] = src;
}

