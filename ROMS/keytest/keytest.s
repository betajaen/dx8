include '../dx8.inc'
include '../dx8_crt.inc'
include '../rom.exports.inc'

kProgramSpace = $800

jmp MAIN

; ===========================================================================
; Variables
; ===========================================================================

  Var_Word  Cursor, $8000 + 40
  Var_Byte  CursorX, 0
  Var_Byte  CursorY, 0

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

  _poke     $8000, 'T'
  _poke     $8001, 'e'
  _poke     $8002, 'x'
  _poke     $8003, 't'
  _poke     $8004, ' '
  _poke     $8005, 'E'
  _poke     $8006, 'd'

INF:
  inc j
  jmp INF

; ===========================================================================
; Interrupts
; ===========================================================================


OnIvtIo:
      load  a, REG_IO_OP

      cmpi a, $01
      jmp.eq .OnKeyChange

      .OnKeyChange:
              dbn 'KB'

              ; Only on up events.
              load z, REG_IO_DATA_B
              cmpi z, $01
              jmp.neq .End

              ; Get Scan code
              load  z, REG_IO_DATA_A

              ; Check is delete
              cmpi z, KEY_Delete
              jmp.eq .IsDelete

              ; Otherwise it's probably a letter
              jmp .IsLetter

              jmp .End

              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              .IsLetter:

                        set i, kKeycode2Ascii
                        add i, z
                        load z, i

                        ; display[cursor] = character
                        ; cursor++
                        load i, sCursor
                        store i, z
                        inc i
                        store sCursor, i

              jmp .End
              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              .IsDelete:

                        set  z, ' '

                        load i, sCursor
                        dec i
                        store i, z
                        store sCursor, i

              jmp .End
              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  .End:
resume
