; Minimal Program for the DX8 Computer
;
; All opcodes are in the form of:-
;
; > opcode DST, SRC
;

include '../dx8.inc'            ; Required Opcodes and constants
include '../dx8_crt.inc'        ; Helper functions and mark up
include '../rom.exports.inc'    ; Some ROM exposed functions

kProgramSpace = $800            ; Where the program is in memory (usually $800)

        _poke.w         INTVEC_ADDR_HBLANK,     OnIvtHorzBlank
jmp MAIN

BeginFunction RandBackground

  load a, REG_RAND
  store sBackground_R + 0, a  ; Red
  load a, REG_RAND
  store sBackground_R + 1, a  ; Green
  load a, REG_RAND
  store sBackground_R + 2, a  ; Blue

  load a, REG_RAND
  mod  a, 5
  store sBackground_DeltaR + 0, a

  load a, REG_RAND
  mod  a, 5
  store sBackground_DeltaR + 1, a

  load a, REG_RAND
  mod  a, 5
  store sBackground_DeltaR + 2, a

EndFunction


; Any constants or variables you use should go here.
; Use the macros to avoid any bugs.

  ; Variable which is named 'sCounter', initialised to 0.
  Var_Word Counter, $0000

  Var_Byte Background_R, $00
  Var_Byte Background_G, $00
  Var_Byte Background_B, $00
  Var_Byte Background_DeltaR, $00
  Var_Byte Background_DeltaG, $00
  Var_Byte Background_DeltaB, $00

OnIvtHorzBlank:
                load x, REG_GFX_SCANLINE_NUM

                rept 3 C
                {
                  load a, sBackground_DeltaR + C
                  mul a, x

                  load z, sBackground_R + C
                  add a, z

                  store REG_GFX_BACKGROUND_COLOUR + C, a
                  neg a
                  store REG_GFX_PLANE0_COLOUR + C, a
                }
resume



MAIN:

  ; Configure graphics
  set   a, $01                    ; Configure to use one plane only
  store REG_GFX_PLANES_COUNT, a
  set   a, $00
  store REG_GFX_PLANE0_TYPE,  a   ; Set to text mode

  ; Clear the Screen through exposed MemSet function in the ROM.
  ; This is similar to the C function memset.
  set i, MEM_GFX_PLANE0           ; Which graphics plane
  set j, MEM_GFX_PLANE_SIZE       ; Size in bytes
  set a, ' '                      ; Character
  _CallFunction MemSet

; Loop forever
ONE:
  _CallFunction RandBackground

LOOP_1:

  load a, REG_GFX_COUNTERS
  cmpbit a, GFX_FLG_COUNTERS_15

  jmp.nz TWO
  jmp LOOP_1

TWO:
  _CallFunction RandBackground

LOOP_2:

  load a, REG_GFX_COUNTERS
  cmpbit a, GFX_FLG_COUNTERS_15

  jmp.nz THREE
  jmp LOOP_2

THREE:
  _CallFunction RandBackground

LOOP_3:

  load a, REG_GFX_COUNTERS
  cmpbit a, GFX_FLG_COUNTERS_15

  jmp.nz ONE
  jmp LOOP_3
