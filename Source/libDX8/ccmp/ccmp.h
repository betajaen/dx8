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

#ifndef DX8_CCMP_H
#define DX8_CCMP_H

#include <stdint.h>
#include <stdbool.h>

typedef uint8_t   u8;
typedef uint16_t  u16;
typedef uint32_t  u32;
typedef int8_t    i8;
typedef int16_t   i16;
typedef int32_t   i32;

typedef u8        dx8_char;
typedef i16       dx8_int;
typedef u16       dx8_size_t;

enum dx8_TokenType
{
  TT_None                       = 0,
  TT_Character                  = 1,
  TT_Number                     = 2,
  TT_String                     = 3,
  TT_Symbol                     = 4,

  TT_Syntax_SemiColon           = ';',
  TT_Syntax_Parentheses_Open    = '(',
  TT_Syntax_Parentheses_Close   = ')',
  TT_Syntax_Brace_Open          = '{',
  TT_Syntax_Brace_Close         = '}',
  TT_Syntax_Hash                = '#',
  
  TT_Keyword_EndOfFile          = 'EOF',
  TT_Keyword_Int                = 'INT',
  TT_Keyword_Char               = 'CHAR',
  TT_Keyword_Return             = 'RET',
  TT_Keyword_Define             = 'DEFN',
  TT_Keyword_Asm                = 'ASM'
};

struct dx8_Token
{
  int         type;
  const char* str;
  u16         str_length;
  i32         number;
};

enum dx8_CodeType
{
  CT_EOF      = 0,
  CT_Scope    = 1,
  CT_Function = 2,
  CT_Define   = 3,
  CT_Assembly = 4,
};

enum dx8_ReturnType
{
  RT_None     = 0,  // No return
  RT_Number   = 1,  // return 32;
  RT_Symbol   = 2,  // return s;
};

struct dx8_Code_Return
{
  int         type;
  int         number;    // number
  int         symbol;    // symbol
};

struct dx8_Code_Assembly_Statement
{
  int         type;
  const char* text;
  u32         text_length;
};

union dx8_Code_Statement
{
  struct dx8_Code_Assembly_Statement asm_;
};

struct dx8_Code_Scope
{
  int                       type;
  union dx8_Code_Statement* statements;
  struct dx8_Code_Return    return_;
};

struct dx8_Code_Define
{
  int  instruction_type;
  u32  symbol;
  i32  value;
};

struct dx8_Code_Function
{
  int  instruction_type;
  u32  symbol;

  struct dx8_Code_Scope scope;
};

struct dx8_Code_EndOfFile
{
  int  instruction_type;
};

union dx8_Code_Extern
{
  struct dx8_Code_Define    define;
  struct dx8_Code_Function  function;
  struct dx8_Code_EndOfFile eof_;
};

enum InstructionType
{
  IT_Nop  = 0,
  IT_Text = 1,
  IT_Ret  = 2,
  IT_Set  = 3,
};

struct dx8_Instruction_Nop
{
  u32 type, index, address, size, symbol;
};

struct dx8_Instruction_Text
{
  u32 type, index, address, size, symbol;
  const char* text;
  u32 text_length;
};

struct dx8_Instruction_Ret
{
  u32 type, index, address, size, symbol;
};

struct dx8_Instruction_Set
{
  u32 type, index, address, size, symbol;
  u16 register_;
  i32 value;
};

union dx8_Instruction
{
  struct dx8_Instruction_Nop    nop;
  struct dx8_Instruction_Text   text;
  struct dx8_Instruction_Ret    ret;
  struct dx8_Instruction_Set    set;
};

struct dx8_Instruction_Symbol
{
  u32  symbol;
  u32  address;
  u32  size;
};

bool dx8_Token_IsNullOrEof(struct dx8_Token* token);
bool dx8_Token_IsNumber(struct dx8_Token* token);
bool dx8_Token_IsString(struct dx8_Token* token);
bool dx8_Token_IsKeyword(struct dx8_Token* token);
bool dx8_Token_IsSpecificKeyword(struct dx8_Token* token, int keyword);
bool dx8_Token_IsSymbol(struct dx8_Token* token);
bool dx8_Token_IsSyntax(struct dx8_Token* token);
bool dx8_Token_IsSpecificSyntax(struct dx8_Token* token, int syntax);

bool dx8_Token_AfterTokenIs(struct dx8_Token* token, int type);
struct dx8_Token* dx8_Token_Next(struct dx8_Token* token);
struct dx8_Token* dx8_Token_NextNext(struct dx8_Token* token);
struct dx8_Token* dx8_Token_NextNextNext(struct dx8_Token* token);

struct dx8_Token* dx8_tokenise_text(const char* text);

union dx8_Code_Extern* dx8_ast_tokens(struct dx8_Token* first);

void dx8_token_debug(int id, struct dx8_Token* token);
void dx8_ast_debug(int id, union dx8_Code_Extern* extern_);

void dx8_build_instructions(struct dx8_Instruction_Symbol** outSymbols, union dx8_Instruction** outInstructions, union dx8_Code_Extern* code);

void dx8_instructions_debug(struct dx8_Instruction_Symbol* symbols, union dx8_Instruction* instructions);

#endif
