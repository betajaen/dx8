

class Opcode
  attr_accessor :index, :asm_format, :c_code, :param_a, :param_b, :datatype, :size, :cycles, :pc_mem_fetch
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
  end
end

def ParseOpcodes(ops)

  @c_replacers = {
    'IMM' => 'imm',
    'DST' => 'OPERAND_dst',
    'SRC' => 'OPERAND_src',
    'PARAM' => 'operand',
    'SHIFT' => 'IMM_src'
  }

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

      op = ops[opcode]
      op.asm_format = asm_format

      if c_code.include?('IMM')
        op.pc_mem_fetch = true
        op.size = 4
      end

      @c_replacers.each do |k,v|
        c_code = c_code.sub(k, v)
      end

      op.c_code = c_code

    end
  end

end
