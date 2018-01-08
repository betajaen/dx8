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

#include <dx8/Core/Video168256/dx8_Video168256.h>
#include <dx8/Core/Video168256/dx8_Video168256_Palette.inc>

#include <assert.h>

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

typedef struct
{
  Byte lo, hi;
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
  
  sprite->x     = FastRam_Get(GFX_FAST_SPRITES + (index * 4) + 0);
  sprite->y     = FastRam_Get(GFX_FAST_SPRITES + (index * 4) + 1);
  sprite->flags = FastRam_Get(GFX_FAST_SPRITES + (index * 4) + 2);
  sprite->addr  = FastRam_Get(GFX_FAST_SPRITES + (index * 4) + 3);
}

void Gpu_Fetch_SpriteImage(int index)
{
  SpriteRegister* sprite = &sGpu.Sprites[index];
  
  sprite->image[0] = FastRam_Get(GFX_FAST_SPRITE_MEM + (sprite->addr * 64) + 0);  // Just get the first row for now.
  sprite->image[1] = FastRam_Get(GFX_FAST_SPRITE_MEM + (sprite->addr * 64) + 1);
  sprite->image[2] = FastRam_Get(GFX_FAST_SPRITE_MEM + (sprite->addr * 64) + 2);
  sprite->image[3] = FastRam_Get(GFX_FAST_SPRITE_MEM + (sprite->addr * 64) + 3);
}

inline void Gpu_Clock_Visible_C()
{
  sGpu.C.lo = FastRam_Get(sGpu.CCounter + 0);
  sGpu.C.hi = FastRam_Get(sGpu.CCounter + 1);
  sGpu.CCounter += 2;
}

inline void Gpu_ByteToK2(Byte m, Byte* k)
{
  k[0] = (m >> 4) & 0x0F;
  k[1] = m & 0x0F;
}

inline void Gpu_Clock_Visible_K()
{
  Byte colour_lo = FastRam_Get(sGpu.KCounter + 0);
  Byte colour_hi = FastRam_Get(sGpu.KCounter + 1);
  
  Gpu_ByteToK2(colour_lo, &sGpu.K.colour[0]);
  Gpu_ByteToK2(colour_hi, &sGpu.K.colour[2]);
  
  sGpu.KCounter += 2;
}

#define T_STRIDE 256  /* 256 for Single and Multi Colour modes */
inline void Gpu_Clock_Visible_T_Odd()
{
  Word address = GFX_FAST_TILE_MEM + (((Word)sGpu.YRow) * T_STRIDE) + (Word) sGpu.C.lo;
  sGpu.T = FastRam_GetWord(address);
}

inline void Gpu_Clock_Visible_T_Even()
{
  Word address = GFX_FAST_TILE_MEM + (((Word)sGpu.YRow) * T_STRIDE) + (Word)sGpu.C.hi;
  sGpu.T = FastRam_GetWord(address);
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

void Gpu_Clock_Scanline(Byte* writeBuffer, u32 subCycle)
{
  if (sGpu.Y >= DX8_GFX_HEIGHT)
  {
    sGpu.Y = DX8_GFX_HEIGHT - 1;
  }

  switch(sGpu.ScanlineCycle)
  {
    default:
      assert(0);
    break;
    // H-Blank Front Porch ---------------------------------------------------------------------------
    case 0:
    {
      if (subCycle == 3)
      {
        // Gfx
        Gpu_Scanline_Begin();
        sGpu.DMA = 0;
        sGpu.Reset = 0;
      
        // Video
        Gpu_Fetch_Sprite(0);
      }
    }
    break;
    case 1:
    {
      if (subCycle == 3)
      {
        // Video
        Gpu_Fetch_Sprite(1);
        Gpu_Fetch_Sprite(2);

        // Sprite
        Gpu_Fetch_SpriteImage(0);
      }
    }
    break;
    case 2:
    {
      if (subCycle == 3)
      {
        // Video
        Gpu_Fetch_Sprite(3);
        Gpu_Fetch_Sprite(4);
      
        // Sprite
        Gpu_Fetch_SpriteImage(1);
      }
    }
    break;
    case 3:
    {
      if (subCycle == 3)
      {
        // Video
        Gpu_Fetch_Sprite(5);
        Gpu_Fetch_Sprite(6);
      
        // Sprite
        Gpu_Fetch_SpriteImage(2);
      }
    }
    break;
    case 4:
    {
      if (subCycle == 3)
      {
        // Video
        Gpu_Fetch_Sprite(7);
      
        // Sprite
        Gpu_Fetch_SpriteImage(3);
      }
    }
    break;
    case 5:
    {
      if (subCycle == 3)
      {
        // Video
        sGpu.Reg_Flags           = FastRam_Get(GFX_FAST_FLAGS);
        sGpu.Reg_Screen0_Flags   = FastRam_Get(GFX_FAST_SCREEN0_FLAGS);

        sGpu.Reg_Screen0_Scroll  = FastRam_Get(GFX_FAST_SCREEN0_SCROLL);
        sGpu.Reg_Screen0_Palette = FastRam_Get(GFX_FAST_SCREEN0_PALETTE);
      
        sGpu.Reg_Screen1_Flags   = FastRam_Get(GFX_FAST_SCREEN1_FLAGS);
        sGpu.Reg_Screen1_Scroll  = FastRam_Get(GFX_FAST_SCREEN1_SCROLL);

        sGpu.Reg_Screen1_Palette = FastRam_Get(GFX_FAST_SCREEN1_PALETTE);
        FastRam_Get(GFX_FAST_SCREEN1_PALETTE + 1); // Garbage byte

        // Sprite
        Gpu_Fetch_SpriteImage(4);
      }
    }
    break;
    case 6:
    {
      if (subCycle == 3)
      {
        // Video

        // Sprite
        Gpu_Fetch_SpriteImage(5);
      }
    }
    break;
    case 7:
    {
      if (subCycle == 3)
      {
        // Video

        // Sprite
        Gpu_Fetch_SpriteImage(6);
      }
    }
    break;
    case 8:
    {
      if (subCycle == 3)
      {
        // Video


        // Sprite
        Gpu_Fetch_SpriteImage(7);
      }
    }
    break;
    case 9:
    {
    }
    break;
    case 10:
    {
      if (subCycle == 3)
      {
        Byte flags = FastRam_Get(GFX_FAST_FLAGS);
      
        sGpu.ScrollY = sGpu.Y; // For now, but need to implement Y scrolling.
      
        if ((flags & GFX_FLAGS_SCREEN) != 0)
          sGpu.CCounter = GFX_FAST_SCREEN0 + (sGpu.TileRow * GFX_COLUMNS);
        else
          sGpu.CCounter = GFX_FAST_SCREEN1 + (sGpu.TileRow * GFX_COLUMNS);
      }
    }
    break;

    #define SCANLINE_COLUMN (sGpu.ScanlineCycle - 12)
    
    #define CYCLE_P \
      if (subCycle == 2)\
      {\
        Gpu_Clock_Visible_C();\
      }

    #define CYCLE_A \
      switch(subCycle)\
      {\
        case 0: Gpu_Clock_Visible_K();               break; \
        case 1: Gpu_Clock_Visible_T_Odd();           break; \
        case 2: Gpu_Clock_Visible_S();               break; \
        case 3: Gpu_Emit(SCANLINE_COLUMN, 0);        break; \
      }

    #define CYCLE_B \
      switch(subCycle)\
      {\
        case 0: Gpu_Clock_Visible_T_Even();          break; \
        case 1: Gpu_Clock_Visible_C();               break; \
        case 2: Gpu_Clock_Visible_S();               break; \
        case 3: Gpu_Emit(SCANLINE_COLUMN, 1);        break; \
      }\

    #define CYCLE_C \
      switch(subCycle)\
      {\
        case 0:                                      break; \
        case 1: Gpu_Clock_Visible_T_Odd();           break; \
        case 2: Gpu_Clock_Visible_S();               break; \
        case 3: Gpu_Emit(SCANLINE_COLUMN, 2); break; \
      }

    #define CYCLE_D \
      switch(subCycle)\
      {\
        case 0: Gpu_Clock_Visible_T_Even();          break; \
        case 1: Gpu_Clock_Visible_C();               break; \
        case 2: Gpu_Clock_Visible_S();               break; \
        case 3: Gpu_Emit(SCANLINE_COLUMN, 3);        break; \
      }

    case 11:
    {
      if (subCycle == 3)
      {
        Byte flags = FastRam_Get(GFX_FAST_FLAGS);
      
        sGpu.ScrollY = sGpu.Y; // For now, but need to implement Y scrolling.
      
        if ((flags & GFX_FLAGS_SCREEN) != 0)
          sGpu.KCounter = GFX_FAST_SCREEN0_COLOUR + (sGpu.TileRow * GFX_COLUMNS_COLOUR);
        else
          sGpu.KCounter = GFX_FAST_SCREEN1_COLOUR + (sGpu.TileRow * GFX_COLUMNS_COLOUR);
      
        CYCLE_P;
      }
    }
    break;
    // Start of Visible ---------------------------------------------------------------------------

    case 12:
      CYCLE_A;
    break;
    case 13:
      CYCLE_B;
    break;
    case 14:
      CYCLE_C;
    break;
    case 15:
      CYCLE_D;
    break;
    

    case 16:
      CYCLE_A;
    break;
    case 17:
      CYCLE_B;
    break;
    case 18:
      CYCLE_C;
    break;
    case 19:
      CYCLE_D;
    break;
    

    case 20:
      CYCLE_A;
    break;
    case 21:
      CYCLE_B;
    break;
    case 22:
      CYCLE_C;
    break;
    case 23:
      CYCLE_D;
    break;
    
    
    case 24:
      CYCLE_A;
    break;
    case 25:
      CYCLE_B;
    break;
    case 26:
      CYCLE_C;
    break;
    case 27:
      CYCLE_D;
    break;
    
    
    case 28:
      CYCLE_A;
    break;
    case 29:
      CYCLE_B;
    break;
    case 30:
      CYCLE_C;
    break;
    case 31:
      CYCLE_D;
    break;
    
    
    case 32:
      CYCLE_A;
    break;
    case 33:
      CYCLE_B;
    break;
    case 34:
      CYCLE_C;
    break;
    case 35:
      CYCLE_D;
    break;
    
    
    case 36:
      CYCLE_A;
    break;
    case 37:
      CYCLE_B;
    break;
    case 38:
      CYCLE_C;
    break;
    case 39:
      CYCLE_D;
    break;
    
    
    case 40:
      CYCLE_A;
    break;
    case 41:
      CYCLE_B;
    break;
    case 42:
      CYCLE_C;
    break;
    case 43:
      CYCLE_D;
    break;
    
    
    case 44:
      CYCLE_A;
    break;
    case 45:
      CYCLE_B;
    break;
    case 46:
      CYCLE_C;
    break;
    case 47:
      CYCLE_D;
    break;
    
    
    case 48:
      CYCLE_A;
    break;
    case 49:
      CYCLE_B;
    break;
    case 50:
      CYCLE_C;
    break;
    case 51:
      CYCLE_D;
    break;
    
    // H-Blank Back Porch ---------------------------------------------------------------------------
    case 52:
    {
      if (subCycle == 3)
      {
        sGpu.DMA = 0;
        // @TODO H-BLANK Interrupt.
      
        Gpu_Scanline_End(writeBuffer);

        sGpu.Y++;
        if (sGpu.YRow == 7)
        {
          sGpu.YRow = 0;
          sGpu.TileRow++;
        }
        else
        {
          sGpu.YRow++;
        }

        sGpu.ScanlineX = 0;
      }
    }
    break;
    case 53:
    {
      sGpu.Reset = 1;
    }
    break;
    case 54:
    {
      sGpu.Reset = 1;
    }
    break;
    case 55:
    {
      sGpu.Reset = 1;
    }
    break;
    case 56:
    {
      sGpu.Reset = 1;
    }
    break;
    case 57:
    {
      sGpu.Reset = 1;
    }
    break;
    case 58:
    {
      sGpu.Reset = 1;
    }
    break;
    case 59:
    {
      sGpu.Reset = 1;
    }
    break;
    case 60:
    {
      sGpu.Reset = 1;
    }
    break;
    case 61:
    {
      sGpu.Reset = 1;
    }
    break;
    case 62:
    {
      sGpu.Reset = 1;
    }
    break;
    case 63:
    {
      sGpu.Reset = 1;
    }
    break;
  }

  if (subCycle == 3)
  {
    sGpu.ScanlineCycle++;
  
    if (sGpu.ScanlineCycle == 64)
    {
      sGpu.ScanlineCycle = 0;
    }
    
  }
}

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
}

void Video_Teardown()
{
}

void Video_Clock(u32 subCycles)
{
  
}
