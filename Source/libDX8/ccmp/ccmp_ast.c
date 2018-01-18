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
static struct Token* errorToken;
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
    FAIL_WHEN((Token_IsSpecificSyntax(NOW, NOW_SYNTAX) == true), FAIL_STR)
    
#define FAIL_WHEN_NOT_SYNTAX(NOW, NOW_SYNTAX, FAIL_STR) \
    FAIL_WHEN((Token_IsSpecificSyntax(NOW, NOW_SYNTAX) == false), FAIL_STR)

#define FAIL_NOW_SYNTAX_1(NOW, NOW_SYNTAX, FAIL_STR) \
    FAIL_WHEN((Token_IsSpecificSyntax(NOW, NOW_SYNTAX) == false), FAIL_STR)

#define FAIL_NEXT_SYNTAX_1(NOW, NEXT_SYNTAX, FAIL_STR) \
    FAIL_WHEN((Token_IsSpecificSyntax(Token_Next(NOW), NEXT_SYNTAX) == false), FAIL_STR)
    
#define FAIL_NEXT_SYNTAX_2(NOW, NEXT_SYNTAX, NEXT2_SYNTAX, FAIL_STR) \
    FAIL_WHEN((Token_IsSpecificSyntax(Token_Next(NOW), NEXT_SYNTAX) == false) && \
              (Token_IsSpecificSyntax(Token_NextNext(NOW), NEXT2_SYNTAX) == false)\
    , FAIL_STR)

#define FAIL_WHEN_KEYWORD(NOW, NOW_KEYWORD, FAIL_STR) \
    FAIL_WHEN((Token_IsSpecificKeyword(NOW, NOW_KEYWORD) == true), FAIL_STR)
    
#define FAIL_WHEN_NOT_KEYWORD(NOW, NOW_KEYWORD, FAIL_STR) \
    FAIL_WHEN((Token_IsSpecificKeyword(NOW, NOW_KEYWORD) == false), FAIL_STR)
    
#define FAIL_WHEN_NOT_NUMBER(NOW, FAIL_STR) \
    FAIL_WHEN((Token_IsNumber(NOW) == false), FAIL_STR)
    
#define FAIL_WHEN_NOT_STRING(NOW, FAIL_STR) \
    FAIL_WHEN((Token_IsString(NOW) == false), FAIL_STR)


struct Token* Parse_Scope(struct ScopeNode* scope, struct Token* token)
{
  scope->return_.type   = RT_None;
  scope->return_.number = 0;
  scope->type           = NT_Scope;
  scope->statements     = NULL;

  FAIL_WHEN_NOT_SYNTAX(token, TT_Syntax_Brace_Open, "Required { in start of scope block");

  token = Token_Next(token);

  while(Token_IsNullOrEof(token) == false)
  {
    struct Token* next = Token_Next(token);

    // Extra { in scope
    FAIL_WHEN_SYNTAX(token, TT_Syntax_Brace_Open, "Unexpected { in scope");

    // asm "xyz";
    if (Token_IsSpecificKeyword(token, TT_Keyword_Asm))
    {
      FAIL_WHEN_NOT_STRING(next, "Expected string for asm");

      union StatementNode statement;
      statement.asm_.type = NT_Assembly;
      statement.asm_.text = next->str;
      statement.asm_.text_length = next->str_length;
      
      token = Token_NextNext(token);

      FAIL_WHEN_NOT_SYNTAX(token, TT_Syntax_SemiColon, "Expected ; for asm");

      stb_arr_push(scope->statements, statement);

      token = Token_Next(next);
      continue;
    }

    // return;
    // return 37;
    if (Token_IsSpecificKeyword(token, TT_Keyword_Return))
    {
      // >> return 37;
      if (Token_IsNumber(next))
      {
        // check for ; and then }
        FAIL_NEXT_SYNTAX_2(next, ';', '}', "Missing ; or } from scope");

        scope->return_.type   = RT_Number;
        scope->return_.number = next->number;

        return Token_NextNext(next);
      }
      // return symbol;
      else if (Token_IsSymbol(next))
      {
        scope->return_.type   = RT_Symbol;
        scope->return_.symbol = stb_hashlen(next->str, next->str_length);
        
        return Token_NextNext(next);
      }
      // return;
      else if (Token_IsSpecificSyntax(next, TT_Syntax_SemiColon))
      {
        FAIL_NEXT_SYNTAX_1(next, '}',  "Missing } from scope");
        
        return Token_Next(next);
      }

      FAIL_ALWAYS("Unknown return syntax");
    }

    // }
    if (Token_IsSpecificSyntax(token, '}'))
    {
      return Token_Next(token);
    }

    token++;
  }
  

  FAIL_ALWAYS("End of line found when finding closing }");
  return NULL;
}

struct Token* Parse_Define(struct DefineNode* define, struct Token* token)
{
  FAIL_WHEN_NOT_SYNTAX(token, TT_Syntax_Hash, "Required # in #define");

  token = Token_Next(token);
  
  FAIL_WHEN_NOT_KEYWORD(token, TT_Keyword_Define, "Expected define in preprocessor");

  token = Token_Next(token);

  define->instruction_type = NT_Define;
  define->symbol           = stb_hashlen(token->str, token->str_length);
  
  token = Token_Next(token);

  FAIL_WHEN_NOT_NUMBER(token, "Expected number in preprocessor define");

  define->value           = token->number;
  
  return Token_Next(token);
}


struct Token* Parse_Function(struct FunctionNode* function, struct Token* token)
{
  function->instruction_type = NT_Function;
  function->symbol           = stb_hashlen(token->str, token->str_length);

  // Check function is ()
  FAIL_NEXT_SYNTAX_2(token, '(', ')', "Missing function parenthesis");
  
  token = Token_NextNextNext(token);
  
  if (Token_IsSpecificSyntax(token, '{'))
  {
    token = Parse_Scope(&function->scope, token);
  }

  return token;
}

union FileNode* Nodify(struct Token* tokens)
{
  union FileNode* externs = NULL;
  u32 num = stb_arr_len(tokens) - 1;
  struct Token *token = tokens;

  error = 0;
  errorToken = NULL;

  while(token != NULL)
  {
    struct Token* next = Token_Next(token);

    if (token->type == TT_Syntax_Hash && Token_IsSpecificKeyword(next, TT_Keyword_Define))
    {
      union FileNode extern_;
      token = Parse_Define(&extern_.define, token);
      
      if (error)
      {
        printf("Syntax Error: %s\n", errorStr);
        DebugTokens(0, errorToken);
        return NULL;
      }

      stb_arr_push(externs, extern_);

      continue;
    }

    if (token->type == TT_Symbol && (next != NULL && next->type == TT_Syntax_Parentheses_Open))
    {
      union FileNode extern_;
      token = Parse_Function(&extern_.function, token);

      if (error)
      {
        printf("Syntax Error: %s\n", errorStr);
        DebugTokens(0, errorToken);
        return NULL;
      }

      stb_arr_push(externs, extern_);
      continue;
    }

    token = Token_Next(token);
  }

  union FileNode eof_;
  eof_.eof_.instruction_type = NT_EndOfFile;

  stb_arr_push(externs, eof_);

  return externs;
}
