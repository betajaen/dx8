#define REGISTER(SIZE, NAME)
#define CONSTANT(NAME, VALUE)

REGISTER(2,   IVT_RESET)
REGISTER(2,   IVT_HBLANK)
REGISTER(2,   IVT_VBLANK)
REGISTER(2,   IVT_FLOPPY)
REGISTER(2,   IVT_RESERVED_5)
REGISTER(2,   IVT_RESERVED_6)
REGISTER(2,   IVT_RESERVED_7)
REGISTER(2,   IVT_RESERVED_8)
REGISTER(8,   MMU_BANK)
REGISTER(1,   GFX_PLANES_COUNT)
REGISTER(1,   GFX_PLANE0_TYPE)
REGISTER(1,   GFX_PLANE1_TYPE)
REGISTER(1,   GFX_PLANE2_TYPE)
REGISTER(1,   GFX_PLANE3_TYPE)
REGISTER(3,   GFX_BACKGROUND_COLOUR)
REGISTER(3,   GFX_PLANE0_COLOUR)
REGISTER(3,   GFX_PLANE1_COLOUR)
REGISTER(3,   GFX_PLANE2_COLOUR)
REGISTER(3,   GFX_PLANE3_COLOUR)
REGISTER(1,   GFX_SCANLINE_NUM)
REGISTER(1,   GFX_FRAME_NUM)
REGISTER(1,   GFX_SECOND_NUM)
REGISTER(1,   GFX_COUNTERS)
REGISTER(2,   GFX_TILES_ADDR)
REGISTER(1,   GFX_TILES_START)
REGISTER(1,   GFX_TILES_COUNT)
REGISTER(1,   RAND)
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

REGISTER(1,   MMU_PAGE_REAL_MODE)
REGISTER(1,   MMU_MAP0_DST)
REGISTER(1,   MMU_MAP0_SRC_LOWER)
REGISTER(1,   MMU_MAP0_SRC_UPPER)
REGISTER(1,   MMU_MAP1_DST)
REGISTER(1,   MMU_MAP1_SRC_LOWER)
REGISTER(1,   MMU_MAP1_SRC_UPPER)
REGISTER(1,   MMU_MAP2_DST)
REGISTER(1,   MMU_MAP2_SRC_LOWER)
REGISTER(1,   MMU_MAP2_SRC_UPPER)
REGISTER(1,   MMU_MAP3_DST)
REGISTER(1,   MMU_MAP3_SRC_LOWER)
REGISTER(1,   MMU_MAP3_SRC_UPPER)

REGISTER(1,   MMU_MAP4_DST)
REGISTER(1,   MMU_MAP4_SRC_LOWER)
REGISTER(1,   MMU_MAP4_SRC_UPPER)

REGISTER(1,   MMU_MAP5_DST)
REGISTER(1,   MMU_MAP5_SRC_LOWER)
REGISTER(1,   MMU_MAP5_SRC_UPPER)

REGISTER(1,   MMU_MAP6_DST)
REGISTER(1,   MMU_MAP6_SRC_LOWER)
REGISTER(1,   MMU_MAP6_SRC_UPPER)

REGISTER(1,   MMU_MAP7_DST)
REGISTER(1,   MMU_MAP7_SRC_LOWER)
REGISTER(1,   MMU_MAP7_SRC_UPPER)

REGISTER(512, AT)
REGISTER(256, STACK_BEGIN)
REGISTER(0,   STACK_END)

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

CONSTANT(SND_MODE_NONE             , 0x00)
CONSTANT(SND_MODE_NOTE             , 0x01)
CONSTANT(SND_NOTE_C1               , 0x00)
CONSTANT(SND_NOTE_D1               , 0x01)
CONSTANT(SND_NOTE_E1               , 0x02)
CONSTANT(SND_NOTE_F1               , 0x03)
CONSTANT(SND_NOTE_G1               , 0x04)
CONSTANT(SND_NOTE_A1               , 0x05)
CONSTANT(SND_NOTE_B1               , 0x06)
CONSTANT(SND_NOTE_C2               , 0x07)
CONSTANT(SND_NOTE_D2               , 0x08)
CONSTANT(SND_NOTE_E2               , 0x09)
CONSTANT(SND_NOTE_F2               , 0x0A)
CONSTANT(SND_NOTE_G2               , 0x0B)
CONSTANT(SND_NOTE_A2               , 0x0C)
CONSTANT(SND_NOTE_B2               , 0x0D)
CONSTANT(SND_NOTE_C3               , 0x0E)
CONSTANT(SND_NOTE_D3               , 0x0F)
CONSTANT(SND_NOTE_E3               , 0x10)
CONSTANT(SND_NOTE_F3               , 0x11)
CONSTANT(SND_NOTE_G3               , 0x12)
CONSTANT(SND_NOTE_A3               , 0x13)
CONSTANT(SND_NOTE_B3               , 0x14)
CONSTANT(SND_NOTE_C4               , 0x15)
CONSTANT(SND_NOTE_D4               , 0x16)
CONSTANT(SND_NOTE_E4               , 0x17)
CONSTANT(SND_NOTE_F4               , 0x18)
CONSTANT(SND_NOTE_G4               , 0x19)
CONSTANT(SND_NOTE_A4               , 0x1A)
CONSTANT(SND_NOTE_B4               , 0x1B)
CONSTANT(SND_NOTE_C5               , 0x1C)
CONSTANT(SND_NOTE_D5               , 0x1D)
CONSTANT(SND_NOTE_E5               , 0x1E)
CONSTANT(SND_NOTE_F5               , 0x1F)
CONSTANT(SND_NOTE_G5               , 0x20)
CONSTANT(SND_NOTE_A5               , 0x21)
CONSTANT(SND_NOTE_B5               , 0x22)
CONSTANT(SND_NOTE_C6               , 0x23)
CONSTANT(SND_NOTE_D6               , 0x24)
CONSTANT(SND_NOTE_E6               , 0x25)
CONSTANT(SND_NOTE_F6               , 0x26)
CONSTANT(SND_NOTE_G6               , 0x27)
CONSTANT(SND_NOTE_A6               , 0x28)
CONSTANT(SND_NOTE_B6               , 0x29)

CONSTANT(MEM_CHIP_ADDR             , 0x0000)
CONSTANT(MEM_CHIP_SIZE             , 0x0100)
CONSTANT(MEM_PROGRAM_ADDR          , 0x0800)
CONSTANT(MEM_PROGRAM_SIZE          , 0x7800)
CONSTANT(MEM_SHARED_ADDR           , 0x8000)
CONSTANT(MEM_SHARED_SIZE           , 0xFFFF)
CONSTANT(MEM_GFX_PLANE_SIZE        , 0x2800)
CONSTANT(MEM_GFX_PLANE0            , 0x8000)
CONSTANT(MEM_GFX_PLANE1            , 0xA800)
CONSTANT(MEM_GFX_PLANE2            , 0xD000)
CONSTANT(MEM_GFX_PLANE3            , 0xF800)

CONSTANT(INTVEC_RESET              , 0x00)
CONSTANT(INTVEC_HBLANK             , 0x01)
CONSTANT(INTVEC_VBLANK             , 0x02)
CONSTANT(INTVEC_FLOPPY             , 0x03)
CONSTANT(INTVEC_IO                 , 0x04)

CONSTANT(INTVEC_ADDR_RESET         , 0x0000 )
CONSTANT(INTVEC_ADDR_HBLANK        , 0x0002 )
CONSTANT(INTVEC_ADDR_VBLANK        , 0x0004 )
CONSTANT(INTVEC_ADDR_FLOPPY        , 0x0006 )
CONSTANT(INTVEC_ADDR_IO            , 0x0008 )

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
