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
REG_IO_OP = $003B
REG_IO_DATA_A = $003C
REG_IO_DATA_B = $003D
REG_RAND = $003E
REG_MMU_PAGE_REAL_MODE = $0040
REG_MMU_MAP0_DST = $0041
REG_MMU_MAP0_SRC_LOWER = $0042
REG_MMU_MAP0_SRC_UPPER = $0043
REG_MMU_MAP1_DST = $0044
REG_MMU_MAP1_SRC_LOWER = $0045
REG_MMU_MAP1_SRC_UPPER = $0046
REG_MMU_MAP2_DST = $0047
REG_MMU_MAP2_SRC_LOWER = $0048
REG_MMU_MAP2_SRC_UPPER = $0049
REG_MMU_MAP3_DST = $004A
REG_MMU_MAP3_SRC_LOWER = $004B
REG_MMU_MAP3_SRC_UPPER = $004C
REG_MMU_MAP4_DST = $004D
REG_MMU_MAP4_SRC_LOWER = $004E
REG_MMU_MAP4_SRC_UPPER = $004F
REG_MMU_MAP5_DST = $0050
REG_MMU_MAP5_SRC_LOWER = $0051
REG_MMU_MAP5_SRC_UPPER = $0052
REG_MMU_MAP6_DST = $0053
REG_MMU_MAP6_SRC_LOWER = $0054
REG_MMU_MAP6_SRC_UPPER = $0055
REG_MMU_MAP7_DST = $0056
REG_MMU_MAP7_SRC_LOWER = $0057
REG_MMU_MAP7_SRC_UPPER = $0058
REG_ROM_RESERVED = $0059
REG_STACK_BEGIN = $0200
REG_STACK_END = $0300

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
IO_FPY_MSG_SEEK = $0003
IO_FPY_MSG_READ = $0004
IO_FPY_MSG_WRITE = $0005
IO_FPY_MSG_ERROR = $0080
IO_FPY_STATE_DISK = $0001
IO_OP_KEY = $0001
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
INTVEC_IO = $0004
INTVEC_ADDR_RESET = $0000
INTVEC_ADDR_HBLANK = $0002
INTVEC_ADDR_VBLANK = $0004
INTVEC_ADDR_FLOPPY = $0006
INTVEC_ADDR_IO = $0008

; Interrupts
INT_FLOPPY_OP = $00D0 ; Run a floppy operation 
INT_GPUON = $00FE ; Turn on the GPU 
INT_RESET = $00FF ; Soft Reset 

; Keys
KEY_0 = $01
KEY_1 = $02
KEY_2 = $03
KEY_3 = $04
KEY_4 = $05
KEY_5 = $06
KEY_6 = $07
KEY_7 = $08
KEY_8 = $09
KEY_9 = $0A
KEY_LowercaseA = $0B
KEY_LowercaseB = $0C
KEY_LowercaseC = $0D
KEY_LowercaseD = $0E
KEY_LowercaseE = $0F
KEY_LowercaseF = $10
KEY_LowercaseG = $11
KEY_LowercaseH = $12
KEY_LowercaseI = $13
KEY_LowercaseJ = $14
KEY_LowercaseK = $15
KEY_LowercaseL = $16
KEY_LowercaseM = $17
KEY_LowercaseN = $18
KEY_LowercaseO = $19
KEY_LowercaseP = $1A
KEY_LowercaseQ = $1B
KEY_LowercaseR = $1C
KEY_LowercaseS = $1D
KEY_LowercaseT = $1E
KEY_LowercaseU = $1F
KEY_LowercaseV = $20
KEY_LowercaseW = $21
KEY_LowercaseX = $22
KEY_LowercaseY = $23
KEY_LowercaseZ = $24
KEY_UppercaseA = $25
KEY_UppercaseB = $26
KEY_UppercaseC = $27
KEY_UppercaseD = $28
KEY_UppercaseE = $29
KEY_UppercaseF = $2A
KEY_UppercaseG = $2B
KEY_UppercaseH = $2C
KEY_UppercaseI = $2D
KEY_UppercaseJ = $2E
KEY_UppercaseK = $2F
KEY_UppercaseL = $30
KEY_UppercaseM = $31
KEY_UppercaseN = $32
KEY_UppercaseO = $33
KEY_UppercaseP = $34
KEY_UppercaseQ = $35
KEY_UppercaseR = $36
KEY_UppercaseS = $37
KEY_UppercaseT = $38
KEY_UppercaseU = $39
KEY_UppercaseV = $3A
KEY_UppercaseW = $3B
KEY_UppercaseX = $3C
KEY_UppercaseY = $3D
KEY_UppercaseZ = $3E
KEY_Space = $3F
KEY_Exclaim = $40
KEY_DoubleQuote = $41
KEY_Hash = $42
KEY_PoundSign = $43
KEY_Percentage = $44
KEY_Ampersand = $45
KEY_SingleQuote = $46
KEY_LeftParentheses = $47
KEY_RightParentheses = $48
KEY_At = $49
KEY_Plus = $4A
KEY_Minus = $4B
KEY_Multiply = $4C
KEY_Equals = $4D
KEY_Divide = $4E
KEY_Comma = $4F
KEY_Period = $50
KEY_SemiColon = $51
KEY_LeftSquareBracket = $52
KEY_RightSquareBracket = $53
KEY_LeftBrace = $54
KEY_RightBrace = $55
KEY_QuestionMark = $56
KEY_LeftAngleBracket = $57
KEY_RightAngleBracket = $58
KEY_Colon = $59
KEY_Return = $5A
KEY_Break = $5B
KEY_Reset = $5C
KEY_Delete = $5D
KEY_Function1 = $5E
KEY_Function2 = $5F
KEY_Function3 = $60
KEY_Function4 = $61
KEY_Program1 = $62
KEY_Program2 = $63
KEY_Program3 = $64
KEY_Program4 = $65
KEY_LeftArrow = $66
KEY_RightArrow = $67
KEY_UpArrow = $68
KEY_DownArrow = $69
KEY_CapsLock = $6A
KEY_Control = $6B
KEY_LeftShift = $6C
KEY_RightShift = $6D
KEY_MOD_Shift = $01
KEY_MOD_Control = $02
KEY_COUNT = $6E

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
macro cpy [A, B] {
  if A eq a & B eq x
    ; [$31] cpy a,x
    db $31
  else if A eq a & B eq y
    ; [$32] cpy a,y
    db $32
  else if A eq a & B eq z
    ; [$33] cpy a,z
    db $33
  else if A eq a & B eq w
    ; [$34] cpy a,w
    db $34
  else if A eq x & B eq a
    ; [$35] cpy x,a
    db $35
  else if A eq y & B eq a
    ; [$36] cpy y,a
    db $36
  else if A eq z & B eq a
    ; [$37] cpy z,a
    db $37
  else if A eq w & B eq a
    ; [$38] cpy w,a
    db $38
  else
    error SyntaxError
  end if
}
macro set [A, B] {
  if A eq x
    ; [$39] set x,$00
    db $39
    db B
  else if A eq y
    ; [$3A] set y,$00
    db $3A
    db B
  else if A eq z
    ; [$3B] set z,$00
    db $3B
    db B
  else if A eq w
    ; [$3C] set w,$00
    db $3C
    db B
  else if A eq a
    ; [$3D] set a,$00
    db $3D
    db B
  else if A eq i
    ; [$3E] set i,$0000
    db $3E
    dw B
  else if A eq j
    ; [$3F] set j,$0000
    db $3F
    dw B
  else
    error SyntaxError
  end if
}
macro add [A, B] {
  if A eq a & B eq x
    ; [$40] add a,x
    db $40
  else if A eq a & B eq y
    ; [$41] add a,y
    db $41
  else if A eq a & B eq z
    ; [$42] add a,z
    db $42
  else if A eq a & B eq w
    ; [$43] add a,w
    db $43
  else if A eq i & B eq j
    ; [$44] add i,j
    db $44
  else if A eq i & B eq a
    ; [$45] add i,a
    db $45
  else if A eq i & B eq z
    ; [$46] add i,z
    db $46
  else if A eq i & B eq w
    ; [$47] add i,w
    db $47
  else if A eq j & B eq a
    ; [$48] add j,a
    db $48
  else if A eq j & B eq x
    ; [$49] add j,x
    db $49
  else if A eq j & B eq y
    ; [$4A] add j,y
    db $4A
  else if A eq i
    ; [$4B] add i,$0000
    db $4B
    dw B
  else if A eq j
    ; [$4C] add j,$0000
    db $4C
    dw B
  else if A eq x
    ; [$4D] add x,$00
    db $4D
    db B
  else if A eq y
    ; [$4E] add y,$00
    db $4E
    db B
  else if A eq z
    ; [$4F] add z,$00
    db $4F
    db B
  else if A eq w
    ; [$50] add w,$00
    db $50
    db B
  else if A eq a
    ; [$51] add a,$00
    db $51
    db B
  else
    error SyntaxError
  end if
}
macro sub [A, B] {
  if A eq a & B eq x
    ; [$52] sub a,x
    db $52
  else if A eq a & B eq y
    ; [$53] sub a,y
    db $53
  else if A eq a & B eq z
    ; [$54] sub a,z
    db $54
  else if A eq a & B eq w
    ; [$55] sub a,w
    db $55
  else if A eq i
    ; [$56] sub i,$0000
    db $56
    dw B
  else if A eq j
    ; [$57] sub j,$0000
    db $57
    dw B
  else if A eq i & B eq j
    ; [$58] sub i,j
    db $58
  else if A eq x
    ; [$59] sub x,$00
    db $59
    db B
  else if A eq y
    ; [$5A] sub y,$00
    db $5A
    db B
  else if A eq z
    ; [$5B] sub z,$00
    db $5B
    db B
  else if A eq w
    ; [$5C] sub w,$00
    db $5C
    db B
  else if A eq a
    ; [$5D] sub a,$00
    db $5D
    db B
  else
    error SyntaxError
  end if
}
macro mul [A, B] {
  if A eq a & B eq x
    ; [$5E] mul a,x
    db $5E
  else if A eq a
    ; [$5F] mul a,$00
    db $5F
    db B
  else if A eq i & B eq j
    ; [$60] mul i,j
    db $60
  else if A eq i
    ; [$61] mul i,$0000
    db $61
    dw B
  else if A eq j
    ; [$62] mul j,$0000
    db $62
    dw B
  else
    error SyntaxError
  end if
}
macro div [A, B] {
  if A eq a & B eq x
    ; [$63] div a,x
    db $63
  else if A eq a
    ; [$64] div a,$00
    db $64
    db B
  else if A eq i & B eq j
    ; [$65] div i,j
    db $65
  else if A eq i
    ; [$66] div i,$0000
    db $66
    dw B
  else if A eq j
    ; [$67] div j,$0000
    db $67
    dw B
  else
    error SyntaxError
  end if
}
macro mod [A, B] {
  if A eq a & B eq x
    ; [$68] mod a,x
    db $68
  else if A eq a
    ; [$69] mod a,$00
    db $69
    db B
  else if A eq i & B eq j
    ; [$6A] mod i,j
    db $6A
  else if A eq i
    ; [$6B] mod i,$0000
    db $6B
    dw B
  else if A eq j
    ; [$6C] mod j,$0000
    db $6C
    dw B
  else
    error SyntaxError
  end if
}
macro inc [A, B] {
  if A eq x
    ; [$6D] inc x
    db $6D
  else if A eq y
    ; [$6E] inc y
    db $6E
  else if A eq z
    ; [$6F] inc z
    db $6F
  else if A eq w
    ; [$70] inc w
    db $70
  else if A eq a
    ; [$71] inc a
    db $71
  else if A eq i
    ; [$72] inc i
    db $72
  else if A eq j
    ; [$73] inc j
    db $73
  else
    error SyntaxError
  end if
}
macro dec [A, B] {
  if A eq x
    ; [$74] dec x
    db $74
  else if A eq y
    ; [$75] dec y
    db $75
  else if A eq z
    ; [$76] dec z
    db $76
  else if A eq w
    ; [$77] dec w
    db $77
  else if A eq a
    ; [$78] dec a
    db $78
  else if A eq i
    ; [$79] dec i
    db $79
  else if A eq j
    ; [$7A] dec j
    db $7A
  else
    error SyntaxError
  end if
}
macro and [A, B] {
  if A eq a & B eq x
    ; [$90] and a,x
    db $90
  else if A eq a & B eq y
    ; [$91] and a,y
    db $91
  else if A eq a & B eq z
    ; [$92] and a,z
    db $92
  else if A eq a & B eq w
    ; [$93] and a,w
    db $93
  else if A eq x
    ; [$94] and x,$00
    db $94
    db B
  else if A eq y
    ; [$95] and y,$00
    db $95
    db B
  else if A eq z
    ; [$96] and z,$00
    db $96
    db B
  else if A eq w
    ; [$97] and w,$00
    db $97
    db B
  else if A eq a
    ; [$98] and a,$00
    db $98
    db B
  else
    error SyntaxError
  end if
}
macro or [A, B] {
  if A eq a & B eq x
    ; [$99] or a,x
    db $99
  else if A eq a & B eq y
    ; [$9A] or a,y
    db $9A
  else if A eq a & B eq z
    ; [$9B] or a,z
    db $9B
  else if A eq a & B eq w
    ; [$9C] or a,w
    db $9C
  else if A eq x
    ; [$9D] or x,$00
    db $9D
    db B
  else if A eq y
    ; [$9E] or y,$00
    db $9E
    db B
  else if A eq z
    ; [$9F] or z,$00
    db $9F
    db B
  else if A eq w
    ; [$A0] or w,$00
    db $A0
    db B
  else if A eq a
    ; [$A1] or a,$00
    db $A1
    db B
  else
    error SyntaxError
  end if
}
macro xor [A, B] {
  if A eq a & B eq x
    ; [$A7] xor a,x
    db $A7
  else if A eq a & B eq y
    ; [$A8] xor a,y
    db $A8
  else if A eq a & B eq z
    ; [$A9] xor a,z
    db $A9
  else if A eq a & B eq w
    ; [$AA] xor a,w
    db $AA
  else if A eq x
    ; [$AB] xor x,$00
    db $AB
    db B
  else if A eq y
    ; [$AC] xor y,$00
    db $AC
    db B
  else if A eq z
    ; [$AD] xor z,$00
    db $AD
    db B
  else if A eq w
    ; [$AE] xor w,$00
    db $AE
    db B
  else if A eq a
    ; [$AF] xor a,$00
    db $AF
    db B
  else
    error SyntaxError
  end if
}
macro not [A, B] {
  if A eq x
    ; [$A2] not x
    db $A2
  else if A eq y
    ; [$A3] not y
    db $A3
  else if A eq z
    ; [$A4] not z
    db $A4
  else if A eq w
    ; [$A5] not w
    db $A5
  else if A eq a
    ; [$A6] not a
    db $A6
  else
    error SyntaxError
  end if
}
macro shl [A, B] {
  if A eq x
    ; [$B0] shl x,$00
    db $B0
    db B
  else if A eq y
    ; [$B1] shl y,$00
    db $B1
    db B
  else if A eq z
    ; [$B2] shl z,$00
    db $B2
    db B
  else if A eq w
    ; [$B3] shl w,$00
    db $B3
    db B
  else if A eq a
    ; [$B4] shl a,$00
    db $B4
    db B
  else
    error SyntaxError
  end if
}
macro shr [A, B] {
  if A eq x
    ; [$B5] shr x,$00
    db $B5
    db B
  else if A eq y
    ; [$B6] shr y,$00
    db $B6
    db B
  else if A eq z
    ; [$B7] shr z,$00
    db $B7
    db B
  else if A eq w
    ; [$B8] shr w,$00
    db $B8
    db B
  else if A eq a
    ; [$B9] shr a,$00
    db $B9
    db B
  else
    error SyntaxError
  end if
}
macro rol [A, B] {
  if A eq x
    ; [$BA] rol x
    db $BA
  else if A eq y
    ; [$BB] rol y
    db $BB
  else if A eq z
    ; [$BC] rol z
    db $BC
  else if A eq w
    ; [$BD] rol w
    db $BD
  else if A eq a
    ; [$BE] rol a
    db $BE
  else
    error SyntaxError
  end if
}
macro ror [A, B] {
  if A eq x
    ; [$BF] ror x
    db $BF
  else if A eq y
    ; [$C0] ror y
    db $C0
  else if A eq z
    ; [$C1] ror z
    db $C1
  else if A eq w
    ; [$C2] ror w
    db $C2
  else if A eq a
    ; [$C3] ror a
    db $C3
  else
    error SyntaxError
  end if
}
macro cmp [A, B] {
  if A eq a & B eq x
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
  else if A eq a
    ; [$7F] cmp a
    db $7F
  else if A eq x
    ; [$80] cmp x
    db $80
  else if A eq y
    ; [$81] cmp y
    db $81
  else if A eq z
    ; [$82] cmp z
    db $82
  else if A eq w
    ; [$83] cmp w
    db $83
  else
    error SyntaxError
  end if
}
macro cmpi [A, B] {
  if A eq x
    ; [$84] cmpi x,$00
    db $84
    db B
  else if A eq y
    ; [$85] cmpi y,$00
    db $85
    db B
  else if A eq z
    ; [$86] cmpi z,$00
    db $86
    db B
  else if A eq w
    ; [$87] cmpi w,$00
    db $87
    db B
  else if A eq a
    ; [$88] cmpi a,$00
    db $88
    db B
  else if A eq i
    ; [$89] cmpi i,$0000
    db $89
    dw B
  else if A eq j
    ; [$8A] cmpi j,$0000
    db $8A
    dw B
  else
    error SyntaxError
  end if
}
macro cmpbit [A, B] {
  if A eq x
    ; [$8B] cmpbit x,$00
    db $8B
    db B
  else if A eq y
    ; [$8C] cmpbit y,$00
    db $8C
    db B
  else if A eq z
    ; [$8D] cmpbit z,$00
    db $8D
    db B
  else if A eq w
    ; [$8E] cmpbit w,$00
    db $8E
    db B
  else if A eq a
    ; [$8F] cmpbit a,$00
    db $8F
    db B
  else
    error SyntaxError
  end if
}
macro jmp [A, B] {
  if A eq i
    ; [$C5] jmp i
    db $C5
  else if A eq j
    ; [$C6] jmp j
    db $C6
  else if B eq x
    ; [$C7] jmp $0000,x
    db $C7
    dw A
  else if B eq y
    ; [$C8] jmp $0000,y
    db $C8
    dw A
  else if B eq z
    ; [$C9] jmp $0000,z
    db $C9
    dw A
  else if B eq w
    ; [$CA] jmp $0000,w
    db $CA
    dw A
  else if B eq a
    ; [$CB] jmp $0000,a
    db $CB
    dw A
  else
    ; [$C4] jmp $0000
    db $C4
    dw A
  end if
}
macro jmp.eq [A, B] {
  ; [$CD] jmp.eq $0000
  db $CD
  dw A
}
macro jmp.neq [A, B] {
  ; [$CF] jmp.neq $0000
  db $CF
  dw A
}
macro jmp.gt [A, B] {
  ; [$D1] jmp.gt $0000
  db $D1
  dw A
}
macro jmp.lt [A, B] {
  ; [$D3] jmp.lt $0000
  db $D3
  dw A
}
macro jmp.z [A, B] {
  ; [$D5] jmp.z $0000
  db $D5
  dw A
}
macro jmp.nz [A, B] {
  ; [$D7] jmp.nz $0000
  db $D7
  dw A
}
macro rjmp [A, B] {
  ; [$CC] rjmp $00
  db $CC
  db A
}
macro rjmp.eq [A, B] {
  ; [$CE] rjmp.eq $00
  db $CE
  db A
}
macro rjmp.neq [A, B] {
  ; [$D0] rjmp.neq $00
  db $D0
  db A
}
macro rjmp.gt [A, B] {
  ; [$D2] rjmp.gt $00
  db $D2
  db A
}
macro rjmp.lt [A, B] {
  ; [$D4] rjmp.lt $00
  db $D4
  db A
}
macro rjmp.z [A, B] {
  ; [$D6] rjmp.z $00
  db $D6
  db A
}
macro rjmp.nz [A, B] {
  ; [$D8] rjmp.nz $00
  db $D8
  db A
}
macro bjmp [A, B] {
  if B eq a
    ; [$DE] bjmp $0000,a
    db $DE
    dw A
  else if B eq x
    ; [$DF] bjmp $0000,x
    db $DF
    dw A
  else if B eq y
    ; [$E0] bjmp $0000,y
    db $E0
    dw A
  else if B eq z
    ; [$E1] bjmp $0000,z
    db $E1
    dw A
  else if B eq w
    ; [$E2] bjmp $0000,w
    db $E2
    dw A
  else
    error SyntaxError
  end if
}
macro bcall [A, B] {
  if B eq a
    ; [$D9] bcall $0000,a
    db $D9
    dw A
  else if B eq x
    ; [$DA] bcall $0000,x
    db $DA
    dw A
  else if B eq y
    ; [$DB] bcall $0000,y
    db $DB
    dw A
  else if B eq z
    ; [$DC] bcall $0000,z
    db $DC
    dw A
  else if B eq w
    ; [$DD] bcall $0000,w
    db $DD
    dw A
  else
    error SyntaxError
  end if
}
macro int [A, B] {
  ; [$E3] int $00
  db $E3
  db A
}
macro resume [A, B] {
  ; [$E4] resume
  db $E4
}
macro sec [A, B] {
  ; [$E5] sec
  db $E5
}
macro clc [A, B] {
  ; [$E6] clc
  db $E6
}
macro offset [A, B] {
  ; [$E7] offset $0000
  db $E7
  dw A
}
macro roffset [A, B] {
  ; [$E8] roffset $0000
  db $E8
  dw A
}
macro dbr [A, B] {
  ; [$E9] dbr $0000
  db $E9
  db A
}
macro dba [A, B] {
  ; [$EA] dba $00
  db $EA
  dw A
}
macro dbb [A, B] {
  ; [$EB] dbb
  db $EB
}
macro dbn [A, B] {
  ; [$EC] dbn $0000
  db $EC
  dw A
}
macro dbo [A, B] {
  ; [$ED] dbo $00
  db $ED
  db A
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
OP_CPY_ax = $31
OP_CPY_ay = $32
OP_CPY_az = $33
OP_CPY_aw = $34
OP_CPY_xa = $35
OP_CPY_ya = $36
OP_CPY_za = $37
OP_CPY_wa = $38
OP_SET_xB = $39
OP_SET_yB = $3A
OP_SET_zB = $3B
OP_SET_wB = $3C
OP_SET_aB = $3D
OP_SET_iA = $3E
OP_SET_jA = $3F
OP_ADD_ax = $40
OP_ADD_ay = $41
OP_ADD_az = $42
OP_ADD_aw = $43
OP_ADD_ij = $44
OP_ADD_ia = $45
OP_ADD_iz = $46
OP_ADD_iw = $47
OP_ADD_ja = $48
OP_ADD_jx = $49
OP_ADD_jy = $4A
OP_ADD_iA = $4B
OP_ADD_jA = $4C
OP_ADD_xB = $4D
OP_ADD_yB = $4E
OP_ADD_zB = $4F
OP_ADD_wB = $50
OP_ADD_aB = $51
OP_SUB_ax = $52
OP_SUB_ay = $53
OP_SUB_az = $54
OP_SUB_aw = $55
OP_SUB_iA = $56
OP_SUB_jA = $57
OP_SUB_ij = $58
OP_SUB_xB = $59
OP_SUB_yB = $5A
OP_SUB_zB = $5B
OP_SUB_wB = $5C
OP_SUB_aB = $5D
OP_MUL_ax = $5E
OP_MUL_aB = $5F
OP_MUL_ij = $60
OP_MUL_iA = $61
OP_MUL_jA = $62
OP_DIV_ax = $63
OP_DIV_aB = $64
OP_DIV_ij = $65
OP_DIV_iA = $66
OP_DIV_jA = $67
OP_MOD_ax = $68
OP_MOD_aB = $69
OP_MOD_ij = $6A
OP_MOD_iA = $6B
OP_MOD_jA = $6C
OP_INC_x = $6D
OP_INC_y = $6E
OP_INC_z = $6F
OP_INC_w = $70
OP_INC_a = $71
OP_INC_i = $72
OP_INC_j = $73
OP_DEC_x = $74
OP_DEC_y = $75
OP_DEC_z = $76
OP_DEC_w = $77
OP_DEC_a = $78
OP_DEC_i = $79
OP_DEC_j = $7A
OP_CMP_ax = $7B
OP_CMP_ay = $7C
OP_CMP_az = $7D
OP_CMP_aw = $7E
OP_CMP_a = $7F
OP_CMP_x = $80
OP_CMP_y = $81
OP_CMP_z = $82
OP_CMP_w = $83
OP_CMPI_xB = $84
OP_CMPI_yB = $85
OP_CMPI_zB = $86
OP_CMPI_wB = $87
OP_CMPI_aB = $88
OP_CMPI_iA = $89
OP_CMPI_jA = $8A
OP_CMPBIT_xB = $8B
OP_CMPBIT_yB = $8C
OP_CMPBIT_zB = $8D
OP_CMPBIT_wB = $8E
OP_CMPBIT_aB = $8F
OP_AND_ax = $90
OP_AND_ay = $91
OP_AND_az = $92
OP_AND_aw = $93
OP_AND_xB = $94
OP_AND_yB = $95
OP_AND_zB = $96
OP_AND_wB = $97
OP_AND_aB = $98
OP_OR_ax = $99
OP_OR_ay = $9A
OP_OR_az = $9B
OP_OR_aw = $9C
OP_OR_xB = $9D
OP_OR_yB = $9E
OP_OR_zB = $9F
OP_OR_wB = $A0
OP_OR_aB = $A1
OP_NOT_x = $A2
OP_NOT_y = $A3
OP_NOT_z = $A4
OP_NOT_w = $A5
OP_NOT_a = $A6
OP_XOR_ax = $A7
OP_XOR_ay = $A8
OP_XOR_az = $A9
OP_XOR_aw = $AA
OP_XOR_xB = $AB
OP_XOR_yB = $AC
OP_XOR_zB = $AD
OP_XOR_wB = $AE
OP_XOR_aB = $AF
OP_SHL_xB = $B0
OP_SHL_yB = $B1
OP_SHL_zB = $B2
OP_SHL_wB = $B3
OP_SHL_aB = $B4
OP_SHR_xB = $B5
OP_SHR_yB = $B6
OP_SHR_zB = $B7
OP_SHR_wB = $B8
OP_SHR_aB = $B9
OP_ROL_x = $BA
OP_ROL_y = $BB
OP_ROL_z = $BC
OP_ROL_w = $BD
OP_ROL_a = $BE
OP_ROR_x = $BF
OP_ROR_y = $C0
OP_ROR_z = $C1
OP_ROR_w = $C2
OP_ROR_a = $C3
OP_JMP_A = $C4
OP_JMP_i = $C5
OP_JMP_j = $C6
OP_JMP_Ax = $C7
OP_JMP_Ay = $C8
OP_JMP_Az = $C9
OP_JMP_Aw = $CA
OP_JMP_Aa = $CB
OP_RJMP_B = $CC
OP_JMP_EQ_A = $CD
OP_RJMP_EQ_B = $CE
OP_JMP_NEQ_A = $CF
OP_RJMP_NEQ_B = $D0
OP_JMP_GT_A = $D1
OP_RJMP_GT_B = $D2
OP_JMP_LT_A = $D3
OP_RJMP_LT_B = $D4
OP_JMP_Z_A = $D5
OP_RJMP_Z_B = $D6
OP_JMP_NZ_A = $D7
OP_RJMP_NZ_B = $D8
OP_BCALL_Aa = $D9
OP_BCALL_Ax = $DA
OP_BCALL_Ay = $DB
OP_BCALL_Az = $DC
OP_BCALL_Aw = $DD
OP_BJMP_Aa = $DE
OP_BJMP_Ax = $DF
OP_BJMP_Ay = $E0
OP_BJMP_Az = $E1
OP_BJMP_Aw = $E2
OP_INT_B = $E3
OP_RESUME = $E4
OP_SEC = $E5
OP_CLC = $E6
OP_OFFSET_A = $E7
OP_ROFFSET_A = $E8
OP_DBR_A = $E9
OP_DBA_B = $EA
OP_DBB = $EB
OP_DBN_A = $EC
OP_DBO_B = $ED
