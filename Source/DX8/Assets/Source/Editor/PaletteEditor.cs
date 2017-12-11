using UnityEngine;
using UnityEditor;
using System.Collections.Generic;
using System;

public class MyWindow : EditorWindow
{
  
    List<Color32> palette = new List<Color32>();
    string source;

    MyWindow()
    {
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(255,255,255,0));
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(0,0,0,0));
      palette.Add(new Color32(0,0,0,0));
      Rebuild();
    }

    // Add menu named "My Window" to the Window menu
    [MenuItem("DX8/Palette Editor")]
    static void Init()
    {
        // Get existing open window or if none, make a new one:
        MyWindow window = (MyWindow)EditorWindow.GetWindow(typeof(MyWindow));
        window.Show();
    }

    void OnGUI()
    {
        GUI.changed = false;
        EditorGUIUtility.labelWidth = 20;
        for(int i=0;i < palette.Count;i++)
        {
          palette[i] = EditorGUILayout.ColorField(string.Format("{0:X1}", i), palette[i]);
        }
        EditorGUIUtility.labelWidth = 0;

        if (GUI.changed)
        {
          Rebuild();
          GUI.changed = false;
        }

        source = EditorGUILayout.TextArea(source);
        if (GUILayout.Button("Load"))
        {
          Load();
        }
    }

    void Load()
    {
      palette.Clear();

      source = source.Replace("db $", "");
      source = source.Replace("\r\n", "").Trim();

      byte[] mem = new byte[24];
      for(int i=0;i < 24;i++)
      {
        string m = source.Substring(i*2, 2);
        mem[i] = (Byte) Convert.ToInt32(m, 16);
      }

      byte[] b = new byte[3];

      for(int i=0;i < 8;i+=2)
      {
        b[0] = mem[(i*3) + 0];
        b[1] = mem[(i*3) + 1];
        b[2] = mem[(i*3) + 2];

        Color32 r0 = new Color32(), r1 = new Color32();

        r0.r = (Byte) (16 * ((b[0] & 0xF0) >> 4));
        r0.g = (Byte) (16 * (b[0] & 0x0F));

        r0.b = (Byte) (16 * ((b[1] & 0xF0) >> 4));
        r1.r = (Byte) (16 * (b[1] & 0x0F));

        r1.g = (Byte) (16 * ((b[2] & 0xF0) >> 4));
        r1.b = (Byte) (16 * ((b[2] & 0x0F)));

        palette.Add(r0);
        palette.Add(r1);
      }

    }

    void Rebuild()
    {
      byte[] colours = new byte[24];
      int idx = 0;

      for(int i=0;i < palette.Count;i+=2)
      {
        Color32 c0 = palette[i + 0];
        Color32 c1 = palette[i + 1];

        // RG BR GB
        colours[idx++] = (byte) (((c0.r / 16) << 4) + ((c0.g / 16)));
        colours[idx++] = (byte) (((c0.b / 16) << 4) + ((c1.r / 16)));
        colours[idx++] = (byte) (((c1.g / 16) << 4) + ((c1.b / 16)));
       
      }

      System.Text.StringBuilder sb = new System.Text.StringBuilder(100);

      for(int i=0;i < 24;i++)
      {
        sb.AppendFormat("db ${0:X2}", colours[i]);
        sb.AppendLine();
      }

      source = sb.ToString();
    }

}