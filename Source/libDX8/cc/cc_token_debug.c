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

void DebugTokens(int id, struct Token* token)
{
  if (token == NULL)
  {
    printf("<%i> NULL.\n", id);
    return;
  }

  switch(token->type)
  {
    case TT_None:                         printf("<%i> None.\n", id); return;
    case TT_Character:                    printf("<%i> Character %i.\n", id, token->number); return;
    case TT_Number:                       printf("<%i> Number %i.\n", id, token->number); return;
    case TT_String:                       printf("<%i> String '%.*s'.\n", id, token->str_length, token->str); return;
    case TT_Symbol:                       printf("<%i> Symbol %.*s\n", id, token->str_length, token->str); return;
    case TT_Syntax_SemiColon:             printf("<%i> Syntax ;.\n", id); return;
    case TT_Syntax_Parentheses_Open:      printf("<%i> Syntax (.\n", id); return;
    case TT_Syntax_Parentheses_Close:     printf("<%i> Syntax ).\n", id); return;
    case TT_Syntax_Brace_Open:            printf("<%i> Syntax {.\n", id); return;
    case TT_Syntax_Brace_Close:           printf("<%i> Syntax }.\n", id); return;
    case TT_Keyword_EndOfFile:            printf("<%i> Keyword EndOfFile.\n", id); return;
    case TT_Keyword_Int:                  printf("<%i> Keyword Integer.\n", id); return;
    case TT_Keyword_Char:                 printf("<%i> Keyword Character.\n", id); return;
    case TT_Keyword_Return:               printf("<%i> Keyword Return.\n", id); return;
    case TT_Keyword_Define:               printf("<%i> Keyword Define.\n", id); return;
  }
}
