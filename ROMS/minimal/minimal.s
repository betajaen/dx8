; Minimal Program for the DX8 Computer
;
; All opcodes are in the form of:-
;
; > opcode DST, SRC
;

include '../dx8.inc'            ; Required Opcodes and constants
include '../dx8_crt.inc'        ; Helper functions and mark up
include '../rom.exports.inc'    ; Some ROM exposed functions

kProgramSpace = $1400            ; Where the program is in memory (usually $800)

org kProgramSpace

jmp MAIN

; Any constants or variables you use should go here.
; Use the macros to avoid any bugs.

  ; Variable which is named 'sCounter', initialised to 0.
  Var_Byte Counter, $00

MAIN:

  ; Configure graphics
  set   a, $01                    ; Configure to use one plane only
  store REG_GFX_PLANES_COUNT, a
  set   a, $00
  store REG_GFX_PLANE0_TYPE,  a   ; Set to text mode

  ; Clear the Screen through exposed MemSet function in the ROM.
  ; This is similar to the C function memset.
  ;set i, MEM_GFX_PLANE0           ; Which graphics plane
  ;set j, MEM_GFX_PLANE_SIZE       ; Size in bytes
  ;set a, ' '                      ; Character
  ;_CallFunction MemSet

kArguments equ $0406

  set   x, ' '
  store kArguments + 0, x
  set   i, MEM_GFX_PLANE0
  store kArguments + 1, x
  store   kArguments + 2, y
  set   i, MEM_GFX_PLANE_SIZE
  store   kArguments + 3, x
  store   kArguments + 4, y

  RomFunction MemSet

  ; Set Background Colour to Black $000000
  set a, $00
  store REG_GFX_BACKGROUND_COLOUR + 0, a  ; Red
  store REG_GFX_BACKGROUND_COLOUR + 1, a  ; Green
  store REG_GFX_BACKGROUND_COLOUR + 2, a  ; Blue

  ; Set Text Colour to White $FFFFFF
  set a, $FF
  store REG_GFX_PLANE0_COLOUR + 0, a  ; Red
  store REG_GFX_PLANE0_COLOUR + 1, a  ; Green
  store REG_GFX_PLANE0_COLOUR + 2, a  ; Blue

  set a, 'H'
  store $8000 + 40, a
  set a, 'i'
  store $8000 + 41, a

; Loop forever
FOREVER:

  ; Increase counter...
  load a, sCounter
  inc a,
  store sCounter, a

  ; Show number on the Screen
  ;  x = X-Coord
  ;  y = Y-Coord
  ;  a = Number to show
  ;set x, 20
  ;set y, 10
  ;_CallFunction PrintNum

  jmp FOREVER
