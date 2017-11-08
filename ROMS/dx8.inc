; Common Addresses and Registers
MMU_BANK = $4000
MMU_B1 = $4010
MMU_B2 = $4011
MMU_W1 = $4012
MMU_W2 = $4014
MMU_W3 = $4016
STACK_END = $4200
GFX_MODE = $5000

; Interrupts commands (int $01)
INT_MMU_MEMSET = $01    ; Set Shared Memory:  B1=value W1=address W2=length.
INT_MMU_MEMCPY = $02    ; Copy Shared Memory: W1=dst W2=src W3=length.
INT_MMU_RSTSFT = $FF    ; Soft Reset

; X8 Processor Instructions
macro nop [A, B] {
  ; [$00] nop
  db $00
}
macro push [A, B] {
  if A eq x
    ; [$01] push x
    db $01
  else if A eq y
    ; [$02] push y
    db $02
  else if A eq z
    ; [$03] push z
    db $03
  else if A eq w
    ; [$04] push w
    db $04
  else if A eq a
    ; [$05] push a
    db $05
  else
    error SyntaxError
  end if
}
macro pop [A, B] {
  if A eq x
    ; [$06] pop x
    db $06
  else if A eq y
    ; [$07] pop y
    db $07
  else if A eq z
    ; [$08] pop z
    db $08
  else if A eq w
    ; [$09] pop w
    db $09
  else if A eq a
    ; [$0A] pop a
    db $0A
  else
    error SyntaxError
  end if
}
macro load [A, B] {
  if A eq x
    ; [$0B] load x,$0000
    db $0B
    dw B
  else if A eq y
    ; [$0C] load y,$0000
    db $0C
    dw B
  else if A eq z
    ; [$0D] load z,$0000
    db $0D
    dw B
  else if A eq w
    ; [$0E] load w,$0000
    db $0E
    dw B
  else if A eq a
    ; [$0F] load a,$0000
    db $0F
    dw B
  else
    error SyntaxError
  end if
}
macro store [A, B] {
  if A eq x
    ; [$10] store x,$0000
    db $10
    dw B
  else if A eq y
    ; [$11] store y,$0000
    db $11
    dw B
  else if A eq z
    ; [$12] store z,$0000
    db $12
    dw B
  else if A eq w
    ; [$13] store w,$0000
    db $13
    dw B
  else if A eq a
    ; [$14] store a,$0000
    db $14
    dw B
  else
    error SyntaxError
  end if
}
macro call [A, B] {
  ; [$15] call $0000
  db $15
  dw A
}
macro return [A, B] {
  ; [$16] return
  db $16
}
macro set [A, B] {
  if A eq x
    ; [$17] set x,#$00
    db $17
    db B
  else if A eq y
    ; [$18] set y,#$00
    db $18
    db B
  else if A eq z
    ; [$19] set z,#$00
    db $19
    db B
  else if A eq w
    ; [$1A] set w,#$00
    db $1A
    db B
  else if A eq a
    ; [$1B] set a,#$00
    db $1B
    db B
  else
    error SyntaxError
  end if
}
macro add [A, B] {
  if A eq x & B eq x
    ; [$1C] add x,x
    db $1C
  else if A eq x & B eq y
    ; [$1D] add x,y
    db $1D
  else if A eq x & B eq z
    ; [$1E] add x,z
    db $1E
  else if A eq x & B eq w
    ; [$1F] add x,w
    db $1F
  else if A eq x & B eq a
    ; [$20] add x,a
    db $20
  else if A eq y & B eq x
    ; [$21] add y,x
    db $21
  else if A eq y & B eq y
    ; [$22] add y,y
    db $22
  else if A eq y & B eq z
    ; [$23] add y,z
    db $23
  else if A eq y & B eq w
    ; [$24] add y,w
    db $24
  else if A eq y & B eq a
    ; [$25] add y,a
    db $25
  else if A eq z & B eq x
    ; [$26] add z,x
    db $26
  else if A eq z & B eq y
    ; [$27] add z,y
    db $27
  else if A eq z & B eq z
    ; [$28] add z,z
    db $28
  else if A eq z & B eq w
    ; [$29] add z,w
    db $29
  else if A eq z & B eq a
    ; [$2A] add z,a
    db $2A
  else if A eq w & B eq x
    ; [$2B] add w,x
    db $2B
  else if A eq w & B eq y
    ; [$2C] add w,y
    db $2C
  else if A eq w & B eq z
    ; [$2D] add w,z
    db $2D
  else if A eq w & B eq w
    ; [$2E] add w,w
    db $2E
  else if A eq w & B eq a
    ; [$2F] add w,a
    db $2F
  else if A eq a & B eq x
    ; [$30] add a,x
    db $30
  else if A eq a & B eq y
    ; [$31] add a,y
    db $31
  else if A eq a & B eq z
    ; [$32] add a,z
    db $32
  else if A eq a & B eq w
    ; [$33] add a,w
    db $33
  else if A eq a & B eq a
    ; [$34] add a,a
    db $34
  else
    error SyntaxError
  end if
}
macro sub [A, B] {
  if A eq x & B eq x
    ; [$35] sub x,x
    db $35
  else if A eq x & B eq y
    ; [$36] sub x,y
    db $36
  else if A eq x & B eq z
    ; [$37] sub x,z
    db $37
  else if A eq x & B eq w
    ; [$38] sub x,w
    db $38
  else if A eq x & B eq a
    ; [$39] sub x,a
    db $39
  else if A eq y & B eq x
    ; [$3A] sub y,x
    db $3A
  else if A eq y & B eq y
    ; [$3B] sub y,y
    db $3B
  else if A eq y & B eq z
    ; [$3C] sub y,z
    db $3C
  else if A eq y & B eq w
    ; [$3D] sub y,w
    db $3D
  else if A eq y & B eq a
    ; [$3E] sub y,a
    db $3E
  else if A eq z & B eq x
    ; [$3F] sub z,x
    db $3F
  else if A eq z & B eq y
    ; [$40] sub z,y
    db $40
  else if A eq z & B eq z
    ; [$41] sub z,z
    db $41
  else if A eq z & B eq w
    ; [$42] sub z,w
    db $42
  else if A eq z & B eq a
    ; [$43] sub z,a
    db $43
  else if A eq w & B eq x
    ; [$44] sub w,x
    db $44
  else if A eq w & B eq y
    ; [$45] sub w,y
    db $45
  else if A eq w & B eq z
    ; [$46] sub w,z
    db $46
  else if A eq w & B eq w
    ; [$47] sub w,w
    db $47
  else if A eq w & B eq a
    ; [$48] sub w,a
    db $48
  else if A eq a & B eq x
    ; [$49] sub a,x
    db $49
  else if A eq a & B eq y
    ; [$4A] sub a,y
    db $4A
  else if A eq a & B eq z
    ; [$4B] sub a,z
    db $4B
  else if A eq a & B eq w
    ; [$4C] sub a,w
    db $4C
  else if A eq a & B eq a
    ; [$4D] sub a,a
    db $4D
  else
    error SyntaxError
  end if
}
macro mul [A, B] {
  if A eq x & B eq x
    ; [$4E] mul x,x
    db $4E
  else if A eq x & B eq y
    ; [$4F] mul x,y
    db $4F
  else if A eq x & B eq z
    ; [$50] mul x,z
    db $50
  else if A eq x & B eq w
    ; [$51] mul x,w
    db $51
  else if A eq x & B eq a
    ; [$52] mul x,a
    db $52
  else if A eq y & B eq x
    ; [$53] mul y,x
    db $53
  else if A eq y & B eq y
    ; [$54] mul y,y
    db $54
  else if A eq y & B eq z
    ; [$55] mul y,z
    db $55
  else if A eq y & B eq w
    ; [$56] mul y,w
    db $56
  else if A eq y & B eq a
    ; [$57] mul y,a
    db $57
  else if A eq z & B eq x
    ; [$58] mul z,x
    db $58
  else if A eq z & B eq y
    ; [$59] mul z,y
    db $59
  else if A eq z & B eq z
    ; [$5A] mul z,z
    db $5A
  else if A eq z & B eq w
    ; [$5B] mul z,w
    db $5B
  else if A eq z & B eq a
    ; [$5C] mul z,a
    db $5C
  else if A eq w & B eq x
    ; [$5D] mul w,x
    db $5D
  else if A eq w & B eq y
    ; [$5E] mul w,y
    db $5E
  else if A eq w & B eq z
    ; [$5F] mul w,z
    db $5F
  else if A eq w & B eq w
    ; [$60] mul w,w
    db $60
  else if A eq w & B eq a
    ; [$61] mul w,a
    db $61
  else if A eq a & B eq x
    ; [$62] mul a,x
    db $62
  else if A eq a & B eq y
    ; [$63] mul a,y
    db $63
  else if A eq a & B eq z
    ; [$64] mul a,z
    db $64
  else if A eq a & B eq w
    ; [$65] mul a,w
    db $65
  else if A eq a & B eq a
    ; [$66] mul a,a
    db $66
  else
    error SyntaxError
  end if
}
macro and [A, B] {
  if A eq x & B eq y
    ; [$85] and x,y
    db $85
  else if A eq x & B eq z
    ; [$86] and x,z
    db $86
  else if A eq x & B eq w
    ; [$87] and x,w
    db $87
  else if A eq x & B eq a
    ; [$88] and x,a
    db $88
  else if A eq y & B eq x
    ; [$89] and y,x
    db $89
  else if A eq y & B eq z
    ; [$8A] and y,z
    db $8A
  else if A eq y & B eq w
    ; [$8B] and y,w
    db $8B
  else if A eq y & B eq a
    ; [$8C] and y,a
    db $8C
  else if A eq z & B eq x
    ; [$8D] and z,x
    db $8D
  else if A eq z & B eq y
    ; [$8E] and z,y
    db $8E
  else if A eq z & B eq w
    ; [$8F] and z,w
    db $8F
  else if A eq z & B eq a
    ; [$90] and z,a
    db $90
  else if A eq w & B eq x
    ; [$91] and w,x
    db $91
  else if A eq w & B eq y
    ; [$92] and w,y
    db $92
  else if A eq w & B eq z
    ; [$93] and w,z
    db $93
  else if A eq w & B eq a
    ; [$94] and w,a
    db $94
  else if A eq a & B eq x
    ; [$95] and a,x
    db $95
  else if A eq a & B eq y
    ; [$96] and a,y
    db $96
  else if A eq a & B eq z
    ; [$97] and a,z
    db $97
  else if A eq a & B eq w
    ; [$98] and a,w
    db $98
  else
    error SyntaxError
  end if
}
macro or [A, B] {
  if A eq x & B eq y
    ; [$99] or x,y
    db $99
  else if A eq x & B eq z
    ; [$9A] or x,z
    db $9A
  else if A eq x & B eq w
    ; [$9B] or x,w
    db $9B
  else if A eq x & B eq a
    ; [$9C] or x,a
    db $9C
  else if A eq y & B eq x
    ; [$9D] or y,x
    db $9D
  else if A eq y & B eq z
    ; [$9E] or y,z
    db $9E
  else if A eq y & B eq w
    ; [$9F] or y,w
    db $9F
  else if A eq y & B eq a
    ; [$A0] or y,a
    db $A0
  else if A eq z & B eq x
    ; [$A1] or z,x
    db $A1
  else if A eq z & B eq y
    ; [$A2] or z,y
    db $A2
  else if A eq z & B eq w
    ; [$A3] or z,w
    db $A3
  else if A eq z & B eq a
    ; [$A4] or z,a
    db $A4
  else if A eq w & B eq x
    ; [$A5] or w,x
    db $A5
  else if A eq w & B eq y
    ; [$A6] or w,y
    db $A6
  else if A eq w & B eq z
    ; [$A7] or w,z
    db $A7
  else if A eq w & B eq a
    ; [$A8] or w,a
    db $A8
  else if A eq a & B eq x
    ; [$A9] or a,x
    db $A9
  else if A eq a & B eq y
    ; [$AA] or a,y
    db $AA
  else if A eq a & B eq z
    ; [$AB] or a,z
    db $AB
  else if A eq a & B eq w
    ; [$AC] or a,w
    db $AC
  else
    error SyntaxError
  end if
}
macro xor [A, B] {
  if A eq x & B eq x
    ; [$B2] xor x,x
    db $B2
  else if A eq x & B eq y
    ; [$B3] xor x,y
    db $B3
  else if A eq x & B eq z
    ; [$B4] xor x,z
    db $B4
  else if A eq x & B eq w
    ; [$B5] xor x,w
    db $B5
  else if A eq x & B eq a
    ; [$B6] xor x,a
    db $B6
  else if A eq y & B eq x
    ; [$B7] xor y,x
    db $B7
  else if A eq y & B eq y
    ; [$B8] xor y,y
    db $B8
  else if A eq y & B eq z
    ; [$B9] xor y,z
    db $B9
  else if A eq y & B eq w
    ; [$BA] xor y,w
    db $BA
  else if A eq y & B eq a
    ; [$BB] xor y,a
    db $BB
  else if A eq z & B eq x
    ; [$BC] xor z,x
    db $BC
  else if A eq z & B eq y
    ; [$BD] xor z,y
    db $BD
  else if A eq z & B eq z
    ; [$BE] xor z,z
    db $BE
  else if A eq z & B eq w
    ; [$BF] xor z,w
    db $BF
  else if A eq z & B eq a
    ; [$C0] xor z,a
    db $C0
  else if A eq w & B eq x
    ; [$C1] xor w,x
    db $C1
  else if A eq w & B eq y
    ; [$C2] xor w,y
    db $C2
  else if A eq w & B eq z
    ; [$C3] xor w,z
    db $C3
  else if A eq w & B eq w
    ; [$C4] xor w,w
    db $C4
  else if A eq w & B eq a
    ; [$C5] xor w,a
    db $C5
  else if A eq a & B eq x
    ; [$C6] xor a,x
    db $C6
  else if A eq a & B eq y
    ; [$C7] xor a,y
    db $C7
  else if A eq a & B eq z
    ; [$C8] xor a,z
    db $C8
  else if A eq a & B eq w
    ; [$C9] xor a,w
    db $C9
  else if A eq a & B eq a
    ; [$CA] xor a,a
    db $CA
  else
    error SyntaxError
  end if
}
macro not [A, B] {
  if A eq x
    ; [$AD] not x
    db $AD
  else if A eq y
    ; [$AE] not y
    db $AE
  else if A eq z
    ; [$AF] not z
    db $AF
  else if A eq w
    ; [$B0] not w
    db $B0
  else if A eq a
    ; [$B1] not a
    db $B1
  else
    error SyntaxError
  end if
}
macro shl [A, B] {
  if A eq x
    ; [$CB] shl x
    db $CB
  else if A eq y
    ; [$CC] shl y
    db $CC
  else if A eq z
    ; [$CD] shl z
    db $CD
  else if A eq w
    ; [$CE] shl w
    db $CE
  else if A eq a
    ; [$CF] shl a
    db $CF
  else
    error SyntaxError
  end if
}
macro shr [A, B] {
  if A eq x
    ; [$D0] shr x
    db $D0
  else if A eq y
    ; [$D1] shr y
    db $D1
  else if A eq z
    ; [$D2] shr z
    db $D2
  else if A eq w
    ; [$D3] shr w
    db $D3
  else if A eq a
    ; [$D4] shr a
    db $D4
  else
    error SyntaxError
  end if
}
macro rol [A, B] {
  if A eq x
    ; [$D5] rol x
    db $D5
  else if A eq y
    ; [$D6] rol y
    db $D6
  else if A eq z
    ; [$D7] rol z
    db $D7
  else if A eq w
    ; [$D8] rol w
    db $D8
  else if A eq a
    ; [$D9] rol a
    db $D9
  else
    error SyntaxError
  end if
}
macro ror [A, B] {
  if A eq x
    ; [$DA] ror x
    db $DA
  else if A eq y
    ; [$DB] ror y
    db $DB
  else if A eq z
    ; [$DC] ror z
    db $DC
  else if A eq w
    ; [$DD] ror w
    db $DD
  else if A eq a
    ; [$DE] ror a
    db $DE
  else
    error SyntaxError
  end if
}
macro cmp [A, B] {
  if A eq x & B eq x
    ; [$67] cmp x,x
    db $67
  else if A eq x & B eq y
    ; [$68] cmp x,y
    db $68
  else if A eq x & B eq z
    ; [$69] cmp x,z
    db $69
  else if A eq x & B eq w
    ; [$6A] cmp x,w
    db $6A
  else if A eq x & B eq a
    ; [$6B] cmp x,a
    db $6B
  else if A eq y & B eq x
    ; [$6C] cmp y,x
    db $6C
  else if A eq y & B eq y
    ; [$6D] cmp y,y
    db $6D
  else if A eq y & B eq z
    ; [$6E] cmp y,z
    db $6E
  else if A eq y & B eq w
    ; [$6F] cmp y,w
    db $6F
  else if A eq y & B eq a
    ; [$70] cmp y,a
    db $70
  else if A eq z & B eq x
    ; [$71] cmp z,x
    db $71
  else if A eq z & B eq y
    ; [$72] cmp z,y
    db $72
  else if A eq z & B eq z
    ; [$73] cmp z,z
    db $73
  else if A eq z & B eq w
    ; [$74] cmp z,w
    db $74
  else if A eq z & B eq a
    ; [$75] cmp z,a
    db $75
  else if A eq w & B eq x
    ; [$76] cmp w,x
    db $76
  else if A eq w & B eq y
    ; [$77] cmp w,y
    db $77
  else if A eq w & B eq z
    ; [$78] cmp w,z
    db $78
  else if A eq w & B eq w
    ; [$79] cmp w,w
    db $79
  else if A eq w & B eq a
    ; [$7A] cmp w,a
    db $7A
  else if A eq a & B eq x
    ; [$7B] cmp a,x
    db $7B
  else if A eq a & B eq y
    ; [$7C] cmp a,y
    db $7C
  else if A eq a & B eq z
    ; [$7D] cmp a,z
    db $7D
  else if A eq a & B eq w
    ; [$7E] cmp a,w
    db $7E
  else if A eq a & B eq a
    ; [$7F] cmp a,a
    db $7F
  else
    error SyntaxError
  end if
}
macro cmpbit [A, B] {
  if A eq x
    ; [$80] cmpbit x,#$00
    db $80
    db B
  else if A eq y
    ; [$81] cmpbit y,#$00
    db $81
    db B
  else if A eq z
    ; [$82] cmpbit z,#$00
    db $82
    db B
  else if A eq w
    ; [$83] cmpbit w,#$00
    db $83
    db B
  else if A eq a
    ; [$84] cmpbit a,#$00
    db $84
    db B
  else
    error SyntaxError
  end if
}
macro jmp [A, B] {
  if A eq x & B eq y
    ; [$E0] jmp x,y
    db $E0
  else if A eq z & B eq w
    ; [$E1] jmp z,w
    db $E1
  else if A eq x
    ; [$E2] jmp x+$0000
    db $E2
    dw B
  else if A eq y
    ; [$E3] jmp y+$0000
    db $E3
    dw B
  else if A eq z
    ; [$E4] jmp z+$0000
    db $E4
    dw B
  else if A eq w
    ; [$E5] jmp w+$0000
    db $E5
    dw B
  else if A eq a
    ; [$E6] jmp a+$0000
    db $E6
    dw B
  else
    ; [$DF] jmp $0000
    db $DF
    dw A
  end if
}
macro jmp.eq [A, B] {
  ; [$E7] jmp.eq $0000
  db $E7
  dw A
}
macro jmp.neq [A, B] {
  ; [$E8] jmp.neq $0000
  db $E8
  dw A
}
macro jmp.gt [A, B] {
  ; [$E9] jmp.gt $0000
  db $E9
  dw A
}
macro jmp.lt [A, B] {
  ; [$EA] jmp.lt $0000
  db $EA
  dw A
}
macro int [A, B] {
  ; [$EB] int
  db $EB
  db B
}
