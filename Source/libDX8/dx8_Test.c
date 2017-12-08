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

#if DX8_TEST

#if defined(_WIN32)
#define _CRT_SECURE_NO_WARNINGS
#define IMPORT extern __declspec(dllimport)
#else
#error Platform not supported :(
#endif

#include "dx8.h"
#include <stdio.h>
#include <malloc.h>


IMPORT int Initialise();
IMPORT int Shutdown();
IMPORT int GetValue(int name);
IMPORT int GetRam(int name, int addr);
IMPORT int SetValue(int name, int value);
IMPORT int SetData(int name, void* data, int length);
IMPORT int GetData(int name, void* data, int length);
IMPORT int Call(int name, int value);


enum ApiName
{
#define API_NAME(NAME, VALUE) Api_##NAME = VALUE,
#include "dx8_Api.inc"
#undef API_NAME
};

int main()
{
  const char* romPath = "C:\\dev\\dx8\\ROMS\\rom\\rom.bin";
  const char* fdPath  = "C:\\dev\\dx8\\ROMS\\minimal\\minimal_fd.bin";

  FILE* f;
  Byte* rom = malloc(4096);
  Byte* fd = malloc(160 * 1024);

  f = fopen(romPath, "rb");
  fread(rom, 4096, 1, f);
  fclose(f);

  f = fopen(fdPath, "rb");
  fread(fd, 160 * 1024, 1, f);
  fclose(f);


  Initialise();
  SetData(Api_Rom, rom, 4096);
  Call(Api_HardReset, 0);

  for(int i=0;i < (50 * 4);i++)
  {
    Call(Api_CycleFn, 15 * 1000);
  }


  SetData(Api_FloppyDisk, fd, 160 * 1024);
  Call(Api_InsertDisk, 0);

  for (int i = 0; i < (50 * 12); i++)
  {
    Call(Api_CycleFn, 15 * 1000);
  }


  Shutdown();

}

#endif
