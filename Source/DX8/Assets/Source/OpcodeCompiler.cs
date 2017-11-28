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
      {"Flags",   0x0000},
      {"Values",  0x0000},
    };

    public enum Opcode
    {
      Nop,
      Push,
      Pop,
      PushF,
      PopF,
      PushR,
      PopR,
      Load,
      Store,
      Read,
      Write,
      Call,
      CallEq,
      CallNeq,
      CallGt,
      CallLt,
      CallZ,
      CallNotZ,
      Return,
      Copy,
      Set,
      SetXY,
      SetZW,
      Add,
      Adc,
      Adw,
      Sub,
      Mul,
      Div,
      Mod,
      Neg,
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
      Cmpi,
      CmpBit,
      Jmp,
      JmpEq,
      JmpNeq,
      JmpGt,
      JmpLt,
      JmpZ,
      JmpNotZ,
      JmpC,
      RJmp,
      RJmpEq,
      RJmpNeq,
      RJmpGt,
      RJmpLt,
      RJmpZ,
      RJmpNotZ,
      CallBranch,
      JmpBranch,
      Int,
      Resume,
      Clc,
      Sec,
      Offset,
      ROffset,
      dbr,
      dba,
      dbb,
      dbn,
      dbo,
      rti,
      sti,
      COUNT
    }

    public static String[] OpcodeAsm = new String[(int) Opcode.COUNT] {
      "nop",
      "push",
      "pop",
      "push.f",
      "pop.f",
      "push.r",
      "pop.r",
      "load",
      "store",
      "read",
      "write",
      "call",
      "call.eq",
      "call.neq",
      "call.gt",
      "call.lt",
      "call.z",
      "call.nz",
      "return",
      "cpy",
      "set",
      "set.xy",
      "set.zw",
      "add",
      "adc",
      "adw",
      "sub",
      "mul",
      "div",
      "mod",
      "neg",
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
      "cmpi",
      "cmpbit",
      "jmp",
      "jmp.eq",
      "jmp.neq",
      "jmp.gt",
      "jmp.lt",
      "jmp.z",
      "jmp.nz",
      "jmp.c",
      "rjmp",
      "rjmp.eq",
      "rjmp.neq",
      "rjmp.gt",
      "rjmp.lt",
      "rjmp.z",
      "rjmp.nz",
      "bjmp",
      "bcall",
      "int",
      "resume",
      "sec",
      "clc",
      "offset",
      "roffset",
      "dbr",
      "dba",
      "dbb",
      "dbn",
      "dbo",
      "rti",
      "sti"
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
      I,
      J,
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
      "a",
      "i",
      "j"
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

      internal void ToCFormat(ref StringBuilder sb)
      {
        string n = OpcodeCompiler.OpcodeAsm[(int) Opcode].ToUpper();
        n = n.Replace(".", "_");
        sb.Append(n);
        

        switch(Operand1)
        {
          case Operand.A: sb.Append("_a"); break;
          case Operand.X: sb.Append("_x"); break;
          case Operand.Y: sb.Append("_y"); break;
          case Operand.Z: sb.Append("_z"); break;
          case Operand.W: sb.Append("_w"); break;
          case Operand.I: sb.Append("_i"); break;
          case Operand.J: sb.Append("_j"); break;
          case Operand.Address: sb.Append("_A"); break;
          case Operand.Byte: sb.Append("_B"); break;
        }
        
        switch(Operand2)
        {
          case Operand.A: sb.Append('a'); break;
          case Operand.X: sb.Append('x'); break;
          case Operand.Y: sb.Append('y'); break;
          case Operand.Z: sb.Append('z'); break;
          case Operand.W: sb.Append('w'); break;
          case Operand.I: sb.Append('i'); break;
          case Operand.J: sb.Append('j'); break;
          case Operand.Address: sb.Append('A'); break;
          case Operand.Byte: sb.Append('B'); break;
        }

      }

    }

    public static String GenerateCsApi(String apiPath, Dictionary<string, KeyValuePair<int, string>> scancodes)
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

      foreach(var sc in scancodes)
      {
          sb.AppendFormat("  public const int Key_{0} = {1};", sc.Key, sc.Value.Key);
          sb.AppendLine();
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
        case Operand.I: sb.Append("A eq i"); op1 = true; break;
        case Operand.J: sb.Append("A eq j"); op1 = true; break;
      }
      
      switch(op.Operand2)
      {
        case Operand.X: if (op1) { sb.Append(" & "); } sb.Append("B eq x"); break;
        case Operand.Y: if (op1) { sb.Append(" & "); } sb.Append("B eq y"); break;
        case Operand.Z: if (op1) { sb.Append(" & "); } sb.Append("B eq z"); break;
        case Operand.W: if (op1) { sb.Append(" & "); } sb.Append("B eq w"); break;
        case Operand.A: if (op1) { sb.Append(" & "); } sb.Append("B eq a"); break;
        case Operand.I: if (op1) { sb.Append(" & "); } sb.Append("B eq i"); break;
        case Operand.J: if (op1) { sb.Append(" & "); } sb.Append("B eq j"); break;
      }
      
      
    }
    
    public static String MakeAsmOpcodes(List<Op> ops)
    {
      StringBuilder sb = new StringBuilder();
      sb.AppendLine("; Automatically generated file");

      foreach(var op in ops)
      {
        sb.Append("OP_");
        op.ToCFormat(ref sb);
        sb.Append(" = $");
        sb.AppendFormat("{0:X2}", op.Index);
        sb.AppendLine();
      }

      return sb.ToString();
    }


    public static String MakeMacros(List<Op> opcodes, Dictionary<string, int> registers, Dictionary<string, int> constants, Dictionary<string, KeyValuePair<int, string>> interrupts, Dictionary<string, KeyValuePair<int, string>> scancodes)
    {
      System.Text.StringBuilder sb = new System.Text.StringBuilder(4096);
      
      sb.AppendLine("; DX8 FASM Instruction Set and Common Constants");

      // Registers
      sb.AppendLine("; Registers");

      foreach(var register in registers)
      {
        sb.AppendFormat("REG_{0} = ${1:X4}", register.Key, register.Value);
        sb.AppendLine();
      }
      
      sb.AppendLine();
      
      // Constants
      sb.AppendLine("; Macros");
      
      // Constants
      sb.AppendLine("; Constants");

      foreach(var constant in constants)
      {
        sb.AppendFormat("{0} = ${1:X4}", constant.Key, constant.Value);
        sb.AppendLine();
      }
      
      sb.AppendLine();
      
      // Interrupts
      sb.AppendLine("; Interrupts");

      foreach(var interrupt in interrupts)
      {
        sb.AppendFormat("{0} = ${1:X4} ; {2} ", interrupt.Key, interrupt.Value.Key, interrupt.Value.Value);
        sb.AppendLine();
      }
      
      sb.AppendLine();
      
      // Interrupts
      sb.AppendLine("; Keys");

      foreach(var scancode in scancodes)
      {
        sb.AppendFormat("KEY_{0} = ${1:X2}", scancode.Key, scancode.Value.Key);
        sb.AppendLine();
      }
      
      sb.AppendLine();
      // Macros
      
      sb.AppendLine("; Instructions");
      
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
      
      // Opcodes
      sb.AppendLine("; Opcodes");
      
      for(int ii=0;ii < opcodes.Count;ii++)
      {
        Op op = opcodes[ii];
        if (op.Opcode == Opcode.Nop && ii != 0)
          continue;
        
        sb.Append("OP_");
        op.ToCFormat(ref sb);
        sb.AppendFormat(" = ${0:X2}", op.Index);
        sb.AppendLine();
      }
      
      return sb.ToString();
    }

    
    public static String MakeRegisters(Dictionary<string, int> registers)
    {
      System.Text.StringBuilder sb = new System.Text.StringBuilder(4096);
      
      // Constants

      sb.AppendLine("// Registers");

      foreach(var register in registers)
      {
        sb.AppendFormat("#define REG_{0} (0x{1:X4})", register.Key, register.Value);
        sb.AppendLine();
      }
      
      sb.AppendLine();
      
      return sb.ToString();
    }
    
    public static String MakeConstants(Dictionary<string, int> constants)
    {
      System.Text.StringBuilder sb = new System.Text.StringBuilder(4096);
      
      // Constants

      sb.AppendLine("// Constants");

      foreach(var constant in constants)
      {
        sb.AppendFormat("#define {0} (0x{1:X4})", constant.Key, constant.Value);
        sb.AppendLine();
      }
      
      sb.AppendLine();
      
      return sb.ToString();
    }
    
    public static String MakeInterrupts(Dictionary<string, KeyValuePair<int, string>> interrupts)
    {
      System.Text.StringBuilder sb = new System.Text.StringBuilder(4096);
      
      // Interrupts

      sb.AppendLine("// Interrupts");

      foreach(var interrupt in interrupts)
      {
        sb.AppendFormat("#define {0} (0x{1:X4}) // {2}", interrupt.Key, interrupt.Value.Key, interrupt.Value.Value);
        sb.AppendLine();
      }
      
      sb.AppendLine();
      
      return sb.ToString();
    }
    
    public static String MakeScancodes(Dictionary<string, KeyValuePair<int, string>> scancodes)
    {
      System.Text.StringBuilder sb = new System.Text.StringBuilder(4096);
      
      // Interrupts

      sb.AppendLine("// Scancodes");

      foreach(var scancode in scancodes)
      {
        sb.AppendFormat("#define KEY_{0} (0x{1:X2})", scancode.Key, scancode.Value.Key);
        sb.AppendLine();
      }
      
      sb.AppendLine();
      
      return sb.ToString();
    }

    public class DecompiledLine
    {
      static int NextIndex = 0; 

      public enum Type
      {
        Data,
        Code,
        Label,
        Function,
        Mixed
      }
      public int     address;
      public string  text;
      public string  comment;
      public Type    type;
      public Opcode  op;
      public byte    lo;
      public byte    hi;
      public int     count;
      public int     index;
      public DecompiledLine target;
      public bool    addressError;
      public int     targetAddress;

      public void Mark(Type type)
      {
        if (this.type == type)
          return;

        if (this.type != Type.Code)
        {
          Debug.LogWarningFormat("${0:X4} {1} is marked as a {2}, but is now referenced as a {3}", address, text, this.type, type);
          return;
        }
        this.index  = address;
        this.type   = type;
      }
      
      public void MarkError(int targetAddress)
      {
        this.addressError = true;
        this.targetAddress = targetAddress;
      }
    }

    public static String Decompile(List<Op> ops, Byte[] data)
    {
      int len = data.Length;

      System.Text.StringBuilder sb = new System.Text.StringBuilder(len * 30);
      StringBuilder temp = new StringBuilder(100);
      
      int dataSection = 0x0; //300;
      byte lo = 0, hi = 0;
      
      Dictionary<int, DecompiledLine> lines = new Dictionary<int, DecompiledLine>(2048);

      for(int ii=0;ii < len;)
      {
        DecompiledLine line = new DecompiledLine();
        
        int address = ii;

        if (ii < dataSection)
        {
          line.text = string.Format("${0:X2}", data[ii]);
          line.comment = string.Empty;
          line.type = DecompiledLine.Type.Data;
          line.op   = Opcode.Nop;
          line.lo   = data[ii];
          line.hi   = 0;
          line.count = 1;
          line.address = address;
          lines.Add(address, line);
          ii++;
          continue;
        }

        sb.Length = 0;

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
        
        temp.Length = 0;
        op.ToAssemblerFormat(ref temp, lo, hi);
        
        string text = temp.ToString();
        
        sb.Length = 0;
        
        if (op.Length == 1)
        {
          sb.AppendFormat("; {0:X2}", op.Index);
        }
        else if (op.Length == 2)
        {
          if (lo >= '!' && lo <= 127)
            sb.AppendFormat("; {0:X2} {1:X2}({2})", op.Index, lo, (char) lo);
          else
            sb.AppendFormat("; {0:X2} {1:X2}", op.Index, lo);
        }
        else if (op.Length == 3)
        {
          sb.AppendFormat("; {0:X2} {1:X2} {2:X2}", op.Index, lo, hi);
        }

        string comment = sb.ToString();
        
        
        line.text = text;
        line.comment = comment;
        line.type = DecompiledLine.Type.Code;
        line.op   = op.Opcode;
        line.lo   = lo;
        line.hi   = hi;
        line.count = op.Length;
        line.address = address;
        lines.Add(address, line);
      }

      sb.Length = 0;

      int labelId = 0;
      int tabSize = 0;
      
      foreach(var k in lines)
      {
        DecompiledLine line = k.Value;
        
        int checkAddr = 0;
        DecompiledLine.Type checkType = DecompiledLine.Type.Code;

        if (line.op == Opcode.Call)
        {
          checkAddr = line.lo + line.hi * 256;
          checkType = DecompiledLine.Type.Function;
        }
        else if (line.op >= Opcode.Jmp && line.op <= Opcode.JmpNotZ)
        {
          checkAddr = line.lo + line.hi * 256;
          checkType = DecompiledLine.Type.Label;
        }
        else if (line.op >= Opcode.RJmp && line.op <= Opcode.RJmpNotZ)
        {
          int rel = (int) ((sbyte) line.lo);
          checkAddr = k.Key + rel;
          checkType = DecompiledLine.Type.Label;
        }
        else
        {
          continue;
        }

        DecompiledLine target;
        lines.TryGetValue(checkAddr, out target);
        if (target == null)
        {
          Debug.LogErrorFormat("Jumping/Calling to mid-instruction: ${0:X4}: {1} to ${2:X4}", k.Key, line.text, checkAddr);
          line.MarkError(checkAddr);
          line.targetAddress = checkAddr;
          continue;
        }
        else
        {
          target.Mark(checkType);
          line.target = target;
          line.targetAddress = checkAddr;
        }
        
      }

      foreach(var k in lines)
      {
        int address = k.Key;
        DecompiledLine line = k.Value;

        sb.AppendFormat("{0:X4}: ", address);

        if (line.type == DecompiledLine.Type.Data)
        {
          sb.Append("  DATA   : ");
        }
        else if (line.type == DecompiledLine.Type.Function)
        {
          sb.AppendFormat("FUN_{0:0000} : ", line.index);
        }
        else if (line.type == DecompiledLine.Type.Label)
        {
          sb.AppendFormat("LBL_{0:0000} : ", line.index);
        }
        else if (line.type == DecompiledLine.Type.Code)
        {
          sb.Append("         : ");
        }

        sb.Append(line.text);
        
        if (line.type == DecompiledLine.Type.Data)
        {
          sb.AppendLine();
          continue;
        }

        int padding = 25 - line.text.Length;
        for(int i=0;i < padding;i++)
          sb.Append(' ');
        
        sb.Append(line.comment);

        int commentPadding = 12 - line.comment.Length;

        if (line.target != null)
        {
          DecompiledLine target = line.target;

          for(int i=0;i < commentPadding;i++)
            sb.Append(' ');

          if (target.type == DecompiledLine.Type.Data)
          {
            sb.Append("DATA");
          }
          else if (target.type == DecompiledLine.Type.Function)
          {
            sb.AppendFormat("FUN_{0:0000}", line.target.index);
          }
          else if (target.type == DecompiledLine.Type.Label)
          {
            sb.AppendFormat("LBL_{0:0000}", line.target.index);
          }
          else if (target.type == DecompiledLine.Type.Code)
          {
            sb.Append("CODE");
          }

          sb.AppendFormat(" ${0:X4}", line.targetAddress);

        }
        else if (line.addressError)
        {
          for(int i=0;i < commentPadding;i++)
            sb.Append(' ');

          sb.AppendFormat("ERROR ${0:X4}", line.targetAddress);
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
                case 'i': operand1 = Operand.I; break;
                case 'j': operand1 = Operand.J; break;
                case 'A': operand1 = Operand.Address; break;
                case 'W': operand1 = Operand.Address; break;
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
                case 'i': operand1 = Operand.I; break;
                case 'j': operand1 = Operand.J; break;
                case 'W': operand1 = Operand.Address; break;
                case 'A': operand1 = Operand.Address; break;
                case 'B': operand1 = Operand.Byte; break;
              }
              switch(operands[1])
              {
                case 'x': operand2 = Operand.X; break;
                case 'y': operand2 = Operand.Y; break;
                case 'z': operand2 = Operand.Z; break;
                case 'w': operand2 = Operand.W; break;
                case 'i': operand2 = Operand.I; break;
                case 'j': operand2 = Operand.J; break;
                case 'a': operand2 = Operand.A; break;
                case 'W': operand2 = Operand.Address; break;
                case 'A': operand2 = Operand.Address; break;
                case 'B': operand2 = Operand.Byte; break;
              }
            }

            if (format == "Address" || format == "Word")
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

    
    public static Dictionary<string, int> Generate_Registers(String path)
    {
      Dictionary<string, int> registers = new Dictionary<string, int>(100);

      String[] lines = System.IO.File.ReadAllLines(path);
      
      int org = 0;

      for(int ii=0;ii < lines.Length;ii++)
      {
        
        Match match = Regex.Match(lines[ii], @"REGISTER\(\s*(\d+)\s*,\s*(\w+)\s*\s*\)", RegexOptions.IgnoreCase);

        if (!match.Success)
          continue;
          
        string valueStr  = match.Groups[1].Value;
        string name      = match.Groups[2].Value;
        
        int value;
        if (!Int32.TryParse(valueStr, out value))
        {
          Debug.LogWarningFormat("Bad Syntax (Value '{0}'): {1}", valueStr, lines[ii]);
          continue;
        }

        // Debug.LogFormat("{0} => {1} => {2}", name, valueStr, value);
        
        if (name == "AT")
        {
          org = value;
          continue;
        }

        registers.Add(name, org);
        org += value;
      }

      return registers;
    }
    
    public static Dictionary<string, int> Generate_Constants(String path)
    {
      Dictionary<string, int> constants = new Dictionary<string, int>(100);

      String[] lines = System.IO.File.ReadAllLines(path);
      
      for(int ii=0;ii < lines.Length;ii++)
      {
        
        Match match = Regex.Match(lines[ii], @"CONSTANT\(\s*(\w+)\s*,\s*0x(\w+)\s*\)", RegexOptions.IgnoreCase);

        if (!match.Success)
        {
          continue;
        }
        string name      = match.Groups[1].Value;
        string valueStr  = match.Groups[2].Value;
        
        Debug.Log(name);

        int value;
        if (!Int32.TryParse(valueStr, System.Globalization.NumberStyles.HexNumber, System.Globalization.CultureInfo.InvariantCulture, out value))
        {
          Debug.LogWarningFormat("Bad Syntax (Value '{0}'): {1}", valueStr, lines[ii]);
          continue;
        }
        
        constants.Add(name, value);
      }

      return constants;
    }
    
    public static Dictionary<string, KeyValuePair<int, string>> Generate_Scancodes(String path)
    {
      Dictionary<string, KeyValuePair<int, string>> constants = new Dictionary<string, KeyValuePair<int, string>>(100);

      String[] lines = System.IO.File.ReadAllLines(path);
      
      int scancode = 1;
      int modifier = 1;

      for(int ii=0;ii < lines.Length;ii++)
      {
        
        Match match = Regex.Match(lines[ii], @"KEY\(\s*(\w+)\s*\)\s*//\s(.)", RegexOptions.IgnoreCase);

        if (match.Success)
        {
          string name      = match.Groups[1].Value;
          string character = match.Groups[2].Value;
          int value        = scancode++;
        
          constants.Add(name, new KeyValuePair<int, string>(value, character));
          continue;
        }

        match = Regex.Match(lines[ii], @"KEYMOD\(\s*(\w+)\s*\)", RegexOptions.IgnoreCase);
        
        if (match.Success)
        {
          string name      = match.Groups[1].Value;
          int value        = modifier++;
        
          constants.Add("MOD_" + name, new KeyValuePair<int, string>(value, "$"));
          continue;
        }

      }

      constants.Add("COUNT", new KeyValuePair<int, string>(scancode, "$"));

      return constants;
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
