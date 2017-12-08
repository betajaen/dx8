include '../dx8.inc'            ; Required Opcodes and constants
include '../dx8_crt.inc'        ; Helper functions and mark up
include '../rom.exports.inc'    ; Some ROM exposed functions

kProgramSpace = $800            ; Where the program is in memory (usually $800)

db $FE    ; Opcode it doesn't understand
