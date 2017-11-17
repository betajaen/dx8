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
#include "log_c/src/log.h"

#define SLOWDOWN_RATE 1

void Gpu_Clock();

// Step
//  CPU: 2x
//  MMU: 1x
//  GPU: 1x

inline void ClockOnce()
{
  //LOGF("**Clock");
  Cpu_Step();
  Cpu_Step();
  Gpu_Clock();
}

int Clock(int ms)
{
  int count = 0;
  if (ms < 0)
  {
    ClockOnce();
    count = 1;
  }
  else
  {
    // Temp: Take milliseconds into account.
    count = (CRT_SCAN_TOTAL_TIME / SLOWDOWN_RATE);
    for (int ii = 0; ii < count; ii++)
    {
      ClockOnce();
    }
  }

  return count;
}

void Mmu_TurnOn();
void Mmu_TurnOn();
void Gpu_TurnOn();

void TurnOn()
{
  LOGF("******* TURN ON");
  Mmu_TurnOn();
  Cpu_TurnOn();
  Gpu_TurnOn();
}

void Cpu_Reset();

void Reset(bool soft)
{
  if (soft)
  {
    Cpu_Reset();
  }
  else
  {
    Mmu_TurnOn();
    Cpu_TurnOn();
    Gpu_TurnOn();

    // "Called" by the MMU after setup.
    Mmu_Set(0, 0xFE);
    Cpu_Reset();
  }
}

