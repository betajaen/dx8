include "../dx8.inc"
include "../dx8_crt.inc"

org 0

; This acts as the initialiser. The CPU
; starts up with a RESET vector hardcoded
; to $FFFE which contains our jump command
; Init. Which then copies the ROM from
; ROM memory into RAM memory at $400.
;
; It then jumps $400 to continue initialising
; in virtual memory mode.
;
; Everything here uses relative addressing because
; the ROM repeats itself in the $8000-$FFFF space
; and we have no exact way knowing where we are.
;
Init:
        ;
        ; 'a' represented the number of pages
        ; of the main ROM file. There is no way
        ; to know of this at this time.
        ;
        ; So 'set a, NB_PAGES' is inserted here
        ; when he rom.s is compiled.
        ;
        set i, 1024             ; Dst
        set j, $8000            ; Src

        outerCopy:
                dec a
                push a
                set a, $FF
                innerCopy:
                        dec a
                        push a
                        load a, j
                        store i, a
                        pop a
                        inc i
                        inc j
                        cmp a
                _rjmp.nz innerCopy
                pop a
                cmp a
                _rjmp.nz outerCopy

        ; 'a' should be zero here, so we can abuse that
        ; and call 'EntryPoint' in the Exports table
        ; of the ROM via the Branch Jump command
        jmpt    1024, a
        nop

FFFE:
        _rjmp   Init
