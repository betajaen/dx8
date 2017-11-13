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
GFX_SCANLINE = $5014
GFX_FRAMENUM = $5015
GFX_SECNDNUM = $5016
GFX_COUNTERS = $5017
GFX_B1 = $5030
GFX_B2 = $5031
GFX_W1 = $5032
GFX_W2 = $5034
GFX_W3 = $5036
GFX_TILES = $5800
FPY_INTMSG = $7001
FPY_STATE = $7002
FPY_TRACK = $7003
GFX_PLANE0 = $8000
GFX_PLANE1 = $A800
GFX_PLANE2 = $D000
GFX_PLANE3 = $F800
GFX_PSIZE = $2800
GFX_TILE_SIZE = $0008
GFX_FLG_COUNTERS_NEWFRAME = $0080
GFX_FLG_COUNTERS_ODDEVEN = $0040
GFX_FLG_COUNTERS_2 = $0002
GFX_FLG_COUNTERS_4 = $0004
GFX_FLG_COUNTERS_8 = $0008
GFX_FLG_COUNTERS_15 = $0010
GFX_FLG_COUNTERS_30 = $0020
IO_FPY_MSG_INSERT = $0000
IO_FPY_MSG_REMOVE = $0001
IO_FPY_MSG_SEEK = $0002
IO_FPY_MSG_READ = $0004
IO_FPY_MSG_WRITE = $0008
IO_FPY_MSG_ERROR = $0080
IO_FPY_STATE_DISK = $0001

; Interrupts commands (int $01)
INT_MEMSET = $01    ; Set Shared Memory:  B1=value W1=address W2=length
INT_MEMCPY = $02    ; Copy Shared Memory: W1=dst W2=src W3=length
INT_PRG2MEM = $03    ; Copy Program Memory to Shared Memory: W1=dst W2=src W3=length
INT_DEFLATE = $04    ; Copy RLE Program Memory to Shared Memory and expand: W1=dst W2=src W3=length
INT_GPUSET = $10    ; Set GPU Memory:  B1=value W1=address W2=length
INT_PRG2GPU = $11    ; Copy Memory to GPU Memory: W1=dst W2=src W3=length
INT_CPU_RESET = $FF    ; Soft Reset
CPU_RESET = $00    ; Reset
CPU_HBLANK = $01    ; HBlank
CPU_VBLANK = $02    ; VBlank
CPU_FLOPPY = $03    ; Floppy

; Interrupts commands (int $01)
INT_MEMSET = $01    ; Set Shared Memory:  B1=value W1=address W2=length
INT_MEMCPY = $02    ; Copy Shared Memory: W1=dst W2=src W3=length
INT_PRG2MEM = $03    ; Copy Program Memory to Shared Memory: W1=dst W2=src W3=length
INT_DEFLATE = $04    ; Copy RLE Program Memory to Shared Memory and expand: W1=dst W2=src W3=length
INT_GPUSET = $10    ; Set GPU Memory:  B1=value W1=address W2=length
INT_PRG2GPU = $11    ; Copy Memory to GPU Memory: W1=dst W2=src W3=length
INT_CPU_RESET = $FF    ; Soft Reset
CPU_RESET = $00    ; Reset
CPU_HBLANK = $01    ; HBlank
CPU_VBLANK = $02    ; VBlank
CPU_FLOPPY = $03    ; Floppy

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
  ; [$06] push.f
  db $06
}
macro pop.f [A, B] {
  ; [$0D] pop.f
  db $0D
}
macro push.r [A, B] {
  ; [$07] push.r
  db $07
}
macro pop.r [A, B] {
  ; [$0E] pop.r
  db $0E
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
    ; [$17] store $0000,x
    db $17
    dw A
  else if B eq y
    ; [$18] store $0000,y
    db $18
    dw A
  else if B eq z
    ; [$19] store $0000,z
    db $19
    dw A
  else if B eq w
    ; [$1A] store $0000,w
    db $1A
    dw A
  else if B eq a
    ; [$1B] store $0000,a
    db $1B
    dw A
  else
    error SyntaxError
  end if
}
macro load.xy [A, B] {
  if A eq a
    ; [$14] load.xy a
    db $14
  else if A eq z
    ; [$15] load.xy z
    db $15
  else if A eq w
    ; [$16] load.xy w
    db $16
  else
    error SyntaxError
  end if
}
macro store.xy [A, B] {
  if A eq a
    ; [$1C] store.xy a
    db $1C
  else if A eq z
    ; [$1D] store.xy z
    db $1D
  else if A eq w
    ; [$1E] store.xy w
    db $1E
  else
    error SyntaxError
  end if
}
macro call [A, B] {
  ; [$1F] call $0000
  db $1F
  dw A
}
macro return [A, B] {
  ; [$20] return
  db $20
}
macro set [A, B] {
  if A eq x
    ; [$21] set x,$00
    db $21
    db B
  else if A eq y
    ; [$22] set y,$00
    db $22
    db B
  else if A eq z
    ; [$23] set z,$00
    db $23
    db B
  else if A eq w
    ; [$24] set w,$00
    db $24
    db B
  else if A eq a
    ; [$25] set a,$00
    db $25
    db B
  else
    error SyntaxError
  end if
}
macro set.xy [A, B] {
  ; [$26] set.xy $0000
  db $26
  dw A
}
macro set.zw [A, B] {
  ; [$27] set.zw $0000
  db $27
  dw A
}
macro add [A, B] {
  if A eq a & B eq x
    ; [$28] add a,x
    db $28
  else if A eq a & B eq y
    ; [$29] add a,y
    db $29
  else if A eq a & B eq z
    ; [$2A] add a,z
    db $2A
  else if A eq a & B eq w
    ; [$2B] add a,w
    db $2B
  else if A eq a & B eq a
    ; [$2C] add a,a
    db $2C
  else if A eq x
    ; [$2D] add x,$00
    db $2D
    db B
  else if A eq y
    ; [$2E] add y,$00
    db $2E
    db B
  else if A eq z
    ; [$2F] add z,$00
    db $2F
    db B
  else if A eq w
    ; [$30] add w,$00
    db $30
    db B
  else if A eq a
    ; [$31] add a,$00
    db $31
    db B
  else
    error SyntaxError
  end if
}
macro adc [A, B] {
  if A eq a & B eq x
    ; [$32] adc a,x
    db $32
  else if A eq a & B eq y
    ; [$33] adc a,y
    db $33
  else if A eq a & B eq z
    ; [$34] adc a,z
    db $34
  else if A eq a & B eq w
    ; [$35] adc a,w
    db $35
  else if A eq a & B eq a
    ; [$36] adc a,a
    db $36
  else if A eq x
    ; [$37] adc x,$00
    db $37
    db B
  else if A eq y
    ; [$38] adc y,$00
    db $38
    db B
  else if A eq z
    ; [$39] adc z,$00
    db $39
    db B
  else if A eq w
    ; [$3A] adc w,$00
    db $3A
    db B
  else if A eq a
    ; [$3B] adc a,$00
    db $3B
    db B
  else
    error SyntaxError
  end if
}
macro adw [A, B] {
  ; [$3C] adw
  db $3C
}
macro sub [A, B] {
  if A eq a & B eq x
    ; [$3D] sub a,x
    db $3D
  else if A eq a & B eq y
    ; [$3E] sub a,y
    db $3E
  else if A eq a & B eq z
    ; [$3F] sub a,z
    db $3F
  else if A eq a & B eq w
    ; [$40] sub a,w
    db $40
  else if A eq x
    ; [$41] sub x,$00
    db $41
    db B
  else if A eq y
    ; [$42] sub y,$00
    db $42
    db B
  else if A eq z
    ; [$43] sub z,$00
    db $43
    db B
  else if A eq w
    ; [$44] sub w,$00
    db $44
    db B
  else if A eq a
    ; [$45] sub a,$00
    db $45
    db B
  else
    error SyntaxError
  end if
}
macro mul [A, B] {
  if A eq a & B eq x
    ; [$46] mul a,x
    db $46
  else if A eq a & B eq y
    ; [$47] mul a,y
    db $47
  else if A eq a & B eq z
    ; [$48] mul a,z
    db $48
  else if A eq a & B eq w
    ; [$49] mul a,w
    db $49
  else if A eq a & B eq a
    ; [$4A] mul a,a
    db $4A
  else if A eq x
    ; [$4B] mul x,$00
    db $4B
    db B
  else if A eq y
    ; [$4C] mul y,$00
    db $4C
    db B
  else if A eq z
    ; [$4D] mul z,$00
    db $4D
    db B
  else if A eq w
    ; [$4E] mul w,$00
    db $4E
    db B
  else if A eq a
    ; [$4F] mul a,$00
    db $4F
    db B
  else
    error SyntaxError
  end if
}
macro inc [A, B] {
  if A eq x
    ; [$50] inc x
    db $50
  else if A eq y
    ; [$51] inc y
    db $51
  else if A eq z
    ; [$52] inc z
    db $52
  else if A eq w
    ; [$53] inc w
    db $53
  else if A eq a
    ; [$54] inc a
    db $54
  else
    error SyntaxError
  end if
}
macro dec [A, B] {
  if A eq x
    ; [$55] dec x
    db $55
  else if A eq y
    ; [$56] dec y
    db $56
  else if A eq z
    ; [$57] dec z
    db $57
  else if A eq w
    ; [$58] dec w
    db $58
  else if A eq a
    ; [$59] dec a
    db $59
  else
    error SyntaxError
  end if
}
macro and [A, B] {
  if A eq a & B eq x
    ; [$68] and a,x
    db $68
  else if A eq a & B eq y
    ; [$69] and a,y
    db $69
  else if A eq a & B eq z
    ; [$6A] and a,z
    db $6A
  else if A eq a & B eq w
    ; [$6B] and a,w
    db $6B
  else if A eq x
    ; [$6C] and x,$00
    db $6C
    db B
  else if A eq y
    ; [$6D] and y,$00
    db $6D
    db B
  else if A eq z
    ; [$6E] and z,$00
    db $6E
    db B
  else if A eq w
    ; [$6F] and w,$00
    db $6F
    db B
  else if A eq a
    ; [$70] and a,$00
    db $70
    db B
  else
    error SyntaxError
  end if
}
macro or [A, B] {
  if A eq a & B eq x
    ; [$71] or a,x
    db $71
  else if A eq a & B eq y
    ; [$72] or a,y
    db $72
  else if A eq a & B eq z
    ; [$73] or a,z
    db $73
  else if A eq a & B eq w
    ; [$74] or a,w
    db $74
  else if A eq x
    ; [$75] or x,$00
    db $75
    db B
  else if A eq y
    ; [$76] or y,$00
    db $76
    db B
  else if A eq z
    ; [$77] or z,$00
    db $77
    db B
  else if A eq w
    ; [$78] or w,$00
    db $78
    db B
  else if A eq a
    ; [$79] or a,$00
    db $79
    db B
  else
    error SyntaxError
  end if
}
macro xor [A, B] {
  if A eq a & B eq x
    ; [$7F] xor a,x
    db $7F
  else if A eq a & B eq y
    ; [$80] xor a,y
    db $80
  else if A eq a & B eq z
    ; [$81] xor a,z
    db $81
  else if A eq a & B eq w
    ; [$82] xor a,w
    db $82
  else if A eq x
    ; [$83] xor x,$00
    db $83
    db B
  else if A eq y
    ; [$84] xor y,$00
    db $84
    db B
  else if A eq z
    ; [$85] xor z,$00
    db $85
    db B
  else if A eq w
    ; [$86] xor w,$00
    db $86
    db B
  else if A eq a
    ; [$87] xor a,$00
    db $87
    db B
  else
    error SyntaxError
  end if
}
macro not [A, B] {
  if A eq x
    ; [$7A] not x
    db $7A
  else if A eq y
    ; [$7B] not y
    db $7B
  else if A eq z
    ; [$7C] not z
    db $7C
  else if A eq w
    ; [$7D] not w
    db $7D
  else if A eq a
    ; [$7E] not a
    db $7E
  else
    error SyntaxError
  end if
}
macro shl [A, B] {
  if A eq x
    ; [$88] shl x,$00
    db $88
    db B
  else if A eq y
    ; [$89] shl y,$00
    db $89
    db B
  else if A eq z
    ; [$8A] shl z,$00
    db $8A
    db B
  else if A eq w
    ; [$8B] shl w,$00
    db $8B
    db B
  else if A eq a
    ; [$8C] shl a,$00
    db $8C
    db B
  else
    error SyntaxError
  end if
}
macro shr [A, B] {
  if A eq x
    ; [$8D] shr x,$00
    db $8D
    db B
  else if A eq y
    ; [$8E] shr y,$00
    db $8E
    db B
  else if A eq z
    ; [$8F] shr z,$00
    db $8F
    db B
  else if A eq w
    ; [$90] shr w,$00
    db $90
    db B
  else if A eq a
    ; [$91] shr a,$00
    db $91
    db B
  else
    error SyntaxError
  end if
}
macro rol [A, B] {
  if A eq x
    ; [$92] rol x
    db $92
  else if A eq y
    ; [$93] rol y
    db $93
  else if A eq z
    ; [$94] rol z
    db $94
  else if A eq w
    ; [$95] rol w
    db $95
  else if A eq a
    ; [$96] rol a
    db $96
  else
    error SyntaxError
  end if
}
macro ror [A, B] {
  if A eq x
    ; [$97] ror x
    db $97
  else if A eq y
    ; [$98] ror y
    db $98
  else if A eq z
    ; [$99] ror z
    db $99
  else if A eq w
    ; [$9A] ror w
    db $9A
  else if A eq a
    ; [$9B] ror a
    db $9B
  else
    error SyntaxError
  end if
}
macro cmp [A, B] {
  if A eq a & B eq x
    ; [$5A] cmp a,x
    db $5A
  else if A eq a & B eq y
    ; [$5B] cmp a,y
    db $5B
  else if A eq a & B eq z
    ; [$5C] cmp a,z
    db $5C
  else if A eq a & B eq w
    ; [$5D] cmp a,w
    db $5D
  else if A eq x
    ; [$5E] cmp x,$00
    db $5E
    db B
  else if A eq y
    ; [$5F] cmp y,$00
    db $5F
    db B
  else if A eq z
    ; [$60] cmp z,$00
    db $60
    db B
  else if A eq w
    ; [$61] cmp w,$00
    db $61
    db B
  else if A eq a
    ; [$62] cmp a,$00
    db $62
    db B
  else
    error SyntaxError
  end if
}
macro cmpbit [A, B] {
  if A eq x
    ; [$63] cmpbit x,$00
    db $63
    db B
  else if A eq y
    ; [$64] cmpbit y,$00
    db $64
    db B
  else if A eq z
    ; [$65] cmpbit z,$00
    db $65
    db B
  else if A eq w
    ; [$66] cmpbit w,$00
    db $66
    db B
  else if A eq a
    ; [$67] cmpbit a,$00
    db $67
    db B
  else
    error SyntaxError
  end if
}
macro jmp [A, B] {
  if A eq x & B eq y
    ; [$9D] jmp x,y
    db $9D
  else if A eq z & B eq w
    ; [$9E] jmp z,w
    db $9E
  else if B eq x
    ; [$9F] jmp $0000,x
    db $9F
    dw A
  else if B eq y
    ; [$A0] jmp $0000,y
    db $A0
    dw A
  else if B eq z
    ; [$A1] jmp $0000,z
    db $A1
    dw A
  else if B eq w
    ; [$A2] jmp $0000,w
    db $A2
    dw A
  else if B eq a
    ; [$A3] jmp $0000,a
    db $A3
    dw A
  else
    ; [$9C] jmp $0000
    db $9C
    dw A
  end if
}
macro jmp.eq [A, B] {
  ; [$A4] jmp.eq $0000
  db $A4
  dw A
}
macro jmp.neq [A, B] {
  ; [$A5] jmp.neq $0000
  db $A5
  dw A
}
macro jmp.gt [A, B] {
  ; [$A6] jmp.gt $0000
  db $A6
  dw A
}
macro jmp.lt [A, B] {
  ; [$A7] jmp.lt $0000
  db $A7
  dw A
}
macro jmp.z [A, B] {
  ; [$A8] jmp.z $0000
  db $A8
  dw A
}
macro jmp.nz [A, B] {
  ; [$A9] jmp.nz $0000
  db $A9
  dw A
}
macro int [A, B] {
  ; [$AA] int $00
  db $AA
  db A
}
macro resume [A, B] {
  ; [$AB] resume
  db $AB
}
macro sec [A, B] {
  ; [$AC] sec
  db $AC
}
macro clc [A, B] {
  ; [$AD] clc
  db $AD
}
