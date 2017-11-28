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
REG_RAND = $0034
REG_FPY_MSG = $0035
REG_FPY_STATE = $0036
REG_FPY_CURRENT_TRACK = $0037
REG_FPY_OP_TRACK = $0038
REG_FPY_OP_ADDR = $0039
REG_FPY_OP = $003B
REG_IO_OP = $003C
REG_IO_DATA_A = $003D
REG_IO_DATA_B = $003E
REG_SND_MODE_0 = $003F
REG_SND_PARM_0 = $0040
REG_SND_MODE_1 = $0041
REG_SND_PARM_1 = $0042
REG_MMU_PAGE_REAL_MODE = $0080
REG_MMU_MAP0_DST = $0081
REG_MMU_MAP0_SRC_LOWER = $0082
REG_MMU_MAP0_SRC_UPPER = $0083
REG_MMU_MAP1_DST = $0084
REG_MMU_MAP1_SRC_LOWER = $0085
REG_MMU_MAP1_SRC_UPPER = $0086
REG_MMU_MAP2_DST = $0087
REG_MMU_MAP2_SRC_LOWER = $0088
REG_MMU_MAP2_SRC_UPPER = $0089
REG_MMU_MAP3_DST = $008A
REG_MMU_MAP3_SRC_LOWER = $008B
REG_MMU_MAP3_SRC_UPPER = $008C
REG_MMU_MAP4_DST = $008D
REG_MMU_MAP4_SRC_LOWER = $008E
REG_MMU_MAP4_SRC_UPPER = $008F
REG_MMU_MAP5_DST = $0090
REG_MMU_MAP5_SRC_LOWER = $0091
REG_MMU_MAP5_SRC_UPPER = $0092
REG_MMU_MAP6_DST = $0093
REG_MMU_MAP6_SRC_LOWER = $0094
REG_MMU_MAP6_SRC_UPPER = $0095
REG_MMU_MAP7_DST = $0096
REG_MMU_MAP7_SRC_LOWER = $0097
REG_MMU_MAP7_SRC_UPPER = $0098
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
IO_FPY_MSG_READING = $0006
IO_FPY_MSG_WRITING = $0007
IO_FPY_MSG_ERROR = $0080
IO_FPY_STATE_DISK = $0001
IO_FPY_OP_READ_TRACK = $0001
IO_FPY_OP_WRITE_TRACK = $0002
IO_OP_KEY = $0001
SND_NOTE_C0 = $0000
SND_NOTE_CS0 = $0001
SND_NOTE_D0 = $0002
SND_NOTE_DS0 = $0003
SND_NOTE_E0 = $0004
SND_NOTE_F0 = $0005
SND_NOTE_FS0 = $0006
SND_NOTE_G0 = $0007
SND_NOTE_GS0 = $0008
SND_NOTE_A0 = $0009
SND_NOTE_AS0 = $000A
SND_NOTE_B0 = $000B
SND_NOTE_C1 = $000C
SND_NOTE_CS1 = $000D
SND_NOTE_D1 = $000E
SND_NOTE_DS1 = $000F
SND_NOTE_E1 = $0010
SND_NOTE_F1 = $0011
SND_NOTE_FS1 = $0012
SND_NOTE_G1 = $0013
SND_NOTE_GS1 = $0014
SND_NOTE_A1 = $0015
SND_NOTE_AS1 = $0016
SND_NOTE_B1 = $0017
SND_NOTE_C2 = $0018
SND_NOTE_CS2 = $0019
SND_NOTE_D2 = $001A
SND_NOTE_DS2 = $001B
SND_NOTE_E2 = $001C
SND_NOTE_F2 = $001D
SND_NOTE_FS2 = $001E
SND_NOTE_G2 = $001F
SND_NOTE_GS2 = $0020
SND_NOTE_A2 = $0021
SND_NOTE_AS2 = $0022
SND_NOTE_B2 = $0023
SND_NOTE_C3 = $0024
SND_NOTE_CS3 = $0025
SND_NOTE_D3 = $0026
SND_NOTE_DS3 = $0027
SND_NOTE_E3 = $0028
SND_NOTE_F3 = $0029
SND_NOTE_FS3 = $002A
SND_NOTE_G3 = $002B
SND_NOTE_GS3 = $002C
SND_NOTE_A3 = $002D
SND_NOTE_AS3 = $002E
SND_NOTE_B3 = $002F
SND_NOTE_C4 = $0030
SND_NOTE_CS4 = $0031
SND_NOTE_D4 = $0032
SND_NOTE_DS4 = $0033
SND_NOTE_E4 = $0034
SND_NOTE_F4 = $0035
SND_NOTE_FS4 = $0036
SND_NOTE_G4 = $0037
SND_NOTE_GS4 = $0038
SND_NOTE_A4 = $0039
SND_NOTE_AS4 = $003A
SND_NOTE_B4 = $003B
SND_NOTE_C5 = $003C
SND_NOTE_CS5 = $003D
SND_NOTE_D5 = $003E
SND_NOTE_DS5 = $003F
SND_NOTE_E5 = $0040
SND_NOTE_F5 = $0041
SND_NOTE_FS5 = $0042
SND_NOTE_G5 = $0043
SND_NOTE_GS5 = $0044
SND_NOTE_A5 = $0045
SND_NOTE_AS5 = $0046
SND_NOTE_B5 = $0047
SND_NOTE_C6 = $0048
SND_NOTE_CS6 = $0049
SND_NOTE_D6 = $004A
SND_NOTE_DS6 = $004B
SND_NOTE_E6 = $004C
SND_NOTE_F6 = $004D
SND_NOTE_FS6 = $004E
SND_NOTE_G6 = $004F
SND_NOTE_GS6 = $0050
SND_NOTE_A6 = $0051
SND_NOTE_AS6 = $0052
SND_NOTE_B6 = $0053
SND_NOTE_C7 = $0054
SND_NOTE_CS7 = $0055
SND_NOTE_D7 = $0056
SND_NOTE_DS7 = $0057
SND_NOTE_E7 = $0058
SND_NOTE_F7 = $0059
SND_NOTE_FS7 = $005A
SND_NOTE_G7 = $005B
SND_NOTE_GS7 = $005C
SND_NOTE_A7 = $005D
SND_NOTE_AS7 = $005E
SND_NOTE_B7 = $005F
SND_NOTE_C8 = $0060
SND_NOTE_CS8 = $0061
SND_NOTE_D8 = $0062
SND_NOTE_DS8 = $0063
SND_NOTE_E8 = $0064
SND_NOTE_F8 = $0065
SND_NOTE_FS8 = $0066
SND_NOTE_G8 = $0067
SND_NOTE_GS8 = $0068
SND_NOTE_A8 = $0069
SND_NOTE_AS8 = $006A
SND_NOTE_B8 = $006B
SCREEN_W = $0140
SCREEN_H = $0100
SCREEN_COLS = $0028
SCREEN_ROWS = $0020
CHAR_NUL = $0000
CHAR_SOH = $0001
CHAR_STX = $0002
CHAR_ETX = $0003
CHAR_EOT = $0004
CHAR_ENQ = $0005
CHAR_ACK = $0006
CHAR_BEL = $0007
CHAR_BS = $0008
CHAR_HT = $0009
CHAR_LF = $000A
CHAR_VT = $000B
CHAR_FF = $000C
CHAR_CR = $000D
CHAR_SO = $000E
CHAR_SI = $000F
CHAR_DLE = $0010
CHAR_DC1 = $0011
CHAR_DC2 = $0012
CHAR_DC3 = $0013
CHAR_DC4 = $0014
CHAR_NAK = $0015
CHAR_SYN = $0016
CHAR_ETB = $0017
CHAR_CAN = $0018
CHAR_EM = $0019
CHAR_SUB = $001A
CHAR_ESC = $001B
CHAR_FS = $001C
CHAR_GS = $001D
CHAR_RS = $001E
CHAR_US = $001F
CHAR_DEL = $007F
CHAR_Space = $0020
CHAR_Exclaim = $0021
CHAR_DoubleQuote = $0022
CHAR_Hash = $0023
CHAR_Dollar = $0024
CHAR_Pound = $0024
CHAR_Percent = $0025
CHAR_Ampersand = $0026
CHAR_Quote = $0027
CHAR_LeftParanthesis = $0028
CHAR_RightParanthesis = $0029
CHAR_Times = $002A
CHAR_Add = $002B
CHAR_Comma = $002C
CHAR_Minus = $002D
CHAR_Dot = $002E
CHAR_Slash = $002F
CHAR_0 = $0030
CHAR_1 = $0031
CHAR_2 = $0032
CHAR_3 = $0033
CHAR_4 = $0034
CHAR_5 = $0035
CHAR_6 = $0036
CHAR_7 = $0037
CHAR_8 = $0038
CHAR_9 = $0039
CHAR_Colon = $003A
CHAR_SemiColon = $003B
CHAR_LeftAngleBracket = $003C
CHAR_Equals = $003D
CHAR_RightAngleBracket = $003E
CHAR_Question = $003F
CHAR_At = $0040
CHAR_A = $0041
CHAR_B = $0042
CHAR_C = $0043
CHAR_D = $0044
CHAR_E = $0045
CHAR_F = $0046
CHAR_G = $0047
CHAR_H = $0048
CHAR_I = $0049
CHAR_J = $004A
CHAR_K = $004B
CHAR_L = $004C
CHAR_M = $004D
CHAR_N = $004E
CHAR_O = $004F
CHAR_P = $0050
CHAR_Q = $0051
CHAR_R = $0052
CHAR_S = $0053
CHAR_T = $0054
CHAR_U = $0055
CHAR_V = $0056
CHAR_W = $0057
CHAR_X = $0058
CHAR_Y = $0059
CHAR_Z = $005A
CHAR_LeftSquareBracket = $005B
CHAR_Backslash = $005C
CHAR_RightSquareBracket = $005D
CHAR_Caret = $005E
CHAR_Underscore = $005F
CHAR_Accent = $0060
CHAR_a = $0061
CHAR_b = $0062
CHAR_c = $0063
CHAR_d = $0064
CHAR_e = $0065
CHAR_f = $0066
CHAR_g = $0067
CHAR_h = $0068
CHAR_i = $0069
CHAR_j = $006A
CHAR_k = $006B
CHAR_l = $006C
CHAR_m = $006D
CHAR_n = $006E
CHAR_o = $006F
CHAR_p = $0070
CHAR_q = $0071
CHAR_r = $0072
CHAR_s = $0073
CHAR_t = $0074
CHAR_u = $0075
CHAR_v = $0076
CHAR_w = $0077
CHAR_x = $0078
CHAR_y = $0079
CHAR_z = $007A
CHAR_LeftBrace = $007B
CHAR_Pipe = $007C
CHAR_RightBrace = $007D
CHAR_Tidle = $007E
CHAR_Hat = $007F
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
macro neg [A, B] {
  ; [$6D] neg a
  db $6D
}
macro inc [A, B] {
  if A eq x
    ; [$6E] inc x
    db $6E
  else if A eq y
    ; [$6F] inc y
    db $6F
  else if A eq z
    ; [$70] inc z
    db $70
  else if A eq w
    ; [$71] inc w
    db $71
  else if A eq a
    ; [$72] inc a
    db $72
  else if A eq i
    ; [$73] inc i
    db $73
  else if A eq j
    ; [$74] inc j
    db $74
  else
    error SyntaxError
  end if
}
macro dec [A, B] {
  if A eq x
    ; [$75] dec x
    db $75
  else if A eq y
    ; [$76] dec y
    db $76
  else if A eq z
    ; [$77] dec z
    db $77
  else if A eq w
    ; [$78] dec w
    db $78
  else if A eq a
    ; [$79] dec a
    db $79
  else if A eq i
    ; [$7A] dec i
    db $7A
  else if A eq j
    ; [$7B] dec j
    db $7B
  else
    error SyntaxError
  end if
}
macro and [A, B] {
  if A eq a & B eq x
    ; [$91] and a,x
    db $91
  else if A eq a & B eq y
    ; [$92] and a,y
    db $92
  else if A eq a & B eq z
    ; [$93] and a,z
    db $93
  else if A eq a & B eq w
    ; [$94] and a,w
    db $94
  else if A eq x
    ; [$95] and x,$00
    db $95
    db B
  else if A eq y
    ; [$96] and y,$00
    db $96
    db B
  else if A eq z
    ; [$97] and z,$00
    db $97
    db B
  else if A eq w
    ; [$98] and w,$00
    db $98
    db B
  else if A eq a
    ; [$99] and a,$00
    db $99
    db B
  else
    error SyntaxError
  end if
}
macro or [A, B] {
  if A eq a & B eq x
    ; [$9A] or a,x
    db $9A
  else if A eq a & B eq y
    ; [$9B] or a,y
    db $9B
  else if A eq a & B eq z
    ; [$9C] or a,z
    db $9C
  else if A eq a & B eq w
    ; [$9D] or a,w
    db $9D
  else if A eq x
    ; [$9E] or x,$00
    db $9E
    db B
  else if A eq y
    ; [$9F] or y,$00
    db $9F
    db B
  else if A eq z
    ; [$A0] or z,$00
    db $A0
    db B
  else if A eq w
    ; [$A1] or w,$00
    db $A1
    db B
  else if A eq a
    ; [$A2] or a,$00
    db $A2
    db B
  else
    error SyntaxError
  end if
}
macro xor [A, B] {
  if A eq a & B eq x
    ; [$A8] xor a,x
    db $A8
  else if A eq a & B eq y
    ; [$A9] xor a,y
    db $A9
  else if A eq a & B eq z
    ; [$AA] xor a,z
    db $AA
  else if A eq a & B eq w
    ; [$AB] xor a,w
    db $AB
  else if A eq x
    ; [$AC] xor x,$00
    db $AC
    db B
  else if A eq y
    ; [$AD] xor y,$00
    db $AD
    db B
  else if A eq z
    ; [$AE] xor z,$00
    db $AE
    db B
  else if A eq w
    ; [$AF] xor w,$00
    db $AF
    db B
  else if A eq a
    ; [$B0] xor a,$00
    db $B0
    db B
  else
    error SyntaxError
  end if
}
macro not [A, B] {
  if A eq x
    ; [$A3] not x
    db $A3
  else if A eq y
    ; [$A4] not y
    db $A4
  else if A eq z
    ; [$A5] not z
    db $A5
  else if A eq w
    ; [$A6] not w
    db $A6
  else if A eq a
    ; [$A7] not a
    db $A7
  else
    error SyntaxError
  end if
}
macro shl [A, B] {
  if A eq x
    ; [$B1] shl x,$00
    db $B1
    db B
  else if A eq y
    ; [$B2] shl y,$00
    db $B2
    db B
  else if A eq z
    ; [$B3] shl z,$00
    db $B3
    db B
  else if A eq w
    ; [$B4] shl w,$00
    db $B4
    db B
  else if A eq a
    ; [$B5] shl a,$00
    db $B5
    db B
  else
    error SyntaxError
  end if
}
macro shr [A, B] {
  if A eq x
    ; [$B6] shr x,$00
    db $B6
    db B
  else if A eq y
    ; [$B7] shr y,$00
    db $B7
    db B
  else if A eq z
    ; [$B8] shr z,$00
    db $B8
    db B
  else if A eq w
    ; [$B9] shr w,$00
    db $B9
    db B
  else if A eq a
    ; [$BA] shr a,$00
    db $BA
    db B
  else
    error SyntaxError
  end if
}
macro rol [A, B] {
  if A eq x
    ; [$BB] rol x
    db $BB
  else if A eq y
    ; [$BC] rol y
    db $BC
  else if A eq z
    ; [$BD] rol z
    db $BD
  else if A eq w
    ; [$BE] rol w
    db $BE
  else if A eq a
    ; [$BF] rol a
    db $BF
  else
    error SyntaxError
  end if
}
macro ror [A, B] {
  if A eq x
    ; [$C0] ror x
    db $C0
  else if A eq y
    ; [$C1] ror y
    db $C1
  else if A eq z
    ; [$C2] ror z
    db $C2
  else if A eq w
    ; [$C3] ror w
    db $C3
  else if A eq a
    ; [$C4] ror a
    db $C4
  else
    error SyntaxError
  end if
}
macro cmp [A, B] {
  if A eq a & B eq x
    ; [$7C] cmp a,x
    db $7C
  else if A eq a & B eq y
    ; [$7D] cmp a,y
    db $7D
  else if A eq a & B eq z
    ; [$7E] cmp a,z
    db $7E
  else if A eq a & B eq w
    ; [$7F] cmp a,w
    db $7F
  else if A eq a
    ; [$80] cmp a
    db $80
  else if A eq x
    ; [$81] cmp x
    db $81
  else if A eq y
    ; [$82] cmp y
    db $82
  else if A eq z
    ; [$83] cmp z
    db $83
  else if A eq w
    ; [$84] cmp w
    db $84
  else
    error SyntaxError
  end if
}
macro cmpi [A, B] {
  if A eq x
    ; [$85] cmpi x,$00
    db $85
    db B
  else if A eq y
    ; [$86] cmpi y,$00
    db $86
    db B
  else if A eq z
    ; [$87] cmpi z,$00
    db $87
    db B
  else if A eq w
    ; [$88] cmpi w,$00
    db $88
    db B
  else if A eq a
    ; [$89] cmpi a,$00
    db $89
    db B
  else if A eq i
    ; [$8A] cmpi i,$0000
    db $8A
    dw B
  else if A eq j
    ; [$8B] cmpi j,$0000
    db $8B
    dw B
  else
    error SyntaxError
  end if
}
macro cmpbit [A, B] {
  if A eq x
    ; [$8C] cmpbit x,$00
    db $8C
    db B
  else if A eq y
    ; [$8D] cmpbit y,$00
    db $8D
    db B
  else if A eq z
    ; [$8E] cmpbit z,$00
    db $8E
    db B
  else if A eq w
    ; [$8F] cmpbit w,$00
    db $8F
    db B
  else if A eq a
    ; [$90] cmpbit a,$00
    db $90
    db B
  else
    error SyntaxError
  end if
}
macro jmp [A, B] {
  if A eq i
    ; [$C6] jmp i
    db $C6
  else if A eq j
    ; [$C7] jmp j
    db $C7
  else if B eq x
    ; [$C8] jmp $0000,x
    db $C8
    dw A
  else if B eq y
    ; [$C9] jmp $0000,y
    db $C9
    dw A
  else if B eq z
    ; [$CA] jmp $0000,z
    db $CA
    dw A
  else if B eq w
    ; [$CB] jmp $0000,w
    db $CB
    dw A
  else if B eq a
    ; [$CC] jmp $0000,a
    db $CC
    dw A
  else
    ; [$C5] jmp $0000
    db $C5
    dw A
  end if
}
macro jmp.eq [A, B] {
  ; [$CE] jmp.eq $0000
  db $CE
  dw A
}
macro jmp.neq [A, B] {
  ; [$D0] jmp.neq $0000
  db $D0
  dw A
}
macro jmp.gt [A, B] {
  ; [$D2] jmp.gt $0000
  db $D2
  dw A
}
macro jmp.lt [A, B] {
  ; [$D4] jmp.lt $0000
  db $D4
  dw A
}
macro jmp.z [A, B] {
  ; [$D6] jmp.z $0000
  db $D6
  dw A
}
macro jmp.nz [A, B] {
  ; [$D8] jmp.nz $0000
  db $D8
  dw A
}
macro jmp.c [A, B] {
  ; [$DA] jmp.c $0000
  db $DA
  dw A
}
macro rjmp [A, B] {
  ; [$CD] rjmp $00
  db $CD
  db A
}
macro rjmp.eq [A, B] {
  ; [$CF] rjmp.eq $00
  db $CF
  db A
}
macro rjmp.neq [A, B] {
  ; [$D1] rjmp.neq $00
  db $D1
  db A
}
macro rjmp.gt [A, B] {
  ; [$D3] rjmp.gt $00
  db $D3
  db A
}
macro rjmp.lt [A, B] {
  ; [$D5] rjmp.lt $00
  db $D5
  db A
}
macro rjmp.z [A, B] {
  ; [$D7] rjmp.z $00
  db $D7
  db A
}
macro rjmp.nz [A, B] {
  ; [$D9] rjmp.nz $00
  db $D9
  db A
}
macro bjmp [A, B] {
  if B eq a
    ; [$E0] bjmp $0000,a
    db $E0
    dw A
  else if B eq x
    ; [$E1] bjmp $0000,x
    db $E1
    dw A
  else if B eq y
    ; [$E2] bjmp $0000,y
    db $E2
    dw A
  else if B eq z
    ; [$E3] bjmp $0000,z
    db $E3
    dw A
  else if B eq w
    ; [$E4] bjmp $0000,w
    db $E4
    dw A
  else
    error SyntaxError
  end if
}
macro bcall [A, B] {
  if B eq a
    ; [$DB] bcall $0000,a
    db $DB
    dw A
  else if B eq x
    ; [$DC] bcall $0000,x
    db $DC
    dw A
  else if B eq y
    ; [$DD] bcall $0000,y
    db $DD
    dw A
  else if B eq z
    ; [$DE] bcall $0000,z
    db $DE
    dw A
  else if B eq w
    ; [$DF] bcall $0000,w
    db $DF
    dw A
  else
    error SyntaxError
  end if
}
macro int [A, B] {
  ; [$E5] int $00
  db $E5
  db A
}
macro resume [A, B] {
  ; [$E6] resume
  db $E6
}
macro sec [A, B] {
  ; [$E7] sec
  db $E7
}
macro clc [A, B] {
  ; [$E8] clc
  db $E8
}
macro offset [A, B] {
  ; [$E9] offset $0000
  db $E9
  dw A
}
macro roffset [A, B] {
  ; [$EA] roffset $0000
  db $EA
  dw A
}
macro dbr [A, B] {
  ; [$EB] dbr $0000
  db $EB
  db A
}
macro dba [A, B] {
  ; [$EC] dba $00
  db $EC
  dw A
}
macro dbb [A, B] {
  ; [$ED] dbb
  db $ED
}
macro dbn [A, B] {
  ; [$EE] dbn $0000
  db $EE
  dw A
}
macro dbo [A, B] {
  ; [$EF] dbo $00
  db $EF
  db A
}
macro rti [A, B] {
  ; [$F1] rti
  db $F1
}
macro sti [A, B] {
  ; [$F0] sti
  db $F0
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
OP_NEG_a = $6D
OP_INC_x = $6E
OP_INC_y = $6F
OP_INC_z = $70
OP_INC_w = $71
OP_INC_a = $72
OP_INC_i = $73
OP_INC_j = $74
OP_DEC_x = $75
OP_DEC_y = $76
OP_DEC_z = $77
OP_DEC_w = $78
OP_DEC_a = $79
OP_DEC_i = $7A
OP_DEC_j = $7B
OP_CMP_ax = $7C
OP_CMP_ay = $7D
OP_CMP_az = $7E
OP_CMP_aw = $7F
OP_CMP_a = $80
OP_CMP_x = $81
OP_CMP_y = $82
OP_CMP_z = $83
OP_CMP_w = $84
OP_CMPI_xB = $85
OP_CMPI_yB = $86
OP_CMPI_zB = $87
OP_CMPI_wB = $88
OP_CMPI_aB = $89
OP_CMPI_iA = $8A
OP_CMPI_jA = $8B
OP_CMPBIT_xB = $8C
OP_CMPBIT_yB = $8D
OP_CMPBIT_zB = $8E
OP_CMPBIT_wB = $8F
OP_CMPBIT_aB = $90
OP_AND_ax = $91
OP_AND_ay = $92
OP_AND_az = $93
OP_AND_aw = $94
OP_AND_xB = $95
OP_AND_yB = $96
OP_AND_zB = $97
OP_AND_wB = $98
OP_AND_aB = $99
OP_OR_ax = $9A
OP_OR_ay = $9B
OP_OR_az = $9C
OP_OR_aw = $9D
OP_OR_xB = $9E
OP_OR_yB = $9F
OP_OR_zB = $A0
OP_OR_wB = $A1
OP_OR_aB = $A2
OP_NOT_x = $A3
OP_NOT_y = $A4
OP_NOT_z = $A5
OP_NOT_w = $A6
OP_NOT_a = $A7
OP_XOR_ax = $A8
OP_XOR_ay = $A9
OP_XOR_az = $AA
OP_XOR_aw = $AB
OP_XOR_xB = $AC
OP_XOR_yB = $AD
OP_XOR_zB = $AE
OP_XOR_wB = $AF
OP_XOR_aB = $B0
OP_SHL_xB = $B1
OP_SHL_yB = $B2
OP_SHL_zB = $B3
OP_SHL_wB = $B4
OP_SHL_aB = $B5
OP_SHR_xB = $B6
OP_SHR_yB = $B7
OP_SHR_zB = $B8
OP_SHR_wB = $B9
OP_SHR_aB = $BA
OP_ROL_x = $BB
OP_ROL_y = $BC
OP_ROL_z = $BD
OP_ROL_w = $BE
OP_ROL_a = $BF
OP_ROR_x = $C0
OP_ROR_y = $C1
OP_ROR_z = $C2
OP_ROR_w = $C3
OP_ROR_a = $C4
OP_JMP_A = $C5
OP_JMP_i = $C6
OP_JMP_j = $C7
OP_JMP_Ax = $C8
OP_JMP_Ay = $C9
OP_JMP_Az = $CA
OP_JMP_Aw = $CB
OP_JMP_Aa = $CC
OP_RJMP_B = $CD
OP_JMP_EQ_A = $CE
OP_RJMP_EQ_B = $CF
OP_JMP_NEQ_A = $D0
OP_RJMP_NEQ_B = $D1
OP_JMP_GT_A = $D2
OP_RJMP_GT_B = $D3
OP_JMP_LT_A = $D4
OP_RJMP_LT_B = $D5
OP_JMP_Z_A = $D6
OP_RJMP_Z_B = $D7
OP_JMP_NZ_A = $D8
OP_RJMP_NZ_B = $D9
OP_JMP_C_A = $DA
OP_BCALL_Aa = $DB
OP_BCALL_Ax = $DC
OP_BCALL_Ay = $DD
OP_BCALL_Az = $DE
OP_BCALL_Aw = $DF
OP_BJMP_Aa = $E0
OP_BJMP_Ax = $E1
OP_BJMP_Ay = $E2
OP_BJMP_Az = $E3
OP_BJMP_Aw = $E4
OP_INT_B = $E5
OP_RESUME = $E6
OP_SEC = $E7
OP_CLC = $E8
OP_OFFSET_A = $E9
OP_ROFFSET_A = $EA
OP_DBR_A = $EB
OP_DBA_B = $EC
OP_DBB = $ED
OP_DBN_A = $EE
OP_DBO_B = $EF
OP_STI = $F0
OP_RTI = $F1
