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

#define REGISTER_A 0
#define REGISTER_X 1
#define REGISTER_Y 2
#define REGISTER_Z 3
#define REGISTER_W 4

static u32     nextInstructionSymbol = 0;
static String* nextInstructionSymbolText = NULL;

struct BuildContext
{
  u32                           index;
  Instruction*                  instructions;
  NodeList*                     nodes;
};

static void add_symbol(struct BuildContext* ctx)
{
  
}

#define PUSH_COMMON(T) push_common(ctx, &v, T)
#define PUSH_INSTRUCTION() stb_arr_push(ctx->instructions, v)

void push_common(struct BuildContext* ctx, Instruction* v, u32 type)
{
  v->index   = ctx->index++;
  v->type    = type;
  if (nextInstructionSymbol)
  {
    v->symbol = nextInstructionSymbol;
    v->symbolText = NULL;
    nextInstructionSymbol = 0;
  }
  else if (nextInstructionSymbolText)
  {
    v->symbol = 0;
    v->symbolText = nextInstructionSymbolText;
    nextInstructionSymbolText = NULL;
  }
  else
  {
    v->symbol = 0;
    v->symbolText = NULL;
  }
}

static void push_nop(struct BuildContext* ctx)
{
  Instruction v;
  PUSH_COMMON(IT_Nop);
  PUSH_INSTRUCTION();
}

static void push_text(struct BuildContext* ctx, const char* text, u32 text_length)
{
  Instruction v;
  PUSH_COMMON(IT_Text);
  v.Text.text = text;
  v.Text.text_length = text_length;
  PUSH_INSTRUCTION();
}

static void push_ret(struct BuildContext* ctx)
{
  Instruction v;
  PUSH_COMMON(IT_Ret);
  PUSH_INSTRUCTION();
}

static void push_set(struct BuildContext* ctx, u32 register_, u16 value)
{
  Instruction v;
  PUSH_COMMON(IT_Set);
  v.Set.register_ = register_;
  v.Set.value     = value;
  PUSH_INSTRUCTION();
}

static void build_scope(struct BuildContext* ctx, Node* scope)
{
  // Nodes
  Node* statement = scope->Scope.nodes.first;
  while(statement != NULL)
  {
    if (statement->type == NT_Assembly)
    {
      push_text(ctx, statement->Assembly.text.str, statement->Assembly.text.len);
    }

    statement = statement->next;
  }

  // Return
  Node* return_ = scope->Scope.return_;
  if (return_ == NULL)
  {
    push_ret(ctx);
  }
  else if (return_->type == NT_Symbol)
  {
    push_set(ctx, REGISTER_A, NodeList_FetchSymbol_Number(ctx->nodes, return_->symbol));
    push_ret(ctx);
  }
  else if (return_->type == NT_Number)
  {
    push_set(ctx, REGISTER_A, return_->Number.value);
    push_ret(ctx);
  }
}

static void build_function(struct BuildContext* ctx, Node* node)
{
  nextInstructionSymbolText = &node->text;

  build_scope(ctx, node->Function.scope);
}


void Assemble(Instruction** outInstructions, Node* fileNode)
{
  struct BuildContext ctx;
  ctx.index = 0;
  ctx.instructions = NULL;
  ctx.nodes = &fileNode->File.nodes;

  nextInstructionSymbol = 0;
  nextInstructionSymbolText = NULL;
  
  Node* node = ctx.nodes->first;
  
  while(node != NULL)
  {
    if (node->type == NT_Function)
    {
      build_function(&ctx, node);
    }
    node = node->next;
  }

  *outInstructions = ctx.instructions;
}
