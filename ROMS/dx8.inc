; Common Addresses and Registers
MMU_BANK = $4000
RAND = $4001
MMU_B1 = $4010
MMU_B2 = $4011
MMU_W1 = $4012
MMU_W2 = $4014
MMU_W3 = $4016
STACK_END = $4200
GFX_MODE = $5000
GFX_BGCOLR = $5001
GFX_BGCOLG = $5002
GFX_BGCOLB = $5003
GFX_SCNW0R = $5004
GFX_SCNW0G = $5005
GFX_SCNW0B = $5006
GFX_SCNW1R = $5007
GFX_SCNW1G = $5008
GFX_SCNW1B = $5009
GFX_SCNW2R = $500A
GFX_SCNW2G = $500B
GFX_SCNW2B = $500C
GFX_SCNW3R = $500D
GFX_SCNW3G = $500E
GFX_SCNW3B = $500F
GFX_SCNLNE = $5020

; Interrupts commands (int $01)
INT_MMU_MEMSET = $01    ; Set Shared Memory:  B1=value W1=address W2=length
INT_MMU_MEMCPY = $02    ; Copy Shared Memory: W1=dst W2=src W3=length
INT_MMU_PRGCPY = $03    ; Copy Program Memory to Shared Memory: W1=dst W2=src W3=length
INT_CPU_RESET = $FF    ; Soft Reset
CPU_RESET = $01    ; Reset
CPU_HBLANK = $02    ; HBlank
CPU_VBLANK = $03    ; VBlank

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
  if B eq x
    ; [$10] store $0000,x
    db $10
    dw A
  else if B eq y
    ; [$11] store $0000,y
    db $11
    dw A
  else if B eq z
    ; [$12] store $0000,z
    db $12
    dw A
  else if B eq w
    ; [$13] store $0000,w
    db $13
    dw A
  else if B eq a
    ; [$14] store $0000,a
    db $14
    dw A
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
macro inc [A, B] {
  if A eq x
    ; [$67] inc x
    db $67
  else if A eq y
    ; [$68] inc y
    db $68
  else if A eq z
    ; [$69] inc z
    db $69
  else if A eq w
    ; [$6A] inc w
    db $6A
  else if A eq a
    ; [$6B] inc a
    db $6B
  else
    error SyntaxError
  end if
}
macro dec [A, B] {
  if A eq x
    ; [$6C] dec x
    db $6C
  else if A eq y
    ; [$6D] dec y
    db $6D
  else if A eq z
    ; [$6E] dec z
    db $6E
  else if A eq w
    ; [$6F] dec w
    db $6F
  else if A eq a
    ; [$70] dec a
    db $70
  else
    error SyntaxError
  end if
}
macro and [A, B] {
  if A eq x & B eq y
    ; [$8F] and x,y
    db $8F
  else if A eq x & B eq z
    ; [$90] and x,z
    db $90
  else if A eq x & B eq w
    ; [$91] and x,w
    db $91
  else if A eq x & B eq a
    ; [$92] and x,a
    db $92
  else if A eq y & B eq x
    ; [$93] and y,x
    db $93
  else if A eq y & B eq z
    ; [$94] and y,z
    db $94
  else if A eq y & B eq w
    ; [$95] and y,w
    db $95
  else if A eq y & B eq a
    ; [$96] and y,a
    db $96
  else if A eq z & B eq x
    ; [$97] and z,x
    db $97
  else if A eq z & B eq y
    ; [$98] and z,y
    db $98
  else if A eq z & B eq w
    ; [$99] and z,w
    db $99
  else if A eq z & B eq a
    ; [$9A] and z,a
    db $9A
  else if A eq w & B eq x
    ; [$9B] and w,x
    db $9B
  else if A eq w & B eq y
    ; [$9C] and w,y
    db $9C
  else if A eq w & B eq z
    ; [$9D] and w,z
    db $9D
  else if A eq w & B eq a
    ; [$9E] and w,a
    db $9E
  else if A eq a & B eq x
    ; [$9F] and a,x
    db $9F
  else if A eq a & B eq y
    ; [$A0] and a,y
    db $A0
  else if A eq a & B eq z
    ; [$A1] and a,z
    db $A1
  else if A eq a & B eq w
    ; [$A2] and a,w
    db $A2
  else
    error SyntaxError
  end if
}
macro or [A, B] {
  if A eq x & B eq y
    ; [$A3] or x,y
    db $A3
  else if A eq x & B eq z
    ; [$A4] or x,z
    db $A4
  else if A eq x & B eq w
    ; [$A5] or x,w
    db $A5
  else if A eq x & B eq a
    ; [$A6] or x,a
    db $A6
  else if A eq y & B eq x
    ; [$A7] or y,x
    db $A7
  else if A eq y & B eq z
    ; [$A8] or y,z
    db $A8
  else if A eq y & B eq w
    ; [$A9] or y,w
    db $A9
  else if A eq y & B eq a
    ; [$AA] or y,a
    db $AA
  else if A eq z & B eq x
    ; [$AB] or z,x
    db $AB
  else if A eq z & B eq y
    ; [$AC] or z,y
    db $AC
  else if A eq z & B eq w
    ; [$AD] or z,w
    db $AD
  else if A eq z & B eq a
    ; [$AE] or z,a
    db $AE
  else if A eq w & B eq x
    ; [$AF] or w,x
    db $AF
  else if A eq w & B eq y
    ; [$B0] or w,y
    db $B0
  else if A eq w & B eq z
    ; [$B1] or w,z
    db $B1
  else if A eq w & B eq a
    ; [$B2] or w,a
    db $B2
  else if A eq a & B eq x
    ; [$B3] or a,x
    db $B3
  else if A eq a & B eq y
    ; [$B4] or a,y
    db $B4
  else if A eq a & B eq z
    ; [$B5] or a,z
    db $B5
  else if A eq a & B eq w
    ; [$B6] or a,w
    db $B6
  else
    error SyntaxError
  end if
}
macro xor [A, B] {
  if A eq x & B eq x
    ; [$BC] xor x,x
    db $BC
  else if A eq x & B eq y
    ; [$BD] xor x,y
    db $BD
  else if A eq x & B eq z
    ; [$BE] xor x,z
    db $BE
  else if A eq x & B eq w
    ; [$BF] xor x,w
    db $BF
  else if A eq x & B eq a
    ; [$C0] xor x,a
    db $C0
  else if A eq y & B eq x
    ; [$C1] xor y,x
    db $C1
  else if A eq y & B eq y
    ; [$C2] xor y,y
    db $C2
  else if A eq y & B eq z
    ; [$C3] xor y,z
    db $C3
  else if A eq y & B eq w
    ; [$C4] xor y,w
    db $C4
  else if A eq y & B eq a
    ; [$C5] xor y,a
    db $C5
  else if A eq z & B eq x
    ; [$C6] xor z,x
    db $C6
  else if A eq z & B eq y
    ; [$C7] xor z,y
    db $C7
  else if A eq z & B eq z
    ; [$C8] xor z,z
    db $C8
  else if A eq z & B eq w
    ; [$C9] xor z,w
    db $C9
  else if A eq z & B eq a
    ; [$CA] xor z,a
    db $CA
  else if A eq w & B eq x
    ; [$CB] xor w,x
    db $CB
  else if A eq w & B eq y
    ; [$CC] xor w,y
    db $CC
  else if A eq w & B eq z
    ; [$CD] xor w,z
    db $CD
  else if A eq w & B eq w
    ; [$CE] xor w,w
    db $CE
  else if A eq w & B eq a
    ; [$CF] xor w,a
    db $CF
  else if A eq a & B eq x
    ; [$D0] xor a,x
    db $D0
  else if A eq a & B eq y
    ; [$D1] xor a,y
    db $D1
  else if A eq a & B eq z
    ; [$D2] xor a,z
    db $D2
  else if A eq a & B eq w
    ; [$D3] xor a,w
    db $D3
  else if A eq a & B eq a
    ; [$D4] xor a,a
    db $D4
  else
    error SyntaxError
  end if
}
macro not [A, B] {
  if A eq x
    ; [$B7] not x
    db $B7
  else if A eq y
    ; [$B8] not y
    db $B8
  else if A eq z
    ; [$B9] not z
    db $B9
  else if A eq w
    ; [$BA] not w
    db $BA
  else if A eq a
    ; [$BB] not a
    db $BB
  else
    error SyntaxError
  end if
}
macro shl [A, B] {
  if A eq x
    ; [$D5] shl x
    db $D5
  else if A eq y
    ; [$D6] shl y
    db $D6
  else if A eq z
    ; [$D7] shl z
    db $D7
  else if A eq w
    ; [$D8] shl w
    db $D8
  else if A eq a
    ; [$D9] shl a
    db $D9
  else
    error SyntaxError
  end if
}
macro shr [A, B] {
  if A eq x
    ; [$DA] shr x
    db $DA
  else if A eq y
    ; [$DB] shr y
    db $DB
  else if A eq z
    ; [$DC] shr z
    db $DC
  else if A eq w
    ; [$DD] shr w
    db $DD
  else if A eq a
    ; [$DE] shr a
    db $DE
  else
    error SyntaxError
  end if
}
macro rol [A, B] {
  if A eq x
    ; [$DF] rol x
    db $DF
  else if A eq y
    ; [$E0] rol y
    db $E0
  else if A eq z
    ; [$E1] rol z
    db $E1
  else if A eq w
    ; [$E2] rol w
    db $E2
  else if A eq a
    ; [$E3] rol a
    db $E3
  else
    error SyntaxError
  end if
}
macro ror [A, B] {
  if A eq x
    ; [$E4] ror x
    db $E4
  else if A eq y
    ; [$E5] ror y
    db $E5
  else if A eq z
    ; [$E6] ror z
    db $E6
  else if A eq w
    ; [$E7] ror w
    db $E7
  else if A eq a
    ; [$E8] ror a
    db $E8
  else
    error SyntaxError
  end if
}
macro cmp [A, B] {
  if A eq x & B eq x
    ; [$71] cmp x,x
    db $71
  else if A eq x & B eq y
    ; [$72] cmp x,y
    db $72
  else if A eq x & B eq z
    ; [$73] cmp x,z
    db $73
  else if A eq x & B eq w
    ; [$74] cmp x,w
    db $74
  else if A eq x & B eq a
    ; [$75] cmp x,a
    db $75
  else if A eq y & B eq x
    ; [$76] cmp y,x
    db $76
  else if A eq y & B eq y
    ; [$77] cmp y,y
    db $77
  else if A eq y & B eq z
    ; [$78] cmp y,z
    db $78
  else if A eq y & B eq w
    ; [$79] cmp y,w
    db $79
  else if A eq y & B eq a
    ; [$7A] cmp y,a
    db $7A
  else if A eq z & B eq x
    ; [$7B] cmp z,x
    db $7B
  else if A eq z & B eq y
    ; [$7C] cmp z,y
    db $7C
  else if A eq z & B eq z
    ; [$7D] cmp z,z
    db $7D
  else if A eq z & B eq w
    ; [$7E] cmp z,w
    db $7E
  else if A eq z & B eq a
    ; [$7F] cmp z,a
    db $7F
  else if A eq w & B eq x
    ; [$80] cmp w,x
    db $80
  else if A eq w & B eq y
    ; [$81] cmp w,y
    db $81
  else if A eq w & B eq z
    ; [$82] cmp w,z
    db $82
  else if A eq w & B eq w
    ; [$83] cmp w,w
    db $83
  else if A eq w & B eq a
    ; [$84] cmp w,a
    db $84
  else if A eq a & B eq x
    ; [$85] cmp a,x
    db $85
  else if A eq a & B eq y
    ; [$86] cmp a,y
    db $86
  else if A eq a & B eq z
    ; [$87] cmp a,z
    db $87
  else if A eq a & B eq w
    ; [$88] cmp a,w
    db $88
  else if A eq a & B eq a
    ; [$89] cmp a,a
    db $89
  else
    error SyntaxError
  end if
}
macro cmpbit [A, B] {
  if A eq x
    ; [$8A] cmpbit x
    db $8A
  else if A eq y
    ; [$8B] cmpbit y
    db $8B
  else if A eq z
    ; [$8C] cmpbit z
    db $8C
  else if A eq w
    ; [$8D] cmpbit w
    db $8D
  else if A eq a
    ; [$8E] cmpbit a
    db $8E
  else
    error SyntaxError
  end if
}
macro jmp [A, B] {
  if A eq x & B eq y
    ; [$EA] jmp x,y
    db $EA
  else if A eq z & B eq w
    ; [$EB] jmp z,w
    db $EB
  else if B eq x
    ; [$EC] jmp $0000,x
    db $EC
    dw A
  else if B eq y
    ; [$ED] jmp $0000,y
    db $ED
    dw A
  else if B eq z
    ; [$EE] jmp $0000,z
    db $EE
    dw A
  else if B eq w
    ; [$EF] jmp $0000,w
    db $EF
    dw A
  else if B eq a
    ; [$F0] jmp $0000,a
    db $F0
    dw A
  else
    ; [$E9] jmp $0000
    db $E9
    dw A
  end if
}
macro jmp.eq [A, B] {
  ; [$F1] jmp.eq $0000
  db $F1
  dw A
}
macro jmp.neq [A, B] {
  ; [$F2] jmp.neq $0000
  db $F2
  dw A
}
macro jmp.gt [A, B] {
  ; [$F3] jmp.gt $0000
  db $F3
  dw A
}
macro jmp.lt [A, B] {
  ; [$F4] jmp.lt $0000
  db $F4
  dw A
}
macro jmp.z [A, B] {
  ; [$F5] jmp.z $0000
  db $F5
  dw A
}
macro int [A, B] {
  ; [$F6] int #$00
  db $F6
  db A
}
macro resume [A, B] {
  ; [$F7] resume
  db $F7
}
