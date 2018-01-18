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

#define LEXER_USE_FIXED_TYPES
#define LEXER_USE_ASSERT
#define LEXER_IMPLEMENTATION
#define LEXER_SIZE_TYPE dx8_size_t
typedef dx8_size_t wby_size;

#include "References/mmx/mm_lexer.h"

static void
test_log(void *pArg, enum lexer_log_level type, lexer_size line, const char *fmt, ...)
{
//    char buffer[1024];
    va_list arglist;
    (void)pArg;
    va_start(arglist, fmt);
    printf(":::::::: %s(%lu):  ", (type == LEXER_WARNING) ? "Warning" : "Error", line);
    vprintf(fmt, arglist);
    va_end(arglist);
}

bool dx8_Token_IsNullOrEof(struct dx8_Token* token)
{
  return token == NULL || (token != NULL && token->type == TT_Keyword_EndOfFile);
}

bool dx8_Token_IsString(struct dx8_Token* token)
{
  return token != NULL && token->type == TT_String;
}

bool dx8_Token_IsNumber(struct dx8_Token* token)
{
  return token != NULL && token->type == TT_Number;
}

bool dx8_Token_IsKeyword(struct dx8_Token* token)
{
  return token != NULL && token->type > 0xFFFF;
}

bool dx8_Token_IsSpecificKeyword(struct dx8_Token* token, int keyword)
{
  return token != NULL && token->type > 0xFFFF && token->type == keyword;
}

bool dx8_Token_IsSymbol(struct dx8_Token* token)
{
  return token != NULL && token->type == TT_Symbol;
}

bool dx8_Token_IsSyntax(struct dx8_Token* token)
{
  return token != NULL && token->type > 4 && token->type < 0xFF;
}

bool dx8_Token_IsSpecificSyntax(struct dx8_Token* token, int syntax)
{
  return token != NULL && token->type > 4 && token->type < 0xFF && token->type == syntax;
}


bool dx8_Token_AfterTokenIs(struct dx8_Token* token, int type)
{
  if (token == NULL)
    return false;

  if (token->type == TT_Keyword_EndOfFile)
    return false;

  struct dx8_Token* next = token + 1;
  
  return token->type == type;
}

struct dx8_Token* dx8_Token_Next(struct dx8_Token* token)
{
  if (token == NULL)
    return NULL;
    
  if (token == NULL)
    return NULL;

  if (token->type == TT_Keyword_EndOfFile)
    return NULL;

  struct dx8_Token* next = token + 1;
  
  if (next->type == TT_Keyword_EndOfFile)
    return NULL;

  return next;
}

struct dx8_Token* dx8_Token_NextNext(struct dx8_Token* token)
{
  return dx8_Token_Next(dx8_Token_Next(token));
}

struct dx8_Token* dx8_Token_NextNextNext(struct dx8_Token* token)
{
  return dx8_Token_Next(dx8_Token_NextNext(token));
}
static void Token_Clear(struct dx8_Token* token)
{
  token->type       = TT_None;
  token->str        = NULL;
  token->str_length = 0;
  token->number     = 0;
}

static struct dx8_Token* Token_AddNumber(struct dx8_Token* token, struct lexer_token* tok)
{
  struct dx8_Token t;
  Token_Clear(&t);

  t.type = TT_Number;
  t.number = lexer_token_to_int(tok);

  stb_arr_push(token, t);
  return token;
}

static struct dx8_Token* Token_AddString(struct dx8_Token* token, struct lexer_token* tok)
{
  struct dx8_Token t;
  Token_Clear(&t);

  t.type = TT_String;
  t.str = tok->str;
  t.str_length = tok->len;

  stb_arr_push(token, t);
  return token;
}

static struct dx8_Token* Token_AddSymbol(struct dx8_Token* token, struct lexer_token* tok)
{
  struct dx8_Token t;
  Token_Clear(&t);

  t.type = TT_Symbol;
  t.str = tok->str;
  t.str_length = tok->len;

  stb_arr_push(token, t);
  return token;
}

static struct dx8_Token* Token_AddKeyword(struct dx8_Token* token, int keyword)
{
  struct dx8_Token t;
  Token_Clear(&t);

  t.type = keyword;

  stb_arr_push(token, t);
  return token;
}

static struct dx8_Token* Token_AddSyntax(struct dx8_Token* token, int syntax)
{
  struct dx8_Token t;
  Token_Clear(&t);

  t.type = syntax;

  stb_arr_push(token, t);
  return token;
}


struct dx8_Token* dx8_tokenise_text(const char* text)
{
  struct dx8_Token* tokens = NULL;

  struct lexer_token tok;
  struct lexer lexer;

  lexer_init(&lexer, text, (dx8_size_t) strlen(text), NULL, test_log, NULL);

  while(lexer_read(&lexer, &tok) == 1)
  {
    if (tok.type == LEXER_TOKEN_STRING)
    {
      tokens = Token_AddString(tokens, &tok);
    }
    else if (tok.type == LEXER_TOKEN_LITERAL)
    {
      printf("number (char literal)\n");
    }
    else if (tok.type == LEXER_TOKEN_NUMBER)
    {
      if ((tok.subtype & LEXER_TOKEN_INT) != 0)
      {
        tokens = Token_AddNumber(tokens, &tok);
      }
      else
      {
        printf("unknown number\n");
      }
    }
    else if (tok.type == LEXER_TOKEN_NAME)
    {
      if (lexer_token_cmp(&tok, "int") == 0)
        tokens = Token_AddKeyword(tokens, TT_Keyword_Int);
      else if (lexer_token_cmp(&tok, "char") == 0)
        tokens = Token_AddKeyword(tokens, TT_Keyword_Char);
      else if (lexer_token_cmp(&tok, "return") == 0)
        tokens = Token_AddKeyword(tokens, TT_Keyword_Return);
      else if (lexer_token_cmp(&tok, "define") == 0)
        tokens = Token_AddKeyword(tokens, TT_Keyword_Define);
      else
        tokens = Token_AddSymbol(tokens, &tok);
    }
    else if (tok.type == LEXER_TOKEN_PUNCTUATION)
    {
      if (tok.subtype == LEXER_PUNCT_PARENTHESE_OPEN)
        tokens = Token_AddSyntax(tokens, TT_Syntax_Parentheses_Open);
      else  if (tok.subtype == LEXER_PUNCT_PARENTHESE_CLOSE)
        tokens = Token_AddSyntax(tokens, TT_Syntax_Parentheses_Close);
      else if (tok.subtype == LEXER_PUNCT_BRACE_OPEN)
        tokens = Token_AddSyntax(tokens, TT_Syntax_Brace_Open);
      else  if (tok.subtype == LEXER_PUNCT_BRACE_CLOSE)
        tokens = Token_AddSyntax(tokens, TT_Syntax_Brace_Close);
      else  if (tok.subtype == LEXER_PUNCT_SEMICOLON)
        tokens = Token_AddSyntax(tokens, TT_Syntax_SemiColon);
      else  if (tok.subtype == LEXER_PUNCT_PRECOMPILER)
        tokens = Token_AddSyntax(tokens, TT_Syntax_Hash);
      else
        printf("unknown syntax\n");
    }
    else
    {
      printf("unknown\n");
    }
    //printf("%i %i -> %s\n", tok.type, tok.subtype, tok.str);
  }

  tokens = Token_AddKeyword(tokens, TT_Keyword_EndOfFile);

  return tokens;
}
