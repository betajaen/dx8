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

#include "References/stb.h"

#define LEXER_USE_FIXED_TYPES
#define LEXER_USE_ASSERT
#define LEXER_IMPLEMENTATION
#define LEXER_SIZE_TYPE dx8_size_t
typedef dx8_size_t wby_size;

#include "References/mmx/mm_lexer.h"

typedef enum   SyntaxType  SyntaxType;
typedef enum   KeywordType KeywordType;
typedef struct TokenCtx    TokenCtx;

static const char* kKeywords[] = {
  "return",
  "asm",
  "define"
};

enum KeywordType
{
  KT_Return,
  KT_Asm,
  KT_Define
};

static const u32 kKeywordsCount = stb_arrcount(kKeywords);

static char kSyntax[] = {
  '(',
  ')',
  '{',
  '}',
  '#',
  ';'
};

enum SyntaxType
{
  ST_Parentheses_Open,
  ST_Parentheses_Close,
  ST_Brace_Open,
  ST_Brace_Close,
  ST_Hash,
  ST_Semicolon,
};

static int kPunc2Syntax[] = {
  LEXER_PUNCT_PARENTHESE_OPEN,
  LEXER_PUNCT_PARENTHESE_CLOSE,
  LEXER_PUNCT_BRACE_OPEN,
  LEXER_PUNCT_BRACE_CLOSE,
  LEXER_PUNCT_PRECOMPILER,
  LEXER_PUNCT_SEMICOLON,
};

static const u32 kSyntaxCount = stb_arrcount(kSyntax);

struct TokenInfo
{
  union
  {
    struct {
      int bIsSyntax  : 1;
      int bIsName    : 1;
      int bIsSymbol  : 1;
      int bIsKeyword : 1;
      int bIsNumber  : 1;
      int bIsString  : 1;
      int bIsEnd     : 1;
    };
    int flags_int;
  };
  union
  {
    KeywordType keyword;
    int         syntax;
    i32         number;
  };
  struct lexer       lexer;
  struct lexer_token tok;
};

void Print_Token(struct TokenInfo* token)
{
  if (token->bIsSyntax)
  {
    printf("Syntax: %c\n", kSyntax[token->syntax]);
  }
  else if (token->bIsKeyword)
  {
    printf("Keyword: %s\n", kKeywords[token->keyword]);
  }
  else if (token->bIsSymbol)
  {
    printf("Symbol: %.*s\n", token->tok.len, token->tok.str);
  }
  else if (token->bIsString)
  {
    printf("String: %.*s\n", token->tok.len, token->tok.str);
  }
  else if (token->bIsEnd)
  {
    printf("End of File\n");
  }
  
  //printf("Around: %.*s\n", 30,  token->tok.str);
}

#define TOKEN_IS_SYNTAX(TOK)                     ((TOK)->bIsSyntax)
#define TOKEN_IS_SPECIFIC_SYNTAX(TOK, SYNTAX)    ((TOK)->bIsSyntax && (TOK)->syntax == SYNTAX)
#define TOKEN_IS_NAMED(TOK)                      ((TOK)->bIsName)
#define TOKEN_IS_SYMBOL(TOK)                     ((TOK)->bIsSymbol)
#define TOKEN_IS_KEYWORD(TOK)                    ((TOK)->bIsKeyword)
#define TOKEN_IS_STRING(TOK)                     ((TOK)->bIsString)
#define TOKEN_IS_NUMBER(TOK)                     ((TOK)->bIsNumber)
#define TOKEN_IS_SPECIFIC_KEYWORD(TOK, KEYWORD)  ((TOK)->bIsKeyword && (TOK)->keyword == KEYWORD)
#define TOKEN_STR(TOK)                           ((TOK)->tok.str)
#define TOKEN_STR_LEN(TOK)                       ((TOK)->tok.len)
#define TOKEN_NUMBER(TOK)                        ((TOK)->number)

struct TokenCtx
{
  struct TokenInfo tok, peek, last;
  Node* exports;
};

static void Ctx_Panic(TokenCtx* ctx, const char* str)
{
  printf("Panic!\n");
  printf("%s\n", str);
  Print_Token(&ctx->tok);
  exit(1);
}

static void Ctx_Panic_If(TokenCtx* ctx, bool cond, const char* str)
{
  if (cond)
  {
    Ctx_Panic(ctx, str);
  }
}

static void Lexer_Debug(void *pArg, enum lexer_log_level type, lexer_size line, const char *fmt, ...)
{
    va_list arglist;
    (void)pArg;
    va_start(arglist, fmt);
    printf("<lexer> %s(%lu):  ", (type == LEXER_WARNING) ? "Warning" : "Error", line);
    vprintf(fmt, arglist);
    va_end(arglist);
}

static int Token_ReadImpl(struct TokenInfo* tok)
{
  tok->flags_int = 0;
  tok->keyword   = 0;
  tok->syntax    = 0;
  
  int r = lexer_read(&tok->lexer, &tok->tok);

  if (r == 0)
  {
    tok->bIsEnd = 1;
    return 0;
  }

  if (tok->tok.type == LEXER_TOKEN_PUNCTUATION)
  {
    for(u32 i=0;i < kSyntaxCount;i++)
    {
      if (kPunc2Syntax[i] == tok->tok.subtype)
      {
        tok->bIsSyntax = true;
        tok->syntax = i;
        break;
      }
    }
  }
  else if (tok->tok.type == LEXER_TOKEN_NAME)
  {
    for(u32 i=0;i < kKeywordsCount;i++)
    {
      if (strncmp(kKeywords[i], tok->tok.str, tok->tok.len) == 0)
      {
        tok->bIsName    = true;
        tok->bIsKeyword = true;
        tok->keyword = i;
        break;
      }
    }

    if (tok->bIsName == false)
    {
      tok->bIsName   = true;
      tok->bIsSymbol = true;
    }
  }
  else if (tok->tok.type == LEXER_TOKEN_NUMBER)
  {
    tok->bIsNumber = true;
    tok->number = lexer_token_to_int(&tok->tok);
  }
  else if (tok->tok.type == LEXER_TOKEN_STRING)
  {
    tok->bIsString = true;
  }
  else if (tok->tok.type == LEXER_TOKEN_LITERAL)
  {
    tok->bIsNumber = true;
    tok->number = tok->tok.subtype;
  }

  return 1;
}

static int Token_Read(TokenCtx* ctx)
{
  ctx->last      = ctx->tok;
  
  if (Token_ReadImpl(&ctx->tok) == 1)
  {
    ctx->peek = ctx->tok;
    Token_ReadImpl(&ctx->peek);
    return 1;
  }

  return 0;
}

#define Token_Next(C) Token_Read(C)

Node* Node_Create(NodeType type)
{
  Node* node = malloc(sizeof(Node));
  memset(node, 0, sizeof(Node));
  node->type = type;
  
  return node;
}

void NodeList_Add(NodeList* list, Node* node)
{
  if (list->last == NULL)
  {
    list->first = list->last = node;
  }
  else
  {
    list->last->next = node;
    list->last = node;
  }
}

void Parse_Scope(TokenCtx* ctx, Node* scope)
{
  NodeList* list = &scope->Scope.nodes;

  Ctx_Panic_If(ctx, TOKEN_IS_SPECIFIC_SYNTAX(&ctx->tok, ST_Brace_Open) == false, "Missing { in start of scope block");

  while(Token_Next(ctx))
  {
    // Extra { in scope
    Ctx_Panic_If(ctx, TOKEN_IS_SPECIFIC_SYNTAX(&ctx->tok, ST_Brace_Open), "Unexpected { in scope");
    
    // }
    if (TOKEN_IS_SPECIFIC_SYNTAX(&ctx->tok, ST_Brace_Close))
    {
      // Special case, where return isn't defined.
      Token_Next(ctx);
      return;
    }

    // asm "xyz";
    if (TOKEN_IS_SPECIFIC_KEYWORD(&ctx->tok, KT_Asm))
    {
      Ctx_Panic_If(ctx, TOKEN_IS_STRING(&ctx->peek) == false, "Expected string after asm keyword");

      Token_Next(ctx);

      Node* asm_ = Node_Create(NT_Assembly);
      asm_->Assembly.text.str = TOKEN_STR(&ctx->tok);
      asm_->Assembly.text.len = TOKEN_STR_LEN(&ctx->tok);

      Token_Next(ctx);

      NodeList_Add(list, asm_);
      continue;
    }

    // return;
    // return 37;
    if (TOKEN_IS_SPECIFIC_KEYWORD(&ctx->tok, KT_Return))
    {
      // >> return 37;
      if (TOKEN_IS_NUMBER(&ctx->peek))
      {
        Token_Next(ctx);

        Node* number = Node_Create(NT_Number);
        number->Number.value = TOKEN_NUMBER(&ctx->tok);

        scope->Scope.return_ = number;

        break;
      }
      // return symbol;
      else if (TOKEN_IS_SYMBOL(&ctx->peek))
      {
        Token_Next(ctx);

        Node* symbol     = Node_Create(NT_Symbol);
        symbol->text.str = TOKEN_STR(&ctx->tok);
        symbol->text.len = TOKEN_STR_LEN(&ctx->tok);
        symbol->symbol   = stb_hashlen(symbol->text.str, symbol->text.len);

        scope->Scope.return_ = symbol;
        
        break;
      }
      // return;
      else if (TOKEN_IS_SPECIFIC_SYNTAX(&ctx->tok, ST_Semicolon))
      {
        break;
      }

      Ctx_Panic(ctx, "Unknown return syntax");
    }
  }
  
  Token_Next(ctx);
  Ctx_Panic_If(ctx, TOKEN_IS_SPECIFIC_SYNTAX(&ctx->tok, ST_Semicolon) == false, "Expected ; after return");

  Token_Next(ctx);
  Ctx_Panic_If(ctx, TOKEN_IS_SPECIFIC_SYNTAX(&ctx->tok, ST_Brace_Close) == false, "Expected } after end of scope");

}

void Parse_Define(TokenCtx* ctx)
{
  Ctx_Panic_If(ctx, TOKEN_IS_SPECIFIC_SYNTAX(&ctx->tok, ST_Hash) == false, "Missing # on preprocessor");

  Token_Next(ctx);

  Ctx_Panic_If(ctx, TOKEN_IS_SPECIFIC_KEYWORD(&ctx->tok, KT_Define) == false, "Only define is supported in preprocessor");

  Token_Next(ctx);
  
  Ctx_Panic_If(ctx, TOKEN_IS_SYMBOL(&ctx->tok) == false,  "Unsupported symbol name for #define preprocessor");
  
  Node* node = Node_Create(NT_Symbol);

  node->text.str = TOKEN_STR(&ctx->tok);
  node->text.len = TOKEN_STR_LEN(&ctx->tok);
  node->symbol   = stb_hashlen(node->text.str, node->text.len);
  NodeList_Add(&ctx->exports->File.nodes, node);
  
  Token_Next(ctx);

  Ctx_Panic_If(ctx, TOKEN_IS_NUMBER(&ctx->tok) == false, "#define only supports numbers");

  Node* number = Node_Create(NT_Number);
  number->Number.value = TOKEN_NUMBER(&ctx->tok);

  node->Symbol.value = number;
}

void Parse_Function(TokenCtx* ctx)
{
  Node* node = Node_Create(NT_Function);
  node->text.str  = TOKEN_STR(&ctx->tok);
  node->text.len  = TOKEN_STR_LEN(&ctx->tok);
  node->symbol    = stb_hashlen(node->text.str, node->text.len);
  NodeList_Add(&ctx->exports->File.nodes, node);

  Token_Read(ctx);
  Ctx_Panic_If(ctx, TOKEN_IS_SPECIFIC_SYNTAX(&ctx->tok, ST_Parentheses_Open) == false, "Missing ( on function");

  Token_Read(ctx);
  Ctx_Panic_If(ctx, TOKEN_IS_SPECIFIC_SYNTAX(&ctx->tok, ST_Parentheses_Close) == false, "Missing ) on function");

  Token_Read(ctx);

  if (TOKEN_IS_SPECIFIC_SYNTAX(&ctx->tok, ST_Brace_Open))
  {
    Node* scope = Node_Create(NT_Scope);
    node->Function.scope = scope;

    Parse_Scope(ctx, scope);
    return;
  }

  Ctx_Panic(ctx, "Unknown token after function definition");
}

void  Parse_FunctionOrWhat(TokenCtx* ctx)
{
  // name
  if (TOKEN_IS_SYMBOL(&ctx->tok))
  {
    // name(
    if (TOKEN_IS_SPECIFIC_SYNTAX(&ctx->peek, ST_Parentheses_Open))
    {
      Parse_Function(ctx);
      return;
    }
    
    Ctx_Panic(ctx, "Unknown syntax after symbol");
  }

  Ctx_Panic(ctx, "Unrecongised keyword, was expecting a function name.");
}

Node* ReadText(const char* text, int text_length)
{
  TokenCtx ctx;
  memset(&ctx, 0, sizeof(TokenCtx));

  ctx.exports = Node_Create(NT_File);

  lexer_init(&ctx.tok.lexer, text, text_length - 1, NULL, Lexer_Debug, NULL);
  lexer_init(&ctx.last.lexer, text, text_length - 1, NULL, Lexer_Debug, NULL);

  while(Token_Read(&ctx))
  {
    // #define XYZ ...
    Print_Token(&ctx.tok);
    printf("...\n");

    if (TOKEN_IS_SPECIFIC_SYNTAX(&ctx.tok, ST_Hash))
    {
      Parse_Define(&ctx);
      continue;
    }
    // main()
    // {
    //  ...
    // }
    else if (TOKEN_IS_NAMED(&ctx.tok))
    {
      Parse_FunctionOrWhat(&ctx);
      continue;
    }

    Ctx_Panic(&ctx, "Unknown token in global scope!");
  }

  NodeList_Add(&ctx.exports->File.nodes, Node_Create(NT_EndOfFile));
  return ctx.exports;
}
