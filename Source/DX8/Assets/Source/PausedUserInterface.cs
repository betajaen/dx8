using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PausedUserInterface : MonoBehaviour
{
  public enum PauseMode
  {
    About,
    Config
  }

  public DX8.dx8      DX8;
  public GiraffeLayer Layer;
  public GiraffeFont  Font;
  public PauseMode    Mode = PauseMode.Config;
  
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

  bool IsDirty = false;
  
  public string[] kLines = new string[] {
//   123456789012345678012345678901234567800123456780
    "         DX8 Emulator by Robin Southern         ",
    "            github.com/betajaen/dx8",
    "     For the Fantasy Console Game Jam 2017",
    "            Made in \"14\" days!!",
    "",
    "This is an emulator for a fictional computer,",
    "inspired by British made computers of the 1980s.",
    "",
    "The DX8 computer features a custom 8-bit CPU -  ",
    "running at a whooping 8 Mhz. 64KB of RAM shared ",
    "with the 4-bit GPU, and simple buzzer speaker.",
    "",
    "The computer can be programmed using assembly",
    "so I've included some games + demos for you to",
    "try out.", 
    "",
    " - Cheers! -- betajaen"
  };
  
  public int    kLineSize;
  
  public string[] kControls = new string[] {
//   123456789012345678012345678901234567800123456780
    " Controls",
    "",
    " WASD   - Movement",
    " Left   - Grab and Release",
    " Middle - Typing Mode",
    " L Alt  - 3D or 2D Simulation",
    " ESC    - Pause Menu",
  };
  
  public int    kControlsSize;
  
  void Start()
  {
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

    kLineSize = 0;

    for(int i=0;i < kLines.Length;i++)
      kLineSize += Font.Estimate(kLines[i]);
      
    kControlsSize = 0;

    for(int i=0;i < kControls.Length;i++)
      kControlsSize += Font.Estimate(kControls[i]);
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
  }

  void Draw()
  {
    
    int w = (50 * 9);
    int h = (30 * 9);
    int x = Screen.width / 4 - w / 2;
    int y = Screen.height / 4 - h / 2;

    if (Mode == PauseMode.About)
    {
      Layer.Begin(1 + kLineSize);
      Layer.SetColour(new Color32(0xb3, 0xb2, 0xac, 0xFF));
      Layer.Add(x, y, w, h, Button_Light);
      
      Layer.SetColour(new Color32(0x29, 0x2c, 0x2e, 0xFF));
      for(int i=0;i < kLines.Length;i++)
      {
        Font.AddTo(Layer, x + 4, y + 4 + (9 * i), kLines[i]);
      }
    
      Layer.End();
    }
    else
    {
      Layer.Begin(1 + kControlsSize);
      Layer.SetColour(new Color32(0xb3, 0xb2, 0xac, 0xFF));
      Layer.Add(x, y, w, h, Button_Light);
      
      Layer.SetColour(new Color32(0x29, 0x2c, 0x2e, 0xFF));
      for(int i=0;i < kControls.Length;i++)
      {
        Font.AddTo(Layer, x + 4, y + 4 + (9 * i), kControls[i]);
      }
    
      Layer.End();
    }
  }
  
  bool CheckMp(int x, int y, int x0, int y0, int x1, int y1)
  {
    return x >= x0 && x <= x1 &&
           y >= y0 && y <= y1;
  }

  void Check2d()
  {
    if (Input.GetMouseButtonUp(0) == false)
      return;
  }

}
