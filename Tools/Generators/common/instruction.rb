require 'yaml'

class Opcode
  attr_accessor  :instruction,
                 :index,
                 :type,
                 :operand_1_type,
                 :operand_1_name,
                 :operand_1_target,
                 :operand_2_type,
                 :operand_2_name,
                 :operand_2_target,
                 :operand_size,
                 :data_size,
                 :encoding

  def initialize(index)
    @index = index
    @instruction = :none
    @type = :none
    @operand_1_type = :none
    @operand_2_type = :none
    @operand_1_name = :none
    @operand_2_name = :none
    @operand_1_target = :none
    @operand_2_target = :none
    @operand_size = :none
    @data_size = 2
    @encoding = []
  end
end

def ParameterTypeToType(s)
  if (s == 'sr')
    return :signed_register
  elsif (s == 'ur')
    return :unsigned_register
  elsif (s == 'pr')
    return :address_register_absolute
  elsif (s == 'prr')
    return :address_register_relative
  elsif (s == 'prrw')
    return :address_register_relative_word
  elsif (s == 'prrb')
    return :address_register_relative_byte
  elsif (s == 'u16')
    return :unsigned_word
  elsif (s == 'u8')
    return :unsigned_byte
  elsif (s == 'u4')
    return :unsigned_nibble
  elsif (s == 's16')
    return :signed_word
  elsif (s == 's8')
    return :signed_byte
  elsif (s == 's4')
    return :signed_nibble
  else
    puts "Syntax Error: Unknown Parameter Type #{s}"
    return :none
  end
end


def CalculateEncoding(op)

  op.encoding = []
  op.encoding.push op.index

  hasExtendedWord = false
  hasByte = false
  hasAtLeastOneOperand = false
  extendedWordIsByte = false

  case op.operand_1_type
    when :signed_register
      hasAtLeastOneOperand = true
      op.encoding.push :register
      op.operand_1_target = :param_a_register
    when :unsigned_register
      hasAtLeastOneOperand = true
      op.encoding.push :register
      op.operand_1_target = :param_a_register
    when :address_register_absolute
      op.encoding.push :register
      op.operand_1_target = :param_a_register
    when :address_register_relative
      op.encoding.push :register
      op.operand_1_target = :param_a_register
    when :address_register_relative_word
      hasExtendedWord = true
      hasAtLeastOneOperand = true
      op.encoding.push :blank
      op.operand_1_target = :extended_word
    when :address_register_relative_byte
      hasByte = true
      hasAtLeastOneOperand = true
      op.encoding.push :byte
      op.operand_1_target = :param_byte
    when :unsigned_word
      hasExtendedWord = true
      op.encoding.push :blank
      op.operand_1_target = :extended_word
    when :signed_word
      hasExtendedWord = true
      op.encoding.push :blank
      op.operand_1_target = :extended_word
    when :unsigned_byte
      if (hasAtLeastOneOperand)
        hasExtendedWord = true
        extendedWordIsByte = true
        op.encoding.push :blank
        op.operand_1_target = :extended_byte
      else
        hasByte = true
        hasAtLeastOneOperand = true
        op.encoding.push :byte
        op.operand_1_target = :param_byte
      end
    when :signed_byte
      if (hasAtLeastOneOperand)
        hasExtendedWord = true
        extendedWordIsByte = true
        op.encoding.push :blank
        op.operand_1_target = :extended_byte
      else
        hasByte = true
        hasAtLeastOneOperand = true
        op.encoding.push :byte
        op.operand_1_target = :param_byte
      end
    when :unsigned_nibble
        op.encoding.push :nibble
        op.operand_1_target = :param_a
    when :signed_nibble
        op.encoding.push :nibble
        op.operand_1_target = :param_a
    else
        op.encoding.push :blank
  end

  case op.operand_2_type
    when :signed_register
      hasAtLeastOneOperand = true
      op.encoding.push :register
      op.operand_2_target = :param_b_register
    when :unsigned_register
      hasAtLeastOneOperand = true
      op.encoding.push :register
      op.operand_2_target = :param_b_register
    when :address_register_absolute
      op.encoding.push :register
      op.operand_2_target = :param_b_register
    when :address_register_relative
      op.encoding.push :register
      op.operand_2_target = :param_b_register
    when :address_register_relative_word
      hasExtendedWord = true
      hasAtLeastOneOperand = true
      op.encoding.push :blank
      op.operand_2_target = :extended_word
    when :address_register_relative_byte
      hasByte = true
      hasAtLeastOneOperand = true
      op.encoding.push :byte
      op.operand_2_target = :extended_byte
    when :unsigned_word
      hasExtendedWord = true
      op.encoding.push :blank
      op.operand_2_target = :extended_word
    when :signed_word
      hasExtendedWord = true
      op.encoding.push :blank
      op.operand_2_target = :extended_word
    when :unsigned_byte
      if (hasAtLeastOneOperand)
        hasExtendedWord = true
        extendedWordIsByte = true
        op.encoding.push :blank
        op.operand_2_target = :extended_byte
      else
        hasByte = true
        hasAtLeastOneOperand = true
        op.operand_2_target = :param_byte
      end
    when :signed_byte
      if (hasAtLeastOneOperand)
        hasExtendedWord = true
        extendedWordIsByte = true
        op.encoding.push :blank
        op.operand_2_target = :extended_byte
      else
        hasByte = true
        hasAtLeastOneOperand = true
        op.encoding.push :byte
        op.operand_2_target = :param_byte
      end
    when :unsigned_nibble
        op.encoding.push :nibble
        op.operand_2_target = :param_b
    when :signed_nibble
        op.encoding.push :nibble
        op.operand_2_target = :param_b
    else
        if (hasByte == false)
          op.encoding.push :blank
        end
  end

  if (hasExtendedWord)
    if (extendedWordIsByte)
      op.encoding.push :byte_as_word
    else
      op.encoding.push :word
    end
  end

end

class Instruction
  attr_accessor :ops,
                :name,
                :definition
  def initialize(name)
    @ops = []
    @name = name
    @definition = nil
  end
end


def ReadOpcodes()
  opcodes = []
  instructions = Hash.new

  256.times do |idx|
    opcodes.push Opcode.new(idx)
  end

  desc = YAML.load_file("../../Documentation/CPU16/Opcodes.yaml")

  base = 0
  desc.each do |family|
    offset = 0
    family.each do |instruction|
      if (offset == 4)
        puts "Syntax Error: #{instruction}. Unexpected 5th opcode in instruction quartet!"
        next
      end

      name, operands = instruction.split(' ', 2)
      operand_1 = nil
      operand_2 = nil
      operand_size = 0

      if (operands != nil)
        operand_1, operand_2 = operands.strip.split(',')
      end

      index = base + (offset << 6)

      op = opcodes[index]

      if (op == nil)
        puts "Syntax Error: #{instruction} has an out of range opcode #{index}"
        next
      end

      if (name == nil)
        puts "Syntax Error: #{instruction}"
        next
      end

      if (name.end_with? '.b')
        name.chop!.chop!
        op.type = :byte
      elsif (name.end_with? '.w')
        name.chop!.chop!
        op.type = :word
      end

      op.instruction = name.to_sym

      #puts name

      if (operand_1 != nil)
        type, name = operand_1.strip.split(':')

        if (type == nil || name == nil)
          puts "Syntax Error: #{instruction}. Operand1 is incorrect syntax #{operand_1}"
          next
        end

        op.operand_1_type = ParameterTypeToType(type)
        op.operand_1_name = name.to_sym

        operand_size = 1

        #puts "#{type} #{name}"
      end

      if (operand_2 != nil)
        type, name = operand_2.strip.split(':')

        if (type == nil || name == nil)
          puts "Syntax Error: #{instruction}. Operand2 is incorrect syntax #{operand_2}"
          next
        end

        op.operand_2_type = ParameterTypeToType(type)
        op.operand_2_name = name.to_sym

        operand_size = 2

      end

      # puts op.inspect

      if (instructions[op.instruction] == nil)
         instructions[op.instruction] = Instruction.new(op.instruction)
      end

      CalculateEncoding(op)

      ins = instructions[op.instruction]
      ins.ops.push op

      offset = offset + 1
    end
    base = base + 1
  end

  return instructions.sort
end
