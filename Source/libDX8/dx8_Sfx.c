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
  32.703f,
  36.708f,
  41.203f,
  43.654f,
  48.999f,
  55.0f,
  61.735f,
  65.406f,
  73.416f,
  82.407f,
  87.307f,
  97.999f,
  110.0f,
  123.471f,
  130.813f,
  146.832f,
  164.814f,
  174.614f,
  195.998f,
  220.0f,
  246.942f,
  261.626f,
  293.665f,
  329.628f,
  349.228f,
  391.995f,
  440.0f,
  493.883f,
  523.251f,
  587.33f,
  659.255f,
  698.456f,
  783.991f,
  880.0f,
  987.767f,
  1046.502f,
  1174.659f,
  1318.51f,
  1396.913f,
  1567.982f,
  1760.0f,
  1975.533f
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
  Byte sound_Channel0_Mode = Mmu_Get(REG_SND_MODE_0);
  Byte sound_Channel1_Mode = Mmu_Get(REG_SND_MODE_1);
  Byte sound_Channel0_Param = Mmu_Get(REG_SND_PARM_0);
  Byte sound_Channel1_Param = Mmu_Get(REG_SND_PARM_1);

  if (sound_Channel0_Mode != sSound_Channel0_Mode)
  {
    sSound_Channel0_Mode   = sound_Channel0_Mode;
    sSound_Channel0_Param  = sound_Channel0_Param;
    sSound_Channel0_Phase  = 0.0f;
  }

  if (sound_Channel1_Mode != sSound_Channel1_Mode)
  {
    sSound_Channel1_Mode   = sound_Channel1_Mode;
    sSound_Channel1_Param  = sound_Channel1_Param;
    sSound_Channel1_Phase  = 0.0f;
  }
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

      if (sSound_Channel1_Phase > 2.0f * kPi)
        sSound_Channel1_Phase = 0.0f;
    }
  }
  
}
