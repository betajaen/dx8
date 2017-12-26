#define REGISTER(SIZE, NAME)
#define CONSTANT(NAME, VALUE)

REGISTER(2,   IVT_RESET)
REGISTER(2,   IVT_HBLANK)
REGISTER(2,   IVT_VBLANK)
REGISTER(2,   IVT_FLOPPY)
REGISTER(2,   IVT_IO)
REGISTER(2,   IVT_RESERVED_6)
REGISTER(2,   IVT_RESERVED_7)
REGISTER(2,   IVT_HALT)
REGISTER(8,   MMU_BANK)
REGISTER(1,   GFX_MODE)
REGISTER(2,   GFX_PALETTE_ADDR)
REGISTER(2,   GFX_TILES_ADDR)
REGISTER(1,   GFX_TILES_START)
REGISTER(1,   GFX_TILES_COUNT)
REGISTER(1,   GFX_SCANLINE_NUM)
REGISTER(1,   GFX_FRAME_NUM)
REGISTER(1,   GFX_SECOND_NUM)
REGISTER(1,   GFX_COUNTERS)
REGISTER(1,   FPY_MSG)
REGISTER(1,   FPY_STATE)
REGISTER(1,   FPY_CURRENT_TRACK)
REGISTER(1,   FPY_OP_TRACK)
REGISTER(2,   FPY_OP_ADDR)
REGISTER(1,   FPY_OP)
REGISTER(1,   IO_OP)
REGISTER(1,   IO_DATA_A)
REGISTER(1,   IO_DATA_B)
REGISTER(1,   SND_MODE_0)
REGISTER(1,   SND_PARM_0)
REGISTER(1,   SND_MODE_1)
REGISTER(1,   SND_PARM_1)

REGISTER(128,  AT)

REGISTER(96,  MMU_PAGE)
REGISTER(1,   MMU_PAGE_REAL_MODE)
REGISTER(1,   RAND)
REGISTER(256, AT)
REGISTER(256, STACK_BEGIN)
REGISTER(0,   STACK_END)
REGISTER(512, PCSTACK_BEGIN)
REGISTER(0,   PCSTACK_END)

CONSTANT(GFX_FLG_COUNTERS_NEWFRAME , 0x80)
CONSTANT(GFX_FLG_COUNTERS_ODDEVEN  , 0x40)
CONSTANT(GFX_FLG_COUNTERS_2        , 0x02)
CONSTANT(GFX_FLG_COUNTERS_4        , 0x04)
CONSTANT(GFX_FLG_COUNTERS_8        , 0x08)
CONSTANT(GFX_FLG_COUNTERS_15       , 0x10)
CONSTANT(GFX_FLG_COUNTERS_30       , 0x20)

CONSTANT(IO_FPY_MSG_INSERT         , 0x01)
CONSTANT(IO_FPY_MSG_REMOVE         , 0x02)
CONSTANT(IO_FPY_MSG_SEEK           , 0x03)
CONSTANT(IO_FPY_MSG_READ           , 0x04)
CONSTANT(IO_FPY_MSG_WRITE          , 0x05)
CONSTANT(IO_FPY_MSG_READING        , 0x06)
CONSTANT(IO_FPY_MSG_WRITING        , 0x07)
CONSTANT(IO_FPY_MSG_ERROR          , 0x80)

CONSTANT(IO_FPY_STATE_DISK         , 0x0001)

CONSTANT(IO_FPY_OP_READ_TRACK      , 0x0001)
CONSTANT(IO_FPY_OP_WRITE_TRACK     , 0x0002)

CONSTANT(IO_OP_KEY                 , 0x0001)

CONSTANT(SND_NOTE_C0              , 0x00)
CONSTANT(SND_NOTE_CS0             , 0x01)
CONSTANT(SND_NOTE_D0              , 0x02)
CONSTANT(SND_NOTE_DS0             , 0x03)
CONSTANT(SND_NOTE_E0              , 0x04)
CONSTANT(SND_NOTE_F0              , 0x05)
CONSTANT(SND_NOTE_FS0             , 0x06)
CONSTANT(SND_NOTE_G0              , 0x07)
CONSTANT(SND_NOTE_GS0             , 0x08)
CONSTANT(SND_NOTE_A0              , 0x09)
CONSTANT(SND_NOTE_AS0             , 0x0A)
CONSTANT(SND_NOTE_B0              , 0x0B)
CONSTANT(SND_NOTE_C1              , 0x0C)
CONSTANT(SND_NOTE_CS1             , 0x0D)
CONSTANT(SND_NOTE_D1              , 0x0E)
CONSTANT(SND_NOTE_DS1             , 0x0F)
CONSTANT(SND_NOTE_E1              , 0x10)
CONSTANT(SND_NOTE_F1              , 0x11)
CONSTANT(SND_NOTE_FS1             , 0x12)
CONSTANT(SND_NOTE_G1              , 0x13)
CONSTANT(SND_NOTE_GS1             , 0x14)
CONSTANT(SND_NOTE_A1              , 0x15)
CONSTANT(SND_NOTE_AS1             , 0x16)
CONSTANT(SND_NOTE_B1              , 0x17)
CONSTANT(SND_NOTE_C2              , 0x18)
CONSTANT(SND_NOTE_CS2             , 0x19)
CONSTANT(SND_NOTE_D2              , 0x1A)
CONSTANT(SND_NOTE_DS2             , 0x1B)
CONSTANT(SND_NOTE_E2              , 0x1C)
CONSTANT(SND_NOTE_F2              , 0x1D)
CONSTANT(SND_NOTE_FS2             , 0x1E)
CONSTANT(SND_NOTE_G2              , 0x1F)
CONSTANT(SND_NOTE_GS2             , 0x20)
CONSTANT(SND_NOTE_A2              , 0x21)
CONSTANT(SND_NOTE_AS2             , 0x22)
CONSTANT(SND_NOTE_B2              , 0x23)
CONSTANT(SND_NOTE_C3              , 0x24)
CONSTANT(SND_NOTE_CS3             , 0x25)
CONSTANT(SND_NOTE_D3              , 0x26)
CONSTANT(SND_NOTE_DS3             , 0x27)
CONSTANT(SND_NOTE_E3              , 0x28)
CONSTANT(SND_NOTE_F3              , 0x29)
CONSTANT(SND_NOTE_FS3             , 0x2A)
CONSTANT(SND_NOTE_G3              , 0x2B)
CONSTANT(SND_NOTE_GS3             , 0x2C)
CONSTANT(SND_NOTE_A3              , 0x2D)
CONSTANT(SND_NOTE_AS3             , 0x2E)
CONSTANT(SND_NOTE_B3              , 0x2F)
CONSTANT(SND_NOTE_C4              , 0x30)
CONSTANT(SND_NOTE_CS4             , 0x31)
CONSTANT(SND_NOTE_D4              , 0x32)
CONSTANT(SND_NOTE_DS4             , 0x33)
CONSTANT(SND_NOTE_E4              , 0x34)
CONSTANT(SND_NOTE_F4              , 0x35)
CONSTANT(SND_NOTE_FS4             , 0x36)
CONSTANT(SND_NOTE_G4              , 0x37)
CONSTANT(SND_NOTE_GS4             , 0x38)
CONSTANT(SND_NOTE_A4              , 0x39)
CONSTANT(SND_NOTE_AS4             , 0x3A)
CONSTANT(SND_NOTE_B4              , 0x3B)
CONSTANT(SND_NOTE_C5              , 0x3C)
CONSTANT(SND_NOTE_CS5             , 0x3D)
CONSTANT(SND_NOTE_D5              , 0x3E)
CONSTANT(SND_NOTE_DS5             , 0x3F)
CONSTANT(SND_NOTE_E5              , 0x40)
CONSTANT(SND_NOTE_F5              , 0x41)
CONSTANT(SND_NOTE_FS5             , 0x42)
CONSTANT(SND_NOTE_G5              , 0x43)
CONSTANT(SND_NOTE_GS5             , 0x44)
CONSTANT(SND_NOTE_A5              , 0x45)
CONSTANT(SND_NOTE_AS5             , 0x46)
CONSTANT(SND_NOTE_B5              , 0x47)
CONSTANT(SND_NOTE_C6              , 0x48)
CONSTANT(SND_NOTE_CS6             , 0x49)
CONSTANT(SND_NOTE_D6              , 0x4A)
CONSTANT(SND_NOTE_DS6             , 0x4B)
CONSTANT(SND_NOTE_E6              , 0x4C)
CONSTANT(SND_NOTE_F6              , 0x4D)
CONSTANT(SND_NOTE_FS6             , 0x4E)
CONSTANT(SND_NOTE_G6              , 0x4F)
CONSTANT(SND_NOTE_GS6             , 0x50)
CONSTANT(SND_NOTE_A6              , 0x51)
CONSTANT(SND_NOTE_AS6             , 0x52)
CONSTANT(SND_NOTE_B6              , 0x53)
CONSTANT(SND_NOTE_C7              , 0x54)
CONSTANT(SND_NOTE_CS7             , 0x55)
CONSTANT(SND_NOTE_D7              , 0x56)
CONSTANT(SND_NOTE_DS7             , 0x57)
CONSTANT(SND_NOTE_E7              , 0x58)
CONSTANT(SND_NOTE_F7              , 0x59)
CONSTANT(SND_NOTE_FS7             , 0x5A)
CONSTANT(SND_NOTE_G7              , 0x5B)
CONSTANT(SND_NOTE_GS7             , 0x5C)
CONSTANT(SND_NOTE_A7              , 0x5D)
CONSTANT(SND_NOTE_AS7             , 0x5E)
CONSTANT(SND_NOTE_B7              , 0x5F)
CONSTANT(SND_NOTE_C8              , 0x60)
CONSTANT(SND_NOTE_CS8             , 0x61)
CONSTANT(SND_NOTE_D8              , 0x62)
CONSTANT(SND_NOTE_DS8             , 0x63)
CONSTANT(SND_NOTE_E8              , 0x64)
CONSTANT(SND_NOTE_F8              , 0x65)
CONSTANT(SND_NOTE_FS8             , 0x66)
CONSTANT(SND_NOTE_G8              , 0x67)
CONSTANT(SND_NOTE_GS8             , 0x68)
CONSTANT(SND_NOTE_A8              , 0x69)
CONSTANT(SND_NOTE_AS8             , 0x6A)
CONSTANT(SND_NOTE_B8              , 0x6B)

CONSTANT(SCREEN_W                  , 0x0140)
CONSTANT(SCREEN_H                  , 0x0100)
CONSTANT(SCREEN_COLS               , 0x28)
CONSTANT(SCREEN_ROWS               , 0x20)

CONSTANT(CHAR_NUL                  , 0x00)
CONSTANT(CHAR_SOH                  , 0x01)
CONSTANT(CHAR_STX                  , 0x02)
CONSTANT(CHAR_ETX                  , 0x03)
CONSTANT(CHAR_EOT                  , 0x04)
CONSTANT(CHAR_ENQ                  , 0x05)
CONSTANT(CHAR_ACK                  , 0x06)
CONSTANT(CHAR_BEL                  , 0x07)
CONSTANT(CHAR_BS                   , 0x08)
CONSTANT(CHAR_HT                   , 0x09)
CONSTANT(CHAR_LF                   , 0x0A)
CONSTANT(CHAR_VT                   , 0x0B)
CONSTANT(CHAR_FF                   , 0x0C)
CONSTANT(CHAR_CR                   , 0x0D)
CONSTANT(CHAR_SO                   , 0x0E)
CONSTANT(CHAR_SI                   , 0x0F)
CONSTANT(CHAR_DLE                  , 0x10)
CONSTANT(CHAR_DC1                  , 0x11)
CONSTANT(CHAR_DC2                  , 0x12)
CONSTANT(CHAR_DC3                  , 0x13)
CONSTANT(CHAR_DC4                  , 0x14)
CONSTANT(CHAR_NAK                  , 0x15)
CONSTANT(CHAR_SYN                  , 0x16)
CONSTANT(CHAR_ETB                  , 0x17)
CONSTANT(CHAR_CAN                  , 0x18)
CONSTANT(CHAR_EM                   , 0x19)
CONSTANT(CHAR_SUB                  , 0x1A)
CONSTANT(CHAR_ESC                  , 0x1B)
CONSTANT(CHAR_FS                   , 0x1C)
CONSTANT(CHAR_GS                   , 0x1D)
CONSTANT(CHAR_RS                   , 0x1E)
CONSTANT(CHAR_US                   , 0x1F)
CONSTANT(CHAR_DEL                  , 0x7F)
CONSTANT(CHAR_Space                , 0x20)
CONSTANT(CHAR_Exclaim              , 0x21)
CONSTANT(CHAR_DoubleQuote          , 0x22)
CONSTANT(CHAR_Hash                 , 0x23)
CONSTANT(CHAR_Dollar               , 0x24)
CONSTANT(CHAR_Pound                , 0x24)
CONSTANT(CHAR_Percent              , 0x25)
CONSTANT(CHAR_Ampersand            , 0x26)
CONSTANT(CHAR_Quote                , 0x27)
CONSTANT(CHAR_LeftParanthesis      , 0x28)
CONSTANT(CHAR_RightParanthesis     , 0x29)
CONSTANT(CHAR_Times                , 0x2A)
CONSTANT(CHAR_Add                  , 0x2B)
CONSTANT(CHAR_Comma                , 0x2C)
CONSTANT(CHAR_Minus                , 0x2D)
CONSTANT(CHAR_Dot                  , 0x2E)
CONSTANT(CHAR_Slash                , 0x2F)
CONSTANT(CHAR_0                    , 0x30)
CONSTANT(CHAR_1                    , 0x31)
CONSTANT(CHAR_2                    , 0x32)
CONSTANT(CHAR_3                    , 0x33)
CONSTANT(CHAR_4                    , 0x34)
CONSTANT(CHAR_5                    , 0x35)
CONSTANT(CHAR_6                    , 0x36)
CONSTANT(CHAR_7                    , 0x37)
CONSTANT(CHAR_8                    , 0x38)
CONSTANT(CHAR_9                    , 0x39)
CONSTANT(CHAR_Colon                , 0x3A)
CONSTANT(CHAR_SemiColon            , 0x3B)
CONSTANT(CHAR_LeftAngleBracket     , 0x3C)
CONSTANT(CHAR_Equals               , 0x3D)
CONSTANT(CHAR_RightAngleBracket    , 0x3E)
CONSTANT(CHAR_Question             , 0x3F)
CONSTANT(CHAR_At                   , 0x40)
CONSTANT(CHAR_A                    , 0x41)
CONSTANT(CHAR_B                    , 0x42)
CONSTANT(CHAR_C                    , 0x43)
CONSTANT(CHAR_D                    , 0x44)
CONSTANT(CHAR_E                    , 0x45)
CONSTANT(CHAR_F                    , 0x46)
CONSTANT(CHAR_G                    , 0x47)
CONSTANT(CHAR_H                    , 0x48)
CONSTANT(CHAR_I                    , 0x49)
CONSTANT(CHAR_J                    , 0x4A)
CONSTANT(CHAR_K                    , 0x4B)
CONSTANT(CHAR_L                    , 0x4C)
CONSTANT(CHAR_M                    , 0x4D)
CONSTANT(CHAR_N                    , 0x4E)
CONSTANT(CHAR_O                    , 0x4F)
CONSTANT(CHAR_P                    , 0x50)
CONSTANT(CHAR_Q                    , 0x51)
CONSTANT(CHAR_R                    , 0x52)
CONSTANT(CHAR_S                    , 0x53)
CONSTANT(CHAR_T                    , 0x54)
CONSTANT(CHAR_U                    , 0x55)
CONSTANT(CHAR_V                    , 0x56)
CONSTANT(CHAR_W                    , 0x57)
CONSTANT(CHAR_X                    , 0x58)
CONSTANT(CHAR_Y                    , 0x59)
CONSTANT(CHAR_Z                    , 0x5A)
CONSTANT(CHAR_LeftSquareBracket    , 0x5B)
CONSTANT(CHAR_Backslash            , 0x5C)
CONSTANT(CHAR_RightSquareBracket   , 0x5D)
CONSTANT(CHAR_Caret                , 0x5E)
CONSTANT(CHAR_Underscore           , 0x5F)
CONSTANT(CHAR_Accent               , 0x60)
CONSTANT(CHAR_a                    , 0x61)
CONSTANT(CHAR_b                    , 0x62)
CONSTANT(CHAR_c                    , 0x63)
CONSTANT(CHAR_d                    , 0x64)
CONSTANT(CHAR_e                    , 0x65)
CONSTANT(CHAR_f                    , 0x66)
CONSTANT(CHAR_g                    , 0x67)
CONSTANT(CHAR_h                    , 0x68)
CONSTANT(CHAR_i                    , 0x69)
CONSTANT(CHAR_j                    , 0x6A)
CONSTANT(CHAR_k                    , 0x6B)
CONSTANT(CHAR_l                    , 0x6C)
CONSTANT(CHAR_m                    , 0x6D)
CONSTANT(CHAR_n                    , 0x6E)
CONSTANT(CHAR_o                    , 0x6F)
CONSTANT(CHAR_p                    , 0x70)
CONSTANT(CHAR_q                    , 0x71)
CONSTANT(CHAR_r                    , 0x72)
CONSTANT(CHAR_s                    , 0x73)
CONSTANT(CHAR_t                    , 0x74)
CONSTANT(CHAR_u                    , 0x75)
CONSTANT(CHAR_v                    , 0x76)
CONSTANT(CHAR_w                    , 0x77)
CONSTANT(CHAR_x                    , 0x78)
CONSTANT(CHAR_y                    , 0x79)
CONSTANT(CHAR_z                    , 0x7A)
CONSTANT(CHAR_LeftBrace            , 0x7B)
CONSTANT(CHAR_Pipe                 , 0x7C)
CONSTANT(CHAR_RightBrace           , 0x7D)
CONSTANT(CHAR_Tidle                , 0x7E)
CONSTANT(CHAR_Hat                  , 0x7F)

CONSTANT(MEM_CHIP_ADDR             , 0x0000)
CONSTANT(MEM_CHIP_SIZE             , 0x4000)
CONSTANT(MEM_SHARED_ADDR           , 0x8000)
CONSTANT(MEM_SHARED_SIZE           , 0x10000)

CONSTANT(GFX_WIDTH                      , 0x140)
CONSTANT(GFX_HEIGHT                     , 0x100)
CONSTANT(GFX_COLUMNS                    , 0x28)
CONSTANT(GFX_ROWS                       , 0x20)
CONSTANT(GFX_COLUMNS_COLOUR             , 0x14)

CONSTANT(GFX_FAST_SCREEN0               , 0xE000)
CONSTANT(GFX_FAST_SCREEN0_COLOUR        , 0xE500)

CONSTANT(GFX_FAST_FLAGS                 , 0xE780)
CONSTANT(GFX_FAST_SCREEN0_FLAGS         , 0xE781)
CONSTANT(GFX_FAST_SCREEN0_SCROLL        , 0xE782)
CONSTANT(GFX_FAST_SCREEN0_PALETTE       , 0xE783)
CONSTANT(GFX_FAST_SCREEN1_FLAGS         , 0xE784)
CONSTANT(GFX_FAST_SCREEN1_SCROLL        , 0xE785)
CONSTANT(GFX_FAST_SCREEN1_PALETTE       , 0xE786)

CONSTANT(GFX_FAST_SPRITES               , 0xEF90)
CONSTANT(GFX_FAST_SPRITE_PALETTE        , 0xEFB0)
CONSTANT(GFX_FAST_SPRITE_COLLISIONS     , 0xEFB1)

CONSTANT(GFX_FAST_SCREEN1               , 0xE800)
CONSTANT(GFX_FAST_SCREEN1_COLOUR        , 0xED00)

CONSTANT(GFX_FAST_SPRITE_MEM            , 0xF000)
CONSTANT(GFX_FAST_TILE_MEM              , 0xF800)

CONSTANT(GFX_FLAGS_SCREEN               , 0x01)

CONSTANT(INTVEC_RESET              , 0x00)
CONSTANT(INTVEC_HBLANK             , 0x01)
CONSTANT(INTVEC_VBLANK             , 0x02)
CONSTANT(INTVEC_FLOPPY             , 0x03)
CONSTANT(INTVEC_IO                 , 0x04)
CONSTANT(INTVEC_RESERVED_6         , 0x05)
CONSTANT(INTVEC_RESERVED_7         , 0x06)
CONSTANT(INTVEC_HALT               , 0x07)

CONSTANT(INTVEC_ADDR_RESET         , 0x0000)
CONSTANT(INTVEC_ADDR_HBLANK        , 0x0002)
CONSTANT(INTVEC_ADDR_VBLANK        , 0x0004)
CONSTANT(INTVEC_ADDR_FLOPPY        , 0x0006)
CONSTANT(INTVEC_ADDR_IO            , 0x0008)
CONSTANT(INTVEC_ADDR_RESERVED_6    , 0x000A)
CONSTANT(INTVEC_ADDR_RESERVED_7    , 0x000C)
CONSTANT(INTVEC_ADDR_HALT          , 0x000E)

CONSTANT(HALT_UNKNOWN_OPCODE       , 0x0000)
CONSTANT(HALT_DIVISION_BY_ZERO     , 0x0001)
CONSTANT(HALT_STACK_OVERFLOW       , 0x0002)
CONSTANT(HALT_STACK_UNDERFLOW      , 0x0003)
CONSTANT(HALT_PCSTACK_OVERFLOW     , 0x0004)
CONSTANT(HALT_PCSTACK_UNDERFLOW    , 0x0005)
CONSTANT(HALT_BLOCKED_INTERRUPT    , 0x0006)
CONSTANT(HALT_BREAKPOINT           , 0x00FF)

INTERRUPT(INT_FLOPPY_OP, 0xD0, "Run a floppy operation");
INTERRUPT(INT_GPUON, 0xFE, "Turn on the GPU")
INTERRUPT(INT_RESET, 0xFF, "Soft Reset")

KEY(0)                  // 0
KEY(1)                  // 1
KEY(2)                  // 2 
KEY(3)                  // 3
KEY(4)                  // 4
KEY(5)                  // 5
KEY(6)                  // 6
KEY(7)                  // 7
KEY(8)                  // 8
KEY(9)                  // 9
KEY(LowercaseA)         // a
KEY(LowercaseB)         // b
KEY(LowercaseC)         // c
KEY(LowercaseD)         // d
KEY(LowercaseE)         // e
KEY(LowercaseF)         // f
KEY(LowercaseG)         // g
KEY(LowercaseH)         // h
KEY(LowercaseI)         // i
KEY(LowercaseJ)         // j
KEY(LowercaseK)         // k
KEY(LowercaseL)         // l
KEY(LowercaseM)         // m
KEY(LowercaseN)         // n
KEY(LowercaseO)         // o
KEY(LowercaseP)         // p
KEY(LowercaseQ)         // q
KEY(LowercaseR)         // r
KEY(LowercaseS)         // s
KEY(LowercaseT)         // t
KEY(LowercaseU)         // u
KEY(LowercaseV)         // v
KEY(LowercaseW)         // w
KEY(LowercaseX)         // x
KEY(LowercaseY)         // y
KEY(LowercaseZ)         // z
KEY(UppercaseA)         // A
KEY(UppercaseB)         // B
KEY(UppercaseC)         // C
KEY(UppercaseD)         // D
KEY(UppercaseE)         // E
KEY(UppercaseF)         // F
KEY(UppercaseG)         // G
KEY(UppercaseH)         // H
KEY(UppercaseI)         // I
KEY(UppercaseJ)         // J
KEY(UppercaseK)         // K
KEY(UppercaseL)         // L
KEY(UppercaseM)         // M
KEY(UppercaseN)         // N
KEY(UppercaseO)         // O
KEY(UppercaseP)         // P
KEY(UppercaseQ)         // Q
KEY(UppercaseR)         // R
KEY(UppercaseS)         // S
KEY(UppercaseT)         // T
KEY(UppercaseU)         // U
KEY(UppercaseV)         // V
KEY(UppercaseW)         // W
KEY(UppercaseX)         // X
KEY(UppercaseY)         // Y
KEY(UppercaseZ)         // Z
KEY(Space)              //  
KEY(Exclaim)            // !
KEY(DoubleQuote)        // "
KEY(Hash)               // #
KEY(PoundSign)          // $
KEY(Percentage)         // %
KEY(Ampersand)          // &
KEY(SingleQuote)        // '
KEY(LeftParentheses)    // (
KEY(RightParentheses)   // )
KEY(At)                 // @
KEY(Plus)               // +
KEY(Minus)              // -
KEY(Multiply)           // *
KEY(Equals)             // =
KEY(Divide)             // /
KEY(Comma)              // ,
KEY(Period)             // .
KEY(SemiColon)          // ;
KEY(LeftSquareBracket)  // [
KEY(RightSquareBracket) // ]
KEY(LeftBrace)          // {
KEY(RightBrace)         // }
KEY(QuestionMark)       // ?
KEY(LeftAngleBracket)   // <
KEY(RightAngleBracket)  // >
KEY(Colon)              // :

KEY(Return)             // ^
KEY(Break)              // ^
KEY(Reset)              // ^
KEY(Delete)             // ^
KEY(Function1)          // ^
KEY(Function2)          // ^
KEY(Function3)          // ^
KEY(Function4)          // ^
KEY(Program1)           // ^
KEY(Program2)           // ^
KEY(Program3)           // ^
KEY(Program4)           // ^
KEY(LeftArrow)          // ^
KEY(RightArrow)         // ^
KEY(UpArrow)            // ^
KEY(DownArrow)          // ^
KEY(CapsLock)           // ^
KEY(Control)            // ^
KEY(LeftShift)          // ^
KEY(RightShift)         // ^

KEYMOD(Shift)
KEYMOD(Control)
