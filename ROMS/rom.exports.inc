; Exports. Copy these to rom.exports.inc
kRomSpace = $7000
;! Function: Copy up to 256 bytes to another part of memory
Import_Function Rom, MemCpySm, $036E
MemCpySm_Dst equ i
MemCpySm_Src equ j
MemCpySm_Len equ a
;! Function: Set range of memory to constant
Import_Function Rom, MemSet, $0379
MemSet_Dst equ i
MemSet_Len equ j
MemSet_Val equ a
;! Function: Copy a char to the screen at x, y
Import_Function Rom, Print, $03A7
PrintChar_X equ x
PrintChar_Y equ y
PrintChar_Char equ a
;! Function: Copy a zero-terminated string to the screen at x, y
Import_Function Rom, Print, $03A7
Print_X equ x
Print_Y equ y
Print_Str equ j
;! Function: Print a byte decimal number to the screen at x, y
Import_Function Rom, PrintNum, $03BD
PrintNum_X equ x
PrintNum_Y equ y
PrintNum_Num equ a
;! Constant: Table of Keycodes to ASCII equilvents
Import_Const Rom, Keycode2Ascii, $7300
