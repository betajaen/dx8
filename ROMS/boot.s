include "dx8.inc"
include "macros.inc"

; =============================================================
; Interrupts
; =============================================================

INTERRUPT_TABLE ENTRY_POINT, HBLANK, VBLANK, FLOPPY

FRAME_COUNTER  = $8000
SECOND_COUNTER = $8001
FLIP_COUNTER   = $8002

WAIT_TIME      = $8003

ENTRY_POINT:
        jmp MAIN
HBLANK:
        load x, GFX_SCANLINE
        not x
        and x, $E0
        shr x, 2

        set a, 0x3B
        add a,x
        store GFX_BGCOLR, a
        set a, 0x3F
        add a,x
        store GFX_BGCOLG, a
        set a, 0x42
        add a,x
        store GFX_BGCOLB, a
resume

VBLANK:
        nop
resume

FLOPPY:
        MMU.z $00
        APUTCHAR 0, 0,0, 'F'
resume

; =============================================================
; Functions
; =============================================================

TXT_INSERTFLOPPY:
        db "INSERT FLOPPY"


BEGIN DisplayLogo
        MMU.z $00
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
        PUSH_MMUBANK
                MMU.z $00
                        load x, GFX_COUNTERS
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
        POP_MMUBANK
END

; =============================================================
; MAIN
; =============================================================

MAIN:
        APOKE    GFX_PLANES, 4
        PRG2GPU  GFX_TILES, FNT_VICTORIA_DATA, FNT_VICTORIA_SIZE

        CLS 0, ' '
        CLS 1, ' '
        CLS 2, ' '
        CLS 3, ' '

        call DisplayLogo
IDLE:
        call DrawCursor
        jmp IDLE

; =============================================================
; DATA
; =============================================================

include "victoria.png.s"
