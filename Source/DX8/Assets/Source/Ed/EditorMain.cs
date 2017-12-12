using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EditorMain : MonoBehaviour
{
  public GiraffeLayer Layer;
  public GiraffeFont  Font;
  public Editor[]     Editors;
  public Editor              Current;
  
  Widgetry.Ui   Ui;

  private void Awake()
  {
    Ui = new Widgetry.Ui();
    Widgetry.Widget.White          = Layer.atlas.GetSprite("Giraffe/White");
    Widgetry.Widget.Button_Left    = Layer.atlas.GetSprite("Widgets_UpLeft");
    Widgetry.Widget.Button_Right   = Layer.atlas.GetSprite("Widgets_UpRight");
    Widgetry.Widget.Button_Middle  = Layer.atlas.GetSprite("Widgets_UpMiddle");
    Widgetry.Widget.Tool_Up        = Layer.atlas.GetSprite("Widgets_ToolUp");
    Widgetry.Widget.Tool_Down      = Layer.atlas.GetSprite("Widgets_ToolDown");
    Widgetry.Widget.Up             = Layer.atlas.GetSprite("Widgets_Up");
    Widgetry.Widget.Down           = Layer.atlas.GetSprite("Widgets_Down");
    Widgetry.Widget.Font           = Font;
    Widgetry.Widget.Layer          = Layer;
  }

  private void Start()
  {
    if (Current == null && Editors != null && Editors.Length != 0)
    {
      Ui.Clear();
      Current = Editors[0];
      Current.Setup(Ui);
    }
  }

  private void Update()
  {
    if (Ui.Dirty)
    {
      Layer.Begin(Ui.NumQuads);
      Ui.Draw();
      Layer.End();
    }
  }

}
