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

//! This is an auto-generated file! Please do not edit.

#include <dx8/Core/Cpu160000/dx8_Cpu160000.h>
#include <dx8/Core/Mmu164512/dx8_Mmu164512.h>

extern struct Cpu16 CPU;

void Cpu16_Execute(Byte opcode, Byte operand, Byte* subCycle)
{
  switch(opcode)
  {
    // index=0, instruction=psh
    // type=unsigned_register, name=q, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=word
    // flags=nil
    case 0:
    {
      switch(*subCycle)
      {
        case 0:
        {
          Cpu16_Bus_WriteWord(CPU.stack[CPU.protected], CPU.reg.registers[LO_NIBBLE(operand)].w);
          *subCycle++;
        }
        break;
        case 1:
        {
          CPU.stack[CPU.protected]--;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=1, instruction=pop
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=word
    // flags={"N"=>:set, "Z"=>:set}
    case 1:
    {
      switch(*subCycle)
      {
        case 0:
        {
          CPU.stack[CPU.protected]++;
          CPU.reg.registers[LO_NIBBLE(operand)].w = Cpu16_Bus_ReadWord(CPU.stack[CPU.protected]);
          *subCycle++;
        }
        break;
        case 1:
        {
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
          CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=2, instruction=l
    // type=unsigned_register, name=p, target=param_a_register
    // type=address_register_absolute, name=address, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "Z"=>:set}
    case 2:
    {
      switch(*subCycle)
      {
        case 0:
        {
          CPU.reg.registers[LO_NIBBLE(operand)].w = Cpu16_Bus_ReadWord(CPU.reg.registers[HI_NIBBLE(operand)].w);
          *subCycle++;
        }
        break;
        case 1:
        {
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
          CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=3, instruction=s
    // type=address_register_absolute, name=address, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags=nil
    case 3:
    {
      switch(*subCycle)
      {
        case 0:
        {
          Cpu16_Bus_WriteWord(CPU.reg.registers[HI_NIBBLE(operand)].w, CPU.reg.registers[LO_NIBBLE(operand)].w);
          *subCycle++;
        }
        break;
        case 1:
        {
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=4, instruction=cpy
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 4:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = 0;
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = 0;
      *subCycle = 0xFF;
    }
    break;
    // index=5, instruction=exc
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:false, "V"=>:false, "Z"=>:false, "C"=>:false}
    case 5:
    {
      Word t = CPU.reg.registers[LO_NIBBLE(operand)].w;
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.reg.registers[HI_NIBBLE(operand)].w = t;
      *subCycle = 0xFF;
    }
    break;
    // index=6, instruction=stq
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=q, target=param_b
    // pcread=false
    // type=word
    // flags={"N"=>0, "V"=>0, "Z"=>:set, "C"=>0}
    case 6:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = (HI_NIBBLE(operand));
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      *subCycle = 0xFF;
    }
    break;
    // index=7, instruction=add
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 7:
    {
      u32 r = (u32) CPU.reg.registers[LO_NIBBLE(operand)].w + (u32) CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.reg.registers[LO_NIBBLE(operand)].w = (r & 0xFFFF);
      CPU.ccr.n = ((r) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(r);
      CPU.ccr.z = ((r & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(r);
      *subCycle = 0xFF;
    }
    break;
    // index=8, instruction=ads
    // type=signed_register, name=p, target=param_a_register
    // type=signed_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 8:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].sw = CPU.reg.registers[LO_NIBBLE(operand)].sw + CPU.reg.registers[HI_NIBBLE(operand)].sw;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].sw) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].sw);
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].sw & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].sw);
      *subCycle = 0xFF;
    }
    break;
    // index=9, instruction=adq
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=q, target=param_b
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 9:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w + (HI_NIBBLE(operand));
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=10, instruction=sub
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 10:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w - CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=11, instruction=sbs
    // type=signed_register, name=p, target=param_a_register
    // type=signed_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 11:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w - CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=12, instruction=sbq
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=q, target=param_b
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 12:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w - (HI_NIBBLE(operand));
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=13, instruction=mul
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 13:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w * CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=14, instruction=mls
    // type=signed_register, name=p, target=param_a_register
    // type=signed_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 14:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w * CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=15, instruction=div
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 15:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w / CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=16, instruction=dvs
    // type=signed_register, name=p, target=param_a_register
    // type=signed_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 16:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w / CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=17, instruction=and
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 17:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w & CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = 0;
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = 0;
      *subCycle = 0xFF;
    }
    break;
    // index=18, instruction=or
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 18:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w | CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = 0;
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = 0;
      *subCycle = 0xFF;
    }
    break;
    // index=19, instruction=xor
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 19:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w ^ CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = 0;
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = 0;
      *subCycle = 0xFF;
    }
    break;
    // index=20, instruction=not
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 20:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = ~CPU.reg.registers[LO_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = 0;
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = 0;
      *subCycle = 0xFF;
    }
    break;
    // index=21, instruction=shl
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=shift, target=param_b
    // pcread=false
    // type=word
    // flags={"C"=>:set}
    case 21:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w << (HI_NIBBLE(operand));
      CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=22, instruction=rol
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=shift, target=param_b
    // pcread=false
    // type=word
    // flags=nil
    case 22:
    {
      *subCycle = 0xFF;
    }
    break;
    // index=23, instruction=jmp
    // type=address_register_absolute, name=address, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 23:
    {
      CPU.pc = CPU.reg.registers[LO_NIBBLE(operand)].w;
      *subCycle = 0xFF;
    }
    break;
    // index=24, instruction=bra
    // type=address_register_relative, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 24:
    {
      Cpu16_Branch_Sword(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=25, instruction=cmp
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 25:
    {
      Word t = CPU.reg.registers[HI_NIBBLE(operand)].w - CPU.reg.registers[LO_NIBBLE(operand)].w;
      CPU.ccr.n = ((t) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(t);
      CPU.ccr.z = ((t & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(t);
      *subCycle = 0xFF;
    }
    break;
    // index=26, instruction=cmp
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=q, target=param_b
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 26:
    {
      Word t = (HI_NIBBLE(operand)) - CPU.reg.registers[LO_NIBBLE(operand)].w;
      CPU.ccr.n = ((t) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(t);
      CPU.ccr.z = ((t & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(t);
      *subCycle = 0xFF;
    }
    break;
    // index=27, instruction=dcp
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_word, name=q, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 27:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_27_1;
        }
        break;
        case 1:
        {
          ins_27_1:
          --CPU.reg.registers[LO_NIBBLE(operand)].w;
          Word t = CPU.mdr.w - CPU.reg.registers[LO_NIBBLE(operand)].w;
          CPU.ccr.n = ((t) & 0x8000) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(t);
          CPU.ccr.z = ((t & 0xFF) == 0);
          CPU.ccr.c = CHECK_CARRY_WORD(t);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=28, instruction=beq
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 28:
    {
      // Unimplemented Opcode
    }
    break;
    // index=29, instruction=bgt
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 29:
    {
      // Unimplemented Opcode
    }
    break;
    // index=30, instruction=bmt
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 30:
    {
      // Unimplemented Opcode
    }
    break;
    // index=31, instruction=bge
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 31:
    {
      // Unimplemented Opcode
    }
    break;
    // index=32, instruction=bme
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 32:
    {
      // Unimplemented Opcode
    }
    break;
    // index=33, instruction=brz
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 33:
    {
      // Unimplemented Opcode
    }
    break;
    // index=34, instruction=brc
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 34:
    {
      // Unimplemented Opcode
    }
    break;
    // index=35, instruction=brp
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 35:
    {
      // Unimplemented Opcode
    }
    break;
    // index=36, instruction=tsr
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 36:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.stack[CPU.protected];
      *subCycle = 0xFF;
    }
    break;
    // index=37, instruction=rti
    // type=none, name=none, target=none
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 37:
    {
      *subCycle = 0xFF;
    }
    break;
    case 38:
      break;
    case 39:
      break;
    case 40:
      break;
    case 41:
      break;
    case 42:
      break;
    case 43:
      break;
    case 44:
      break;
    case 45:
      break;
    case 46:
      break;
    case 47:
      break;
    case 48:
      break;
    case 49:
      break;
    case 50:
      break;
    case 51:
      break;
    case 52:
      break;
    case 53:
      break;
    case 54:
      break;
    case 55:
      break;
    case 56:
      break;
    case 57:
      break;
    case 58:
      break;
    case 59:
      break;
    case 60:
      break;
    case 61:
      break;
    case 62:
      break;
    case 63:
      break;
    // index=64, instruction=psh
    // type=unsigned_register, name=q, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=byte
    // flags=nil
    case 64:
    {
      switch(*subCycle)
      {
        case 0:
        {
          Cpu16_Bus_WriteByte(CPU.stack[CPU.protected], CPU.reg.registers[LO_NIBBLE(operand)].w);
          *subCycle++;
        }
        break;
        case 1:
        {
          CPU.stack[CPU.protected]--;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=65, instruction=pop
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "Z"=>:set}
    case 65:
    {
      switch(*subCycle)
      {
        case 0:
        {
          CPU.stack[CPU.protected]++;
          CPU.reg.registers[LO_NIBBLE(operand)].w = Cpu16_Bus_ReadByte(CPU.stack[CPU.protected]);
          *subCycle++;
        }
        break;
        case 1:
        {
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
          CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=66, instruction=l
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_word, name=address, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "Z"=>:set}
    case 66:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_66_1;
        }
        break;
        case 1:
        {
          ins_66_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = Cpu16_Bus_ReadWord(CPU.mdr.w);
          *subCycle++;
        }
        break;
        case 2:
        {
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
          CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=67, instruction=s
    // type=unsigned_word, name=address, target=extended_word
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=true
    // type=word
    // flags=nil
    case 67:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_67_1;
        }
        break;
        case 1:
        {
          ins_67_1:
          Cpu16_Bus_WriteWord(CPU.reg.registers[HI_NIBBLE(operand)].w, CPU.mdr.w);
          *subCycle++;
        }
        break;
        case 2:
        {
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=68, instruction=cpy
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 68:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[HI_NIBBLE(operand)].w & 0xFF;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = 0;
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = 0;
      *subCycle = 0xFF;
    }
    break;
    // index=69, instruction=exc
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:false, "V"=>:false, "Z"=>:false, "C"=>:false}
    case 69:
    {
      Byte t = (Byte) CPU.reg.registers[LO_NIBBLE(operand)].w;
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.reg.registers[HI_NIBBLE(operand)].w = t;
      *subCycle = 0xFF;
    }
    break;
    // index=70, instruction=stq
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=q, target=param_b
    // pcread=false
    // type=byte
    // flags={"N"=>0, "V"=>0, "Z"=>:set, "C"=>0}
    case 70:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = (HI_NIBBLE(operand)) & 0xFF;
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      *subCycle = 0xFF;
    }
    break;
    // index=71, instruction=add
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 71:
    {
      i32 r = (u32) CPU.reg.registers[LO_NIBBLE(operand)].w + (u32) CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.reg.registers[LO_NIBBLE(operand)].w = (r & 0xFF);
      CPU.ccr.n = ((r) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(r);
      CPU.ccr.z = (r == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(r);
      *subCycle = 0xFF;
    }
    break;
    // index=72, instruction=ads
    // type=signed_register, name=p, target=param_a_register
    // type=signed_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 72:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].b = CPU.reg.registers[LO_NIBBLE(operand)].b + CPU.reg.registers[HI_NIBBLE(operand)].b;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].b) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].b);
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].b == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].b);
      CPU.reg.registers[LO_NIBBLE(operand)].b = (Byte) CPU.reg.registers[LO_NIBBLE(operand)].b;
      *subCycle = 0xFF;
    }
    break;
    // index=73, instruction=adq
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=q, target=param_b
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 73:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w + (HI_NIBBLE(operand));
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.reg.registers[LO_NIBBLE(operand)].w = (Byte) CPU.reg.registers[LO_NIBBLE(operand)].w;
      *subCycle = 0xFF;
    }
    break;
    // index=74, instruction=sub
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 74:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w - CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=75, instruction=sbs
    // type=signed_register, name=p, target=param_a_register
    // type=signed_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 75:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w - CPU.reg.registers[HI_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=76, instruction=sbq
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=q, target=param_b
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 76:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w - (HI_NIBBLE(operand));
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=77, instruction=mul
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 77:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w * CPU.reg.registers[HI_NIBBLE(operand)].w) & 0xFF;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=78, instruction=mls
    // type=signed_register, name=p, target=param_a_register
    // type=signed_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 78:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w * CPU.reg.registers[HI_NIBBLE(operand)].w) & 0xFF;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.reg.registers[LO_NIBBLE(operand)].w = (Byte) CPU.reg.registers[LO_NIBBLE(operand)].w;
      *subCycle = 0xFF;
    }
    break;
    // index=79, instruction=div
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 79:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w / CPU.reg.registers[HI_NIBBLE(operand)].w) & 0xFF;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.reg.registers[LO_NIBBLE(operand)].w = (Byte) CPU.reg.registers[LO_NIBBLE(operand)].w;
      *subCycle = 0xFF;
    }
    break;
    // index=80, instruction=dvs
    // type=signed_register, name=p, target=param_a_register
    // type=signed_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 80:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w / CPU.reg.registers[HI_NIBBLE(operand)].w) & 0xFF;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.reg.registers[LO_NIBBLE(operand)].w = (Byte) CPU.reg.registers[LO_NIBBLE(operand)].w;
      *subCycle = 0xFF;
    }
    break;
    // index=81, instruction=and
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 81:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w & CPU.reg.registers[HI_NIBBLE(operand)].w) & 0xFF;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = 0;
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = 0;
      *subCycle = 0xFF;
    }
    break;
    // index=82, instruction=or
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 82:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w | CPU.reg.registers[HI_NIBBLE(operand)].w) & 0xFF;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = 0;
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = 0;
      *subCycle = 0xFF;
    }
    break;
    // index=83, instruction=xor
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 83:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w ^ CPU.reg.registers[HI_NIBBLE(operand)].w) & 0xFF;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = 0;
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = 0;
      *subCycle = 0xFF;
    }
    break;
    // index=84, instruction=not
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 84:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = (~CPU.reg.registers[LO_NIBBLE(operand)].w) & 0xFF;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = 0;
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = 0;
      *subCycle = 0xFF;
    }
    break;
    // index=85, instruction=shl
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=shift, target=param_b
    // pcread=false
    // type=byte
    // flags={"C"=>:set}
    case 85:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w << (HI_NIBBLE(operand))) & 0xFF;
      CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=86, instruction=rol
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=shift, target=param_b
    // pcread=false
    // type=byte
    // flags=nil
    case 86:
    {
      *subCycle = 0xFF;
    }
    break;
    // index=87, instruction=jmp
    // type=unsigned_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 87:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_87_1;
        }
        break;
        case 1:
        {
          ins_87_1:
          CPU.pc = CPU.mdr.w;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=88, instruction=bra
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=word
    // flags=nil
    case 88:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_88_1;
        }
        break;
        case 1:
        {
          ins_88_1:
          Cpu16_Branch_Sword(CPU.mdr.sw);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=89, instruction=cmp
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 89:
    {
      Byte t = CPU.reg.registers[HI_NIBBLE(operand)].w - CPU.reg.registers[LO_NIBBLE(operand)].w;
      CPU.ccr.n = ((t) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(t);
      CPU.ccr.z = (t == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(t);
      *subCycle = 0xFF;
    }
    break;
    // index=90, instruction=cmp
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=q, target=param_b
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 90:
    {
      Byte t = (HI_NIBBLE(operand)) - CPU.reg.registers[LO_NIBBLE(operand)].w;
      CPU.ccr.n = ((t) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(t);
      CPU.ccr.z = (t == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(t);
      *subCycle = 0xFF;
    }
    break;
    // index=91, instruction=dcp
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_byte, name=q, target=extended_byte
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 91:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_91_1;
        }
        break;
        case 1:
        {
          ins_91_1:
          --CPU.reg.registers[LO_NIBBLE(operand)].w;
          Byte t = CPU.mdr.b - CPU.reg.registers[LO_NIBBLE(operand)].w;
          CPU.ccr.n = ((t) & 0x80) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(t);
          CPU.ccr.z = (t == 0);
          CPU.ccr.c = CHECK_CARRY_BYTE(t);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=92, instruction=beq
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 92:
    {
      // Unimplemented Opcode
    }
    break;
    // index=93, instruction=bgt
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 93:
    {
      // Unimplemented Opcode
    }
    break;
    // index=94, instruction=bmt
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 94:
    {
      // Unimplemented Opcode
    }
    break;
    // index=95, instruction=bge
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 95:
    {
      // Unimplemented Opcode
    }
    break;
    // index=96, instruction=bme
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 96:
    {
      // Unimplemented Opcode
    }
    break;
    // index=97, instruction=brz
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 97:
    {
      // Unimplemented Opcode
    }
    break;
    // index=98, instruction=brc
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 98:
    {
      // Unimplemented Opcode
    }
    break;
    // index=99, instruction=brp
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 99:
    {
      // Unimplemented Opcode
    }
    break;
    // index=100, instruction=trs
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 100:
    {
      CPU.stack[CPU.protected] = CPU.reg.registers[LO_NIBBLE(operand)].w;
      *subCycle = 0xFF;
    }
    break;
    // index=101, instruction=ent
    // type=none, name=none, target=none
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags={"N"=>:false, "V"=>:false, "Z"=>:false, "C"=>:false}
    case 101:
    {
      Cpu16_CallInterrupt(Int_ProtectionEnable);
      CPU.protected = 1;
      *subCycle = 0xFF;
    }
    break;
    case 102:
      break;
    case 103:
      break;
    case 104:
      break;
    case 105:
      break;
    case 106:
      break;
    case 107:
      break;
    case 108:
      break;
    case 109:
      break;
    case 110:
      break;
    case 111:
      break;
    case 112:
      break;
    case 113:
      break;
    case 114:
      break;
    case 115:
      break;
    case 116:
      break;
    case 117:
      break;
    case 118:
      break;
    case 119:
      break;
    case 120:
      break;
    case 121:
      break;
    case 122:
      break;
    case 123:
      break;
    case 124:
      break;
    case 125:
      break;
    case 126:
      break;
    case 127:
      break;
    // index=128, instruction=psh
    // type=unsigned_word, name=q, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=word
    // flags=nil
    case 128:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_128_1;
        }
        break;
        case 1:
        {
          ins_128_1:
          Cpu16_Bus_WriteWord(CPU.stack[CPU.protected], CPU.mdr.w);
          *subCycle++;
        }
        break;
        case 2:
        {
          CPU.stack[CPU.protected]--;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    case 129:
      break;
    // index=130, instruction=l
    // type=unsigned_register, name=p, target=param_a_register
    // type=address_register_absolute, name=address, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "Z"=>:set}
    case 130:
    {
      switch(*subCycle)
      {
        case 0:
        {
          CPU.reg.registers[LO_NIBBLE(operand)].w = Cpu16_Bus_ReadByte(CPU.reg.registers[HI_NIBBLE(operand)].w);
          *subCycle++;
        }
        break;
        case 1:
        {
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
          CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=131, instruction=s
    // type=address_register_absolute, name=address, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags=nil
    case 131:
    {
      switch(*subCycle)
      {
        case 0:
        {
          Cpu16_Bus_WriteByte(CPU.reg.registers[HI_NIBBLE(operand)].w, CPU.reg.registers[LO_NIBBLE(operand)].w);
          *subCycle++;
        }
        break;
        case 1:
        {
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=132, instruction=clr
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=word
    // flags={"N"=>:false, "V"=>:false, "Z"=>:true, "C"=>:false}
    case 132:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = 0;
      CPU.ccr.n = 0;
      CPU.ccr.z = 0;
      *subCycle = 0xFF;
    }
    break;
    // index=133, instruction=swp
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=word
    // flags=nil
    case 133:
    {
      Byte lo = LO_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      Byte hi = HI_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.reg.registers[LO_NIBBLE(operand)].w = hi + (lo * 256);
      *subCycle = 0xFF;
    }
    break;
    case 134:
      break;
    // index=135, instruction=add
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_word, name=q, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 135:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_135_1;
        }
        break;
        case 1:
        {
          ins_135_1:
          u32 r = (u32) CPU.reg.registers[LO_NIBBLE(operand)].w + (u32) CPU.mdr.w;
          CPU.reg.registers[LO_NIBBLE(operand)].w = (r & 0xFFFF);
          CPU.ccr.n = ((r) & 0x8000) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(r);
          CPU.ccr.z = ((r & 0xFF) == 0);
          CPU.ccr.c = CHECK_CARRY_WORD(r);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=136, instruction=ads
    // type=signed_register, name=p, target=param_a_register
    // type=signed_word, name=q, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 136:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_136_1;
        }
        break;
        case 1:
        {
          ins_136_1:
          CPU.reg.registers[LO_NIBBLE(operand)].sw = CPU.reg.registers[LO_NIBBLE(operand)].sw + CPU.mdr.sw;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].sw) & 0x8000) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].sw);
          CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].sw & 0xFF) == 0);
          CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].sw);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=137, instruction=adq
    // type=unsigned_register, name=p, target=param_a_register
    // type=signed_nibble, name=q, target=param_b
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 137:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w + (HI_NIBBLE(operand));
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=138, instruction=sub
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_word, name=q, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 138:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_138_1;
        }
        break;
        case 1:
        {
          ins_138_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w - CPU.mdr.w;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
          CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=139, instruction=sbs
    // type=signed_register, name=p, target=param_a_register
    // type=signed_word, name=q, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 139:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_139_1;
        }
        break;
        case 1:
        {
          ins_139_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w - CPU.mdr.w;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
          CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=140, instruction=sbq
    // type=signed_register, name=p, target=param_a_register
    // type=signed_nibble, name=q, target=param_b
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 140:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w - (HI_NIBBLE(operand));
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=141, instruction=mul
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_word, name=q, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 141:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_141_1;
        }
        break;
        case 1:
        {
          ins_141_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w * CPU.mdr.w;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
          CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=142, instruction=mls
    // type=signed_register, name=p, target=param_a_register
    // type=signed_word, name=q, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 142:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_142_1;
        }
        break;
        case 1:
        {
          ins_142_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w * CPU.mdr.w;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
          CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=143, instruction=div
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_word, name=q, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 143:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_143_1;
        }
        break;
        case 1:
        {
          ins_143_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w / CPU.mdr.w;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
          CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=144, instruction=dvs
    // type=signed_register, name=p, target=param_a_register
    // type=signed_word, name=q, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 144:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_144_1;
        }
        break;
        case 1:
        {
          ins_144_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w / CPU.mdr.w;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
          CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=145, instruction=and
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_word, name=q, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 145:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_145_1;
        }
        break;
        case 1:
        {
          ins_145_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w & CPU.mdr.w;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
          CPU.ccr.v = 0;
          CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
          CPU.ccr.c = 0;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=146, instruction=or
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_word, name=q, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 146:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_146_1;
        }
        break;
        case 1:
        {
          ins_146_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w | CPU.mdr.w;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
          CPU.ccr.v = 0;
          CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
          CPU.ccr.c = 0;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=147, instruction=xor
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_word, name=q, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 147:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_147_1;
        }
        break;
        case 1:
        {
          ins_147_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w ^ CPU.mdr.w;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
          CPU.ccr.v = 0;
          CPU.ccr.z = ((CPU.reg.registers[LO_NIBBLE(operand)].w & 0xFF) == 0);
          CPU.ccr.c = 0;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=148, instruction=neg
    // type=signed_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=word
    // flags={"N"=>:set}
    case 148:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = -CPU.reg.registers[LO_NIBBLE(operand)].w;
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x8000) != 0;
      *subCycle = 0xFF;
    }
    break;
    // index=149, instruction=shr
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=shift, target=param_b
    // pcread=false
    // type=word
    // flags={"C"=>:set}
    case 149:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w >> (HI_NIBBLE(operand));
      CPU.ccr.c = CHECK_CARRY_WORD(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=150, instruction=ror
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=shift, target=param_b
    // pcread=false
    // type=word
    // flags=nil
    case 150:
    {
      *subCycle = 0xFF;
    }
    break;
    // index=151, instruction=jsr
    // type=address_register_absolute, name=address, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 151:
    {
      switch(*subCycle)
      {
        case 0:
        {
          Cpu16_Bus_WriteWord(CPU.pcStack[CPU.protected], CPU.pc);
          *subCycle++;
        }
        break;
        case 1:
        {
          CPU.pcStack[CPU.protected]--;
          CPU.pc = CPU.reg.registers[LO_NIBBLE(operand)].w;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=152, instruction=bra
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=byte
    // flags=nil
    case 152:
    {
      Cpu16_Branch_Sbyte(CPU.mdr.sb);
      *subCycle = 0xFF;
    }
    break;
    // index=153, instruction=cmp
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_word, name=q, target=extended_word
    // pcread=true
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 153:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_153_1;
        }
        break;
        case 1:
        {
          ins_153_1:
          Word t = CPU.mdr.w - CPU.reg.registers[LO_NIBBLE(operand)].w;
          CPU.ccr.n = ((t) & 0x8000) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(t);
          CPU.ccr.z = ((t & 0xFF) == 0);
          CPU.ccr.c = CHECK_CARRY_WORD(t);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=154, instruction=zcp
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:clear, "Z"=>:set, "C"=>:clear}
    case 154:
    {
      *subCycle = 0xFF;
    }
    break;
    // index=155, instruction=dcp
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=word
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 155:
    {
      --CPU.reg.registers[LO_NIBBLE(operand)].w;
      Word t = CPU.reg.registers[HI_NIBBLE(operand)].w - CPU.reg.registers[LO_NIBBLE(operand)].w;
      CPU.ccr.n = ((t) & 0x8000) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(t);
      CPU.ccr.z = ((t & 0xFF) == 0);
      CPU.ccr.c = CHECK_CARRY_WORD(t);
      *subCycle = 0xFF;
    }
    break;
    // index=156, instruction=bne
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 156:
    {
      // Unimplemented Opcode
    }
    break;
    // index=157, instruction=blt
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 157:
    {
      // Unimplemented Opcode
    }
    break;
    // index=158, instruction=bft
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 158:
    {
      // Unimplemented Opcode
    }
    break;
    // index=159, instruction=ble
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 159:
    {
      // Unimplemented Opcode
    }
    break;
    // index=160, instruction=bfe
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 160:
    {
      // Unimplemented Opcode
    }
    break;
    // index=161, instruction=bnz
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 161:
    {
      // Unimplemented Opcode
    }
    break;
    // index=162, instruction=bro
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 162:
    {
      // Unimplemented Opcode
    }
    break;
    // index=163, instruction=brn
    // type=address_register_relative_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 163:
    {
      // Unimplemented Opcode
    }
    break;
    // index=164, instruction=tpr
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 164:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.pcStack[CPU.protected];
      *subCycle = 0xFF;
    }
    break;
    // index=165, instruction=lve
    // type=none, name=none, target=none
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags={"N"=>:false, "V"=>:false, "Z"=>:false, "C"=>:false}
    case 165:
    {
      Cpu16_CallInterrupt(Int_ProtectionDisable);
      CPU.protected = 0;
      *subCycle = 0xFF;
    }
    break;
    case 166:
      break;
    case 167:
      break;
    case 168:
      break;
    case 169:
      break;
    case 170:
      break;
    case 171:
      break;
    case 172:
      break;
    case 173:
      break;
    case 174:
      break;
    case 175:
      break;
    case 176:
      break;
    case 177:
      break;
    case 178:
      break;
    case 179:
      break;
    case 180:
      break;
    case 181:
      break;
    case 182:
      break;
    case 183:
      break;
    case 184:
      break;
    case 185:
      break;
    case 186:
      break;
    case 187:
      break;
    case 188:
      break;
    case 189:
      break;
    case 190:
      break;
    case 191:
      break;
    // index=192, instruction=psh
    // type=unsigned_byte, name=q, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=byte
    // flags=nil
    case 192:
    {
      switch(*subCycle)
      {
        case 0:
        {
          Cpu16_Bus_WriteByte(CPU.stack[CPU.protected], (operand));
          *subCycle++;
        }
        break;
        case 1:
        {
          CPU.stack[CPU.protected]--;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    case 193:
      break;
    // index=194, instruction=l
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_word, name=address, target=extended_word
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "Z"=>:set}
    case 194:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_194_1;
        }
        break;
        case 1:
        {
          ins_194_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = Cpu16_Bus_ReadByte(CPU.mdr.w);
          *subCycle++;
        }
        break;
        case 2:
        {
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
          CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=195, instruction=s
    // type=unsigned_word, name=address, target=extended_word
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=true
    // type=byte
    // flags=nil
    case 195:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_195_1;
        }
        break;
        case 1:
        {
          ins_195_1:
          Cpu16_Bus_WriteByte(CPU.reg.registers[HI_NIBBLE(operand)].w, CPU.mdr.w);
          *subCycle++;
        }
        break;
        case 2:
        {
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=196, instruction=clr
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=byte
    // flags={"N"=>:false, "V"=>:false, "Z"=>:true, "C"=>:false}
    case 196:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = 0;
      CPU.ccr.n = 0;
      CPU.ccr.z = 0;
      *subCycle = 0xFF;
    }
    break;
    // index=197, instruction=swp
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=byte
    // flags=nil
    case 197:
    {
      Byte lo = LO_NIBBLE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      Byte hi = HI_NIBBLE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.reg.registers[LO_NIBBLE(operand)].w = hi + (lo * 16);
      *subCycle = 0xFF;
    }
    break;
    case 198:
      break;
    // index=199, instruction=add
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_byte, name=q, target=extended_byte
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 199:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_199_1;
        }
        break;
        case 1:
        {
          ins_199_1:
          i32 r = (u32) CPU.reg.registers[LO_NIBBLE(operand)].w + (u32) CPU.mdr.b;
          CPU.reg.registers[LO_NIBBLE(operand)].w = (r & 0xFF);
          CPU.ccr.n = ((r) & 0x80) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(r);
          CPU.ccr.z = (r == 0);
          CPU.ccr.c = CHECK_CARRY_BYTE(r);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=200, instruction=ads
    // type=signed_register, name=p, target=param_a_register
    // type=signed_byte, name=q, target=extended_byte
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 200:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_200_1;
        }
        break;
        case 1:
        {
          ins_200_1:
          CPU.reg.registers[LO_NIBBLE(operand)].b = CPU.reg.registers[LO_NIBBLE(operand)].b + CPU.mdr.sb;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].b) & 0x80) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].b);
          CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].b == 0);
          CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].b);
          CPU.reg.registers[LO_NIBBLE(operand)].b = (Byte) CPU.reg.registers[LO_NIBBLE(operand)].b;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=201, instruction=adq
    // type=unsigned_register, name=p, target=param_a_register
    // type=signed_nibble, name=q, target=param_b
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 201:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w + (HI_NIBBLE(operand));
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.reg.registers[LO_NIBBLE(operand)].w = (Byte) CPU.reg.registers[LO_NIBBLE(operand)].w;
      *subCycle = 0xFF;
    }
    break;
    // index=202, instruction=sub
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_byte, name=q, target=extended_byte
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 202:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_202_1;
        }
        break;
        case 1:
        {
          ins_202_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w - CPU.mdr.b;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
          CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=203, instruction=sbs
    // type=signed_register, name=p, target=param_a_register
    // type=signed_byte, name=q, target=extended_byte
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 203:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_203_1;
        }
        break;
        case 1:
        {
          ins_203_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w - CPU.mdr.b;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
          CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=204, instruction=sbq
    // type=signed_register, name=p, target=param_a_register
    // type=signed_nibble, name=q, target=param_b
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 204:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = CPU.reg.registers[LO_NIBBLE(operand)].w - (HI_NIBBLE(operand));
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=205, instruction=mul
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_byte, name=q, target=extended_byte
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 205:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_205_1;
        }
        break;
        case 1:
        {
          ins_205_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w * CPU.mdr.b) & 0xFF;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
          CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=206, instruction=mls
    // type=signed_register, name=p, target=param_a_register
    // type=signed_byte, name=q, target=extended_byte
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 206:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_206_1;
        }
        break;
        case 1:
        {
          ins_206_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w * CPU.mdr.b) & 0xFF;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
          CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.reg.registers[LO_NIBBLE(operand)].w = (Byte) CPU.reg.registers[LO_NIBBLE(operand)].w;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=207, instruction=div
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_byte, name=q, target=extended_byte
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 207:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_207_1;
        }
        break;
        case 1:
        {
          ins_207_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w / CPU.mdr.b) & 0xFF;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
          CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.reg.registers[LO_NIBBLE(operand)].w = (Byte) CPU.reg.registers[LO_NIBBLE(operand)].w;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=208, instruction=dvs
    // type=signed_register, name=p, target=param_a_register
    // type=signed_byte, name=q, target=extended_byte
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 208:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_208_1;
        }
        break;
        case 1:
        {
          ins_208_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w / CPU.mdr.b) & 0xFF;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
          CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
          CPU.reg.registers[LO_NIBBLE(operand)].w = (Byte) CPU.reg.registers[LO_NIBBLE(operand)].w;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=209, instruction=and
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_byte, name=q, target=extended_byte
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 209:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_209_1;
        }
        break;
        case 1:
        {
          ins_209_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w & CPU.mdr.b) & 0xFF;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
          CPU.ccr.v = 0;
          CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
          CPU.ccr.c = 0;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=210, instruction=or
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_byte, name=q, target=extended_byte
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 210:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_210_1;
        }
        break;
        case 1:
        {
          ins_210_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w | CPU.mdr.b) & 0xFF;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
          CPU.ccr.v = 0;
          CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
          CPU.ccr.c = 0;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=211, instruction=xor
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_byte, name=q, target=extended_byte
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "V"=>:false, "Z"=>:set, "C"=>:false}
    case 211:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_211_1;
        }
        break;
        case 1:
        {
          ins_211_1:
          CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w ^ CPU.mdr.b) & 0xFF;
          CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
          CPU.ccr.v = 0;
          CPU.ccr.z = (CPU.reg.registers[LO_NIBBLE(operand)].w == 0);
          CPU.ccr.c = 0;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=212, instruction=neg
    // type=signed_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=byte
    // flags={"N"=>:set}
    case 212:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = -((Byte)CPU.reg.registers[LO_NIBBLE(operand)].w);
      CPU.ccr.n = ((CPU.reg.registers[LO_NIBBLE(operand)].w) & 0x80) != 0;
      *subCycle = 0xFF;
    }
    break;
    // index=213, instruction=shr
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=shift, target=param_b
    // pcread=false
    // type=byte
    // flags={"C"=>:set}
    case 213:
    {
      CPU.reg.registers[LO_NIBBLE(operand)].w = (CPU.reg.registers[LO_NIBBLE(operand)].w >> (HI_NIBBLE(operand))) & 0xFF;
      CPU.ccr.c = CHECK_CARRY_BYTE(CPU.reg.registers[LO_NIBBLE(operand)].w);
      *subCycle = 0xFF;
    }
    break;
    // index=214, instruction=ror
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_nibble, name=shift, target=param_b
    // pcread=false
    // type=byte
    // flags=nil
    case 214:
    {
      *subCycle = 0xFF;
    }
    break;
    // index=215, instruction=jsr
    // type=unsigned_word, name=address, target=extended_word
    // type=none, name=none, target=none
    // pcread=true
    // type=none
    // flags=nil
    case 215:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_215_1;
        }
        break;
        case 1:
        {
          ins_215_1:
          Cpu16_Bus_WriteWord(CPU.pcStack[CPU.protected], CPU.pc);
          *subCycle++;
        }
        break;
        case 2:
        {
          CPU.pcStack[CPU.protected]--;
          CPU.pc = CPU.mdr.w;
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=216, instruction=ret
    // type=none, name=none, target=none
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 216:
    {
      switch(*subCycle)
      {
        case 0:
        {
          CPU.pcStack[CPU.protected]++;
          CPU.pc = Cpu16_Bus_ReadWord(CPU.pcStack[CPU.protected]);
          *subCycle++;
        }
        break;
        case 1:
        {
          Cpu16_FlushPrefetch();
          *subCycle++;
        }
        break;
        case 2:
        {
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=217, instruction=cmp
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_byte, name=q, target=extended_byte
    // pcread=true
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 217:
    {
      switch(*subCycle)
      {
        case 0:
        {
          *subCycle++;
          if (Cpu16_PcReadToMdr() == 2)
            goto ins_217_1;
        }
        break;
        case 1:
        {
          ins_217_1:
          Byte t = CPU.mdr.b - CPU.reg.registers[LO_NIBBLE(operand)].w;
          CPU.ccr.n = ((t) & 0x80) != 0;
          CPU.ccr.v = CHECK_OVERFLOW(t);
          CPU.ccr.z = (t == 0);
          CPU.ccr.c = CHECK_CARRY_BYTE(t);
          *subCycle = 0xFF;
        }
        break;
      }
    }
    break;
    // index=218, instruction=zcp
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:clear, "Z"=>:set, "C"=>:clear}
    case 218:
    {
      *subCycle = 0xFF;
    }
    break;
    // index=219, instruction=dcp
    // type=unsigned_register, name=p, target=param_a_register
    // type=unsigned_register, name=q, target=param_b_register
    // pcread=false
    // type=byte
    // flags={"N"=>:set, "V"=>:set, "Z"=>:set, "C"=>:set}
    case 219:
    {
      --CPU.reg.registers[LO_NIBBLE(operand)].w;
      Byte t = CPU.reg.registers[HI_NIBBLE(operand)].w - CPU.reg.registers[LO_NIBBLE(operand)].w;
      CPU.ccr.n = ((t) & 0x80) != 0;
      CPU.ccr.v = CHECK_OVERFLOW(t);
      CPU.ccr.z = (t == 0);
      CPU.ccr.c = CHECK_CARRY_BYTE(t);
      *subCycle = 0xFF;
    }
    break;
    // index=220, instruction=bne
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 220:
    {
      // Unimplemented Opcode
    }
    break;
    // index=221, instruction=blt
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 221:
    {
      // Unimplemented Opcode
    }
    break;
    // index=222, instruction=bft
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 222:
    {
      // Unimplemented Opcode
    }
    break;
    // index=223, instruction=ble
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 223:
    {
      // Unimplemented Opcode
    }
    break;
    // index=224, instruction=bfe
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 224:
    {
      // Unimplemented Opcode
    }
    break;
    // index=225, instruction=bnz
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 225:
    {
      // Unimplemented Opcode
    }
    break;
    // index=226, instruction=bro
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 226:
    {
      // Unimplemented Opcode
    }
    break;
    // index=227, instruction=brn
    // type=address_register_relative_byte, name=address, target=param_byte
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 227:
    {
      // Unimplemented Opcode
    }
    break;
    // index=228, instruction=trp
    // type=unsigned_register, name=p, target=param_a_register
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 228:
    {
      CPU.pcStack[CPU.protected] = CPU.reg.registers[LO_NIBBLE(operand)].w;
      *subCycle = 0xFF;
    }
    break;
    // index=229, instruction=io
    // type=unsigned_nibble, name=data, target=param_a
    // type=none, name=none, target=none
    // pcread=false
    // type=none
    // flags=nil
    case 229:
    {
      *subCycle = 0xFF;
    }
    break;
    case 230:
      break;
    case 231:
      break;
    case 232:
      break;
    case 233:
      break;
    case 234:
      break;
    case 235:
      break;
    case 236:
      break;
    case 237:
      break;
    case 238:
      break;
    case 239:
      break;
    case 240:
      break;
    case 241:
      break;
    case 242:
      break;
    case 243:
      break;
    case 244:
      break;
    case 245:
      break;
    case 246:
      break;
    case 247:
      break;
    case 248:
      break;
    case 249:
      break;
    case 250:
      break;
    case 251:
      break;
    case 252:
      break;
    case 253:
      break;
    case 254:
      break;
    case 255:
      break;
  }
}