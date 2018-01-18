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
#include "References/stb.h"

void debug_return(int id, struct dx8_Code_Return* return_)
{
  if (return_->type == RT_None)
  {
    printf("[%i] Return\n", id);
  }
  else if (return_->type == RT_Number)
  {
    printf("[%i] Return-Number %i\n", id, return_->number);
  }
  else
  {
    printf("[%i] Return-<UNKNOWN-FEATURE>\n", id);
  }
}

void debug_scope(int id, struct dx8_Code_Scope* scope)
{
    printf("[%i] Scope\n", id);
    

    debug_return(id, &scope->return_);
}

void debug_function(int id, struct dx8_Code_Function* function)
{
    printf("[%i] Function #%i\n", id,  function->symbol);

    debug_scope(id, &function->scope);
}

void dx8_ast_debug(int id, union dx8_Code_Extern* extern_)
{
  if (extern_ == NULL)
  {
    printf("[%i] NULL.\n", id);
    return;
  }

  if (extern_->eof_.instruction_type == CT_EOF)
  {
    printf("[%i] EOF.\n", id);
    return;
  }

  if (extern_->function.instruction_type == CT_Function)
  {
    debug_function(id, &extern_->function);
  }

}
