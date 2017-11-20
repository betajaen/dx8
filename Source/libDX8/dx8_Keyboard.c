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

#include "dx8.h"
#include "dx8_Scancodes.inc"

#include "log_c/src/log.h"

const char* kKeyStr[] = {
  "0",
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "a",
  "b",
  "c",
  "d",
  "e",
  "f",
  "g",
  "h",
  "i",
  "j",
  "k",
  "l",
  "m",
  "n",
  "o",
  "p",
  "q",
  "r",
  "s",
  "t",
  "u",
  "v",
  "w",
  "x",
  "y",
  "z",
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z",
  " ",
  "!",
  "\"",
  "#",
  "$",
  "%",
  "&",
  "\'",
  "(",
  ")",
  "@",
  "+",
  "-",
  "*",
  "=",
  "/",
  ",",
  ".",
  ";",
  "[",
  "]",
  "{",
  "}",
  "?",
  "<",
  ">",
  ":",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
  "^",
};


#define MAX_KEY_EVENTS 4

Byte sState[KEY_COUNT + 1];
Byte sEvents[MAX_KEY_EVENTS];

void Keyboard_Setup()
{
  for(int i=0;i < KEY_COUNT+1;i++)
  {
    sState[i] = 0;
  }
  for (int i = 0; i < MAX_KEY_EVENTS + 1; i++)
  {
    sEvents[i] = 0;
  }
}

void Keyboard_Teardown()
{
}

void Keyboard_PushEvent(Byte key)
{
  for(int i=0;i < MAX_KEY_EVENTS;i++)
  {
    if (sEvents[i] == 0)
    {
      sEvents[i] = key;
      return;
    }
  }
}

void Keyboard_ClearEvents(Byte key)
{
  for (int i = 0; i < MAX_KEY_EVENTS; i++)
  {
    sEvents[i] = 0;
  }
}

void Keyboard_ReceiveKeyUp(int key)
{
  if (key >= 1 && key < (KEY_COUNT + 1))
  {
    sState[key] = 0;
    Keyboard_PushEvent(key);
  }

  LOGF("KeyUp = $%2X: %s", key, kKeyStr[key]);
}

void Keyboard_ReceiveKeyDown(int key)
{
  if (key >= 1 && key < (KEY_COUNT + 1))
  {
    sState[key] = 1;
    Keyboard_PushEvent(key);
  }

  LOGF("KeyDown = $%2X: %s", key, kKeyStr[key]);
}

void Keyboard_Tick()
{
  for (int i = 0; i < MAX_KEY_EVENTS; i++)
  {
    Byte key = sEvents[i];
    if (key == 0)
      continue;

    Io_Interrupt(IO_OP_KEY, key, sState[key]);
    sEvents[i] = 0;
  }
}

