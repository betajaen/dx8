// Interrupts
#define INT_MEMSET (0x0001) // Set Shared Memory:  B1=value W1=address W2=length
#define INT_MEMCPY (0x0002) // Copy Shared Memory: W1=dst W2=src W3=length
#define INT_PRG2MEM (0x0003) // Copy Program Memory to Shared Memory: W1=dst W2=src W3=length
#define INT_DEFLATE (0x0004) // Copy RLE Program Memory to Shared Memory and expand: W1=dst W2=src W3=length
#define INT_GPUSET (0x0010) // Set GPU Memory:  B1=value W1=address W2=length
#define INT_PRG2GPU (0x0011) // Copy Memory to GPU Memory: W1=dst W2=src W3=length
#define INT_RESET (0x00FF) // Soft Reset

#define INT_GPUON (0x00FE) // Turn on the GPU
