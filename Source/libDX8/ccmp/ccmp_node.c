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

struct Token* Parse_Scope(Node* scope, struct Token* token)
{
  NodeList* list = &scope->Scope.nodes;

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

      Node* asm_ = Node_Create(NT_Assembly);
      asm_->Assembly.text.str = next->str;
      asm_->Assembly.text.len = next->str_length;

      token = Token_NextNext(token);

      FAIL_WHEN_NOT_SYNTAX(token, TT_Syntax_SemiColon, "Expected ; for asm");

      NodeList_Add(list, asm_);

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

        Node* number = Node_Create(NT_Number);
        number->Number.value = next->number;

        scope->Scope.return_ = number;

        return Token_NextNext(next);
      }
      // return symbol;
      else if (Token_IsSymbol(next))
      {
        Node* symbol     = Node_Create(NT_Symbol);
        symbol->text.str = next->str;
        symbol->text.len = next->str_length;
        symbol->symbol   = stb_hashlen(next->str, next->str_length);
        
        scope->Scope.return_ = symbol;

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

struct Token* Parse_Define(Node* define, struct Token* token)
{
  FAIL_WHEN_NOT_SYNTAX(token, TT_Syntax_Hash, "Required # in #define");

  token = Token_Next(token);
  
  FAIL_WHEN_NOT_KEYWORD(token, TT_Keyword_Define, "Expected define in preprocessor");

  token = Token_Next(token);

  define->text.str = token->str;
  define->text.len = token->str_length;
  define->symbol   = stb_hashlen(token->str, token->str_length);
  
  token = Token_Next(token);

  FAIL_WHEN_NOT_NUMBER(token, "Expected number in preprocessor define");

  Node* number = Node_Create(NT_Number);
  number->Number.value = token->number;

  define->Define.value = number;

  return Token_Next(token);
}


struct Token* Parse_Function(Node* function, struct Token* token)
{
  function->text.str  = token->str;
  function->text.len  = token->str_length;
  function->symbol    = stb_hashlen(token->str, token->str_length);

  // Check function is ()
  FAIL_NEXT_SYNTAX_2(token, '(', ')', "Missing function parenthesis");
  
  token = Token_NextNextNext(token);
  
  if (Token_IsSpecificSyntax(token, '{'))
  {
    function->Function.scope = Node_Create(NT_Scope);
    token = Parse_Scope(function->Function.scope, token);
  }

  return token;
}

Node* Nodify(struct Token* tokens)
{
  Node* file = Node_Create(NT_File);
  
  u32 num = stb_arr_len(tokens) - 1;
  struct Token *token = tokens;

  error = 0;
  errorToken = NULL;

  while(token != NULL)
  {
    struct Token* next = Token_Next(token);

    if (token->type == TT_Syntax_Hash && Token_IsSpecificKeyword(next, TT_Keyword_Define))
    {
      Node* node = Node_Create(NT_Define);
      token = Parse_Define(node, token);
      
      if (error)
      {
        printf("Syntax Error: %s\n", errorStr);
        DebugTokens(0, errorToken);
        return NULL;
      }

      NodeList_Add(&file->File.nodes, node);
      continue;
    }

    if (token->type == TT_Symbol && (next != NULL && next->type == TT_Syntax_Parentheses_Open))
    {
      Node* node = Node_Create(NT_Function);
      token = Parse_Function(node, token);

      if (error)
      {
        printf("Syntax Error: %s\n", errorStr);
        DebugTokens(0, errorToken);
        return NULL;
      }
      
      NodeList_Add(&file->File.nodes, node);
      continue;
    }

    token = Token_Next(token);
  }


  NodeList_Add(&file->File.nodes, Node_Create(NT_EndOfFile));

  return file;
}
