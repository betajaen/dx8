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

  SimulationMode   Mode        = SimulationMode.Three;
  bool             IsDirty     = true;
  string           Caption     = string.Empty;
  bool             PowerIsDown = false;
  bool             EjectIsDown = false;

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

  void Start()
  {
    Crosshair = Layer.atlas.GetSprite("Crosshair");
    Power_Up   = Layer.atlas.GetSprite("Power_Up");
    Power_Down = Layer.atlas.GetSprite("Power_Down");
    Eject_Up   = Layer.atlas.GetSprite("Eject_Up");
    Eject_Down = Layer.atlas.GetSprite("Eject_Down");
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
    }

    if (Mode == SimulationMode.Two)
    {
      Check2d();
    }
  }

  void Draw3d()
  {
    int fontLength = Font.Estimate(Caption);

    Layer.Begin(1 + fontLength);
    Font.AddTo(Layer, 25, 25, Caption);
    Layer.Add(Screen.width / 4 - Crosshair.width / 2, Screen.height / 4 - Crosshair.height / 2, "Crosshair");
    Layer.End();
  }

  void Draw2d()
  {
    Layer.Begin(2);
    
    Layer.Add(kPowerButton_X0, kPowerButton_Y0, PowerIsDown ? Power_Down : Power_Up);
    Layer.Add(kEjectButton_X0, kEjectButton_Y0, EjectIsDown ? Eject_Down : Eject_Up);

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
    }
    
    if (CheckMp(x, y, kEjectButton_X0, kEjectButton_Y0, kEjectButton_X1, kEjectButton_Y1))
    {
      DX8.UI_Eject();
    }

  }

}
