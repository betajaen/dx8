include "dx8.inc"
include "macros.inc"

; =============================================================
; Interrupts
; =============================================================

INTERRUPT_TABLE ENTRY_POINT, HBLANK, VBLANK

ENTRY_POINT:
        jmp MAIN

HBLANK:
        nop
        ;push z
        ;load  z, RAND
        ;store GFX_SCNW0R, z
        ;load  z, RAND
        ;store GFX_SCNW0G, z
        ;load  z, RAND
        ;store GFX_SCNW0B, z
        ;load  z, RAND
       ; store GFX_BGCOLR, z
       ; load  z, RAND
       ; store GFX_BGCOLG, z
       ; load  z, RAND
       ; store GFX_BGCOLB, z
       ;inc x
       ;pop z
resume

VBLANK:
        nop
resume

; =============================================================
; Functions
; =============================================================

;LOGOTEXT:
        ;db 3, 'DX8'

BEGIN DisplayLogo
        APUTCHAR 0, 4, 4, 'D'
        APUTCHAR 0, 5, 4, 'X'
        APUTCHAR 0, 6, 4, '8'
        APUTCHAR 1, 8, 4, '/'
        APUTCHAR 2, 9, 4, '/'
        APUTCHAR 3,10, 4, '/'
        ;PRINT LOGOTEXT, 4, 5
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

        ;SPLAT 0, IMG_COBRA_ADDR

        call DisplayLogo
IDLE:
        nop
        jmp IDLE

; =============================================================
; DATA
; =============================================================

include "cobra.png.s"
include "victoria.png.s"
