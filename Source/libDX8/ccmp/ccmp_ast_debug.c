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

void debug_return(int id, struct ReturnNode* return_)
{
  if (return_->type == RT_None)
  {
    printf("[%i] Return\n", id);
  }
  else if (return_->type == RT_Number)
  {
    printf("[%i] Return-Number %i\n", id, return_->number);
  }
  else if (return_->type == RT_Symbol)
  {
    printf("[%i] Return-Symbol %i\n", id, return_->symbol);
  }
  else
  {
    printf("[%i] Return-<UNKNOWN-FEATURE>\n", id);
  }
}

void debug_assembly(int id, struct AssemblyStatementNode* asm_)
{
  printf("[%i] Asm '%.*s'\n", id, asm_->text_length, asm_->text);
}

void debug_statement(int id, union StatementNode* statement)
{
  if (statement->asm_.type == NT_Assembly)
  {
    debug_assembly(id, &statement->asm_);
  }
}

void debug_scope(int id, struct ScopeNode* scope)
{
    printf("[%i] Scope\n", id);
    
    u32 num = stb_arr_len(scope->statements);
    for(u32 i=0;i < num;i++)
    {
      union StatementNode* statement = &scope->statements[i];
      debug_statement(id, statement);
    }

    debug_return(id, &scope->return_);
}

void debug_function(int id, struct FunctionNode* function)
{
    printf("[%i] Function #%i\n", id,  function->symbol);

    debug_scope(id, &function->scope);
}

void DebugNodes(int id, union FileNode* extern_)
{
  if (extern_ == NULL)
  {
    printf("[%i] NULL.\n", id);
    return;
  }

  if (extern_->eof_.instruction_type == NT_EndOfFile)
  {
    printf("[%i] EOF.\n", id);
    return;
  }

  if (extern_->function.instruction_type == NT_Function)
  {
    debug_function(id, &extern_->function);
  }

}
