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

Entry_MemSet:
        push x
        push y
        push z
        push w
        push a

        load a, kArguments + 0
        load i, kArguments + 1
        load j, kArguments + 3

        call Fn_MemSet

        pop a
        pop w
        pop z
        pop y
        pop x
EndFunction

BeginFunction MemSet
        .loop:  store i, a
                inc i
                dec j
                _rjmp.nz .loop
EndFunction

;Export_Function      Rom, MemSet, 'Set range of memory to constant'
;Export_Function_Arg  MemSet, Dst, i
;Export_Function_Arg  MemSet, Len, j
;Export_Function_Arg  MemSet, Val, a
