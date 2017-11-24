include "../dx8.inc"
include "../dx8_crt.inc"

kProgramSpace   = $7800
kRomSpace       = $FFFF - $800 + 1

; =============================================================
; Data and Constants
; =============================================================

kConstants:

        Const_Include   FontData, "font.png.s"
        Const_Byte      TestData, 'Hello!'
        Const_Include   Keycode2Ascii, 'keycode2ascii.s'

; =============================================================
; Exported Functions
; =============================================================
Begin_Exports

kExports:

        ;! MemCpySm
        ;! Copy upto 256 bytes from a src address to a dst address
        MemCpySm_Dst equ i
        MemCpySm_Src equ j
        MemCpySm_Len equ a

        BeginFunction MemCpySm
                .loop:
                        ;dbr 'i'
                        ;dbr 'j'
                        ;dbr 'a'

                        dec a
                        push a
                        load a, j
                        store i, a
                        pop a
                        inc i
                        inc j
                        cmp a
                        _rjmp.nz .loop
        EndFunction

        Export_Function      Rom, MemCpySm, 'Copy up to 256 bytes to another part of memory'
        Export_Function_Arg  MemCpySm, Dst, i
        Export_Function_Arg  MemCpySm, Src, j
        Export_Function_Arg  MemCpySm, Len, a

        ;! MemSet
        ;! Copy a constant to dst, len times
        MemSet_Dst equ i
        MemSet_Len equ j
        MemSet_Val equ a

        BeginFunction MemSet
                .loop:  store i, a
                        inc i
                        dec j
                        _rjmp.nz .loop
        EndFunction

        Export_Function      Rom, MemSet, 'Set range of memory to constant'
        Export_Function_Arg  MemSet, Dst, i
        Export_Function_Arg  MemSet, Len, j
        Export_Function_Arg  MemSet, Val, a


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
        load x, REG_GFX_SCANLINE_NUM
        not x
        and x, $E0
        shr x, 2

        set a, 0x3B
        add a,x
        store REG_GFX_BACKGROUND_COLOUR + 0, a
        set a, 0x3F
        add a,x
        store REG_GFX_BACKGROUND_COLOUR + 1, a
        set a, 0x42
        add a,x
        store REG_GFX_BACKGROUND_COLOUR + 2, a
resume

OnIvtVertBlank:
        nop ; dbg 'IV'
resume

OnIvtFloppy:
        dbn 'IF'
        load  a, REG_FPY_MSG
        dbr 'a'
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
        _putchar 0,17+0, 29, 'D'
        _putchar 0,17+1, 29, 'X'
        _putchar 0,17+2, 29, '8'
        _putchar 0,17+4, 29, '/'
        _putchar 0,17+5, 29, '/'
        _putchar 0,17+6, 29, '/'
EndFunction

BeginFunction DrawCursor
        ;dbn 'dc'
                load x, REG_GFX_COUNTERS
                cmpbit x, GFX_FLG_COUNTERS_ODDEVEN
                jmp.z .DrawBlank
                jmp .DrawDot
        .DrawBlank:
                set x, ' '
                _putval 0,17+4, 29, x
                _putval 0,17+5, 29, x
                _putval 0,17+6, 29, x
                jmp .EndDraw
        .DrawDot:
                set x, '/'
                _putval 0,17+4, 29, x
                _putval 0,17+5, 29, x
                _putval 0,17+6, 29, x
        .EndDraw:
EndFunction

include "floppy.s"

BeginFunction FloppyHandler

        dbn 'fh'

        load a, sFloppy_Msg
        dbr 'a'

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
        _poke           REG_GFX_PLANE2_TYPE,        $00
        _poke           REG_GFX_PLANE3_TYPE,        $00
        _poke           REG_GFX_PLANES_COUNT,       $04

        int INT_GPUON

Setup:
        ; Clear screen
        set MemSet_Dst, MEM_GFX_PLANE0
        set MemSet_Len, MEM_GFX_PLANE_SIZE * 3
        set MemSet_Val, ' '
        _CallFunction MemSet

        ; Copy test text over
        set MemCpySm_Dst, MEM_GFX_PLANE0
        set MemCpySm_Src, (kTestData)
        set MemCpySm_Len, (kTestDataLength)

        _CallFunction MemCpySm
        _CallFunction DisplayLogo

        dba sFloppy_Msg
        _CallFunction OnFloppyRemoved

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
        pages = 2048 / 0xFF
        ;printl "Pages ", pages

        pagesMod = 2048 mod 0xFF
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
repeat (2048 - $ - kEndSize)
        db $00
end repeat

Launch:
        offset  kRomSpace
        jmp     CopyAndLaunch
FEFF:
        _rjmp   Launch

; =============================================================
; Exports
; =============================================================
