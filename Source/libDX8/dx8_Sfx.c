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
#include <math.h>

#if defined(_WIN32)
#define EXPORT extern __declspec(dllexport)
#else
#error Platform not supported :(
#endif

const float kSound_Gain = 32.0f;

Byte  sSound_Channel0_Mode  = 0;
Byte  sSound_Channel1_Mode  = 0;
float sSound_Channel0_Param = 0;
float sSound_Channel1_Param = 0;

float sSound_Channel0_Frequency = 0;
float sSound_Channel1_Frequency = 1;

float sSound_Channel0_Phase     = 0;
float sSound_Channel1_Phase     = 1;

float kSineFrequencies[] = {
  16.35f,
  17.32f,
  18.35f,
  19.45f,
  20.6f,
  21.83f,
  23.12f,
  24.5f,
  25.96f,
  27.5f,
  29.14f,
  30.87f,
  32.7f,
  34.65f,
  36.71f,
  38.89f,
  41.2f,
  43.65f,
  46.25f,
  49.0f,
  51.91f,
  55.0f,
  58.27f,
  61.74f,
  65.41f,
  69.3f,
  73.42f,
  77.78f,
  82.41f,
  87.31f,
  92.5f,
  98.0f,
  103.83f,
  110.0f,
  116.54f,
  123.47f,
  130.81f,
  138.59f,
  146.83f,
  155.56f,
  164.81f,
  174.61f,
  185.0f,
  196.0f,
  207.65f,
  220.0f,
  233.08f,
  246.94f,
  261.63f,
  277.18f,
  293.66f,
  311.13f,
  329.63f,
  349.23f,
  369.99f,
  392.0f,
  415.3f,
  440.0f,
  466.16f,
  493.88f,
  523.25f,
  554.37f,
  587.33f,
  622.25f,
  659.25f,
  698.46f,
  739.99f,
  783.99f,
  830.61f,
  880.0f,
  932.33f,
  987.77f,
  1046.5f,
  1108.73f,
  1174.66f,
  1244.51f,
  1318.51f,
  1396.91f,
  1479.98f,
  1567.98f,
  1661.22f,
  176.0f,
  1864.6f,
  1975.5f,
  209.0f,
  2217.4f,
  2349.3f,
  2489.0f,
  2637.0f,
  2793.8f,
  2959.9f,
  3135.9f,
  3322.4f,
  352.0f,
  3729.3f,
  3951.0f,
  4186.0f,
  4434.9f,
  4698.6f,
  4978.0f,
  5274.0f,
  5587.6f,
  5919.9f,
  6271.9f,
  6644.8f,
  704.0f,
  7458.6f,
  7902.13f,
};

void Sound_Reset()
{
  Mmu_Set(REG_SND_MODE_0, 0);
  Mmu_Set(REG_SND_MODE_1, 0);
  Mmu_Set(REG_SND_PARM_0, 0);
  Mmu_Set(REG_SND_PARM_1, 0);
  sSound_Channel0_Mode = 0;
  sSound_Channel0_Param = 0;
  sSound_Channel0_Phase = 0.0f;
  sSound_Channel1_Mode = 0;
  sSound_Channel1_Param = 0;
  sSound_Channel1_Phase = 0.0f;
}

void Sound_Clock()
{
  sSound_Channel0_Mode   = Mmu_Get(REG_SND_MODE_0);
  sSound_Channel0_Param  = Mmu_Get(REG_SND_MODE_1);
  sSound_Channel1_Mode   = Mmu_Get(REG_SND_PARM_0);
  sSound_Channel1_Param  = Mmu_Get(REG_SND_PARM_1);
}

void Sound_ClockFrame()
{
  Sound_Clock();
  if (sSound_Channel0_Mode)
  {
    sSound_Channel0_Mode--;
    Mmu_Set(REG_SND_MODE_0, sSound_Channel0_Mode);
  }
  if (sSound_Channel1_Mode)
  {
    sSound_Channel1_Mode--;
    Mmu_Set(REG_SND_MODE_1, sSound_Channel1_Mode);
  }
}

#define kPi 3.14159265358979323846f

// Note: This function is accessed in a different thread when used with the Unity implementation!
EXPORT void GetSnd(float* data, int length, int rate, int channels)
{
  bool mixing = (sSound_Channel0_Mode != 0 && sSound_Channel1_Mode != 0);
  
  float rate2 = 2.0f * kPi / (float) rate;

  if (mixing)
  {
    float frequency1 = kSineFrequencies[(int)sSound_Channel0_Param];
    float frequency2 = kSineFrequencies[(int)sSound_Channel1_Param];

    float tone1 = frequency1 * rate2;
    float tone2 = frequency2 * rate2;

    for (int i = 0; i < length; i += channels)
    {
      sSound_Channel0_Phase += tone1;
      sSound_Channel1_Phase += tone2;

      float m0 = (float)(kSound_Gain * sinf(sSound_Channel0_Phase));
      float m1 = (float)(kSound_Gain * sinf(sSound_Channel1_Phase));
      float m  = (m0 + m1) / 2;
      data[i + 0] = m;
      data[i + 1] = m;

      if (sSound_Channel0_Phase > 2.0f * kPi)
        sSound_Channel0_Phase = 0.0f;
      if (sSound_Channel1_Phase > 2.0f * kPi)
        sSound_Channel1_Phase = 0.0f;
    }
  }
  else if (sSound_Channel0_Mode != 0)
  {
    float frequency1 = kSineFrequencies[(int)sSound_Channel0_Param];

    float tone1 = frequency1 * rate2;

    for (int i = 0; i < length; i += channels)
    {
      sSound_Channel0_Phase += tone1;

      float m0 = (float)(kSound_Gain * sinf(sSound_Channel0_Phase));

      float m = m0;
      data[i + 0] = m;
      data[i + 1] = m;

      if (sSound_Channel0_Phase > 2.0f * kPi)
        sSound_Channel0_Phase = 0.0f;
    }
  }
  else if (sSound_Channel1_Mode != 0)
  {
    float frequency2 = kSineFrequencies[(int)sSound_Channel1_Param];

    float tone2 = frequency2 * rate2;

    for (int i = 0; i < length; i += channels)
    {
      sSound_Channel1_Phase += tone2;

      float m0 = (float)(kSound_Gain * sinf(sSound_Channel1_Phase));

      float m = m0;
      data[i + 0] = m;
      data[i + 1] = m;

      if (sSound_Channel1_Phase > 2.0f * kPi)
        sSound_Channel1_Phase = 0.0f;
    }
  }
  
}
