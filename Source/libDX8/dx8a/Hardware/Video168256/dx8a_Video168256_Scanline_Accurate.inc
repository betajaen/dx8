void Gpu_Clock_Scanline_Accurate(Byte* writeBuffer, u32 subCycle)
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

    #undef CYCLE_A
    #undef CYCLE_B
    #undef CYCLE_C
    #undef CYCLE_D
    #undef SCANLINE_COLUMN
    #undef CYCLE_P
    
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

