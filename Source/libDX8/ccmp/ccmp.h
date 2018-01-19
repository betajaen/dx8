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

typedef struct Node Node;
typedef struct NodeList NodeList;
typedef struct String String;
typedef struct Instruction Instruction;

enum TokenType
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

struct String
{
  const char* str;
  u32         len;
};

struct Token
{
  int         type;
  const char* str;
  u16         str_length;
  i32         number;
};

typedef enum
{
  NT_None         = 0,
  NT_File         = 1,
  NT_EndOfFile    = 2,
  NT_Define       = 3,
  NT_Function     = 4,
  NT_Scope        = 5,
  NT_Symbol       = 6,
  NT_Number       = 7,
  NT_Assembly     = 8,
} NodeType;

struct NodeList
{
  Node *first, *last;
};

struct Node
{
  NodeType type;
  u32      symbol;
  String   text;
  Node     *next;
  union {
    struct {
      NodeList nodes;
    } File;
    struct {
      Node*    scope;
    } Function;
    struct {
      NodeList nodes;
      Node*    return_;
    } Scope;
    struct {
      i32     value;
    } Number;
    struct {
      String  text;
    } Assembly;
    struct {
      Node*   value;
    } Define;
  };
};

enum InstructionType
{
  IT_Nop  = 0,
  IT_Text = 1,
  IT_Ret  = 2,
  IT_Set  = 3,
};

struct Instruction
{
  u32 type;
  u32 index;
  u32 address;
  u32 size;
  u32 symbol;
  String* symbolText;

  union
  {
    struct {
      const char* text;
      u32 text_length;
    } Text;
    struct {
      u16 register_;
      i32 value;
    } Set;
  };

};

bool Token_IsNullOrEof(struct Token* token);
bool Token_IsNumber(struct Token* token);
bool Token_IsString(struct Token* token);
bool Token_IsKeyword(struct Token* token);
bool Token_IsSpecificKeyword(struct Token* token, int keyword);
bool Token_IsSymbol(struct Token* token);
bool Token_IsSyntax(struct Token* token);
bool Token_IsSpecificSyntax(struct Token* token, int syntax);

bool Token_AfterTokenIs(struct Token* token, int type);
struct Token* Token_Next(struct Token* token);
struct Token* Token_NextNext(struct Token* token);
struct Token* Token_NextNextNext(struct Token* token);

struct Token* Tokenise(const char* text);

Node* Nodify(struct Token* first);

void DebugTokens(int id, struct Token* token);

void Assemble(Instruction** outInstructions, Node* fileNode);

void DebugAssembly(Instruction* instructions);

void NodeList_Add(NodeList* list, Node* node);

#endif
