using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UserInterface : MonoBehaviour
{
  public enum SimulationMode
  {
    Two,
    Three
  }

  public const int kMenuButton_X0 = 0;
  public const int kMenuButton_Y0 = 0;
  public const int kMenuButton_W  = 13;
  public const int kMenuButton_H  = 13;

  public const int kMenuButton_X1 = kMenuButton_X0 + kMenuButton_W;
  public const int kMenuButton_Y1 = kMenuButton_Y0 + kMenuButton_H;

  public DX8.dx8      DX8;
  public GiraffeLayer Layer;
  public GiraffeFont  Font;
  
  GiraffeSprite Crosshair;
  GiraffeSprite Power_Up;
  GiraffeSprite Power_Down;
  GiraffeSprite Floppy;
  GiraffeSprite KeyboardMode;
  GiraffeSprite PauseButton;

  SimulationMode   Mode        = SimulationMode.Three;
  bool             IsDirty     = true;
  string           Caption     = string.Empty;
  bool             PowerIsDown = false;
  bool             EjectIsDown = false;
  bool             IsAccessing = false;
  bool             IsKeyState  = false;
  
  public void Show()
  {
    IsDirty = true;
    gameObject.SetActive(true);
  }

  public void Hide()
  {
    gameObject.SetActive(false);
  }

  public void SetCaption(string newCaption)
  {
    if (newCaption != Caption)
    {
      Caption = newCaption;
      IsDirty = true;
    }
  }

  public void SetSimulationMode(SimulationMode newMode)
  {
    if (newMode != Mode)
    {
      Mode = newMode;
      IsDirty = true;
    }
  }
  
  public void SetPowerButtonIsDown(bool isDown)
  {
    if (isDown != PowerIsDown)
    {
      PowerIsDown = isDown;
      IsDirty = true;
    }
  }
  
  public void SetEjectButtonIsDown(bool isDown)
  {
    if (isDown != EjectIsDown)
    {
      EjectIsDown = isDown;
      IsDirty = true;
    }
  }

  public void SetFloppyAccess(bool isAccessing)
  {
    if (isAccessing != IsAccessing)
    {
      IsAccessing = isAccessing;
      IsDirty = true;
    }
  }
  
  public void SetKeyState(bool isKeyState)
  {
    if (isKeyState != IsKeyState)
    {
      IsKeyState = isKeyState;
      IsDirty = true;
    }
  }

  void Start()
  {
    Crosshair    = Layer.atlas.GetSprite("Crosshair");
    Floppy       = Layer.atlas.GetSprite("Button_Floppy");
    Power_Up     = Layer.atlas.GetSprite("Power_Up");
    Power_Down   = Layer.atlas.GetSprite("Power_Down");
    KeyboardMode = Layer.atlas.GetSprite("KeyboardMode");
    PauseButton  = Layer.atlas.GetSprite("Button_Pause");
    Draw3d();
  }
  
  void Update()
  {
    if (IsDirty)
    {
      if (Mode == SimulationMode.Three)
        Draw3d();
      else
        Draw2d();

      IsDirty = false;
    }

    if (Mode == SimulationMode.Two)
    {
      Check2d();
    }
  }

  void Draw3d()
  {
    int numQuads = 1;

    numQuads += Font.Estimate(Caption);
    
    if (IsAccessing)
      numQuads++;

    if (IsKeyState)
      numQuads++;

    int kScale = Layer.scale;

    Layer.Begin(numQuads);

    Font.AddTo(Layer, 25, 25, Caption);

    Layer.Add(Screen.width / 2 / kScale - Crosshair.width / 2, Screen.height / 2  / kScale - Crosshair.height / 2, Crosshair);

    if (IsAccessing)
    {
      Layer.Add(2, Screen.height / kScale - 2 - Floppy.height, Floppy);
    }
    
    if (IsKeyState)
    {
      Layer.Add(Screen.width / kScale - KeyboardMode.width - 2, Screen.height / kScale - 2 - KeyboardMode.height, KeyboardMode);
    }

    Layer.End();
  }

  void Draw2d()
  {
    int numQuads = 1;
    
    int kScale = Layer.scale;

    if (IsAccessing)
      numQuads++;
    
    Layer.Begin(numQuads);
    
    Layer.Add(kMenuButton_X0, kMenuButton_Y0, PauseButton);
    
    if (IsAccessing)
    {
      Layer.Add(2, Screen.height / kScale - 2 - Floppy.height, Floppy);
    }
    
    Layer.End();
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

    Vector2 mp = Input.mousePosition;
    int x = (int) mp.x, y = Screen.height - (int) mp.y;

    x /= 2;
    y /= 2;
    
    if (CheckMp(x, y, kMenuButton_X0, kMenuButton_Y0, kMenuButton_X1, kMenuButton_Y1))
    {
      DX8.TogglePaused();
      IsDirty = true;
      return;
    }
    
  }

}
