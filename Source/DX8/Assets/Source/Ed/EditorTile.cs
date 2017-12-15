using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EditorTile : Editor
{

  int kSpriteScale = 24;
  int kUiScale = 2;
  List<Color32> palette = new List<Color32>();
  List<Byte> spritePalette = new List<byte>(3);
  Widgetry.Ui   Ui;
  List<byte[]> frames = new List<byte[]>();
  byte[] image;
  Color32[] imageRgb = new Color32[8*8];
  Texture2D imageTex;
  
  public const int Sprite_Load          = 50;
  public const int Sprite_Save          = 51;
  public const int Sprite_Clear         = 52;
  public const int Drawing_Pen          = 60;
  public const int Palette_Increase1    = 101;
  public const int Palette_Increase2    = 102;
  public const int Palette_IncreaseS    = 103;
  public const int Palette_Decrease1    = 201;
  public const int Palette_Decrease2    = 202;
  public const int Palette_DecreaseS    = 203;
  public const int Frame_New            = 301;
  public const int Frame_Delete         = 302;
  public const int Frame_Next           = 303;
  public const int Frame_Prev           = 304;

  public const int Palette_RGB          = 106;

  Byte SelectedColour = 0;

  private void Awake()
  {
    SelectedColour = 1;
    imageTex = new Texture2D(8, 8, TextureFormat.RGBA32, false, false);
    imageTex.wrapModeU = TextureWrapMode.Clamp;
    imageTex.wrapModeV = TextureWrapMode.Repeat;
    imageTex.filterMode = FilterMode.Point;
    imageTex.alphaIsTransparency = true;
    
    palette.Add(new Color32(0, 0, 0        , 0x00));
    palette.Add(new Color32(34, 34, 34     , 0xFF));
    palette.Add(new Color32(85, 68, 170    , 0xFF));
    palette.Add(new Color32(34, 153, 68    , 0xFF));
    palette.Add(new Color32(85, 187, 204   , 0xFF));
    palette.Add(new Color32(255, 68, 34    , 0xFF));
    palette.Add(new Color32(255, 102, 170  , 0xFF));
    palette.Add(new Color32(255, 187, 68   , 0xFF));
    palette.Add(new Color32(255, 221, 204  , 0xFF));
    palette.Add(new Color32(102, 68, 85    , 0xFF));
    palette.Add(new Color32(153, 102, 221  , 0xFF));
    palette.Add(new Color32(102, 187, 119  , 0xFF));
    palette.Add(new Color32(153, 221, 255  , 0xFF));
    palette.Add(new Color32(255, 102, 85   , 0xFF));
    palette.Add(new Color32(255, 136, 221  , 0xFF));
    palette.Add(new Color32(255, 221, 119  , 0xFF));
    palette.Add(new Color32(255, 255, 255  , 0xFF));

    spritePalette.Add(0);
    spritePalette.Add(0x10);
    spritePalette.Add(0x1);
    spritePalette.Add(0x05);

    frames.Clear();
    image = new byte[8*8];
    frames.Add(image);
    
  }

  public override void Setup(Widgetry.Ui ui)
  {
    Ui = ui;
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
    
    Ui.AddTool(Sprite_Load, tx,     ty, "Widget_Icon_Load");
    tx += toolP + toolW;
    Ui.AddTool(Sprite_Save,   tx,     ty, "Widget_Icon_Save");
    tx = toolP;
    ty += toolP + toolW;

    Ui.AddTool(Sprite_Clear, tx,     ty, "Widget_Icon_Clear");
    tx += toolP + toolW;
    Ui.AddTool(Drawing_Pen,   tx,     ty, "Widget_Icon_Pen");
    tx = toolP;
    ty += toolP + toolW;
    
    
    Ui.AddTool(Frame_New, tx,     ty, "Widget_Icon_New");
    tx += toolP + toolW;
    Ui.AddTool(Frame_Delete,   tx,     ty, "Widget_Icon_Delete");
    tx = toolP;
    ty += toolP + toolW;
    
    Ui.AddTool(Frame_Prev, tx,     ty, "Widget_Icon_Prev");
    tx += toolP + toolW;
    Ui.AddTool(Frame_Next,   tx,     ty, "Widget_Icon_Next");
    tx = toolP;
    ty += toolP + toolW;

    tx = toolP;
    ty += toolP + toolW;
    
    Ui.AddSpriteButton(Palette_Increase1, tx, ty, "Widgets_Up");
    tx += 10;
    
    Ui.AddSpriteButton(Palette_Increase2, tx, ty, "Widgets_Up");
    tx += 10;
    
    Ui.AddSpriteButton(Palette_IncreaseS, tx, ty, "Widgets_Up");
    tx += 10;

    tx = toolP;
    ty += 8;
   
     Ui.AddLabel(Palette_RGB, tx, ty, 
      string.Format("{0:X1}{1:X1}{2:X1}", 
        spritePalette[1] - 1, 
        spritePalette[2] - 1, 
        spritePalette[3] - 1
      )
    );

    ty += 10;
    
    tx = toolP;
    Ui.AddSpriteButton(Palette_Decrease1, tx, ty, "Widgets_Down");
    tx += 10;
    
    Ui.AddSpriteButton(Palette_Decrease2, tx, ty, "Widgets_Down");
    tx += 10;
    
    Ui.AddSpriteButton(Palette_DecreaseS, tx, ty, "Widgets_Down");
    tx += 10;

    tx = toolP;
    ty += 8;
    for(int i=1;i < spritePalette.Count;i++)
    {
      Ui.AddPanel(i, 
        tx,
        ty, 
        w - (toolP * 2), 
        16, 
        (byte) (palette[spritePalette[i]].r * 16), 
        (byte) (palette[spritePalette[i]].g * 16), 
        (byte) (palette[spritePalette[i]].b * 16));
        ty += 16;
    }
    
    GetComponent<EditorMain>().RefreshSharedUi();

  }
  
  void RefreshImage()
  {
    for(int i=0;i < 8 * 8;i++)
    {
      imageRgb[i] = new Color32(0,0,0,0);
    }
    
    for(int i=0;i < 8;i++)
    {
      for (int j=0;j < 8;j++)
      {
        byte colour = image[i + (j * 8)];
        imageRgb[i + (j * 8)] = palette[spritePalette[colour]];
      }
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
    if (Input.GetMouseButtonUp(0) && ((buttonId = Ui.Test(mx / kUiScale, my / kUiScale)) != 0))
    {
      click = -1;
      switch (buttonId)
      {
        case 1:
        case 2:
        case 3:
          SelectedColour = (byte) buttonId;
          RefreshUi();
        break;
        case Sprite_Clear:
          image = new byte[8 * 8];
          RefreshImage();
          RefreshUi();
        break;
        case Palette_Increase1:
        case Palette_Increase2:
        case Palette_IncreaseS:
        {
          int idx = (buttonId - 100);
          if (spritePalette[idx] < 0x10)
          {
            spritePalette[idx]++;
            RefreshImage();
            RefreshUi();
          }
        }
        break;
        case Palette_Decrease1:
        case Palette_Decrease2:
        case Palette_DecreaseS:
        {
          int idx = (buttonId - 200);
          if (spritePalette[idx] > 0x1)
          {
            spritePalette[idx]--;
            RefreshImage();
            RefreshUi();
          }
        }
        break;
        case Frame_New:
        {
          image = new byte[24 * 24];
          frames.Add(image);
          RefreshImage();
          RefreshUi();
        }
        break;
        case Frame_Delete:
        {
          int idx = frames.IndexOf(image);
          if (idx != -1)
          {
            if (frames.Count > 1)
            {
              frames.RemoveAt(idx);
            }
            else
            {
              for(int i=0;i < 24 * 24;i++)
                image[i] = 0;
            }
          }

          idx--;
          if (idx < 0)
            idx = 0;

          image = frames[idx];
          RefreshImage();
          RefreshUi();
        }
        break;
        case Frame_Prev:
        {
          int idx = frames.IndexOf(image);
          
          idx--;
          if (idx < 0)
            idx = 0;

          image = frames[idx];
          RefreshImage();
          RefreshUi();

        }
        break;
        case Frame_Next:
        {
          int idx = frames.IndexOf(image);
          
          idx++;
          if (idx >= frames.Count)
            idx = frames.Count - 1;

          image = frames[idx];
          
          RefreshImage();
          RefreshUi();
        }
        break;
        case Sprite_Save:
          // @TODO Call EditorMain to do a SaveRequester
          //SaveFile(); // TEMP.
          GetComponent<EditorMain>().FileRequester(SaveTo, true);
          enabled = false;
        return;
        case Sprite_Load:
          GetComponent<EditorMain>().FileRequester(LoadFrom, false);
          enabled = false;
        return;
      }
    }


    if (click != -1)
    {
      int x0 = 50 * kUiScale;
      int y0 = 0;

      mx -= x0;
      my -= y0;

      if (mx < 0)
        return;
        
      if (my < 0)
        return;
        
      mx /= kSpriteScale;
      my /= kSpriteScale;
      
      if (mx >= 8)
        return;
        
      if (my >= 8)
        return;
      
      if (click == 0)
            image[mx + (my * 8)] = 0;
      else
            image[mx + (my * 8)] = (byte) SelectedColour;

      RefreshImage();
    }
  }


  public override void Teardown()
  {
  }

  public void OnGUI()
  {
    int mx = (int) Input.mousePosition.x;
    int my = Screen.height - (int) Input.mousePosition.y;

    int b = 0;
    if ((b = Ui.Test(mx / kUiScale, my / kUiScale)) != 0)
    {
      GUI.Label(new Rect(200,25, 200, 25), b.ToString());
    }

    Color32 on  = new Color32(0xFF, 0xFF, 0xFF, 0x55);
    Color32 off = new Color32(0x00, 0x00, 0x00, 0x55);


    int ox = 50 * kUiScale;
    int w = 8 * kSpriteScale;


    GUI.color = on;
    GUI.DrawTexture(new Rect(ox + (0 * w), (0 * w), w, w), Texture2D.whiteTexture);
    
    GUI.color = Color.white;
    GUI.DrawTextureWithTexCoords(new Rect(50 * kUiScale,                     0,  8 * kSpriteScale, 8 * kSpriteScale), imageTex, new Rect(0,0,1,-1));
    GUI.DrawTextureWithTexCoords(new Rect(50 * kUiScale + 8 * kSpriteScale, 0,  8, 8), imageTex, new Rect(0,0,1,-1));
    GUI.DrawTextureWithTexCoords(new Rect(50 * kUiScale + 8 * kSpriteScale, 8, 8*2, 8*2), imageTex, new Rect(0,0,1,-1));
  }

  public string SaveToString()
  {
    System.Text.StringBuilder sb = new System.Text.StringBuilder(108);

    int w = 8;
    int lm = 1;
    
    sb.AppendFormat("; COUNT {0:X1}", frames.Count);
    sb.AppendLine();
    sb.AppendFormat("; PAL {0:X1}{1:X1}{2:X1}", spritePalette[1] - 1, spritePalette[2] - 1, spritePalette[3] - 1);
    sb.AppendLine();
    
    foreach(var frame in frames)
    {
      for(int j=0;j < w;j++)
      {
        sb.Append(';');
        for(int i=0;i < w;i++)
        {
          byte colour = frame[i + (j * 8)];
          sb.AppendFormat("{0:X1}", colour);
        }
        sb.AppendLine();
      }
    
      int line = 0;
      for(int i=0;i < w;i+=4)
      {
        for (int j=0;j < w;j++)
        {
          if (line == 0)
          {
            sb.Append("db ");
          }

          int idx = i + (j * 8);

          byte b0 = (byte) (frame[idx+0]);
          byte b1 = (byte) (frame[idx+1]);
          byte b2 = (byte) (frame[idx+2]);
          byte b3 = (byte) (frame[idx+3]);
            
          byte m = 0;
          m |= b0;
          m |= (byte) (b1 << 2);
          m |= (byte) (b2 << 4);
          m |= (byte) (b3 << 6);
            
          sb.AppendFormat("${0:X2}", m);
          if (line++ == lm)
          {
            line = 0;
            sb.AppendLine();
          }
          else
          {
            sb.Append(", ");
          }
        }
      }
    }
    Debug.Log(sb.ToString());

    return sb.ToString();
  }

  // https://stackoverflow.com/questions/1214980/convert-a-single-hex-character-to-its-byte-value-in-c-sharp
  byte HexToInt(char hexChar)
  {
      hexChar = char.ToUpper(hexChar);  // may not be necessary

      byte b = (byte) ( (int)hexChar < (int)'A' ?
          ((int)hexChar - (int)'0') :
          10 + ((int)hexChar - (int)'A'));

      if (b > 0xF)
        b = 0xF;
      return b;
  }


  private void LoadFrom(String value, RequesterMode mode, Boolean forWriting)
  {
    enabled = true;
    RefreshImage();
    RefreshUi();

    if (value == null)
      return;

    Debug.Log("Loading file " + value);

    string[] lines = System.IO.File.ReadAllLines(value);
    
    int y = 0;
    
    byte[] frame = new byte[8*8];
    int numFrames = 1;
    frames.Clear();
    image = null;

    foreach(var line in lines)
    {
//; FRAMES F
//0123456789
      if (line.StartsWith("; FRAMES"))
      {
        numFrames = HexToInt(line[9]);
        continue;
      }
      
      //; PAL F06
      //0123456
      if (line.StartsWith("; PAL"))
      {
        spritePalette[1] = (byte) (1 + HexToInt(line[6 + 0]));
        spritePalette[2] = (byte) (1 + HexToInt(line[6 + 1]));
        spritePalette[3] = (byte) (1 + HexToInt(line[6 + 2]));
        
        Debug.LogFormat("{0:X1}", spritePalette[1]);
        Debug.LogFormat("{0:X1}", spritePalette[2]);
        Debug.LogFormat("{0:X1}", spritePalette[3]);

        continue;
      }

      if (line.StartsWith(";") == false)
        continue;
        
      int lw = ((1 + 8) * 8);

      int lineLength = 1 + lw;

      if (line.Length != lineLength)
        continue;
      
      for(int i=0;i < lw;i++)
      {
        char c = line[1 + i];
        Byte b = 0;

        if (c == '0')
          b = 0;
        else if (c == '1')
          b = 1;
        else if (c == '2')
          b = 2;
        else if (c == '3')
          b = 3;

        frame[i + (y * 8)] = b;
      }

      y++;
      if (y == 8)
      {
        image = frame;
        frames.Add(frame);
        frame = new byte[8 * 8];
        y = 0;
      }
    }
    
    RefreshImage();
    RefreshUi();
  }

  private void SaveTo(String value, RequesterMode mode, Boolean forWriting)
  {
    enabled = true;
    RefreshImage();
    RefreshUi();

    if (value == null)
      return;

    Debug.Log("Saving file " + value);

    string data = SaveToString();

    System.IO.File.WriteAllText(value, data);
  }

  float FrameCounter = 0.0f;

 
}
