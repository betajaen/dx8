using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;
using UnityEngine;

namespace DX8
{
  public class OpcodeCompiler
  {
    public static Dictionary<string, int> AddressRanges = new Dictionary<string, int> {
      {"Program", 0x0000},
      {"Chip",    0x4000},
      {"Shared",  0x8000},
      {"Gpu",     0x5000},
      {"Sfx",     0x6000},
      {"Io",      0x7000},
    };

    public enum Opcode
    {
      Nop,
      Push,
      Pop,
      PushF,
      PopF,
      PushA,
      PopA,
      Load,
      Store,
      Call,
      Return,
      Set,
      Add,
      Adc,
      Sub,
      Mul,
      Inc,
      Dec,
      And,
      Or,
      Xor,
      Not,
      ShiftLeft,
      ShiftRight,
      RollLeft,
      RollRight,
      Cmp,
      CmpBit,
      Jmp,
      JmpEq,
      JmpNeq,
      JmpGt,
      JmpLt,
      JmpZ,
      Int,
      Resume,
      Clc,
      Sec,
      COUNT
    }

    public static String[] OpcodeAsm = new String[(int) Opcode.COUNT] {
      "nop",
      "push",
      "pop",
      "push.f",
      "pop.f",
      "push.a",
      "pop.a",
      "load",
      "store",
      "call",
      "return",
      "set",
      "add",
      "adc",
      "sub",
      "mul",
      "inc",
      "dec",
      "and",
      "or",
      "xor",
      "not",
      "shl",
      "shr",
      "rol",
      "ror",
      "cmp",
      "cmpbit",
      "jmp",
      "jmp.eq",
      "jmp.neq",
      "jmp.gt",
      "jmp.lt",
      "jmp.z",
      "int",
      "resume",
      "sec",
      "clc"
    };

    public enum Operand
    {
      None,
      Byte,
      Address,
      X,
      Y,
      Z,
      W,
      A,
      COUNT
    }

    public static String[] OperandAsm = new String[(int) Operand.COUNT] {
      "",
      "$00",
      "$0000",
      "x",
      "y",
      "z",
      "w",
      "a"
    };

    public struct Op
    {
      public int Index;
      public Opcode Opcode;
      public Operand Operand1;
      public Operand Operand2;
      public int Length;

      public Op(int idx)
      {
        Index = idx;
        Opcode = Opcode.Nop;
        Operand1 = Operand.None;
        Operand2 = Operand.None;
        Length = 1;
      }

      public Op(int idx, Opcode opcode, Operand operand1, Operand operand2, int length)
      {
        Index = idx;
        Opcode = opcode;
        Operand1 = operand1;
        Operand2 = operand2;
        Length = length;
      }

      static System.Text.StringBuilder sTemp = new System.Text.StringBuilder(32);

      public String GetAssemblerFormat()
      {
        sTemp.Length = 0;
        ToAssemblerFormat(ref sTemp);
        return sTemp.ToString();
      }
      
      public void ToAssemblerFormat(ref System.Text.StringBuilder sb)
      {
        sb.Append(OpcodeCompiler.OpcodeAsm[(int) Opcode]);

        if (Operand1 != Operand.None)
        {
          sb.Append(' ');
          sb.Append(OperandAsm[(int) Operand1]);

          if (Operand2 != Operand.None)
          {
            if (Opcode == Opcode.Jmp && Operand2 == Operand.Address)
              sb.Append('+');
            else
              sb.Append(',');
            sb.Append(OperandAsm[(int) Operand2]);
          }
        }
      }

      internal void ToAssemblerFormat(ref StringBuilder sb, Byte lo, Byte hi)
      {
        sb.Append(OpcodeCompiler.OpcodeAsm[(int) Opcode]);

        if (Operand1 != Operand.None)
        {
          sb.Append(' ');
          if (Operand1 == Operand.Byte)
            sb.AppendFormat("${0:X2}", lo);
          else if (Operand1 == Operand.Address)
            sb.AppendFormat("${0:X4}", lo | (hi << 8));
          else
            sb.Append(OperandAsm[(int) Operand1]);

          if (Operand2 != Operand.None)
          {
            if (Opcode == Opcode.Jmp && Operand2 == Operand.Address)
              sb.Append('+');
            else
              sb.Append(',');
            
            sb.Append(' ');

            if (Operand2 == Operand.Byte)
              sb.AppendFormat("${0:X2}", lo);
            else if (Operand2 == Operand.Address)
              sb.AppendFormat("${0:X4}", lo | (hi << 8));
            else
              sb.Append(OperandAsm[(int) Operand2]);
          }
        }
      }
    }

    public static String GetApi(String apiPath)
    {
      String[] lines = System.IO.File.ReadAllLines(apiPath);
      int lineLength = lines.Length;
      StringBuilder sb = new StringBuilder();
      sb.AppendLine("// Automatically generated file");
      sb.AppendLine("namespace DX8 { class Api { ");
      for (int ii=0;ii < lineLength;ii++)
      {
        Match match = Regex.Match(lines[ii], @"API_NAME\(\s*(\w+)\s*,\s*(\d+)\)", RegexOptions.IgnoreCase);

        if (match.Success)
        {
            string name     = match.Groups[1].Value;
            string valueStr = match.Groups[2].Value;
            sb.AppendFormat("  public const int {0} = {1};", name, valueStr);
            sb.AppendLine();
        }
      }
      sb.AppendLine("}}");
      return sb.ToString();
    }

    static bool LineStartsWith_OP(String line)
    {
      int length = line.Length;
      for(int ii=0;ii < length;ii++)
      {
        if (line[ii] == 'O' && ii < length - 1 && line[ii + 1] == 'P')
          return true;
      }
      return false;
    }
    
    public static String MakeCSV(List<Op> opcodes)
    {
      System.Text.StringBuilder sb = new System.Text.StringBuilder(4096);
      
      int jj = 0;
      int kk = 0;
      
      sb.Append(',');

      for(int ii = 0; ii < 16; ii++)
      {
        sb.AppendFormat("x{0:X0},", ii);
      }
      
      sb.AppendLine();

      sb.AppendFormat("{0:X0}x,", kk++); 

      for(int ii = 0; ii < 256; ii++)
      {
        Op op = opcodes[ii];

        sb.Append('\"');
        op.ToAssemblerFormat(ref sb);
        sb.Append('\"');
        sb.Append(',');

        jj++;
        if (jj == 16)
        {
          sb.AppendLine();
          if (kk < 16)
            sb.AppendFormat("{0:X0}x,", kk++); 
          jj = 0;
        }
      }
      return sb.ToString();
    }

    public static void DbForOpCode(ref System.Text.StringBuilder sb, Op op, int indent)
    {
      sb.Append(indent == 1 ? "  " : "    ");
      sb.AppendFormat("; [${0:X2}] {1}", op.Index, op.GetAssemblerFormat());
      sb.AppendLine();

      sb.Append(indent == 1 ? "  " : "    ");
      sb.AppendFormat("db ${0:X2}", op.Index);
      sb.AppendLine();
      
      if (op.Operand1 == Operand.Address || op.Operand1 == Operand.Byte)
      {
        sb.Append(indent == 1 ? "  " : "    ");
        sb.AppendFormat(op.Length == 2 ? "db A" : "dw A");
        sb.AppendLine();
      }

      if (op.Operand2 == Operand.Address || op.Operand2 == Operand.Byte)
      {
        sb.Append(indent == 1 ? "  " : "    ");
        sb.AppendFormat(op.Length == 2 ? "db B" : "dw B");
        sb.AppendLine();
      }
      
    }

    public static void ConditionForOpcode(ref System.Text.StringBuilder sb, Op op)
    {
      bool op1 = false;
      switch(op.Operand1)
      {
        case Operand.X: sb.Append("A eq x"); op1 = true; break;
        case Operand.Y: sb.Append("A eq y"); op1 = true; break;
        case Operand.Z: sb.Append("A eq z"); op1 = true; break;
        case Operand.W: sb.Append("A eq w"); op1 = true; break;
        case Operand.A: sb.Append("A eq a"); op1 = true; break;
      }
      
      switch(op.Operand2)
      {
        case Operand.X: if (op1) { sb.Append(" & "); } sb.Append("B eq x"); break;
        case Operand.Y: if (op1) { sb.Append(" & "); } sb.Append("B eq y"); break;
        case Operand.Z: if (op1) { sb.Append(" & "); } sb.Append("B eq z"); break;
        case Operand.W: if (op1) { sb.Append(" & "); } sb.Append("B eq w"); break;
        case Operand.A: if (op1) { sb.Append(" & "); } sb.Append("B eq a"); break;
      }
      
      
    }

    public static String MakeMacros(List<Op> opcodes, Dictionary<string, int> constants, Dictionary<string, KeyValuePair<int, string>> interrupts)
    {
      System.Text.StringBuilder sb = new System.Text.StringBuilder(4096);
      
      // Constants

      sb.AppendLine("; Common Addresses and Registers");

      foreach(var constant in constants)
      {
        sb.AppendFormat("{0} = ${1:X4}", constant.Key, constant.Value);
        sb.AppendLine();
      }
      
      sb.AppendLine();
      
      // Interrupts
      
      sb.AppendLine("; Interrupts commands (int $01)");

      foreach(var interrupt in interrupts)
      {
        sb.AppendFormat("{0} = ${1:X2}    ; {2}", interrupt.Key, interrupt.Value.Key, interrupt.Value.Value);
        sb.AppendLine();
      }
      
      sb.AppendLine();
      
      // Op Constants
      
      sb.AppendLine("; Interrupts commands (int $01)");

      foreach(var interrupt in interrupts)
      {
        sb.AppendFormat("{0} = ${1:X2}    ; {2}", interrupt.Key, interrupt.Value.Key, interrupt.Value.Value);
        sb.AppendLine();
      }
      
      sb.AppendLine();
      
      // Ops
      #if PROBABLY_NOT
      sb.AppendLine("; X8 Processor Instructions");
      
      for(int ii=0;ii < opcodes.Count;ii++)
      {
        Op op = opcodes[ii];
        sb.AppendFormat("OP_{0}", op.Opcode.ToString().ToUpper());

        if (op.Operand1 != Operand.None)
        {
          sb.AppendFormat("{0}", op.Operand1);
        }
        
        if (op.Operand2 != Operand.None)
        {
          sb.AppendFormat("{0}", op.Operand2);
        }

        sb.AppendFormat(" = ${0:X2}", ii);
        
        sb.AppendLine();
      }
      #endif

      // Macros
      
      sb.AppendLine("; X8 Processor Instructions");
      
      List<string> done = new List<string>(256);

      String lastName = string.Empty;

      Opcode[] allOpcodes = (Opcode[]) Enum.GetValues(typeof(Opcode));

      for(int ii=0;ii < (int) Opcode.COUNT;ii++)
      {
        List<Op> ops = new List<Op>(256);
        Opcode opcode = allOpcodes[ii];
        for(int jj=0;jj < opcodes.Count;jj++)
        {
          Op op = opcodes[jj];
          if (op.Opcode == opcode)
          {
            ops.Add(op);
          }
        }

        string name = OpcodeAsm[(int) opcode];

        if (ops.Count == 0)
          continue;
        
        sb.AppendFormat("macro {0} [A, B] {{", name);
        sb.AppendLine();
        
        if (ops.Count == 1 || opcode == Opcode.Nop)
        {
          DbForOpCode(ref sb, ops[0], 1);
        }
        else
        {
          Op elseOp = new Op(0);
          int kk=0;
          for(int jj=0;jj < ops.Count;jj++)
          {
            Op op = ops[jj];
            
            if (op.Operand1 == Operand.Address && op.Operand2 == Operand.None)
            {
              elseOp = op;
              continue;
            }

            if (kk == 0)
              sb.Append("  if ");
            else 
              sb.Append("  else if ");
            kk++;

            // Condition here.
            ConditionForOpcode(ref sb, op);
            sb.AppendLine();
            DbForOpCode(ref sb, ops[jj], 2);
          }

          if (elseOp.Opcode != Opcode.Nop)
          {
            sb.Append("  else");
            sb.AppendLine();
            DbForOpCode(ref sb, elseOp, 2);
          }
          else
          {
            sb.Append("  else");
            sb.AppendLine();
            sb.Append("    error SyntaxError");
            sb.AppendLine();
          }

          sb.AppendLine("  end if");
        }
        
        sb.AppendLine("}");
        
      }

      
      return sb.ToString();
    }

    public static String Decompile(List<Op> ops, Byte[] data)
    {
      int len = data.Length;

      System.Text.StringBuilder sb = new System.Text.StringBuilder(len * 30);
      StringBuilder temp = new StringBuilder(100);
      
      for(int ii=0;ii < 16;ii+=2)
      {
        byte   lo = 0, hi = 0;
        
        lo = data[ii+0];
        hi = data[ii+1];
        
        sb.AppendFormat("Interrupt[${0:X2}] = ${1:X2}{2:X2}", ii / 2, hi, lo);
        sb.AppendLine();
      }
      
      sb.AppendLine();

      for(int ii=16;ii < len;)
      {
        byte   lo = 0, hi = 0;

        ushort address = (ushort) ii;

        Op op = ops[data[ii]];
        ii++;
        if (op.Length == 2)
        {
          lo = data[ii];
          ii++;
        }
        else if (op.Length == 3)
        {
          lo = data[ii];
          ii++;
          hi = data[ii];
          ii++;
        }
        sb.AppendFormat("{0:X4}: ", address);

        temp.Length = 0;
        op.ToAssemblerFormat(ref temp, lo, hi);
        
        sb.Append(temp.ToString());

        for(int i=0;i < 20 - temp.Length;i++)
          sb.Append(' ');

        if (op.Length == 1)
        {
          sb.AppendFormat("; {0:X2}", op.Index);
        }
        else if (op.Length == 2)
        {
          sb.AppendFormat("; {0:X2} {1:X2}", op.Index, lo);
        }
        else if (op.Length == 3)
        {
          sb.AppendFormat("; {0:X2} {1:X2} {2:X2}", op.Index, lo, hi);
        }

        sb.AppendLine();
      }

      return sb.ToString();
    }
    
    public static List<Op> GenerateOpcodes(String path)
    {
      List<Op> ops = new List<Op>(256);
      for(int ii = 0; ii < 256; ii++)
        ops.Add(new Op(ii));
      

      String[] lines = System.IO.File.ReadAllLines(path);
      int nextIdx = 0;
      for(int ii=0;ii < lines.Length;ii++)
      {
        String line = lines[ii];
        if (LineStartsWith_OP(line) == false)
          continue;
        
        Match match = Regex.Match(line, @"OP\(\s*(\w+)\s*,\s*(\w+)\s*,\s*Opf_(\w+)\s*,\s*(\d)", RegexOptions.IgnoreCase);

        if (match.Success)
        {
            string name     = match.Groups[1].Value;
            string operands = match.Groups[2].Value;
            string format   = match.Groups[3].Value;

            int    idx = nextIdx++;
            Opcode op = (Opcode) Enum.Parse(typeof(Opcode), name);
            Operand operand1 = Operand.None, operand2 = Operand.None;
            int    length = 1;

            if (operands.Length == 1)
            {
              switch(operands[0])
              {
                case 'x': operand1 = Operand.X; break;
                case 'y': operand1 = Operand.Y; break;
                case 'z': operand1 = Operand.Z; break;
                case 'w': operand1 = Operand.W; break;
                case 'a': operand1 = Operand.A; break;
                case 'A': operand1 = Operand.Address; break;
                case 'B': operand1 = Operand.Byte; break;

              }
            }
            else if (operands.Length == 2)
            {
              switch(operands[0])
              {
                case 'x': operand1 = Operand.X; break;
                case 'y': operand1 = Operand.Y; break;
                case 'z': operand1 = Operand.Z; break;
                case 'w': operand1 = Operand.W; break;
                case 'a': operand1 = Operand.A; break;
                case 'A': operand1 = Operand.Address; break;
                case 'B': operand1 = Operand.Byte; break;
              }
              switch(operands[1])
              {
                case 'x': operand2 = Operand.X; break;
                case 'y': operand2 = Operand.Y; break;
                case 'z': operand2 = Operand.Z; break;
                case 'w': operand2 = Operand.W; break;
                case 'a': operand2 = Operand.A; break;
                case 'A': operand2 = Operand.Address; break;
                case 'B': operand2 = Operand.Byte; break;
              }
            }

            if (format == "Address")
            {
              length = 3;
            }
            else if (format == "Byte")
            {
              length = 2;
            }
            
            ops[idx] = new Op(idx, op, operand1, operand2, length);
        }
        else
        {
          Debug.LogErrorFormat("Unknown Syntax: {0}", line);
          nextIdx++; // Reserve this, so don't break the chain.
        }
        
      }


      return ops;
    }

    public static Dictionary<string, int> Generate_AddressConstants(String path)
    {
      Dictionary<string, int> constants = new Dictionary<string, int>(100);

      String[] lines = System.IO.File.ReadAllLines(path);
      
      for(int ii=0;ii < lines.Length;ii++)
      {
        
        Match match = Regex.Match(lines[ii], @"ADDRESS\(\s*(\w+)\s*,\s*(\w+)\s*,\s*0x(\w+)\s*\)", RegexOptions.IgnoreCase);

        if (!match.Success)
          continue;

        string rangeStr  = match.Groups[1].Value;
        string name      = match.Groups[2].Value;
        string valueStr  = match.Groups[3].Value;
        
        int range;
        if (!AddressRanges.TryGetValue(rangeStr, out range))
        {
          Debug.LogWarningFormat("Bad Syntax (Range): {0}", lines[ii]);
          continue;
        }

        int value;
        if (!Int32.TryParse(valueStr, System.Globalization.NumberStyles.HexNumber, System.Globalization.CultureInfo.InvariantCulture, out value))
        {
          Debug.LogWarningFormat("Bad Syntax (Value '{0}'): {1}", valueStr, lines[ii]);
          continue;
        }
        
        constants.Add(name, range + value);

      }

      return constants;
    }
    
    public static Dictionary<string, KeyValuePair<int, string>> Generate_Interrupts(String path)
    {
      Dictionary<string, KeyValuePair<int, string> > interrupts = new Dictionary<string, KeyValuePair<int, string>>(100);

      String[] lines = System.IO.File.ReadAllLines(path);
      
      for(int ii=0;ii < lines.Length;ii++)
      {
        Match match = Regex.Match(lines[ii], @"INTERRUPT\(\s*(\w+)\s*,\s*0x(\w+)\s*,\s*""(.+)""", RegexOptions.IgnoreCase);

        if (!match.Success)
          continue;

        string name  = match.Groups[1].Value;
        string valueStr  = match.Groups[2].Value;
        string desc = match.Groups[3].Value;
        
        int value;
        if (!Int32.TryParse(valueStr, System.Globalization.NumberStyles.HexNumber, System.Globalization.CultureInfo.InvariantCulture, out value))
        {
          Debug.LogWarningFormat("Bad Syntax (Value '{0}'): {1}", valueStr, lines[ii]);
          continue;
        }
        
        interrupts.Add(name, new KeyValuePair<int, string>(value, desc));

      }

      return interrupts;
    }

  }
}
