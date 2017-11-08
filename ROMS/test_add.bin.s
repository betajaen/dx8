0000: jmp $001D           ; DF 1D 00
0003: store a, $4010      ; 14 10 40
0006: set a, $00          ; 1B 00
0008: store a, $4012      ; 14 12 40
000B: set a, $80          ; 1B 80
000D: store a, $4013      ; 14 13 40
0010: set a, $00          ; 1B 00
0012: store a, $4014      ; 14 14 40
0015: set a, $10          ; 1B 10
0017: store a, $4015      ; 14 15 40
001A: int                 ; EB 01
001C: return              ; 16
001D: set a, $FF          ; 1B FF
001F: call $0003          ; 15 03 00
0022: set x, $01          ; 17 01
0024: add a, x            ; 30
0025: xor y, y            ; B8
0026: add y, a            ; 25
0027: jmp $001F           ; DF 1F 00
