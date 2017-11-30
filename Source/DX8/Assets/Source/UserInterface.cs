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

  public const int kPowerButton_X0 = 32;
  public const int kPowerButton_Y0 = 0;
  public const int kPowerButton_W  = 32;
  public const int kPowerButton_H  = 16;

  public const int kPowerButton_X1 = kPowerButton_X0 + kPowerButton_W;
  public const int kPowerButton_Y1 = kPowerButton_Y0 + kPowerButton_H;
  
  public const int kEjectButton_X0 = 0;
  public const int kEjectButton_Y0 = 0;
  public const int kEjectButton_W  = 32;
  public const int kEjectButton_H  = 16;

  public const int kEjectButton_X1 = kEjectButton_X0 + kEjectButton_W;
  public const int kEjectButton_Y1 = kEjectButton_Y0 + kEjectButton_H;


  public DX8.dx8      DX8;
  public GiraffeLayer Layer;
  public GiraffeFont  Font;
  
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

  SimulationMode   Mode        = SimulationMode.Three;
  bool             IsDirty     = true;
  string           Caption     = string.Empty;
  bool             PowerIsDown = false;
  bool             EjectIsDown = false;
  bool             IsAccessing = false;
  
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

  void Start()
  {
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

    int kScale = Layer.scale;

    Layer.Begin(numQuads);

    Font.AddTo(Layer, 25, 25, Caption);

    Layer.Add(Screen.width / 2 / kScale - Crosshair.width / 2, Screen.height / 2  / kScale - Crosshair.height / 2, Crosshair);

    if (IsAccessing)
    {
      Layer.Add(0, Screen.height / kScale - Floppy.height, Floppy);
    }
    Layer.End();
  }

  void Draw2d()
  {
    int numQuads = 2; // Power/Eject Buttons
    
    int kScale = Layer.scale;

    if (IsAccessing)
      numQuads++;

    if (DX8.FloppySensor.IsEmpty == true)
    {
      foreach(var floppy in DX8.Floppys)
      {
        numQuads += 3;
        numQuads += Font.Estimate(floppy.Title);
      }
    }
    
    Layer.Begin(numQuads);
    
    Layer.Add(kPowerButton_X0, kPowerButton_Y0, PowerIsDown ? Power_Down : Power_Up);
    Layer.Add(kEjectButton_X0, kEjectButton_Y0, EjectIsDown ? Eject_Down : Eject_Up);
    
    if (IsAccessing)
    {
      Layer.Add(0, Screen.height / kScale - Floppy.height, Floppy);
    }
    if (DX8.FloppySensor.IsEmpty == true)
    {
      foreach(var floppy in DX8.Floppys)
      {
        int y = 16 + floppy.UI_Order * 13;
        int w = floppy.Title.Length * 9;
        Layer.Add(0, y, Button_Light);
        Layer.Add(1, y, w, 13, Button_Up);
        Layer.Add(1 + w, y, Button_Dark);
        Font.AddTo(Layer, 1, y + 2, floppy.Title);

        floppy.UI_X0 = 1;
        floppy.UI_Y0 = y;
        floppy.UI_X1 = 1 + w;
        floppy.UI_Y1 = y + 13;
      }
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
    
    if (CheckMp(x, y, kPowerButton_X0, kPowerButton_Y0, kPowerButton_X1, kPowerButton_Y1))
    {
      DX8.UI_Power();
      IsDirty = true;
      return;
    }
    
    if (CheckMp(x, y, kEjectButton_X0, kEjectButton_Y0, kEjectButton_X1, kEjectButton_Y1))
    {
      DX8.UI_WarpEject();
      IsDirty = true;
      return;
    }
    
    if (DX8.FloppySensor.IsEmpty == true)
    {
      foreach(var floppy in DX8.Floppys)
      {
        if (CheckMp(x, y, floppy.UI_X0, floppy.UI_Y0, floppy.UI_X1, floppy.UI_Y1))
        {
          floppy.WarpFloppy(DX8.FloppySensor);
          DX8.UI_InsertFloppy(floppy.Path);
          IsDirty = true;
          return;
        }
      }
    }

  }

}
