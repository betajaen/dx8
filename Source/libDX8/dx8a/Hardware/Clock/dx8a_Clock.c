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
#include <dx8a/Hardware/Clock/dx8a_Clock.h>
#include <dx8a/Hardware/Cpu160000/dx8a_Cpu160000.h>

#define BUS_CLOCKS_PER_TOP_VBLANK       28864
#define BUS_CLOCKS_PER_BOTTOM_VBLANK    28480
#define BUS_CLOCKS_VISIBLE              262144

void Gpu_Clock(u32 subCycle);
void Crt_StartFrame();
void Crt_EndFrame();
void Video_StartFrame();
void Video_EndFrame();

static void Clock_StartFrame()
{
  Crt_StartFrame();
  Crt_EndFrame();
}

static void Clock_EndFrame()
{
  Video_EndFrame();
  Crt_EndFrame();
}

static void Clock_Frames_Accurate(u32 numFrames)
{
  while(numFrames-- > 0)
  {
  
    Clock_StartFrame();

    // Upper V-Blank Area
    // Video is Disabled
    for(u32 ii=0;ii < BUS_CLOCKS_PER_TOP_VBLANK;ii++)
    {
      Cpu16_BusClock(8);
      // RESERVED: For IO.0
      // RESERVED: For IO.1
      // RESERVED: For EXPANSION.0
      // RESERVED: For EXPANSION.1
    }

    // Visible Area
    // Video is Enabled
    for (u32 ii = 0; ii < BUS_CLOCKS_VISIBLE; ii++)
    {
      Gpu_Clock(0);
      Cpu16_BusClock(1);
      // RESERVED: For IO.n
      Cpu16_BusClock(1);
      Gpu_Clock(1);
      Cpu16_BusClock(1);
      // RESERVED: For IO.n
      Cpu16_BusClock(1);
      Gpu_Clock(2);
      Cpu16_BusClock(1);
      // RESERVED: For EXPANSION.n
      Cpu16_BusClock(1);
      Gpu_Clock(3);
      Cpu16_BusClock(1);
      // RESERVED: For EXPANSION.n
      Cpu16_BusClock(1);
    }
    
    // Lower V-Blank Area
    // Video is Disabled
    for(u32 ii=0;ii < BUS_CLOCKS_PER_TOP_VBLANK;ii++)
    {
      Cpu16_BusClock(8);
      // RESERVED: For IO.0
      // RESERVED: For IO.1
      // RESERVED: For EXPANSION.0
      // RESERVED: For EXPANSION.1
    }

    Clock_EndFrame();
  }
}

static void Clock_Frames_Fast(u32 numFrames)
{
  while(numFrames-- > 0)
  {
    Clock_StartFrame();

    // Upper V-Blank Area
    // Video is Disabled
    for(u32 ii=0;ii < BUS_CLOCKS_PER_TOP_VBLANK;ii++)
    {
      Cpu16_BusClock(8);
      // RESERVED: For IO.0
      // RESERVED: For IO.1
      // RESERVED: For EXPANSION.0
      // RESERVED: For EXPANSION.1
    }

    // Visible Area
    // Video is Enabled
    for (u32 ii = 0; ii < BUS_CLOCKS_VISIBLE; ii++)
    {
      Gpu_Clock(0);
      Gpu_Clock(1);
      Gpu_Clock(2);
      Gpu_Clock(3);
      Cpu16_BusClock(8);
      // RESERVED: For IO.0
      // RESERVED: For IO.1
      // RESERVED: For EXPANSION.0
      // RESERVED: For EXPANSION.1
    }
    
    // Lower V-Blank Area
    // Video is Disabled
    for(u32 ii=0;ii < BUS_CLOCKS_PER_TOP_VBLANK;ii++)
    {
      Cpu16_BusClock(8);
      // RESERVED: For IO.0
      // RESERVED: For IO.1
      // RESERVED: For EXPANSION.0
      // RESERVED: For EXPANSION.1
    }

    Clock_EndFrame();
  }
}

void Clock_Frame(u32 numFrames, u32 clockAccuracy)
{
  switch(clockAccuracy)
  {
    case CLK_Fast:
      Clock_Frames_Fast(numFrames);
    break;
    case CLK_Accurate:
      Clock_Frames_Accurate(numFrames);
    break;
  }
}
