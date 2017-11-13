include "dx8.inc"
include "macros.inc"

; =============================================================
; Interrupts
; =============================================================

INTERRUPT_TABLE ENTRY_POINT, HBLANK, VBLANK

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

; =============================================================
; Functions
; =============================================================

BEGIN DisplayLogo
        PUSH_MMUBANK
                MMU.z $00
                APUTCHAR 0,17+0, 29, 'D'
                APUTCHAR 0,17+1, 29, 'X'
                APUTCHAR 0,17+2, 29, '8'
                APUTCHAR 1,17+4, 29, '/'
                APUTCHAR 2,17+5, 29, '/'
                APUTCHAR 3,17+6, 29, '/'
        POP_MMUBANK
END

BEGIN DrawCursor
        PUSH_MMUBANK
                MMU.z $00
                        load x, GFX_COUNTERS
                        cmpbit x, GFX_FLG_COUNTERS_ODDEVEN
                        jmp.nz .DrawBlank
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
        ;call DisplayWait
        jmp IDLE

; =============================================================
; DATA
; =============================================================

include "cobra.png.s"
include "victoria.png.s"
