using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EditorSprite : Editor
{
  public struct Colour444
  {
    public byte r, g, b;

    public Colour444(byte R, byte G, byte B)
    {
      r = R;
      g = G;
      b = B;
    }

    public Color32 ToColor32()
    {
      return new Color32((byte) (r * 16), (byte) (g * 16), (byte) (b * 16), 0xFF);
    }
  }

  int kSpriteSprite = 24;
  public List<Colour444> colours = new List<Colour444>();
  public Widgetry.Ui   Ui;
  byte[] image       = new byte[24*24];
  Color32[] imageRgb = new Color32[24*24];
  Texture2D imageTex;
  
  public const int Palette_Load      = 96;
  public const int Palette_Save      = 97;
  public const int Palette_Clear     = 98;
  public const int Palette_Pen       = 99;
  public const int Palette_IncreaseR = 100;
  public const int Palette_IncreaseG = 101;
  public const int Palette_IncreaseB = 102;
  public const int Palette_DecreaseR = 103;
  public const int Palette_DecreaseG = 104;
  public const int Palette_DecreaseB = 105;
  public const int Palette_RGB       = 106;

  int SelectedColour = 0;

  public override void Setup(Widgetry.Ui ui)
  {
    Ui = ui;
    SelectedColour = 1;
    imageTex = new Texture2D(24, 24, TextureFormat.RGBA32, false, false);
    imageTex.wrapModeU = TextureWrapMode.Clamp;
    imageTex.wrapModeV = TextureWrapMode.Repeat;
    imageTex.filterMode = FilterMode.Point;
    imageTex.alphaIsTransparency = true;

    colours.Add(new Colour444(0x0,0x0,0x0));
    colours.Add(new Colour444(0xC,0x0,0x0));
    colours.Add(new Colour444(0x0,0xC,0x0));
    colours.Add(new Colour444(0x0,0x0,0xC));

    RefreshUi();
    RefreshImage();
  }

  void RefreshUi()
  {
    Ui.Clear();
    
    int sw = Screen.width  / 2;
    int sh = Screen.height / 2;
    
    int w = 50;

    Ui.AddPanel(-1000, w, 0, sw - w, sh, 0x20, 0x00, 0x00);
    Ui.AddPanel(-999,  0, 0, w, sh, 0x00, 0x00, 0x00);
    
    const int toolW = 23;
    const int toolP = 2;

    int tx = toolP, ty = toolP;
    
    Ui.AddTool(Palette_Load, tx,     ty, "Widget_Icon_Load");
    tx += toolP + toolW;
    Ui.AddTool(Palette_Save,   tx,     ty, "Widget_Icon_Save");
    tx = toolP;
    ty += toolP + toolW;

    Ui.AddTool(Palette_Clear, tx,     ty, "Widget_Icon_Clear");
    tx += toolP + toolW;
    Ui.AddTool(Palette_Pen,   tx,     ty, "Widget_Icon_Pen");
    tx = toolP;
    ty += toolP + toolW;
    
    Ui.AddLabel(Palette_RGB, tx, ty, 
      string.Format("{0:X1}{1:X1}{2:X1}", 
        colours[SelectedColour].r, 
        colours[SelectedColour].g, 
        colours[SelectedColour].b
      )
    );

    ty += 16;

    for(int i=0;i < colours.Count;i++)
    {
      Ui.AddPanel(i, 
        tx,
        ty, 
        w - (toolP * 2), 
        16, 
        (byte) (colours[i].r * 16), (byte) (colours[i].g * 16), (byte) (colours[i].b * 16));
        ty += 16;
    }
  }
  
  void RefreshImage()
  {
    
    for(int i=0;i < 24*24;i++)
    {
      byte colour = image[i];
      if (colour == 0)
        imageRgb[i] = new Color32(0,0,0,0);
      else
        imageRgb[i] = colours[colour].ToColor32();
    }

    imageTex.SetPixels32(imageRgb);
    imageTex.Apply();
  }

  public void Update()
  {
    int click = -1;
    
    int mx = (int) Input.mousePosition.x;
    int my = Screen.height - (int) Input.mousePosition.y;

    if (Input.GetMouseButton(0))
      click = 1;
    else if (Input.GetMouseButton(1))
      click = 0;
     
    int buttonId;
    if (Input.GetMouseButtonUp(0) && ((buttonId = Ui.Test(mx / 2, my / 2)) != 0))
    {
      click = -1;
      switch (buttonId)
      {
        case 0:
        case 1:
        case 2:
        case 3:
          SelectedColour = buttonId;
        break;
        case Palette_Clear:
          image = new byte[24 * 24];
          RefreshImage();
        break;
        case Palette_Save:
          System.Text.StringBuilder sb = new System.Text.StringBuilder(1024);
          
          for(int j=0;j < 24;j++)
          {
            sb.Append(';');
            for(int i=0;i < 24;i++)
            {
              byte colour = image[i + (j * 24)];
              switch(colour)
              {
                case 0:
                  sb.Append('.');
                break;
                case 1:
                  sb.Append('1');
                break;
                case 2:
                  sb.Append('2');
                break;
                case 3:
                  sb.Append('3');
                break;
                default:
                  sb.Append('?');
                break;
              }
            }
            sb.AppendLine();
            
         }
         
          for(int i=0;i < colours.Count;i++)
          {
            Colour444 colour = colours[i];
            sb.AppendFormat("; {0:X1}{1:X1}{2:X1}", colour.r, colour.g, colour.b);
            sb.AppendLine();
          }
         Debug.Log(sb.ToString());

        break;
      }
    }


    if (click != -1)
    {
      int x0 = 50 * 2;
      int y0 = 0;

      mx -= x0;
      my -= y0;

      if (mx < 0)
        return;
        
      if (my < 0)
        return;
        
      mx /= kSpriteSprite;
      my /= kSpriteSprite;

      if (mx >= 24)
        return;
        
      if (my >= 24)
        return;
      
      if (click == 0)
            image[mx + (my * 24)] = 0;
      else
            image[mx + (my * 24)] = (byte) SelectedColour;

      RefreshImage();
    }
  }

  public override void Teardown()
  {
  }

  public void OnGUI()
  {
    GUI.DrawTextureWithTexCoords(new Rect(50 * 2 ,0, 24 * kSpriteSprite, 24 * kSpriteSprite), imageTex, new Rect(0,0,1,-1));
    
    GUI.DrawTextureWithTexCoords(new Rect(50 * 2 + 24 * kSpriteSprite, 0, 24, 24), imageTex, new Rect(0,0,1,-1));
    GUI.DrawTextureWithTexCoords(new Rect(50 * 2 + 24 * kSpriteSprite, 24, 24*2, 24*2), imageTex, new Rect(0,0,1,-1));
  }

}
