; 80x50  IMG_LOGO from C:/dev/dx8/ROMS/logo.png
; Size=$01F4 500
IMG_LOGO_DATA:
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $F1, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8F, $FD, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $BF, $FD, $FF
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $BF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $1F, $FF, $FF, $83, $FF, $FF, $FF
    db $FF, $FF, $FF, $1F, $FF, $FF, $00, $FE, $FF, $FF, $FF, $FF, $FF, $1F, $FF, $7F, $00, $FC, $FF, $FF, $FF, $FF, $FF, $1F, $FF, $7F, $38, $FC, $FF, $FF, $FF, $FF
    db $FF, $1F, $FF, $7F, $7C, $FC, $FF, $FF, $FF, $FF, $7F, $10, $C3, $47, $7C, $FC, $FF, $FF, $FF, $FF, $3F, $00, $C3, $43, $38, $FC, $FF, $FF, $FF, $FF, $1F, $00
    db $87, $E1, $00, $FE, $FF, $FF, $FF, $FF, $0F, $06, $0F, $E1, $00, $FE, $FF, $FF, $FF, $FF, $0F, $0F, $0F, $70, $00, $FC, $FF, $FF, $FF, $FF, $8F, $1F, $1F, $38
    db $3C, $F8, $FF, $FF, $FF, $FF, $8F, $1F, $3F, $3C, $7C, $F8, $FF, $FF, $FF, $FF, $8F, $1F, $3F, $3C, $FE, $F8, $FF, $FF, $FF, $FF, $8F, $1F, $1F, $38, $FE, $F8
    db $FF, $FF, $FF, $FF, $0F, $0F, $0F, $30, $FE, $F8, $FF, $FF, $FF, $FF, $1F, $06, $0F, $30, $78, $F8, $FF, $FF, $FF, $FF, $1F, $00, $87, $61, $00, $FC, $FF, $FF
    db $FF, $FF, $3F, $00, $C3, $C3, $00, $FE, $FF, $FF, $FF, $FF, $7F, $10, $C3, $C3, $01, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FD, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $BF, $FD, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $BF
    db $F1, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8F, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

IMG_LOGO_ADDR_LO = IMG_LOGO_DATA and $FF
IMG_LOGO_ADDR_HI = IMG_LOGO_DATA shr 8
IMG_LOGO_SIZE_LO = $F4
IMG_LOGO_SIZE_HI = $01
IMG_LOGO_SIZE = $01F4
