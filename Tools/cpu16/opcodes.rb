require 'yaml'

class Opcode
  attr_accessor :index, :asm_format, :c_code, :param_a, :param_b, :datatype, :size, :cycles, :pc_mem_fetch, :instructions, :labelName
  def initialize(index)
    @index = index
    @asm_format = 'i' + index.to_s(16)
    @c_code = ''
    @param_a = :none
    @param_b = :none
    @datatype = :none
    @size = 2
    @cycles = 2
    @pc_mem_fetch = false
    @instructions = []
    @labelName = 'i' + index.to_s(16)
  end
end

def ParseCycleInstruction(line, registers, instructions, labelName, lineNo)
  s = line.split('.')
  c = "" + instructions[s[0]]
  if (c == nil)
    if ((s[0].end_with?('B') || s[0].end_with?('W')) == false)
      puts "Unknown Instruction: #{s[0]} in #{line} -- Missing B/W Type?"
    else
      puts "Unknown Instruction: #{s[0]} in #{line}"
    end
    return 'ERROR'
  end

  s.shift

  s.each_with_index do |operand, index|
    next if (operand == '')

    reg = registers[operand]

    if (reg == nil)
      puts "Unknown Operand: '#{operand}':#{index} in #{line}"
      return 'ERROR'
    end

    c.gsub!("$#{index+1}", reg.to_s)
  end

  c.gsub!('$L0', "#{labelName}_#{lineNo}");
  c.gsub!('$L1', "#{labelName}_#{lineNo+1}");

  return c
end

def ParseOpcodes(ops)

  cpu16_registers = YAML.load_file("cpu16/registers.yaml")
  cpu16_instructions = YAML.load_file("cpu16/instructions.yaml")

  ops.clear
  256.times do |idx|
    ops.push Opcode.new(idx)
  end

  CSV.foreach("../Documentation/Processor16bit.csv") do |row|
    if (row[0] == nil && row[1] != nil && row[1].start_with?('$'))
      opcode_str = row[1].to_s
      asm_format = row[3].to_s
      c_code = row[21].to_s
      opcode = opcode_str[1..-1].to_i(16)

      cycles = []
      cycles.push row[24].to_s
      cycles.push row[25].to_s
      cycles.push row[26].to_s
      cycles.push row[27].to_s

      op = ops[opcode]
      op.asm_format = asm_format
      op.labelName = "i" + op.index.to_s(16)

      if c_code.include?('IMM')
        op.pc_mem_fetch = true
        op.size = 4
      end

      instructions = []
      cycles.each do |cycle|
        instruction = ''
        idx = 0
        cycle.each_line do |line|
          instruction << ParseCycleInstruction(line.strip, cpu16_registers, cpu16_instructions, op.labelName, idx)
          instruction << "\n"
          idx = idx + 1
        end
        instruction.strip!
        if (instruction.length > 0)
          instructions.push instruction
        end
      end

      op.instructions = instructions
    end
  end

end
