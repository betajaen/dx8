





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

BeginFunction PrintChar
        cmpi x, SCREEN_COLS
        jmp.gt .CantPrint
        cmpi y, SCREEN_ROWS
        jmp.gt .CantPrint
        cmpi a, CHAR_Space
        jmp.lt .CantPrint
        cmpi a, CHAR_Hat
        jmp.gt .CantPrint

        .Print:
                set j, $0000            ; j = $8000 + (y * 40) + x
                add j, y                ;
                mul j, SCREEN_COLS      ;
                add j, x                ;
                add j, MEM_GFX_PLANE0   ;
                store j, a
                set a, $01

                jmp .End

        .CantPrint:
                set a, $00

        .End:
EndFunction

Export_Function      Rom, PrintChar, 'Copy a char to the screen at x, y'
Export_Function_Arg  PrintChar, X, x
Export_Function_Arg  PrintChar, Y, y
Export_Function_Arg  PrintChar, Char, a






;! Print
;! Copy a zero-terminated string to the screen at x, y
Print_X   equ x
Print_Y   equ y
Print_Str equ j

BeginFunction Print
        .DoPrint:
                load a, j
                cmp a
                jmp.z .End
                push z
                push w
                _CallFunction PrintChar
                pop w
                pop z
                cmp a
                jmp.z .End
                inc j
                inc x
                jmp .DoPrint
        .End:
EndFunction

Export_Function      Rom, Print, 'Copy a zero-terminated string to the screen at x, y'
Export_Function_Arg  Print, X, x
Export_Function_Arg  Print, Y, y
Export_Function_Arg  Print, Str, j






;! Print Number
;!
PrintNum_X   equ x
PrintNum_Y   equ y
PrintNum_Num equ a

BeginFunction PrintNum
        .DoPrint:
                cmp a
                jmp.z .PrintZero

                cmpi a, 10
                jmp.lt .PrintChar

                cmpi a, 100
                jmp.lt .Two

                inc x
                inc x
                jmp .PrintChar

        .Two:
                inc x


        .PrintChar:
                cpy z, a

                mod a, 10
                add a, '0'

                push z
                _CallFunction PrintChar
                pop z

                dec x

                cpy a, z
                div a, 10

                cmp a
                jmp.z .End
                jmp .PrintChar

        .PrintZero:
                set a, '0'
                _CallFunction PrintChar
        .End:
EndFunction

Export_Function      Rom, PrintNum, 'Print a byte decimal number to the screen at x, y'
Export_Function_Arg  PrintNum, X, x
Export_Function_Arg  PrintNum, Y, y
Export_Function_Arg  PrintNum, Num, a



;! Clear Screen
BeginFunction Cls
  set i, MEM_GFX_PLANE0
  set j, MEM_GFX_PLANE_SIZE
  set a, ' '
  _CallFunction MemSet
EndFunction

Export_Function      Rom, Cls, 'Clears the screen'
