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

; Clear Display 0
; A = Pattern, 0x00 black, $FF white, $55/$AA dotted, etc.
CLS0:
        store      MMU_B1,         a             ; Value
        APOKE      MMU_W1,         $00           ; lo -- Target = $8000
        APOKE      MMU_W1+1,       $80           ; hi --
        APOKE      MMU_W2,         $00           ; lo -- Length = $2800
        APOKE      MMU_W2+1,       $28           ; hi ..
        int        INT_MMU_MEMSET

        set        a,              $FF
        call       DELAY
return

CLS1:
        store      MMU_B1,         a             ; Value
        APOKE      MMU_W1,         $00           ; lo -- Target = $A800
        APOKE      MMU_W1+1,       $A8           ; hi --
        APOKE      MMU_W2,         $00           ; lo -- Length = $2800
        APOKE      MMU_W2+1,       $28           ; hi ..
        int        INT_MMU_MEMSET

        set        a,              $FF
        call       DELAY
return

CLS2:
        store      MMU_B1,         a             ; Value
        APOKE      MMU_W1,         $00           ; lo -- Target = $A800
        APOKE      MMU_W1+1,       $D0           ; hi --
        APOKE      MMU_W2,         $00           ; lo -- Length = $2800
        APOKE      MMU_W2+1,       $28           ; hi ..
        int        INT_MMU_MEMSET

        set        a,              $FF
        call       DELAY
return

CLS3:
        store      MMU_B1,         a             ; Value
        APOKE      MMU_W1,         $00           ; lo -- Target = $A800
        APOKE      MMU_W1+1,       $F8           ; hi --
        APOKE      MMU_W2,         $00           ; lo -- Length = $2800
        APOKE      MMU_W2+1,       $28           ; hi ..
        int        INT_MMU_MEMSET

        set        a,              $FF
        call       DELAY
return

PASTE0:
        APOKE     MMU_W1,         $00           ; Plane 1
        APOKE     MMU_W1+1,       $80           ; ..
        store     MMU_W2,         x             ; Img addr lo
        store     MMU_W2+1,       y             ; Img addr hi
        store     MMU_W3,         z             ; Img size lo
        store     MMU_W3+1,       w             ; Img size hi
        int       INT_MMU_PRGCPY

        set        a,              $FF
        call       DELAY
        set        a,              $FF
        call       DELAY
return


PASTE1:
        APOKE     MMU_W1,         $00           ; Plane 1
        APOKE     MMU_W1+1,       $A8           ; ..
        store     MMU_W2,         x             ; Img addr lo
        store     MMU_W2+1,       y             ; Img addr hi
        store     MMU_W3,         z             ; Img size lo
        store     MMU_W3+1,       w             ; Img size hi
        int       INT_MMU_PRGCPY

        set        a,              $FF
        call       DELAY
        set        a,              $FF
        call       DELAY
return


PASTE2:
        APOKE      MMU_W1,         $00           ; lo -- Target = $A800
        APOKE      MMU_W1+1,       $D0           ; hi --
        store     MMU_W2,         x             ; Img addr lo
        store     MMU_W2+1,       y             ; Img addr hi
        store     MMU_W3,         z             ; Img size lo
        store     MMU_W3+1,       w             ; Img size hi
        int       INT_MMU_PRGCPY

        set        a,              $FF
        call       DELAY
        set        a,              $FF
        call       DELAY
return


PASTE3:
        APOKE      MMU_W1,         $00           ; lo -- Target = $A800
        APOKE      MMU_W1+1,       $F8           ; hi --
        store     MMU_W2,         x             ; Img addr lo
        store     MMU_W2+1,       y             ; Img addr hi
        store     MMU_W3,         z             ; Img size lo
        store     MMU_W3+1,       w             ; Img size hi
        int       INT_MMU_PRGCPY

        set        a,              $FF
        call       DELAY
        set        a,              $FF
        call       DELAY
return

; Wait A cycles
DELAY:
        jmp.z DELAY_DONE
        dec a
        jmp DELAY

        DELAY_DONE:
return

; =============================================================
; MAIN
; =============================================================

MAIN:
        APOKE    GFX_PLANES, 4

        ;set       a, $03
        ;call      CLS0

        set      x, IMG_COBRA_ADDR_LO
        set      y, IMG_COBRA_ADDR_HI
        set      z, IMG_COBRA_SIZE_LO
        set      w, IMG_COBRA_SIZE_HI
        call     PASTE3

        ;set       a, $0C
        ;call      CLS1

        ;set       a, $30
        ;call      CLS2

        ;set       a, $C0
        ;call      CLS3
IDLE:
        nop
        inc x
        jmp IDLE

; =============================================================
; DATA
; =============================================================

include "cobra.png.s"
;include "victoria.png.s"
