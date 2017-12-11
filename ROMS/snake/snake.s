include '../dx8.inc'
include '../dx8_crt.inc'
include '../rom.exports.inc'

kProgramSpace = $1400

org $1400

jmp INIT
jmp INIT

Const_Include   FontData, "font.png.s"

INIT:
rti

_poke.w   INTVEC_ADDR_IO,        OnIvtIo
_poke.w   INTVEC_ADDR_HBLANK,    OnIvtHBlank
_poke.w   REG_GFX_TILES_ADDR,    kFontData

jmp START_GAME

OnIvtIo:
      load  a, REG_IO_OP

      cmp a, $01
      jmp.eq .OnKeyChange

      .OnKeyChange:

              ; Only on up events.
              load z, REG_IO_DATA_B
              cmp z, $01
              jmp.neq .End

              ; Get Scan code
              load  z, REG_IO_DATA_A

              ; Check is up
              cmp z, KEY_LowercaseK
              jmp.eq .IsUp
              cmp z, KEY_UppercaseK
              jmp.eq .IsUp

              ; Check is down
              cmp z, KEY_LowercaseM
              jmp.eq .IsDown
              cmp z, KEY_UppercaseM
              jmp.eq .IsDown

              ; Check is left
              cmp z, KEY_LowercaseZ
              jmp.eq .IsLeft
              cmp z, KEY_UppercaseZ
              jmp.eq .IsLeft

              ; Check is right
              cmp z, KEY_LowercaseX
              jmp.eq .IsRight
              cmp z, KEY_UppercaseX
              jmp.eq .IsRight

              ; Cheat key
              cmp z, KEY_LowercaseC
              jmp.eq .IsCheat
              cmp z, KEY_UppercaseC
              jmp.eq .IsCheat

              jmp .End

              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              .IsUp:
                        set a, DIR_UP
                        store sDirection, a
              jmp .End
              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              .IsDown:
                        set a, DIR_DOWN
                        store sDirection, a
              jmp .End
              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              .IsLeft:
                        set a, DIR_LEFT
                        store sDirection, a
              jmp .End
              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              .IsRight:
                        set a, DIR_RIGHT
                        store sDirection, a
              jmp .End
              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
              .IsCheat:
                        set   a, 1
                        store sCheat, a
              jmp .End
              ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  .End:
resume


; ===========================================================================
; Variables
; ===========================================================================

  Var_Byte  Count,  0
  Var_Byte  Direction, 8
  Var_Byte  Dead,  1
  Var_Byte  Cheat, 1
  Var_Byte  HeadX, 0
  Var_Bytes SnakeX, 64
  Var_Byte  SnakeX_Pad, 1
  Var_Byte  HeadY, 0
  Var_Bytes SnakeY, 64
  Var_Byte  SnakeY_Pad, 1
  Var_Bytes CopyBuffer, 65
  Var_Byte  FruitX, 0
  Var_Byte  FruitY, 0
  Var_Bytes Background, 3
  Var_Byte  NextItemTimer, 10
  Var_Word  SoundTimer, $0000

; ===========================================================================
; Constants
; ===========================================================================

  START_X   = 15
  START_Y   = 15
  NUM_COLS  = 320 / 8
  NUM_ROWS  = 256 / 8
  DIR_UP    = 0
  DIR_DOWN  = 1
  DIR_LEFT  = 2
  DIR_RIGHT = 3

; ===========================================================================
; Functions
; ===========================================================================

OnIvtHBlank:
        ;rept 3 C
        ;{
        ;        load a, sBackground + C
        ;        add a, x
        ;        store REG_GFX_BACKGROUND_COLOUR + C, a
        ;        neg a
        ;        store REG_GFX_PLANE0_COLOUR + C, a
        ;}
resume

BeginFunction TickBackground
      ;load a, REG_RAND
      ;mod  a, 90
      ;store sBackground + 0, a

      ;load a, REG_RAND
      ;mod  a, 90
      ;store sBackground + 1, a

      ;load a, REG_RAND
      ;mod  a, 90
      ;store sBackground + 2, a

      load a, sCount
      add a, $A

      set x, 8
      _CallFunction PlaySound

EndFunction

BeginFunction SubSleep
  set j, $FFFF
.SleepAgain:
  dec j
  jmp.nz .SleepAgain
EndFunction

BeginFunction Sleep
  set i, $0010
.SleepAgain:
  _CallFunction SubSleep
  dec i
  jmp.nz .SleepAgain
EndFunction

BeginFunction ClearScreen
  push.b ' '
  RomFunction Cls
EndFunction

BeginFunction PlaySound
        store REG_SND_PARM_0, a
        store REG_SND_MODE_0, x
EndFunction

BeginFunction SetChar_SingleNumber
    set j, 0
    add j, y      ; p = y * NUM_COLS
    mul j, NUM_COLS
    add j, x      ; p = p + x

    add j, $8000  ; screen[p] = '0' + a

    add a, '0'
    store j, a
EndFunction

; a   = character
; x y = coords
BeginFunction SetChar
    set j, 0
    add j, y      ; p = y * NUM_COLS
    mul j, NUM_COLS
    add j, x      ; p = p + x

    add j, $8000  ; screen[p] = a
    store j, a
EndFunction

; Look at character at x, y coords
BeginFunction PeekChar
    set j, 0
    add j, y      ; p = y * NUM_COLS
    mul j, NUM_COLS
    add j, x      ; p = p + x

    add j, $8000  ; screen[p] = a
    load a, j
EndFunction

BeginFunction AddSection
  load a, sCount
  cmp a, $20    ; Count == F31
  jmp.eq .End   ; No more eating for you! Jump to end

  ; Shift everything on a bit.
  ; Clamp at maximum

  ; Increase Count.
  inc a
  store sCount, a

  ; Code here.
  .End:
EndFunction

BeginFunction SpawnFruit
  load a, REG_RAND
  mod  a, NUM_COLS
  cpy  x, a

  load a, REG_RAND
  mod  a, NUM_ROWS
  cpy  y, a

  set a, 'o'
  _CallFunction SetChar
EndFunction

BeginFunction SpawnSpike
  load a, REG_RAND
  mod  a, NUM_COLS
  cpy  x, a

  load a, REG_RAND
  mod  a, NUM_ROWS
  cpy  y, a

  set a, '*'
  _CallFunction SetChar
EndFunction

BeginFunction NewGame
  _CallFunction Sleep
  _CallFunction ClearScreen
  _CallFunction TickBackground

  ; Set direction to right
  set a, DIR_RIGHT
  store sDirection, a

  ; Set count to 3
  set a, $3
  store sCount, a

  ; Set dead to 0
  set a, $0
  store sDead, a

  ; Set Next Item Timer
  load a, REG_RAND
  mod a, 10
  inc a
  store sNextItemTimer, a

  ; Put first portion of head to x, y
  set a, START_X
  store sSnakeX, a
  store sHeadX, a

  set a, START_Y
  store sSnakeY, a
  store sHeadY, a

  push.w sSnakeX
  push.b 0
  push.w 64
  RomFunction MemSet

  push.w sSnakeY
  push.b 0
  push.w 64
  RomFunction MemSet

  push.w sCopyBuffer
  push.b 0
  push.w 65
  RomFunction MemSet

  _CallFunction SpawnFruit
  _CallFunction SpawnFruit
  _CallFunction SpawnFruit
  _CallFunction SpawnFruit
  _CallFunction SpawnFruit
EndFunction


BeginFunction CheckCollision
  load x, sHeadX
  load y, sHeadY

  cmp x, NUM_COLS
  jmp.eq .KillIt
  jmp.gt .KillIt

  cmp y, NUM_ROWS
  jmp.eq .KillIt
  jmp.gt .KillIt

.CheckChar:

  ; Peek where the head will be.
  _CallFunction PeekChar

  cmp a, ' '
  jmp.eq .End

  cmp a, 's'
  jmp.eq .KillIt

  cmp a, '*'
  jmp.eq .KillIt

  cmp a, 'o'
  jmp.eq .Nom

  jmp .End


.Nom:
  set a, ' '
  _CallFunction SetChar
  _CallFunction AddSection

  _CallFunction SpawnFruit
  _CallFunction TickBackground

  jmp .End

.KillIt:

  set a, SND_NOTE_C2
  set x, 80
  _CallFunction PlaySound

  set a, 1
  store sDead, a
  jmp .End

.End:
EndFunction

BeginFunction ShiftSnake
  ; Copy X
  push.w sCopyBuffer
  push.w sSnakeX
  load a, sCount
  push a
  RomFunction MemCpySm


  push.w sSnakeX + 1
  push.w sCopyBuffer
  load a, sCount
  push a
  RomFunction MemCpySm

  ; Copy Y
  push.w sCopyBuffer
  push.w sSnakeY
  load a, sCount
  push a
  RomFunction MemCpySm

  push.w sSnakeY + 1
  push.w sCopyBuffer
  load a, sCount
  push a
  RomFunction MemCpySm

  load a, sHeadX
  store sSnakeX, a

  load a, sHeadY
  store sSnakeY, a

EndFunction

BeginFunction DrawSnake

  load a, sDirection
  set x, 1
  set y, 1
  ;_CallFunction SetChar_SingleNumber

  load a, sCount
  set x, 5
  set y, 1
  ;_CallFunction SetChar_SingleNumber

  load a, sDead
  set x, 8
  set y, 1
  ;_CallFunction SetChar_SingleNumber

  load a, sHeadX
  set x, 1
  set y, 0
  ;_CallFunction SetChar_SingleNumber

  load a, sHeadY
  set x, 4
  set y, 0
  ;_CallFunction SetChar_SingleNumber

  load x, sFruitX
  load y, sFruitY
  set a, 'o'
  _CallFunction SetChar

  load a, sCount

  set j, sSnakeX
  add j, a
  load x, j
  set j, sSnakeY
  add j, a
  load y, j
  set a, ' '
  _CallFunction SetChar

  set a, 0
.DrawPiece:
  set j, sSnakeX
  add j, a
  load x, j
  set j, sSnakeY
  add j, a
  load y, j

  push a
    set a, 's'
    _CallFunction SetChar
  pop a

  inc a
  load x, sCount
  cmp a, x
  jmp.neq .DrawPiece

  set a, 'S'
  load x, sDirection
  add a, x

  load x, sHeadX
  load y, sHeadY
  _CallFunction SetChar

EndFunction

BeginFunction MoveCheat
  load a, sCheat
  jmp.z .End

  set a, 0
  store sCheat, a

  _CallFunction AddSection

.End:
EndFunction



BeginFunction MoveHead
  load a, sDirection
  load x, sHeadX
  load y, sHeadY

  ; Up
  ; y--
  cmp a, DIR_UP
  jmp.neq .NotUp
  dec y
  jmp .NotRight
.NotUp:

  ; Down
  ; y++
  cmp a, DIR_DOWN
  jmp.neq .NotDown
  inc y
  jmp .NotRight
.NotDown:

  ; Left
  ; x--
  cmp a, DIR_LEFT
  jmp.neq .NotLeft
  dec x
  jmp .NotRight
.NotLeft:

  ; Right
  ; x++
  cmp a, DIR_RIGHT
  jmp.neq .NotRight
  inc x
.NotRight:

  store sHeadX, x
  store sHeadY, y

EndFunction

BeginFunction SpawnItem
  load a, sNextItemTimer
  cmp a
  jmp.nz .End

  .Spawn:

    load a, REG_RAND
    mod a, 2
    cmp a, 1
    jmp.eq .SpawnFruit

  .SpawnSpike:
    _CallFunction SpawnSpike
    jmp .NextTimer
  .SpawnFruit:
    _CallFunction SpawnFruit

  .NextTimer:
    load a, REG_RAND
    mod a, 3 ;0
    add a, 1 ;0
    store sNextItemTimer, a
    return

  .End:
    dec a
    store sNextItemTimer, a
EndFunction

START_GAME:
  _CallFunction NewGame

GAME_LOOP:

  _CallFunction MoveCheat
  _CallFunction SpawnItem
  _CallFunction MoveHead
  _CallFunction ShiftSnake

  _CallFunction CheckCollision

   ; Check for death
   load a, sDead
   cmp a, $01
   call.eq Fn_NewGame

  ;_CallFunction ClearScreen
  _CallFunction DrawSnake
  _CallFunction Sleep
  jmp GAME_LOOP

