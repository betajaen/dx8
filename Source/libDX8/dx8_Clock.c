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

#include <stdlib.h>
#include <time.h> 

#define SLOWDOWN_RATE 1

void Gpu_Clock();
void Keyboard_Tick();
void Floppy_Clock();
void Sound_Clock();
void Sound_ClockFrame();

int ClockMilliseconds;
int ClockCycle;
int ClockNumFrames;

int Clock(int ms)
{
  int count = 0;
  int ioClock = 0;
  
  ClockMilliseconds += ms;

  // Temp: Take milliseconds into account.
  for (int ii = 0; ii < DX8_CLOCK_GPU; ii++)
  {
    Cpu_Step();
    Cpu_Step();
    Cpu_Step();
    Cpu_Step();
    Cpu_Step();
    Cpu_Step();
    Cpu_Step();
    Cpu_Step();
    Gpu_Clock();

    ioClock++;
      
    if (ioClock == 256)
    {
      Keyboard_Tick();
      Sound_Clock();
      ioClock = 0;
    }

    Floppy_Clock();

    ClockCycle = ii;
  }
  ClockNumFrames++;

  Sound_ClockFrame();
  return count;
}

void Mmu_TurnOn();
void Mmu_TurnOn();
void Gpu_TurnOn();

void TurnOn()
{
  srand((uint32_t) time(NULL));
  ClockCycle   = 0;
  ClockMilliseconds = 0;

  DX8_LOGF("******* TURN ON");
  Mmu_TurnOn();
  Cpu_TurnOn();
  Gpu_TurnOn();
}

void Cpu_Reset();
void Sound_Reset();

void Reset(bool soft)
{
  if (soft)
  {
    Sound_Reset();
    Cpu_Reset();
  }
  else
  {
    Sound_Reset();
    Mmu_TurnOn();
    Cpu_TurnOn();
    Gpu_TurnOn();

    // "Called" by the MMU after setup.
    Mmu_Set(0, 0xFE);
    Cpu_Reset();
  }
}

int Clock_GetCycle()
{
  return ClockCycle;
}

int Clock_GetMilliseconds()
{
  return ClockMilliseconds;
}

int Clock_GetFrame()
{
  return ClockNumFrames;
}