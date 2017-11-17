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
REG_FPY_TRACK = $0036
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
IO_FPY_MSG_INSERT = $0000
IO_FPY_MSG_REMOVE = $0001
IO_FPY_MSG_SEEK = $0002
IO_FPY_MSG_READ = $0004
IO_FPY_MSG_WRITE = $0008
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
macro return [A, B] {
  ; [$2A] return
  db $2A
}
macro set [A, B] {
  if A eq x
    ; [$2B] set x,$00
    db $2B
    db B
  else if A eq y
    ; [$2C] set y,$00
    db $2C
    db B
  else if A eq z
    ; [$2D] set z,$00
    db $2D
    db B
  else if A eq w
    ; [$2E] set w,$00
    db $2E
    db B
  else if A eq a
    ; [$2F] set a,$00
    db $2F
    db B
  else if A eq i
    ; [$30] set i,$0000
    db $30
    dw B
  else if A eq j
    ; [$31] set j,$0000
    db $31
    dw B
  else
    error SyntaxError
  end if
}
macro add [A, B] {
  if A eq a & B eq x
    ; [$32] add a,x
    db $32
  else if A eq a & B eq y
    ; [$33] add a,y
    db $33
  else if A eq a & B eq z
    ; [$34] add a,z
    db $34
  else if A eq a & B eq w
    ; [$35] add a,w
    db $35
  else if A eq a & B eq a
    ; [$36] add a,a
    db $36
  else if A eq x
    ; [$37] add x,$00
    db $37
    db B
  else if A eq y
    ; [$38] add y,$00
    db $38
    db B
  else if A eq z
    ; [$39] add z,$00
    db $39
    db B
  else if A eq w
    ; [$3A] add w,$00
    db $3A
    db B
  else if A eq a
    ; [$3B] add a,$00
    db $3B
    db B
  else
    error SyntaxError
  end if
}
macro adc [A, B] {
  if A eq a & B eq x
    ; [$3C] adc a,x
    db $3C
  else if A eq a & B eq y
    ; [$3D] adc a,y
    db $3D
  else if A eq a & B eq z
    ; [$3E] adc a,z
    db $3E
  else if A eq a & B eq w
    ; [$3F] adc a,w
    db $3F
  else if A eq a & B eq a
    ; [$40] adc a,a
    db $40
  else if A eq x
    ; [$41] adc x,$00
    db $41
    db B
  else if A eq y
    ; [$42] adc y,$00
    db $42
    db B
  else if A eq z
    ; [$43] adc z,$00
    db $43
    db B
  else if A eq w
    ; [$44] adc w,$00
    db $44
    db B
  else if A eq a
    ; [$45] adc a,$00
    db $45
    db B
  else
    error SyntaxError
  end if
}
macro sub [A, B] {
  if A eq a & B eq x
    ; [$46] sub a,x
    db $46
  else if A eq a & B eq y
    ; [$47] sub a,y
    db $47
  else if A eq a & B eq z
    ; [$48] sub a,z
    db $48
  else if A eq a & B eq w
    ; [$49] sub a,w
    db $49
  else if A eq x
    ; [$4A] sub x,$00
    db $4A
    db B
  else if A eq y
    ; [$4B] sub y,$00
    db $4B
    db B
  else if A eq z
    ; [$4C] sub z,$00
    db $4C
    db B
  else if A eq w
    ; [$4D] sub w,$00
    db $4D
    db B
  else if A eq a
    ; [$4E] sub a,$00
    db $4E
    db B
  else
    error SyntaxError
  end if
}
macro mul [A, B] {
  if A eq a & B eq x
    ; [$4F] mul a,x
    db $4F
  else if A eq a & B eq y
    ; [$50] mul a,y
    db $50
  else if A eq a & B eq z
    ; [$51] mul a,z
    db $51
  else if A eq a & B eq w
    ; [$52] mul a,w
    db $52
  else if A eq a & B eq a
    ; [$53] mul a,a
    db $53
  else if A eq x
    ; [$54] mul x,$00
    db $54
    db B
  else if A eq y
    ; [$55] mul y,$00
    db $55
    db B
  else if A eq z
    ; [$56] mul z,$00
    db $56
    db B
  else if A eq w
    ; [$57] mul w,$00
    db $57
    db B
  else if A eq a
    ; [$58] mul a,$00
    db $58
    db B
  else
    error SyntaxError
  end if
}
macro inc [A, B] {
  if A eq x
    ; [$59] inc x
    db $59
  else if A eq y
    ; [$5A] inc y
    db $5A
  else if A eq z
    ; [$5B] inc z
    db $5B
  else if A eq w
    ; [$5C] inc w
    db $5C
  else if A eq a
    ; [$5D] inc a
    db $5D
  else if A eq i
    ; [$5E] inc i
    db $5E
  else if A eq j
    ; [$5F] inc j
    db $5F
  else
    error SyntaxError
  end if
}
macro dec [A, B] {
  if A eq x
    ; [$60] dec x
    db $60
  else if A eq y
    ; [$61] dec y
    db $61
  else if A eq z
    ; [$62] dec z
    db $62
  else if A eq w
    ; [$63] dec w
    db $63
  else if A eq a
    ; [$64] dec a
    db $64
  else if A eq i
    ; [$65] dec i
    db $65
  else if A eq j
    ; [$66] dec j
    db $66
  else
    error SyntaxError
  end if
}
macro and [A, B] {
  if A eq a & B eq x
    ; [$77] and a,x
    db $77
  else if A eq a & B eq y
    ; [$78] and a,y
    db $78
  else if A eq a & B eq z
    ; [$79] and a,z
    db $79
  else if A eq a & B eq w
    ; [$7A] and a,w
    db $7A
  else if A eq x
    ; [$7B] and x,$00
    db $7B
    db B
  else if A eq y
    ; [$7C] and y,$00
    db $7C
    db B
  else if A eq z
    ; [$7D] and z,$00
    db $7D
    db B
  else if A eq w
    ; [$7E] and w,$00
    db $7E
    db B
  else if A eq a
    ; [$7F] and a,$00
    db $7F
    db B
  else
    error SyntaxError
  end if
}
macro or [A, B] {
  if A eq a & B eq x
    ; [$80] or a,x
    db $80
  else if A eq a & B eq y
    ; [$81] or a,y
    db $81
  else if A eq a & B eq z
    ; [$82] or a,z
    db $82
  else if A eq a & B eq w
    ; [$83] or a,w
    db $83
  else if A eq x
    ; [$84] or x,$00
    db $84
    db B
  else if A eq y
    ; [$85] or y,$00
    db $85
    db B
  else if A eq z
    ; [$86] or z,$00
    db $86
    db B
  else if A eq w
    ; [$87] or w,$00
    db $87
    db B
  else if A eq a
    ; [$88] or a,$00
    db $88
    db B
  else
    error SyntaxError
  end if
}
macro xor [A, B] {
  if A eq a & B eq x
    ; [$8E] xor a,x
    db $8E
  else if A eq a & B eq y
    ; [$8F] xor a,y
    db $8F
  else if A eq a & B eq z
    ; [$90] xor a,z
    db $90
  else if A eq a & B eq w
    ; [$91] xor a,w
    db $91
  else if A eq x
    ; [$92] xor x,$00
    db $92
    db B
  else if A eq y
    ; [$93] xor y,$00
    db $93
    db B
  else if A eq z
    ; [$94] xor z,$00
    db $94
    db B
  else if A eq w
    ; [$95] xor w,$00
    db $95
    db B
  else if A eq a
    ; [$96] xor a,$00
    db $96
    db B
  else
    error SyntaxError
  end if
}
macro not [A, B] {
  if A eq x
    ; [$89] not x
    db $89
  else if A eq y
    ; [$8A] not y
    db $8A
  else if A eq z
    ; [$8B] not z
    db $8B
  else if A eq w
    ; [$8C] not w
    db $8C
  else if A eq a
    ; [$8D] not a
    db $8D
  else
    error SyntaxError
  end if
}
macro shl [A, B] {
  if A eq x
    ; [$97] shl x,$00
    db $97
    db B
  else if A eq y
    ; [$98] shl y,$00
    db $98
    db B
  else if A eq z
    ; [$99] shl z,$00
    db $99
    db B
  else if A eq w
    ; [$9A] shl w,$00
    db $9A
    db B
  else if A eq a
    ; [$9B] shl a,$00
    db $9B
    db B
  else
    error SyntaxError
  end if
}
macro shr [A, B] {
  if A eq x
    ; [$9C] shr x,$00
    db $9C
    db B
  else if A eq y
    ; [$9D] shr y,$00
    db $9D
    db B
  else if A eq z
    ; [$9E] shr z,$00
    db $9E
    db B
  else if A eq w
    ; [$9F] shr w,$00
    db $9F
    db B
  else if A eq a
    ; [$A0] shr a,$00
    db $A0
    db B
  else
    error SyntaxError
  end if
}
macro rol [A, B] {
  if A eq x
    ; [$A1] rol x
    db $A1
  else if A eq y
    ; [$A2] rol y
    db $A2
  else if A eq z
    ; [$A3] rol z
    db $A3
  else if A eq w
    ; [$A4] rol w
    db $A4
  else if A eq a
    ; [$A5] rol a
    db $A5
  else
    error SyntaxError
  end if
}
macro ror [A, B] {
  if A eq x
    ; [$A6] ror x
    db $A6
  else if A eq y
    ; [$A7] ror y
    db $A7
  else if A eq z
    ; [$A8] ror z
    db $A8
  else if A eq w
    ; [$A9] ror w
    db $A9
  else if A eq a
    ; [$AA] ror a
    db $AA
  else
    error SyntaxError
  end if
}
macro cmp [A, B] {
  if A eq a & B eq x
    ; [$67] cmp a,x
    db $67
  else if A eq a & B eq y
    ; [$68] cmp a,y
    db $68
  else if A eq a & B eq z
    ; [$69] cmp a,z
    db $69
  else if A eq a & B eq w
    ; [$6A] cmp a,w
    db $6A
  else if A eq x
    ; [$6B] cmp x,$00
    db $6B
    db B
  else if A eq y
    ; [$6C] cmp y,$00
    db $6C
    db B
  else if A eq z
    ; [$6D] cmp z,$00
    db $6D
    db B
  else if A eq w
    ; [$6E] cmp w,$00
    db $6E
    db B
  else if A eq a
    ; [$6F] cmp a,$00
    db $6F
    db B
  else if A eq i
    ; [$70] cmp i,$0000
    db $70
    dw B
  else if A eq j
    ; [$71] cmp j,$0000
    db $71
    dw B
  else
    error SyntaxError
  end if
}
macro cmpbit [A, B] {
  if A eq x
    ; [$72] cmpbit x,$00
    db $72
    db B
  else if A eq y
    ; [$73] cmpbit y,$00
    db $73
    db B
  else if A eq z
    ; [$74] cmpbit z,$00
    db $74
    db B
  else if A eq w
    ; [$75] cmpbit w,$00
    db $75
    db B
  else if A eq a
    ; [$76] cmpbit a,$00
    db $76
    db B
  else
    error SyntaxError
  end if
}
macro jmp [A, B] {
  if A eq i
    ; [$AC] jmp i
    db $AC
  else if A eq j
    ; [$AD] jmp j
    db $AD
  else if B eq x
    ; [$AE] jmp $0000,x
    db $AE
    dw A
  else if B eq y
    ; [$AF] jmp $0000,y
    db $AF
    dw A
  else if B eq z
    ; [$B0] jmp $0000,z
    db $B0
    dw A
  else if B eq w
    ; [$B1] jmp $0000,w
    db $B1
    dw A
  else if B eq a
    ; [$B2] jmp $0000,a
    db $B2
    dw A
  else
    ; [$AB] jmp $0000
    db $AB
    dw A
  end if
}
macro jmp.eq [A, B] {
  ; [$B4] jmp.eq $0000
  db $B4
  dw A
}
macro jmp.neq [A, B] {
  ; [$B6] jmp.neq $0000
  db $B6
  dw A
}
macro jmp.gt [A, B] {
  ; [$B8] jmp.gt $0000
  db $B8
  dw A
}
macro jmp.lt [A, B] {
  ; [$BA] jmp.lt $0000
  db $BA
  dw A
}
macro jmp.z [A, B] {
  ; [$BC] jmp.z $0000
  db $BC
  dw A
}
macro jmp.nz [A, B] {
  ; [$BE] jmp.nz $0000
  db $BE
  dw A
}
macro rjmp [A, B] {
  ; [$B3] rjmp $00
  db $B3
  db A
}
macro rjmp.eq [A, B] {
  ; [$B5] rjmp.eq $00
  db $B5
  db A
}
macro rjmp.neq [A, B] {
  ; [$B7] rjmp.neq $00
  db $B7
  db A
}
macro rjmp.gt [A, B] {
  ; [$B9] rjmp.gt $00
  db $B9
  db A
}
macro rjmp.lt [A, B] {
  ; [$BB] rjmp.lt $00
  db $BB
  db A
}
macro rjmp.z [A, B] {
  ; [$BD] rjmp.z $00
  db $BD
  db A
}
macro rjmp.nz [A, B] {
  ; [$BF] rjmp.nz $00
  db $BF
  db A
}
macro int [A, B] {
  ; [$C0] int $00
  db $C0
  db A
}
macro resume [A, B] {
  ; [$C1] resume
  db $C1
}
macro sec [A, B] {
  ; [$C2] sec
  db $C2
}
macro clc [A, B] {
  ; [$C3] clc
  db $C3
}
macro offset [A, B] {
  ; [$C4] offset $0000
  db $C4
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
OP_RETURN = $2A
OP_SET_xB = $2B
OP_SET_yB = $2C
OP_SET_zB = $2D
OP_SET_wB = $2E
OP_SET_aB = $2F
OP_SET_iA = $30
OP_SET_jA = $31
OP_ADD_ax = $32
OP_ADD_ay = $33
OP_ADD_az = $34
OP_ADD_aw = $35
OP_ADD_aa = $36
OP_ADD_xB = $37
OP_ADD_yB = $38
OP_ADD_zB = $39
OP_ADD_wB = $3A
OP_ADD_aB = $3B
OP_ADC_ax = $3C
OP_ADC_ay = $3D
OP_ADC_az = $3E
OP_ADC_aw = $3F
OP_ADC_aa = $40
OP_ADC_xB = $41
OP_ADC_yB = $42
OP_ADC_zB = $43
OP_ADC_wB = $44
OP_ADC_aB = $45
OP_SUB_ax = $46
OP_SUB_ay = $47
OP_SUB_az = $48
OP_SUB_aw = $49
OP_SUB_xB = $4A
OP_SUB_yB = $4B
OP_SUB_zB = $4C
OP_SUB_wB = $4D
OP_SUB_aB = $4E
OP_MUL_ax = $4F
OP_MUL_ay = $50
OP_MUL_az = $51
OP_MUL_aw = $52
OP_MUL_aa = $53
OP_MUL_xB = $54
OP_MUL_yB = $55
OP_MUL_zB = $56
OP_MUL_wB = $57
OP_MUL_aB = $58
OP_INC_x = $59
OP_INC_y = $5A
OP_INC_z = $5B
OP_INC_w = $5C
OP_INC_a = $5D
OP_INC_i = $5E
OP_INC_j = $5F
OP_DEC_x = $60
OP_DEC_y = $61
OP_DEC_z = $62
OP_DEC_w = $63
OP_DEC_a = $64
OP_DEC_i = $65
OP_DEC_j = $66
OP_CMP_ax = $67
OP_CMP_ay = $68
OP_CMP_az = $69
OP_CMP_aw = $6A
OP_CMP_xB = $6B
OP_CMP_yB = $6C
OP_CMP_zB = $6D
OP_CMP_wB = $6E
OP_CMP_aB = $6F
OP_CMP_iA = $70
OP_CMP_jA = $71
OP_CMPBIT_xB = $72
OP_CMPBIT_yB = $73
OP_CMPBIT_zB = $74
OP_CMPBIT_wB = $75
OP_CMPBIT_aB = $76
OP_AND_ax = $77
OP_AND_ay = $78
OP_AND_az = $79
OP_AND_aw = $7A
OP_AND_xB = $7B
OP_AND_yB = $7C
OP_AND_zB = $7D
OP_AND_wB = $7E
OP_AND_aB = $7F
OP_OR_ax = $80
OP_OR_ay = $81
OP_OR_az = $82
OP_OR_aw = $83
OP_OR_xB = $84
OP_OR_yB = $85
OP_OR_zB = $86
OP_OR_wB = $87
OP_OR_aB = $88
OP_NOT_x = $89
OP_NOT_y = $8A
OP_NOT_z = $8B
OP_NOT_w = $8C
OP_NOT_a = $8D
OP_XOR_ax = $8E
OP_XOR_ay = $8F
OP_XOR_az = $90
OP_XOR_aw = $91
OP_XOR_xB = $92
OP_XOR_yB = $93
OP_XOR_zB = $94
OP_XOR_wB = $95
OP_XOR_aB = $96
OP_SHL_xB = $97
OP_SHL_yB = $98
OP_SHL_zB = $99
OP_SHL_wB = $9A
OP_SHL_aB = $9B
OP_SHR_xB = $9C
OP_SHR_yB = $9D
OP_SHR_zB = $9E
OP_SHR_wB = $9F
OP_SHR_aB = $A0
OP_ROL_x = $A1
OP_ROL_y = $A2
OP_ROL_z = $A3
OP_ROL_w = $A4
OP_ROL_a = $A5
OP_ROR_x = $A6
OP_ROR_y = $A7
OP_ROR_z = $A8
OP_ROR_w = $A9
OP_ROR_a = $AA
OP_JMP_A = $AB
OP_JMP_i = $AC
OP_JMP_j = $AD
OP_JMP_Ax = $AE
OP_JMP_Ay = $AF
OP_JMP_Az = $B0
OP_JMP_Aw = $B1
OP_JMP_Aa = $B2
OP_RJMP_B = $B3
OP_JMP_EQ_A = $B4
OP_RJMP_EQ_B = $B5
OP_JMP_NEQ_A = $B6
OP_RJMP_NEQ_B = $B7
OP_JMP_GT_A = $B8
OP_RJMP_GT_B = $B9
OP_JMP_LT_A = $BA
OP_RJMP_LT_B = $BB
OP_JMP_Z_A = $BC
OP_RJMP_Z_B = $BD
OP_JMP_NZ_A = $BE
OP_RJMP_NZ_B = $BF
OP_INT_B = $C0
OP_RESUME = $C1
OP_SEC = $C2
OP_CLC = $C3
OP_OFFSET_A = $C4
