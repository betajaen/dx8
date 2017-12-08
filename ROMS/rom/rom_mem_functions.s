;! MemCpySm
;! Copy upto 256 bytes from a src address to a dst address
MemCpySm_Dst equ i
MemCpySm_Src equ j
MemCpySm_Len equ a

Entry_MemCpySm:
EndFunction

BeginFunction MemCpySm
        .loop:
                ;dbr 'i'
                ;dbr 'j'
                ;dbr 'a'

                dec a
                push a
                load a, j
                store i, a
                pop a
                inc i
                inc j
                cmp a
                _rjmp.nz .loop
EndFunction

;Export_Function      Rom, MemCpySm, 'Copy up to 256 bytes to another part of memory'
;Export_Function_Arg  MemCpySm, Dst, i
;Export_Function_Arg  MemCpySm, Src, j
;Export_Function_Arg  MemCpySm, Len, a





;! MemSet
;! Copy a constant to dst, len times
MemSet_Dst equ i
MemSet_Len equ j
MemSet_Val equ a

; dst, val, len
Entry_MemSet:
        dbb
        pop MemSet_Dst
        pop MemSet_Val
        pop MemSet_Len
        dbb
Fn_MemSet:
        .loop:  store MemSet_Dst, MemSet_Val
                inc MemSet_Dst
                dec MemSet_Len
                _rjmp.nz .loop
return
