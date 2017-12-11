;! PrintChar
;! Copy a character to the screen at x, y
;! Note:
;!      1. If X > Screen Width, it will not print
;!      2. If Y > Screen Height, it will not print
;!      3. If Char < 32 || Char > 127 it will not print
;!      4. A is set to 1 or 0 if it could print or not.
PrintChar_X equ x
PrintChar_Y equ y
PrintChar_Char equ a

; x, y, character
ltr_PrintChar:
        pop PrintChar_Char
        pop PrintChar_Y
        pop PrintChar_X
Fn_PrintChar:
        cmp x, SCREEN_COLS
        _rjmp.gt .CantPrint
        cmp y, SCREEN_ROWS
        _rjmp.gt .CantPrint
        cmp a, CHAR_Space
        _rjmp.lt .CantPrint
        cmp a, CHAR_Hat
        _rjmp.gt .CantPrint

        .Print:
                set j, $0000            ; j = $8000 + (y * 40) + x
                add j, y                ;
                mul j, SCREEN_COLS      ;
                add j, x                ;
                add j, MEM_GFX_PLANE0   ;
                store j, a
                set a, $01

                _rjmp .End

        .CantPrint:
                set a, $00

        .End:
return

;Export_Function      Rom, PrintChar, 'Copy a char to the screen at x, y'
;Export_Function_Arg  PrintChar, X, x
;Export_Function_Arg  PrintChar, Y, y
;Export_Function_Arg  PrintChar, Char, a






;! Print
;! Copy a zero-terminated string (j) to the screen at x, y
Print_X   equ x
Print_Y   equ y
Print_Str equ j

; x, y, string
ltr_Print:
        pop Print_Str
        pop Print_Y
        pop Print_X
Fn_Print:
        .DoPrint:
                load a, j
                cmp a
                _rjmp.z .End
                push z
                push w

                ; _CallFunction PrintChar
                        cmp x, SCREEN_COLS
                        _rjmp.gt .CantPrint
                        cmp y, SCREEN_ROWS
                        _rjmp.gt .CantPrint
                        cmp a, CHAR_Space
                        _rjmp.lt .CantPrint
                        cmp a, CHAR_Hat
                        _rjmp.gt .CantPrint

                        .Print:
                                set j, $0000            ; j = $8000 + (y * 40) + x
                                add j, y                ;
                                mul j, SCREEN_COLS      ;
                                add j, x                ;
                                add j, MEM_GFX_PLANE0   ;
                                store j, a
                                set a, $01

                                _rjmp .End1

                        .CantPrint:
                                set a, $00

                        .End1:

                pop w
                pop z
                cmp a
                _rjmp.z .End
                inc j
                inc x
                _rjmp .DoPrint
        .End:
return

;Export_Function      Rom, Print, 'Copy a zero-terminated string to the screen at x, y'
;Export_Function_Arg  Print, X, x
;Export_Function_Arg  Print, Y, y
;Export_Function_Arg  Print, Str, j






;! Print Number
;!
PrintNum_X   equ x
PrintNum_Y   equ y
PrintNum_Num equ a

; void PrintNum(Byte x, Byte y, Byte num)
ltr_PrintNum:
        pop PrintNum_Num
        pop PrintNum_Y
        pop PrintNum_X
Fn_PrintNum:
        .DoPrint:
                ;cmp a
                ;_rjmp.z .PrintZero

                cmp a, 10
                _rjmp.lt .PrintChar

                cmp a, 100
                _rjmp.lt .Two

                inc x
                inc x
                _rjmp .PrintChar

        .Two:
                inc x


        .PrintChar:
                cpy z, a

                mod a, 10
                add a, '0'

                push z

                        cmp x, SCREEN_COLS
                        _rjmp.gt .CantPrint
                        cmp y, SCREEN_ROWS
                        _rjmp.gt .CantPrint
                        cmp a, CHAR_Space
                        _rjmp.lt .CantPrint
                        cmp a, CHAR_Hat
                        _rjmp.gt .CantPrint

                        .Print:
                                set j, $0000            ; j = $8000 + (y * 40) + x
                                add j, y                ;
                                mul j, SCREEN_COLS      ;
                                add j, x                ;
                                add j, MEM_GFX_PLANE0   ;
                                store j, a
                                set a, $01

                                _rjmp .End1

                        .CantPrint:
                                set a, $00

                        .End1:

                pop z

                dec x

                cpy a, z
                div a, 10

                cmp a
                _rjmp.z .End
                _rjmp .PrintChar

        ;.PrintZero:
                ;set a, '0'
                ;_CallFunction PrintChar
        .End:
return

;Export_Function      Rom, PrintNum, 'Print a byte decimal number to the screen at x, y'
;Export_Function_Arg  PrintNum, X, x
;Export_Function_Arg  PrintNum, Y, y
;Export_Function_Arg  PrintNum, Num, a



;! Clear Screen
Cls_Character equ a

; void Cls(Byte character)
ltr_Cls:
  pop Cls_Character
Fn_Cls:
  set i, MEM_GFX_PLANE0
  set j, MEM_GFX_PLANE_SIZE
  call Fn_MemSet
return

;Export_Function      Rom, Cls, 'Clears the screen'
