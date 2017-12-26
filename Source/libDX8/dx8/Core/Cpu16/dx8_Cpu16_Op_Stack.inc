static void Cpu_PushW_Reg(Byte src)
{
  Cpu_PushW(CPU.registers[src]);
}

static void Cpu_PushB_Reg(Byte src)
{
  Cpu_PushB(LO_BYTE(CPU.registers[src]));
}

static void Cpu_PushW_Imm(Word src)
{
  Cpu_PushW(src);
}

static void Cpu_PushB_Imm(Word src)
{
  Cpu_PushB(LO_BYTE(src));
}

static void Cpu_PopW_Reg(Byte dst)
{
  CPU.registers[dst] = Cpu_PopW();
}

static void Cpu_PopB_Reg(Byte dst)
{
  CPU.registers[dst] = Cpu_PopB();
}
