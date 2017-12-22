;! MemCpySm
;! Copy upto 256 bytes from a src address to a dst address
MemCpySm_Dst equ i
MemCpySm_Src equ j
MemCpySm_Len equ a

; dst, src, length
ltr_MemCpySm:
        pop MemCpySm_Len
        pop MemCpySm_Src
        pop MemCpySm_Dst
Fn_MemCpySm:
        .loop:
                dec MemCpySm_Len
                push a
                load a, j
                store i, a
                pop a
                inc MemCpySm_Dst
                inc MemCpySm_Src
                cmp MemCpySm_Len
                _rjmp.nz .loop
return

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
ltr_MemSet:
        pop MemSet_Len
        pop MemSet_Val
        pop MemSet_Dst
Fn_MemSet:
        .loop:  store MemSet_Dst, MemSet_Val
                inc MemSet_Dst
                dec MemSet_Len
                _rjmp.nz .loop
return


;! MemMap
;! Map virtual memory address to virtual address.
;! Addresses must be divisible by 1024!!
MemMap_Virtual equ i
MemMap_Real    equ j

; real, virtual
ltr_MemMap:
        pop MemMap_Virtual
        pop MemMap_Real
Fn_MemMap:
        div MemMap_Virtual, 1024
        div MemMap_Real, 1024
        add MemMap_Virtual, REG_MMU_PAGE
        store MemMap_Virtual, z
return
