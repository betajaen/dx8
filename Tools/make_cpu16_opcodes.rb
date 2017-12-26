require 'csv'
require 'erb'
load 'cpu16/opcodes.rb'

@ops = []
ParseOpcodes(@ops)

switch_t, cycles_t = DATA.read.split '---'
switch_inc = ERB.new(switch_t, nil, '-').result()
cycles_inc = ERB.new(cycles_t, nil, '-').result()

File.write('../Source/libDX8/dx8/Core/Cpu16/dx8_Cpu16_Opcodes.inc', switch_inc)
File.write('../Source/libDX8/dx8/Core/Cpu16/dx8_Cpu16_Cycles.inc',  cycles_inc)

__END__
// Instructions

static void Cpu_DecodeAndRun(Word instruction)
{
  Byte opcode  = ( (instruction >> 8) & 0xFF);
  Byte operand = ( (instruction) & 0xFF );
  Word imm = 0;

  switch(opcode)
  {<% @ops.each do |op| %>
      case 0x<%= "%02X" % op.index %>: // <%= op.asm_format %>
      <% if op.c_code.length > 0 -%>{
    <% if op.pc_mem_fetch -%>
    imm = PC_FETCH();
    <% end -%>
    <%= op.c_code %>
      }
      break;<%- else -%>   break;<%- end -%>
    <%- end %>
  }
}

---
// Cycles

static u32 kCycles[<%=@ops.length%>] = {
<% @ops.each do |op| -%>
  <%= op.cycles -%>, // $<%= "%02X" % op.index %>  <%= op.asm_format %>
<% end -%>
};
