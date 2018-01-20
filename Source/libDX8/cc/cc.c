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

#include "cc.h"

#define STB_DEFINE
#include "References/stb.h"

const char* text = 
  "main()\n"
  "{\n"
  "  return 37;\n"
  "}"
  "\n"
  "#define FIVE 5\n"
  "five()\n"
  "{\n"
  "  return FIVE;\n"
  "}"
  "asm_test()\n"
  "{\n"
  "  asm \"push x\";\n"
  "  asm \"setq a, 5\";\n"
  "}";

int main(int argc, char** argv)
{
  FILE* f;
  Instruction* instructions = NULL;
  u32 len;
  char* text;
  Node* nodes;
  
  if (argc == 1)
  {
    printf("cc.exe FILE.C\n");
    return;
  }

  f = fopen(argv[1], "rb");
  if (f == NULL)
  {
    printf("File not found\n");
    return;
  }

  len = stb_filelen(f);

  text = malloc(len + 1);
  fread(text, len, 1, f);
  fclose(f);

  text[len] = ' ';

  nodes = ReadText(text, len);
  

  Assemble(&instructions, nodes);
  
  char m[256];
  memset(m, 0, 256);

  stb_replaceext(m, argv[1], ".s");

  WriteAssembly(instructions, m);

}
