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

#include "ccmp.h"

#include "References/stb.h"

#define REGISTER_A 0
#define REGISTER_X 1
#define REGISTER_Y 2
#define REGISTER_Z 3
#define REGISTER_W 4

static u32  nextInstructionSymbol      = 0;

struct BuildContext
{
  u32                             index;
  struct InstructionSymbol*  symbols;
  union Instruction*          instructions;
  union FileNode*          externs;
};

static void add_symbol(struct BuildContext* ctx)
{
  
}

static i32 fetch_symbol_value(struct BuildContext* ctx, struct ScopeNode* scope, u32 symbol)
{
  // We only support #defines right now, which are in externs.
  u32 num = stb_arr_len(ctx->externs);
  for(u32 i=0;i < num;i++)
  {
    union FileNode* extern_ = &ctx->externs[i];
    if (extern_->define.instruction_type == NT_Define && extern_->define.symbol == symbol)
    {
      return extern_->define.value;
    }
  }

  printf("Unknown Symbol: %i resorting to 0\n", symbol);
  return 0;
}

#define PUSH_COMMON(T) push_common(ctx, &v, T)
#define PUSH_INSTRUCTION() stb_arr_push(ctx->instructions, v)
void push_common(struct BuildContext* ctx, union Instruction* v, u32 type)
{
  v->nop.index   = ctx->index++;
  v->nop.address = 0;
  v->nop.size    = 0;
  v->nop.type    = type;
  if (nextInstructionSymbol)
  {
    v->nop.symbol = nextInstructionSymbol;
    nextInstructionSymbol = 0;
  }
  else
  {
    v->nop.symbol = 0;
  }
}

static void push_nop(struct BuildContext* ctx)
{
  union Instruction v;
  PUSH_COMMON(IT_Nop);
  PUSH_INSTRUCTION();
}

static void push_text(struct BuildContext* ctx, const char* text, u32 text_length)
{
  union Instruction v;
  PUSH_COMMON(IT_Text);
  v.text.text = text;
  v.text.text_length = text_length;
  PUSH_INSTRUCTION();
}

static void push_ret(struct BuildContext* ctx)
{
  union Instruction v;
  PUSH_COMMON(IT_Ret);
  PUSH_INSTRUCTION();
}

static void push_set(struct BuildContext* ctx, u32 register_, u16 value)
{
  union Instruction v;
  PUSH_COMMON(IT_Set);
  v.set.register_ = register_;
  v.set.value     = value;
  PUSH_INSTRUCTION();
}

static void build_scope(struct BuildContext* ctx, struct ScopeNode* scope)
{
  // Statements
  u32 num = stb_arr_len(scope->statements);
  for(int i=0;i < num;i++)
  {
    union StatementNode* statement = &scope->statements[i];
    
    if (statement->asm_.type == NT_Assembly)
    {
      push_text(ctx, statement->asm_.text, statement->asm_.text_length);
    }

  }

  // Return
  if (scope->return_.type == RT_None)
  {
    push_ret(ctx);
  }
  else if (scope->return_.type == RT_Symbol)
  {
    push_set(ctx, REGISTER_A, fetch_symbol_value(ctx, scope, scope->return_.symbol));
    push_ret(ctx);
  }
  else if (scope->return_.type == RT_Number)
  {
    push_set(ctx, REGISTER_A, scope->return_.number);
    push_ret(ctx);
  }
}

static void build_instruction(struct BuildContext* ctx, struct FunctionNode* function)
{
  nextInstructionSymbol = function->symbol;
  build_scope(ctx, &function->scope);
}


void Assemble(struct InstructionSymbol** outSymbols, union Instruction** outInstructions, union FileNode* code)
{
  struct BuildContext ctx;
  ctx.index = 0;
  ctx.instructions = NULL;
  ctx.symbols = NULL;
  ctx.externs = code;
  nextInstructionSymbol = 0;
  
  u32 num = stb_arr_len(code);
  for(u32 i=0;i < num;i++)
  {
    union FileNode* c = &code[i];

    if (c->function.instruction_type == NT_Function)
    {
      build_instruction(&ctx, &c->function);
    }
  }

  *outSymbols      = ctx.symbols;
  *outInstructions = ctx.instructions;
}
