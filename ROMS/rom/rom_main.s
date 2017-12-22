include "../dx8.inc"
include "../dx8_crt.inc"

kProgramSpace   = 1024

org kProgramSpace

; =============================================================
; Exported Functions Jump Tables
; =============================================================

TableCounter = 0

macro Public Name {
        dw      ltr_#Name
        display "Import "
        display `Name
        _PrintValue ", ", TableCounter
        TableCounter = TableCounter + 1
}

Exports:
        Public EntryPoint ; 0
        Public MemCpySm  ; 1
        Public MemSet ; 2
        Public MemMap ; 3
        ;Public Cls ; 4
        ;Public Print ; 5
        ;Public PrintChar ; 6
        ;Public PrintNum ; 7

; =============================================================
; Exported Functions
; =============================================================

kExports:

        include 'rom_mem_functions.s'
        ;include 'rom_print_functions.s'

        ; Export_Const    Rom, Keycode2Ascii, 'Table of Keycodes to ASCII equilvents'

; =============================================================
; VARIABLES
; =============================================================

kVariables:

        Var_Byte        Floppy_Msg,     $00
        Var_Byte        Floppy_HasDisk, $00
        Var_Byte        Floppy_Mode,    $00
        Var_Word        Floppy_Addr,    $00
        Var_Byte        Floppy_Track,   $00
        Var_Byte        Keyboard,       $00
        Var_Word        Cursor,         $8000
        Var_Byte        Background_R,   $3B
        Var_Byte        Background_G,   $3F
        Var_Byte        Background_B,   $42
        Var_Byte        Background_TargetR,   $FF
        Var_Byte        Background_TargetG,   $AA
        Var_Byte        Background_TargetB,   $CC
        Var_Word        Sound_Timer,          $0000
        Var_Byte        Sound_State,          $00

; =============================================================
; Interrupt Vector Table Events
; =============================================================

ConfigureIVT:
        _poke.w         INTVEC_ADDR_RESET,      OnIvtReset
        _poke.w         INTVEC_ADDR_HBLANK,     OnIvtHorzBlank
        _poke.w         INTVEC_ADDR_VBLANK,     OnIvtVertBlank
        _poke.w         INTVEC_ADDR_FLOPPY,     OnIvtFloppy
        _poke.w         INTVEC_ADDR_IO,         OnIvtIo
        _poke.w         INTVEC_ADDR_RESERVED_6, DefaultIvt
        _poke.w         INTVEC_ADDR_RESERVED_7, DefaultIvt
        _poke.w         INTVEC_ADDR_HALT,       OnIvtHalt
return

OnIvtReset:
        jmp Setup
OnIvtHorzBlank:
        ;load a, REG_RAND
        ;store kPalette, a
        ;load a, REG_RAND
        ;store kPalette+1, a
resume

OnIvtVertBlank:
        nop
resume

OnIvtFloppy:
        load  a, REG_FPY_MSG
        store sFloppy_Msg, a
        set a, 0
        store REG_FPY_MSG, a
resume

OnIvtIo:
        nop
resume

OnIvtHalt:
        nop
        dbn 'HL'
        int $FF
resume

DefaultIvt:
        dbn 'DL'
        nop
resume

;nop
; =============================================================
; Functions
; =============================================================

BeginFunction DisplayLogo
;        _putchar 0,17+0, 30, 'D'
;        _putchar 0,17+1, 30, 'X'
;        _putchar 0,17+2, 30, '8'
;        _putchar 0,17+4, 30, '/'
;        _putchar 0,17+5, 30, '/'
;        _putchar 0,17+6, 30, '/'
EndFunction

BeginFunction DrawCursor
        ;        load x, REG_GFX_COUNTERS
        ;        bit x, GFX_FLG_COUNTERS_ODDEVEN
        ;        jmp.z .DrawBlank
        ;        jmp .DrawDot
        ;.DrawBlank:
        ;        set x, ' '
        ;        _putval 0,17+4, 30, x
        ;        _putval 0,17+5, 30, x
        ;        _putval 0,17+6, 30, x
        ;        jmp .EndDraw
       ; .DrawDot:
       ;         set x, '/'
       ;         _putval 0,17+4, 30, x
       ;         _putval 0,17+5, 30, x
       ;         _putval 0,17+6, 30, x
;
;
       ; .EndDraw:

        ;load x, REG_GFX_COUNTERS
        ;cmpbit x, GFX_FLG_COUNTERS_15
        ;jmp.z .End

        ;set x, $00
        ;store sSound_State, x
        ;set x, 3
        ;store REG_SND_MODE_0, x
        ;set x, SND_NOTE_C5
        ;store REG_SND_PARM_0, x

        ;.End:
EndFunction

include "rom_floppy.s"

BeginFunction FloppyHandler
        load a, sFloppy_Msg

        ; @TODO Check for error bit
        callt tFloppyEventDispatcher, a
EndFunction

MapRomMemory:

macro MEMMAP V, R {
      _poke  REG_MMU_PAGE + V, R
}

        MEMMAP          $0, $0    ; Registers (Ignored by MMU)
        MEMMAP          $1, $1    ; Rom and Program
        MEMMAP          $2, $2
        MEMMAP          $3, $3
        MEMMAP          $4, $4
        MEMMAP          $5, $5
        MEMMAP          $6, $6
        MEMMAP          $7, $7
        ; Map Video Ram/Tile Ram/Sprite Ram $E800 to $F800
        MEMMAP          $38, $48        ; Video Ram
        MEMMAP          $39, $49
        MEMMAP          $3A, $4A
        MEMMAP          $3B, $4B
        MEMMAP          $3C, $4C        ; Sprite Mem
        MEMMAP          $3D, $4D        ; Sprite Mem
        MEMMAP          $3E, $4E        ; Tile Mem
        MEMMAP          $3F, $4F        ; Tile Mem

        ; Floppy header temp
        _poke           REG_MMU_PAGE + 53, 53
return

; =============================================================
; MAIN
; =============================================================
ltr_EntryPoint:
        ; Setup basic IVT
        call ConfigureIVT

        call MapRomMemory

        ; Turn on Paging
        set a, $00
        store $E0, a

        ; Copy over font data to TILE_MEM
        OFFSET = 0
        repeat (2048 / 255)
                push.w GFX_FAST_TILE_MEM + OFFSET
                push.w kFontData + OFFSET
                push.b 0xFF
                set a, 1
                callt $400, a
                OFFSET = OFFSET + 0xFF
        end repeat

        ; Clear screen with 'x'
        push.w GFX_FAST_SCREEN0
        push.b 0
        push.w 1280
        set a, 2
        callt $400, a

        ; Clear colours with 0x7
        push.w GFX_FAST_SCREEN0_COLOUR
        push.b 0x78
        push.w 1280 / 2
        set a, 2
        callt $400, a


        rti
        int INT_GPUON

Setup:
        ; Clear screen
        ;set MemSet_Dst, GFX_FAST_SCREEN0
        ;set MemSet_Len, GFX_WIDTH * GFX_HEIGHT
        ;set MemSet_Val, 'a'
        ;_CallFunction MemSet

        ;_CallFunction MemCpySm
        ;_CallFunction DisplayLogo

        ; dba sFloppy_Msg
        ;_CallFunction OnFloppyRemoved

        set i, $C000
        store sSound_Timer, i
        set x, $00
        store sSound_State, x
        set x, 15
        store REG_SND_MODE_0, x
        set x, SND_NOTE_C5
        store REG_SND_PARM_0, x

        set x, 0
        set j, GFX_FAST_SCREEN0
        .show:
                store j, x
                inc j
                inc x
                cmp x, 0
                jmp.eq .endshow
                jmp .show
        .endshow:
        .show2:
                store j, x
                inc j
                inc x
                cmp x, 0
                jmp.eq .endshow2
                jmp .show2
        .endshow2:
        .show3:
                store j, x
                inc j
                inc x
                cmp x, 0
                jmp.eq .endshow3
                jmp .show3
        .endshow3:

        set x, 0
        set j, GFX_FAST_SCREEN0_COLOUR
        .show4:
                load y, REG_RAND
                store j, y
                inc j
                inc x
                cmp x, 0
                jmp.eq .endshow4
                jmp .show4
        .endshow4:

        set x, 0
        .show5:
                load y, REG_RAND
                store j, y
                inc j
                inc x
                cmp x, 0
                jmp.eq .endshow5
                jmp .show5
        .endshow5:

        _poke           GFX_FAST_SCREEN0 + 10 + (25 * 40), 'H'
        _poke           GFX_FAST_SCREEN0 + 11 + (25 * 40), 'e'
        _poke           GFX_FAST_SCREEN0 + 12 + (25 * 40), 'l'
        _poke           GFX_FAST_SCREEN0 + 13 + (25 * 40), 'l'
        _poke           GFX_FAST_SCREEN0 + 14 + (25 * 40), 'o'
        _poke           GFX_FAST_SCREEN0 + 15 + (25 * 40), '2'

        _poke           GFX_FAST_SCREEN0_COLOUR + 0, 0x54

        ;_poke           $0, '!'
        ;set a, 'R'
        ;store $8000 + 50, a

        ;_poke           MEM_GFX_PLANE0 + 21, 'F'
        ;_poke           MEM_GFX_PLANE0 + 22, 'O'
        ;_poke           MEM_GFX_PLANE0 + 23, 'O'

IDLE:
        ;_CallFunction DrawCursor

        load a, sFloppy_Msg
        cmp a, $00
        call.neq Fn_FloppyHandler

        jmp IDLE
nop

; =============================================================
; Data and Constants
; =============================================================

kConstants:

        kPalette:
                db $A6
                db $BF
                db $E8
                db $D1
                db $10
                db $00
                db $00
                db $0F
                db $11
                db $E3
                db $3F
                db $00
                db $A6
                db $6B
                db $33
                db $F5
                db $5E
                db $22
                db $A2
                db $2B
                db $3F
                db $F9
                db $9E
                db $44



        Const_Include   FontData, "dx8_font.png.s"
        Const_Include   Keycode2Ascii, 'keycode2ascii.s'
