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

  }
}
