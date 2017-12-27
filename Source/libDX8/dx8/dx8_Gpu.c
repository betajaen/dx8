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

#include "dx8_Gpu_OSD.inc"

#define TEXT_TEST

#if defined(_WIN32)
#define EXPORT extern __declspec(dllexport)
#else
#error Platform not supported :(
#endif

void Gpu_Scanline_Setup();
void Gpu_Clock_Scanline(Byte* writeBuffer, u32 subCycle);
void Gpu_Scanline_EndFrame();

Byte*    sGfxBuffers[2];
bool     sGfxBufferDirty;
Byte*    sGfxWriteBuffer, *sGfxReadBuffer;
Byte     sGfxHalt;
u32      sGfxCycle;
u32      sGfxFrame;
bool     sGfxWaitFrame;

void Gpu_Setup()
{
  sGfxFrame = 0;
  sGfxCycle = 0;
  sGfxBuffers[0] = malloc(DX8_GFX_BUFFER_SIZE);
  sGfxBuffers[1] = malloc(DX8_GFX_BUFFER_SIZE);

  for(int i=0;i < DX8_GFX_BUFFER_SIZE - 3;i += 3)
  {
    sGfxBuffers[0][i+0] = 0xFF;
    sGfxBuffers[0][i+1] = 0x00;
    sGfxBuffers[0][i+2] = 0x00;
  
    sGfxBuffers[1][i+0] = 0x00;
    sGfxBuffers[1][i+1] = 0x00;
    sGfxBuffers[1][i+2] = 0xFF;
  }

  sGfxWriteBuffer = sGfxBuffers[0];
  sGfxReadBuffer = sGfxBuffers[1];
  
  sGfxBufferDirty = true;

  Gpu_Scanline_Setup();

  DX8_LOGF("DX8_GFX_RESOLUTION = %i Px"                     , DX8_GFX_RESOLUTION              );
  DX8_LOGF("DX8_GFX_SCANLINES = %i Scanlines"               , DX8_GFX_SCANLINES               );
  DX8_LOGF("DX8_GFX_WIDTH = %i Px"                          , DX8_GFX_WIDTH                   );
  DX8_LOGF("DX8_GFX_HEIGHT = %i Px"                         , DX8_GFX_HEIGHT                  );
  DX8_LOGF("DX8_GFX_BYTES_PER_PIXEL = %i Bytes"             , DX8_GFX_BYTES_PER_PIXEL         );
  DX8_LOGF("DX8_GFX_PIXELS_PER_GFX_CYCLE = %i Px"           , DX8_GFX_PIXELS_PER_GFX_CYCLE    );
  DX8_LOGF("DX8_GFX_BUFFER_SIZE = %i Bytes"                 , DX8_GFX_BUFFER_SIZE             );
  DX8_LOGF("DX8_GFX_CYCLES_PER_SCANLINE = %i Cycles"        , DX8_GFX_CYCLES_PER_SCANLINE     );
  DX8_LOGF("DX8_GFX_CYCLES_PER_FRAME = %i Cycles"           , DX8_GFX_CYCLES_PER_FRAME        );
  DX8_LOGF("DX8_GFX_HBLANK_PX = %i Px"                      , DX8_GFX_HBLANK_PX               );
  DX8_LOGF("DX8_GFX_HBLANK_LEFT_PX = %i Px"                 , DX8_GFX_HBLANK_LEFT_PX          );
  DX8_LOGF("DX8_GFX_HBLANK_RIGHT_PX = %i Px"                , DX8_GFX_HBLANK_RIGHT_PX         );
  DX8_LOGF("DX8_GFX_HBLANK_START = %i Cycles"               , DX8_GFX_HBLANK_START            );
  DX8_LOGF("DX8_GFX_HBLANK_CYCLES = %i Cycles"              , DX8_GFX_HBLANK_CYCLES           );
  DX8_LOGF("DX8_GFX_VBLANK_SCANLINES = %i Scanlines"        , DX8_GFX_VBLANK_SCANLINES        );
  DX8_LOGF("DX8_GFX_VBLANK_CYCLES = %i Cycles"              , DX8_GFX_VBLANK_CYCLES           );
  DX8_LOGF("DX8_GFX_VBLANK_TOP_SCANLINES = %i Scanlines"    , DX8_GFX_VBLANK_TOP_SCANLINES    );
  DX8_LOGF("DX8_GFX_VBLANK_BOTTOM_SCANLINES = %i Scanlines" , DX8_GFX_VBLANK_BOTTOM_SCANLINES );
  DX8_LOGF("DX8_GFX_VBLANK_START = %i Cycles"               , DX8_GFX_VBLANK_START            );
  DX8_LOGF("DX8_GFX_VBLANK_TOP_CYCLES = %i Cycles"          , DX8_GFX_VBLANK_TOP_CYCLES       );
  DX8_LOGF("DX8_GFX_VBLANK_BOTTOM_CYCLES = %i Cycles"       , DX8_GFX_VBLANK_BOTTOM_CYCLES    );
  DX8_LOGF("DX8_PAL_HZ = %f Hz"                             , DX8_PAL_HZ                      );
  DX8_LOGF("DX8_CLOCK_GPU = %i Cycles"                      , DX8_CLOCK_GPU                   );
  DX8_LOGF("DX8_CLOCK_CPU_MZ = %f MHz"                      , DX8_CLOCK_CPU_MZ                );
  DX8_LOGF("DX8_CLOCK_GPU = %i Cycles"                      , DX8_CLOCK_CPU                   );
  DX8_LOGF("DX8_CLOCK_GPU_MZ = %f MHz"                      , DX8_CLOCK_GPU_MZ                );
}

void Gpu_Teardown()
{
  free(sGfxBuffers[0]);
  free(sGfxBuffers[1]);
}

void Gpu_TurnOn()
{
  sGfxHalt = true;

  //memset(sGfxBuffers[0], 0x00, DX8_GFX_BUFFER_SIZE);
 // memset(sGfxBuffers[1], 0x00, DX8_GFX_BUFFER_SIZE);

  // TODO: Registers here.

  DX8_LOGF("GPU Turn On.");
}

EXPORT void* GetCrt()
{
  sGfxBufferDirty = false;
  return sGfxReadBuffer;
}

bool Crt_IsDirty()
{
  return sGfxBufferDirty;
}

void Crt_MarkDirty()
{
  sGfxBufferDirty = true;
}

void Crt_SwapBuffers()
{
  if (sGfxReadBuffer == sGfxBuffers[0])
  {
    sGfxReadBuffer = sGfxBuffers[1];
    sGfxWriteBuffer = sGfxBuffers[0];
  }
  else
  {
    sGfxReadBuffer = sGfxBuffers[0];
    sGfxWriteBuffer = sGfxBuffers[1];
  }
  memset(sGfxWriteBuffer, 0, DX8_GFX_BUFFER_SIZE);
}

void Gpu_On()
{
  sGfxHalt = false;
}

void Gpu_Clock(u32 subCycle)
{
  
  if (sGfxHalt == 1)
    return;
  
  if (sGfxCycle < DX8_GFX_VBLANK_TOP_CYCLES)
  {
    // VBlank top Period
  }
  else if (sGfxCycle > DX8_GFX_VBLANK_BOTTOM_CYCLES)
  {
    // VBlank bottom Period
  }
  else // if (sGfxWaitFrame == false)
  {
    // HBlank or visible period
    Gpu_Clock_Scanline(sGfxWriteBuffer, subCycle);
  }

  if (subCycle == 3)
  {
    sGfxCycle++;
  
    if (sGfxCycle == DX8_GFX_CYCLES_PER_FRAME)
    {
      sGfxFrame++;
      // End of Frame.
      Gpu_Scanline_EndFrame();
    
      Gpu_OSD_PastDecimal(sGfxWriteBuffer, sGfxFrame, 40, 40);
      Gpu_OSD_PastDecimal(sGfxWriteBuffer, sGfxFrame % 50, 40, 46);

      Crt_SwapBuffers();
      Crt_MarkDirty();
      sGfxCycle = 0;
      sGfxWaitFrame = 0;
    }
  }
}

int Gpu_GetTimer()
{
  return sGfxCycle;
}
