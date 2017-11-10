include "dx8.inc"
include "macros.inc"

; =============================================================
; Interrupts
; =============================================================

INTERRUPT_TABLE ENTRY_POINT, HBLANK, VBLANK

ENTRY_POINT:
        jmp MAIN

HBLANK:
        push z
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

       pop z
resume

VBLANK:
        nop
resume

; =============================================================
; Functions
; =============================================================


; =============================================================
; MAIN
; =============================================================

MAIN:
        APOKE    GFX_PLANES, 4

        ;CLS   3, $FF
        SPLAT 0, (IMG_COBRA_ADDR)
IDLE:
        nop
        inc x
        jmp IDLE

; =============================================================
; DATA
; =============================================================

include "cobra.png.s"
;include "victoria.png.s"
