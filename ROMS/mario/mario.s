include '../dx8.inc'
include '../dx8_crt.inc'
include '../rom.exports.inc'

kProgramSpace = $1400

org $1400

jmp MAIN



; ===========================================================================
; Music
; ===========================================================================

;MARIO_IMAGE:
;  include 'mario.png.s'

MAIN_THEME:
  db  SND_NOTE_E7, SND_NOTE_E7, 0, SND_NOTE_E7
  db  0, SND_NOTE_C7, SND_NOTE_E7, 0
  db  SND_NOTE_G7, 0, 0,  0
  db  SND_NOTE_G6, 0, 0, 0
  db  SND_NOTE_C7, 0, 0, SND_NOTE_G6
  db  0, 0, SND_NOTE_E6, 0
  db  0, SND_NOTE_A6, 0, SND_NOTE_B6
  db  0, SND_NOTE_AS6, SND_NOTE_A6, 0
  db  SND_NOTE_G6, SND_NOTE_E7, SND_NOTE_G7
  db  SND_NOTE_A7, 0, SND_NOTE_F7, SND_NOTE_G7
  db  0, SND_NOTE_E7, 0, SND_NOTE_C7
  db  SND_NOTE_D7, SND_NOTE_B6, 0, 0
  db  SND_NOTE_C7, 0, 0, SND_NOTE_G6
  db  0, 0, SND_NOTE_E6, 0
  db  0, SND_NOTE_A6, 0, SND_NOTE_B6
  db  0, SND_NOTE_AS6, SND_NOTE_A6, 0
  db  SND_NOTE_G6, SND_NOTE_E7, SND_NOTE_G7
  db  SND_NOTE_A7, 0, SND_NOTE_F7, SND_NOTE_G7
  db  0, SND_NOTE_E7, 0, SND_NOTE_C7
  db  SND_NOTE_D7, SND_NOTE_B6, 0, 0
MAIN_THEME_LENGTH = $ - MAIN_THEME

MAIN_TEMPO:
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   7, 7, 7
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   7, 7, 7
  db   5, 5, 5, 5
  db   5, 5, 5, 5
  db   5, 5, 5, 5

UNDERGROUND_THEME:
  db SND_NOTE_C4, SND_NOTE_C5, SND_NOTE_A3, SND_NOTE_A4
  db SND_NOTE_AS3, SND_NOTE_AS4, 0
  db 0
  db SND_NOTE_C4, SND_NOTE_C5, SND_NOTE_A3, SND_NOTE_A4
  db SND_NOTE_AS3, SND_NOTE_AS4, 0
  db 0
  db SND_NOTE_F3, SND_NOTE_F4, SND_NOTE_D3, SND_NOTE_D4
  db SND_NOTE_DS3, SND_NOTE_DS4, 0
  db 0
  db SND_NOTE_F3, SND_NOTE_F4, SND_NOTE_D3, SND_NOTE_D4
  db SND_NOTE_DS3, SND_NOTE_DS4, 0
  db 0, SND_NOTE_DS4, SND_NOTE_CS4, SND_NOTE_D4
  db SND_NOTE_CS4, SND_NOTE_DS4
  db SND_NOTE_DS4, SND_NOTE_GS3
  db SND_NOTE_G3, SND_NOTE_CS4
  db SND_NOTE_C4, SND_NOTE_FS4, SND_NOTE_F4, SND_NOTE_E3, SND_NOTE_AS4, SND_NOTE_A4
  db SND_NOTE_GS4, SND_NOTE_DS4, SND_NOTE_B3
  db SND_NOTE_AS3, SND_NOTE_A3, SND_NOTE_GS3
  db 0, 0, 0
UNDERGROUND_LENGTH = $ - UNDERGROUND_THEME

UNDERGROUND_TEMPO:
  db 5,5,5,5
  db 5,5,11
  db 22
  db 5,5,5,5
  db 5,5,11
  db 22
  db 5,5,5,5
  db 5,5,11
  db 22
  db 5,5,5,5
  db 5,5,11
  db 11,3,3,3
  db 11,11
  db 11,11

OnIvtVertBlank:
  load a, sFrameCounter
  dec a
  store sFrameCounter, a
resume

; ===========================================================================
; Variables
; ===========================================================================

  Var_Byte Counter, UNDERGROUND_LENGTH
  Var_Byte FrameCounter, 0

; ===========================================================================
; Main and Loop
; ===========================================================================

; Note id is A
BeginFunction PlayNote
  load a, sCounter

  ; Copy note into x
  set j, kProgramSpace + UNDERGROUND_THEME
  add j, a
  load x, j

  ; Copy note tempo into y
  set j, kProgramSpace + UNDERGROUND_TEMPO
  add j, a
  load a, j
  mul a, 2
  cpy y, a

  cmp x
  jmp.z .SetFrameCounter

  dbr 'x'
  dbr 'y'

  store REG_SND_PARM_0, x
  store REG_SND_MODE_0, y

.SetFrameCounter:
  store sFrameCounter, y

EndFunction

MAIN:
  ;_poke.w         INTVEC_ADDR_VBLANK,     OnIvtVertBlank

 ;count = 0
 ;repeat (IMG_MARIO_SIZE / 0xFF)
 ;         set MemCpySm_Len, 0xFF
 ;         set MemCpySm_Dst, $8000 + count
 ;         set MemCpySm_Src, kProgramSpace + MARIO_IMAGE + count
 ;         _CallFunction MemCpySm;
;
 ;         count = count + 0xFF
 ; end repeat

  _poke.rgb REG_GFX_BACKGROUND_COLOUR, $00, $00, $00
  _poke.rgb REG_GFX_PLANE0_COLOUR,     $FF, $FF, $FF
  _poke     REG_GFX_PLANES_COUNT,      $01
  _poke     REG_GFX_PLANE0_TYPE,       $FF

  set a, $00
  store sCounter, a
  _CallFunction PlayNote

INF:

 ; cpy  x, a
 ; add  x, '0'
 ; store $8000, x

  load a, sFrameCounter
  cmp a
  jmp.nz INF

  load a, sCounter
  inc a
  store sCounter, a

  cmp a, UNDERGROUND_LENGTH
  jmp.neq .PlayNote

  set a, $00
  store sCounter, a

.PlayNote:
  _CallFunction PlayNote
  jmp INF
