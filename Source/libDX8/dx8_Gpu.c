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

Byte* sCrt;
bool  sCrtDirty;
Byte* sGpuMem;
Byte* sSharedRam;
int*  sSharedRamInt;
Byte* sScanLine;
Byte*  sGpuMemLines;

Byte* Shared_GetPtr();

typedef struct 
{
  int  width;
  int  height;
  int  planes;
  int  pixelW;
  int  pixelH;
  bool isText;
  int  planeSize;
} GpuMode;

#define FAST_XY(X, Y, W)   (X + (Y * W))
#define FAST_SET(XY)       sSharedRamInt[XY>>5] |= (1 << (XY&31))
#define FAST_CLR(XY)       sSharedRamInt[XY>5] &= ~(1 << (XY&31))
#define FAST_GET(XY)       (sSharedRamInt[XY>>5] & 1 << (XY&31))
#define FAST_GETOFFSET(OFFSET,XY)       (sSharedRamInt[OFFSET + (XY>>5)] & 1 << (XY&31))

#define DEF_GPU_TXT_MODE(ID, COLS, ROWS, PLANES) \
  { COLS * 8, ROWS * 8, PLANES, CRT_W / (COLS * 8), CRT_H / (ROWS * 8), true, 8 * COLS * ROWS }

#define DEF_GPU_GFX_MODE(ID, W, H, PLANES) \
  { W, H, PLANES, CRT_W / W, CRT_H / H, false, (W * H / 8)}

#define START_MODE 3
GpuMode kModes[] = {
  DEF_GPU_TXT_MODE(0,  10,   8,  2),
  DEF_GPU_TXT_MODE(1,  10,  16,  2),
  DEF_GPU_TXT_MODE(2,  20,  32,  2),
  DEF_GPU_GFX_MODE(3,  320, 256, 4),
};
#define MAX_GFX_MODES 4

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
  sGpuMemLines = malloc((CRT_W * 4) / 8);
  memset(sScanLine, 0, CRT_W * 3);
  
  memset(sCrt, 0x00, CRT_W * CRT_H * CRT_DEPTH);

  GpuMmu_Set(Gpu_GFX_MODE_Relative, START_MODE);
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

  LOGF("GPU Crt = Ptr=%p Size=%ix%ix%i", sCrt, CRT_W, CRT_H, CRT_DEPTH);
  LOGF("GPU ScaneLine = Ptr=%p Size=%i", sScanLine, CRT_W * 3);

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

void Gpu_Cycle_Once()
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
    lineIdx = 0;
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
      //b = planeIdx * (256 / numPlanes);
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

int GpuFrame = 0;  //
int GpuTimer = 0;  //

void Gpu_Coroutine()
{
  // 320x256 pixels
  // upto 4  planes
  // Screen mode is inconsistent.
  // So we should go by scanline only, and probe per pixel in the depth buffer.
  // Each crt pixel scan be 1, 2, or 4 pixels in size (resolution).
  // Smaller resolutions is writing the pixel twice or four times in the row, and then coping the scanline downwards.
  
  // Pixels are square.
  // 320x256/1 = 81,920
  // 320x256/2 = 40,960
  // 320x256/4 = 20,480

  // 360*256 Operations
  // 320 is the display resolution but there are 40 more cycles for the electron beam to get back to left down
  // In those 40 cycles interrupt is called which can be used to changed colours, prepare ram, etc.
  
  Byte modeId = GpuMmu_Get(Gpu_GFX_MODE_Relative);
  if (modeId >= MAX_GFX_MODES)
  {
    // Display resolution not supported.
    return; // Don't display anything.
  }
  
  GpuMode* mode = &kModes[modeId];
  int pixelSize = mode->pixelW;
  int scanline = GpuTimer / CRT_SCAN_H; // Y-pos in CRT.
  int scanpos  = GpuTimer % CRT_SCAN_W; // X-pos in CRT.
  
  // V-Blank Phase.
  if (scanline >= CRT_V_BLANK)
  {
    if (GpuTimer >= CRT_SCAN_TOTAL_TIME)
    {
      GpuTimer = GpuTimer % CRT_SCAN_TOTAL_TIME;
    }
    return;
  }

  int scanx = scanpos - CRT_H_BLANK;
  int scany = scanline;

  // H-Blank Phase
  if (scanpos < CRT_H_BLANK)
  {
    switch(pixelSize)
    {
      case 1:
       // memcpy(sCrt + (scany - 1) * CRT_W, sScanLine, CRT_W * 3);
      break;
      case 2:
       // memcpy(sCrt + (scany - 1) * CRT_W, sScanLine, CRT_W * 3);
        // Add wait cycles here to account for the extra work?
      break;
      case 4:
       // memcpy(sCrt + (scany - 1) * CRT_W, sScanLine, CRT_W * 3);
        // Add wait cycles here to account for the extra work?
      break;
    }
    // Start of new line.
    // @TODO Call interrupt!
    return;
  }
  
  int resx = scanx / pixelSize;
  int resy = scany / pixelSize;

  int xy = FAST_XY(resx, resy, mode->width);
  int bit = !!(FAST_GETOFFSET(0, xy));

  if (bit)
  {
    switch(pixelSize)
    {
      default:
      case 1:
        sScanLine[(scanx * 3) + 0] = 0xFF; // R
        sScanLine[(scanx * 3) + 1] = 0xFF; // G
        sScanLine[(scanx * 3) + 2] = 0xFF; // B
      break;
      case 2:
        sScanLine[(scanx * 3) + 0] = 0xFF; // R
        sScanLine[(scanx * 3) + 1] = 0xFF; // G
        sScanLine[(scanx * 3) + 2] = 0xFF; // B
        
        sScanLine[(scanx * 3) + 3] = 0xFF; // R
        sScanLine[(scanx * 3) + 4] = 0xFF; // G
        sScanLine[(scanx * 3) + 5] = 0xFF; // B
      break;
      case 4:
        sScanLine[(scanx * 3) + 0] = 0xFF; // R
        sScanLine[(scanx * 3) + 1] = 0xFF; // G
        sScanLine[(scanx * 3) + 2] = 0xFF; // B

        sScanLine[(scanx * 3) + 3] = 0xFF; // R
        sScanLine[(scanx * 3) + 4] = 0xFF; // G
        sScanLine[(scanx * 3) + 5] = 0xFF; // B
        
        sScanLine[(scanx * 3) + 6] = 0xFF; // R
        sScanLine[(scanx * 3) + 7] = 0xFF; // G
        sScanLine[(scanx * 3) + 8] = 0xFF; // B
        
        sScanLine[(scanx * 3) + 9] = 0xFF; // R
        sScanLine[(scanx * 3) +10] = 0xFF; // G
        sScanLine[(scanx * 3) +11] = 0xFF; // B
      break;
    }
  }
}

Word     frame, currentFrame;
GpuMode* currentMode;
Byte     lineR[16], lineG[16], lineB[16];
int      scanpos, scanline;

void Gpu_FrameStart()
{
  Byte modeId = GpuMmu_Get(Gpu_GFX_MODE_Relative);
  if (modeId >= MAX_GFX_MODES)
  {
    // ?????
    // Display resolution not supported.
    LOGF("Unknown Display Mode!!! %i", modeId);
    return; // Don't display anything.
  }

  currentMode = &kModes[modeId];

  LOGF("Mode = %i", GpuMmu_Get(Gpu_GFX_MODE_Relative));
  LOGF("Plane Size = %i", currentMode->planeSize);
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

  //memset(sScanLine, 0xFF, CRT_W * 3); // Temp
  sCrtDirty = true; // Temp
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

    GpuMmu_Set(Gpu_GFX_SCNW0R_Relative, scanline);
    Cpu_Interrupt(CPU_HBLANK);

    // Fetch current Graphics mem, and cache it.
    // Graphics and Text mode stuff here, so we don't have to do it per coroutine.
    memcpy(sGpuMemLines + (0 * GPU_BUFFER_W), sSharedRam + (currentMode->planeSize * 0) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
    memcpy(sGpuMemLines + (1 * GPU_BUFFER_W), sSharedRam + (currentMode->planeSize * 1) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
    memcpy(sGpuMemLines + (2 * GPU_BUFFER_W), sSharedRam + (currentMode->planeSize * 2) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
    memcpy(sGpuMemLines + (3 * GPU_BUFFER_W), sSharedRam + (currentMode->planeSize * 3) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);

  }

  if (scanpos < CRT_H_BLANK)
  {
    // Wait. Cpu can be doing things here.
    return false;
  }

  return true;
}

void Gpu_Coroutine_1()
{
  if (Gpu_Coroutine_Common() == false)
    return;

  // Okay draw.
  int x = scanpos - CRT_H_BLANK;
  int y = scanline;

  if (x == 0)
  {
    int lineR1 = 0xFF; // GpuMmu_Get(Gpu_GFX_SCNW0R_Relative);
    int lineG1 = 0x00; // GpuMmu_Get(Gpu_GFX_SCNW0G_Relative);
    int lineB1 = 0x00; // GpuMmu_Get(Gpu_GFX_SCNW0B_Relative);
    int lineR2 = 0x00; // GpuMmu_Get(Gpu_GFX_SCNW1R_Relative);
    int lineG2 = 0xFF; // GpuMmu_Get(Gpu_GFX_SCNW1G_Relative);
    int lineB2 = 0x00; // GpuMmu_Get(Gpu_GFX_SCNW1B_Relative);
    int lineR3 = 0x00; // GpuMmu_Get(Gpu_GFX_SCNW2R_Relative);
    int lineG3 = 0x00; // GpuMmu_Get(Gpu_GFX_SCNW2G_Relative);
    int lineB3 = 0xFF; // GpuMmu_Get(Gpu_GFX_SCNW2B_Relative);
    int lineR4 = 0xFF; // GpuMmu_Get(Gpu_GFX_SCNW3R_Relative);
    int lineG4 = 0x00; // GpuMmu_Get(Gpu_GFX_SCNW3G_Relative);
    int lineB4 = 0xFF; // GpuMmu_Get(Gpu_GFX_SCNW3B_Relative);
    int backR  = 0x00; // GpuMmu_Get(Gpu_GFX_BGCOLR_Relative);
    int backG  = 0x00; // GpuMmu_Get(Gpu_GFX_BGCOLG_Relative);
    int backB  = 0x00; // GpuMmu_Get(Gpu_GFX_BGCOLB_Relative);

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
  col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 0) + offset] & bitShift)));
  col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 1) + offset] & bitShift))) << 1;
  col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 2) + offset] & bitShift))) << 2;
  col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 3) + offset] & bitShift))) << 3;

  sScanLine[(x * 3) + 0] = lineR[col];
  sScanLine[(x * 3) + 1] = lineG[col];
  sScanLine[(x * 3) + 2] = lineB[col];
}

void Gpu_Clock()
{
  Gpu_Coroutine_1();
  GpuTimer++;
  if (GpuTimer == CRT_SCAN_TOTAL_TIME)
  {
    GpuTimer = 0;
    frame++;
  }
  // Gpu_Cycle_Once();
}

int Gpu_GetTimer()
{
  return GpuTimer;
}
