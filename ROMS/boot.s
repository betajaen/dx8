include "dx8.inc"
include "macros.inc"

kProgramSpace   = $7800
kRomSpace       = $FFFF - $800 + 1

; =============================================================
; Data and Constants
; =============================================================

kConstants:

        Const_Include   FontData, "victoria.png.s"
        Const_Byte      TestData, 'Hello!'

; =============================================================
; Exported Functions
; =============================================================

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

; =============================================================
; VARIABLES
; =============================================================

kVariables:

        Var_Byte        Floppy_Msg,     $00
        Var_Byte        Floppy_HasDisk, $00

        printl 'sLclFloppy_Msg=', sLclFloppy_Msg
        printl 'sFloppy_Msg=', sFloppy_Msg
        printl 'sLclFloppy_HasDisk=', sLclFloppy_HasDisk
        printl 'sFloppy_HasDisk=', sFloppy_HasDisk

; =============================================================
; Interrupt Vector Table Events
; =============================================================

ConfigureIVT:
        _poke.w         INTVEC_ADDR_RESET,      OnIvtReset
        _poke.w         INTVEC_ADDR_HBLANK,     OnIvtHorzBlank
        _poke.w         INTVEC_ADDR_VBLANK,     OnIvtVertBlank
        _poke.w         INTVEC_ADDR_FLOPPY,     OnIvtFloppy
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
                PRINT_AT(0,17+4, 29), x
                PRINT_AT(0,17+5, 29), x
                PRINT_AT(0,17+6, 29), x
                jmp .EndDraw
        .DrawDot:
                set x, '/'
                PRINT_AT(0,17+4, 29), x
                PRINT_AT(0,17+5, 29), x
                PRINT_AT(0,17+6, 29), x
        .EndDraw:
EndFunction

BeginFunction OnFloppyInserted

        dbn 'fi'

        set a, $01
        store sFloppy_HasDisk, a

        _putchar 0,17+0, 15, ' '
        _putchar 0,17+1, 15, ' '
        _putchar 0,17+2, 15, ' '
        _putchar 0,17+3, 15, ' '
        _putchar 0,17+4, 15, ' '
        _putchar 0,17+5, 15, ' '


        _putchar 0,17+0, 16, ' '
        _putchar 0,17+1, 16, ' '
        _putchar 0,17+2, 16, ' '
        _putchar 0,17+3, 16, ' '
        _putchar 0,17+4, 16, ' '
        _putchar 0,17+5, 16, ' '

        ; Copy sector#1 to $FC00
        _poke REG_FPY_OP_TRACK,         $00
        _poke REG_FPY_OP_ADDR,          $00
        _poke REG_FPY_OP_ADDR+1,        $80
        _poke REG_FPY_OP,               $01
        int INT_FLOPPY_OP
EndFunction

BeginFunction OnFloppyRemoved

        dbn 'fr'
    ;    dbb
        dba sFloppy_HasDisk

        set a, $00
        store sFloppy_HasDisk, a

        _putchar 0,17+0, 15, 'I'
        _putchar 0,17+1, 15, 'N'
        _putchar 0,17+2, 15, 'S'
        _putchar 0,17+3, 15, 'E'
        _putchar 0,17+4, 15, 'R'
        _putchar 0,17+5, 15, 'T'


        _putchar 0,17+0, 16, 'F'
        _putchar 0,17+1, 16, 'L'
        _putchar 0,17+2, 16, 'O'
        _putchar 0,17+3, 16, 'P'
        _putchar 0,17+4, 16, 'P'
        _putchar 0,17+5, 16, 'Y'
EndFunction

BeginFunction FloppyHandler

        dbn 'fh'

        load a, sFloppy_Msg
        dbr 'a'

        cmpbit a, IO_FPY_MSG_INSERT
        call.nz Fn_OnFloppyInserted

        cmpbit a, IO_FPY_MSG_REMOVE
        call.nz Fn_OnFloppyRemoved

        set a, $00
        store sFloppy_Msg, a
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
        cmp a, $00
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
        printl "Code Length ", length
        pages = 2048 / 0xFF
        printl "Pages ", pages

        pagesMod = 2048 mod 0xFF
        printl "Mod", pagesMod

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


rpad (3 + 3 + 2)

Launch:
        offset  kRomSpace
        jmp     CopyAndLaunch
FEFF:
        _rjmp   Launch
