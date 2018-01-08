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

#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

FILE* sLogFp = NULL;

void Log_Setup(const char* path)
{
  sLogFp = fopen(path, "w");
}

void Log_Teardown()
{
  if (sLogFp != NULL)
  {
    fclose(sLogFp);
  }
}

int Clock_GetCycle();
int Clock_GetMilliseconds();
int Clock_GetFrame();

void Log_Format(const char* text, ...)
{
  if (sLogFp != NULL)
  {
    va_list args;

    fprintf(sLogFp, "[f%05i.c%05i] ", Clock_GetFrame(), Clock_GetCycle());

    va_start(args, text);
    vfprintf(sLogFp, text, args);
    va_end(args);

    fprintf(sLogFp, "\n");
    fflush(sLogFp);
  }
}
