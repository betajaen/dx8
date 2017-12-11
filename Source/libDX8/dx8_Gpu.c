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
int      charRow;
Byte     paletteR[16];
Byte     paletteG[16];
Byte     paletteB[16];

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

  Mmu_Set(REG_GFX_MODE, 0x00);

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

void Gpu_DecodePalette(Word address)
{
  // 12 34 56
  // RG BR GB

  Byte b[3];
  for(Word i=0;i < 16;i+=2)
  {
    b[0] = Mmu_Get(address + (i*3) + 0);
    b[1] = Mmu_Get(address + (i*3) + 1);
    b[2] = Mmu_Get(address + (i*3) + 2);

    paletteR[i + 0] = 16 * ((b[0] & 0xF0) >> 4);
    paletteG[i + 0] = 16 * (b[0] & 0x0F);

    paletteB[i + 0] = 16 * ((b[1] & 0xF0) >> 4);
    paletteR[i + 1] = 16 * (b[1] & 0x0F);

    paletteG[i + 1] = 16 * ((b[2] & 0xF0) >> 4);
    paletteB[i + 1] = 16 * ((b[2] & 0x0F));
  }
}

void Gpu_FrameStart()
{
  tilesAddr = Mmu_GetWord(REG_GFX_TILES_ADDR);

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

    copyStride = rows;
    if (y % 8 == 0)
    {
      memcpy(sLineCache + (0 * GPU_BUFFER_W), sFastRam + MEM_GFX_PLANE0_FAST + (copyStride * GPU_BUFFER_W), GPU_BUFFER_W);
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
    Gpu_DecodePalette(Mmu_GetWord(REG_GFX_PALETTE_ADDR));

    Byte lineR1 = 0xFF;
    Byte lineG1 = 0xFF;
    Byte lineB1 = 0xFF;
    Byte backR  = 0x00;
    Byte backG  = 0x00;
    Byte backB  = 0x00;

    #define COLOUR_MASK(IDX, R, G, B) \
      lineR[IDX] = R; \
      lineG[IDX] = G; \
      lineB[IDX] = B;
    
    COLOUR_MASK(0,  paletteR[0], paletteG[0], paletteB[0]);   // 0000
    COLOUR_MASK(1,  paletteR[1], paletteG[1], paletteB[1]);  // 0001
  }

  int offset   = (x >> 3);
  int bitShift = (1 << (x & 7));
  
  int col = 0;
  Byte character, pixelRow;

  character = sLineCache[(GPU_BUFFER_W * 0) + offset] - ' ';
  pixelRow = Mmu_Get(tilesAddr + character + charRow);
  
  col |= !!(pixelRow & bitShift);

  sScanLineTarget[(x * 3) + 0] = lineR[col];
  sScanLineTarget[(x * 3) + 1] = lineG[col];
  sScanLineTarget[(x * 3) + 2] = lineB[col];
}


bool IsInterrupt();

void Gpu_On()
{
  Gpu_Halt = false;
}

void Gpu_Clock()
{
  if (Gpu_Halt == false)
  {
    Gpu_ElectronBeam();
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
