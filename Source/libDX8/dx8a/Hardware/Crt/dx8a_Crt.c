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

#include <dx8a/dx8a.h>
#include <dx8a/Hardware/Crt/dx8a_Crt.h>
#include <dx8a/Hardware/Crt/dx8a_Crt_OSD.inc>

#include <stdlib.h>
#include <string.h>

#if defined(_WIN32)
#define EXPORT extern __declspec(dllexport)
#else
#error Platform not supported :(
#endif

Byte*    sGfxBuffers[2];
bool     sGfxBufferDirty;
Byte*    sGfxWriteBuffer, *sGfxReadBuffer;
Byte     sGfxHalt;
u32      sGfxCycle;
u32      sGfxFrame;
bool     sGfxWaitFrame;

void Crt_Setup()
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
}

void Crt_Teardown()
{
  free(sGfxBuffers[0]);
  free(sGfxBuffers[1]);
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
  
  Crt_MarkDirty();
}

void Crt_StartFrame()
{
}

void Crt_EndFrame()
{
  sGfxFrame++;

  Gpu_OSD_PastDecimal(sGfxWriteBuffer, sGfxFrame, 40, 40);
  Gpu_OSD_PastDecimal(sGfxWriteBuffer, sGfxFrame % 50, 40, 46);

  Crt_SwapBuffers();
  Crt_MarkDirty();
  sGfxCycle = 0;
  sGfxWaitFrame = 0;
}

Byte* Crt_GetWriteBuffer()
{
  return sGfxWriteBuffer;
}

Byte* Crt_GetReadBuffer()
{
  return sGfxReadBuffer;
}
