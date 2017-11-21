include '../dx8.inc'
include '../dx8_crt.inc'
include '../rom.exports.inc'

kProgramSpace = $800

jmp MAIN

; ===========================================================================
; Variables
; ===========================================================================

  Var_Word  Cursor, $8000 + 40

; ===========================================================================
; Main and Loop
; ===========================================================================


MAIN:
  set i, MEM_GFX_PLANE0
  set j, MEM_GFX_PLANE_SIZE
  set a, ' '
  _CallFunction MemSet

  _poke.w   INTVEC_ADDR_IO,         OnIvtIo

  _poke     REG_GFX_PLANES_COUNT, $01

  _poke.rgb REG_GFX_BACKGROUND_COLOUR, $00, $00, $FF
  _poke.rgb REG_GFX_PLANE0_COLOUR, $FF, $FF, $00

  _poke     $8000, 'K'
  _poke     $8001, 'e'
  _poke     $8002, 'y'
  _poke     $8003, ' '
  _poke     $8004, 'T'
  _poke     $8005, 'e'
  _poke     $8006, 's'
  _poke     $8007, 't'

INF:
  inc j
  jmp INF

; ===========================================================================
; Interrupts
; ===========================================================================

OnIvtIo:
      load  a, REG_IO_OP

      cmp a, $01
      jmp.nz .OnKeyChange
      jmp .End

      .OnKeyChange:
              dbn 'KB'

              ; Only on up events.
              load z, REG_IO_DATA_B
              jmp.nz .End

              ; Get scancode
              load  z, REG_IO_DATA_A
              dbr 'z'

              ; character = kKeyboardFont[z]
              set i, kKeycode2Ascii
              dbr 'i'

              add i, z
              dbr 'i'

              load z, i

              ; display[cursor] = character
              ; cursor++
              load i, sCursor
              store i, z
              inc i
              store sCursor, i

              jmp .End

      .End:
resume
