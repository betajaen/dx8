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

        set a, 0xF2
        add a,x
        store GFX_BGCOLR, a
        set a, 0x4C
        add a,x
        store GFX_BGCOLG, a
        set a, 0x27
        add a,x
        store GFX_BGCOLB, a
VBLANK:
        nop
FLOPPY:
        nop
resume

; =============================================================
; Functions
; =============================================================

BEGIN DisplayLogo
        PUSH_MMUBANK
                MMU.z $00
                APUTCHAR 0,17+0, 29, 'F'
                APUTCHAR 0,17+1, 29, 'L'
                APUTCHAR 0,17+2, 29, 'O'
                APUTCHAR 1,17+4, 29, 'P'
                APUTCHAR 2,17+5, 29, 'P'
                APUTCHAR 3,17+6, 29, 'Y'
        POP_MMUBANK
END


; =============================================================
; MAIN
; =============================================================

MAIN:
        APOKE    GFX_PLANES, 4

        ;CLS 0, ' '
        ;CLS 1, ' '
        ;CLS 2, ' '
        ;CLS 3, ' '

        call DisplayLogo
IDLE:
        jmp IDLE
