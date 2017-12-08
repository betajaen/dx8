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

#define TEXT_TEST

#if defined(_WIN32)
#define EXPORT extern __declspec(dllexport)
#else
#error Platform not supported :(
#endif

Byte*    sCrtBuffers[2];
Byte*    sWriteCrt, *sReadCrt;
bool     sCrtDirty;
Byte*    sScanLineTarget;
Byte*    sLineCache;
Byte*    Ram_Get();
Byte     Gpu_Halt;

int      GpuFrame = 0;  //
int      GpuTimer = 0;  //
Word     frame, currentFrame;
Byte     lineR[16], lineG[16], lineB[16];
Byte     planeModes[4];
int      scanpos, scanline;
int      numPlanes;
Word     tilesAddr;
int  charRow;

void Gpu_Setup()
{
  sCrtBuffers[0] = malloc(CRT_W * CRT_H * CRT_DEPTH);
  sCrtBuffers[1] = malloc(CRT_W * CRT_H * CRT_DEPTH);
  sWriteCrt = sCrtBuffers[0];
  sReadCrt = sCrtBuffers[1];

  sScanLineTarget = malloc(CRT_W * 3);
  sLineCache = malloc((CRT_W * 4) / 8);
  
  sCrtDirty = true;
}

void Gpu_Teardown()
{
  free(sLineCache);
  free(sScanLineTarget);
  free(sCrtBuffers[0]);
  free(sCrtBuffers[1]);
}

void Gpu_TurnOn()
{
  Gpu_Halt = true;

  memset(sScanLineTarget, 0, CRT_W * 3);
  memset(sCrtBuffers[0], 0x00, CRT_W * CRT_H * CRT_DEPTH);
  memset(sCrtBuffers[1], 0x00, CRT_W * CRT_H * CRT_DEPTH);

  DX8_LOGF("GPU Pre-init");

  Mmu_Set(REG_GFX_PLANES_COUNT, 0x01);

  Mmu_Set(REG_GFX_PLANE0_TYPE, 0x00);
  Mmu_Set(REG_GFX_PLANE1_TYPE, 0x00);
  Mmu_Set(REG_GFX_PLANE2_TYPE, 0x00);
  Mmu_Set(REG_GFX_PLANE3_TYPE, 0x00);

  Mmu_Set(REG_GFX_BACKGROUND_COLOUR + 0, 0x3B);
  Mmu_Set(REG_GFX_BACKGROUND_COLOUR + 1, 0x3F);
  Mmu_Set(REG_GFX_BACKGROUND_COLOUR + 2, 0x42);

  Mmu_Set(REG_GFX_PLANE0_COLOUR + 0, 0xFE);
  Mmu_Set(REG_GFX_PLANE0_COLOUR + 1, 0xFE);
  Mmu_Set(REG_GFX_PLANE0_COLOUR + 2, 0xFE);

  Mmu_Set(REG_GFX_PLANE1_COLOUR + 0, 0xF2);
  Mmu_Set(REG_GFX_PLANE1_COLOUR + 1, 0x4C);
  Mmu_Set(REG_GFX_PLANE1_COLOUR + 2, 0x27);

  Mmu_Set(REG_GFX_PLANE2_COLOUR + 0, 0xFB);
  Mmu_Set(REG_GFX_PLANE2_COLOUR + 1, 0xBA);
  Mmu_Set(REG_GFX_PLANE2_COLOUR + 2, 0x42);

  Mmu_Set(REG_GFX_PLANE3_COLOUR + 0, 0x56);
  Mmu_Set(REG_GFX_PLANE3_COLOUR + 1, 0xB9);
  Mmu_Set(REG_GFX_PLANE3_COLOUR + 2, 0xD0);

  // @TODO - Reset GPU state here.

  DX8_LOGF("GPU Turn On.");
}

Byte activity = 0;

bool Crt_IsDirty()
{
  return sCrtDirty;
}

EXPORT void* GetCrt()
{
  sCrtDirty = false;
  return sReadCrt;
}

void SwapBuffers()
{
  if (sReadCrt == sCrtBuffers[0])
  {
    sReadCrt = sCrtBuffers[1];
    sWriteCrt = sCrtBuffers[0];
  }
  else
  {
    sReadCrt = sCrtBuffers[0];
    sWriteCrt = sCrtBuffers[1];
  }
}

void Gpu_FrameStart()
{
  // Reset Colours
  // Mmu_Set_Real(REG_GFX_BACKGROUND_COLOUR + 0, 0x3B);
  // Mmu_Set_Real(REG_GFX_BACKGROUND_COLOUR + 1, 0x3F);
  // Mmu_Set_Real(REG_GFX_BACKGROUND_COLOUR + 2, 0x42);
  // 
  // Mmu_Set_Real(REG_GFX_PLANE0_COLOUR + 0, 0xFE);
  // Mmu_Set_Real(REG_GFX_PLANE0_COLOUR + 1, 0xFE);
  // Mmu_Set_Real(REG_GFX_PLANE0_COLOUR + 2, 0xFE);
  // 
  // Mmu_Set_Real(REG_GFX_PLANE1_COLOUR + 0, 0xF2);
  // Mmu_Set_Real(REG_GFX_PLANE1_COLOUR + 1, 0x4C);
  // Mmu_Set_Real(REG_GFX_PLANE1_COLOUR + 2, 0x27);
  // 
  // Mmu_Set_Real(REG_GFX_PLANE2_COLOUR + 0, 0xFB);
  // Mmu_Set_Real(REG_GFX_PLANE2_COLOUR + 1, 0xBA);
  // Mmu_Set_Real(REG_GFX_PLANE2_COLOUR + 2, 0x42);
  // 
  // Mmu_Set_Real(REG_GFX_PLANE3_COLOUR + 0, 0x56);
  // Mmu_Set_Real(REG_GFX_PLANE3_COLOUR + 1, 0xB9);
  // Mmu_Set_Real(REG_GFX_PLANE3_COLOUR + 2, 0xD0);

  tilesAddr = Mmu_GetWord(REG_GFX_TILES_ADDR);

 //  DX8_LOGF("Tiles address = $%4X", tilesAddr);

  int  numFrames = Mmu_Get(REG_GFX_FRAME_NUM);
  int  seconds   = Mmu_Get(REG_GFX_SECOND_NUM);
  Byte counters = 0;
  numFrames++;

  if (numFrames == 60)
  {
    numFrames = 0;
    seconds++;
    counters |= GFX_FLG_COUNTERS_NEWFRAME;
  }

  if ((seconds & 1) == 0)
  {
    counters |= GFX_FLG_COUNTERS_ODDEVEN;
  }

  if ((numFrames & 2) == 2)
    counters |= GFX_FLG_COUNTERS_2;

  if ((numFrames & 4) == 4)
    counters |= GFX_FLG_COUNTERS_4;

  if ((numFrames & 8) == 8)
    counters |= GFX_FLG_COUNTERS_8;

  if (numFrames == 15)
    counters |= GFX_FLG_COUNTERS_15;

  if (numFrames == 30)
    counters |= GFX_FLG_COUNTERS_30;

  // DX8_LOGF("Counters= $%2X Seconds = $%2X Frames = $%2X", counters, seconds, numFrames);

  Mmu_Set(REG_GFX_COUNTERS, counters);
  Mmu_Set(REG_GFX_SECOND_NUM, seconds & 0xFF);
  Mmu_Set(REG_GFX_FRAME_NUM, numFrames);

  numPlanes = Mmu_Get(REG_GFX_PLANES_COUNT);

  switch(numPlanes)
  {
    default:
      DX8_LOGF("Invalid Plane value!!! %i", numPlanes);
      numPlanes = 1;
    case 1:
      planeModes[0] = Mmu_Get(REG_GFX_PLANE0_TYPE);
    break;
    case 2:
      planeModes[0] = Mmu_Get(REG_GFX_PLANE0_TYPE);
      planeModes[1] = Mmu_Get(REG_GFX_PLANE1_TYPE);
    break;
    case 4:
      planeModes[0] = Mmu_Get(REG_GFX_PLANE0_TYPE);
      planeModes[1] = Mmu_Get(REG_GFX_PLANE1_TYPE);
      planeModes[2] = Mmu_Get(REG_GFX_PLANE2_TYPE);
      planeModes[3] = Mmu_Get(REG_GFX_PLANE3_TYPE);
    break;
  }
}

void Gpu_FrameEnd()
{
  sCrtDirty = true;
  SwapBuffers();
}

void SubmitLine(int line)
{
  int offset = (CRT_W * 3 * line);
  memcpy(sWriteCrt + offset, sScanLineTarget, CRT_W * 3);
  memset(sScanLineTarget, 0, CRT_W * 3);
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
      Cpu_Interrupt(INTVEC_VBLANK);
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

    Mmu_Set(REG_GFX_SCANLINE_NUM, scanline);
    Cpu_Interrupt(INTVEC_HBLANK);
    
    charRow = (scanline % 8) * 96;

    int y = scanline;
    int rows = y / 8;
    int copyStride = rows;

    // Fetch current Graphics mem, and cache it.
    // Graphics and Text mode stuff here, so we don't have to do it per coroutine.
    switch(numPlanes)
    {
      case 1:
      {
        copyStride = rows;
        if (planeModes[0] == 0xFF)
          copyStride = scanline;

        memcpy(sLineCache + (0 * GPU_BUFFER_W), sFastRam + MEM_GFX_PLANE0_FAST + (copyStride * GPU_BUFFER_W), GPU_BUFFER_W);
      }
      break;
      case 2:
      {
        copyStride = rows;
        if (planeModes[0] == 0xFF)
          copyStride = scanline;

        memcpy(sLineCache + (0 * GPU_BUFFER_W), sFastRam + MEM_GFX_PLANE0_FAST + (copyStride * GPU_BUFFER_W), GPU_BUFFER_W);
        
        copyStride = rows;
        if (planeModes[1] == 0xFF)
          copyStride = scanline;

        memcpy(sLineCache + (1 * GPU_BUFFER_W), sFastRam + MEM_GFX_PLANE1_FAST + (copyStride * GPU_BUFFER_W), GPU_BUFFER_W);
      }
      break;
      case 4:
      {

        copyStride = rows;
        if (planeModes[0] == 0xFF)
          copyStride = scanline;

        memcpy(sLineCache + (0 * GPU_BUFFER_W), sFastRam + MEM_GFX_PLANE0_FAST + (copyStride * GPU_BUFFER_W), GPU_BUFFER_W);

        copyStride = rows;
        if (planeModes[1] == 0xFF)
          copyStride = scanline;

        memcpy(sLineCache + (1 * GPU_BUFFER_W), sFastRam + MEM_GFX_PLANE1_FAST + (copyStride * GPU_BUFFER_W), GPU_BUFFER_W);

        copyStride = rows;
        if (planeModes[2] == 0xFF)
          copyStride = scanline;

        memcpy(sLineCache + (2 * GPU_BUFFER_W), sFastRam + MEM_GFX_PLANE2_FAST + (copyStride * GPU_BUFFER_W), GPU_BUFFER_W);

        copyStride = rows;
        if (planeModes[3] == 0xFF)
          copyStride = scanline;

        memcpy(sLineCache + (3 * GPU_BUFFER_W), sFastRam + MEM_GFX_PLANE3_FAST + (copyStride * GPU_BUFFER_W), GPU_BUFFER_W);

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
  if (Gpu_Halt)
    return;

  if (Gpu_Coroutine_Common() == false)
    return;

  // Okay draw.
  int x = scanpos - CRT_H_BLANK;
  int y = scanline;

  int cols = x / 8;
  int rows = y / 8;

  if (x == 0)
  {
    int lineR1 = Mmu_Get(REG_GFX_PLANE0_COLOUR + 0);
    int lineG1 = Mmu_Get(REG_GFX_PLANE0_COLOUR + 1);
    int lineB1 = Mmu_Get(REG_GFX_PLANE0_COLOUR + 2);
    int lineR2 = Mmu_Get(REG_GFX_PLANE1_COLOUR + 0);
    int lineG2 = Mmu_Get(REG_GFX_PLANE1_COLOUR + 1);
    int lineB2 = Mmu_Get(REG_GFX_PLANE1_COLOUR + 2);
    int lineR3 = Mmu_Get(REG_GFX_PLANE2_COLOUR + 0);
    int lineG3 = Mmu_Get(REG_GFX_PLANE2_COLOUR + 1);
    int lineB3 = Mmu_Get(REG_GFX_PLANE2_COLOUR + 2);
    int lineR4 = Mmu_Get(REG_GFX_PLANE3_COLOUR + 0);
    int lineG4 = Mmu_Get(REG_GFX_PLANE3_COLOUR + 1);
    int lineB4 = Mmu_Get(REG_GFX_PLANE3_COLOUR + 2);
    int backR  = Mmu_Get(REG_GFX_BACKGROUND_COLOUR + 0);
    int backG  = Mmu_Get(REG_GFX_BACKGROUND_COLOUR + 1);
    int backB  = Mmu_Get(REG_GFX_BACKGROUND_COLOUR + 2);

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
  Byte character, pixelRow;

  // Urgh. Sadly there doesn't seem to be around this, and it's per pixel too.
  // 1-bit Game Jam rules. :D
  switch(numPlanes)
  {
    case 1:
    {
      if (planeModes[0] == 0xFF)
      {
        pixelRow = sLineCache[(GPU_BUFFER_W * 0) + offset];
      }
      else
      {
        character = sLineCache[(GPU_BUFFER_W * 0) + offset] - ' ';
        pixelRow = Mmu_Get(tilesAddr + character + charRow);
      }
      col |= !!(pixelRow & bitShift);
    }
    break;
    case 2:
    {
      if (planeModes[0] == 0xFF)
      {
        pixelRow = sLineCache[(GPU_BUFFER_W * 0) + offset];
      }
      else
      {
        character = sLineCache[(GPU_BUFFER_W * 0) + offset] - ' ';
        pixelRow = Mmu_Get(tilesAddr + character + charRow);
      }
      col |= !!(pixelRow & bitShift);

      if (planeModes[1] == 0xFF)
      {
        pixelRow = sLineCache[(GPU_BUFFER_W * 1) + offset];
      }
      else
      {
        character = sLineCache[(GPU_BUFFER_W * 1) + offset] - ' ';
        pixelRow = Mmu_Get(tilesAddr + character + charRow);
      }
      col |= !!(pixelRow & bitShift) << 1;

    }
    break;
    case 4:
    {
      if (planeModes[0] == 0xFF)
      {
        pixelRow = sLineCache[(GPU_BUFFER_W * 0) + offset];
      }
      else
      {
        character = sLineCache[(GPU_BUFFER_W * 0) + offset] - ' ';
        pixelRow = Mmu_Get(tilesAddr + character + charRow);
      }
      col |= !!(pixelRow & bitShift);

      if (planeModes[1] == 0xFF)
      {
        pixelRow = sLineCache[(GPU_BUFFER_W * 1) + offset];
      }
      else
      {
        character = sLineCache[(GPU_BUFFER_W * 1) + offset] - ' ';
        pixelRow = Mmu_Get(tilesAddr + character + charRow);
      }
      col |= !!(pixelRow & bitShift) << 1;

      if (planeModes[2] == 0xFF)
      {
        pixelRow = sLineCache[(GPU_BUFFER_W * 2) + offset];
      }
      else
      {
        character = sLineCache[(GPU_BUFFER_W * 2) + offset] - ' ';
        pixelRow = Mmu_Get(tilesAddr + character + charRow);
      }
      col |= !!(pixelRow & bitShift) << 2;

      if (planeModes[3] == 0xFF)
      {
        pixelRow = sLineCache[(GPU_BUFFER_W * 3) + offset];
      }
      else
      {
        character = sLineCache[(GPU_BUFFER_W * 3) + offset] - ' ';
        pixelRow = Mmu_Get(tilesAddr + character + charRow);
      }
      col |= !!(pixelRow & bitShift) << 3;
    }
    break;
  }

  sScanLineTarget[(x * 3) + 0] = lineR[col];
  sScanLineTarget[(x * 3) + 1] = lineG[col];
  sScanLineTarget[(x * 3) + 2] = lineB[col];
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
#define GPU_RETURN     GPU_DATA.op = 0xFF; DX8_LOGF("Returned Gpu Coop");return 1;
#define GPU_YIELD_FAIL GPU_DATA.state = 0xFF; GPU_DATA.op = 0xFF; DX8_LOGF("Failed Gpu Coop"); return -1;

int Gpu_Coroutine_Start(Byte type)
{
  GPU_DATA.op = type;
  GPU_DATA.cycles = 0;
  GPU_DATA.state = 0;

  switch (GPU_DATA.op)
  {
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
  }

  GPU_RETURN;
}

void Gpu_Interrupt(Byte interrupt)
{
  Gpu_Coroutine_Start(interrupt);
}

bool IsInterrupt();

void Gpu_On()
{
  Gpu_Halt = false;
}

void Gpu_Clock()
{
  Gpu_ElectronBeam();

  if (Gpu_Halt == false)
  {
    if (!IsInterrupt())
      Gpu_Coroutine();
  }

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
