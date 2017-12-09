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
jmp MAIN
jmp MAIN
jmp MAIN

; Any constants or variables you use should go here.
; Use the macros to avoid any bugs.

  ; Variable which is named 'sCounter', initialised to 0.
  Var_Byte Counter, $00

HelloText:
  db 'Hello', 0

MAIN:
  ; Configure graphics
  set   a, $01                    ; Configure to use one plane only
  store REG_GFX_PLANES_COUNT, a
  set   a, $00
  store REG_GFX_PLANE0_TYPE,  a   ; Set to text mode

  push.b '+'
  RomFunction Cls

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

; Loop forever
FOREVER:

  load a, REG_RAND
  mod a, 320/8
  push a

  load a, REG_RAND
  mod a, 256/8
  push a

  load a, sCounter
  inc a,
  store sCounter, a
  push a

  RomFunction PrintNum

  jmp FOREVER
