include "dx8.inc"
include "macros.inc"

;DX8_HEADER_ROM

; =============================================================
; IVT
; =============================================================

RESET:
        jmp MAIN
HBLANK:
        load x, REG_GFX_SCANLINE_NUM
        not x
        and x, $E0
        shr x, 2

        set a, 0x3B
        add a,x
        store REG_GFX_BACKGROUND_COLOUR + 0, a
        set a, 0x3F
        add a,x
        store REG_GFX_BACKGROUND_COLOUR + 1, a
        set a, 0x42
        add a,x
        store REG_GFX_BACKGROUND_COLOUR + 2, a
resume

VBLANK:
        nop
resume

FLOPPY:
        APUTCHAR 0, 0,0, 'F'
resume

; =============================================================
; Functions
; =============================================================

BEGIN DisplayLogo

        APUTCHAR 0,17+0, 29, 'D'
        APUTCHAR 0,17+1, 29, 'X'
        APUTCHAR 0,17+2, 29, '8'
        APUTCHAR 1,17+4, 29, '/'
        APUTCHAR 2,17+5, 29, '/'
        APUTCHAR 3,17+6, 29, '/'

        APUTCHAR 0,17+0, 15, 'I'
        APUTCHAR 0,17+1, 15, 'N'
        APUTCHAR 0,17+2, 15, 'S'
        APUTCHAR 0,17+3, 15, 'E'
        APUTCHAR 0,17+4, 15, 'R'
        APUTCHAR 0,17+5, 15, 'T'


        APUTCHAR 0,17+0, 16, 'F'
        APUTCHAR 0,17+1, 16, 'L'
        APUTCHAR 0,17+2, 16, 'O'
        APUTCHAR 0,17+3, 16, 'P'
        APUTCHAR 0,17+4, 16, 'P'
        APUTCHAR 0,17+5, 16, 'Y'
END

BEGIN DrawCursor
        ;PUSH_MMUBANK
                ;MMU.z $00
                        load x, REG_GFX_COUNTERS
                        cmpbit x, GFX_FLG_COUNTERS_ODDEVEN
                        jmp.z .DrawBlank
                        jmp .DrawDot
                .DrawBlank:
                        set x, ' '
                        PRINT_AT(1,17+4, 29), x
                        PRINT_AT(2,17+5, 29), x
                        PRINT_AT(3,17+6, 29), x
                        jmp .EndDraw
                .DrawDot:
                        set x, '/'
                        PRINT_AT(1,17+4, 29), x
                        PRINT_AT(2,17+5, 29), x
                        PRINT_AT(3,17+6, 29), x
                .EndDraw:
        ;POP_MMUBANK
END

; =============================================================
; MAIN
; =============================================================
SETUP:
        ; Setup basic IVT
        APOKE_WORD      INTVEC_ADDR_RESET,      RESET
        APOKE_WORD      INTVEC_ADDR_HBLANK,     HBLANK
        APOKE_WORD      INTVEC_ADDR_VBLANK,     VBLANK
        APOKE_WORD      INTVEC_ADDR_FLOPPY,     FLOPPY

        ; Reset initial registers
        APOKE           REG_MMU_BANK + 0,           $00
        APOKE           REG_MMU_BANK + 1,           $00
        APOKE           REG_MMU_BANK + 2,           $00
        APOKE           REG_MMU_BANK + 3,           $00
        APOKE           REG_MMU_BANK + 4,           $00
        APOKE           REG_MMU_BANK + 5,           $00
        APOKE           REG_MMU_BANK + 6,           $00
        APOKE           REG_MMU_BANK + 7,           $FF   ; Keep Rom
        APOKE           REG_GFX_PLANES_COUNT,       $04
OFFSET = $FFFF - $800 + 1

        ; Copy font into shared memory..
        APOKE_WORD      REG_GFX_TILES_ADDR,         (OFFSET + FNT_VICTORIA_DATA)


        ; Init GPU
        ; int ???  @TODO

        APOKE           REG_GFX_PLANE0_TYPE,        $00
        APOKE           REG_GFX_PLANE1_TYPE,        $00
        APOKE           REG_GFX_PLANE2_TYPE,        $00
        APOKE           REG_GFX_PLANE3_TYPE,        $00
        APOKE           REG_GFX_PLANES_COUNT,       $04

        int INT_GPUON

MAIN:
        ;PRG2GPU  GFX_TILES, FNT_VICTORIA_DATA, FNT_VICTORIA_SIZE

        APOKE           REG_MMU_BANK + 0,           $00
        APOKE           REG_MMU_BANK + 1,           $00
        APOKE           REG_MMU_BANK + 2,           $00
        APOKE           REG_MMU_BANK + 3,           $00
        APOKE           REG_MMU_BANK + 4,           $00
        APOKE           REG_MMU_BANK + 5,           $00
        APOKE           REG_MMU_BANK + 6,           $00   ; Keep Rom
        APOKE           REG_MMU_BANK + 7,           $FF

        CLS 0, ' '
        CLS 1, ' '
        CLS 2, 'X'
        CLS 3, ' '

        call DisplayLogo
IDLE:
        call DrawCursor
        jmp IDLE

; =============================================================
; DATA
; =============================================================

include "victoria.png.s"


; =============================================================
; Init sub-routine
; MMU initialises all RAM to be $FFFF (Apart from some registers)
; MMU_Bank masks point to ROM (all of them)
; Rom is 2048bytes in size, and addreses wrap around
; MMU ensures the first byte of memory is set to $FE
; Making the IVT_RESET address $FEFF
; Pad the rom to 2k bytes, and insert a relative jump
; and then jump back to the setup code to set up the IVT tables
; and initialise the hardware.
; =============================================================

rpad (3 + 3 + 2)

launch:
        offset  ($FFFF - $800 + 1)
        jmp     SETUP
FEFF:
        RJMP    launch
