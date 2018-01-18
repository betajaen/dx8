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

#include "ccmp.h"

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
  "}"
  ;

int main(int argc, char** argv)
{
  struct Token* token = Tokenise(text);

  union FileNode* externs = Nodify(token);
  union FileNode* extern_ = externs;

  int counter = 0;
  while(extern_ != NULL)
  {
    DebugNodes(counter++, extern_);

    if (extern_->eof_.instruction_type == NT_EndOfFile)
      break;

    extern_++;
  }

  union Instruction* instructions = NULL;
  struct InstructionSymbol* symbols = NULL;

  Assemble(&symbols, &instructions, externs);

  DebugAssembly(symbols, instructions);

  printf("Done.\n");
}
