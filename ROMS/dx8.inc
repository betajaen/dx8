; DX8 FASM Instruction Set and Common Constants
; Registers
REG_IVT_RESET = $0000
REG_IVT_HBLANK = $0002
REG_IVT_VBLANK = $0004
REG_IVT_FLOPPY = $0006
REG_IVT_RESERVED_5 = $0008
REG_IVT_RESERVED_6 = $000A
REG_IVT_RESERVED_7 = $000C
REG_IVT_RESERVED_8 = $000E
REG_MMU_BANK = $0010
REG_GFX_PLANES_COUNT = $0018
REG_GFX_PLANE0_TYPE = $0019
REG_GFX_PLANE1_TYPE = $001A
REG_GFX_PLANE2_TYPE = $001B
REG_GFX_PLANE3_TYPE = $001C
REG_GFX_BACKGROUND_COLOUR = $001D
REG_GFX_PLANE0_COLOUR = $0020
REG_GFX_PLANE1_COLOUR = $0023
REG_GFX_PLANE2_COLOUR = $0026
REG_GFX_PLANE3_COLOUR = $0029
REG_GFX_SCANLINE_NUM = $002C
REG_GFX_FRAME_NUM = $002D
REG_GFX_SECOND_NUM = $002E
REG_GFX_COUNTERS = $002F
REG_GFX_TILES_ADDR = $0030
REG_GFX_TILES_START = $0032
REG_GFX_TILES_COUNT = $0033
REG_FPY_MSG = $0034
REG_FPY_STATE = $0035
REG_FPY_CURRENT_TRACK = $0036
REG_FPY_OP_TRACK = $0037
REG_FPY_OP_ADDR = $0038
REG_FPY_OP = $003A
REG_MICRO_FN = $0040
REG_SCRATCH = $00C0
REG_STACK_BEGIN = $0100
REG_STACK_END = $0200

; Macros
; Constants
GFX_FLG_COUNTERS_NEWFRAME = $0080
GFX_FLG_COUNTERS_ODDEVEN = $0040
GFX_FLG_COUNTERS_2 = $0002
GFX_FLG_COUNTERS_4 = $0004
GFX_FLG_COUNTERS_8 = $0008
GFX_FLG_COUNTERS_15 = $0010
GFX_FLG_COUNTERS_30 = $0020
IO_FPY_MSG_INSERT = $0001
IO_FPY_MSG_REMOVE = $0002
IO_FPY_MSG_SEEK = $0004
IO_FPY_MSG_READ = $0008
IO_FPY_MSG_WRITE = $0016
IO_FPY_MSG_ERROR = $0080
IO_FPY_STATE_DISK = $0001
MEM_CHIP_ADDR = $0000
MEM_CHIP_SIZE = $0100
MEM_PROGRAM_ADDR = $0800
MEM_PROGRAM_SIZE = $7800
MEM_SHARED_ADDR = $8000
MEM_SHARED_SIZE = $FFFF
MEM_GFX_PLANE_SIZE = $2800
MEM_GFX_PLANE0 = $8000
MEM_GFX_PLANE1 = $A800
MEM_GFX_PLANE2 = $D000
MEM_GFX_PLANE3 = $F800
INTVEC_RESET = $0000
INTVEC_HBLANK = $0001
INTVEC_VBLANK = $0002
INTVEC_FLOPPY = $0003
INTVEC_ADDR_RESET = $0000
INTVEC_ADDR_HBLANK = $0002
INTVEC_ADDR_VBLANK = $0004
INTVEC_ADDR_FLOPPY = $0006

; Interrupts
INT_FLOPPY_OP = $00D0 ; Run a floppy operation 
INT_GPUON = $00FE ; Turn on the GPU 
INT_RESET = $00FF ; Soft Reset 

; Instructions
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
  if A eq a & B eq i
    ; [$0F] load a,i
    db $0F
  else if A eq z & B eq i
    ; [$10] load z,i
    db $10
  else if A eq w & B eq i
    ; [$11] load w,i
    db $11
  else if A eq a & B eq j
    ; [$12] load a,j
    db $12
  else if A eq x & B eq j
    ; [$13] load x,j
    db $13
  else if A eq y & B eq j
    ; [$14] load y,j
    db $14
  else if A eq x
    ; [$15] load x,$0000
    db $15
    dw B
  else if A eq y
    ; [$16] load y,$0000
    db $16
    dw B
  else if A eq z
    ; [$17] load z,$0000
    db $17
    dw B
  else if A eq w
    ; [$18] load w,$0000
    db $18
    dw B
  else if A eq a
    ; [$19] load a,$0000
    db $19
    dw B
  else if A eq i
    ; [$1A] load i,$0000
    db $1A
    dw B
  else if A eq j
    ; [$1B] load j,$0000
    db $1B
    dw B
  else
    error SyntaxError
  end if
}
macro store [A, B] {
  if A eq i & B eq a
    ; [$1C] store i,a
    db $1C
  else if A eq i & B eq w
    ; [$1D] store i,w
    db $1D
  else if A eq i & B eq z
    ; [$1E] store i,z
    db $1E
  else if A eq j & B eq a
    ; [$1F] store j,a
    db $1F
  else if A eq j & B eq x
    ; [$20] store j,x
    db $20
  else if A eq j & B eq y
    ; [$21] store j,y
    db $21
  else if B eq x
    ; [$22] store $0000,x
    db $22
    dw A
  else if B eq y
    ; [$23] store $0000,y
    db $23
    dw A
  else if B eq z
    ; [$24] store $0000,z
    db $24
    dw A
  else if B eq w
    ; [$25] store $0000,w
    db $25
    dw A
  else if B eq a
    ; [$26] store $0000,a
    db $26
    dw A
  else if B eq i
    ; [$27] store $0000,i
    db $27
    dw A
  else if B eq j
    ; [$28] store $0000,j
    db $28
    dw A
  else
    error SyntaxError
  end if
}
macro call [A, B] {
  ; [$29] call $0000
  db $29
  dw A
}
macro call.eq [A, B] {
  ; [$2A] call.eq $0000
  db $2A
  dw A
}
macro call.neq [A, B] {
  ; [$2B] call.neq $0000
  db $2B
  dw A
}
macro call.gt [A, B] {
  ; [$2C] call.gt $0000
  db $2C
  dw A
}
macro call.lt [A, B] {
  ; [$2D] call.lt $0000
  db $2D
  dw A
}
macro call.z [A, B] {
  ; [$2E] call.z $0000
  db $2E
  dw A
}
macro call.nz [A, B] {
  ; [$2F] call.nz $0000
  db $2F
  dw A
}
macro return [A, B] {
  ; [$30] return
  db $30
}
macro set [A, B] {
  if A eq x
    ; [$31] set x,$00
    db $31
    db B
  else if A eq y
    ; [$32] set y,$00
    db $32
    db B
  else if A eq z
    ; [$33] set z,$00
    db $33
    db B
  else if A eq w
    ; [$34] set w,$00
    db $34
    db B
  else if A eq a
    ; [$35] set a,$00
    db $35
    db B
  else if A eq i
    ; [$36] set i,$0000
    db $36
    dw B
  else if A eq j
    ; [$37] set j,$0000
    db $37
    dw B
  else
    error SyntaxError
  end if
}
macro add [A, B] {
  if A eq a & B eq x
    ; [$38] add a,x
    db $38
  else if A eq a & B eq y
    ; [$39] add a,y
    db $39
  else if A eq a & B eq z
    ; [$3A] add a,z
    db $3A
  else if A eq a & B eq w
    ; [$3B] add a,w
    db $3B
  else if A eq a & B eq a
    ; [$3C] add a,a
    db $3C
  else if A eq x
    ; [$3D] add x,$00
    db $3D
    db B
  else if A eq y
    ; [$3E] add y,$00
    db $3E
    db B
  else if A eq z
    ; [$3F] add z,$00
    db $3F
    db B
  else if A eq w
    ; [$40] add w,$00
    db $40
    db B
  else if A eq a
    ; [$41] add a,$00
    db $41
    db B
  else
    error SyntaxError
  end if
}
macro adc [A, B] {
  if A eq a & B eq x
    ; [$42] adc a,x
    db $42
  else if A eq a & B eq y
    ; [$43] adc a,y
    db $43
  else if A eq a & B eq z
    ; [$44] adc a,z
    db $44
  else if A eq a & B eq w
    ; [$45] adc a,w
    db $45
  else if A eq a & B eq a
    ; [$46] adc a,a
    db $46
  else if A eq x
    ; [$47] adc x,$00
    db $47
    db B
  else if A eq y
    ; [$48] adc y,$00
    db $48
    db B
  else if A eq z
    ; [$49] adc z,$00
    db $49
    db B
  else if A eq w
    ; [$4A] adc w,$00
    db $4A
    db B
  else if A eq a
    ; [$4B] adc a,$00
    db $4B
    db B
  else
    error SyntaxError
  end if
}
macro sub [A, B] {
  if A eq a & B eq x
    ; [$4C] sub a,x
    db $4C
  else if A eq a & B eq y
    ; [$4D] sub a,y
    db $4D
  else if A eq a & B eq z
    ; [$4E] sub a,z
    db $4E
  else if A eq a & B eq w
    ; [$4F] sub a,w
    db $4F
  else if A eq x
    ; [$50] sub x,$00
    db $50
    db B
  else if A eq y
    ; [$51] sub y,$00
    db $51
    db B
  else if A eq z
    ; [$52] sub z,$00
    db $52
    db B
  else if A eq w
    ; [$53] sub w,$00
    db $53
    db B
  else if A eq a
    ; [$54] sub a,$00
    db $54
    db B
  else
    error SyntaxError
  end if
}
macro mul [A, B] {
  if A eq a & B eq x
    ; [$55] mul a,x
    db $55
  else if A eq a & B eq y
    ; [$56] mul a,y
    db $56
  else if A eq a & B eq z
    ; [$57] mul a,z
    db $57
  else if A eq a & B eq w
    ; [$58] mul a,w
    db $58
  else if A eq a & B eq a
    ; [$59] mul a,a
    db $59
  else if A eq x
    ; [$5A] mul x,$00
    db $5A
    db B
  else if A eq y
    ; [$5B] mul y,$00
    db $5B
    db B
  else if A eq z
    ; [$5C] mul z,$00
    db $5C
    db B
  else if A eq w
    ; [$5D] mul w,$00
    db $5D
    db B
  else if A eq a
    ; [$5E] mul a,$00
    db $5E
    db B
  else
    error SyntaxError
  end if
}
macro inc [A, B] {
  if A eq x
    ; [$5F] inc x
    db $5F
  else if A eq y
    ; [$60] inc y
    db $60
  else if A eq z
    ; [$61] inc z
    db $61
  else if A eq w
    ; [$62] inc w
    db $62
  else if A eq a
    ; [$63] inc a
    db $63
  else if A eq i
    ; [$64] inc i
    db $64
  else if A eq j
    ; [$65] inc j
    db $65
  else
    error SyntaxError
  end if
}
macro dec [A, B] {
  if A eq x
    ; [$66] dec x
    db $66
  else if A eq y
    ; [$67] dec y
    db $67
  else if A eq z
    ; [$68] dec z
    db $68
  else if A eq w
    ; [$69] dec w
    db $69
  else if A eq a
    ; [$6A] dec a
    db $6A
  else if A eq i
    ; [$6B] dec i
    db $6B
  else if A eq j
    ; [$6C] dec j
    db $6C
  else
    error SyntaxError
  end if
}
macro and [A, B] {
  if A eq a & B eq x
    ; [$82] and a,x
    db $82
  else if A eq a & B eq y
    ; [$83] and a,y
    db $83
  else if A eq a & B eq z
    ; [$84] and a,z
    db $84
  else if A eq a & B eq w
    ; [$85] and a,w
    db $85
  else if A eq x
    ; [$86] and x,$00
    db $86
    db B
  else if A eq y
    ; [$87] and y,$00
    db $87
    db B
  else if A eq z
    ; [$88] and z,$00
    db $88
    db B
  else if A eq w
    ; [$89] and w,$00
    db $89
    db B
  else if A eq a
    ; [$8A] and a,$00
    db $8A
    db B
  else
    error SyntaxError
  end if
}
macro or [A, B] {
  if A eq a & B eq x
    ; [$8B] or a,x
    db $8B
  else if A eq a & B eq y
    ; [$8C] or a,y
    db $8C
  else if A eq a & B eq z
    ; [$8D] or a,z
    db $8D
  else if A eq a & B eq w
    ; [$8E] or a,w
    db $8E
  else if A eq x
    ; [$8F] or x,$00
    db $8F
    db B
  else if A eq y
    ; [$90] or y,$00
    db $90
    db B
  else if A eq z
    ; [$91] or z,$00
    db $91
    db B
  else if A eq w
    ; [$92] or w,$00
    db $92
    db B
  else if A eq a
    ; [$93] or a,$00
    db $93
    db B
  else
    error SyntaxError
  end if
}
macro xor [A, B] {
  if A eq a & B eq x
    ; [$99] xor a,x
    db $99
  else if A eq a & B eq y
    ; [$9A] xor a,y
    db $9A
  else if A eq a & B eq z
    ; [$9B] xor a,z
    db $9B
  else if A eq a & B eq w
    ; [$9C] xor a,w
    db $9C
  else if A eq x
    ; [$9D] xor x,$00
    db $9D
    db B
  else if A eq y
    ; [$9E] xor y,$00
    db $9E
    db B
  else if A eq z
    ; [$9F] xor z,$00
    db $9F
    db B
  else if A eq w
    ; [$A0] xor w,$00
    db $A0
    db B
  else if A eq a
    ; [$A1] xor a,$00
    db $A1
    db B
  else
    error SyntaxError
  end if
}
macro not [A, B] {
  if A eq x
    ; [$94] not x
    db $94
  else if A eq y
    ; [$95] not y
    db $95
  else if A eq z
    ; [$96] not z
    db $96
  else if A eq w
    ; [$97] not w
    db $97
  else if A eq a
    ; [$98] not a
    db $98
  else
    error SyntaxError
  end if
}
macro shl [A, B] {
  if A eq x
    ; [$A2] shl x,$00
    db $A2
    db B
  else if A eq y
    ; [$A3] shl y,$00
    db $A3
    db B
  else if A eq z
    ; [$A4] shl z,$00
    db $A4
    db B
  else if A eq w
    ; [$A5] shl w,$00
    db $A5
    db B
  else if A eq a
    ; [$A6] shl a,$00
    db $A6
    db B
  else
    error SyntaxError
  end if
}
macro shr [A, B] {
  if A eq x
    ; [$A7] shr x,$00
    db $A7
    db B
  else if A eq y
    ; [$A8] shr y,$00
    db $A8
    db B
  else if A eq z
    ; [$A9] shr z,$00
    db $A9
    db B
  else if A eq w
    ; [$AA] shr w,$00
    db $AA
    db B
  else if A eq a
    ; [$AB] shr a,$00
    db $AB
    db B
  else
    error SyntaxError
  end if
}
macro rol [A, B] {
  if A eq x
    ; [$AC] rol x
    db $AC
  else if A eq y
    ; [$AD] rol y
    db $AD
  else if A eq z
    ; [$AE] rol z
    db $AE
  else if A eq w
    ; [$AF] rol w
    db $AF
  else if A eq a
    ; [$B0] rol a
    db $B0
  else
    error SyntaxError
  end if
}
macro ror [A, B] {
  if A eq x
    ; [$B1] ror x
    db $B1
  else if A eq y
    ; [$B2] ror y
    db $B2
  else if A eq z
    ; [$B3] ror z
    db $B3
  else if A eq w
    ; [$B4] ror w
    db $B4
  else if A eq a
    ; [$B5] ror a
    db $B5
  else
    error SyntaxError
  end if
}
macro cmp [A, B] {
  if A eq a & B eq x
    ; [$6D] cmp a,x
    db $6D
  else if A eq a & B eq y
    ; [$6E] cmp a,y
    db $6E
  else if A eq a & B eq z
    ; [$6F] cmp a,z
    db $6F
  else if A eq a & B eq w
    ; [$70] cmp a,w
    db $70
  else if A eq a
    ; [$71] cmp a
    db $71
  else if A eq x
    ; [$72] cmp x
    db $72
  else if A eq y
    ; [$73] cmp y
    db $73
  else if A eq z
    ; [$74] cmp z
    db $74
  else if A eq w
    ; [$75] cmp w
    db $75
  else if A eq x
    ; [$76] cmp x,$00
    db $76
    db B
  else if A eq y
    ; [$77] cmp y,$00
    db $77
    db B
  else if A eq z
    ; [$78] cmp z,$00
    db $78
    db B
  else if A eq w
    ; [$79] cmp w,$00
    db $79
    db B
  else if A eq a
    ; [$7A] cmp a,$00
    db $7A
    db B
  else if A eq i
    ; [$7B] cmp i,$0000
    db $7B
    dw B
  else if A eq j
    ; [$7C] cmp j,$0000
    db $7C
    dw B
  else
    error SyntaxError
  end if
}
macro cmpbit [A, B] {
  if A eq x
    ; [$7D] cmpbit x,$00
    db $7D
    db B
  else if A eq y
    ; [$7E] cmpbit y,$00
    db $7E
    db B
  else if A eq z
    ; [$7F] cmpbit z,$00
    db $7F
    db B
  else if A eq w
    ; [$80] cmpbit w,$00
    db $80
    db B
  else if A eq a
    ; [$81] cmpbit a,$00
    db $81
    db B
  else
    error SyntaxError
  end if
}
macro jmp [A, B] {
  if A eq i
    ; [$B7] jmp i
    db $B7
  else if A eq j
    ; [$B8] jmp j
    db $B8
  else if B eq x
    ; [$B9] jmp $0000,x
    db $B9
    dw A
  else if B eq y
    ; [$BA] jmp $0000,y
    db $BA
    dw A
  else if B eq z
    ; [$BB] jmp $0000,z
    db $BB
    dw A
  else if B eq w
    ; [$BC] jmp $0000,w
    db $BC
    dw A
  else if B eq a
    ; [$BD] jmp $0000,a
    db $BD
    dw A
  else
    ; [$B6] jmp $0000
    db $B6
    dw A
  end if
}
macro jmp.eq [A, B] {
  ; [$BF] jmp.eq $0000
  db $BF
  dw A
}
macro jmp.neq [A, B] {
  ; [$C1] jmp.neq $0000
  db $C1
  dw A
}
macro jmp.gt [A, B] {
  ; [$C3] jmp.gt $0000
  db $C3
  dw A
}
macro jmp.lt [A, B] {
  ; [$C5] jmp.lt $0000
  db $C5
  dw A
}
macro jmp.z [A, B] {
  ; [$C7] jmp.z $0000
  db $C7
  dw A
}
macro jmp.nz [A, B] {
  ; [$C9] jmp.nz $0000
  db $C9
  dw A
}
macro rjmp [A, B] {
  ; [$BE] rjmp $00
  db $BE
  db A
}
macro rjmp.eq [A, B] {
  ; [$C0] rjmp.eq $00
  db $C0
  db A
}
macro rjmp.neq [A, B] {
  ; [$C2] rjmp.neq $00
  db $C2
  db A
}
macro rjmp.gt [A, B] {
  ; [$C4] rjmp.gt $00
  db $C4
  db A
}
macro rjmp.lt [A, B] {
  ; [$C6] rjmp.lt $00
  db $C6
  db A
}
macro rjmp.z [A, B] {
  ; [$C8] rjmp.z $00
  db $C8
  db A
}
macro rjmp.nz [A, B] {
  ; [$CA] rjmp.nz $00
  db $CA
  db A
}
macro int [A, B] {
  ; [$CB] int $00
  db $CB
  db A
}
macro resume [A, B] {
  ; [$CC] resume
  db $CC
}
macro sec [A, B] {
  ; [$CD] sec
  db $CD
}
macro clc [A, B] {
  ; [$CE] clc
  db $CE
}
macro offset [A, B] {
  ; [$CF] offset $0000
  db $CF
  dw A
}
macro dbr [A, B] {
  ; [$D0] dbr $0000
  db $D0
  db A
}
macro dba [A, B] {
  ; [$D1] dba $00
  db $D1
  dw A
}
macro dbb [A, B] {
  ; [$D2] dbb
  db $D2
}
macro dbn [A, B] {
  ; [$D3] dbn $0000
  db $D3
  dw A
}
; Opcodes
OP_NOP = $00
OP_PUSH_x = $01
OP_PUSH_y = $02
OP_PUSH_z = $03
OP_PUSH_w = $04
OP_PUSH_a = $05
OP_PUSH_F = $06
OP_PUSH_R = $07
OP_POP_x = $08
OP_POP_y = $09
OP_POP_z = $0A
OP_POP_w = $0B
OP_POP_a = $0C
OP_POP_F = $0D
OP_POP_R = $0E
OP_LOAD_ai = $0F
OP_LOAD_zi = $10
OP_LOAD_wi = $11
OP_LOAD_aj = $12
OP_LOAD_xj = $13
OP_LOAD_yj = $14
OP_LOAD_xA = $15
OP_LOAD_yA = $16
OP_LOAD_zA = $17
OP_LOAD_wA = $18
OP_LOAD_aA = $19
OP_LOAD_iA = $1A
OP_LOAD_jA = $1B
OP_STORE_ia = $1C
OP_STORE_iw = $1D
OP_STORE_iz = $1E
OP_STORE_ja = $1F
OP_STORE_jx = $20
OP_STORE_jy = $21
OP_STORE_Ax = $22
OP_STORE_Ay = $23
OP_STORE_Az = $24
OP_STORE_Aw = $25
OP_STORE_Aa = $26
OP_STORE_Ai = $27
OP_STORE_Aj = $28
OP_CALL_A = $29
OP_CALL_EQ_A = $2A
OP_CALL_NEQ_A = $2B
OP_CALL_GT_A = $2C
OP_CALL_LT_A = $2D
OP_CALL_Z_A = $2E
OP_CALL_NZ_A = $2F
OP_RETURN = $30
OP_SET_xB = $31
OP_SET_yB = $32
OP_SET_zB = $33
OP_SET_wB = $34
OP_SET_aB = $35
OP_SET_iA = $36
OP_SET_jA = $37
OP_ADD_ax = $38
OP_ADD_ay = $39
OP_ADD_az = $3A
OP_ADD_aw = $3B
OP_ADD_aa = $3C
OP_ADD_xB = $3D
OP_ADD_yB = $3E
OP_ADD_zB = $3F
OP_ADD_wB = $40
OP_ADD_aB = $41
OP_ADC_ax = $42
OP_ADC_ay = $43
OP_ADC_az = $44
OP_ADC_aw = $45
OP_ADC_aa = $46
OP_ADC_xB = $47
OP_ADC_yB = $48
OP_ADC_zB = $49
OP_ADC_wB = $4A
OP_ADC_aB = $4B
OP_SUB_ax = $4C
OP_SUB_ay = $4D
OP_SUB_az = $4E
OP_SUB_aw = $4F
OP_SUB_xB = $50
OP_SUB_yB = $51
OP_SUB_zB = $52
OP_SUB_wB = $53
OP_SUB_aB = $54
OP_MUL_ax = $55
OP_MUL_ay = $56
OP_MUL_az = $57
OP_MUL_aw = $58
OP_MUL_aa = $59
OP_MUL_xB = $5A
OP_MUL_yB = $5B
OP_MUL_zB = $5C
OP_MUL_wB = $5D
OP_MUL_aB = $5E
OP_INC_x = $5F
OP_INC_y = $60
OP_INC_z = $61
OP_INC_w = $62
OP_INC_a = $63
OP_INC_i = $64
OP_INC_j = $65
OP_DEC_x = $66
OP_DEC_y = $67
OP_DEC_z = $68
OP_DEC_w = $69
OP_DEC_a = $6A
OP_DEC_i = $6B
OP_DEC_j = $6C
OP_CMP_ax = $6D
OP_CMP_ay = $6E
OP_CMP_az = $6F
OP_CMP_aw = $70
OP_CMP_a = $71
OP_CMP_x = $72
OP_CMP_y = $73
OP_CMP_z = $74
OP_CMP_w = $75
OP_CMP_xB = $76
OP_CMP_yB = $77
OP_CMP_zB = $78
OP_CMP_wB = $79
OP_CMP_aB = $7A
OP_CMP_iA = $7B
OP_CMP_jA = $7C
OP_CMPBIT_xB = $7D
OP_CMPBIT_yB = $7E
OP_CMPBIT_zB = $7F
OP_CMPBIT_wB = $80
OP_CMPBIT_aB = $81
OP_AND_ax = $82
OP_AND_ay = $83
OP_AND_az = $84
OP_AND_aw = $85
OP_AND_xB = $86
OP_AND_yB = $87
OP_AND_zB = $88
OP_AND_wB = $89
OP_AND_aB = $8A
OP_OR_ax = $8B
OP_OR_ay = $8C
OP_OR_az = $8D
OP_OR_aw = $8E
OP_OR_xB = $8F
OP_OR_yB = $90
OP_OR_zB = $91
OP_OR_wB = $92
OP_OR_aB = $93
OP_NOT_x = $94
OP_NOT_y = $95
OP_NOT_z = $96
OP_NOT_w = $97
OP_NOT_a = $98
OP_XOR_ax = $99
OP_XOR_ay = $9A
OP_XOR_az = $9B
OP_XOR_aw = $9C
OP_XOR_xB = $9D
OP_XOR_yB = $9E
OP_XOR_zB = $9F
OP_XOR_wB = $A0
OP_XOR_aB = $A1
OP_SHL_xB = $A2
OP_SHL_yB = $A3
OP_SHL_zB = $A4
OP_SHL_wB = $A5
OP_SHL_aB = $A6
OP_SHR_xB = $A7
OP_SHR_yB = $A8
OP_SHR_zB = $A9
OP_SHR_wB = $AA
OP_SHR_aB = $AB
OP_ROL_x = $AC
OP_ROL_y = $AD
OP_ROL_z = $AE
OP_ROL_w = $AF
OP_ROL_a = $B0
OP_ROR_x = $B1
OP_ROR_y = $B2
OP_ROR_z = $B3
OP_ROR_w = $B4
OP_ROR_a = $B5
OP_JMP_A = $B6
OP_JMP_i = $B7
OP_JMP_j = $B8
OP_JMP_Ax = $B9
OP_JMP_Ay = $BA
OP_JMP_Az = $BB
OP_JMP_Aw = $BC
OP_JMP_Aa = $BD
OP_RJMP_B = $BE
OP_JMP_EQ_A = $BF
OP_RJMP_EQ_B = $C0
OP_JMP_NEQ_A = $C1
OP_RJMP_NEQ_B = $C2
OP_JMP_GT_A = $C3
OP_RJMP_GT_B = $C4
OP_JMP_LT_A = $C5
OP_RJMP_LT_B = $C6
OP_JMP_Z_A = $C7
OP_RJMP_Z_B = $C8
OP_JMP_NZ_A = $C9
OP_RJMP_NZ_B = $CA
OP_INT_B = $CB
OP_RESUME = $CC
OP_SEC = $CD
OP_CLC = $CE
OP_OFFSET_A = $CF
OP_DBR_A = $D0
OP_DBA_B = $D1
OP_DBB = $D2
OP_DBN_A = $D3
