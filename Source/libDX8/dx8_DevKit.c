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

#if DX8_DEVKIT

#include "dx8.h"

#if defined(_WIN32)
  #define _CRT_SECURE_NO_WARNINGS
  #include <Windows.h>
  #include <stdio.h>
  #define EXPORT extern __declspec(dllexport)
#else
  #error Platform not supported :(
#endif

typedef int(*InitialiseFn)();
typedef int(*ShutdownFn)();
typedef int(*StepFn)(float deltaTime);

#if defined(_WIN32)
HMODULE dll;
#endif

InitialiseFn initialiseFn;
ShutdownFn   shutdownFn;
StepFn       stepFn;

#define SRC_PATH "C:/dev/dx8/Source/libDX8/Build/libDX8.dll"
#define LIB_PATH "C:/dev/dx8/Source/RT/libDX8.dll"

EXPORT int Initialise()
{
  #if defined(_WIN32)
    if (CopyFile(SRC_PATH, LIB_PATH, FALSE) == 0)
    {
      return 10001;
    }

    dll = LoadLibraryA(LIB_PATH);
    if (dll == NULL)
    {
      return 10002;
    }
  #else
    return 10003;
  #endif

  initialiseFn = (InitialiseFn)GetProcAddress(dll, "Initialise");
  shutdownFn   = (ShutdownFn)GetProcAddress(dll, "Shutdown");
  stepFn       = (StepFn)GetProcAddress(dll, "Step");

  if (initialiseFn == NULL ||
    shutdownFn == NULL ||
    stepFn == NULL)
  {

    #if defined(_WIN32)
      FreeLibrary(dll);
      dll = NULL;
    #endif

    initialiseFn = NULL;
    shutdownFn = NULL;
    stepFn = NULL;

    return 10004;
  }

  return initialiseFn();
}

EXPORT int Shutdown()
{
  #if defined(_WIN32)
    if (dll == NULL)
      return 9000;
  #else
    return 9001;
  #endif

  shutdownFn();

  #if defined(_WIN32)
    FreeLibrary(dll);
    dll = NULL;
    DeleteFile(LIB_PATH);
  #endif

  initialiseFn = NULL;
  shutdownFn = NULL;
  stepFn = NULL;

  return 0;
}


EXPORT int Step(float deltaTime)
{
  #if defined(_WIN32)
    if (dll == NULL)
      return 9000;
  #else
    return 9001;
  #endif

  return stepFn(deltaTime);
}

#endif
