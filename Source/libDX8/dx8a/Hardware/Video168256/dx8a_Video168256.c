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

#include <dx8a/Hardware/Video168256/dx8a_Video168256.h>
#include <dx8a/Hardware/Bus/dx8a_Bus.h>
#include <dx8a/Hardware/Crt/dx8a_Crt.h>
#include <dx8a/dx8a_Configuration.h>
#include <dx8a/dx8a_Log.h>
#include <assert.h>
#include <string.h>

#include <dx8a/Hardware/Video168256/dx8a_Video168256_Palette.inc>


Byte y, row;

typedef struct
{
  Byte colour[3 * 8];
  Byte visible[8];
} RowRegister;

typedef struct
{
  Word x;
  Byte y;
  Byte addr, flags;
  Byte image[4];
} SpriteRegister;

typedef union
{
  Word w;
  struct { Byte lo, hi; };
} CharacterRegister;

typedef struct
{
  Byte colour[4];
} ColourRegister;

typedef struct
{
  Byte              DMA;
  Word              CCounter;
  CharacterRegister C;
  Word              KCounter;
  ColourRegister    K;
  Word              T;
  int               ScanlineX;
  SpriteRegister    Sprites[8];
  Byte              MultiColour[2];
  Byte              Y;
  Byte              ScrollY;
  Byte              YRow;
  Byte              TileRow;
  Byte              ScanlineCycle;
  Byte              Reset;
  Byte              PaletteFlags;
  Byte              ScreenFlags;
  RowRegister       TileRowRegister;
  RowRegister       SpriteRowRegister;
  RowRegister       DefaultRowRegister;
  RowRegister       PictureRowRegister;
  Byte              Reg_Flags;
  Byte              Reg_Screen0_Flags;
  Byte              Reg_Screen1_Flags;
  Byte              Reg_Screen0_Scroll;
  Byte              Reg_Screen1_Scroll;
  Byte              Reg_Screen0_Palette;
  Byte              Reg_Screen1_Palette;
} GpuScanlineRegisters;

GpuScanlineRegisters  sGpu;
Byte                  sGpu_Scanline[DX8_GFX_BYTES_PER_PIXEL * DX8_GFX_WIDTH];
Byte     sGfxHalt;
u32      sGfxCycle;
u32      sGfxFrame;
bool     sGfxWaitFrame;
Byte*    sGfxWriteBuffer;

void Gpu_Colourise_Mc(Word picture, Byte mc1, Byte mc2, Byte colour, RowRegister* row)
{
  for(int i=0;i < 8;i++)
  {
    Byte pixel = picture & 2;

    switch(pixel)
    {
      case 0:
      {
        row->visible[i]         = false;
      }
      break;

      case 1:
      {
        row->colour[(i*3) + 0] = kPalette[(mc1 * 3) + 0];
        row->colour[(i*3) + 1] = kPalette[(mc1 * 3) + 1];
        row->colour[(i*3) + 2] = kPalette[(mc1 * 3) + 2];
        row->visible[(i*3)]    = true;
      }
      break;

      case 2:
      {
        row->colour[(i*3) + 0] = kPalette[(mc2 * 3) + 0];
        row->colour[(i*3) + 1] = kPalette[(mc2 * 3) + 1];
        row->colour[(i*3) + 2] = kPalette[(mc2 * 3) + 2];
        row->visible[(i*3)]    = true;
      }
      break;

      case 3:
      {
        row->colour[(i*3) + 0] = kPalette[(colour * 3) + 0];
        row->colour[(i*3) + 1] = kPalette[(colour * 3) + 1];
        row->colour[(i*3) + 2] = kPalette[(colour * 3) + 2];
        row->visible[(i*3)]    = true;
      }
      break;
    }

    picture >>= 2;
  }
}

void Gpu_Colourise_Sc(Word picture, Byte colour, RowRegister* row)
{
  for(int i=0;i < 8;i++)
  {
    Byte pixel = picture & 1;

    row->visible[i] = pixel;
    row->colour[(i*3) + 0] = kPalette[(colour * 3) + 0];
    row->colour[(i*3) + 1] = kPalette[(colour * 3) + 1];
    row->colour[(i*3) + 2] = kPalette[(colour * 3) + 2];

    picture >>= 1;
  }
}

void Gpu_Fetch_Sprite(int index)
{
  SpriteRegister* sprite = &sGpu.Sprites[index];
  
  Word x8_y       = Bus_Read(GFX_FAST_SPRITES + (index * 4) + 0, DMA_Video168256);
  Word flags_addr = Bus_Read(GFX_FAST_SPRITES + (index * 4) + 2, DMA_Video168256);

  sprite->x     = LO_WORD(x8_y);
  sprite->y     = HI_WORD(x8_y);
  sprite->flags = LO_WORD(flags_addr);
  sprite->addr  = HI_WORD(flags_addr);

  if ((sprite->flags & 0x80) != 0)
  {
    sprite->x  += 256;
  }

}

void Gpu_Fetch_SpriteImage(int index)
{
  SpriteRegister* sprite = &sGpu.Sprites[index];
  
  Word sprite01 = Bus_Read(GFX_FAST_SPRITE_MEM + (sprite->addr * 64) + 0, DMA_TileSprite); // Just get the first row for now.
  Word sprite23 = Bus_Read(GFX_FAST_SPRITE_MEM + (sprite->addr * 64) + 2, DMA_TileSprite);

  sprite->image[0] = LO_BYTE(sprite01);
  sprite->image[1] = HI_BYTE(sprite01);
  sprite->image[2] = LO_BYTE(sprite23);
  sprite->image[3] = LO_BYTE(sprite23);
}

inline void Gpu_Clock_Visible_C()
{
  sGpu.C.w = Bus_Read(sGpu.CCounter + 0, DMA_Ram34);
  sGpu.CCounter += 2;
}

inline void Gpu_ByteToK2(Byte m, Byte* k)
{
  k[0] = (m >> 4) & 0x0F;
  k[1] = m & 0x0F;
}

inline void Gpu_Clock_Visible_K()
{
  Word colours4 = Bus_Read(sGpu.KCounter + 0, DMA_Ram34); // Four colours are encoded in 1 word
  
  Gpu_ByteToK2(LO_BYTE(colours4), &sGpu.K.colour[0]); // Colours 0..1
  Gpu_ByteToK2(HI_BYTE(colours4), &sGpu.K.colour[2]); // Colours 2..3
  
  sGpu.KCounter += 2;
}

#define T_STRIDE 256  /* 256 for Single and Multi Colour modes */
inline void Gpu_Clock_Visible_T_Odd()
{
  Word address = GFX_FAST_TILE_MEM + (((Word)sGpu.YRow) * T_STRIDE) + (Word) sGpu.C.lo;
  sGpu.T = Bus_Read(address, DMA_TileSprite);
}

inline void Gpu_Clock_Visible_T_Even()
{
  Word address = GFX_FAST_TILE_MEM + (((Word)sGpu.YRow) * T_STRIDE) + (Word)sGpu.C.hi;
  sGpu.T = Bus_Read(address, DMA_TileSprite);
}

inline void Gpu_Clock_Visible_S()
{
 // @TODO
}

inline void Gpu_Emit(int col, int subCycle)
{
  //////////////Gpu_Colourise_Mc(sGpu.T, sGpu.MultiColour[0], sGpu.MultiColour[1], sGpu.K.colour[quarterCycle], &sGpu.TileRowRegister);
  
  Gpu_Colourise_Sc(sGpu.T, sGpu.K.colour[subCycle], &sGpu.TileRowRegister);

  // @TODO - Sprite
  // @TODO - Depth sorting
  // @TODO - Expand to scanline.

  for(int i=0;i < 8;i++)
  {
    if (sGpu.TileRowRegister.visible[i])
    {
     sGpu_Scanline[sGpu.ScanlineX + 0] = sGpu.TileRowRegister.colour[(i * 3) + 0];
     sGpu_Scanline[sGpu.ScanlineX + 1] = sGpu.TileRowRegister.colour[(i * 3) + 1];
     sGpu_Scanline[sGpu.ScanlineX + 2] = sGpu.TileRowRegister.colour[(i * 3) + 2];
    }
    else
    {
      sGpu_Scanline[sGpu.ScanlineX + 0] = kPalette[0]; // Colour: 0
      sGpu_Scanline[sGpu.ScanlineX + 1] = kPalette[1];
      sGpu_Scanline[sGpu.ScanlineX + 2] = kPalette[2];
    }

    sGpu.ScanlineX += 3;
  }
  
}

void Gpu_Scanline_Begin()
{
}

void Gpu_Scanline_End(Byte* writeBuffer)
{
  Byte* target = writeBuffer + sGpu.Y * DX8_GFX_BYTES_PER_PIXEL * DX8_GFX_WIDTH;
  memcpy(target, sGpu_Scanline, DX8_GFX_BYTES_PER_PIXEL * DX8_GFX_WIDTH);
}

void Gpu_Scanline_EndFrame()
{

  // Reset everything in the Gpu - It is inactive in this phase.
  memset(&sGpu, 0, sizeof(sGpu));
  memset(sGpu_Scanline, 0, sizeof(sGpu_Scanline));
}

#include <dx8a/Hardware/Video168256/dx8a_Video168256_Scanline_Accurate.inc>
#include <dx8a/Hardware/Video168256/dx8a_Video168256_Scanline_Fast.inc>

void Video_Setup()
{
  memset(&sGpu, 0, sizeof(sGpu));
  memset(sGpu_Scanline, 0, sizeof(sGpu_Scanline));

  DX8_LOGF("DX8_GFX_RESOLUTION = %i Px"                     , DX8_GFX_RESOLUTION              );
  DX8_LOGF("DX8_GFX_SCANLINES = %i Scanlines"               , DX8_GFX_SCANLINES               );
  DX8_LOGF("DX8_GFX_WIDTH = %i Px"                          , DX8_GFX_WIDTH                   );
  DX8_LOGF("DX8_GFX_HEIGHT = %i Px"                         , DX8_GFX_HEIGHT                  );
  DX8_LOGF("DX8_GFX_BYTES_PER_PIXEL = %i Bytes"             , DX8_GFX_BYTES_PER_PIXEL         );
  DX8_LOGF("DX8_GFX_PIXELS_PER_GFX_CYCLE = %i Px"           , DX8_GFX_PIXELS_PER_GFX_CYCLE    );
  DX8_LOGF("DX8_GFX_BUFFER_SIZE = %i Bytes"                 , DX8_GFX_BUFFER_SIZE             );
  DX8_LOGF("DX8_GFX_CYCLES_PER_SCANLINE = %i Cycles"        , DX8_GFX_CYCLES_PER_SCANLINE     );
  DX8_LOGF("DX8_GFX_CYCLES_PER_FRAME = %i Cycles"           , DX8_GFX_CYCLES_PER_FRAME        );
  DX8_LOGF("DX8_GFX_HBLANK_PX = %i Px"                      , DX8_GFX_HBLANK_PX               );
  DX8_LOGF("DX8_GFX_HBLANK_LEFT_PX = %i Px"                 , DX8_GFX_HBLANK_LEFT_PX          );
  DX8_LOGF("DX8_GFX_HBLANK_RIGHT_PX = %i Px"                , DX8_GFX_HBLANK_RIGHT_PX         );
  DX8_LOGF("DX8_GFX_HBLANK_START = %i Cycles"               , DX8_GFX_HBLANK_START            );
  DX8_LOGF("DX8_GFX_HBLANK_CYCLES = %i Cycles"              , DX8_GFX_HBLANK_CYCLES           );
  DX8_LOGF("DX8_GFX_VBLANK_SCANLINES = %i Scanlines"        , DX8_GFX_VBLANK_SCANLINES        );
  DX8_LOGF("DX8_GFX_VBLANK_CYCLES = %i Cycles"              , DX8_GFX_VBLANK_CYCLES           );
  DX8_LOGF("DX8_GFX_VBLANK_TOP_SCANLINES = %i Scanlines"    , DX8_GFX_VBLANK_TOP_SCANLINES    );
  DX8_LOGF("DX8_GFX_VBLANK_BOTTOM_SCANLINES = %i Scanlines" , DX8_GFX_VBLANK_BOTTOM_SCANLINES );
  DX8_LOGF("DX8_GFX_VBLANK_START = %i Cycles"               , DX8_GFX_VBLANK_START            );
  DX8_LOGF("DX8_GFX_VBLANK_TOP_CYCLES = %i Cycles"          , DX8_GFX_VBLANK_TOP_CYCLES       );
  DX8_LOGF("DX8_GFX_VBLANK_BOTTOM_CYCLES = %i Cycles"       , DX8_GFX_VBLANK_BOTTOM_CYCLES    );
  DX8_LOGF("DX8_PAL_HZ = %f Hz"                             , DX8_PAL_HZ                      );
  DX8_LOGF("DX8_CLOCK_GPU = %i Cycles"                      , DX8_CLOCK_GPU                   );
  DX8_LOGF("DX8_CLOCK_CPU_MZ = %f MHz"                      , DX8_CLOCK_CPU_MZ                );
  DX8_LOGF("DX8_CLOCK_GPU = %i Cycles"                      , DX8_CLOCK_CPU                   );
  DX8_LOGF("DX8_CLOCK_GPU_MZ = %f MHz"                      , DX8_CLOCK_GPU_MZ                );

  sGfxWriteBuffer = Crt_GetWriteBuffer();
}

void Video_Teardown()
{
}

void Video_Clock_Accurate_VisibleOnly(u32 subCycle)
{
  if (sGfxHalt == 1)
    return;
  
  // HBlank or visible period
  Gpu_Clock_Scanline_Accurate(sGfxWriteBuffer, subCycle);

  if (subCycle == 3)
  {
    sGfxCycle++;
  
    if (sGfxCycle == DX8_GFX_CYCLES_PER_VISIBLE_AREA)
    {
      sGfxFrame++;
      
      // End of Frame.
      Gpu_Scanline_EndFrame();
      Crt_EndFrame();

      sGfxCycle = 0;
      sGfxWaitFrame = 0;
      sGfxWriteBuffer = Crt_GetWriteBuffer();
    }
  }
}

void Video_Clock_Fast_VisibleOnly()
{
  
  if (sGfxHalt == 1)
    return;
  
  // HBlank or visible period
  Gpu_Clock_Scanline_Fast(sGfxWriteBuffer);
  
  sGfxCycle++;
  
  if (sGfxCycle == DX8_GFX_CYCLES_PER_VISIBLE_AREA)
  {
    sGfxFrame++;
    
    // End of Frame.
    Gpu_Scanline_EndFrame();
    Crt_EndFrame();

    sGfxCycle = 0;
    sGfxWaitFrame = 0;
    sGfxWriteBuffer = Crt_GetWriteBuffer();
  }
}
