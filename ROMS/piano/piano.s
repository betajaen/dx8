include '../dx8.inc'
include '../dx8_crt.inc'
include '../rom.exports.inc'

kProgramSpace = $800

jmp INIT

INIT:

_poke.w   INTVEC_ADDR_IO,        OnIvtIo

jmp START_GAME

macro PlayNote NOTE {
      load x, REG_SND_PARM_0
      cmpi x, NOTE
      jmp.eq .ContinuePlaying

      load  z, sKeyCode
      store sKey, z

      set  x, NOTE
      store REG_SND_PARM_0, x

      jmp .ContinuePlaying
}

macro CheckNote KEY, NOTE_LABEL {
      cmpi z, KEY
      jmp.eq NOTE_LABEL
}


OnIvtIo:
    load  a, REG_IO_OP
    cmpi a, $01
    jmp.eq .OnKeyChange
    jmp .End

        .OnKeyChange:
          load z, REG_IO_DATA_B
          store sTheKeyState, z

          load z, REG_IO_DATA_A
          store sTheKeyCode, z

          set  z, $01
          store sKeyEvent, z
    .End:
resume


; ===========================================================================
; Variables
; ===========================================================================

  Var_Byte  Key,    0
  Var_Byte  Note,   0
  Var_Byte  IsDown, 0
  Var_Byte  TheKeyState,  0
  Var_Byte  TheKeyCode,   0
  Var_Byte  KeyState,     0
  Var_Byte  KeyCode,      0
  Var_Byte  KeyEvent,     0

; ===========================================================================
; Constants
; ===========================================================================

BeginFunction ClearScreen
  set i, MEM_GFX_PLANE0
  set j, MEM_GFX_PLANE_SIZE
  set a, ' '
  _CallFunction MemSet
EndFunction

BeginFunction CheckKey
    sti

    load z, sKeyEvent
    cmp z
    jmp.z .NoEvent
    jmp .IsEvent

.NoEvent:
    rti
    jmp .End

.IsEvent:
    set z, 0
    store sKeyEvent, z

    load z, sTheKeyState
    store sKeyState, z

    load z, sTheKeyCode
    store sKeyCode, z
    rti

              ; Only on up events.
              load z, sKeyState
              cmp z
              jmp.z .KeyUp

              .KeyDown:
                      load  z, sKeyCode

                      CheckNote KEY_LowercaseA, .PlayC
                      CheckNote KEY_LowercaseS, .PlayD
                      CheckNote KEY_LowercaseD, .PlayE
                      CheckNote KEY_LowercaseF, .PlayF
                      CheckNote KEY_LowercaseG, .PlayG
                      CheckNote KEY_LowercaseH, .PlayA
                      CheckNote KEY_LowercaseJ, .PlayB

              jmp .End

              .KeyUp:
                      load a, sKey
                      cmp a, z
                      jmp.neq .End


                      set a, $00
                      store sKey, a
                      store REG_SND_PARM_0, a
                      store REG_SND_MODE_0, a
              jmp .End

              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

              .PlayC:
                  PlayNote(SND_NOTE_C5)
              .PlayD:
                  PlayNote(SND_NOTE_D5)
              .PlayE:
                  PlayNote(SND_NOTE_E5)
              .PlayF:
                  PlayNote(SND_NOTE_F5)
              .PlayG:
                  PlayNote(SND_NOTE_G5)
              .PlayA:
                  PlayNote(SND_NOTE_A5)
              .PlayB:
                  PlayNote(SND_NOTE_B5)

                .ContinuePlaying:
                    set  y, 10
                    store REG_SND_MODE_0, y
                jmp .End
              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  .End:
EndFunction

START_GAME:

  _poke     REG_GFX_PLANES_COUNT,      $01
  _poke.rgb REG_GFX_BACKGROUND_COLOUR, $33, $33, $33
  _poke.rgb REG_GFX_PLANE0_COLOUR,     $FF, $FF, $FF

GAME_LOOP:
  _CallFunction CheckKey

  load y, sKey
  cmp y

  jmp.z GAME_LOOP

  set  a, 10
  store REG_SND_MODE_0, a

jmp GAME_LOOP
