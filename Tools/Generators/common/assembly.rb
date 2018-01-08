def AsmOperandToAddressNotation(type)
  if (type == :signed_register)
    return 'r'
  elsif (type == :unsigned_register)
    return 'r'
  elsif (type == :address_register_absolute)
    return '(r)'
  elsif (type == :address_register_relative)
    return '(PC + r)'
  elsif (type == :address_register_relative_word)
    return '(PC + $FFFFs)'
  elsif (type == :address_register_relative_byte)
    return '(PC + $FFs)'
  elsif (type == :unsigned_word)
    return '$FFFFu'
  elsif (type == :unsigned_byte)
    return '$FFu'
  elsif (type == :unsigned_nibble)
    return '$Fu'
  elsif (type == :signed_word)
    return '$FFFFs'
  elsif (type == :signed_byte)
    return '$FFs'
  elsif (type == :signed_nibble)
    return '$Fs'
  elsif (type == :none)
    return ''
  end
  return ''
end

def AsmTypeToType(type)
  if (type == :word)
    return 'word'
  elsif (type == :byte)
    return 'byte'
  else
    return 'none'
  end
end

def AsmIndexToIndex(index)
  "$%02X" % index
end
