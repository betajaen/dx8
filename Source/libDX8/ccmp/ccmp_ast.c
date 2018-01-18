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

static int error = 0;
static struct dx8_Token* errorToken;
static const char* errorStr;

#define FAIL_WHEN(COND, STR) \
    if (COND)\
    {\
      error = 1;\
      errorToken = token;\
      errorStr = STR;\
      return NULL;\
    }\

#define FAIL_ALWAYS(STR)\
      error = 1;\
      errorToken = token;\
      errorStr = STR;\
      return NULL;\
      
#define FAIL_WHEN_SYNTAX(NOW, NOW_SYNTAX, FAIL_STR) \
    FAIL_WHEN((dx8_Token_IsSpecificSyntax(NOW, NOW_SYNTAX) == true), FAIL_STR)
    
#define FAIL_WHEN_NOT_SYNTAX(NOW, NOW_SYNTAX, FAIL_STR) \
    FAIL_WHEN((dx8_Token_IsSpecificSyntax(NOW, NOW_SYNTAX) == false), FAIL_STR)

#define FAIL_NOW_SYNTAX_1(NOW, NOW_SYNTAX, FAIL_STR) \
    FAIL_WHEN((dx8_Token_IsSpecificSyntax(NOW, NOW_SYNTAX) == false), FAIL_STR)

#define FAIL_NEXT_SYNTAX_1(NOW, NEXT_SYNTAX, FAIL_STR) \
    FAIL_WHEN((dx8_Token_IsSpecificSyntax(dx8_Token_Next(NOW), NEXT_SYNTAX) == false), FAIL_STR)
    
#define FAIL_NEXT_SYNTAX_2(NOW, NEXT_SYNTAX, NEXT2_SYNTAX, FAIL_STR) \
    FAIL_WHEN((dx8_Token_IsSpecificSyntax(dx8_Token_Next(NOW), NEXT_SYNTAX) == false) && \
              (dx8_Token_IsSpecificSyntax(dx8_Token_NextNext(NOW), NEXT2_SYNTAX) == false)\
    , FAIL_STR)

struct dx8_Token* Parse_Scope(struct dx8_Code_Scope* scope, struct dx8_Token* token)
{
  scope->return_.type   = RT_None;
  scope->return_.number = 0;
  scope->type           = CT_Scope;

  FAIL_WHEN_NOT_SYNTAX(token, TT_Syntax_Brace_Open, "Required { in start of scope block");

  token = dx8_Token_Next(token);

  while(dx8_Token_IsNullOrEof(token) == false)
  {
    // Extra { in scope
    FAIL_WHEN_SYNTAX(token, TT_Syntax_Brace_Open, "Unexpected { in scope");

    // return;
    // return 37;
    if (dx8_Token_IsSpecificKeyword(token, TT_Keyword_Return))
    {
      struct dx8_Token* next = dx8_Token_Next(token);

      // >> return 37;
      if (dx8_Token_IsNumber(next))
      {
        // check for ; and then }
        FAIL_NEXT_SYNTAX_2(next, ';', '}', "Missing ; or } from scope");

        scope->return_.type   = RT_Number;
        scope->return_.number = next->number;

        return dx8_Token_NextNext(next);
      }
      // return;
      else if (dx8_Token_IsSpecificSyntax(next, TT_Syntax_SemiColon))
      {
        FAIL_NEXT_SYNTAX_1(next, '}',  "Missing } from scope");
        
        return dx8_Token_Next(next);
      }

      FAIL_ALWAYS("Unknown return syntax");
    }

    // }
    if (dx8_Token_IsSpecificSyntax(token, '}'))
    {
      return dx8_Token_Next(token);
    }

    token++;
  }
  

  FAIL_ALWAYS("End of line found when finding closing }");
  return NULL;
}

struct dx8_Token* Parse_Function(struct dx8_Code_Function* function, struct dx8_Token* token)
{
  function->instruction_type = CT_Function;
  function->symbol           = stb_hashlen(token->str, token->str_length);

  // Check function is ()
  FAIL_NEXT_SYNTAX_2(token, '(', ')', "Missing function parenthesis");
  
  token = dx8_Token_NextNextNext(token);
  
  if (dx8_Token_IsSpecificSyntax(token, '{'))
  {
    token = Parse_Scope(&function->scope, token);
  }

  return token;
}

union dx8_Code_Extern* dx8_ast_tokens(struct dx8_Token* tokens)
{
  union dx8_Code_Extern* externs = NULL;
  u32 num = stb_arr_len(tokens) - 1;
  struct dx8_Token *token = tokens;

  error = 0;
  errorToken = NULL;

  while(token != NULL)
  {
    struct dx8_Token* next = dx8_Token_Next(token);

    if (token->type == TT_Symbol && (next != NULL && next->type == TT_Syntax_Parentheses_Open))
    {
      union dx8_Code_Extern extern_;
      token = Parse_Function(&extern_.function, token);

      if (error)
      {
        printf("Syntax Error: %s\n", errorStr);
        dx8_token_debug(0, errorToken);
        return NULL;
      }

      stb_arr_push(externs, extern_);
      continue;
    }

    token = dx8_Token_Next(token);
  }

  union dx8_Code_Extern eof_;
  eof_.eof_.instruction_type = CT_EOF;

  stb_arr_push(externs, eof_);

  return externs;
}
