; Exports. Copy these to rom.exports.inc
kRomSpace = $7800
;! Function: Copy up to 256 bytes to another part of memory
Import_Function Rom, MemCpySm, $0374
MemCpySm_Dst equ i
MemCpySm_Src equ j
MemCpySm_Len equ a
;! Function: Set range of memory to constant
Import_Function Rom, MemSet, $037F
MemSet_Dst equ i
MemSet_Len equ j
MemSet_Val equ a
;! Constant: Table of Keycodes to ASCII equilvents
Import_Const Rom, Keycode2Ascii, $7B06
