using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PausedUserInterface : MonoBehaviour
{
  public enum PauseMode
  {
    Welcome,
    About,
    Controls,
    Options
  }

  public DX8.dx8      DX8;
  public GiraffeLayer Layer;
  public GiraffeFont  Font;
  
  GiraffeSprite White;
  GiraffeSprite Crosshair;
  GiraffeSprite Power_Up;
  GiraffeSprite Power_Down;
  GiraffeSprite Eject_Up;
  GiraffeSprite Eject_Down;
  GiraffeSprite Button_Up;
  GiraffeSprite Button_Down;
  GiraffeSprite Button_Light;
  GiraffeSprite Button_Dark;
  GiraffeSprite Floppy;
  GiraffeSprite Checkbox;
  GiraffeSprite Ghost13;
  GiraffeSprite Ghost75;
  GiraffeSprite Ghost150;

  bool IsDirty = false;
  
  int    kControlsSize;
  int    kAboutSize;
  PauseMode    Mode;
  
  public enum Gadget
  {
    Button,
    Check
  }

  class Hitbox
  {

    public int x0, y0, x1, y1, w, h, id, tx, ty, quads;
    public string text;
    public GiraffeFont font;
    public Gadget gadget;
    
    public Hitbox(int X, int Y, int W, int ID, string TEXT, GiraffeFont FONT, Gadget GADGET)
    {
      x0 = X;
      y0 = Y;
      h  = 13;
      gadget = GADGET;
      font = FONT;
      id = ID;
      text = TEXT;
      quads = 0;

      if (gadget == Gadget.Button)
      {
        w  = W;
        tx = x0 + (W / 2) - ((text.Length * 9) / 2);
        ty = y0 + 2;
      }
      else
      {
        w  = 13;
        tx = x0 + 15;
        ty = y0 + 2;
        quads++;
      }

      x1 = X + W;
      y1 = Y + h;
      quads += 3 + FONT.Estimate(text);
    }
    
    public int Mouse(int x, int y)
    {
      if ( x >= x0 && x <= x1 &&
           y >= y0 && y <= y1)
      {
        return id;
      }
      return 0;
    }

    public void SetText(string newText)
    {
      text = newText;
      quads = 3 + font.Estimate(text);
    }
  }

  const int kAbout_Start               = 1;
  const int kAbout_Quit                = 2;
  const int kTabs_Controls             = 3;
  const int kTabs_Options              = 4;
  const int kTabs_About                = 5;
  const int kTabs_Resume               = 6;
  const int kTabs_Quit                 = 7;
  const int kOptions_Heavy             = 8;
  const int kOptions_KeyboardCapture   = 9;
  const int kOptions_3D                = 10;
  const int kOptions_Mute              = 11;
  const int kOptions_Eject             = 12;
  const int kOptions_Power             = 13;
  const int kOptions_Reset             = 14;

  List<Hitbox> welcomeHitboxes = new List<Hitbox>();

  int welcomeHitboxes_Size = 0;
  const int kConfig_Quit = 1;
  
  List<Hitbox> tabHitBoxes = new List<Hitbox>();
  int tabHitboxes_Size = 0;
  
  List<Hitbox> optionBoxes = new List<Hitbox>();
  int optionBoxes_Size = 0;

  int Scale;
  int WindowX, WindowY, WindowW, WindowH;
  int MouseDownOn;

  void Start()
  {
    Mode         = PauseMode.Welcome;
    White        = Layer.atlas.GetSprite("Gorilla/White");
    Crosshair    = Layer.atlas.GetSprite("Crosshair");
    Floppy       = Layer.atlas.GetSprite("Button_Floppy");
    Power_Up     = Layer.atlas.GetSprite("Power_Up");
    Power_Down   = Layer.atlas.GetSprite("Power_Down");
    Eject_Up     = Layer.atlas.GetSprite("Eject_Up");
    Eject_Down   = Layer.atlas.GetSprite("Eject_Down");
    Button_Up    = Layer.atlas.GetSprite("Button_Up");
    Button_Down  = Layer.atlas.GetSprite("Button_Down");
    Button_Light = Layer.atlas.GetSprite("Button_Light");
    Button_Dark  = Layer.atlas.GetSprite("Button_Dark");
    Checkbox     = Layer.atlas.GetSprite("Check");
    Ghost13      = Layer.atlas.GetSprite("Ghost13");
    Ghost75      = Layer.atlas.GetSprite("Ghost75");
    Ghost150     = Layer.atlas.GetSprite("Ghost150");

    kAboutSize = 0;

    for(int i=0;i < Strings.kAbout.Length;i++)
      kAboutSize += Font.Estimate(Strings.kAbout[i]);
      
    kControlsSize = 0;

    for(int i=0;i < Strings.kControls.Length;i++)
      kControlsSize += Font.Estimate(Strings.kControls[i]);
    
    Scale = Layer.scale;

    WindowW = (50 * 9);
    WindowH = (25 * 9);
    WindowX = Screen.width / 2 / Scale -  WindowW / 2;
    WindowY = Screen.height / 2 / Scale - WindowH / 2;

    welcomeHitboxes.Clear();
    welcomeHitboxes.Add(new Hitbox(WindowX + WindowW / 2 - 100,  WindowY + WindowH - 14, 100, kAbout_Start, "Start", Font, Gadget.Button));
    welcomeHitboxes.Add(new Hitbox(WindowX + WindowW / 2 + 100,  WindowY + WindowH - 14, 100, kAbout_Quit,  "Quit", Font, Gadget.Button));

    EstimateQuadSizes(ref welcomeHitboxes_Size, ref welcomeHitboxes);
    
    tabHitBoxes.Clear();
    tabHitBoxes.Add(new Hitbox(WindowX + 75 * 0, WindowY, 75, kTabs_Controls, "Controls", Font, Gadget.Button));
    tabHitBoxes.Add(new Hitbox(WindowX + 75 * 1, WindowY, 75, kTabs_Options,  "Options", Font, Gadget.Button));
    tabHitBoxes.Add(new Hitbox(WindowX + 75 * 2, WindowY, 75, kTabs_About,  "About", Font, Gadget.Button));
    tabHitBoxes.Add(new Hitbox(WindowX + WindowW / 2 - (150 / 2),  WindowY + WindowH - 15, 150, kTabs_Resume,  "[TAB] Resume", Font, Gadget.Button));
    tabHitBoxes.Add(new Hitbox(WindowX + WindowW - 75, WindowY, 75, kTabs_Quit,  "Quit", Font, Gadget.Button));
    
    EstimateQuadSizes(ref tabHitboxes_Size, ref tabHitBoxes);
    
    optionBoxes.Clear();
    optionBoxes.Add(new Hitbox(WindowX + 8, WindowY + 45 + 0 * 15 , 75, kOptions_Heavy, "Heavy Mode",    Font, Gadget.Check));
    optionBoxes.Add(new Hitbox(WindowX + 8, WindowY + 45 + 1 * 15 , 75, kOptions_KeyboardCapture, "Keyboard Mode [MMB]", Font, Gadget.Check));
    optionBoxes.Add(new Hitbox(WindowX + 8, WindowY + 45 + 2 * 15 , 75, kOptions_3D, "3D Mode [LALT]", Font, Gadget.Check));
    optionBoxes.Add(new Hitbox(WindowX + 8, WindowY + 45 + 3 * 15 , 75, kOptions_Mute, "Mute Sound", Font, Gadget.Check));

    optionBoxes.Add(new Hitbox(WindowX + WindowW / 2, WindowY + 45 + 0 * 15 , 150, kOptions_Eject, "Eject Floppy", Font, Gadget.Button));
    optionBoxes.Add(new Hitbox(WindowX + WindowW / 2, WindowY + 45 + 1 * 15 , 150, kOptions_Power, "Power Switch", Font, Gadget.Button));
    optionBoxes.Add(new Hitbox(WindowX + WindowW / 2, WindowY + 45 + 2 * 15 , 150, kOptions_Reset, "Reset Simulation", Font, Gadget.Button));
    
    EstimateQuadSizes(ref optionBoxes_Size, ref optionBoxes);
  }

  void EstimateQuadSizes(ref int size, ref List<Hitbox> hitboxes)
  {
    size = 0;
    for(int i=0;i < hitboxes.Count;i++)
    {
      size += hitboxes[i].quads;
    }
  }
  

  public void Show()
  {
    IsDirty = true;
    gameObject.SetActive(true);
  }

  public void Hide()
  {
    gameObject.SetActive(false);
  }
  
  void Update()
  {
    if (IsDirty)
    {
      Draw();
      IsDirty = false;
    }

    Check();
  }

  void DrawHitbox(Hitbox hb, bool isChecked = false)
  {
    Layer.SetColour(new Color32(0xFF, 0xFF, 0xFF, 0xFF));
    Layer.Add(hb.x0+1, hb.y0, hb.w-2, 13, Button_Up);
    
    Layer.SetColour(new Color32(0xFF, 0xFF, 0xFF, 0xFF));
    Layer.Add(hb.x0, hb.y0, 1, 13, Button_Light);
    
    Layer.SetColour(new Color32(0xFF, 0xFF, 0xFF, 0xFF));
    Layer.Add(hb.x0 + hb.w - 1, hb.y0, 1, 13, Button_Dark);
    
    Layer.SetColour(new Color32(0x29, 0x2c, 0x2e, 0xFF));
    Font.AddTo(Layer, hb.tx, hb.ty, hb.text);

    if (hb.gadget == Gadget.Check)
    {
      if (isChecked)
      {
        Layer.Add(hb.x0+1, hb.y0+1, 11,11, Checkbox);
      }
      else
      {
        Layer.Add(-10,-10,0,0, Checkbox);
      }
    }

  }


  void Draw()
  {
    int numQuads = 1;
    
    switch(Mode)
    {
      case PauseMode.Welcome:  numQuads += kAboutSize + welcomeHitboxes_Size; break;
      case PauseMode.About:    numQuads += kAboutSize + tabHitboxes_Size; break;
      case PauseMode.Controls: numQuads += kControlsSize + tabHitboxes_Size; break;
      case PauseMode.Options:
      {
       numQuads += optionBoxes_Size + tabHitboxes_Size;

       if (DX8.FloppySensor.Floppy == null)
       {
        numQuads++;
       }

      }
      break;
    }
    
    Layer.Begin(numQuads);

    Layer.SetColour(new Color32(0xb3, 0xb2, 0xac, 0xFF));
    Layer.Add(WindowX, WindowY, WindowW, WindowH, White);

    if (Mode == PauseMode.Welcome)
    {
      
      Layer.SetColour(new Color32(0x29, 0x2c, 0x2e, 0xFF));
      for(int i=0;i < Strings.kAbout.Length;i++)
      {
        Font.AddTo(Layer, WindowX + 4, WindowY + 4 + (9 * i), Strings.kAbout[i]);
      }

      for(int i=0;i < welcomeHitboxes.Count;i++)
      {
        DrawHitbox(welcomeHitboxes[i]);
      }
    }
    else 
    {
      for(int i=0;i < tabHitBoxes.Count;i++)
      {
        DrawHitbox(tabHitBoxes[i]);
      }

      if (Mode == PauseMode.About)
      {
        Layer.SetColour(new Color32(0x29, 0x2c, 0x2e, 0xFF));
        for(int i=0;i < Strings.kAbout.Length;i++)
        {
          Font.AddTo(Layer, WindowX + 4, WindowY + 15 + (9 * i), Strings.kAbout[i]);
        }
      }
      else if (Mode == PauseMode.Controls)
      {
        Layer.SetColour(new Color32(0x29, 0x2c, 0x2e, 0xFF));
        for(int i=0;i < Strings.kControls.Length;i++)
        {
          Font.AddTo(Layer, WindowX, WindowY + 15 + (9 * i), Strings.kControls[i]);
        }
      }
      else if (Mode == PauseMode.Options)
      {
        for(int i=0;i < optionBoxes.Count;i++)
        {
          Hitbox hb = optionBoxes[i];
          switch(hb.id)
          {
            default:
              DrawHitbox(hb);
            break;
            case kOptions_3D:
            {
              DrawHitbox(hb, !DX8.Is2dState);
            }
            break;
            case kOptions_Heavy:
            {
              DrawHitbox(hb, DX8.Character.CanPickUpHeavy);
            }
            break;
            case kOptions_KeyboardCapture:
            {
              DrawHitbox(hb, DX8.IsKeyState);
            }
            break;
            case kOptions_Mute:
            {
              DrawHitbox(hb, DX8.Mute);
            }
            break;
            case kOptions_Eject:
            {
              DrawHitbox(hb, false);
             if (DX8.FloppySensor.Floppy == null)
             {
              Layer.Add(hb.x0, hb.y0, 150, 13, Ghost150);
             }

            }
            break;
          }
        }
      }
    }
   
    Layer.End();
  }
  
  bool CheckMp(int x, int y, int x0, int y0, int x1, int y1)
  {
    return x >= x0 && x <= x1 &&
           y >= y0 && y <= y1;
  }

  void Check()
  {
    if (Input.GetMouseButtonUp(0) == false)
      return;
    
    Vector2 mp = Input.mousePosition;
    int x = (int) mp.x, y = Screen.height - (int) mp.y;

    x /= Scale;
    y /= Scale;
    
    if (Mode == PauseMode.Welcome)
    {
      for(int i=0;i < welcomeHitboxes.Count;i++)
      {
        int id = welcomeHitboxes[i].Mouse(x, y);
        if (id != 0)
        {
          Action(id);
          return;
        }
      }
    }
    else
    {
      for(int i=0;i < tabHitBoxes.Count;i++)
      {
        int id = tabHitBoxes[i].Mouse(x, y);
        if (id != 0)
        {
          Action(id);
          return;
        }
      }

      if (Mode == PauseMode.Options)
      {
        for(int i=0;i < optionBoxes.Count;i++)
        {
          int id = optionBoxes[i].Mouse(x, y);
          if (id != 0)
          {
            Action(id);
            return;
          }
        }
      }
    }
  }

  public void Action(int id)
  {
    switch(id)
    {
      default:
        return;
      case kAbout_Start:
      {
        Mode = PauseMode.Controls;
        // DX8.TogglePaused();
      }
      break;
      case kTabs_Quit:
      case kAbout_Quit:
      {
#if UNITY_EDITOR
       UnityEditor.EditorApplication.isPlaying = false;
#else
      Application.Quit();
#endif
      }
      break;
      case kTabs_About:
      {
        Mode = PauseMode.About;
      }
      break;
      case kTabs_Controls:
      {
        Mode = PauseMode.Controls;
      }
      break;
      case kTabs_Options:
      {
        Mode = PauseMode.Options;
      }
      break;
      case kTabs_Resume:
      {
        DX8.TogglePaused();
      }
      break;
      case kOptions_Eject:
      {
        if (DX8.FloppySensor.Floppy != null)
        {
          if (DX8.Is2dState)
            DX8.UI_WarpEject();
          else
            DX8.UI_Eject();
          DX8.TogglePaused();
        }
      }
      break;
      case kOptions_Power:
      {
        DX8.UI_Power();
        DX8.TogglePaused();
      }
      break;
      case kOptions_Reset:
      {
        DX8.DoReset();
      }
      return;
      case kOptions_Heavy:
      {
        DX8.Character.CanPickUpHeavy = !DX8.Character.CanPickUpHeavy;
        //DX8.TogglePaused();
      }
      break;
      case kOptions_KeyboardCapture:
      {
        DX8.ToggleKeyState();
        //DX8.TogglePaused();
      }
      break;
      case kOptions_3D:
      {
        DX8.Toggle2DState();
        //DX8.TogglePaused();
      }
      break;
      case kOptions_Mute:
      {
        DX8.SetMute(!DX8.Mute);
        //DX8.TogglePaused();
      }
      break;
    }
    
    IsDirty = true;
  }

}
