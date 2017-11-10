include "dx8.inc"
include "macros.inc"

INTERRUPTS:
        ; Is H-Blank?
        set x, CPU_HBLANK
        cmp a, x
        jmp.eq HBLANK

        ; Else If V-Blank?
        set x, CPU_VBLANK
        cmp a, x
        jmp.eq VBLANK

        ; Else
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
        APOKE    GFX_MODE, 11

        APOKE    GFX_SCNW0R, 0
        APOKE    GFX_SCNW0G, 255
        APOKE    GFX_SCNW0B, 255

        set      x, IMG_L1_ADDR_LO
        set      y, IMG_L1_ADDR_HI
        set      z, IMG_L1_SIZE_LO
        set      w, IMG_L1_SIZE_HI
        call     PASTE0
        ; call     PASTE1

        set      x, $00
        set      y, $00
        set      z, $00
        set      w, $00
L1:
        jmp L1

MAIN1:
        APOKE    GFX_MODE, 11
        set     x, $00
        set     y, $22
        set     z, $55

L2:
        store   GFX_BGCOLR, x
        store   GFX_BGCOLG, y
        store   GFX_BGCOLB, z

        inc      x
        dec      y
        inc      z

        jmp L2

HBLANK:
        load  z, RAND
        store GFX_SCNW0R, z
        load  z, RAND
        store GFX_SCNW0G, z
        load  z, RAND
        store GFX_SCNW0B, z
        inc z
resume

VBLANK:
        inc w
resume

include "l1.png.s"
