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
        Public EntryPoint
        Public MemCpySm
        Public MemSet
        Public Cls
        Public Print
        Public PrintChar
        Public PrintNum

; =============================================================
; Exported Functions
; =============================================================

kExports:

        include 'rom_mem_functions.s'
        include 'rom_print_functions.s'

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
                load a, REG_GFX_SCANLINE_NUM
                cpy  x, a
                cmpi a, 256 - (16 + 8)

                jmp.gt .LowerSection
                jmp.eq .BlackSection

                .AnimatedSection:
                not x
                and x, $E0
                shr x, 2

                rept 3 C
                {
                        load a, sBackground_R + C
                        add a, x
                        store REG_GFX_BACKGROUND_COLOUR + C, a
                        neg a
                        store REG_GFX_PLANE0_COLOUR + C, a
                }
                resume

                .LowerSection:
                        set a, $3B
                        store REG_GFX_BACKGROUND_COLOUR + 0, a
                        set a, $3F
                        store REG_GFX_BACKGROUND_COLOUR + 1, a
                        set a, $42
                        store REG_GFX_BACKGROUND_COLOUR + 2, a
                        set a, $FE
                        store REG_GFX_PLANE0_COLOUR + 0, a
                        set a, $FE
                        store REG_GFX_PLANE0_COLOUR + 1, a
                        set a, $FE
                        store REG_GFX_PLANE0_COLOUR + 2, a
                resume

                .BlackSection:
                        set a, $00
                        store REG_GFX_BACKGROUND_COLOUR + 0, a
                        store REG_GFX_BACKGROUND_COLOUR + 1, a
                        store REG_GFX_BACKGROUND_COLOUR + 2, a
                        store REG_GFX_PLANE0_COLOUR + 0, a
                        store REG_GFX_PLANE0_COLOUR + 1, a
                        store REG_GFX_PLANE0_COLOUR + 2, a
                resume
resume

OnIvtVertBlank:
                load a, sBackground_R
                load x, sBackground_TargetR
                cmp a, x
                jmp.lt .MoreR
                jmp.gt .LessR

                load a, REG_RAND
                mod a, $7F
                store sBackground_TargetR, a
                jmp .CheckGreen

        .MoreR:
                inc a
                store sBackground_R, a
                jmp .CheckGreen
        .LessR:
                dec a
                store sBackground_R, a

        .CheckGreen:
                load a, sBackground_G
                load x, sBackground_TargetG
                cmp a, x
                jmp.lt .MoreG
                jmp.gt .LessG

                load a, REG_RAND
                mod a, $7F
                store sBackground_TargetG, a
                jmp .CheckBlue

        .MoreG:
                inc a
                store sBackground_G, a
                jmp .CheckBlue
        .LessG:
                dec a
                store sBackground_G, a

        .CheckBlue:
                load a, sBackground_B
                load x, sBackground_TargetB
                cmp a, x
                jmp.lt .MoreB
                jmp.gt .LessB

                load a, REG_RAND
                mod a, $7F
                store sBackground_TargetB, a
                jmp .End

        .MoreB:
                inc a
                store sBackground_B, a
                jmp .CheckBlue
        .LessB:
                dec a
                store sBackground_B, a

        .End:
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
        _putchar 0,17+0, 30, 'D'
        _putchar 0,17+1, 30, 'X'
        _putchar 0,17+2, 30, '8'
        _putchar 0,17+4, 30, '/'
        _putchar 0,17+5, 30, '/'
        _putchar 0,17+6, 30, '/'
EndFunction

BeginFunction DrawCursor
                load x, REG_GFX_COUNTERS
                cmpbit x, GFX_FLG_COUNTERS_ODDEVEN
                jmp.z .DrawBlank
                jmp .DrawDot
        .DrawBlank:
                set x, ' '
                _putval 0,17+4, 30, x
                _putval 0,17+5, 30, x
                _putval 0,17+6, 30, x
                jmp .EndDraw
        .DrawDot:
                set x, '/'
                _putval 0,17+4, 30, x
                _putval 0,17+5, 30, x
                _putval 0,17+6, 30, x


        .EndDraw:

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
        bcall tFloppyEventDispatcher, a
EndFunction

; =============================================================
; MAIN
; =============================================================
ltr_EntryPoint:
        ; Setup basic IVT
        call ConfigureIVT

        ; Go into virtual mode

        ; Registers (Ignored)
        _poke           REG_MMU_PAGE + 0, 0

        ; Rom
        _poke           REG_MMU_PAGE + 1, 1
        _poke           REG_MMU_PAGE + 2, 2
        _poke           REG_MMU_PAGE + 3, 3
        _poke           REG_MMU_PAGE + 4, 4

        ; Program Space (Around 4kb)

        _poke           REG_MMU_PAGE + 5, 5     ; Use real address for now
        _poke           REG_MMU_PAGE + 6, 6
        _poke           REG_MMU_PAGE + 7, 7
        _poke           REG_MMU_PAGE + 8, 8

        ; Floppy header temp
        _poke           REG_MMU_PAGE + 53, 53

        ; Display 0
        _poke           REG_MMU_PAGE + 32, 70
        _poke           REG_MMU_PAGE + 33, 71
        _poke           REG_MMU_PAGE + 34, 72
        _poke           REG_MMU_PAGE + 35, 73
        _poke           REG_MMU_PAGE + 36, 74
        _poke           REG_MMU_PAGE + 37, 75
        _poke           REG_MMU_PAGE + 38, 76
        _poke           REG_MMU_PAGE + 39, 77
        _poke           REG_MMU_PAGE + 40, 78
        _poke           REG_MMU_PAGE + 41, 79

        ; Turn on Paging
       ; _poke           REG_MMU_PAGE_REAL_MODE, 0

        ; Set font
        _poke.w         REG_GFX_TILES_ADDR,         (kFontData)
        _poke           REG_GFX_PLANE0_TYPE,        $00
        _poke           REG_GFX_PLANES_COUNT,       $01

        set a, $00
        store $E0, a

        rti
        int INT_GPUON

Setup:
        ; Clear screen
        set MemSet_Dst, MEM_GFX_PLANE0
        set MemSet_Len, MEM_GFX_PLANE_SIZE * 1
        set MemSet_Val, ' '
        _CallFunction MemSet

        _CallFunction MemCpySm
        _CallFunction DisplayLogo

        ; dba sFloppy_Msg
        _CallFunction OnFloppyRemoved

        set i, $C000
        store sSound_Timer, i
        set x, $00
        store sSound_State, x
        set x, 15
        store REG_SND_MODE_0, x
        set x, SND_NOTE_C5
        store REG_SND_PARM_0, x

        _poke           MEM_GFX_PLANE0 + 0, 'H'
        _poke           MEM_GFX_PLANE0 + 1, 'i'
        ;_poke           $0, '!'
        set a, 'R'
        store $8000 + 50, a

        _poke           MEM_GFX_PLANE0 + 21, 'F'
        _poke           MEM_GFX_PLANE0 + 22, 'O'
        _poke           MEM_GFX_PLANE0 + 23, 'O'

IDLE:
        _CallFunction DrawCursor

        load a, sFloppy_Msg
        cmpi a, $00
        call.neq Fn_FloppyHandler

        jmp IDLE
nop

; =============================================================
; Data and Constants
; =============================================================

kConstants:

        Const_Include   FontData, "font.png.s"
        Const_Include   Keycode2Ascii, 'keycode2ascii.s'
