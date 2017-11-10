//! d8888b.    db    db    .d888b. 
//! 88  `8D    `8b  d8'    88   8D 
//! 88   88     `8bd8'     `VoooY' 
//! 88   88     .dPYb.     .d~~~b.
//! 88  .8D    .8P  Y8.    88   8D
//! Y8888D'    YP    YP    `Y888P'
//!
//!      Dragon X8 Computer
//!    Cyfrifiadur y Ddraig X8
//! 
//! Copyright (c) 2017 Robin Southern   :: https://github.com/betajaen
//! Made in Wales -- For the FC Dev Jam :: https://itch.io/jam/fc-dev-jam
//! 
//! Permission is hereby granted, free of charge, to any person obtaining a copy
//! of this software and associated documentation files (the "Software"), to deal
//! in the Software without restriction, including without limitation the rights
//! to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//! copies of the Software, and to permit persons to whom the Software is
//! furnished to do so, subject to the following conditions:
//! 
//! The above copyright notice and this permission notice shall be included in
//! all copies or substantial portions of the Software.
//! 
//! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//! IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//! THE SOFTWARE.

#include "dx8.h"
#include <malloc.h>
#include <string.h>
#include <stdlib.h>
#include "log_c/src/log.h"

#if defined(_WIN32)
#define EXPORT extern __declspec(dllexport)
#else
#error Platform not supported :(
#endif

#define GPU_MEM_SIZE 0x1000

Byte* sCrt;
bool  sCrtDirty;
Byte* sGpuMem;
Byte* sSharedRam;
int*  sSharedRamInt;
Byte* sScanLine;
Byte*  sGpuMemLines;

Byte* Shared_GetPtr();

inline void SetBitPixel(int offset, int x, int y, int w, int h)
{
  int addr = offset + (x / 8) + (y * w);
  Byte b = Shared_Get(addr);
  b |= 1 << (x % 8);
  Shared_Set(addr, b);
}

inline void ClearBitPixel(int offset, int x, int y, int w, int h)
{
  int addr = offset + (x / 8) + (y * w);
  Byte b = Shared_Get(addr);
  b &= ~(1 << (x % 8));
  Shared_Set(addr, b);
}

inline Byte GetBitPixel(int offset, int x, int y, int w, int h)
{
  int addr = offset + (x / 8) + (y * w);
  return (Shared_Get(addr) >> (x % 8)) & 1;
}

void Gpu_Setup()
{
  sGpuMem = malloc(GPU_MEM_SIZE);
  memset(sGpuMem, 0, GPU_MEM_SIZE);

  sCrt = malloc(CRT_W * CRT_H * CRT_DEPTH);
  memset(sCrt, 0, GPU_MEM_SIZE);

  sSharedRam = Shared_GetPtr();
  sSharedRamInt = (int*) sSharedRam;
  sScanLine = malloc(CRT_W * 3);
  sGpuMemLines = malloc((CRT_W * 4) / 8);
  memset(sScanLine, 0, CRT_W * 3);
  
  memset(sCrt, 0x00, CRT_W * CRT_H * CRT_DEPTH);

  GpuMmu_Set(Gpu_GFX_PLANES_Relative, 0x01);
  GpuMmu_Set(Gpu_GFX_BGCOLR_Relative, 0x3B);
  GpuMmu_Set(Gpu_GFX_BGCOLG_Relative, 0x3F);
  GpuMmu_Set(Gpu_GFX_BGCOLB_Relative, 0x42);

  GpuMmu_Set(Gpu_GFX_SCNW0R_Relative, 0xFE);
  GpuMmu_Set(Gpu_GFX_SCNW0G_Relative, 0xFE);
  GpuMmu_Set(Gpu_GFX_SCNW0B_Relative, 0xFE);

  GpuMmu_Set(Gpu_GFX_SCNW1R_Relative, 0xF2);
  GpuMmu_Set(Gpu_GFX_SCNW1G_Relative, 0x4C);
  GpuMmu_Set(Gpu_GFX_SCNW1B_Relative, 0x27);

  GpuMmu_Set(Gpu_GFX_SCNW2R_Relative, 0xFB);
  GpuMmu_Set(Gpu_GFX_SCNW2G_Relative, 0xBA);
  GpuMmu_Set(Gpu_GFX_SCNW2B_Relative, 0x42);

  GpuMmu_Set(Gpu_GFX_SCNW3R_Relative, 0x56);
  GpuMmu_Set(Gpu_GFX_SCNW3G_Relative, 0xB9);
  GpuMmu_Set(Gpu_GFX_SCNW3B_Relative, 0xD0);

  //LOGF("GPU Crt = Ptr=%p Size=%ix%ix%i", sCrt, CRT_W, CRT_H, CRT_DEPTH);
  //LOGF("GPU ScaneLine = Ptr=%p Size=%i", sScanLine, CRT_W * 3);

  memset(sGpuMem + Gpu_GFX_TILES_Relative, 0xAA, 0x800);

  sCrtDirty = true;
}

void Gpu_Teardown()
{
  free(sGpuMemLines);
  free(sScanLine);
  free(sCrt);
  free(sGpuMem);
}

void GpuMmu_Set(Word address, Byte value)
{
  sGpuMem[address & ~GPU_MEM_SIZE] = value;
}

Byte GpuMmu_Get(Word address)
{
  return sGpuMem[address & ~GPU_MEM_SIZE];
}

Byte activity = 0;

bool Crt_IsDirty()
{
  return sCrtDirty;
}

EXPORT void* GetCrt()
{
  sCrtDirty = false;
  return sCrt;
}

int GpuFrame = 0;  //
int GpuTimer = 0;  //
Word     frame, currentFrame;
Byte     lineR[16], lineG[16], lineB[16];
int      scanpos, scanline;
int      numPlanes;

void Gpu_FrameStart()
{
  // Reset Colours
  GpuMmu_Set(Gpu_GFX_BGCOLR_Relative, 0x3B);
  GpuMmu_Set(Gpu_GFX_BGCOLG_Relative, 0x3F);
  GpuMmu_Set(Gpu_GFX_BGCOLB_Relative, 0x42);

  GpuMmu_Set(Gpu_GFX_SCNW0R_Relative, 0xFE);
  GpuMmu_Set(Gpu_GFX_SCNW0G_Relative, 0xFE);
  GpuMmu_Set(Gpu_GFX_SCNW0B_Relative, 0xFE);

  GpuMmu_Set(Gpu_GFX_SCNW1R_Relative, 0xF2);
  GpuMmu_Set(Gpu_GFX_SCNW1G_Relative, 0x4C);
  GpuMmu_Set(Gpu_GFX_SCNW1B_Relative, 0x27);

  GpuMmu_Set(Gpu_GFX_SCNW2R_Relative, 0xFB);
  GpuMmu_Set(Gpu_GFX_SCNW2G_Relative, 0xBA);
  GpuMmu_Set(Gpu_GFX_SCNW2B_Relative, 0x42);

  GpuMmu_Set(Gpu_GFX_SCNW3R_Relative, 0x56);
  GpuMmu_Set(Gpu_GFX_SCNW3G_Relative, 0xB9);
  GpuMmu_Set(Gpu_GFX_SCNW3B_Relative, 0xD0);

  numPlanes = GpuMmu_Get(Gpu_GFX_PLANES_Relative);

  switch(numPlanes)
  {
    case 1:
    case 2:
    case 4:
      break;
    default:
    {
      LOGF("Invalid Plane value!!! %i", numPlanes);
      numPlanes = 1;
    }
    break;
  }

}

void Gpu_FrameEnd()
{
  sCrtDirty = true;
  // Call VBlank interrupt here.
}

void SubmitLine(int line)
{
  int offset = (CRT_W * 3 * line);
  memcpy(sCrt + offset, sScanLine, CRT_W * 3);
  memset(sScanLine, 0, CRT_W * 3);
}

#define GPU_BUFFER_W (CRT_W / 8)

inline bool Gpu_Coroutine_Common()
{
  if (GpuTimer == 0)
  {
    Gpu_FrameStart();
    return false;
  }

  if (GpuTimer >= (CRT_SCAN_TOTAL_TIME - (CRT_V_BLANK_TIME)))
  {
    if (GpuTimer == (CRT_SCAN_TOTAL_TIME - (CRT_V_BLANK_TIME)))
    {
      Cpu_Interrupt(CPU_VBLANK);
      // Copy previous scanline to CRT.
      SubmitLine(CRT_H - 1);
      Gpu_FrameEnd();
    }

    // Otherwise Wait.
    return false;
  }

  scanline = GpuTimer / CRT_SCAN_W; // Y-pos in CRT.
  scanpos = GpuTimer % CRT_SCAN_W; // X-pos in CRT.

  if (scanpos == 0)
  {
    // Copy previous Scanline to CRT if scanline + 1.
    if (scanline > 0)
    {
      SubmitLine(scanline - 1);
    }

    Cpu_Interrupt(CPU_HBLANK);

    // Fetch current Graphics mem, and cache it.
    // Graphics and Text mode stuff here, so we don't have to do it per coroutine.
    switch(numPlanes)
    {
      case 1:
      {
        memcpy(sGpuMemLines + (0 * GPU_BUFFER_W), sSharedRam + (GPU_PLANE_SIZE * 0) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
      }
      case 2:
      {
        memcpy(sGpuMemLines + (0 * GPU_BUFFER_W), sSharedRam + (GPU_PLANE_SIZE * 0) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
        memcpy(sGpuMemLines + (1 * GPU_BUFFER_W), sSharedRam + (GPU_PLANE_SIZE * 1) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
      }
      case 4:
      {
        memcpy(sGpuMemLines + (0 * GPU_BUFFER_W), sSharedRam + (GPU_PLANE_SIZE * 0) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
        memcpy(sGpuMemLines + (1 * GPU_BUFFER_W), sSharedRam + (GPU_PLANE_SIZE * 1) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
        memcpy(sGpuMemLines + (2 * GPU_BUFFER_W), sSharedRam + (GPU_PLANE_SIZE * 2) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
        memcpy(sGpuMemLines + (3 * GPU_BUFFER_W), sSharedRam + (GPU_PLANE_SIZE * 3) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);

        // LOGF("[0] %4X", 0x8000 + (GPU_PLANE_SIZE * 0) + (scanline * GPU_BUFFER_W));
        // LOGF("[1] %4X", 0x8000 + (GPU_PLANE_SIZE * 1) + (scanline * GPU_BUFFER_W));
        // LOGF("[2] %4X", 0x8000 + (GPU_PLANE_SIZE * 2) + (scanline * GPU_BUFFER_W));
        // LOGF("[3] %4X", 0x8000 + (GPU_PLANE_SIZE * 3) + (scanline * GPU_BUFFER_W));
      }
      break;
    }
  }

  if (scanpos < CRT_H_BLANK)
  {
    // Wait. Cpu can be doing things here.
    return false;
  }

  return true;
}

void Gpu_ElectronBeam()
{
  if (Gpu_Coroutine_Common() == false)
    return;

  // Okay draw.
  int x = scanpos - CRT_H_BLANK;
  int y = scanline;

  if (x == 0)
  {
    int lineR1 = GpuMmu_Get(Gpu_GFX_SCNW0R_Relative);
    int lineG1 = GpuMmu_Get(Gpu_GFX_SCNW0G_Relative);
    int lineB1 = GpuMmu_Get(Gpu_GFX_SCNW0B_Relative);
    int lineR2 = GpuMmu_Get(Gpu_GFX_SCNW1R_Relative);
    int lineG2 = GpuMmu_Get(Gpu_GFX_SCNW1G_Relative);
    int lineB2 = GpuMmu_Get(Gpu_GFX_SCNW1B_Relative);
    int lineR3 = GpuMmu_Get(Gpu_GFX_SCNW2R_Relative);
    int lineG3 = GpuMmu_Get(Gpu_GFX_SCNW2G_Relative);
    int lineB3 = GpuMmu_Get(Gpu_GFX_SCNW2B_Relative);
    int lineR4 = GpuMmu_Get(Gpu_GFX_SCNW3R_Relative);
    int lineG4 = GpuMmu_Get(Gpu_GFX_SCNW3G_Relative);
    int lineB4 = GpuMmu_Get(Gpu_GFX_SCNW3B_Relative);
    int backR  = GpuMmu_Get(Gpu_GFX_BGCOLR_Relative);
    int backG  = GpuMmu_Get(Gpu_GFX_BGCOLG_Relative);
    int backB  = GpuMmu_Get(Gpu_GFX_BGCOLB_Relative);

    #define COLOUR_MASK(IDX, R, G, B) \
      lineR[IDX] = R; \
      lineG[IDX] = G; \
      lineB[IDX] = B;
    
    // This is the nearest set bit to the right corresponds to the top-most colour.
    //                                           4321
    COLOUR_MASK(0,  backR,  backG,  backB);   // 0000
    COLOUR_MASK(1,  lineR1, lineG1, lineB1);  // 0001
    COLOUR_MASK(2,  lineR2, lineG2, lineB2);  // 0010
    COLOUR_MASK(3,  lineR1, lineG1, lineB1);  // 0011
    COLOUR_MASK(4,  lineR3, lineG3, lineB3);  // 0100
    COLOUR_MASK(5,  lineR1, lineG1, lineB1);  // 0101
    COLOUR_MASK(6,  lineR2, lineG2, lineB2);  // 0110
    COLOUR_MASK(7,  lineR1, lineG1, lineB1);  // 0111
    COLOUR_MASK(8,  lineR4, lineG4, lineB4);  // 1000
    COLOUR_MASK(9,  lineR1, lineG1, lineB1);  // 1001
    COLOUR_MASK(10, lineR2, lineG2, lineB2);  // 1010
    COLOUR_MASK(11, lineR1, lineG1, lineB1);  // 1011
    COLOUR_MASK(12, lineR3, lineG3, lineB3);  // 1100
    COLOUR_MASK(13, lineR1, lineG1, lineB1);  // 1101
    COLOUR_MASK(14, lineR2, lineG2, lineB2);  // 1110
    COLOUR_MASK(15, lineR1, lineG1, lineB1);  // 1111
  }

  int offset   = (x >> 3);
  int bitShift = (1 << (x & 7));
  
  int col = 0;
  switch(numPlanes)
  {
    case 1:
    {
      col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 0) + offset] & bitShift)));
    }
    break;
    case 2:
    {
      col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 0) + offset] & bitShift)));
      col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 1) + offset] & bitShift))) << 1;
    }
    break;
    case 4:
    {
      col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 0) + offset] & bitShift)));
      col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 1) + offset] & bitShift))) << 1;
      col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 2) + offset] & bitShift))) << 2;
      col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 3) + offset] & bitShift))) << 3;
    }
    break;
  }

  sScanLine[(x * 3) + 0] = lineR[col];
  sScanLine[(x * 3) + 1] = lineG[col];
  sScanLine[(x * 3) + 2] = lineB[col];
}


typedef struct
{
  Byte op;  // See Interrupts
  Byte state;
  Word cycles;
  union
  {
    struct
    {
      Word dst, len;
      Byte val;
    } opGpuSet;
    struct
    {
      Word dst, src, len;
    } opGpuCpy;
  };
} Gpu_CoroutineData;

Gpu_CoroutineData gpuCoroutineData;

#define GPU_DATA       gpuCoroutineData
#define GPU_YIELD      return 2;
#define GPU_RETURN     GPU_DATA.op = 0xFF; LOGF("Returned Gpu Coop");return 1;
#define GPU_YIELD_FAIL GPU_DATA.state = 0xFF; GPU_DATA.op = 0xFF; LOGF("Failed Gpu Coop"); return -1;

int Gpu_Start_Coroutine(int type)
{
  GPU_DATA.op = type;
  GPU_DATA.cycles = 0;
  GPU_DATA.state = 0;

  switch (GPU_DATA.op)
  {
    case INT_GPU_MEMCPY:
    {
      GPU_DATA.cycles += 2;
      GPU_DATA.opGpuCpy.dst = ChipRam_GetWord(Gpu_GFX_W1_Relative);
      GPU_DATA.opGpuCpy.src = ChipRam_GetWord(Gpu_GFX_W2_Relative);
      GPU_DATA.opGpuCpy.len = ChipRam_GetWord(Gpu_GFX_W3_Relative) & ~SHARED_SIZE;

      LOGF("ogGpuCpy.dst = %4X", GPU_DATA.opGpuCpy.dst);
      LOGF("ogGpuCpy.src = %4X", GPU_DATA.opGpuCpy.src);
      LOGF("ogGpuCpy.len = %4X", GPU_DATA.opGpuCpy.len);

      if (GPU_DATA.opGpuCpy.len == 0)
      {
        LOGF("Failed. Length zero.");
        GPU_YIELD_FAIL;
      }

      if (GPU_DATA.opGpuCpy.dst < Gpu_Begin || GPU_DATA.opGpuCpy.dst > (Gpu_Begin + 0x1000))
      {
        LOGF("Failed. Dst out of bounds!");
        GPU_YIELD_FAIL;
      }

      GPU_DATA.opGpuCpy.dst -= Gpu_Begin;

      GPU_YIELD;
    }
    break;
    case INT_GPU_MEMSET:
    {
      GPU_DATA.cycles += 2;
      GPU_DATA.opGpuSet.dst = ChipRam_GetWord(Gpu_GFX_W1_Relative);
      GPU_DATA.opGpuSet.len = ChipRam_GetWord(Gpu_GFX_W2_Relative) & ~HALF_SHARED_SIZE;
      GPU_DATA.opGpuSet.val = ChipRam_Get(Gpu_GFX_B1_Relative);

      LOGF("ogGpuSet.dst = %4X", GPU_DATA.opGpuSet.dst);
      LOGF("ogGpuSet.len = %4X", GPU_DATA.opGpuSet.len);
      LOGF("ogGpuSet.val = %0X", GPU_DATA.opGpuSet.val);

      if (GPU_DATA.opGpuSet.len == 0)
      {
        LOGF("Failed. Length zero.");
        GPU_YIELD_FAIL;
      }

      if (GPU_DATA.opGpuSet.dst < Gpu_Begin || GPU_DATA.opGpuSet.dst >(Gpu_Begin + 0x1000))
      {
        LOGF("Failed. Dst out of bounds!");
        GPU_YIELD_FAIL;
      }

      GPU_DATA.opGpuSet.dst -= Gpu_Begin;

      GPU_YIELD;
    }
    break;
  }
  return 0;

}

int Gpu_Coroutine()
{
  // We can only do this in a HBLANK or VBLANK
  if ( !(scanpos < CRT_H_BLANK || GpuTimer >= (CRT_SCAN_TOTAL_TIME - (CRT_V_BLANK_TIME))) )
  {
    return 0;
  }

  if (GPU_DATA.op == 0xFF)
    return 0;

  switch (GPU_DATA.op)
  {
    case INT_GPU_MEMSET:
    {
      int subCycles = 16;

      while (GPU_DATA.opGpuSet.len > 0 || subCycles > 0)
      {
        sGpuMem[GPU_DATA.opGpuSet.dst++] = GPU_DATA.opGpuSet.val;
        --subCycles;
        --GPU_DATA.opGpuSet.len;
      }

      GPU_DATA.cycles++;

      if (GPU_DATA.opGpuSet.len <= 0)
      {
        GPU_RETURN;
      }

      GPU_YIELD;
    }
    break;
    case INT_GPU_MEMCPY:
    {
      int subCycles = 16;

      while (GPU_DATA.opGpuCpy.len > 0 || subCycles > 0)
      {
        sGpuMem[GPU_DATA.opGpuCpy.dst++] = Mmu_Get(GPU_DATA.opGpuCpy.src++);
        --subCycles;
        --GPU_DATA.opGpuCpy.len;
      }

      GPU_DATA.cycles++;

      if (GPU_DATA.opGpuCpy.len <= 0)
      {
        GPU_RETURN;
      }

      GPU_YIELD;
    }
    break;
  }

  GPU_RETURN;
}

void Gpu_Clock()
{
  Gpu_ElectronBeam();
  Gpu_Coroutine();
  GpuTimer++;
  if (GpuTimer == CRT_SCAN_TOTAL_TIME)
  {
    GpuTimer = 0;
    frame++;
  }
}

int Gpu_GetTimer()
{
  return GpuTimer;
}
