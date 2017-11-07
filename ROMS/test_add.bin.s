0000: jmp $0008           ; DF 08 00
0003: set x, $AA          ; 17 AA
0005: add x, x            ; 1C
0006: xor x, y            ; B3
0007: return              ; 16
0008: nop                 ; 00
0009: call $0003          ; 15 03 00
