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

#include <dx8/Core/Cpu16/dx8_Cpu16.h>

struct Cpu16 cpu16;

#define CPU cpu16

#define OPERAND_dst LO_NIBBLE(operand)
#define OPERAND_src HI_NIBBLE(operand)

//#define MAKE_WORD(LO, HI) (LO + ((HI) * 256))

#define PC_FETCH() imm = 0

void Cpu16_Reset()
{
  for(int ii=0;ii < Reg_COUNT;ii++)
    CPU.registers[ii] = 0;
}

void Cpu_PushW(Word v)
{
}

void Cpu_PushB(Byte v)
{
}

Word Cpu_PopW()
{
  return 0;
}

Byte Cpu_PopB()
{
  return 0;
}

void Cpu_PushPc_Reg()
{
}

void Cpu_PushPc_Imm(Word value)
{
}

void Cpu_PopPc()
{
}

#include <dx8/Core/Cpu16/dx8_Cpu16_Op_Stack.inc>
#include <dx8/Core/Cpu16/dx8_Cpu16_Op_Memory.inc>
#include <dx8/Core/Cpu16/dx8_Cpu16_Op_Assignment.inc>
#include <dx8/Core/Cpu16/dx8_Cpu16_Op_Math.inc>
#include <dx8/Core/Cpu16/dx8_Cpu16_Op_BCD.inc>
#include <dx8/Core/Cpu16/dx8_Cpu16_Op_Logic.inc>
#include <dx8/Core/Cpu16/dx8_Cpu16_Op_Jump.inc>
#include <dx8/Core/Cpu16/dx8_Cpu16_Op_Compare.inc>
#include <dx8/Core/Cpu16/dx8_Cpu16_Op_Branch.inc>
#include <dx8/Core/Cpu16/dx8_Cpu16_Op_Io.inc>
#include <dx8/Core/Cpu16/dx8_Cpu16_Op_Interrupt.inc>
#include <dx8/Core/Cpu16/dx8_Cpu16_Op_Breakpoint.inc>

#include <dx8/Core/Cpu16/dx8_Cpu16_Opcodes.inc>
#include <dx8/Core/Cpu16/dx8_Cpu16_Cycles.inc>

void Cpu16_Clock(unsigned int cycles)
{
  if (cycles <= CPU.cycles)
    return;
  
  if (CPU.halt)
  {
    CPU.cycles = cycles;
    return;
  }
  
  while(cpu.cycle < cycles)
  {
    // Fetch
    // Decode
    // Run
    // Add to cycles
  }
}
