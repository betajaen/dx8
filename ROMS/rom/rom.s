include "../dx8.inc"
include "../dx8_crt.inc"

; Include the Rom file
file "rom_main.bin"

; Work how big it is, and how many pages it is, for copying.
FileSize = $
Pages = (FileSize + $FF - 1) / $FF  ; Ceiling division to get number of pages

; Pad up to 4096 bytes - 32 bytes which contains the Initialise code.
RomInitSize = 32

repeat (4096 - RomInitSize - $)
  db $00
end repeat

; We can't know the rom size in the initialise code, so it's hardcoded
; here as a 'set a, Pages' instruction, which bumps up the initialise
; code to a neat 32 bytes.
db OP_SET_aB
db Pages
file "rom_init.bin"
