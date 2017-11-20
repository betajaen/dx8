; 320x256  RLE_FULL from C:/dev/dx8/ROMS/full.png
; Size=$2800 10240
RLE_FULL_DATA:
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

RLE_FULL_ADDR_LO = RLE_FULL_DATA and $FF
RLE_FULL_ADDR_HI = RLE_FULL_DATA shr 8
RLE_FULL_SIZE_LO = $00
RLE_FULL_SIZE_HI = $28
RLE_FULL_SIZE = $2800
