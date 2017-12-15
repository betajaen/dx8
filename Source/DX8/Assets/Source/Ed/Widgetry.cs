using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Widgetry
{

  public class Ui
  {
    Dictionary<int, Widget> widgets;
    public bool Dirty = false;

    public Ui()
    {
      widgets = new Dictionary<int, Widget>(8);
    }

    public void Clear()
    {
      widgets.Clear();
      Dirty = true;
    }

    public void Remove(int name)
    {
      widgets.Remove(name);
      Dirty = true;
    }

    public void AddButton(int name, int x, int y, int w, string text)
    {
      Button button = new Button();
      button.x0 = x;
      button.y0 = y;
      button.tw = text.Length * 8;
      button.x1 = x + w;
      button.y1 = y + Widget.Button_Left.height;
      button.text = text;
      button.estimation = button.Estimate();
      widgets.Add(name, button);
      Dirty = true;
    }
    
    public void AddTool(int name, int x, int y, string icon)
    {
      Tool tool = new Tool();
      tool.x0 = x;
      tool.y0 = y;
      tool.tw = 0;
      tool.x1 = x + 23;
      tool.y1 = y + 23;
      tool.icon = Widget.Layer.atlas.GetSprite(icon);
      tool.estimation = tool.Estimate();
      widgets.Add(name, tool);
      Dirty = true;
    }

    public void AddPanel(int name, int x, int y, int w, int h, byte r, byte g, byte b)
    {
      Panel panel = new Panel();
      panel.colour = new Color32(r,g,b,0xFF);
      panel.x0 = x;
      panel.y0 = y;
      panel.tw = 0;
      panel.x1 = x + w;
      panel.y1 = y + h;
      panel.estimation = panel.Estimate();
      widgets.Add(name, panel);
      Dirty = true;
    }
    
    public void AddSpriteButton(int name, int x, int y, string spriteName)
    {
      GiraffeSprite sprite = Widget.Layer.atlas.GetSprite(spriteName);
      SpriteButton spriteButton = new SpriteButton();
      spriteButton.x0 = x;
      spriteButton.y0 = y;
      spriteButton.tw = sprite.width;
      spriteButton.x1 = x + sprite.width;
      spriteButton.y1 = y + sprite.height;
      spriteButton.sprite = sprite;
      spriteButton.estimation = spriteButton.Estimate();
      widgets.Add(name, spriteButton);
      Dirty = true;
    }

    public void AddLabel(int name, int x, int y, string text)
    {
      Label label = new Label();
      label.x0 = x;
      label.y0 = y;
      label.tw = text.Length * 8;
      label.x1 = x + label.tw;
      label.y1 = y + 8;
      label.text = text;
      label.estimation = label.Estimate();
      widgets.Add(name, label);
      Dirty = true;
    }

    public void SetText(int name, string text)
    {
      Widget widget;
      if (widgets.TryGetValue(name, out widget))
      {
        Dirty = true;
        if (widget is Button)
        {
          Button button = (Button) widget;
          button.text = text;
          button.tw = text.Length * 8;
          button.x1 = button.x0 + Widget.Button_Left.width + Widget.Button_Right.width + button.tw;
        }
        else if (widget is Label)
        {
          Label label = (Label) widget;
          label.text = text;
          label.tw = text.Length * 8;
          label.x1 = label.x0 + label.tw;
        }
      }
    }
    
    public int  Test(int x, int y)
    {
      int id = 0;
      foreach(var widget in widgets)
      {
        if (widget.Value.Test(x, y))
        {
          Dirty = true;
          id = Mathf.Max(id, widget.Key);
        }
      }
      
      return id;
    }

    int estimation;

    public int NumQuads
    {
      get
      {
        if (Dirty)
          Estimate();
        return estimation;
      }
    }

    public void Estimate()
    {
      Dirty = false;
      estimation = 0;

      foreach(var widget in widgets)
        estimation += widget.Value.Estimate();
    }

    public void Draw()
    {
      foreach(var widget in widgets)
        widget.Value.Draw();
    }

  }

  public abstract class Widget
  {
    public static GiraffeFont   Font;
    public static GiraffeSprite White;
    public static GiraffeSprite Button_Left;
    public static GiraffeSprite Button_Right;
    public static GiraffeSprite Button_Middle;
    public static GiraffeSprite Tool_Up;
    public static GiraffeSprite Tool_Down;
    public static GiraffeSprite Up;
    public static GiraffeSprite Down;
    public static GiraffeLayer  Layer;
    public static Color32 WhiteColour = new Color32(0xFF, 0xFF, 0xFF, 0xFF);
    public static Color32 BlackColour = new Color32(0x00, 0x00, 0x00, 0xFF);

    public int    x0, y0, x1, y1, tw;
    public string text;
    public int    estimation;

    public abstract void Draw();
    public abstract int  Estimate();

    public bool Test(int x, int y)
    {
      return (x >= x0 && x <= x1 && y >= y0 && y <= y1);
    }
  }

  public class Button : Widget
  {
    public override void Draw()
    {
      Layer.SetColour(WhiteColour);
      Layer.Add(x0, y0, Button_Left);
      Layer.Add(x0 + 2, y0, x1 - x0 - 4, 16, Button_Middle);
      Layer.SetColour(BlackColour);
      Font.AddTo(Layer, x0 + 2, y0 + 4, text);
      Layer.SetColour(WhiteColour);
      Layer.Add(x1 - 2, y0, Button_Right);
    }

    public override int Estimate()
    {
      return 3 + Widget.Font.Estimate(text);
    }
  }
  
  public class Tool : Widget
  {
    public GiraffeSprite icon;

    public override void Draw()
    {
      Layer.SetColour(WhiteColour);
      Layer.Add(x0, y0, Tool_Up);
      Layer.SetColour(BlackColour);
      Layer.Add(x0 + 1, y0 + 1, icon);
      Layer.SetColour(WhiteColour);
    }

    public override int Estimate()
    {
      return 2;
    }
  }

  public class Label : Widget
  {
    public override void Draw()
    {
      Font.AddTo(Layer, x0, y0, text);
    }

    public override int Estimate()
    {
      return Widget.Font.Estimate(text);
    }
  }

  public class Panel : Widget
  {
    public Color32 colour;

    public override void Draw()
    {
      Layer.SetColour(colour);
      Layer.Add(x0, y0, x1 - x0, y1 - y0, Widget.White);
      Layer.SetColour(WhiteColour);
    }

    public override int Estimate()
    {
      return 1;
    }
  }

  public class SpriteButton : Widget
  {
    public GiraffeSprite sprite;
    
    public override void Draw()
    {
      Layer.SetColour(WhiteColour);
      Layer.Add(x0, y0, sprite);
    }

    public override int Estimate()
    {
      return 1;
    }
  }

}
