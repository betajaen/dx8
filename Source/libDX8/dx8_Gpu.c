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

#define GPU_MEM_SIZE 0x100

#define CRT_W 640
#define CRT_H 400
#define CRT_DEPTH 3

Byte* sCrt;
bool  sCrtDirty;
Byte* sGpuMem;
Byte* sSharedRam;
int*  sSharedRamInt;
Byte* sScanLine;

Byte* Shared_GetPtr();

typedef struct 
{
  int  width;
  int  height;
  int  planes;
  int  pixelW;
  int  pixelH;
  bool isText;
} GpuMode;

#define FAST_XY(X, Y, W)   (X + (Y * W))
#define FAST_SET(XY)       sSharedRamInt[XY>>5] |= (1 << (XY&31))
#define FAST_CLR(XY)       sSharedRamInt[XY>5] &= ~(1 << (XY&31))
#define FAST_GET(XY)       (sSharedRamInt[XY>>5] & 1 << (XY&31))
#define FAST_GETOFFSET(OFFSET,XY)       (sSharedRamInt[OFFSET + (XY>>5)] & 1 << (XY&31))

#define DEF_GPU_TXT_MODE(ID, COLS, ROWS, PLANES) \
  { COLS * 8, ROWS * 8, PLANES, CRT_W / (COLS * 8), CRT_H / (ROWS * 8), true }

#define DEF_GPU_GFX_MODE(ID, W, H, PLANES) \
  { W, H, PLANES, CRT_W / W, CRT_H / H, false }

#define START_MODE 21
GpuMode kModes[] = {
  DEF_GPU_TXT_MODE(0, 20, 10, 4),
  DEF_GPU_TXT_MODE(1, 40, 25, 4),
  DEF_GPU_TXT_MODE(2, 80, 25, 2),
  DEF_GPU_TXT_MODE(3, 80, 50, 2),
  DEF_GPU_TXT_MODE(4, 80, 50, 1),

  DEF_GPU_GFX_MODE(5, 80, 50, 4),
  DEF_GPU_GFX_MODE(6, 80, 50, 2),
  DEF_GPU_GFX_MODE(7, 80, 50, 1),

  DEF_GPU_GFX_MODE(8, 128, 80, 4),
  DEF_GPU_GFX_MODE(9, 128, 80, 2),
  DEF_GPU_GFX_MODE(10, 128, 80, 1),

  DEF_GPU_GFX_MODE(11, 160, 80, 4),
  DEF_GPU_GFX_MODE(12, 160, 80, 2),
  DEF_GPU_GFX_MODE(13, 160, 80, 1),

  DEF_GPU_GFX_MODE(14, 160, 100, 4),
  DEF_GPU_GFX_MODE(15, 160, 100, 2),
  DEF_GPU_GFX_MODE(16, 160, 100, 1),

  DEF_GPU_GFX_MODE(17, 320, 100, 4),
  DEF_GPU_GFX_MODE(18, 320, 100, 2),
  DEF_GPU_GFX_MODE(19, 320, 100, 1),

  DEF_GPU_GFX_MODE(20, 320, 200, 4),
  DEF_GPU_GFX_MODE(21, 320, 200, 2),
  DEF_GPU_GFX_MODE(22, 320, 200, 1),

  DEF_GPU_GFX_MODE(23, 640, 200, 4),
  DEF_GPU_GFX_MODE(25, 640, 200, 2),
  DEF_GPU_GFX_MODE(26, 640, 200, 1),

  DEF_GPU_GFX_MODE(27, 640, 400, 2),
  DEF_GPU_GFX_MODE(28, 640, 400, 1)
};

inline void SetCrt(int X, int Y, Byte R, Byte G, Byte B)
{
  sCrt[(X*3) + (Y * 3 * CRT_W) + 0] = R;
  sCrt[(X*3) + (Y * 3 * CRT_W) + 1] = G;
  sCrt[(X*3) + (Y * 3 * CRT_W) + 2] = B;
}

inline void SetCrtScale(int X, int Y, Byte R, Byte G, Byte B, Byte px, Byte py)
{
  int xx = X * px;
  int yy = Y * py;
  for (int jj = 0; jj < py;jj++)
  {
    for(int ii=0;ii < px;ii++)
    {
      SetCrt(xx + ii, yy + jj, R, G, B);
    }
  }
}

inline void CrtCommitLine(int jj, int ww, int px, int py)
{
  int yOffset = jj * py;

  // Scale Horz (expand across)
  for(int x=0;x < ww;x++)
  {
    Byte r = sScanLine[(x * 3) + 0], g = sScanLine[(x * 3) + 1], b = sScanLine[(x * 3) + 2];
    for(int subX=0;subX < px;subX++)
    {
      SetCrt((x * px) + subX, yOffset, r, g, b);
    }
  }

  // Scale Vert (copy down)
  for(int y=1;y < py;y++)
  {
    memcpy(sCrt + (((y + yOffset) * 3 * CRT_W)), sCrt + (((0 + yOffset) * 3 * CRT_W)), CRT_W * 3);
  }
}

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
  memset(sScanLine, 0, CRT_W * 3);
  
  memset(sCrt, 0x00, CRT_W * CRT_H * CRT_DEPTH);

  GpuMmu_Set(Gpu_GFX_MODE_Relative, START_MODE); // 80x50
  GpuMmu_Set(Gpu_GFX_BGCOLR_Relative, 0x00);
  GpuMmu_Set(Gpu_GFX_BGCOLG_Relative, 0x00);
  GpuMmu_Set(Gpu_GFX_BGCOLB_Relative, 0x00);

  GpuMmu_Set(Gpu_GFX_SCNW0R_Relative, 0xFF);
  GpuMmu_Set(Gpu_GFX_SCNW0G_Relative, 0xFF);
  GpuMmu_Set(Gpu_GFX_SCNW0B_Relative, 0xFF);

  GpuMmu_Set(Gpu_GFX_SCNW1R_Relative, 0xFF);
  GpuMmu_Set(Gpu_GFX_SCNW1G_Relative, 0x00);
  GpuMmu_Set(Gpu_GFX_SCNW1B_Relative, 0x00);

  GpuMmu_Set(Gpu_GFX_SCNW2R_Relative, 0x00);
  GpuMmu_Set(Gpu_GFX_SCNW2G_Relative, 0xFF);
  GpuMmu_Set(Gpu_GFX_SCNW2B_Relative, 0x00);

  GpuMmu_Set(Gpu_GFX_SCNW3R_Relative, 0x00);
  GpuMmu_Set(Gpu_GFX_SCNW3G_Relative, 0x00);
  GpuMmu_Set(Gpu_GFX_SCNW3B_Relative, 0xFF);

  GpuMode* mode = &kModes[START_MODE];

  int modeW = mode->width;
  int modeH = mode->height;

  int addr = 0;
  for(int jj=0;jj < modeH;jj++)
  {
    for(int ii=0;ii < modeW;ii++)
    {
      if ((ii + jj) % 2 == 0)
      {
        int xy = FAST_XY(ii, jj, modeW);
        FAST_SET(xy);
      }
    }
  }

  sCrtDirty = true;
}

void Gpu_Teardown()
{
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

void Gpu_Cycle()
{
  Byte currentMode = GpuMmu_Get(Gpu_GFX_MODE_Relative);

  // Screen mode out of range.
  if (currentMode >= 33)
  {
    for (int ii = 0; ii < CRT_W; ii++)
    {
      for (int jj = 0; jj < CRT_H; jj++)
      {
        SetCrt(ii, jj, 255, 0, 0);
      }
    }
    sCrtDirty = true;
    return;
  }
  
  GpuMode* mode = &kModes[currentMode];
  
  int modeW = mode->width;
  int modeH = mode->height;
  int numPlanes = mode->planes;
  int planeSize = (modeW * modeH) / 8;

  Byte r = 0xFF, g = 0xFF, b = 0xFF;

  int lineIdx = 0;
  for (int jj = 0; jj < modeH; jj++)
  {
    // New line.
    //memset(sScanLine, 0, CRT_W * 3);

    r = GpuMmu_Get(Gpu_GFX_BGCOLR_Relative);
    g = GpuMmu_Get(Gpu_GFX_BGCOLG_Relative);
    b = GpuMmu_Get(Gpu_GFX_BGCOLB_Relative);

    // Background Colour.
    for (int ii = 0; ii < modeW; ii++)
    {
      sScanLine[lineIdx + 0] = r;
      sScanLine[lineIdx + 1] = g;
      sScanLine[lineIdx + 2] = b;
      lineIdx += 3;
    }

    for (int planeIdx = 0; planeIdx < numPlanes;planeIdx++)
    {
      int planeLayer = numPlanes - 1 - planeIdx;
      int memOffset = (planeLayer * planeSize) / sizeof(int);

      b = planeIdx * (256 / numPlanes);
      lineIdx = 0;

      switch(planeIdx)
      {
        case 0:
          r = GpuMmu_Get(Gpu_GFX_SCNW0R_Relative);
          g = GpuMmu_Get(Gpu_GFX_SCNW0G_Relative);
          b = GpuMmu_Get(Gpu_GFX_SCNW0B_Relative);
        break;
        case 1:
          r = GpuMmu_Get(Gpu_GFX_SCNW1R_Relative);
          g = GpuMmu_Get(Gpu_GFX_SCNW1G_Relative);
          b = GpuMmu_Get(Gpu_GFX_SCNW1B_Relative);
          break;
        case 2:
          r = GpuMmu_Get(Gpu_GFX_SCNW2R_Relative);
          g = GpuMmu_Get(Gpu_GFX_SCNW2G_Relative);
          b = GpuMmu_Get(Gpu_GFX_SCNW2B_Relative);
          break;
        case 3:
          r = GpuMmu_Get(Gpu_GFX_SCNW3R_Relative);
          g = GpuMmu_Get(Gpu_GFX_SCNW3G_Relative);
          b = GpuMmu_Get(Gpu_GFX_SCNW3B_Relative);
          break;
      }

      g -= jj;

      for(int ii=0;ii < modeW;ii++)
      {
        int xy = FAST_XY(ii, jj, modeW);
        int bit = !!(FAST_GETOFFSET(memOffset, xy));


        if (bit)
        {
          sScanLine[lineIdx + 0] = r;
          sScanLine[lineIdx + 1] = g;
          sScanLine[lineIdx + 2] = b;
        }

        lineIdx += 3;
      }
    }

    CrtCommitLine(jj, mode->width, mode->pixelW, mode->pixelH);
  }

  Byte ar = rand() % 255, ag = rand() % 255, ab = rand() % 255;

  SetCrt(0, 0, ar, ag, ab);
  SetCrt(0, 1, ar, ag, ab);
  SetCrt(1, 0, ar, ag, ab);
  SetCrt(1, 1, ar, ag, ab);
  
  sCrtDirty = true;
}

bool Crt_IsDirty()
{
  return sCrtDirty;
}

EXPORT void* GetCrt()
{
  sCrtDirty = false;
  return sCrt;
}
