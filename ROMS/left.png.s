; 80x50  IMG_LEFT from C:/dev/dx8/ROMS/left.png
; Size=$01F4 500
IMG_LEFT_DATA:
    db $00, $E0, $FF, $FF, $FF, $00, $00, $00, $00, $00, $00, $F8, $FF, $FF, $FF, $00, $00, $00, $00, $00, $00, $FD, $FF, $FF, $FF, $00, $00, $00, $00, $00, $40, $FE
    db $FF, $FF, $FF, $00, $00, $00, $00, $00, $A0, $FF, $FF, $FF, $FF, $00, $00, $00, $00, $00, $90, $FF, $FF, $FF, $FF, $00, $C0, $00, $01, $00, $CA, $FF, $FF, $FF
    db $FF, $00, $30, $00, $01, $00, $F1, $FF, $FF, $FF, $FF, $00, $0C, $00, $01, $00, $F8, $FF, $FF, $FF, $FF, $00, $03, $00, $01, $00, $FC, $FF, $FF, $FF, $FF, $E0
    db $00, $01, $01, $00, $FE, $FF, $FF, $FF, $FF, $18, $C0, $00, $11, $00, $FF, $FF, $FF, $FF, $FF, $66, $20, $00, $11, $00, $FF, $FF, $FF, $FF, $FF, $81, $11, $00
    db $21, $00, $FF, $FF, $FF, $FF, $FF, $00, $0E, $00, $21, $00, $FF, $FF, $FF, $FF, $FF, $00, $1A, $00, $41, $00, $FF, $FF, $FF, $FF, $FF, $80, $61, $00, $41, $00
    db $FF, $FF, $FF, $FF, $FF, $40, $80, $01, $81, $00, $FF, $FF, $FF, $FF, $FF, $30, $00, $06, $81, $00, $FF, $FF, $FF, $FF, $FF, $08, $00, $18, $01, $01, $FF, $FF
    db $FF, $FF, $FF, $04, $00, $66, $01, $01, $FF, $FF, $FF, $FF, $FF, $03, $80, $81, $01, $01, $FF, $FF, $FF, $FF, $FF, $00, $40, $00, $07, $0E, $FF, $FF, $FF, $FF
    db $FF, $00, $30, $00, $19, $03, $FF, $FF, $FF, $FF, $FF, $00, $08, $00, $E1, $04, $FF, $FF, $FF, $FF, $FF, $00, $06, $00, $B1, $05, $FF, $FF, $FF, $FF, $FF, $80
    db $01, $00, $0D, $08, $FF, $FF, $FF, $FF, $FF, $40, $00, $00, $03, $08, $FF, $FF, $FF, $FF, $FF, $30, $00, $C0, $01, $00, $FF, $FF, $FF, $FF, $FF, $08, $00, $38
    db $01, $00, $FF, $FF, $FF, $FF, $FF, $06, $00, $06, $01, $00, $FF, $FF, $FF, $FF, $FF, $01, $80, $01, $01, $00, $FF, $FF, $FF, $FF, $FF, $00, $60, $00, $01, $00
    db $FF, $FF, $FF, $FF, $FF, $00, $18, $00, $01, $00, $FF, $FF, $FF, $FF, $FF, $00, $06, $00, $01, $00, $FF, $FF, $FF, $FF, $FF, $80, $01, $00, $01, $00, $FF, $FF
    db $FF, $FF, $FF, $60, $00, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $18, $00, $C0, $00, $00, $FF, $FF, $FF, $FF, $FF, $00, $00, $38, $00, $00, $FF, $FF, $FF, $FF
    db $FF, $00, $00, $06, $00, $00, $FF, $FF, $FF, $FF, $FF, $00, $C0, $01, $00, $00, $FF, $FF, $FF, $FF, $FF, $00, $38, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $00
    db $06, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $C0, $01, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $38, $00, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $06, $00, $00
    db $00, $00, $FF, $FF, $FF, $FF, $FF, $01, $00, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $00, $00
    db $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $00, $00, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $00, $00

IMG_LEFT_ADDR_LO = IMG_LEFT_DATA and $FF
IMG_LEFT_ADDR_HI = IMG_LEFT_DATA shr 8
IMG_LEFT_SIZE_LO = $F4
IMG_LEFT_SIZE_HI = $01
IMG_LEFT_SIZE = $01F4
