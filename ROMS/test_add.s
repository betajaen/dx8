include "dx8.inc"
include "macros.inc"

jmp MAIN

; Clear Display
; A = Pattern, 0x00 black, $AA white, $55/$AA dotted, etc.
CLS:
        store      a,              MMU_B1        ; Value
        APOKE      MMU_W1,         $00           ; lo -- Target = $8000
        APOKE      MMU_W1+1,       $80           ; hi --
        APOKE      MMU_W2,         $00           ; lo -- Length = $1000
        APOKE      MMU_W2+1,       $10           ; hi ..
        interrupt  INT_MMU_MEMSET
return

MAIN:
        set        x, $00       ; Start
        set        y, $01       ; Rate
L:
        COPY       a, x
        call CLS
        add        x, y
        jmp L
