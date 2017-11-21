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
  else if A eq i & B eq z
    ; [$42] add i,z
    db $42
  else if A eq i & B eq w
    ; [$43] add i,w
    db $43
  else
    error SyntaxError
  end if
}
macro adc [A, B] {
  if A eq a & B eq x
    ; [$44] adc a,x
    db $44
  else if A eq a & B eq y
    ; [$45] adc a,y
    db $45
  else if A eq a & B eq z
    ; [$46] adc a,z
    db $46
  else if A eq a & B eq w
    ; [$47] adc a,w
    db $47
  else if A eq a & B eq a
    ; [$48] adc a,a
    db $48
  else if A eq x
    ; [$49] adc x,$00
    db $49
    db B
  else if A eq y
    ; [$4A] adc y,$00
    db $4A
    db B
  else if A eq z
    ; [$4B] adc z,$00
    db $4B
    db B
  else if A eq w
    ; [$4C] adc w,$00
    db $4C
    db B
  else if A eq a
    ; [$4D] adc a,$00
    db $4D
    db B
  else
    error SyntaxError
  end if
}
macro sub [A, B] {
  if A eq a & B eq x
    ; [$4E] sub a,x
    db $4E
  else if A eq a & B eq y
    ; [$4F] sub a,y
    db $4F
  else if A eq a & B eq z
    ; [$50] sub a,z
    db $50
  else if A eq a & B eq w
    ; [$51] sub a,w
    db $51
  else if A eq x
    ; [$52] sub x,$00
    db $52
    db B
  else if A eq y
    ; [$53] sub y,$00
    db $53
    db B
  else if A eq z
    ; [$54] sub z,$00
    db $54
    db B
  else if A eq w
    ; [$55] sub w,$00
    db $55
    db B
  else if A eq a
    ; [$56] sub a,$00
    db $56
    db B
  else
    error SyntaxError
  end if
}
macro mul [A, B] {
  if A eq a & B eq x
    ; [$57] mul a,x
    db $57
  else if A eq a & B eq y
    ; [$58] mul a,y
    db $58
  else if A eq a & B eq z
    ; [$59] mul a,z
    db $59
  else if A eq a & B eq w
    ; [$5A] mul a,w
    db $5A
  else if A eq a & B eq a
    ; [$5B] mul a,a
    db $5B
  else if A eq x
    ; [$5C] mul x,$00
    db $5C
    db B
  else if A eq y
    ; [$5D] mul y,$00
    db $5D
    db B
  else if A eq z
    ; [$5E] mul z,$00
    db $5E
    db B
  else if A eq w
    ; [$5F] mul w,$00
    db $5F
    db B
  else if A eq a
    ; [$60] mul a,$00
    db $60
    db B
  else
    error SyntaxError
  end if
}
macro inc [A, B] {
  if A eq x
    ; [$61] inc x
    db $61
  else if A eq y
    ; [$62] inc y
    db $62
  else if A eq z
    ; [$63] inc z
    db $63
  else if A eq w
    ; [$64] inc w
    db $64
  else if A eq a
    ; [$65] inc a
    db $65
  else if A eq i
    ; [$66] inc i
    db $66
  else if A eq j
    ; [$67] inc j
    db $67
  else
    error SyntaxError
  end if
}
macro dec [A, B] {
  if A eq x
    ; [$68] dec x
    db $68
  else if A eq y
    ; [$69] dec y
    db $69
  else if A eq z
    ; [$6A] dec z
    db $6A
  else if A eq w
    ; [$6B] dec w
    db $6B
  else if A eq a
    ; [$6C] dec a
    db $6C
  else if A eq i
    ; [$6D] dec i
    db $6D
  else if A eq j
    ; [$6E] dec j
    db $6E
  else
    error SyntaxError
  end if
}
macro and [A, B] {
  if A eq a & B eq x
    ; [$84] and a,x
    db $84
  else if A eq a & B eq y
    ; [$85] and a,y
    db $85
  else if A eq a & B eq z
    ; [$86] and a,z
    db $86
  else if A eq a & B eq w
    ; [$87] and a,w
    db $87
  else if A eq x
    ; [$88] and x,$00
    db $88
    db B
  else if A eq y
    ; [$89] and y,$00
    db $89
    db B
  else if A eq z
    ; [$8A] and z,$00
    db $8A
    db B
  else if A eq w
    ; [$8B] and w,$00
    db $8B
    db B
  else if A eq a
    ; [$8C] and a,$00
    db $8C
    db B
  else
    error SyntaxError
  end if
}
macro or [A, B] {
  if A eq a & B eq x
    ; [$8D] or a,x
    db $8D
  else if A eq a & B eq y
    ; [$8E] or a,y
    db $8E
  else if A eq a & B eq z
    ; [$8F] or a,z
    db $8F
  else if A eq a & B eq w
    ; [$90] or a,w
    db $90
  else if A eq x
    ; [$91] or x,$00
    db $91
    db B
  else if A eq y
    ; [$92] or y,$00
    db $92
    db B
  else if A eq z
    ; [$93] or z,$00
    db $93
    db B
  else if A eq w
    ; [$94] or w,$00
    db $94
    db B
  else if A eq a
    ; [$95] or a,$00
    db $95
    db B
  else
    error SyntaxError
  end if
}
macro xor [A, B] {
  if A eq a & B eq x
    ; [$9B] xor a,x
    db $9B
  else if A eq a & B eq y
    ; [$9C] xor a,y
    db $9C
  else if A eq a & B eq z
    ; [$9D] xor a,z
    db $9D
  else if A eq a & B eq w
    ; [$9E] xor a,w
    db $9E
  else if A eq x
    ; [$9F] xor x,$00
    db $9F
    db B
  else if A eq y
    ; [$A0] xor y,$00
    db $A0
    db B
  else if A eq z
    ; [$A1] xor z,$00
    db $A1
    db B
  else if A eq w
    ; [$A2] xor w,$00
    db $A2
    db B
  else if A eq a
    ; [$A3] xor a,$00
    db $A3
    db B
  else
    error SyntaxError
  end if
}
macro not [A, B] {
  if A eq x
    ; [$96] not x
    db $96
  else if A eq y
    ; [$97] not y
    db $97
  else if A eq z
    ; [$98] not z
    db $98
  else if A eq w
    ; [$99] not w
    db $99
  else if A eq a
    ; [$9A] not a
    db $9A
  else
    error SyntaxError
  end if
}
macro shl [A, B] {
  if A eq x
    ; [$A4] shl x,$00
    db $A4
    db B
  else if A eq y
    ; [$A5] shl y,$00
    db $A5
    db B
  else if A eq z
    ; [$A6] shl z,$00
    db $A6
    db B
  else if A eq w
    ; [$A7] shl w,$00
    db $A7
    db B
  else if A eq a
    ; [$A8] shl a,$00
    db $A8
    db B
  else
    error SyntaxError
  end if
}
macro shr [A, B] {
  if A eq x
    ; [$A9] shr x,$00
    db $A9
    db B
  else if A eq y
    ; [$AA] shr y,$00
    db $AA
    db B
  else if A eq z
    ; [$AB] shr z,$00
    db $AB
    db B
  else if A eq w
    ; [$AC] shr w,$00
    db $AC
    db B
  else if A eq a
    ; [$AD] shr a,$00
    db $AD
    db B
  else
    error SyntaxError
  end if
}
macro rol [A, B] {
  if A eq x
    ; [$AE] rol x
    db $AE
  else if A eq y
    ; [$AF] rol y
    db $AF
  else if A eq z
    ; [$B0] rol z
    db $B0
  else if A eq w
    ; [$B1] rol w
    db $B1
  else if A eq a
    ; [$B2] rol a
    db $B2
  else
    error SyntaxError
  end if
}
macro ror [A, B] {
  if A eq x
    ; [$B3] ror x
    db $B3
  else if A eq y
    ; [$B4] ror y
    db $B4
  else if A eq z
    ; [$B5] ror z
    db $B5
  else if A eq w
    ; [$B6] ror w
    db $B6
  else if A eq a
    ; [$B7] ror a
    db $B7
  else
    error SyntaxError
  end if
}
macro cmp [A, B] {
  if A eq a & B eq x
    ; [$6F] cmp a,x
    db $6F
  else if A eq a & B eq y
    ; [$70] cmp a,y
    db $70
  else if A eq a & B eq z
    ; [$71] cmp a,z
    db $71
  else if A eq a & B eq w
    ; [$72] cmp a,w
    db $72
  else if A eq a
    ; [$73] cmp a
    db $73
  else if A eq x
    ; [$74] cmp x
    db $74
  else if A eq y
    ; [$75] cmp y
    db $75
  else if A eq z
    ; [$76] cmp z
    db $76
  else if A eq w
    ; [$77] cmp w
    db $77
  else if A eq x
    ; [$78] cmp x,$00
    db $78
    db B
  else if A eq y
    ; [$79] cmp y,$00
    db $79
    db B
  else if A eq z
    ; [$7A] cmp z,$00
    db $7A
    db B
  else if A eq w
    ; [$7B] cmp w,$00
    db $7B
    db B
  else if A eq a
    ; [$7C] cmp a,$00
    db $7C
    db B
  else if A eq i
    ; [$7D] cmp i,$0000
    db $7D
    dw B
  else if A eq j
    ; [$7E] cmp j,$0000
    db $7E
    dw B
  else
    error SyntaxError
  end if
}
macro cmpbit [A, B] {
  if A eq x
    ; [$7F] cmpbit x,$00
    db $7F
    db B
  else if A eq y
    ; [$80] cmpbit y,$00
    db $80
    db B
  else if A eq z
    ; [$81] cmpbit z,$00
    db $81
    db B
  else if A eq w
    ; [$82] cmpbit w,$00
    db $82
    db B
  else if A eq a
    ; [$83] cmpbit a,$00
    db $83
    db B
  else
    error SyntaxError
  end if
}
macro jmp [A, B] {
  if A eq i
    ; [$B9] jmp i
    db $B9
  else if A eq j
    ; [$BA] jmp j
    db $BA
  else if B eq x
    ; [$BB] jmp $0000,x
    db $BB
    dw A
  else if B eq y
    ; [$BC] jmp $0000,y
    db $BC
    dw A
  else if B eq z
    ; [$BD] jmp $0000,z
    db $BD
    dw A
  else if B eq w
    ; [$BE] jmp $0000,w
    db $BE
    dw A
  else if B eq a
    ; [$BF] jmp $0000,a
    db $BF
    dw A
  else
    ; [$B8] jmp $0000
    db $B8
    dw A
  end if
}
macro jmp.eq [A, B] {
  ; [$C1] jmp.eq $0000
  db $C1
  dw A
}
macro jmp.neq [A, B] {
  ; [$C3] jmp.neq $0000
  db $C3
  dw A
}
macro jmp.gt [A, B] {
  ; [$C5] jmp.gt $0000
  db $C5
  dw A
}
macro jmp.lt [A, B] {
  ; [$C7] jmp.lt $0000
  db $C7
  dw A
}
macro jmp.z [A, B] {
  ; [$C9] jmp.z $0000
  db $C9
  dw A
}
macro jmp.nz [A, B] {
  ; [$CB] jmp.nz $0000
  db $CB
  dw A
}
macro rjmp [A, B] {
  ; [$C0] rjmp $00
  db $C0
  db A
}
macro rjmp.eq [A, B] {
  ; [$C2] rjmp.eq $00
  db $C2
  db A
}
macro rjmp.neq [A, B] {
  ; [$C4] rjmp.neq $00
  db $C4
  db A
}
macro rjmp.gt [A, B] {
  ; [$C6] rjmp.gt $00
  db $C6
  db A
}
macro rjmp.lt [A, B] {
  ; [$C8] rjmp.lt $00
  db $C8
  db A
}
macro rjmp.z [A, B] {
  ; [$CA] rjmp.z $00
  db $CA
  db A
}
macro rjmp.nz [A, B] {
  ; [$CC] rjmp.nz $00
  db $CC
  db A
}
macro bjmp [A, B] {
  if B eq a
    ; [$D2] bjmp $0000,a
    db $D2
    dw A
  else if B eq x
    ; [$D3] bjmp $0000,x
    db $D3
    dw A
  else if B eq y
    ; [$D4] bjmp $0000,y
    db $D4
    dw A
  else if B eq z
    ; [$D5] bjmp $0000,z
    db $D5
    dw A
  else if B eq w
    ; [$D6] bjmp $0000,w
    db $D6
    dw A
  else
    error SyntaxError
  end if
}
macro bcall [A, B] {
  if B eq a
    ; [$CD] bcall $0000,a
    db $CD
    dw A
  else if B eq x
    ; [$CE] bcall $0000,x
    db $CE
    dw A
  else if B eq y
    ; [$CF] bcall $0000,y
    db $CF
    dw A
  else if B eq z
    ; [$D0] bcall $0000,z
    db $D0
    dw A
  else if B eq w
    ; [$D1] bcall $0000,w
    db $D1
    dw A
  else
    error SyntaxError
  end if
}
macro int [A, B] {
  ; [$D7] int $00
  db $D7
  db A
}
macro resume [A, B] {
  ; [$D8] resume
  db $D8
}
macro sec [A, B] {
  ; [$D9] sec
  db $D9
}
macro clc [A, B] {
  ; [$DA] clc
  db $DA
}
macro offset [A, B] {
  ; [$DB] offset $0000
  db $DB
  dw A
}
macro roffset [A, B] {
  ; [$DC] roffset $0000
  db $DC
  dw A
}
macro dbr [A, B] {
  ; [$DD] dbr $0000
  db $DD
  db A
}
macro dba [A, B] {
  ; [$DE] dba $00
  db $DE
  dw A
}
macro dbb [A, B] {
  ; [$DF] dbb
  db $DF
}
macro dbn [A, B] {
  ; [$E0] dbn $0000
  db $E0
  dw A
}
macro dbo [A, B] {
  ; [$E1] dbo $00
  db $E1
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
OP_ADD_iz = $42
OP_ADD_iw = $43
OP_ADC_ax = $44
OP_ADC_ay = $45
OP_ADC_az = $46
OP_ADC_aw = $47
OP_ADC_aa = $48
OP_ADC_xB = $49
OP_ADC_yB = $4A
OP_ADC_zB = $4B
OP_ADC_wB = $4C
OP_ADC_aB = $4D
OP_SUB_ax = $4E
OP_SUB_ay = $4F
OP_SUB_az = $50
OP_SUB_aw = $51
OP_SUB_xB = $52
OP_SUB_yB = $53
OP_SUB_zB = $54
OP_SUB_wB = $55
OP_SUB_aB = $56
OP_MUL_ax = $57
OP_MUL_ay = $58
OP_MUL_az = $59
OP_MUL_aw = $5A
OP_MUL_aa = $5B
OP_MUL_xB = $5C
OP_MUL_yB = $5D
OP_MUL_zB = $5E
OP_MUL_wB = $5F
OP_MUL_aB = $60
OP_INC_x = $61
OP_INC_y = $62
OP_INC_z = $63
OP_INC_w = $64
OP_INC_a = $65
OP_INC_i = $66
OP_INC_j = $67
OP_DEC_x = $68
OP_DEC_y = $69
OP_DEC_z = $6A
OP_DEC_w = $6B
OP_DEC_a = $6C
OP_DEC_i = $6D
OP_DEC_j = $6E
OP_CMP_ax = $6F
OP_CMP_ay = $70
OP_CMP_az = $71
OP_CMP_aw = $72
OP_CMP_a = $73
OP_CMP_x = $74
OP_CMP_y = $75
OP_CMP_z = $76
OP_CMP_w = $77
OP_CMP_xB = $78
OP_CMP_yB = $79
OP_CMP_zB = $7A
OP_CMP_wB = $7B
OP_CMP_aB = $7C
OP_CMP_iA = $7D
OP_CMP_jA = $7E
OP_CMPBIT_xB = $7F
OP_CMPBIT_yB = $80
OP_CMPBIT_zB = $81
OP_CMPBIT_wB = $82
OP_CMPBIT_aB = $83
OP_AND_ax = $84
OP_AND_ay = $85
OP_AND_az = $86
OP_AND_aw = $87
OP_AND_xB = $88
OP_AND_yB = $89
OP_AND_zB = $8A
OP_AND_wB = $8B
OP_AND_aB = $8C
OP_OR_ax = $8D
OP_OR_ay = $8E
OP_OR_az = $8F
OP_OR_aw = $90
OP_OR_xB = $91
OP_OR_yB = $92
OP_OR_zB = $93
OP_OR_wB = $94
OP_OR_aB = $95
OP_NOT_x = $96
OP_NOT_y = $97
OP_NOT_z = $98
OP_NOT_w = $99
OP_NOT_a = $9A
OP_XOR_ax = $9B
OP_XOR_ay = $9C
OP_XOR_az = $9D
OP_XOR_aw = $9E
OP_XOR_xB = $9F
OP_XOR_yB = $A0
OP_XOR_zB = $A1
OP_XOR_wB = $A2
OP_XOR_aB = $A3
OP_SHL_xB = $A4
OP_SHL_yB = $A5
OP_SHL_zB = $A6
OP_SHL_wB = $A7
OP_SHL_aB = $A8
OP_SHR_xB = $A9
OP_SHR_yB = $AA
OP_SHR_zB = $AB
OP_SHR_wB = $AC
OP_SHR_aB = $AD
OP_ROL_x = $AE
OP_ROL_y = $AF
OP_ROL_z = $B0
OP_ROL_w = $B1
OP_ROL_a = $B2
OP_ROR_x = $B3
OP_ROR_y = $B4
OP_ROR_z = $B5
OP_ROR_w = $B6
OP_ROR_a = $B7
OP_JMP_A = $B8
OP_JMP_i = $B9
OP_JMP_j = $BA
OP_JMP_Ax = $BB
OP_JMP_Ay = $BC
OP_JMP_Az = $BD
OP_JMP_Aw = $BE
OP_JMP_Aa = $BF
OP_RJMP_B = $C0
OP_JMP_EQ_A = $C1
OP_RJMP_EQ_B = $C2
OP_JMP_NEQ_A = $C3
OP_RJMP_NEQ_B = $C4
OP_JMP_GT_A = $C5
OP_RJMP_GT_B = $C6
OP_JMP_LT_A = $C7
OP_RJMP_LT_B = $C8
OP_JMP_Z_A = $C9
OP_RJMP_Z_B = $CA
OP_JMP_NZ_A = $CB
OP_RJMP_NZ_B = $CC
OP_BCALL_Aa = $CD
OP_BCALL_Ax = $CE
OP_BCALL_Ay = $CF
OP_BCALL_Az = $D0
OP_BCALL_Aw = $D1
OP_BJMP_Aa = $D2
OP_BJMP_Ax = $D3
OP_BJMP_Ay = $D4
OP_BJMP_Az = $D5
OP_BJMP_Aw = $D6
OP_INT_B = $D7
OP_RESUME = $D8
OP_SEC = $D9
OP_CLC = $DA
OP_OFFSET_A = $DB
OP_ROFFSET_A = $DC
OP_DBR_A = $DD
OP_DBA_B = $DE
OP_DBB = $DF
OP_DBN_A = $E0
OP_DBO_B = $E1
