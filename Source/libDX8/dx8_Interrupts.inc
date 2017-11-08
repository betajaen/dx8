INTERRUPT(INT_MMU_MEMSET, 0x01, "Set Shared Memory:  B1=value W1=address W2=length.")
INTERRUPT(INT_MMU_MEMCPY, 0x02, "Copy Shared Memory: W1=dst W2=src W3=length.")
INTERRUPT(INT_MMU_RSTSFT, 0xFF, "Soft Reset")
