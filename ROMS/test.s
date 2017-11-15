OP_RJMP=$AA
OP_JMP=$BB

macro verify.u8 n  { verify.n n, 0, 255 }
macro verify.i8 n  { verify.n n, -128, 127 }
macro verify.u16 n { verify.n n, 0, 65535 }

macro jmp [a, b] {
 common
 define ?s 0
  match ~x, a \{ ; indirect
    .here:
      addr = x - .here
      if (addr < -128 | addr > 127)
        'Address exceeds relative range'
      end if
      db OP_RJMP
      db addr
      define ?s 1
  \}
  match i, a\{   ; x, y
    db OP_JMP_XY
  \}
  match j, a \{   ; x, y
    db OP_JMP_ZW
  \}
  match =0 x,\    ; absolute
   ?s a \{
    db OP_JMP
    dw x
  \}
}

macro rjmp [a] {
  .l:
    i = a - .l
    db $CC
    db i
}

c:
jmp i
jmp ~m
k:
jmp c
rjmp m
m:

repeat 1000
  db $88
end repeat

n:
