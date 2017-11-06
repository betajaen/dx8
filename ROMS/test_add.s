include "dx8.inc"

jmp start

func:
        set x, $AA
        add x, x
        xor x, y
return

start:
        nop
        call func
