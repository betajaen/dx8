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

#ifndef DX8_H
#define DX8_H

#include <stdint.h>
#include <stdbool.h>

#define DX8_CPU_NO_INLINING

#include "dx8_Registers.inc"
#include "dx8_Constants.inc"
#include "dx8_Interrupts.inc"

#define DX8_DEBUG_INSTRUCTIONS      1
#define DX8_DEBUG_INSTRUCTIONS_HISTORY 512

#define DX8_GFX_RESOLUTION              (512)
#define DX8_GFX_SCANLINES               (312)
#define DX8_GFX_WIDTH                   (320)
#define DX8_GFX_HEIGHT                  (256)
#define DX8_GFX_BYTES_PER_PIXEL         (3)
#define DX8_GFX_PIXELS_PER_GFX_CYCLE    (8)
#define DX8_GFX_BUFFER_SIZE             (DX8_GFX_WIDTH * DX8_GFX_HEIGHT * DX8_GFX_BYTES_PER_PIXEL)
#define DX8_GFX_CYCLES_PER_SCANLINE     (DX8_GFX_RESOLUTION / DX8_GFX_PIXELS_PER_GFX_CYCLE)
#define DX8_GFX_CYCLES_PER_FRAME        (DX8_GFX_SCANLINES * DX8_GFX_CYCLES_PER_SCANLINE)
#define DX8_GFX_HBLANK_PX               (DX8_GFX_RESOLUTION - DX8_GFX_WIDTH)
#define DX8_GFX_HBLANK_LEFT_PX          (DX8_GFX_HBLANK_PX / 2)
#define DX8_GFX_HBLANK_RIGHT_PX         (DX8_GFX_HBLANK_PX / 2)
#define DX8_GFX_HBLANK_LEFT             (DX8_GFX_HBLANK_LEFT_PX / 8)
#define DX8_GFX_HBLANK_RIGHT            (DX8_GFX_HBLANK_RIGHT_PX / 8)
#define DX8_GFX_HBLANK_START            ((DX8_GFX_HBLANK_LEFT_PX + DX8_GFX_WIDTH) / DX8_GFX_PIXELS_PER_GFX_CYCLE)
#define DX8_GFX_HBLANK_CYCLES           (DX8_GFX_HBLANK_PX / DX8_GFX_PIXELS_PER_GFX_CYCLE)
#define DX8_GFX_VBLANK_SCANLINES        (DX8_GFX_SCANLINES - DX8_GFX_HEIGHT)
#define DX8_GFX_VBLANK_TOP_SCANLINES    (DX8_GFX_VBLANK_SCANLINES / 2)
#define DX8_GFX_VBLANK_BOTTOM_SCANLINES (DX8_GFX_VBLANK_SCANLINES / 2)

#define DX8_GFX_VBLANK_START            \
  (((DX8_GFX_SCANLINES-DX8_GFX_VBLANK_TOP_SCANLINES-1)*DX8_GFX_CYCLES_PER_SCANLINE)+(DX8_GFX_RESOLUTION-DX8_GFX_HBLANK_LEFT_PX)/DX8_GFX_PIXELS_PER_GFX_CYCLE)
#define DX8_GFX_VBLANK_TOP_CYCLES       (DX8_GFX_CYCLES_PER_FRAME - DX8_GFX_VBLANK_START)
#define DX8_GFX_VBLANK_BOTTOM_CYCLES    (DX8_GFX_VBLANK_TOP_CYCLES + DX8_GFX_CYCLES_PER_SCANLINE * DX8_GFX_HEIGHT)
#define DX8_GFX_VBLANK_CYCLES           (DX8_GFX_VBLANK_TOP_CYCLES + DX8_GFX_VBLANK_BOTTOM_CYCLES)

#define DX8_CLOCK_GPU                   (DX8_GFX_CYCLES_PER_FRAME)
#define DX8_CLOCK_CPU                   (DX8_GFX_CYCLES_PER_FRAME * 8)
#define DX8_PAL_HZ                      (50.125)

#define DX8_CLOCK_GPU_MZ                ((DX8_CLOCK_GPU * DX8_PAL_HZ) / 1000000.0)
#define DX8_CLOCK_CPU_MZ                ((DX8_CLOCK_CPU * DX8_PAL_HZ) / 1000000.0)


#define DX8_KILOBYTES(BYTES)            ((BYTES) * 1024)

#define LO_BYTE(WORD)  ((Byte)(WORD & 0xFF))
#define HI_BYTE(WORD)  ((Byte)((WORD >> 8) & 0xFF))

#define MAKE_WORD(LO, HI) ((LO) + (HI) * 256)
#define MAKE_LOHI(W, LO, HI) LO = (W & 0xFF);  HI = (W >> 8) & 0xFF;

#define QUOTE(name) #name
#define STR(macro) QUOTE(macro)

typedef uint8_t  Byte;
typedef uint16_t Word;
typedef int8_t   Sbyte;
typedef int16_t  Sword;

typedef uint8_t  u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef int8_t   i8;
typedef int16_t  i16;
typedef int32_t  i32;

#define CPU_REGISTER(NAME, A, B) \
  struct { union { Word NAME; struct { Byte A, B; };  }; }

typedef struct {
  CPU_REGISTER(I, x, y) I;
  CPU_REGISTER(J, z, w) J;
  CPU_REGISTER(w, lo, hi) pc;
  Byte a;
  Byte stack;
  Byte pcStack;
  union
  {
    struct {
      Byte  bZero      : 1;
      Byte  bNegative  : 1;
      Byte  bCarry     : 1;
      Byte  bGreater   : 1;
      Byte  flag       : 1;
      Byte  flag6      : 1;
      Byte  io0        : 1;
      Byte  io1        : 1;
    };
    Byte _data;
  }
  flags;

  Byte lastOpcode;
  Word lastOperand;
  Byte interrupt;
  Byte interruptMask[8];
  Byte interruptsStopped;
  Byte halt;
  Word cycle;
} Cpu;

typedef struct {
  Byte opcode;
  Byte length;
  Word pc;
  Byte context1Type, context2Type;
  CPU_REGISTER(w, lo, hi) operand;
  CPU_REGISTER(w, lo, hi) context1;
  CPU_REGISTER(w, lo, hi) context2;
} DebuggedInstruction;

typedef enum {
  CpuCtx_None,
  CpuCtx_Pc,
  CpuCtx_A,
  CpuCtx_X,
  CpuCtx_Y,
  CpuCtx_Z,
  CpuCtx_W,
  CpuCtx_I,
  CpuCtx_J,
  CpuCtx_Stack,
  CpuCtx_PcStack,
  CpuCtx_LeftByte,
  CpuCtx_RightByte,
  CpuCtx_LeftWord,
  CpuCtx_RightWord,
  CpuCtx_Condition,
  CpuCtx_Param,
  CpuCtx_MemoryAddress,
  CpuCtx_MemoryByte,
  CpuCtx_MemoryWord,
} CpuContext;

extern Cpu   cpu;
extern Byte* sRam;
extern Byte* sFastRam;
extern DebuggedInstruction sDebugInstruction;
extern Word sAddressBus;
extern Word sDataBus;

int Clock(int ms);

void Cpu_Reset();

int Cpu_Step();

void Cpu_Interrupt(Byte name);

Byte Cpu_GetARegister();

void Cpu_SetARegister(Byte value);

Byte Cpu_GetXRegister();

void Cpu_SetXRegister(Byte value);

Byte Cpu_GetYRegister();

void Cpu_SetYRegister(Byte value);

Byte Cpu_GetZRegister();

void Cpu_SetZRegister(Byte value);

Byte Cpu_GetWRegister();

void Cpu_SetWRegister(Byte value);

Word Cpu_GetPcRegister();

void Cpu_SetPcRegister(Word value);

Word Cpu_GetFlagsRegister();

void Cpu_SetFlagsRegister(Byte value);

Byte Cpu_GetStackRegister();

void Cpu_SetStackRegister(Byte value);

Byte Cpu_GetLastOpcode();

Word Cpu_GetLastOperand();

Byte Cpu_GetHalt();

void Cpu_SetHalt(Byte value);

void Mmu_Set(Word address, Byte value);

Byte Mmu_Get(Word address);

Word Mmu_GetWord(Word address);

inline Byte FastRam_Get(Word address)
{
  return sFastRam[address];
}

inline Word FastRam_GetWord(Word address)
{
  Word v;
  v  = FastRam_Get(address);
  v |= ((Word)FastRam_Get(address + 1)) << 8;
  return v;
}

inline void FastRam_Set(Word address, Byte value)
{
  sFastRam[address] = value;
}

inline void Stack_Set(Byte offset, Byte value)
{
  sRam[REG_STACK_END - offset] = value;
}

inline Byte Stack_Get(Byte offset)
{
  return sRam[REG_STACK_END - offset];
}

inline void PcStack_Set(Word offset, Byte value)
{
  sRam[REG_PCSTACK_END - offset] = value;
}

inline Byte PcStack_Get(Word offset)
{
  return sRam[REG_PCSTACK_END - offset];
}

void Mmu_TurnOn();

void Cpu_TurnOn();

void Gpu_TurnOn();

Byte Rom_Get(Word address);

void Io_Interrupt(Byte name, Byte dataA, Byte dataB);

void Log_Format(const char* text, ...);

#define DX8_LOGF(TEXT, ...)  Log_Format("*** " TEXT, __VA_ARGS__)
#define DX8_INFOF(TEXT, ...) Log_Format("INF " TEXT, __VA_ARGS__)
#define DX8_DEBUGF(TEXT, ...) Log_Format("DBG " TEXT, __VA_ARGS__)

#define  DX8_RAM0_SIZE DX8_KILOBYTES(16)    // Chip
#define  DX8_RAM1_SIZE DX8_KILOBYTES(16)    // Fast #0
#define  DX8_RAM2_SIZE DX8_KILOBYTES(16)    // Fast #1
#define  DX8_RAM3_SIZE DX8_KILOBYTES(16)    // Fast #2
#define  DX8_RAM4_SIZE DX8_KILOBYTES(16)    // Fast #3
#define  DX8_RAM5_SIZE DX8_KILOBYTES(6)     // Video
#define  DX8_RAM6_SIZE DX8_KILOBYTES(4)     // Tile
#define  DX8_RAM7_SIZE DX8_KILOBYTES(4)     // Sprite

#define DX8_RAM_SIZE      (DX8_RAM0_SIZE + \
                           DX8_RAM1_SIZE + \
                           DX8_RAM2_SIZE + \
                           DX8_RAM3_SIZE + \
                           DX8_RAM4_SIZE + \
                           DX8_RAM5_SIZE + \
                           DX8_RAM6_SIZE + \
                           DX8_RAM7_SIZE)

#define DX8_ROM_SIZE      (DX8_KILOBYTES(4))

#endif
