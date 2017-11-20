using UnityEngine;
using UnityEditor;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

namespace DX8
{
  public static class Menus
  {
    public static string ApiCsPath         = @"C:\dev\dx8\Source\DX8\Assets\Source\dx8_Api.cs";
    public static string Config            = @"C:\dev\dx8\Source\libDX8\dx8_Config.inc";
    public static string ApiPath           = @"C:\dev\dx8\Source\libDX8\dx8_Api.inc";
    public static string OpcodesPath       = @"C:\dev\dx8\Source\libDX8\dx8_Cpu_Opcodes.inc";
    public static string Registers         = @"C:\dev\dx8\Source\libDX8\dx8_Registers.inc";
    public static string Constants         = @"C:\dev\dx8\Source\libDX8\dx8_Constants.inc";
    public static string Interrupts        = @"C:\dev\dx8\Source\libDX8\dx8_Interrupts.inc";
    public static string Scancodes         = @"C:\dev\dx8\Source\libDX8\dx8_Scancodes.inc";
    public static string AsmInclude        = @"C:\dev\dx8\ROMS\include\";
    public static string OpcodesCsv        = @"C:\dev\dx8\Documentation\OpcodesAsm.csv";
    public static string OpcodesInc        = @"C:\dev\dx8\ROMS\dx8.inc";

    [MenuItem("DX8/Generate CSV")]
    public static void TestOpcodes()
    {
      List<OpcodeCompiler.Op> ops = OpcodeCompiler.GenerateOpcodes(OpcodesPath);

      System.IO.File.WriteAllText(OpcodesCsv, OpcodeCompiler.MakeCSV(ops));
      Debug.LogFormat("Wrote {0} opcodes to {1}", ops.Count, OpcodesCsv);
    }

    
    [MenuItem("DX8/Write FASM dx8.inc")]
    public static void MakeMacros()
    {
      List<OpcodeCompiler.Op> ops = OpcodeCompiler.GenerateOpcodes(OpcodesPath);
      Dictionary<string, int> registers = OpcodeCompiler.Generate_Registers(Config);
      Dictionary<string, int> constants = OpcodeCompiler.Generate_Constants(Config);
      Dictionary<string, KeyValuePair<int, string>> scancodes = OpcodeCompiler.Generate_Scancodes(Config);
      Dictionary<string, KeyValuePair<int, string>> interrupts = OpcodeCompiler.Generate_Interrupts(Config);

      System.IO.File.WriteAllText(OpcodesInc, OpcodeCompiler.MakeMacros(ops, registers, constants, interrupts, scancodes));
      Debug.LogFormat("Wrote {0} macros to {1}", ops.Count, OpcodesInc);
    }
    
    [MenuItem("DX8/Write C dx__???.inc")]
    public static void MakeRegisters()
    {
      Dictionary<string, int> registers = OpcodeCompiler.Generate_Registers(Config);
      Dictionary<string, int> constants = OpcodeCompiler.Generate_Constants(Config);
      Dictionary<string, KeyValuePair<int, string>> scancodes = OpcodeCompiler.Generate_Scancodes(Config);
      Dictionary<string, KeyValuePair<int, string>> interrupts = OpcodeCompiler.Generate_Interrupts(Config);

      System.IO.File.WriteAllText(Registers, OpcodeCompiler.MakeRegisters(registers));
      System.IO.File.WriteAllText(Constants, OpcodeCompiler.MakeConstants(constants));
      System.IO.File.WriteAllText(Interrupts, OpcodeCompiler.MakeInterrupts(interrupts));
      System.IO.File.WriteAllText(Scancodes, OpcodeCompiler.MakeScancodes(scancodes));

      Debug.Log("Wrote dx__??.inc");
    }
        static string ToLiteral(string input) {
        StringBuilder literal = new StringBuilder(input.Length + 2);
        foreach (var c in input) {
            switch (c) {
                case '\'': literal.Append(@"\'"); break;
                case '\"': literal.Append("\\\""); break;
                case '\\': literal.Append(@"\\"); break;
                case '\0': literal.Append(@"\0"); break;
                case '\a': literal.Append(@"\a"); break;
                case '\b': literal.Append(@"\b"); break;
                case '\f': literal.Append(@"\f"); break;
                case '\n': literal.Append(@"\n"); break;
                case '\r': literal.Append(@"\r"); break;
                case '\t': literal.Append(@"\t"); break;
                case '\v': literal.Append(@"\v"); break;
                default:
                    // ASCII printable character
                    if (c >= 0x20 && c <= 0x7e) {
                        literal.Append(c);
                    // As UTF16 escaped character
                    } else {
                        literal.Append(@"\u");
                        literal.Append(((int)c).ToString("x4"));
                    }
                    break;
            }
        }
        return literal.ToString();
    }

    [MenuItem("DX8/Scancodes to C string array")]
    public static void ScanCodesToCStringArray()
    {
      Dictionary<string, KeyValuePair<int, string>> scancodes = OpcodeCompiler.Generate_Scancodes(Config);
      StringBuilder sb = new StringBuilder();

      foreach(var sc in scancodes)
      {
        sb.AppendFormat("\"{0}\",", ToLiteral(sc.Value.Value));
        sb.AppendLine();
      }
      Debug.Log(sb.ToString());
    }
    
    [MenuItem("DX8/Scancodes to Assembly db array")]
    public static void ScanCodesToAssemblyDbArray()
    {
      Dictionary<string, KeyValuePair<int, string>> scancodes = OpcodeCompiler.Generate_Scancodes(Config);
      StringBuilder sb = new StringBuilder();

      foreach(var sc in scancodes)
      {
        char m = sc.Value.Value[0];
        int n = 0x7F;
        
        if (m != '^')
          n = (int) m;

        sb.AppendFormat("db ${0:X2} ; ${1:X2} {2}", n, sc.Value.Key, sc.Key);
        sb.AppendLine();
      }
      Debug.Log(sb.ToString());
    }

    [MenuItem("DX8/Decompile")]
    public static void Decompile()
    {
      List<OpcodeCompiler.Op> ops = OpcodeCompiler.GenerateOpcodes(OpcodesPath);

      string path = EditorUtility.OpenFilePanel("Open ROM file", @"C:\dev\dx8\ROMS", "bin");
      byte[] data = System.IO.File.ReadAllBytes(path);
      
      System.IO.File.WriteAllText(path + ".s", OpcodeCompiler.Decompile(ops, data));
    }
    
    [MenuItem("DX8/Generate Cs Api")]
    public static void GenerateApi()
    {
      Dictionary<string, KeyValuePair<int, string>> scancodes = OpcodeCompiler.Generate_Scancodes(Config);
      System.IO.File.WriteAllText(ApiCsPath, OpcodeCompiler.GenerateCsApi(ApiPath, scancodes));
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
      
      sb.AppendFormat("{0}_ADDR = {0}_DATA", name);
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
      List<byte[]> glyphs = new List<byte[]>(128);
      
      byte startCharacter = (byte) '!';
      
      for (int ch=0;ch < count;ch++)
      {
        byte[] d = new byte[8];
        int offset = 9 * ch;
        
        for(int j=0;j < 8;j++)
        {
          int line = 0;
          line |= (tex.GetPixel(offset + 1 + 0, 7 - j).r > 0.0) ? 1   : 0;
          line |= (tex.GetPixel(offset + 1 + 1, 7 - j).r > 0.0) ? 2   : 0;
          line |= (tex.GetPixel(offset + 1 + 2, 7 - j).r > 0.0) ? 4   : 0;
          line |= (tex.GetPixel(offset + 1 + 3, 7 - j).r > 0.0) ? 8   : 0;
          line |= (tex.GetPixel(offset + 1 + 4, 7 - j).r > 0.0) ? 16  : 0;
          line |= (tex.GetPixel(offset + 1 + 5, 7 - j).r > 0.0) ? 32  : 0;
          line |= (tex.GetPixel(offset + 1 + 6, 7 - j).r > 0.0) ? 64  : 0;
          line |= (tex.GetPixel(offset + 1 + 7, 7 - j).r > 0.0) ? 128 : 0;
          d[j] = (byte) line;
        }
        glyphs.Add(d);
      }

      int missing = 128 - 32 - count;
      for(int i=0;i < missing;i++)
      {
        glyphs.Add(new byte[8]);
      }
      
      Debug.Log(missing);

      string name = string.Format("FNT_{0}", System.IO.Path.GetFileNameWithoutExtension(path).ToUpper());
      
      System.Text.StringBuilder sb = new System.Text.StringBuilder(4096);
      
      sb.AppendFormat("{0}_DATA:", name);
      sb.AppendLine();
      int kk = 0;

      for(int jj=0;jj < 8;jj++)
      {
        sb.Append("    db");
        for(int ii=0;ii < glyphs.Count;ii++)
        {
          byte[] d = glyphs[ii];
          sb.AppendFormat(" ${0:X2}", d[jj]);
          if (ii < glyphs.Count - 1)
            sb.Append(',');
        }
        sb.AppendLine();
      }
      
      sb.AppendLine();

      int length = glyphs.Count * 8;
      
      sb.AppendFormat("{0}_SIZE = ${1:X4}", name, length);
      sb.AppendLine();

      System.IO.File.WriteAllText(path + ".s", sb.ToString());
      // System.IO.File.WriteAllBytes(path + ".raw", data);
    }

    
    [MenuItem("DX8/Create Program Disk from ROM")]
    public static void CreateProgramDiskFromRom()
    {
      string path = EditorUtility.OpenFilePanel("Open ROM file", @"C:\dev\dx8\ROMS", "bin");
      byte[] data = System.IO.File.ReadAllBytes(path);

      List<byte> fd = new List<byte>(163840);

      int nbTracks = data.Length / 1024;

      if (data.Length % 1024 > 0)
      {
        nbTracks++;
      }

      ushort address = 0x800;

      for(int i=0;i < nbTracks;i++)
      {
        fd.Add(0x01);                           // Copy to Lower address
        fd.Add((byte) (address & 0xFF));        // lo
        fd.Add((byte) ((address >> 8) & 0xFF)); // hi
      }

      fd.Add(0x03); // Reset

      int diff = 1024 - fd.Count;

      for(int i=0;i < diff;i++)
      {
        fd.Add(0x00);
      }

      fd.AddRange(data);

      // Padding.
      int pad = 163840 - fd.Count;
      for(int i=0;i < pad;i++)
        fd.Add(0x00);

      System.IO.File.WriteAllBytes(path + ".fd", fd.ToArray());
    }
    
    
    [MenuItem("DX8/Check PC")]
    public static void CheckPc()
    {
      string path = EditorUtility.OpenFilePanel("Open Decompiled ROM file", @"C:\dev\dx8\ROMS", "bin.s");
      const int BufferSize = 128;

      System.Collections.Generic.HashSet<ushort> addresses = new HashSet<ushort>();

      using (var fileStream = File.OpenRead(path))
        using (var streamReader = new StreamReader(fileStream, Encoding.UTF8, true, BufferSize)) {
          string line;
          while ((line = streamReader.ReadLine()) != null)
          {
            string valueStr = line.Substring(0, 4);

            ushort value;
            if (!System.UInt16.TryParse(valueStr, System.Globalization.NumberStyles.HexNumber, System.Globalization.CultureInfo.InvariantCulture, out value))
            {
              continue;
            }

            if ((value >= (ushort) 0x0300 && value <= (ushort) 0x0532) || value >= (ushort) 0xFFF8)
            {
              addresses.Add(value);
            }
          }
        }
        path = EditorUtility.OpenFilePanel("Open Log file", @"C:\dev\dx8\Source\DX8", "log");
      
        int count = 0;
        using (var fileStream = File.OpenRead(path))
        using (var streamReader = new StreamReader(fileStream, Encoding.UTF8, true, BufferSize)) {
          string line;
          while ((line = streamReader.ReadLine()) != null)
          {
            if (line[0] != '!')
              continue;
            string valueStr = line.Substring(3, 4);

            ushort value;
            if (!System.UInt16.TryParse(valueStr, System.Globalization.NumberStyles.HexNumber, System.Globalization.CultureInfo.InvariantCulture, out value))
            {
              continue;
            }
            count++;

            if (addresses.Contains(value) == false)
            {
              Debug.Log(line);
            }
          }
        }
        Debug.LogFormat("Checked {0}", count);
    }

  }
}
