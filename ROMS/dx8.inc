; Common Addresses and Registers
MMU_BANK = $4000
RAND = $4001
MMU_B1 = $4010
MMU_B2 = $4011
MMU_W1 = $4012
MMU_W2 = $4014
MMU_W3 = $4016
STACK_END = $4200
GFX_PLANES = $5000
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
GFX_PTYPE0 = $5010
GFX_PTYPE1 = $5011
GFX_PTYPE2 = $5012
GFX_PTYPE3 = $5013
GFX_SCNLNE = $5020
GFX_B1 = $5030
GFX_B2 = $5031
GFX_W1 = $5032
GFX_W2 = $5034
GFX_W3 = $5036
GFX_TILES = $5800
GFX_PLANE0 = $8000
GFX_PLANE1 = $A800
GFX_PLANE2 = $D000
GFX_PLANE3 = $F800
GFX_PSIZE = $2800
GFX_TILE_SIZE = $0008

; Interrupts commands (int $01)
INT_MEMSET = $01    ; Set Shared Memory:  B1=value W1=address W2=length
INT_MEMCPY = $02    ; Copy Shared Memory: W1=dst W2=src W3=length
INT_PRG2MEM = $03    ; Copy Program Memory to Shared Memory: W1=dst W2=src W3=length
INT_DEFLATE = $04    ; Copy RLE Program Memory to Shared Memory and expand: W1=dst W2=src W3=length
INT_GPUSET = $10    ; Set GPU Memory:  B1=value W1=address W2=length
INT_PRG2GPU = $11    ; Copy Memory to GPU Memory: W1=dst W2=src W3=length
INT_CPU_RESET = $FF    ; Soft Reset
CPU_RESET = $01    ; Reset
CPU_HBLANK = $02    ; HBlank
CPU_VBLANK = $03    ; VBlank

; Interrupts commands (int $01)
INT_MEMSET = $01    ; Set Shared Memory:  B1=value W1=address W2=length
INT_MEMCPY = $02    ; Copy Shared Memory: W1=dst W2=src W3=length
INT_PRG2MEM = $03    ; Copy Program Memory to Shared Memory: W1=dst W2=src W3=length
INT_DEFLATE = $04    ; Copy RLE Program Memory to Shared Memory and expand: W1=dst W2=src W3=length
INT_GPUSET = $10    ; Set GPU Memory:  B1=value W1=address W2=length
INT_PRG2GPU = $11    ; Copy Memory to GPU Memory: W1=dst W2=src W3=length
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
    ; [$08] pop x
    db $08
  else if A eq y
    ; [$09] pop y
    db $09
  else if A eq z
    ; [$0A] pop z
    db $0A
  else if A eq w
    ; [$0B] pop w
    db $0B
  else if A eq a
    ; [$0C] pop a
    db $0C
  else
    error SyntaxError
  end if
}
macro push.f [A, B] {
  ; [$07] push.f
  db $07
}
macro pop.f [A, B] {
  ; [$0E] pop.f
  db $0E
}
macro push.a [A, B] {
  ; [$06] push.a
  db $06
}
macro pop.a [A, B] {
  ; [$0D] pop.a
  db $0D
}
macro load [A, B] {
  if A eq x
    ; [$0F] load x,$0000
    db $0F
    dw B
  else if A eq y
    ; [$10] load y,$0000
    db $10
    dw B
  else if A eq z
    ; [$11] load z,$0000
    db $11
    dw B
  else if A eq w
    ; [$12] load w,$0000
    db $12
    dw B
  else if A eq a
    ; [$13] load a,$0000
    db $13
    dw B
  else
    error SyntaxError
  end if
}
macro store [A, B] {
  if B eq x
    ; [$14] store $0000,x
    db $14
    dw A
  else if B eq y
    ; [$15] store $0000,y
    db $15
    dw A
  else if B eq z
    ; [$16] store $0000,z
    db $16
    dw A
  else if B eq w
    ; [$17] store $0000,w
    db $17
    dw A
  else if B eq a
    ; [$18] store $0000,a
    db $18
    dw A
  else
    error SyntaxError
  end if
}
macro call [A, B] {
  ; [$19] call $0000
  db $19
  dw A
}
macro return [A, B] {
  ; [$1A] return
  db $1A
}
macro set [A, B] {
  if A eq x
    ; [$1B] set x,$00
    db $1B
    db B
  else if A eq y
    ; [$1C] set y,$00
    db $1C
    db B
  else if A eq z
    ; [$1D] set z,$00
    db $1D
    db B
  else if A eq w
    ; [$1E] set w,$00
    db $1E
    db B
  else if A eq a
    ; [$1F] set a,$00
    db $1F
    db B
  else
    error SyntaxError
  end if
}
macro add [A, B] {
  if A eq a & B eq x
    ; [$20] add a,x
    db $20
  else if A eq a & B eq y
    ; [$21] add a,y
    db $21
  else if A eq a & B eq z
    ; [$22] add a,z
    db $22
  else if A eq a & B eq w
    ; [$23] add a,w
    db $23
  else if A eq a & B eq a
    ; [$24] add a,a
    db $24
  else if A eq x
    ; [$25] add x,$00
    db $25
    db B
  else if A eq y
    ; [$26] add y,$00
    db $26
    db B
  else if A eq z
    ; [$27] add z,$00
    db $27
    db B
  else if A eq w
    ; [$28] add w,$00
    db $28
    db B
  else if A eq a
    ; [$29] add a,$00
    db $29
    db B
  else
    error SyntaxError
  end if
}
macro adc [A, B] {
  if A eq a & B eq x
    ; [$2A] adc a,x
    db $2A
  else if A eq a & B eq y
    ; [$2B] adc a,y
    db $2B
  else if A eq a & B eq z
    ; [$2C] adc a,z
    db $2C
  else if A eq a & B eq w
    ; [$2D] adc a,w
    db $2D
  else if A eq a & B eq a
    ; [$2E] adc a,a
    db $2E
  else if A eq x
    ; [$2F] adc x,$00
    db $2F
    db B
  else if A eq y
    ; [$30] adc y,$00
    db $30
    db B
  else if A eq z
    ; [$31] adc z,$00
    db $31
    db B
  else if A eq w
    ; [$32] adc w,$00
    db $32
    db B
  else if A eq a
    ; [$33] adc a,$00
    db $33
    db B
  else
    error SyntaxError
  end if
}
macro sub [A, B] {
  if A eq a & B eq x
    ; [$34] sub a,x
    db $34
  else if A eq a & B eq y
    ; [$35] sub a,y
    db $35
  else if A eq a & B eq z
    ; [$36] sub a,z
    db $36
  else if A eq a & B eq w
    ; [$37] sub a,w
    db $37
  else if A eq x
    ; [$38] sub x,$00
    db $38
    db B
  else if A eq y
    ; [$39] sub y,$00
    db $39
    db B
  else if A eq z
    ; [$3A] sub z,$00
    db $3A
    db B
  else if A eq w
    ; [$3B] sub w,$00
    db $3B
    db B
  else if A eq a
    ; [$3C] sub a,$00
    db $3C
    db B
  else
    error SyntaxError
  end if
}
macro mul [A, B] {
  if A eq a & B eq x
    ; [$3D] mul a,x
    db $3D
  else if A eq a & B eq y
    ; [$3E] mul a,y
    db $3E
  else if A eq a & B eq z
    ; [$3F] mul a,z
    db $3F
  else if A eq a & B eq w
    ; [$40] mul a,w
    db $40
  else if A eq a & B eq a
    ; [$41] mul a,a
    db $41
  else if A eq x
    ; [$42] mul x,$00
    db $42
    db B
  else if A eq y
    ; [$43] mul y,$00
    db $43
    db B
  else if A eq z
    ; [$44] mul z,$00
    db $44
    db B
  else if A eq w
    ; [$45] mul w,$00
    db $45
    db B
  else if A eq a
    ; [$46] mul a,$00
    db $46
    db B
  else
    error SyntaxError
  end if
}
macro inc [A, B] {
  if A eq x
    ; [$47] inc x
    db $47
  else if A eq y
    ; [$48] inc y
    db $48
  else if A eq z
    ; [$49] inc z
    db $49
  else if A eq w
    ; [$4A] inc w
    db $4A
  else if A eq a
    ; [$4B] inc a
    db $4B
  else
    error SyntaxError
  end if
}
macro dec [A, B] {
  if A eq x
    ; [$4C] dec x
    db $4C
  else if A eq y
    ; [$4D] dec y
    db $4D
  else if A eq z
    ; [$4E] dec z
    db $4E
  else if A eq w
    ; [$4F] dec w
    db $4F
  else if A eq a
    ; [$50] dec a
    db $50
  else
    error SyntaxError
  end if
}
macro and [A, B] {
  if A eq a & B eq x
    ; [$5F] and a,x
    db $5F
  else if A eq a & B eq y
    ; [$60] and a,y
    db $60
  else if A eq a & B eq z
    ; [$61] and a,z
    db $61
  else if A eq a & B eq w
    ; [$62] and a,w
    db $62
  else if A eq x
    ; [$63] and x,$00
    db $63
    db B
  else if A eq y
    ; [$64] and y,$00
    db $64
    db B
  else if A eq z
    ; [$65] and z,$00
    db $65
    db B
  else if A eq w
    ; [$66] and w,$00
    db $66
    db B
  else if A eq a
    ; [$67] and a,$00
    db $67
    db B
  else
    error SyntaxError
  end if
}
macro or [A, B] {
  if A eq a & B eq x
    ; [$68] or a,x
    db $68
  else if A eq a & B eq y
    ; [$69] or a,y
    db $69
  else if A eq a & B eq z
    ; [$6A] or a,z
    db $6A
  else if A eq a & B eq w
    ; [$6B] or a,w
    db $6B
  else if A eq x
    ; [$6C] or x,$00
    db $6C
    db B
  else if A eq y
    ; [$6D] or y,$00
    db $6D
    db B
  else if A eq z
    ; [$6E] or z,$00
    db $6E
    db B
  else if A eq w
    ; [$6F] or w,$00
    db $6F
    db B
  else if A eq a
    ; [$70] or a,$00
    db $70
    db B
  else
    error SyntaxError
  end if
}
macro xor [A, B] {
  if A eq a & B eq x
    ; [$76] xor a,x
    db $76
  else if A eq a & B eq y
    ; [$77] xor a,y
    db $77
  else if A eq a & B eq z
    ; [$78] xor a,z
    db $78
  else if A eq a & B eq w
    ; [$79] xor a,w
    db $79
  else if A eq x
    ; [$7A] xor x,$00
    db $7A
    db B
  else if A eq y
    ; [$7B] xor y,$00
    db $7B
    db B
  else if A eq z
    ; [$7C] xor z,$00
    db $7C
    db B
  else if A eq w
    ; [$7D] xor w,$00
    db $7D
    db B
  else if A eq a
    ; [$7E] xor a,$00
    db $7E
    db B
  else
    error SyntaxError
  end if
}
macro not [A, B] {
  if A eq x
    ; [$71] not x
    db $71
  else if A eq y
    ; [$72] not y
    db $72
  else if A eq z
    ; [$73] not z
    db $73
  else if A eq w
    ; [$74] not w
    db $74
  else if A eq a
    ; [$75] not a
    db $75
  else
    error SyntaxError
  end if
}
macro shl [A, B] {
  if A eq x
    ; [$7F] shl x,$00
    db $7F
    db B
  else if A eq y
    ; [$80] shl y,$00
    db $80
    db B
  else if A eq z
    ; [$81] shl z,$00
    db $81
    db B
  else if A eq w
    ; [$82] shl w,$00
    db $82
    db B
  else if A eq a
    ; [$83] shl a,$00
    db $83
    db B
  else
    error SyntaxError
  end if
}
macro shr [A, B] {
  if A eq x
    ; [$84] shr x,$00
    db $84
    db B
  else if A eq y
    ; [$85] shr y,$00
    db $85
    db B
  else if A eq z
    ; [$86] shr z,$00
    db $86
    db B
  else if A eq w
    ; [$87] shr w,$00
    db $87
    db B
  else if A eq a
    ; [$88] shr a,$00
    db $88
    db B
  else
    error SyntaxError
  end if
}
macro rol [A, B] {
  if A eq x
    ; [$89] rol x
    db $89
  else if A eq y
    ; [$8A] rol y
    db $8A
  else if A eq z
    ; [$8B] rol z
    db $8B
  else if A eq w
    ; [$8C] rol w
    db $8C
  else if A eq a
    ; [$8D] rol a
    db $8D
  else
    error SyntaxError
  end if
}
macro ror [A, B] {
  if A eq x
    ; [$8E] ror x
    db $8E
  else if A eq y
    ; [$8F] ror y
    db $8F
  else if A eq z
    ; [$90] ror z
    db $90
  else if A eq w
    ; [$91] ror w
    db $91
  else if A eq a
    ; [$92] ror a
    db $92
  else
    error SyntaxError
  end if
}
macro cmp [A, B] {
  if A eq a & B eq x
    ; [$51] cmp a,x
    db $51
  else if A eq a & B eq y
    ; [$52] cmp a,y
    db $52
  else if A eq a & B eq z
    ; [$53] cmp a,z
    db $53
  else if A eq a & B eq w
    ; [$54] cmp a,w
    db $54
  else if A eq x
    ; [$55] cmp x,$00
    db $55
    db B
  else if A eq y
    ; [$56] cmp y,$00
    db $56
    db B
  else if A eq z
    ; [$57] cmp z,$00
    db $57
    db B
  else if A eq w
    ; [$58] cmp w,$00
    db $58
    db B
  else if A eq a
    ; [$59] cmp a,$00
    db $59
    db B
  else
    error SyntaxError
  end if
}
macro cmpbit [A, B] {
  if A eq x
    ; [$5A] cmpbit x
    db $5A
  else if A eq y
    ; [$5B] cmpbit y
    db $5B
  else if A eq z
    ; [$5C] cmpbit z
    db $5C
  else if A eq w
    ; [$5D] cmpbit w
    db $5D
  else if A eq a
    ; [$5E] cmpbit a
    db $5E
  else
    error SyntaxError
  end if
}
macro jmp [A, B] {
  if A eq x & B eq y
    ; [$94] jmp x,y
    db $94
  else if A eq z & B eq w
    ; [$95] jmp z,w
    db $95
  else if B eq x
    ; [$96] jmp $0000,x
    db $96
    dw A
  else if B eq y
    ; [$97] jmp $0000,y
    db $97
    dw A
  else if B eq z
    ; [$98] jmp $0000,z
    db $98
    dw A
  else if B eq w
    ; [$99] jmp $0000,w
    db $99
    dw A
  else if B eq a
    ; [$9A] jmp $0000,a
    db $9A
    dw A
  else
    ; [$93] jmp $0000
    db $93
    dw A
  end if
}
macro jmp.eq [A, B] {
  ; [$9B] jmp.eq $0000
  db $9B
  dw A
}
macro jmp.neq [A, B] {
  ; [$9C] jmp.neq $0000
  db $9C
  dw A
}
macro jmp.gt [A, B] {
  ; [$9D] jmp.gt $0000
  db $9D
  dw A
}
macro jmp.lt [A, B] {
  ; [$9E] jmp.lt $0000
  db $9E
  dw A
}
macro jmp.z [A, B] {
  ; [$9F] jmp.z $0000
  db $9F
  dw A
}
macro int [A, B] {
  ; [$A0] int $00
  db $A0
  db A
}
macro resume [A, B] {
  ; [$A1] resume
  db $A1
}
macro sec [A, B] {
  ; [$A2] sec
  db $A2
}
macro clc [A, B] {
  ; [$A3] clc
  db $A3
}
