; Exports. Copy these to rom.exports.inc
kRomSpace = $7800
Import_Function Rom, MemCpySm, $0374
Import_Function Rom, MemSet, $037F
Import_Const Rom, Keycode2Ascii, $7B06
; End
