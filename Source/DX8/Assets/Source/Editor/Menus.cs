using UnityEngine;
using UnityEditor;
using System.Collections.Generic;


namespace DX8
{
  public static class Menus
  {
    public static string ApiCsPath         = @"C:\dev\dx8\Source\DX8\Assets\Source\dx8_Api.cs";
    public static string ApiPath           = @"C:\dev\dx8\Source\libDX8\dx8_Api.inc";
    public static string OpcodesPath       = @"C:\dev\dx8\Source\libDX8\dx8_Cpu_Opcodes.inc";
    public static string MemoryConstants   = @"C:\dev\dx8\Source\libDX8\dx8_Memory_Addresses.inc";
    public static string Interrupts        = @"C:\dev\dx8\Source\libDX8\dx8_Interrupts.inc";
    public static string OpcodesCsv        = @"C:\dev\dx8\Documentation\OpcodesAsm.csv";
    public static string OpcodesInc        = @"C:\dev\dx8\ROMS\dx8.inc";

    [MenuItem("DX8/Generate CSV")]
    public static void TestOpcodes()
    {
      List<OpcodeCompiler.Op> ops = OpcodeCompiler.GenerateOpcodes(OpcodesPath);

      System.IO.File.WriteAllText(OpcodesCsv, OpcodeCompiler.MakeCSV(ops));
      Debug.LogFormat("Wrote {0} opcodes to {1}", ops.Count, OpcodesCsv);
    }

    
    [MenuItem("DX8/Generate Macros")]
    public static void MakeMacros()
    {
      List<OpcodeCompiler.Op> ops = OpcodeCompiler.GenerateOpcodes(OpcodesPath);
      Dictionary<string, int> constants = OpcodeCompiler.Generate_AddressConstants(MemoryConstants);
      Dictionary<string, KeyValuePair<int, string>> interrupts = OpcodeCompiler.Generate_Interrupts(Interrupts);

      System.IO.File.WriteAllText(OpcodesInc, OpcodeCompiler.MakeMacros(ops, constants, interrupts));
      Debug.LogFormat("Wrote {0} macros to {1}", ops.Count, OpcodesInc);
    }
    
    [MenuItem("DX8/Decompile")]
    public static void Decompile()
    {
      List<OpcodeCompiler.Op> ops = OpcodeCompiler.GenerateOpcodes(OpcodesPath);

      string path = EditorUtility.OpenFilePanel("Open ROM file", @"C:\dev\dx8\ROMS", "bin");
      byte[] data = System.IO.File.ReadAllBytes(path);
      
      System.IO.File.WriteAllText(path + ".s", OpcodeCompiler.Decompile(ops, data));
    }
    
    [MenuItem("DX8/Generate Api")]
    public static void GenerateApi()
    {
      System.IO.File.WriteAllText(ApiCsPath, OpcodeCompiler.GetApi(ApiPath));
    }

    [MenuItem("DX8/Convert PNG Image to 1-bit ROM")]
    public static void ConvertImage()
    {
      string path = EditorUtility.OpenFilePanel("Open PNG file", @"C:\dev\dx8\ROMS", "png");
      Texture2D tex = new Texture2D(2,2);
      ImageConversion.LoadImage(tex, System.IO.File.ReadAllBytes(path));

      int w  = tex.width;
      int h  = tex.height;

      byte[] data = new byte[(w * h) / 8];

      for(int i=0;i < w;i++)
      {
        for(int j=0;j < h;j++)
        {
          Color32 col = tex.GetPixel(i, tex.height - 1 - j);
          bool set = (col.r > 0 && col.g > 0 && col.b > 0);

          if (set)
          {
            int ij = (i + (j * w));
            data[ij >> 3] |= (byte) (1 << (ij&7));
          }
        }
      }

      string name = string.Format("IMG_{0}", System.IO.Path.GetFileNameWithoutExtension(path).ToUpper());

      
      System.Text.StringBuilder sb = new System.Text.StringBuilder(data.Length * 5 + 20);
      sb.AppendFormat("; {0}x{1}  {2} from {3}", tex.width, tex.height, name, path); 
      sb.AppendLine();
      sb.AppendFormat("; Size=${0:X4} {1}", data.Length, data.Length); 
      sb.AppendLine();

      sb.AppendFormat("{0}_DATA:", name);
      sb.AppendLine();
      sb.Append("    db ");
      int kk = 0;
      for(int ii=0;ii < data.Length;ii++)
      {
        sb.AppendFormat("${0:X2}", data[ii]);
        kk++;
        if (kk == 32)
        {
          if (ii + 1 != data.Length)
          {
            sb.AppendLine();
            sb.Append("    db ");
          }
          kk = 0;
        }
        else
        {
          if (ii + 1 != data.Length)
          {
            sb.Append(", ");
          }
        }
      }
      
      sb.AppendLine();
      sb.AppendLine();
      sb.AppendFormat("{0}_ADDR_LO = {0}_DATA and $FF", name);
      sb.AppendLine();
      
      sb.AppendFormat("{0}_ADDR_HI = {0}_DATA shr 8", name);
      sb.AppendLine();
      
      sb.AppendFormat("{0}_SIZE_LO = ${1:X2}", name, data.Length & 0xFF);
      sb.AppendLine();
      
      sb.AppendFormat("{0}_SIZE_HI = ${1:X2}", name, data.Length >> 8);
      sb.AppendLine();
      
      sb.AppendFormat("{0}_SIZE = ${1:X4}", name, data.Length);
      sb.AppendLine();

      System.IO.File.WriteAllText(path + ".s", sb.ToString());
      // System.IO.File.WriteAllBytes(path + ".raw", data);
    }
    
    [MenuItem("DX8/Convert PNG Image to 1-bit ROMxxx")]
    public static void ConvertImageXX()
    {
      string path = EditorUtility.OpenFilePanel("Open PNG file", @"C:\dev\dx8\ROMS", "png");
      Texture2D tex = new Texture2D(2,2);
      ImageConversion.LoadImage(tex, System.IO.File.ReadAllBytes(path));

      int w  = tex.width;
      int h  = tex.height;

      byte[] data = new byte[(w * h) / 8];

      for(int i=0;i < w;i++)
      {
        for(int j=0;j < h;j++)
        {
          Color32 col = tex.GetPixel(i, tex.height - 1 - j);
          bool set = (col.r > 0 && col.g > 0 && col.b > 0);

          if (set)
          {
            int ij = (i + (j * w));
            data[ij >> 3] |= (byte) (1 << (ij&7));
          }
        }
      }

      string name = string.Format("IMG_{0}", System.IO.Path.GetFileNameWithoutExtension(path).ToUpper());

      
      System.Text.StringBuilder sb = new System.Text.StringBuilder(data.Length * 5 + 20);
      sb.AppendFormat("; {0}x{1}  {2} from {3}", tex.width, tex.height, name, path); 
      sb.AppendLine();
      sb.AppendFormat("; Size=${0:X4} {1}", data.Length, data.Length); 
      sb.AppendLine();

      sb.AppendFormat("{0}_DATA:", name);
      sb.AppendLine();
      sb.Append("    db ");
      int kk = 0;
      for(int ii=0;ii < data.Length;ii++)
      {
        sb.AppendFormat("${0:X2}", data[ii]);
        kk++;
        if (kk == 32)
        {
          if (ii + 1 != data.Length)
          {
            sb.AppendLine();
            sb.Append("    db ");
          }
          kk = 0;
        }
        else
        {
          if (ii + 1 != data.Length)
          {
            sb.Append(", ");
          }
        }
      }
      
      sb.AppendLine();
      sb.AppendLine();
      sb.AppendFormat("{0}_ADDR_LO = {0}_DATA and $FF", name);
      sb.AppendLine();
      
      sb.AppendFormat("{0}_ADDR_HI = {0}_DATA shr 8", name);
      sb.AppendLine();
      
      sb.AppendFormat("{0}_SIZE_LO = ${1:X2}", name, data.Length & 0xFF);
      sb.AppendLine();
      
      sb.AppendFormat("{0}_SIZE_HI = ${1:X2}", name, data.Length >> 8);
      sb.AppendLine();
      
      sb.AppendFormat("{0}_SIZE = ${1:X4}", name, data.Length);
      sb.AppendLine();

      System.IO.File.WriteAllText(path + ".s", sb.ToString());
      // System.IO.File.WriteAllBytes(path + ".raw", data);
    }

    [MenuItem("DX8/Convert PNG Image to 1-bit ROM (RLE Compressed)")]
    public static void ConvertImageRLE()
    {
      string path = EditorUtility.OpenFilePanel("Open PNG file", @"C:\dev\dx8\ROMS", "png");
      Texture2D tex = new Texture2D(2,2);
      ImageConversion.LoadImage(tex, System.IO.File.ReadAllBytes(path));

      int w  = tex.width;
      int h  = tex.height;
      int i = 0;
      byte[] data = new byte[(w * h) / 8];

      for(;i < w;i++)
      {
        for(int j=0;j < h;j++)
        {
          Color32 col = tex.GetPixel(i, tex.height - 1 - j);
          bool set = (col.r > 0 && col.g > 0 && col.b > 0);

          if (set)
          {
            int ij = (i + (j * w));
            data[ij >> 3] |= (byte) (1 << (ij&7));
          }
        }
      }

      List<byte> rle = new List<byte>(data.Length * 2);
      int idx = 0, counter = 0;
      byte last = data[0];

      byte[] counters = new byte[256];
      i=0;
      int bit = ((byte) data[i >> 3] & (1 << (i&7)) & 1);
      for(;i < (data.Length * 8);i++)
      {
        int n = ((byte) data[i >> 3] & (1 << (i&7)) & 1);
        if (i != 0 && n != bit || counter == 126)
        {
          int b = (bit != 0 ? 0x80 : 0x00);
          b += counter;
          rle.Add((byte) b);
          counter = 0;
        }
        bit = n;
        counter++;
      }
      
      string name = string.Format("RLE_{0}", System.IO.Path.GetFileNameWithoutExtension(path).ToUpper());
      
      System.Text.StringBuilder sb = new System.Text.StringBuilder(rle.Count * 5 + 20);
      sb.AppendFormat("; {0}x{1}  {2} from {3}", tex.width, tex.height, name, path); 
      sb.AppendLine();
      sb.AppendFormat("; Size=${0:X4} {1}", rle.Count, rle.Count); 
      sb.AppendLine();

      sb.AppendFormat("{0}_DATA:", name);
      sb.AppendLine();
      sb.Append("    db ");
      int kk = 0;
      for(int ii=0;ii < rle.Count;ii++)
      {
        sb.AppendFormat("${0:X2}", rle[ii]);
        kk++;
        if (kk == 32)
        {
          if (ii + 1 != rle.Count)
          {
            sb.AppendLine();
            sb.Append("    db ");
          }
          kk = 0;
        }
        else
        {
          if (ii + 1 != rle.Count)
          {
            sb.Append(", ");
          }
        }
      }
      
      sb.AppendLine();
      sb.AppendLine();
      sb.AppendFormat("{0}_ADDR_LO = {0}_DATA and $FF", name);
      sb.AppendLine();
      
      sb.AppendFormat("{0}_ADDR_HI = {0}_DATA shr 8", name);
      sb.AppendLine();
      
      sb.AppendFormat("{0}_SIZE_LO = ${1:X2}", name, rle.Count & 0xFF);
      sb.AppendLine();
      
      sb.AppendFormat("{0}_SIZE_HI = ${1:X2}", name, rle.Count >> 8);
      sb.AppendLine();
      
      sb.AppendFormat("{0}_SIZE = ${1:X4}", name, rle.Count);
      sb.AppendLine();

      System.IO.File.WriteAllText(path + ".s", sb.ToString());
      // System.IO.File.WriteAllBytes(path + ".raw", data);
    }
    
    [MenuItem("DX8/Convert 8x8 Gfx Font Image to 1-bit ROM")]
    public static void ConvertFont()
    {
      string path = EditorUtility.OpenFilePanel("Open PNG file", @"C:\dev\dx8\ROMS", "png");
      Texture2D tex = new Texture2D(2,2);
      ImageConversion.LoadImage(tex, System.IO.File.ReadAllBytes(path));

      int w  = tex.width;
      int h  = tex.height;
      int count = 91;
      List<byte[]> glyphs = new List<byte[]>(count);
      
      for (int ch=0;ch < count;ch++)
      {
        byte[] d = new byte[8];
        int offset = 9 * ch;
        
        for(int j=0;j < 8;j++)
        {
          int line = 0;
          line |= (tex.GetPixel(offset + 1 + 0, 1 + j).r > 0.0) ? 1   : 0;
          line |= (tex.GetPixel(offset + 1 + 1, 1 + j).r > 0.0) ? 2   : 0;
          line |= (tex.GetPixel(offset + 1 + 2, 1 + j).r > 0.0) ? 4   : 0;
          line |= (tex.GetPixel(offset + 1 + 3, 1 + j).r > 0.0) ? 8   : 0;
          line |= (tex.GetPixel(offset + 1 + 4, 1 + j).r > 0.0) ? 16  : 0;
          line |= (tex.GetPixel(offset + 1 + 5, 1 + j).r > 0.0) ? 32  : 0;
          line |= (tex.GetPixel(offset + 1 + 6, 1 + j).r > 0.0) ? 64  : 0;
          line |= (tex.GetPixel(offset + 1 + 7, 1 + j).r > 0.0) ? 128 : 0;
          d[j] = (byte) line;
        }
        glyphs.Add(d);
      }
      

      string name = string.Format("FNT_{0}", System.IO.Path.GetFileNameWithoutExtension(path).ToUpper());
      
      System.Text.StringBuilder sb = new System.Text.StringBuilder(4096);
      
      sb.AppendFormat("{0}_DATA:", name);
      sb.AppendLine();
      int kk = 0;
      for(int ii=0;ii < count;ii++)
      {
        
        sb.Append("    db");

        byte[] d = glyphs[ii];

        sb.AppendFormat(" ${0:X2},", d[0]);
        sb.AppendFormat(" ${0:X2},", d[1]);
        sb.AppendFormat(" ${0:X2},", d[2]);
        sb.AppendFormat(" ${0:X2},", d[3]);
        sb.AppendFormat(" ${0:X2},", d[4]);
        sb.AppendFormat(" ${0:X2},", d[5]);
        sb.AppendFormat(" ${0:X2},", d[6]);
        sb.AppendFormat(" ${0:X2}", d[7]);
        
        sb.AppendLine();
      }
      
      System.IO.File.WriteAllText(path + ".s", sb.ToString());
      // System.IO.File.WriteAllBytes(path + ".raw", data);
    }
  }
}
