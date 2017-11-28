s = StringIO.new

def ReplaceOp(line,pattern, with)
  line.gsub!(pattern, with)
end

def ReplaceOpMaybeZp(line, pattern, with)
  m = line.match(pattern)
  if (m)
    ad = 'ABS'
    if (m[1].to_i(16) < 256)
      ad = 'ZPG'
    end

    line.gsub!(pattern, with.sub('ad', ad))
  end
end

def Comment(line, pattern)
  if line.match(pattern)
    return line.insert(0, ';<<< '), true
  end

  return line, false
end

def LabelLine(line)
  m = line.match /^(\w+)(\s+)/
  if (m)
    pad = ''.ljust(m[1].length + m[2].length)
    line.gsub! /^(\w+)\s+(.*)/, "\\1:\n#{pad}\\2"
  end
end

s << "include '../dx8.inc'\n"
s << "include '../dx8_crt.inc'\n"
s << "include '../dx8_6502.inc'\n"

File.readlines('tinybasic_6502.asm').each do |line|

  line, didComment = Comment(line, /\.org\s+/)
  if (didComment)
    s << line
    next
  end

  LabelLine(line)
  ReplaceOp(line, /\.db/, ' db')
  ReplaceOp(line, /\.dw/, ' dw')
  ReplaceOp(line, /\.dd/, ' dd')

  ReplaceOp(line, /tax/, '_6502_TAX')
  ReplaceOp(line, /tay/, '_6502_TAY')
  ReplaceOp(line, /txa/, '_6502_TXA')
  ReplaceOp(line, /tya/, '_6502_TYA')
  ReplaceOp(line, /pha/, '_6502_PHA')
  ReplaceOp(line, /php/, '_6502_PHP')
  ReplaceOp(line, /rti/, '_6502_RTI')

  ReplaceOp(line, /lda\s+#(\$?\w+)/, '_6502_LDA_IMM \1')
  ReplaceOp(line, /ldx\s+#(\$?\w+)/, '_6502_LDX_IMM \1')
  ReplaceOp(line, /ldy\s+#(\$?\w+)/, '_6502_LDY_IMM \1')

  ReplaceOp(line, /bcs\s+(\w+)/, '_6502_BCS_ABS \1')
  ReplaceOp(line, /bcc\s+(\w+)/, '_6502_BCC_ABS \1')

  ReplaceOp(line, /asl/, '_6502_ASL')


  ReplaceOp(line, /cmp\s+#(\$?\w+)/, '_6502_CMP_IMM \1')


  ReplaceOpMaybeZp(line, /sta\s+\$?(\w+)/, '_6502_STA_ad $\1')

  s << line
end

File.open("tinybasic.s", "w") {|f| f.write s.string }
