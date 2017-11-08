include "dx8.inc"
include "macros.inc"

jmp MAIN

; Wait A cycles
DELAY:
        jmp.z DELAY_DONE
        dec a
        jmp.z DELAY_DONE
        nop
        jmp DELAY

        DELAY_DONE:
return

; Clear Display 0
; A = Pattern, 0x00 black, $FF white, $55/$AA dotted, etc.
CLS0:
        store      MMU_B1,         a             ; Value
        APOKE      MMU_W1,         $00           ; lo -- Target = $8000
        APOKE      MMU_W1+1,       $80           ; hi --
        APOKE      MMU_W2,         $00           ; lo -- Length = $1000
        APOKE      MMU_W2+1,       $10           ; hi ..
        int        INT_MMU_MEMSET

        set        a,              32
        call       DELAY
return

; Clear Display 1
; A = Pattern, 0x00 black, $FF white, $55/$AA dotted, etc.
CLS1:
        store      MMU_B1,         a             ; Value
        APOKE      MMU_W1,         $F4           ; lo -- Target = $81F4
        APOKE      MMU_W1+1,       $81           ; hi --
        APOKE      MMU_W2,         $00           ; lo -- Length = $1000
        APOKE      MMU_W2+1,       $10           ; hi ..
        int        INT_MMU_MEMSET
return

; Show Image
; x = IMG_ADDR_lo
; y = IMG_ADDR_hi
; z = IMG_SIZE_lo
; w = IMG_SIZE_hi
PASTE0:
        APOKE     MMU_W1,         $00           ; Plane 1
        APOKE     MMU_W1+1,       $80           ; ..
        store     MMU_W2,         x             ; Img addr lo
        store     MMU_W2+1,       y             ; Img addr hi
        store     MMU_W3,         z             ; Img size lo
        store     MMU_W3+1,       w             ; Img size hi
        int       INT_MMU_PRGCPY
return

PASTE1:
        APOKE     MMU_W1,         $F4           ; Plane 2
        APOKE     MMU_W1+1,       $81           ; ..
        store     MMU_W2,         x             ; Img addr lo
        store     MMU_W2+1,       y             ; Img addr hi
        store     MMU_W3,         z             ; Img size lo
        store     MMU_W3+1,       w             ; Img size hi
        int       INT_MMU_PRGCPY
return

MAIN:
        APOKE    GFX_MODE, 5

        ;set      x, IMG_LEFT_ADDR_LO
        ;set      y, IMG_LEFT_ADDR_HI
        ;set      z, IMG_LEFT_SIZE_LO
        ;set      w, IMG_LEFT_SIZE_HI
        ;call     PASTE0


        ;set      x, IMG_RIGHT_ADDR_LO
        ;set      y, IMG_RIGHT_ADDR_HI
        ;set      z, IMG_RIGHT_SIZE_LO
        ;set      w, IMG_RIGHT_SIZE_HI
        ;call     PASTE1

        set      x, $00
L1:
        inc      x
        COPY     a, x
        call     CLS0
        jmp L1




include "logo.png.s"
include "left.png.s"
include "right.png.s"
