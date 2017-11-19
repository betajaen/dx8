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

#if defined(_WIN32)
#define EXPORT extern __declspec(dllexport)
#else
#error Platform not supported :(
#endif

enum ApiName
{
#define API_NAME(NAME, VALUE) Api_##NAME = VALUE,
#include "dx8_Api.inc"
#undef API_NAME
};

void Cpu_Setup();
void Cpu_Teardown();
void Mmu_Setup();
void Mmu_Teardown();
void Gpu_Setup();
void Gpu_Teardown();

void Rom_Setup();
void Rom_Teardown();

void Fpy_InsertDisk();
void Fpy_RemoveDisk();

bool Crt_IsDirty();
int  Gpu_GetTimer();

Byte Program_Get(Word address);

FILE* logFp;

EXPORT int Initialise()
{
  logFp = fopen("dx8.log", "w+");
  log_set_fp(logFp);
  
  LOGF("CPU_SETUP");
  Cpu_Setup();
  LOGF("ROM_SETUP");
  Rom_Setup();
  LOGF("MMU_SETUP");
  Mmu_Setup();
  LOGF("GPU_SETUP");
  Gpu_Setup();
  LOGF("SETUP DONE");
  return 0;
}

EXPORT int Shutdown()
{
  Rom_Teardown();
  Mmu_Teardown();
  Gpu_Teardown();
  fclose(logFp);
  return 0;
}

EXPORT int GetValue(int name)
{
  switch(name)
  {
    case Api_A:
      return Cpu_GetARegister();
    case Api_X:
      return Cpu_GetXRegister();
    case Api_Y:
      return Cpu_GetYRegister();
    case Api_Z:
      return Cpu_GetZRegister();
    case Api_W:
      return Cpu_GetWRegister();
    case Api_Pc:
      return Cpu_GetPcRegister();
    case Api_Flags:
      return Cpu_GetFlagsRegister();
    case Api_Stack:
      return Cpu_GetStackRegister();
    case Api_LastOpcode:
      return Cpu_GetLastOpcode();
    case Api_LastOperand:
      return Cpu_GetLastOperand();
    case Api_CrtDirty:
      return Crt_IsDirty();
    case Api_GpuTimer:
      return Gpu_GetTimer();
    case Api_CpuHalt:
      return Cpu_GetHalt();
  }
  return 0;
}

EXPORT int GetRam(int name, int addr)
{
  return Mmu_Get(addr);
}

EXPORT int SetValue(int name, int value)
{
  switch (name)
  {
  case Api_A:
    Cpu_SetARegister(value & 0xFF);
    return 0;
  case Api_X:
    Cpu_SetXRegister(value & 0xFF);
    return 0;
  case Api_Y:
    Cpu_SetYRegister(value & 0xFF);
    return 0;
  case Api_Z:
    Cpu_SetZRegister(value & 0xFF);
    return 0;
  case Api_W:
    Cpu_SetWRegister(value & 0xFF);
    return 0;
  case Api_Pc:
    Cpu_SetPcRegister(value & 0xFFFF);
    return 0;
  case Api_Flags:
    Cpu_SetFlagsRegister(value & 0xFF);
    return 0;
  case Api_Stack:
    Cpu_SetStackRegister(value & 0xFF);
    return 0;
  case Api_CpuHalt:
    Cpu_SetHalt(value);
    return 0;
  }
  
  return -1;
}

bool Rom_CopyToProgramRom(void* data, int length);
bool Fpy_CopyToFloppyController(void* data, int length);

EXPORT int SetData(int name, void* data, int length)
{
  switch(name)
  {
    case Api_Rom:
      return Rom_CopyToProgramRom(data, length);
    case Api_FloppyDisk:
      return Fpy_CopyToFloppyController(data, length);
  }
  return -1;
}

EXPORT int GetData(int name, void* data, int length)
{
  return -1;
}

void Reset(bool soft);

EXPORT int Call(int name, int value)
{
  switch(name)
  {
    case Api_CycleFn:
      return Clock(value);
    case Api_SoftReset:
      Reset(true);
      return 0;
    case Api_HardReset:
      Reset(false);
      return 0;
    case Api_InsertDisk:
      Fpy_InsertDisk();
      return 0;
    case Api_RemoveDisk:
      Fpy_RemoveDisk();
      return 0;
  }

  return -1;
}
