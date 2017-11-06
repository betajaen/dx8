using System;
using UnityEngine;
using System.Collections.Generic;

namespace DX8
{
  
  public class Assembler : MonoBehaviour
  {
    public int Offset = 0, MaxLines = 30;
    public List<ushort> Addresses = new List<ushort>();
    public List<byte>   Lines     = new List<byte>();
    public System.Text.StringBuilder CurrentLine = new System.Text.StringBuilder(1024);

    public void OnGUI()
    {
      int Yy = 0;
      int iMin = Mathf.Min(Offset, 0);
      int iMax = Mathf.Max(Offset + MaxLines, Lines.Count);

      for(int ii=iMin;ii < iMax;ii++)
      {
        
      }

    }
  }
  
}
