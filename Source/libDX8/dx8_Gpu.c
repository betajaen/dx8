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

#define TEXT_TEST

#if defined(_WIN32)
#define EXPORT extern __declspec(dllexport)
#else
#error Platform not supported :(
#endif

Byte*    sCrt;
bool     sCrtDirty;
Byte*    sScanLineTarget;
Byte*    sLineCache;
Byte*    sBufferRam;
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
  sCrt = malloc(CRT_W * CRT_H * CRT_DEPTH);
  sScanLineTarget = malloc(CRT_W * 3);
  sLineCache = malloc((CRT_W * 4) / 8);
  
  sBufferRam = Ram_Get(); 

  sCrtDirty = true;
}

void Gpu_Teardown()
{
  free(sLineCache);
  free(sScanLineTarget);
  free(sCrt);
}

void Gpu_TurnOn()
{
  Gpu_Halt = true;

  memset(sScanLineTarget, 0, CRT_W * 3);
  memset(sCrt, 0x00, CRT_W * CRT_H * CRT_DEPTH);

  LOGF("GPU Pre-init");

  Mmu_Set(REG_GFX_PLANES_COUNT, 0x01);
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

  LOGF("GPU Turn On.");
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

void Gpu_FrameStart()
{
  // Reset Colours
  // Mmu_Set(REG_GFX_BACKGROUND_COLOUR + 0, 0x3B);
  // Mmu_Set(REG_GFX_BACKGROUND_COLOUR + 1, 0x3F);
  // Mmu_Set(REG_GFX_BACKGROUND_COLOUR + 2, 0x42);
  // 
  // Mmu_Set(REG_GFX_PLANE0_COLOUR + 0, 0xFE);
  // Mmu_Set(REG_GFX_PLANE0_COLOUR + 1, 0xFE);
  // Mmu_Set(REG_GFX_PLANE0_COLOUR + 2, 0xFE);
  // 
  // Mmu_Set(REG_GFX_PLANE1_COLOUR + 0, 0xF2);
  // Mmu_Set(REG_GFX_PLANE1_COLOUR + 1, 0x4C);
  // Mmu_Set(REG_GFX_PLANE1_COLOUR + 2, 0x27);
  // 
  // Mmu_Set(REG_GFX_PLANE2_COLOUR + 0, 0xFB);
  // Mmu_Set(REG_GFX_PLANE2_COLOUR + 1, 0xBA);
  // Mmu_Set(REG_GFX_PLANE2_COLOUR + 2, 0x42);
  // 
  // Mmu_Set(REG_GFX_PLANE3_COLOUR + 0, 0x56);
  // Mmu_Set(REG_GFX_PLANE3_COLOUR + 1, 0xB9);
  // Mmu_Set(REG_GFX_PLANE3_COLOUR + 2, 0xD0);

  tilesAddr = Mmu_GetWord(REG_GFX_TILES_ADDR);

 //  LOGF("Tiles address = $%4X", tilesAddr);

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

  // LOGF("Counters= $%2X Seconds = $%2X Frames = $%2X", counters, seconds, numFrames);

  Mmu_Set(REG_GFX_COUNTERS, counters);
  Mmu_Set(REG_GFX_SECOND_NUM, seconds & 0xFF);
  Mmu_Set(REG_GFX_FRAME_NUM, numFrames);

  numPlanes = Mmu_Get(REG_GFX_PLANES_COUNT);

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
  memcpy(sCrt + offset, sScanLineTarget, CRT_W * 3);
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

    // Fetch current Graphics mem, and cache it.
    // Graphics and Text mode stuff here, so we don't have to do it per coroutine.
    switch(numPlanes)
    {
      case 1:
      {
        memcpy(sLineCache + (0 * GPU_BUFFER_W), sBufferRam + MEM_SHARED_ADDR + (GPU_PLANE_SIZE * 0) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
      }
      case 2:
      {
        memcpy(sLineCache + (0 * GPU_BUFFER_W), sBufferRam + MEM_SHARED_ADDR + (GPU_PLANE_SIZE * 0) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
        memcpy(sLineCache + (1 * GPU_BUFFER_W), sBufferRam + MEM_SHARED_ADDR + (GPU_PLANE_SIZE * 1) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
      }
      case 4:
      {

        // LOGF("Y = %i  Row = %i", y, rows);

        #if defined(TEXT_TEST)
          // TEXT MODES.
          memcpy(sLineCache + (0 * GPU_BUFFER_W), sBufferRam + MEM_SHARED_ADDR + (GPU_PLANE_SIZE * 0) + (rows * GPU_BUFFER_W), GPU_BUFFER_W);
          memcpy(sLineCache + (1 * GPU_BUFFER_W), sBufferRam + MEM_SHARED_ADDR + (GPU_PLANE_SIZE * 1) + (rows * GPU_BUFFER_W), GPU_BUFFER_W);
          memcpy(sLineCache + (2 * GPU_BUFFER_W), sBufferRam + MEM_SHARED_ADDR + (GPU_PLANE_SIZE * 2) + (rows * GPU_BUFFER_W), GPU_BUFFER_W);
          memcpy(sLineCache + (3 * GPU_BUFFER_W), sBufferRam + MEM_SHARED_ADDR + (GPU_PLANE_SIZE * 3) + (rows * GPU_BUFFER_W), GPU_BUFFER_W);
        #else
          // ORIGINAL.
          memcpy(sGpuMemLines + (0 * GPU_BUFFER_W), sSharedRam + (GPU_PLANE_SIZE * 0) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
          memcpy(sGpuMemLines + (1 * GPU_BUFFER_W), sSharedRam + (GPU_PLANE_SIZE * 1) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
          memcpy(sGpuMemLines + (2 * GPU_BUFFER_W), sSharedRam + (GPU_PLANE_SIZE * 2) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
          memcpy(sGpuMemLines + (3 * GPU_BUFFER_W), sSharedRam + (GPU_PLANE_SIZE * 3) + (scanline * GPU_BUFFER_W), GPU_BUFFER_W);
        #endif
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
  switch(numPlanes)
  {
    case 1:
    {
      Byte character, glyphLine;

      character = sLineCache[(GPU_BUFFER_W * 0) + offset] - ' ';
      glyphLine = Mmu_Get(tilesAddr + character + charRow);
      col |= !!(glyphLine & bitShift);
    }
    break;
    case 2:
    {
      Byte character, glyphLine;

      character = sLineCache[(GPU_BUFFER_W * 0) + offset] - ' ';
      glyphLine = Mmu_Get(tilesAddr + character + charRow);
      col |= !!(glyphLine & bitShift);

      character = sLineCache[(GPU_BUFFER_W * 1) + offset] - ' ';
      glyphLine = Mmu_Get(tilesAddr + character + charRow);
      col |= !!(glyphLine & bitShift) << 1;
    }
    break;
    case 4:
    {
      #if defined(TEXT_TEST)
        Byte character, glyphLine;

        character = sLineCache[(GPU_BUFFER_W * 0) + offset] - ' ';
        glyphLine = Mmu_Get(tilesAddr + character + charRow);
        col |= !!(glyphLine & bitShift);

        character = sLineCache[(GPU_BUFFER_W * 1) + offset] - ' ';
        glyphLine = Mmu_Get(tilesAddr + character + charRow);
        col |= !!(glyphLine & bitShift) << 1;

        character = sLineCache[(GPU_BUFFER_W * 2) + offset] - ' ';
        glyphLine = Mmu_Get(tilesAddr + character + charRow);
        col |= !!(glyphLine & bitShift) << 2;

        character = sLineCache[(GPU_BUFFER_W * 2) + offset] - ' ';
        glyphLine = Mmu_Get(tilesAddr + character + charRow);
        col |= !!(glyphLine & bitShift) << 3;
        
      #else
        col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 0) + offset] & bitShift)));
        col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 1) + offset] & bitShift))) << 1;
        col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 2) + offset] & bitShift))) << 2;
        col |= (!!((sGpuMemLines[(GPU_BUFFER_W * 3) + offset] & bitShift))) << 3;
      #endif

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
#define GPU_RETURN     GPU_DATA.op = 0xFF; LOGF("Returned Gpu Coop");return 1;
#define GPU_YIELD_FAIL GPU_DATA.state = 0xFF; GPU_DATA.op = 0xFF; LOGF("Failed Gpu Coop"); return -1;

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
