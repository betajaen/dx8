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

static void Cpu_DecodeAndRun(Byte opcode, Byte operand, u8* subCycle)
{
  Word imm = 0;

  switch(opcode)
  {<% 256.times do |op_idx| %>
      <% op = @ops[op_idx] %>
      case 0x<%= "%02X" % op.index %>: // <%= op.index %> <%= op.asm_format %>
      <% if op.instructions.length > 0 -%>{
      <%- if op.instructions.length == 1 -%>
      <%- op.instructions[0].each_line do |line| -%>
        <%= line -%>
      <%- end -%>

        (*subCycle) = 0x0F;
      <%- else -%>
      switch((*subCycle))
      {
      <%- op.instructions.each_with_index do |ins, idx| -%>
        case <%= idx %>:
        {
          <%= op.labelName %>_<%= idx %>:
          (*subCycle)++;
      <%- ins.each_line do |line| -%>
          <%= line -%>
      <%- end %>
        }
        return;
      <%- end -%>
      }
      <%- end -%>
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

static u32 kSizes[<%=@ops.length%>] = {
<% @ops.each do |op| -%>
  <%= op.pc_mem_fetch ? 4 : 2-%>, // $<%= "%02X" % op.index %>  <%= op.asm_format %>
<% end -%>
};
