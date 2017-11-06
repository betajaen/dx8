using UnityEngine;
using UnityEditor;
using System.Collections.Generic;


namespace DX8
{
  public static class Menus
  {
    public static string OpcodesPath = @"C:\dev\dx8\Source\libDX8\dx8_Cpu_Opcodes.inc";
    public static string OpcodesCsv = @"C:\dev\dx8\Documentation\OpcodesAsm.csv";
    public static string OpcodesInc = @"C:\dev\dx8\ROMS\dx8.inc";

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

      System.IO.File.WriteAllText(OpcodesInc, OpcodeCompiler.MakeMacros(ops));
      Debug.LogFormat("Wrote {0} macros to {1}", ops.Count, OpcodesInc);
    }
  }
}