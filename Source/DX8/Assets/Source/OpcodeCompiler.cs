using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;
using UnityEngine;

namespace DX8
{
  public class OpcodeCompiler
  {
    public enum Opcode
    {
      Nop,
      Push,
      Pop,
      Load,
      Store,
      Call,
      Return,
      Set,
      Add,
      Sub,
      Mul,
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
      SetPc,
      Jmp,
      JmpEq,
      JmpNeq,
      JmpGt,
      JmpLt,
      COUNT
    }

    public static String[] OpcodeAsm = new String[(int) Opcode.COUNT] {
      "nop",
      "push",
      "pop",
      "load",
      "store",
      "call",
      "return",
      "set",
      "add",
      "sub",
      "mul",
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
      "setpc",
      "jmp",
      "jmp eq",
      "jmp neq",
      "jmp gt",
      "jmp lt"
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
      
      public void ToAssemblerFormat(ref System.Text.StringBuilder sb)
      {
        sb.Append(OpcodeCompiler.OpcodeAsm[(int) Opcode]);

        if (Operand1 != Operand.None)
        {
          sb.Append(' ');
          sb.Append(OperandAsm[(int) Operand1]);

          if (Operand2 != Operand.None)
          {
            sb.Append(',');
            sb.Append(OperandAsm[(int) Operand2]);
          }
        }
      }
      
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

    public static List<Op> GenerateOpcodes(String path)
    {
      List<Op> ops = new List<Op>(256);
      for(int ii = 0; ii < 256; ii++)
        ops.Add(new Op(ii));
      

      String[] lines = System.IO.File.ReadAllLines(path);

      for(int ii=0;ii < lines.Length;ii++)
      {
        String line = lines[ii];
        if (LineStartsWith_OP(line) == false)
          continue;
        
        Match match = Regex.Match(line, @"OP\(\s*(\d+)\s*,\s*Op_(\w+)\s*,\s*Opr_(\w+)\s*,\s*Opf_(\w+)\s*,\s*(\d)", RegexOptions.IgnoreCase);

        if (match.Success)
        {
            string idxStr   = match.Groups[1].Value;
            string name     = match.Groups[2].Value;
            string operands = match.Groups[3].Value;
            string format   = match.Groups[4].Value;

            int    idx = Int32.Parse(idxStr);
            Opcode op = (Opcode) Enum.Parse(typeof(Opcode), name);
            Operand operand1 = Operand.None, operand2 = Operand.None;
            int    length = 1;

            if (operands.Length == 1)
            {
              switch(operands[0])
              {
                case 'X': case 'x': operand1 = Operand.X; break;
                case 'Y': case 'y': operand1 = Operand.Y; break;
                case 'Z': case 'z': operand1 = Operand.Z; break;
                case 'W': case 'w': operand1 = Operand.W; break;
                case 'A': case 'a': operand1 = Operand.A; break;
              }
            }
            else if (operands.Length == 2)
            {
              switch(operands[0])
              {
                case 'X': case 'x': operand1 = Operand.X; break;
                case 'Y': case 'y': operand1 = Operand.Y; break;
                case 'Z': case 'z': operand1 = Operand.Z; break;
                case 'W': case 'w': operand1 = Operand.W; break;
                case 'A': case 'a': operand1 = Operand.A; break;
              }
              switch(operands[1])
              {
                case 'X': case 'x': operand2 = Operand.X; break;
                case 'Y': case 'y': operand2 = Operand.Y; break;
                case 'Z': case 'z': operand2 = Operand.Z; break;
                case 'W': case 'w': operand2 = Operand.W; break;
                case 'A': case 'a': operand2 = Operand.A; break;
              }
            }
            else
            {
              if (operands == "Address")
              {
                operand1 = Operand.Address;
              }
              else if (operands == "Byte")
              {
                operand1 = Operand.Byte;
              }
            }

            if (format == "Address")
              length = 3;
            else if (format == "Byte")
            {
              if (operand1 != Operand.Byte && operand2 == Operand.None)
              {
                operand2 = Operand.Byte;
              }
              
              length = 2;
            }

            // Debug.LogFormat("{0}, {1}, {2}, {3}, {4}", idx, op, operand1, operand2, length);

            ops[idx] = new Op(idx, op, operand1, operand2, length);
        }
        
      }


      return ops;
    }

  }
}
