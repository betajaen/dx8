class CInstruction
  attr_accessor :ins,
                :op,
                :pcread,        # Uses a PCRead for extension word
                :memFirst,      # Memory fetch is in the first opcode
                :nomemory,      # Does not use memory (including pcreads)
                :subcycles,     # C code for each cycle
                :datatype,      # none, word or byte
                :operands       # operands to C code

  def initialize(ins, op)
    @ins = ins
    @op = op
    @pcread = false
    @memFirst = false
    @nomemory = false
    @subcycles = []
    @operands = Hash.new

    BuildInstruction()
  end

  def BuildInstructionLabel()
    return "ins_#{op.index}_#{@subcycles.length + 1}"
  end

  def BuildCCR(flags, t, size)
    s = ''
    case flags['N']
      when :set
        if (size == :byte)
          s << "FLAG_N = ((#{t}) & 0x80) != 0;\n"
        elsif (size == :word)
          s << "FLAG_N = ((#{t}) & 0x8000) != 0;\n"
        else
          s << "Unknown Type for N"
        end
      when :clear
        s << "FLAG_N = 0;\n"
      when true
          s << "FLAG_N = 1;\n"
      when false
          s << "FLAG_N = 0;\n"
      when :true
          s << "FLAG_N = 1;\n"
      when :false
          s << "FLAG_N = 0;\n"
    end

    case flags['V']
      when :set
        if (size == :byte)
          s << "FLAG_V = CHECK_OVERFLOW(#{t});\n"
        elsif (size == :word)
          s << "FLAG_V = CHECK_OVERFLOW(#{t});\n"
        else
          s << "Unknown Type for N"
        end
      when :clear
          s << "FLAG_V = 0;\n"
      when true
          s << "FLAG_V = 1;\n"
      when false
          s << "FLAG_V = 0;\n"
      when :true
          s << "FLAG_V = 1;\n"
      when :false
          s << "FLAG_V = 0;\n"
    end

    case flags['Z']
      when :set
        if (size == :byte)
          s << "FLAG_Z = (#{t} == 0);\n"
        elsif (size == :word)
          s << "FLAG_Z = ((#{t} & 0xFF) == 0);\n"
        else
          s << "Unknown Type for Z"
        end
      when :clear
          s << "FLAG_Z = 0;\n"
      when true
          s << "FLAG_Z = 1;\n"
      when false
          s << "FLAG_Z = 0;\n"
      when :true
          s << "FLAG_Z = 1;\n"
      when :false
          s << "FLAG_Z = 0;\n"
    end

    case flags['C']
      when :set
        if (size == :byte)
          s << "FLAG_C = CHECK_CARRY_BYTE(#{t});\n"
        elsif (size == :word)
          s << "FLAG_C = CHECK_CARRY_WORD(#{t});\n"
        else
          s << "Unknown Type for C"
        end
      when :clear
          s << "FLAG_C = 0;\n"
      when true
          s << "FLAG_C = 1;\n"
      when false
          s << "FLAG_C = 0;\n"
      when :true
          s << "FLAG_C = 1;\n"
      when :false
          s << "FLAG_C = 0;\n"
    end

    return s.rstrip;
  end

  def BuildCodeInstruction()
    operations = @ins.definition.operations[op.type]

    nextInstructionAddLabel = false;
    nextInstructionLabel = ''
    s = ''

    if (pcread)
      nextInstructionAddLabel = true;
      nextInstructionLabel = BuildInstructionLabel()
      s << "*subCycle++;\n"
      s << "if (Cpu16_PcReadToMdr() == 2)\n"
      s << "  goto #{nextInstructionLabel};\n"
      @subcycles.push(s)
      s = ''
    end

    operations.each do |line|
      if (nextInstructionAddLabel == true)
        nextInstructionAddLabel = false
        s << "#{nextInstructionLabel}:\n"
      end

      if (line.include?('CCR'))
        m = line.match /CCR\((\w+)\)/
        if (ins.definition.flags == nil)
          line = "Missing flags for this instruction!"
        else
          line = BuildCCR(ins.definition.flags, m[1], op.type)
        end
      end

      s << line
      s << "\n"

      if (line.include?('BUS_') || line.include?('Cpu16_FlushPrefetch'))
        s << "*subCycle++;"
        s << "\n"
        @subcycles.push(s)
        s = ''
      end
    end

    s << "*subCycle = 0xFF;"
    s << "\n"

    if (s.length > 0)
        @subcycles.push(s)
    end

  end

  def BuildBranchInstruction()

    # TODO:
    # If this is a branch instructions then we shouldn't even bother fetching
    # the address extended word/byte until we know it's true - to save a
    # bus cycle!

  end

  def RegisterAccessor(type, signed, accessor)
    if (type == :word)
      if (signed)
        return "CPU.reg.registers[#{accessor}].sw"
      else
        return "CPU.reg.registers[#{accessor}].w"
      end
    elsif (signed)
      if (signed)
        return "CPU.reg.registers[#{accessor}].b"
      else
        return "CPU.reg.registers[#{accessor}].sb"
      end
    end

    return "CPU.reg.registers[#{accessor}].w"
  end

  def BuildInstruction()
    # Check for any PC Read/Extension word/byte in the op.encoding
    @pcread = op.encoding.include?(:word) || op.encoding.include?(:byte_as_word)

    if (@ins.definition.operations != nil)
      BuildCodeInstruction()
    elsif (@ins.definition.branch != nil)
      BuildBranchInstruction()
    end


    BuildOperand(op.operand_1_name, op.operand_1_target)
    BuildOperand(op.operand_2_name, op.operand_2_target)
  end

  def BuildOperand(name, target)
    if (name == :none || target == :none)
      return
    end

    case target
      when :param_a_register
          @operands[name.to_s] = RegisterAccessor(op.type, @ins.definition.signed, 'LO_NIBBLE(operand)')
      when :param_b_register
          @operands[name.to_s] = RegisterAccessor(op.type, @ins.definition.signed, 'HI_NIBBLE(operand)')
      when :param_a
        @operands[name.to_s] = '(LO_NIBBLE(operand))'
      when :param_b
        @operands[name.to_s] = '(HI_NIBBLE(operand))'
      when :param_byte
        @operands[name.to_s] = '(operand)'
      when :extended_word
        if (@ins.definition.signed)
          @operands[name.to_s] = 'CPU.mdr.sw'
        else
          @operands[name.to_s] = 'CPU.mdr.w'
        end
      when :extended_byte
        if (@ins.definition.signed)
          @operands[name.to_s] = 'CPU.mdr.sb'
        else
          @operands[name.to_s] = 'CPU.mdr.b'
        end
    end

    # puts "#{name} #{target}"
  end

end
