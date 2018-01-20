up:
S_0000000B:
    adq x, 1
    bra S_0000000B
    ret

down:
S_00000010:
    sbq y, 2
    bra S_00000010
    ret

