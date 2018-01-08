require 'erb'
require_relative 'common/instruction.rb'
require_relative 'common/assembly.rb'
require_relative 'common/definition.rb'
require_relative 'common/c.rb'

def RewriteFlags(line)
  if ((line =~ /'\A\w*CCR\('/) == false)
    return
  end
  line = 'TEST_CCR';
end

def RewriteCLine(line)
  l = '' + line
  l.gsub! /\bFLAG_PROTECTED\b/, 'CPU.protected'
  l.gsub! /\bMDR\b/,            'CPU.mdr'
  l.gsub! /\bPC\b/,             'CPU.pc'
  l.gsub! /\bPC_STACK\b/,       'CPU.pcStack[CPU.protected]'
  l.gsub! /\bSTACK\b/,          'CPU.stack[CPU.protected]'
  l.gsub! /\bFLAG_N\b/,         'CPU.ccr.n'
  l.gsub! /\bFLAG_V\b/,         'CPU.ccr.v'
  l.gsub! /\bFLAG_Z\b/,         'CPU.ccr.z'
  l.gsub! /\bFLAG_C\b/,         'CPU.ccr.c'
  l.gsub! /\bBUS_WRITE_WORD\b/, 'Cpu16_Bus_WriteWord'
  l.gsub! /\bBUS_WRITE_BYTE\b/, 'Cpu16_Bus_WriteByte'
  l.gsub! /\bBUS_READ_WORD\b/,  'Cpu16_Bus_ReadWord'
  l.gsub! /\bBUS_READ_BYTE\b/,  'Cpu16_Bus_ReadByte'

  RewriteFlags(line);
  return l
end

def RewriteOperands(s, cins)
  # use gsub.  regex is; \boperand\b
  cins.operands.each do |operand, code|
    s.gsub!(/\b#{operand}\b/, code)
  end
  return s
end

def PrettyifyCode(lines, indent, cins)
  # <% lines.each_line do |line| %><%= line %><% end %>
  s = ''
  lines.each_line do |line|
    s << indent
    s << RewriteCLine(line).rstrip
    s << "\n"
  end
  s = RewriteOperands(s, cins)
  return s.rstrip
end

@instructions = ReadOpcodes()
FetchDefinitions(@instructions)

@ops = []
256.times do |idx|
  @ops.push nil
end

@instructions.each do |k,ins|
  ins.ops.each do |op|
    cins = CInstruction.new(ins, op)
    @ops[op.index] = cins
  end
end

format_t = DATA.read
format = ERB.new(format_t.strip!, nil, '-').result()

File.write('../../Source/libDX8/dx8/Core/CPU16/dx8_Cpu16_Execute.c', format)

__END__
//! d8888b.    db    db    .d888b.
//! 88  `8D    `8b  d8'    88   8D
//! 88   88     `8bd8'     `VoooY'
//! 88   88     .dPYb.     .d~~~b.
//! 88  .8D    .8P  Y8.    88   8D
//! Y8888D'    YP    YP    `Y888P'
//!
//!      Dragon X8 Computer
//!    Cyfrifiadur y Ddraig X8
//!
//! Copyright (c) 2017 Robin Southern   :: https://github.com/betajaen
//! Made in Wales -- For the FC Dev Jam :: https://itch.io/jam/fc-dev-jam
//!
//! Permission is hereby granted, free of charge, to any person obtaining a copy
//! of this software and associated documentation files (the "Software"), to deal
//! in the Software without restriction, including without limitation the rights
//! to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//! copies of the Software, and to permit persons to whom the Software is
//! furnished to do so, subject to the following conditions:
//!
//! The above copyright notice and this permission notice shall be included in
//! all copies or substantial portions of the Software.
//!
//! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//! IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//! THE SOFTWARE.

//! This is an auto-generated file! Please do not edit.

#include <dx8/Core/Cpu16/dx8_Cpu16.h>
#include <dx8/Core/Mmu160512/dx8_Mmu160512.h>

extern struct Cpu16 CPU;

void Cpu16_Execute(Byte opcode, Byte operand, Byte* subCycle)
{
  switch(opcode)
  {
    <%- @ops.each_with_index do |cins, index| -%>
    <%- if (cins == nil) -%>
    case <%= index %>:
      break;
    <%- next -%>
    <%- end -%>
    // index=<%= cins.op.index %>, instruction=<%= cins.op.instruction %>
    // type=<%= cins.op.operand_1_type %>, name=<%= cins.op.operand_1_name %>, target=<%= cins.op.operand_1_target %>
    // type=<%= cins.op.operand_2_type %>, name=<%= cins.op.operand_2_name %>, target=<%= cins.op.operand_2_target %>
    // pcread=<%= cins.pcread %>
    // type=<%= cins.op.type %>
    // flags=<%= cins.ins.definition.flags.inspect %>
    case <%= cins.op.index %>:
    {
      <%- if (cins.subcycles.length == 0) -%>
      // Unimplemented Opcode
      <%- elsif (cins.subcycles.length == 1) -%>
<%= PrettyifyCode(cins.subcycles[0], '      ', cins) %>
      <%- else -%>
      switch(*subCycle)
      {
        <%- cins.subcycles.each_with_index do |lines, index| -%>
        case <%=index %>:
        {
<%= PrettyifyCode(lines, '          ', cins) %>
        }
        break;
        <%- end -%>
      }
      <%- end -%>
    }
    break;
    <%- end -%>
  }
}
