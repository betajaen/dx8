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

#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>

#include "cc.h"
#include "References/stb.h"

static const kRegisterNames[] = {
  'a', 'x', 'y', 'z', 'w'
};

void WriteAssembly(struct Instruction* instructions, const char* path)
{
  printf("> %s", path);

  FILE* f = fopen(path, "wb");

  u32 num = stb_arr_len(instructions);
  for(u32 i=0;i < num;i++)
  {
    Instruction* ins = &instructions[i];

    if (ins->symbol != 0)
    {
      fprintf(f, "S_%08X:\n", ins->symbol);
    }
    else if (ins->symbolText != NULL)
    {
      fprintf(f, "%.*s:\n", ins->symbolText->len, ins->symbolText->str);
    }
    else if (ins->type == IT_Blank)
    {
      fprintf(f, "\n");
    }

    if (ins->type == IT_Blank)
      continue;

    switch(ins->type)
    {
      case IT_Nop:          fprintf(f, "    nop");    break;
      case IT_Comment:      fprintf(f, "; %s", ins->Comment.text);    break;
      case IT_Text:         fprintf(f, "    %.*s", ins->Text.text_length, ins->Text.text); break;
      case IT_Return:       fprintf(f, "    ret");    break;
      case IT_Set:          fprintf(f, "    set %c, %i", kRegisterNames[ins->Set.register_], ins->Set.value);    break;
      case IT_BranchAlways: fprintf(f, "    bra S_%08X", ins->BranchAlways.target); break;
    }

    fprintf(f, "\n");
  }
  
  fclose(f);
}
