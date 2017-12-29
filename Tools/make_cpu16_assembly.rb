require 'csv'
require 'erb'
load 'cpu16/opcodes.rb'

@ops = []
ParseOpcodes(@ops)

cpu_t = DATA.read
cpu_inc = ERB.new(cpu_t, nil, '-').result()

File.write('../Sdk/common/cpu.inc', cpu_inc)

__END__
;
; DX8 Software Developer Kit
;
; CPU Instruction Macros for Flat Assembler
;
;

macro cpu16.operand1 PARAM {
  db PARAM
}

macro cpu16.operand2 A, B {
  db A or (B shl 4)
}

<% @ops.each do |op| -%>
; <%= op.asm_format %>
macro m {

}
<% end -%>
