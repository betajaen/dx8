include "../dx8.inc"
include "../dx8_crt.inc"

kProgramSpace   = $7000
kRomSpace       = $FFFF - 4096 + 1

; =============================================================
; Data and Constants
; =============================================================

kConstants:

        Const_Include   FontData, "font.png.s"
        Const_Include   Keycode2Ascii, 'keycode2ascii.s'

; =============================================================
; Exported Functions
; =============================================================
Begin_Exports

kExports:

        include 'rom_mem_functions.s'
        include 'rom_print_functions.s'

        Export_Const    Rom, Keycode2Ascii, 'Table of Keycodes to ASCII equilvents'

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

DefaultIvt:
        nop
resume

;nop
; =============================================================
; Functions
; =============================================================

BeginFunction DisplayLogo
        ;dbn 'dl'
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
EndFunction

include "floppy.s"

BeginFunction FloppyHandler
        load a, sFloppy_Msg

        ; @TODO Check for error bit
        bcall tFloppyEventDispatcher, a
EndFunction

; =============================================================
; MAIN
; =============================================================
EntryPoint:
        ; Setup basic IVT
        call ConfigureIVT

        ; OnIvtReset initial registers
        _poke           REG_MMU_BANK + 0,           $00
        _poke           REG_MMU_BANK + 1,           $00
        _poke           REG_MMU_BANK + 2,           $00
        _poke           REG_MMU_BANK + 3,           $00
        _poke           REG_MMU_BANK + 4,           $00
        _poke           REG_MMU_BANK + 5,           $00
        _poke           REG_MMU_BANK + 6,           $00
        _poke           REG_MMU_BANK + 7,           $00

        ; Set font
        _poke.w         REG_GFX_TILES_ADDR,         (kFontData)
        _poke           REG_GFX_PLANE0_TYPE,        $00
        _poke           REG_GFX_PLANE1_TYPE,        $00
        _poke           REG_GFX_PLANES_COUNT,       $01

        int INT_GPUON

Setup:
        ; Clear screen
        set MemSet_Dst, MEM_GFX_PLANE0
        set MemSet_Len, MEM_GFX_PLANE_SIZE * 1
        set MemSet_Val, ' '
        _CallFunction MemSet

        _CallFunction MemCpySm
        _CallFunction DisplayLogo

        dba sFloppy_Msg
        _CallFunction OnFloppyRemoved

        set i, $C000
        store sSound_Timer, i
        set x, $00
        store sSound_State, x
        set x, 15
        store REG_SND_MODE_0, x
        set x, SND_NOTE_C5
        store REG_SND_PARM_0, x

IDLE:
        _CallFunction DrawCursor

        load a, sFloppy_Msg
        cmpi a, $00
        call.neq Fn_FloppyHandler

        jmp IDLE
nop

; =============================================================
; Init sub-routine
; MMU initialises all RAM to be $FFFF (Apart from some registers)
; MMU_Bank masks point to ROM (all of them)
; Rom is 2048bytes in size, and addreses wrap around
; MMU ensures the first byte of memory is set to $FE
; Making the IVT_OnIvtReset address $FEFF
; Pad the rom to 2k bytes, and insert a relative jump
; and then jump back to the setup code to set up the IVT tables
; and initialise the hardware.
; =============================================================

CopyAndLaunch:

        length = CopyAndLaunch
        ;printl "Code Length ", length
        pages = 4096 / 0xFF
        ;printl "Pages ", pages

        pagesMod = 4096 mod 0xFF
        ;printl "Mod", pagesMod

        count = 0
        repeat pages
                set MemCpySm_Len, 0xFF
                set MemCpySm_Dst, kProgramSpace + count
                set MemCpySm_Src, kRomSpace + count
                _CallFunction MemCpySm

                count = count + 0xFF
        end repeat

        set MemCpySm_Len, pagesMod
        set MemCpySm_Dst, kProgramSpace + count
        set MemCpySm_Src, kRomSpace + count
        _CallFunction MemCpySm

        offset  kProgramSpace
        jmp     EntryPoint

kEndSize = 8
repeat (4096 - $ - kEndSize)
        db $00
end repeat

Launch:
        offset  kRomSpace
        jmp     CopyAndLaunch
FEFF:
        _rjmp   Launch
