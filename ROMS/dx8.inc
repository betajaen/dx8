; DX8 FASM Instruction Set and Common Constants
; Registers
REG_IVT_RESET = $0000
REG_IVT_HBLANK = $0002
REG_IVT_VBLANK = $0004
REG_IVT_FLOPPY = $0006
REG_IVT_IO = $0008
REG_IVT_RESERVED_6 = $000A
REG_IVT_RESERVED_7 = $000C
REG_IVT_HALT = $000E
REG_MMU_BANK = $0010
REG_GFX_MODE = $0018
REG_GFX_PALETTE_ADDR = $0019
REG_GFX_TILES_ADDR = $001B
REG_GFX_TILES_START = $001D
REG_GFX_TILES_COUNT = $001E
REG_GFX_SCANLINE_NUM = $001F
REG_GFX_FRAME_NUM = $0020
REG_GFX_SECOND_NUM = $0021
REG_GFX_COUNTERS = $0022
REG_FPY_MSG = $0023
REG_FPY_STATE = $0024
REG_FPY_CURRENT_TRACK = $0025
REG_FPY_OP_TRACK = $0026
REG_FPY_OP_ADDR = $0027
REG_FPY_OP = $0029
REG_IO_OP = $002A
REG_IO_DATA_A = $002B
REG_IO_DATA_B = $002C
REG_SND_MODE_0 = $002D
REG_SND_PARM_0 = $002E
REG_SND_MODE_1 = $002F
REG_SND_PARM_1 = $0030
REG_MMU_PAGE = $0080
REG_MMU_PAGE_REAL_MODE = $00E0
REG_RAND = $00E1
REG_STACK_BEGIN = $0100
REG_STACK_END = $0200
REG_PCSTACK_BEGIN = $0200
REG_PCSTACK_END = $0400

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
MEM_CHIP_SIZE = $4000
MEM_SHARED_ADDR = $8000
MEM_SHARED_SIZE = $10000
MEM_GFX_PLANE_SIZE = $2800
MEM_GFX_PLANE0 = $8000
MEM_GFX_PLANE1 = $A800
MEM_GFX_PLANE2 = $D000
MEM_GFX_PLANE3 = $F800
MEM_GFX_PLANE0_FAST = $D800
MEM_GFX_PLANE1_FAST = $B000
MEM_GFX_PLANE2_FAST = $8800
MEM_GFX_PLANE3_FAST = $6000
INTVEC_RESET = $0000
INTVEC_HBLANK = $0001
INTVEC_VBLANK = $0002
INTVEC_FLOPPY = $0003
INTVEC_IO = $0004
INTVEC_RESERVED_6 = $0005
INTVEC_RESERVED_7 = $0006
INTVEC_HALT = $0007
INTVEC_ADDR_RESET = $0000
INTVEC_ADDR_HBLANK = $0002
INTVEC_ADDR_VBLANK = $0004
INTVEC_ADDR_FLOPPY = $0006
INTVEC_ADDR_IO = $0008
INTVEC_ADDR_RESERVED_6 = $000A
INTVEC_ADDR_RESERVED_7 = $000C
INTVEC_ADDR_HALT = $000E
HALT_UNKNOWN_OPCODE = $0000
HALT_DIVISION_BY_ZERO = $0001
HALT_STACK_OVERFLOW = $0002
HALT_STACK_UNDERFLOW = $0003
HALT_PCSTACK_OVERFLOW = $0004
HALT_PCSTACK_UNDERFLOW = $0005
HALT_BLOCKED_INTERRUPT = $0006
HALT_BREAKPOINT = $00FF

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
  if A eq x & B eq 
    ; [$01] push x
    db $01
  else if A eq y & B eq 
    ; [$02] push y
    db $02
  else if A eq z & B eq 
    ; [$03] push z
    db $03
  else if A eq w & B eq 
    ; [$04] push w
    db $04
  else if A eq a & B eq 
    ; [$05] push a
    db $05
  else if A eq i & B eq 
    ; [$06] push i
    db $06
  else if A eq j & B eq 
    ; [$07] push j
    db $07
  else if A eq f & B eq 
    ; [$08] push f
    db $08
  else
    error SyntaxError
  end if
}
macro pop [A, B] {
  if A eq x & B eq 
    ; [$0B] pop x
    db $0B
  else if A eq y & B eq 
    ; [$0C] pop y
    db $0C
  else if A eq z & B eq 
    ; [$0D] pop z
    db $0D
  else if A eq w & B eq 
    ; [$0E] pop w
    db $0E
  else if A eq a & B eq 
    ; [$0F] pop a
    db $0F
  else if A eq i & B eq 
    ; [$10] pop i
    db $10
  else if A eq j & B eq 
    ; [$11] pop j
    db $11
  else if A eq f & B eq 
    ; [$12] pop f
    db $12
  else
    error SyntaxError
  end if
}
macro push.b [A, B] {
  ; [$09] push.b $00
  db $09
  db A
}
macro push.w [A, B] {
  ; [$0A] push.w $0000
  db $0A
  dw A
}
macro load [A, B] {
  if A eq a & B eq i
    ; [$13] load a,i
    db $13
  else if A eq z & B eq i
    ; [$14] load z,i
    db $14
  else if A eq w & B eq i
    ; [$15] load w,i
    db $15
  else if A eq a & B eq j
    ; [$16] load a,j
    db $16
  else if A eq x & B eq j
    ; [$17] load x,j
    db $17
  else if A eq y & B eq j
    ; [$18] load y,j
    db $18
  else if A eq x & B eqtype $FFFF
    ; [$19] load x,$0000
    db $19
    dw B
  else if A eq y & B eqtype $FFFF
    ; [$1A] load y,$0000
    db $1A
    dw B
  else if A eq z & B eqtype $FFFF
    ; [$1B] load z,$0000
    db $1B
    dw B
  else if A eq w & B eqtype $FFFF
    ; [$1C] load w,$0000
    db $1C
    dw B
  else if A eq a & B eqtype $FFFF
    ; [$1D] load a,$0000
    db $1D
    dw B
  else if A eq i & B eqtype $FFFF
    ; [$1E] load i,$0000
    db $1E
    dw B
  else if A eq j & B eqtype $FFFF
    ; [$1F] load j,$0000
    db $1F
    dw B
  else
    error SyntaxError
  end if
}
macro store [A, B] {
  if A eq i & B eq a
    ; [$20] store i,a
    db $20
  else if A eq i & B eq w
    ; [$21] store i,w
    db $21
  else if A eq i & B eq z
    ; [$22] store i,z
    db $22
  else if A eq j & B eq a
    ; [$23] store j,a
    db $23
  else if A eq j & B eq x
    ; [$24] store j,x
    db $24
  else if A eq j & B eq y
    ; [$25] store j,y
    db $25
  else if A eqtype $FFFF & B eq x
    ; [$26] store $0000,x
    db $26
    dw A
  else if A eqtype $FFFF & B eq y
    ; [$27] store $0000,y
    db $27
    dw A
  else if A eqtype $FFFF & B eq z
    ; [$28] store $0000,z
    db $28
    dw A
  else if A eqtype $FFFF & B eq w
    ; [$29] store $0000,w
    db $29
    dw A
  else if A eqtype $FFFF & B eq a
    ; [$2A] store $0000,a
    db $2A
    dw A
  else if A eqtype $FFFF & B eq i
    ; [$2B] store $0000,i
    db $2B
    dw A
  else if A eqtype $FFFF & B eq j
    ; [$2C] store $0000,j
    db $2C
    dw A
  else
    error SyntaxError
  end if
}
macro call [A, B] {
  ; [$2D] call $0000
  db $2D
  dw A
}
macro call.eq [A, B] {
  ; [$2E] call.eq $0000
  db $2E
  dw A
}
macro call.neq [A, B] {
  ; [$2F] call.neq $0000
  db $2F
  dw A
}
macro call.gt [A, B] {
  ; [$30] call.gt $0000
  db $30
  dw A
}
macro call.lt [A, B] {
  ; [$31] call.lt $0000
  db $31
  dw A
}
macro call.z [A, B] {
  ; [$32] call.z $0000
  db $32
  dw A
}
macro call.nz [A, B] {
  ; [$33] call.nz $0000
  db $33
  dw A
}
macro return [A, B] {
  ; [$34] return
  db $34
}
macro cpy [A, B] {
  if A eq a & B eq x
    ; [$35] cpy a,x
    db $35
  else if A eq a & B eq y
    ; [$36] cpy a,y
    db $36
  else if A eq a & B eq z
    ; [$37] cpy a,z
    db $37
  else if A eq a & B eq w
    ; [$38] cpy a,w
    db $38
  else if A eq x & B eq a
    ; [$39] cpy x,a
    db $39
  else if A eq y & B eq a
    ; [$3A] cpy y,a
    db $3A
  else if A eq z & B eq a
    ; [$3B] cpy z,a
    db $3B
  else if A eq w & B eq a
    ; [$3C] cpy w,a
    db $3C
  else
    error SyntaxError
  end if
}
macro set [A, B] {
  if A eq x & (B eqtype 'x' | B eqtype $FF)
    ; [$3D] set x,$00
    db $3D
    db B
  else if A eq y & (B eqtype 'x' | B eqtype $FF)
    ; [$3E] set y,$00
    db $3E
    db B
  else if A eq z & (B eqtype 'x' | B eqtype $FF)
    ; [$3F] set z,$00
    db $3F
    db B
  else if A eq w & (B eqtype 'x' | B eqtype $FF)
    ; [$40] set w,$00
    db $40
    db B
  else if A eq a & (B eqtype 'x' | B eqtype $FF)
    ; [$41] set a,$00
    db $41
    db B
  else if A eq i & B eqtype $FFFF
    ; [$42] set i,$0000
    db $42
    dw B
  else if A eq j & B eqtype $FFFF
    ; [$43] set j,$0000
    db $43
    dw B
  else
    error SyntaxError
  end if
}
macro add [A, B] {
  if A eq a & B eq x
    ; [$44] add a,x
    db $44
  else if A eq a & B eq y
    ; [$45] add a,y
    db $45
  else if A eq a & B eq z
    ; [$46] add a,z
    db $46
  else if A eq a & B eq w
    ; [$47] add a,w
    db $47
  else if A eq i & B eq j
    ; [$48] add i,j
    db $48
  else if A eq i & B eq a
    ; [$49] add i,a
    db $49
  else if A eq i & B eq z
    ; [$4A] add i,z
    db $4A
  else if A eq i & B eq w
    ; [$4B] add i,w
    db $4B
  else if A eq j & B eq a
    ; [$4C] add j,a
    db $4C
  else if A eq j & B eq x
    ; [$4D] add j,x
    db $4D
  else if A eq j & B eq y
    ; [$4E] add j,y
    db $4E
  else if A eq i & B eqtype $FFFF
    ; [$4F] add i,$0000
    db $4F
    dw B
  else if A eq j & B eqtype $FFFF
    ; [$50] add j,$0000
    db $50
    dw B
  else if A eq x & (B eqtype 'x' | B eqtype $FF)
    ; [$51] add x,$00
    db $51
    db B
  else if A eq y & (B eqtype 'x' | B eqtype $FF)
    ; [$52] add y,$00
    db $52
    db B
  else if A eq z & (B eqtype 'x' | B eqtype $FF)
    ; [$53] add z,$00
    db $53
    db B
  else if A eq w & (B eqtype 'x' | B eqtype $FF)
    ; [$54] add w,$00
    db $54
    db B
  else if A eq a & (B eqtype 'x' | B eqtype $FF)
    ; [$55] add a,$00
    db $55
    db B
  else
    error SyntaxError
  end if
}
macro sub [A, B] {
  if A eq a & B eq x
    ; [$56] sub a,x
    db $56
  else if A eq a & B eq y
    ; [$57] sub a,y
    db $57
  else if A eq a & B eq z
    ; [$58] sub a,z
    db $58
  else if A eq a & B eq w
    ; [$59] sub a,w
    db $59
  else if A eq x & (B eqtype 'x' | B eqtype $FF)
    ; [$5A] sub x,$00
    db $5A
    db B
  else if A eq y & (B eqtype 'x' | B eqtype $FF)
    ; [$5B] sub y,$00
    db $5B
    db B
  else if A eq z & (B eqtype 'x' | B eqtype $FF)
    ; [$5C] sub z,$00
    db $5C
    db B
  else if A eq w & (B eqtype 'x' | B eqtype $FF)
    ; [$5D] sub w,$00
    db $5D
    db B
  else if A eq a & (B eqtype 'x' | B eqtype $FF)
    ; [$5E] sub a,$00
    db $5E
    db B
  else
    error SyntaxError
  end if
}
macro mul [A, B] {
  if A eq a & B eq x
    ; [$5F] mul a,x
    db $5F
  else if A eq a & (B eqtype 'x' | B eqtype $FF)
    ; [$60] mul a,$00
    db $60
    db B
  else if A eq i & B eq j
    ; [$61] mul i,j
    db $61
  else if A eq i & B eqtype $FFFF
    ; [$62] mul i,$0000
    db $62
    dw B
  else if A eq j & B eqtype $FFFF
    ; [$63] mul j,$0000
    db $63
    dw B
  else
    error SyntaxError
  end if
}
macro div [A, B] {
  if A eq a & B eq x
    ; [$64] div a,x
    db $64
  else if A eq a & (B eqtype 'x' | B eqtype $FF)
    ; [$65] div a,$00
    db $65
    db B
  else if A eq i & B eq j
    ; [$66] div i,j
    db $66
  else if A eq i & B eqtype $FFFF
    ; [$67] div i,$0000
    db $67
    dw B
  else if A eq j & B eqtype $FFFF
    ; [$68] div j,$0000
    db $68
    dw B
  else
    error SyntaxError
  end if
}
macro mod [A, B] {
  if A eq a & B eq x
    ; [$69] mod a,x
    db $69
  else if A eq a & (B eqtype 'x' | B eqtype $FF)
    ; [$6A] mod a,$00
    db $6A
    db B
  else if A eq i & B eq j
    ; [$6B] mod i,j
    db $6B
  else if A eq i & B eqtype $FFFF
    ; [$6C] mod i,$0000
    db $6C
    dw B
  else if A eq j & B eqtype $FFFF
    ; [$6D] mod j,$0000
    db $6D
    dw B
  else
    error SyntaxError
  end if
}
macro neg [A, B] {
  if A eq a & B eq 
    ; [$6E] neg a
    db $6E
  else if A eq x & B eq 
    ; [$6F] neg x
    db $6F
  else
    error SyntaxError
  end if
}
macro inc [A, B] {
  if A eq a & B eq 
    ; [$70] inc a
    db $70
  else if A eq x & B eq 
    ; [$71] inc x
    db $71
  else if A eq y & B eq 
    ; [$72] inc y
    db $72
  else if A eq z & B eq 
    ; [$73] inc z
    db $73
  else if A eq w & B eq 
    ; [$74] inc w
    db $74
  else if A eq i & B eq 
    ; [$75] inc i
    db $75
  else if A eq j & B eq 
    ; [$76] inc j
    db $76
  else
    error SyntaxError
  end if
}
macro dec [A, B] {
  if A eq a & B eq 
    ; [$77] dec a
    db $77
  else if A eq x & B eq 
    ; [$78] dec x
    db $78
  else if A eq y & B eq 
    ; [$79] dec y
    db $79
  else if A eq z & B eq 
    ; [$7A] dec z
    db $7A
  else if A eq w & B eq 
    ; [$7B] dec w
    db $7B
  else if A eq i & B eq 
    ; [$7C] dec i
    db $7C
  else if A eq j & B eq 
    ; [$7D] dec j
    db $7D
  else
    error SyntaxError
  end if
}
macro and [A, B] {
  if A eq a & B eq x
    ; [$96] and a,x
    db $96
  else if A eq a & B eq y
    ; [$97] and a,y
    db $97
  else if A eq a & B eq z
    ; [$98] and a,z
    db $98
  else if A eq a & B eq w
    ; [$99] and a,w
    db $99
  else if A eq x & (B eqtype 'x' | B eqtype $FF)
    ; [$9A] and x,$00
    db $9A
    db B
  else if A eq y & (B eqtype 'x' | B eqtype $FF)
    ; [$9B] and y,$00
    db $9B
    db B
  else if A eq z & (B eqtype 'x' | B eqtype $FF)
    ; [$9C] and z,$00
    db $9C
    db B
  else if A eq w & (B eqtype 'x' | B eqtype $FF)
    ; [$9D] and w,$00
    db $9D
    db B
  else if A eq a & (B eqtype 'x' | B eqtype $FF)
    ; [$9E] and a,$00
    db $9E
    db B
  else
    error SyntaxError
  end if
}
macro or [A, B] {
  if A eq a & B eq x
    ; [$9F] or a,x
    db $9F
  else if A eq a & B eq y
    ; [$A0] or a,y
    db $A0
  else if A eq a & B eq z
    ; [$A1] or a,z
    db $A1
  else if A eq a & B eq w
    ; [$A2] or a,w
    db $A2
  else if A eq x & (B eqtype 'x' | B eqtype $FF)
    ; [$A3] or x,$00
    db $A3
    db B
  else if A eq y & (B eqtype 'x' | B eqtype $FF)
    ; [$A4] or y,$00
    db $A4
    db B
  else if A eq z & (B eqtype 'x' | B eqtype $FF)
    ; [$A5] or z,$00
    db $A5
    db B
  else if A eq w & (B eqtype 'x' | B eqtype $FF)
    ; [$A6] or w,$00
    db $A6
    db B
  else if A eq a & (B eqtype 'x' | B eqtype $FF)
    ; [$A7] or a,$00
    db $A7
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
  else if A eq x & (B eqtype 'x' | B eqtype $FF)
    ; [$AC] xor x,$00
    db $AC
    db B
  else if A eq y & (B eqtype 'x' | B eqtype $FF)
    ; [$AD] xor y,$00
    db $AD
    db B
  else if A eq z & (B eqtype 'x' | B eqtype $FF)
    ; [$AE] xor z,$00
    db $AE
    db B
  else if A eq w & (B eqtype 'x' | B eqtype $FF)
    ; [$AF] xor w,$00
    db $AF
    db B
  else if A eq a & (B eqtype 'x' | B eqtype $FF)
    ; [$B0] xor a,$00
    db $B0
    db B
  else
    error SyntaxError
  end if
}
macro not [A, B] {
  if A eq x & B eq 
    ; [$B1] not x
    db $B1
  else if A eq y & B eq 
    ; [$B2] not y
    db $B2
  else if A eq z & B eq 
    ; [$B3] not z
    db $B3
  else if A eq w & B eq 
    ; [$B4] not w
    db $B4
  else if A eq a & B eq 
    ; [$B5] not a
    db $B5
  else
    error SyntaxError
  end if
}
macro shl [A, B] {
  ; [$B6] shl a,$00
  db $B6
  db B
}
macro shr [A, B] {
  ; [$B7] shr a,$00
  db $B7
  db B
}
macro cmp [A, B] {
  if A eq a & B eq x
    ; [$7E] cmp a,x
    db $7E
  else if A eq a & B eq y
    ; [$7F] cmp a,y
    db $7F
  else if A eq a & B eq z
    ; [$80] cmp a,z
    db $80
  else if A eq a & B eq w
    ; [$81] cmp a,w
    db $81
  else if A eq a & B eq 
    ; [$82] cmp a
    db $82
  else if A eq x & B eq 
    ; [$83] cmp x
    db $83
  else if A eq y & B eq 
    ; [$84] cmp y
    db $84
  else if A eq z & B eq 
    ; [$85] cmp z
    db $85
  else if A eq w & B eq 
    ; [$86] cmp w
    db $86
  else if A eq i & B eq 
    ; [$87] cmp i
    db $87
  else if A eq j & B eq 
    ; [$88] cmp j
    db $88
  else if A eq x & (B eqtype 'x' | B eqtype $FF)
    ; [$89] cmp x,$00
    db $89
    db B
  else if A eq y & (B eqtype 'x' | B eqtype $FF)
    ; [$8A] cmp y,$00
    db $8A
    db B
  else if A eq z & (B eqtype 'x' | B eqtype $FF)
    ; [$8B] cmp z,$00
    db $8B
    db B
  else if A eq w & (B eqtype 'x' | B eqtype $FF)
    ; [$8C] cmp w,$00
    db $8C
    db B
  else if A eq a & (B eqtype 'x' | B eqtype $FF)
    ; [$8D] cmp a,$00
    db $8D
    db B
  else if A eq i & B eq j
    ; [$8E] cmp i,j
    db $8E
  else if A eq i & B eqtype $FFFF
    ; [$8F] cmp i,$0000
    db $8F
    dw B
  else if A eq j & B eqtype $FFFF
    ; [$90] cmp j,$0000
    db $90
    dw B
  else
    error SyntaxError
  end if
}
macro bit [A, B] {
  if A eq x & (B eqtype 'x' | B eqtype $FF)
    ; [$91] bit x,$00
    db $91
    db B
  else if A eq y & (B eqtype 'x' | B eqtype $FF)
    ; [$92] bit y,$00
    db $92
    db B
  else if A eq z & (B eqtype 'x' | B eqtype $FF)
    ; [$93] bit z,$00
    db $93
    db B
  else if A eq w & (B eqtype 'x' | B eqtype $FF)
    ; [$94] bit w,$00
    db $94
    db B
  else if A eq a & (B eqtype 'x' | B eqtype $FF)
    ; [$95] bit a,$00
    db $95
    db B
  else
    error SyntaxError
  end if
}
macro jmp [A, B] {
  if A eq i & B eq 
    ; [$B9] jmp i
    db $B9
  else if A eq j & B eq 
    ; [$BA] jmp j
    db $BA
  else if A eq i & B eq a
    ; [$BB] jmp i,a
    db $BB
  else if A eq j & B eq a
    ; [$BC] jmp j,a
    db $BC
  else if A eqtype $FFFF & B eq a
    ; [$BD] jmp $0000,a
    db $BD
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
macro jmp.c [A, B] {
  ; [$CD] jmp.c $0000
  db $CD
  dw A
}
macro rjmp [A, B] {
  ; [$BE] rjmp $00
  db $BE
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
macro jmpt [A, B] {
  ; [$BF] jmpt $0000,a
  db $BF
  dw A
}
macro callt [A, B] {
  ; [$C0] callt $0000,a
  db $C0
  dw A
}
macro int [A, B] {
  ; [$CE] int $00
  db $CE
  db A
}
macro resume [A, B] {
  ; [$CF] resume
  db $CF
}
macro sec [A, B] {
  ; [$D0] sec
  db $D0
}
macro clc [A, B] {
  ; [$D1] clc
  db $D1
}
macro dbr [A, B] {
  ; [$D2] dbr $0000
  db $D2
  db A
}
macro dba [A, B] {
  ; [$D3] dba $00
  db $D3
  dw A
}
macro dbb [A, B] {
  ; [$D4] dbb
  db $D4
}
macro dbn [A, B] {
  ; [$D5] dbn $0000
  db $D5
  dw A
}
macro dbo [A, B] {
  ; [$D6] dbo $00
  db $D6
  db A
}
macro rti [A, B] {
  ; [$D8] rti
  db $D8
}
macro sti [A, B] {
  ; [$D7] sti
  db $D7
}
; Opcodes
OP_NOP = $00
OP_PUSH_x = $01
OP_PUSH_y = $02
OP_PUSH_z = $03
OP_PUSH_w = $04
OP_PUSH_a = $05
OP_PUSH_i = $06
OP_PUSH_j = $07
OP_PUSH_F = $08
OP_PUSH_B_B = $09
OP_PUSH_W_A = $0A
OP_POP_x = $0B
OP_POP_y = $0C
OP_POP_z = $0D
OP_POP_w = $0E
OP_POP_a = $0F
OP_POP_i = $10
OP_POP_j = $11
OP_POP_F = $12
OP_LOAD_ai = $13
OP_LOAD_zi = $14
OP_LOAD_wi = $15
OP_LOAD_aj = $16
OP_LOAD_xj = $17
OP_LOAD_yj = $18
OP_LOAD_xA = $19
OP_LOAD_yA = $1A
OP_LOAD_zA = $1B
OP_LOAD_wA = $1C
OP_LOAD_aA = $1D
OP_LOAD_iA = $1E
OP_LOAD_jA = $1F
OP_STORE_ia = $20
OP_STORE_iw = $21
OP_STORE_iz = $22
OP_STORE_ja = $23
OP_STORE_jx = $24
OP_STORE_jy = $25
OP_STORE_Ax = $26
OP_STORE_Ay = $27
OP_STORE_Az = $28
OP_STORE_Aw = $29
OP_STORE_Aa = $2A
OP_STORE_Ai = $2B
OP_STORE_Aj = $2C
OP_CALL_A = $2D
OP_CALL_EQ_A = $2E
OP_CALL_NEQ_A = $2F
OP_CALL_GT_A = $30
OP_CALL_LT_A = $31
OP_CALL_Z_A = $32
OP_CALL_NZ_A = $33
OP_RETURN = $34
OP_CPY_ax = $35
OP_CPY_ay = $36
OP_CPY_az = $37
OP_CPY_aw = $38
OP_CPY_xa = $39
OP_CPY_ya = $3A
OP_CPY_za = $3B
OP_CPY_wa = $3C
OP_SET_xB = $3D
OP_SET_yB = $3E
OP_SET_zB = $3F
OP_SET_wB = $40
OP_SET_aB = $41
OP_SET_iA = $42
OP_SET_jA = $43
OP_ADD_ax = $44
OP_ADD_ay = $45
OP_ADD_az = $46
OP_ADD_aw = $47
OP_ADD_ij = $48
OP_ADD_ia = $49
OP_ADD_iz = $4A
OP_ADD_iw = $4B
OP_ADD_ja = $4C
OP_ADD_jx = $4D
OP_ADD_jy = $4E
OP_ADD_iA = $4F
OP_ADD_jA = $50
OP_ADD_xB = $51
OP_ADD_yB = $52
OP_ADD_zB = $53
OP_ADD_wB = $54
OP_ADD_aB = $55
OP_SUB_ax = $56
OP_SUB_ay = $57
OP_SUB_az = $58
OP_SUB_aw = $59
OP_SUB_xB = $5A
OP_SUB_yB = $5B
OP_SUB_zB = $5C
OP_SUB_wB = $5D
OP_SUB_aB = $5E
OP_MUL_ax = $5F
OP_MUL_aB = $60
OP_MUL_ij = $61
OP_MUL_iA = $62
OP_MUL_jA = $63
OP_DIV_ax = $64
OP_DIV_aB = $65
OP_DIV_ij = $66
OP_DIV_iA = $67
OP_DIV_jA = $68
OP_MOD_ax = $69
OP_MOD_aB = $6A
OP_MOD_ij = $6B
OP_MOD_iA = $6C
OP_MOD_jA = $6D
OP_NEG_a = $6E
OP_NEG_x = $6F
OP_INC_a = $70
OP_INC_x = $71
OP_INC_y = $72
OP_INC_z = $73
OP_INC_w = $74
OP_INC_i = $75
OP_INC_j = $76
OP_DEC_a = $77
OP_DEC_x = $78
OP_DEC_y = $79
OP_DEC_z = $7A
OP_DEC_w = $7B
OP_DEC_i = $7C
OP_DEC_j = $7D
OP_CMP_ax = $7E
OP_CMP_ay = $7F
OP_CMP_az = $80
OP_CMP_aw = $81
OP_CMP_a = $82
OP_CMP_x = $83
OP_CMP_y = $84
OP_CMP_z = $85
OP_CMP_w = $86
OP_CMP_i = $87
OP_CMP_j = $88
OP_CMP_xB = $89
OP_CMP_yB = $8A
OP_CMP_zB = $8B
OP_CMP_wB = $8C
OP_CMP_aB = $8D
OP_CMP_ij = $8E
OP_CMP_iA = $8F
OP_CMP_jA = $90
OP_BIT_xB = $91
OP_BIT_yB = $92
OP_BIT_zB = $93
OP_BIT_wB = $94
OP_BIT_aB = $95
OP_AND_ax = $96
OP_AND_ay = $97
OP_AND_az = $98
OP_AND_aw = $99
OP_AND_xB = $9A
OP_AND_yB = $9B
OP_AND_zB = $9C
OP_AND_wB = $9D
OP_AND_aB = $9E
OP_OR_ax = $9F
OP_OR_ay = $A0
OP_OR_az = $A1
OP_OR_aw = $A2
OP_OR_xB = $A3
OP_OR_yB = $A4
OP_OR_zB = $A5
OP_OR_wB = $A6
OP_OR_aB = $A7
OP_XOR_ax = $A8
OP_XOR_ay = $A9
OP_XOR_az = $AA
OP_XOR_aw = $AB
OP_XOR_xB = $AC
OP_XOR_yB = $AD
OP_XOR_zB = $AE
OP_XOR_wB = $AF
OP_XOR_aB = $B0
OP_NOT_x = $B1
OP_NOT_y = $B2
OP_NOT_z = $B3
OP_NOT_w = $B4
OP_NOT_a = $B5
OP_SHL_aB = $B6
OP_SHR_aB = $B7
OP_JMP_A = $B8
OP_JMP_i = $B9
OP_JMP_j = $BA
OP_JMP_ia = $BB
OP_JMP_ja = $BC
OP_JMP_Aa = $BD
OP_RJMP_B = $BE
OP_JMPT_Aa = $BF
OP_CALLT_Aa = $C0
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
OP_JMP_C_A = $CD
OP_INT_B = $CE
OP_RESUME = $CF
OP_SEC = $D0
OP_CLC = $D1
OP_DBR_A = $D2
OP_DBA_B = $D3
OP_DBB = $D4
OP_DBN_A = $D5
OP_DBO_B = $D6
OP_STI = $D7
OP_RTI = $D8
