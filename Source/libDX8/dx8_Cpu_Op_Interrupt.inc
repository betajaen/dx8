
void Cpu_Interrupt(Byte name)
{
  if (cpu.halt)
    return;

  if (name >= 8)
    return;

  cpu.interruptMask[name] = true;

}

void Cpu_StartInterrupt(Byte name);

void Cpu_Check_Interrupts()
{
  if (cpu.interruptsStopped == true)
    return;

  if (cpu.interrupt == 0)
  {
    for (int i = 0; i < 8; i++)
    {
      if (cpu.interruptMask[i])
      {
        cpu.interrupt = i;
        cpu.interruptMask[i] = false;

        Cpu_StartInterrupt(i);
        break;
      }
    }
  }
}

void Cpu_Interrupt_SetEnabled(bool isEnabled)
{
  cpu.interruptsStopped = !isEnabled;
}

void Cpu_StartInterrupt(Byte name)
{
  if (cpu.halt)
    return;

  // Grab interrupt address
  Word interruptAddress = Mmu_GetWord(0x02 * name);

  if (interruptAddress == 0)
  {
    DX8_LOGF("Cannot do interrupt. No address for $%2X", name);
    return;
  }

  Cpu_PcStack_Push(cpu.pc.w);
  Cpu_Stack_PushRegisters();

  cpu.interrupt = name;
  Cpu_Jump_Always(interruptAddress);

  if (name == INTVEC_HALT)
  {
    DX8_LOGF("HALT INTERRUPT!! $%4X", interruptAddress);
    //cpu.halt = 1;
  }

  cpu.a = 0;
  cpu.I.x = 0;
  cpu.I.y = 0;
  cpu.J.z = 0;
  cpu.J.w = 0;
  cpu.flags._data = 0;

}

void Cpu_Interrupt_Resume()
{
  if (cpu.halt)
    return;

  if (cpu.interrupt == 0)
  {
    DX8_LOGF("Interupt not happening. Already interrupted for $%2X!!!", cpu.interrupt);
    Cpu_Halt(HALT_BLOCKED_INTERRUPT);
    return;
  }

  int wasInterrupt = cpu.interrupt;

  cpu.interrupt = 0;

  Cpu_Stack_PopRegisters();
  cpu.pc.w = Cpu_PcStack_Pop();
}

bool IsInterrupt()
{
  return cpu.interrupt != 0;
}

void Gpu_Interrupt(Byte name);
void Gpu_On();
void Floppy_Interrupt();

inline void Cpu_Interrupt_Emit(Byte name)
{
  DX8_LOGF("Interrupt $%2X", name);
  switch (name)
  {
  case INT_RESET:
    Cpu_Reset(true);
    return;
  case INT_GPUON:
    Gpu_On();
    return;
  case INT_FLOPPY_OP:
    Floppy_Interrupt();
    return;
  }
}
