INTERRUPT(INT_MMU_MEMSET, 0x01, "Set Shared Memory:  B1=value W1=address W2=length")
INTERRUPT(INT_MMU_MEMCPY, 0x02, "Copy Shared Memory: W1=dst W2=src W3=length")
INTERRUPT(INT_MMU_PRGCPY, 0x03, "Copy Program Memory to Shared Memory: W1=dst W2=src W3=length")
INTERRUPT(INT_CPU_RESET, 0xFF, "Soft Reset")

INTERRUPT(CPU_RESET, 0x01, "Reset")
INTERRUPT(CPU_HBLANK, 0x02, "HBlank")
INTERRUPT(CPU_VBLANK, 0x03, "VBlank")
