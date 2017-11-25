include '../dx8.inc'
include '../dx8_crt.inc'
include '../rom.exports.inc'

kProgramSpace = $800

_poke.w   INTVEC_ADDR_IO,         OnIvtIo
        _poke.w         INTVEC_ADDR_HBLANK,     OnIvtHBlank

jmp START_GAME


OnIvtIo:
      load  a, REG_IO_OP

      cmpi a, $01
      jmp.eq .OnKeyChange

      .OnKeyChange:

              ; Only on up events.
              load z, REG_IO_DATA_B
              cmpi z, $01
              jmp.neq .End

              ; Get Scan code
              load  z, REG_IO_DATA_A

              ; Check is up
              cmpi z, KEY_LowercaseK
              jmp.eq .IsUp
              cmpi z, KEY_UppercaseK
              jmp.eq .IsUp

              ; Check is down
              cmpi z, KEY_LowercaseM
              jmp.eq .IsDown
              cmpi z, KEY_UppercaseM
              jmp.eq .IsDown

              ; Check is left
              cmpi z, KEY_LowercaseZ
              jmp.eq .IsLeft
              cmpi z, KEY_UppercaseZ
              jmp.eq .IsLeft

              ; Check is right
              cmpi z, KEY_LowercaseX
              jmp.eq .IsRight
              cmpi z, KEY_UppercaseX
              jmp.eq .IsRight

              ; Cheat key
              cmpi z, KEY_LowercaseC
              jmp.eq .IsCheat
              cmpi z, KEY_UppercaseC
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
  Var_Bytes SnakeX, 32
  Var_Byte  SnakeX_Pad, 1
  Var_Byte  HeadY, 0
  Var_Bytes SnakeY, 32
  Var_Byte  SnakeY_Pad, 1
  Var_Bytes CopyBuffer, 33
  Var_Byte  FruitX, 0
  Var_Byte  FruitY, 0
  Var_Bytes Background, 3
  Var_Byte  NextItemTimer, 10

; ===========================================================================
; Constants
; ===========================================================================

  START_X   = 15
  START_Y   = 15
  NUM_COLS  = 320 / 8
  NUM_ROWS  = 256 / 8
  DIR_UP    = 1
  DIR_DOWN  = 2
  DIR_LEFT  = 4
  DIR_RIGHT = 8

; ===========================================================================
; Functions
; ===========================================================================

OnIvtHBlank:
        rept 3 C
        {
                load a, sBackground + C
                add a, x
                store REG_GFX_BACKGROUND_COLOUR + C, a
                neg a
                store REG_GFX_PLANE0_COLOUR + C, a
        }
resume

BeginFunction TickBackground
      load a, REG_RAND
      store sBackground + 0, a

      load a, REG_RAND
      store sBackground + 1, a

      load a, REG_RAND
      store sBackground + 2, a
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
  set i, MEM_GFX_PLANE0
  set j, MEM_GFX_PLANE_SIZE
  set a, ' '
  _CallFunction MemSet
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
  cmp a, 31    ; Count == F31
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

  set MemSet_Len, 32
  set MemSet_Dst, sSnakeX
  set MemSet_Val, 0
  _CallFunction MemSet

  set MemSet_Len, 32
  set MemSet_Dst, sSnakeY
  set MemSet_Val, 0
  _CallFunction MemSet

  set MemSet_Len, 33
  set MemSet_Dst, sCopyBuffer
  set MemSet_Val, 0
  _CallFunction MemSet

  _CallFunction SpawnFruit
  _CallFunction SpawnFruit
  _CallFunction SpawnFruit
  _CallFunction SpawnFruit
  _CallFunction SpawnFruit
EndFunction


BeginFunction CheckCollision
  load x, sHeadX
  load y, sHeadY

  cmpi x, NUM_COLS
  jmp.eq .KillIt
  jmp.gt .KillIt

  cmpi y, NUM_ROWS
  jmp.eq .KillIt
  jmp.gt .KillIt

.CheckChar:

  ; Peek where the head will be.
  _CallFunction PeekChar

  cmpi a, ' '
  jmp.eq .End

  cmpi a, 's'
  jmp.eq .KillIt

  cmpi a, '*'
  jmp.eq .KillIt

  cmpi a, 'o'
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
  set a, 1
  store sDead, a
  jmp .End

.End:
EndFunction

BeginFunction ShiftSnake
  ; Copy X
  load MemCpySm_Len, sCount
  set  MemCpySm_Dst, sCopyBuffer
  set  MemCpySm_Src, sSnakeX
  _CallFunction MemCpySm

  load MemCpySm_Len, sCount
  set  MemCpySm_Dst, sSnakeX + 1
  set  MemCpySm_Src, sCopyBuffer
  _CallFunction MemCpySm


  ; Copy Y
  load MemCpySm_Len, sCount
  set  MemCpySm_Dst, sCopyBuffer
  set  MemCpySm_Src, sSnakeY
  _CallFunction MemCpySm

  load MemCpySm_Len, sCount
  set  MemCpySm_Dst, sSnakeY + 1
  set  MemCpySm_Src, sCopyBuffer
  _CallFunction MemCpySm

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
  cmpi a, DIR_UP
  jmp.neq .NotUp
  dec y
  jmp .NotRight
.NotUp:

  ; Down
  ; y++
  cmpi a, DIR_DOWN
  jmp.neq .NotDown
  inc y
  jmp .NotRight
.NotDown:

  ; Left
  ; x--
  cmpi a, DIR_LEFT
  jmp.neq .NotLeft
  dec x
  jmp .NotRight
.NotLeft:

  ; Right
  ; x++
  cmpi a, DIR_RIGHT
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
    mod a, 70
    add a, 30
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
   cmpi a, $01
   call.eq Fn_NewGame

  ;_CallFunction ClearScreen
  _CallFunction DrawSnake

  _CallFunction Sleep
  jmp GAME_LOOP
