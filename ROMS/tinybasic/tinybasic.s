; Tiny Basic for the DX8 Computer
; Port by Robin Southern github.com/betajaen
;
; Version 0.1
;
; Based of the C, 6502 and 6800 Ports of Tiny Basic
;
include '../dx8.inc'            ; Required Opcodes and constants
include '../dx8_crt.inc'        ; Helper functions and mark up
include '../rom.exports.inc'    ; Some ROM exposed functions

jmp EntryPoint

kProgramSpace = $800            ; Where the program is in memory (usually $800)

macro JumpAddress A {
  dw kProgramSpace + A
}

;******************************************************************************
; IL Jump Table
;******************************************************************************

IL_TABLE:
    JumpAddress IL_SX ; 00
    JumpAddress IL_SX ; 01
    JumpAddress IL_SX ; 02
    JumpAddress IL_SX ; 03
    JumpAddress IL_SX ; 04
    JumpAddress IL_SX ; 05
    JumpAddress IL_SX ; 06
    JumpAddress IL_SX ; 07
    JumpAddress IL_NO ; 08
    JumpAddress IL_LB ; 09
    JumpAddress IL_LN ; 0A
    JumpAddress IL_DS ; 0B
    JumpAddress IL_SP ; 0C
    JumpAddress IL_NO ; 0D
    JumpAddress IL_NO ; 0E
    JumpAddress IL_NO ; 0F
    JumpAddress IL_SB ; 10
    JumpAddress IL_RB ; 11
    JumpAddress IL_FV ; 12
    JumpAddress IL_SV ; 13
    JumpAddress IL_GS ; 14
    JumpAddress IL_RS ; 15
    JumpAddress IL_GO ; 16
    JumpAddress IL_NE ; 17
    JumpAddress IL_AD ; 18
    JumpAddress IL_SU ; 19
    JumpAddress IL_MP ; 1A
    JumpAddress IL_DV ; 1B
    JumpAddress IL_CP ; 1C
    JumpAddress IL_NX ; 1D
    JumpAddress IL_LS ; 1F
    JumpAddress IL_PN ; 20
    JumpAddress IL_PQ ; 21
    JumpAddress IL_PT ; 22
    JumpAddress IL_NL ; 23
    JumpAddress IL_PS ; 24
    JumpAddress IL_NO ; 25
    JumpAddress IL_NO ; 26
    JumpAddress IL_GL ; 27
    JumpAddress IL_NO ; 28
    JumpAddress IL_NO ; 29
    JumpAddress IL_IL ; 2A
    JumpAddress IL_MT ; 2B
    JumpAddress IL_XQ ; 2C
    JumpAddress IL_WS ; 2D
    JumpAddress IL_US ; 2E
    JumpAddress IL_RT ; 2F

;******************************************************************************
;
; Stack Exchange
;
; Exchange the top byte of computational stack with
; that "n" bytes into the stack. The top byte of the stack is
; considered to be byte 0, so SX 0 does nothing. The sequence of
; instructions
;                          SX 1
;                          SX 3
;                          SX 1
;                          SX 2
;
; may be used to exchange the top two numbers (two bytes each) on the
; stack. Only the top eight bytes on the stack are accessible, to this
; instruction. If the stack is empty an error stop may or may not
; occur, depending on which ML interpreter is implemented.
IL_SX:
  return

;******************************************************************************

;******************************************************************************
;
; No Operation
;
; This may be used as a space filler (such as to ignore a skip).
;******************************************************************************
IL_NO:
  nop
  return

;******************************************************************************
;
; Push Literal Byte onto Stack.
;
; This adds one byte to the computational stack, which
; is the second byte of the instruction. An error stop will occur if
; the stack overflows.
;******************************************************************************
IL_LB:
  return

;******************************************************************************
;
; Push number (word) onto stack
; This adds the following two bytes to the computational stack,
; as a 16-bit number. Stack overflow results in
; an error stop.
;
;******************************************************************************
IL_LN:
  return

;******************************************************************************
;
; Duplicate Top Number (two bytes) on Stack.
;
; An error stop will occur if there are less than two
; bytes on the expression stack or if the stack overflows.
;******************************************************************************
IL_DS:
  return

; Stack pop
IL_SP:
  return

; Save BASIC Pointer
IL_SB
  return

; Restore Basic Pointer
IL_RB:
  return

; Fetch Variable
IL_FV:
  return

;******************************************************************************
; Common Functions
;******************************************************************************

__InitDX8:
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

return

;******************************************************************************
; Interpreter Functions
;******************************************************************************

EntryPoint:
  call __InitDX8
