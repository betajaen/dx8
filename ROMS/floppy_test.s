include "dx8.inc"
include "macros.inc"

kProgramSpace   = $0800
kRomSpace       = $7800

Fn_MemSet       = kRomSpace + $0311 - kProgramSpace
MemSet_Dst equ i
MemSet_Len equ j
MemSet_Val equ a

MAIN:
        _poke.w         INTVEC_ADDR_HBLANK,     OnIvtHorzBlank

        dbo 'L'

        set MemSet_Dst, MEM_GFX_PLANE0
        set MemSet_Len, MEM_GFX_PLANE_SIZE * 1
        set MemSet_Val, ' '
        call Fn_MemSet

        dbo 'l'

IDLE:
        inc i
        jmp IDLE


OnIvtHorzBlank:
        load x, REG_GFX_SCANLINE_NUM
        set a, 0x00
        add a,x
        store REG_GFX_BACKGROUND_COLOUR + 0, a
        set a, 0
        store REG_GFX_BACKGROUND_COLOUR + 1, a
        store REG_GFX_BACKGROUND_COLOUR + 2, a
resume
