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
    public static string StepPath          = @"C:\dev\dx8\Source\libDX8\dx8_Cpu_Step.c";
    public static string Registers         = @"C:\dev\dx8\Source\libDX8\dx8_Registers.inc";
    public static string Constants         = @"C:\dev\dx8\Source\libDX8\dx8_Constants.inc";
    public static string Interrupts        = @"C:\dev\dx8\Source\libDX8\dx8_Interrupts.inc";
    public static string Scancodes         = @"C:\dev\dx8\Source\libDX8\dx8_Scancodes.inc";
    public static string TablesPath            = @"C:\dev\dx8\Source\libDX8\dx8_Cpu_Tables.inc";
    public static string AsmInclude        = @"C:\dev\dx8\ROMS\include\";
    public static string OpcodesCsv        = @"C:\dev\dx8\Documentation\OpcodesAsm.csv";
    public static string OpcodesInc        = @"C:\dev\dx8\ROMS\dx8.inc";
    public static string OpcodesFunctions  = @"C:\dev\dx8\Source\libDX8\";

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

    [MenuItem("DX8/Decompile (org $1400)")]
    public static void Decompile1400()
    {
      List<OpcodeCompiler.Op> ops = OpcodeCompiler.GenerateOpcodes(OpcodesPath);

      string path = EditorUtility.OpenFilePanel("Open ROM file", @"C:\dev\dx8\ROMS", "bin");
      byte[] data = System.IO.File.ReadAllBytes(path);
      
      System.IO.File.WriteAllText(path + ".s", OpcodeCompiler.Decompile(ops, data, 0x1400));
    }
    
    [MenuItem("DX8/Decompile (org $400)")]
    public static void Decompile400()
    {
      List<OpcodeCompiler.Op> ops = OpcodeCompiler.GenerateOpcodes(OpcodesPath);

      string path = EditorUtility.OpenFilePanel("Open ROM file", @"C:\dev\dx8\ROMS", "bin");
      byte[] data = System.IO.File.ReadAllBytes(path);
      
      System.IO.File.WriteAllText(path + ".s", OpcodeCompiler.Decompile(ops, data, 0x400));
    }

    [MenuItem("DX8/Generate Cs Api")]
    public static void GenerateApi()
    {
      Dictionary<string, KeyValuePair<int, string>> scancodes = OpcodeCompiler.Generate_Scancodes(Config);
      System.IO.File.WriteAllText(ApiCsPath, OpcodeCompiler.GenerateCsApi(ApiPath, scancodes));
    }

    [MenuItem("DX8/Generate Switch")]
    public static void GenerateSwitchStatement()
    {
      List<OpcodeCompiler.Op> ops = OpcodeCompiler.GenerateOpcodes(OpcodesPath);
      System.Text.StringBuilder opcodeSwitch = new System.Text.StringBuilder(16384);

      opcodeSwitch.AppendLine("#include \"dx8.h\"");
      opcodeSwitch.AppendLine("#include \"dx8_Cpu_Common.inc\"");
      opcodeSwitch.AppendLine("#include \"dx8_Cpu_Tables.inc\"");
      opcodeSwitch.AppendLine();
      
      string[] includes = System.IO.Directory.GetFiles(OpcodesFunctions, "dx8_Cpu_Op_*.inc");

      HashSet<string> functions = new HashSet<string>();

      // 
      foreach(var inc in includes)
      {
        var lines = System.IO.File.ReadAllLines(inc);
        foreach(var line in lines)
        {
          Match match = Regex.Match(line, @"inline\s+(\w+)\s+(.*)", RegexOptions.IgnoreCase);

          if (!match.Success)
            continue;
          
          string fn = string.Format("{0} {1}", match.Groups[1], match.Groups[2].Value.Trim(new [] {';'} )).Trim();

          functions.Add(fn);
        }
      }
      
      foreach(var fn in functions)
      {
        opcodeSwitch.AppendFormat("inline {0};", fn);
        opcodeSwitch.AppendLine();
      }

      opcodeSwitch.AppendLine();

      foreach(var inc in System.IO.Directory.GetFiles(OpcodesFunctions, "dx8_Cpu_Op_*.inc"))
      {
        opcodeSwitch.AppendFormat("#include \"{0}\"", System.IO.Path.GetFileName(inc));
        opcodeSwitch.AppendLine();
      }
      
      opcodeSwitch.AppendLine();

      opcodeSwitch.AppendLine("void Cpu_StepOnce()");
      opcodeSwitch.AppendLine("{");
      opcodeSwitch.AppendLine("  Opcode opcode = Mmu_Get(cpu.pc.w);");
      
      opcodeSwitch.AppendLine("#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1");
      opcodeSwitch.AppendFormat("      sDebugInstruction.opcode = opcode;");
      opcodeSwitch.AppendLine();
      opcodeSwitch.AppendFormat("      sDebugInstruction.pc = cpu.pc.w;");
      opcodeSwitch.AppendLine();
      opcodeSwitch.AppendFormat("      sDebugInstruction.context1Type = 0;");
      opcodeSwitch.AppendLine();
      opcodeSwitch.AppendFormat("      sDebugInstruction.context2Type = 0;");
      opcodeSwitch.AppendLine();
      opcodeSwitch.AppendLine("      sDebugInstruction.operand.w = 0;");
      opcodeSwitch.AppendLine("#endif");

      opcodeSwitch.AppendLine("  switch (opcode)");
      opcodeSwitch.AppendLine("  {");

      foreach (var op in ops)
      {
        opcodeSwitch.AppendFormat("    // ");
        op.ToAssemblerFormat(ref opcodeSwitch);
        opcodeSwitch.AppendLine();
        opcodeSwitch.AppendFormat("    case ");
        
        op.ToCEnumName(ref opcodeSwitch);
        opcodeSwitch.AppendFormat(" : // 0x{0:X2}", op.Index);
        opcodeSwitch.AppendLine();
        opcodeSwitch.AppendLine("    {");
        
        // m = m.Replace(

        if (op.Opcode == OpcodeCompiler.Opcode.Nop)
        {
          opcodeSwitch.AppendLine("#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1");
          opcodeSwitch.AppendFormat("      sDebugInstruction.length = {0};", op.Length);
          opcodeSwitch.AppendLine();
          opcodeSwitch.AppendLine("#endif");

          if (op.Index != 0)
          {
            opcodeSwitch.AppendLine("      Cpu_Halt(HALT_UNKNOWN_OPCODE);");
          }
        }
        else
        {
          opcodeSwitch.AppendLine("#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1");
          opcodeSwitch.AppendFormat("      sDebugInstruction.length = {0};", op.Length);
          opcodeSwitch.AppendLine();

          if (op.Length == 2)
          {
            opcodeSwitch.AppendLine("#endif");
            opcodeSwitch.AppendLine("      Byte imm  = Mmu_Get(cpu.pc.w + 1);");
            opcodeSwitch.AppendLine("#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1");
            opcodeSwitch.AppendLine("      sDebugInstruction.operand.lo = imm;");
            opcodeSwitch.AppendLine("#endif");
          }
          else if (op.Length == 3)
          {
            opcodeSwitch.AppendLine("#endif");
            opcodeSwitch.AppendLine("      Word imm = Mmu_GetWord(cpu.pc.w + 1);");
            opcodeSwitch.AppendLine("#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1");
            opcodeSwitch.AppendLine("      sDebugInstruction.operand.w = imm;");
            opcodeSwitch.AppendLine("#endif");
          }
          else
          {
            opcodeSwitch.AppendLine("#endif");
          }
        
          string m = op.Code.TrimStart(new char[] { '{' });
          m = m.TrimEnd(new char[] { '}', ')' });
          m = m.Trim();

          if (m.EndsWith(";") == false)
            m = m + ";";
        
          m = m.Replace("REG_IMM",     "imm");
          m = m.Replace("REG_BYTE",    "imm");
          m = m.Replace("REG_WORD",    "imm");
          m = m.Replace("REG_PC",      "cpu.pc.w");
          m = m.Replace("REG_A",       "cpu.a");
          m = m.Replace("REG_X",       "cpu.I.x");
          m = m.Replace("REG_Y",       "cpu.I.y");
          m = m.Replace("REG_I",       "cpu.I.I");
          m = m.Replace("REG_Z",       "cpu.J.z");
          m = m.Replace("REG_W",       "cpu.J.w");
          m = m.Replace("REG_J",       "cpu.J.J");
          m = m.Replace("FL_Z",        "cpu.flags.bZero");
          m = m.Replace("FL_G",        "cpu.flags.bGreater");
          m = m.Replace("FL_N",        "cpu.flags.bNegative");
          m = m.Replace("FL_C",        "cpu.flags.bCarry");
          m = m.Replace("Opf_Single",  "1");
          m = m.Replace("Opf_Byte",    "2");
          m = m.Replace("Opf_Word",    "3");
          m = m.Replace("Opf_Address", "3");

          opcodeSwitch.Append("      ");
          opcodeSwitch.AppendLine(m);
        }

        if (op.PcMod == OpcodeCompiler.PcMod.Length)
        {
          opcodeSwitch.AppendFormat("      cpu.pc.w += {0};", op.Length);
          opcodeSwitch.AppendLine();
        }
        
        opcodeSwitch.AppendLine("#if defined(DX8_DEBUG_INSTRUCTIONS) && DX8_DEBUG_INSTRUCTIONS == 1");
        opcodeSwitch.AppendLine("      Cpu_Debug_PushDebugInstruction();");
        opcodeSwitch.AppendLine("#endif");

        opcodeSwitch.AppendLine("    }");
        opcodeSwitch.AppendLine("    break;");
      }

      opcodeSwitch.AppendLine("  }");
      opcodeSwitch.AppendLine("}");
      
      System.IO.File.WriteAllText(StepPath, opcodeSwitch.ToString());

      Debug.Log("Wrote switch file to " + StepPath);
      
      StringBuilder tables = new StringBuilder();
      
      tables.AppendLine("const char* kOpStrs[] = {");

      foreach(var op in ops)
      {
        tables.AppendFormat("\"");
        op.ToAssemblerFormatName(ref tables);
        tables.AppendFormat("\",");
        tables.AppendLine();
      }

      tables.AppendLine("};");
      
      tables.AppendLine();

      tables.AppendLine("int Cpu_FormatInstruction(char* str, Byte opcode, Word imm)");
      tables.AppendLine("{");
      
      tables.AppendLine("    switch(opcode)");
      tables.AppendLine("    {");
      
      foreach(var op in ops)
      {
        tables.AppendFormat("      case {0}: ", op.Index);
        if (op.Length == 1)
        {
          tables.AppendFormat("return sprintf(str, \"");
          op.ToSprintfFormat(ref tables);
          tables.AppendLine("\");");
        }
        else
        {
          tables.AppendFormat("return sprintf(str, \"");
          op.ToSprintfFormat(ref tables);
          tables.AppendLine("\", imm);");
        }
      }
      
      tables.AppendLine("  }");
      tables.AppendLine("  return 0;");
      tables.AppendLine("}");
      
      tables.AppendLine();

      tables.AppendLine("typedef enum");
      tables.AppendLine("{");

      foreach(var op in ops)
      {
        tables.Append("  ");
        op.ToCEnumName(ref tables);
        tables.AppendFormat(" = 0x{0:X2},", op.Index);
        tables.AppendLine();
      }
      tables.AppendLine("  OP_COUNT");
      tables.AppendLine("} Opcode;");

      System.IO.File.WriteAllText(TablesPath, tables.ToString());

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
        address += 1024;
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

    [MenuItem("DX8/Reset Player Prefs")]
    public static void ResetPlayerPrefs()
    {
      PlayerPrefs.DeleteAll();
    }

  }
}
