static void Cpu_LoadW_Reg(Byte dst, Byte src)
{
  CPU.registers[dst] = Cpu_Read(CPU.registers[src]);
}

static void Cpu_LoadB_Reg(Byte dst, Byte src)
{
  CPU.registers[dst] = LO_BYTE(Cpu_Read(CPU.registers[src]));
}

static void Cpu_LoadW_Imm(Byte dst, Word src)
{
  CPU.registers[dst] = Cpu_Read(src);
}

static void Cpu_LoadB_Imm(Byte dst, Word src)
{
  CPU.registers[dst] = LO_BYTE(Cpu_Read(src));
}

static void Cpu_StoreW_Reg(Byte dst, Byte src)
{
  Cpu_Write(CPU.registers[dst], CPU.registers[src]);
}

static void Cpu_StoreB_Reg(Byte dst, Byte src)
{
  Cpu_Write(CPU.registers[dst], LO_BYTE(CPU.registers[src]));
}

static void Cpu_StoreW_Imm(Word dst, Word src)
{
  Cpu_Write(CPU.registers[dst], src);
}

static void Cpu_StoreB_Imm(Word dst, Byte src)
{
  Cpu_Write(CPU.registers[dst], src);
}
