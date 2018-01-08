require 'erb'
require_relative 'common/instruction.rb'
require_relative 'common/assembly.rb'
require_relative 'common/definition.rb'

def PrettyifyBranchCheck(c)
  case c
    when :none
      return ' '
    when true
      return 'T'
    when false
      return 'F'
    else
      return '?'
  end
end

def PrettyifyBranchTable(df)
  s = ''
  df.branch.each_with_index do |a, idx|

    s << "|"

    if (idx >= 1)
      s << ' Or '
    else
      s << ' If '
    end

    s << "|"
    s << PrettyifyBranchCheck(a.fetch('N', :none))
    s << "|"
    s << PrettyifyBranchCheck(a.fetch('V', :none))
    s << "|"
    s << PrettyifyBranchCheck(a.fetch('Z', :none))
    s << "|"
    s << PrettyifyBranchCheck(a.fetch('C', :none))
    s << "\n"
  end
  return s
end

def PrettyifyEncoding(encoding)
  s = '`'
  encoding.each do |v|
    case v
      when :blank
        s << "0000"
      when :register
        s << "RGTR"
      when :nibble
        s << "NNNN"
      when :byte
        s << "BBBB BBBB"
      when :byte_as_word
        s << "BBBB BBBB 0000 0000"
      when :word
        s << " WWWW WWWW WWWW WWWW"
      when Integer
        m = ("%08b" % v)
        s << m[0..3]
        s << " "
        s << m[4..7]
      end
      s << ' '
  end
  s << '`'
end

def PrettyifyOperands(operand1, operand2)
  if (operand1 == nil && operand2 == nil)
      return ''
  end

  s = "<"

  if (operand1 != nil)
    s << operand1
  end

  if (operand2 != nil)
    s << ", "
    s << operand2
  end

  s << ">"

  return s
end

def PrettifyCRFlag(flag)
  if (flag == nil)
    return ' '
  end
  if (flag == :set)
    return '✱'
  elsif (flag == :true)
    return '1'
  elsif (flag == :false)
    return '0'
  else
    return '◇'
  end
end

def PrettifyCRFlags(flags)
    if (flags == nil)
        return '- - - -'
    end

    s = '| '
    s << PrettifyCRFlag(flags['N']) + ' | '
    s << PrettifyCRFlag(flags['V']) + ' | '
    s << PrettifyCRFlag(flags['Z']) + ' | '
    s << PrettifyCRFlag(flags['C'])
end

@instructions = ReadOpcodes()
FetchDefinitions(@instructions)

format_t = DATA.read
format = ERB.new(format_t.strip!, nil, '-').result()

File.write('../../Documentation/CPU16/Instructions.md', format)

__END__

# CPU16 Opcodes

<%- @instructions.each do |k, ins| -%>
# <%= ins.definition.comment %>

`<%= ins.name %> <%= (ins.definition.operands != nil) ? PrettyifyOperands(ins.definition.operands[0], ins.definition.operands[1])  : '' %>`

<%- if ins.definition.description != nil%><%= ins.definition.description -%><%end%>

<%- if ins.definition.protected == false%>Forbidden in Protected Mode!<%end%>

#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
  <%- ins.ops.each do |op| -%>
| <%=AsmIndexToIndex(op.index) %>  | <%=AsmTypeToType(op.type) %>  | <%=AsmOperandToAddressNotation(op.operand_1_type)%> → <%=op.operand_1_name%> | <%=AsmOperandToAddressNotation(op.operand_2_type)%> → <%=op.operand_2_name%> | <%=PrettyifyEncoding(op.encoding) %>
  <%- end -%>

<%- if (ins.definition.branch != nil) -%>
#### Branch if:
| Cond | N | V | Z | C
|:----:|:-:|:-:|:-:|:-:
<%= PrettyifyBranchTable(ins.definition) %>
<%- end -%>
<%- if (ins.definition.flags != nil && ins.definition.branch == nil) -%>
#### Flags:

| N | V | Z | C
|---|---|---|---
<%= PrettifyCRFlags(ins.definition.flags) %>
<%- end -%>

<%- end -%>
