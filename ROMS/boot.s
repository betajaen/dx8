include "dx8.inc"
include "macros.inc"

PROGRAM_SPACE   = $7800
ROM_SPACE       = $FFFF - $800 + 1

; =============================================================
; DATA
; =============================================================

FONT:
include "victoria.png.s"

TEST_DATA:
        db 'Hello World!'

CODE:

; =============================================================
; EXPORTED FUNCTIONS
; =============================================================

dw MemCpySm
dw MemSet

; =============================================================
; IVT
; =============================================================

RESET:
        jmp Setup
HBLANK:
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

VBLANK:
        nop
resume

FLOPPY:
        _putchar 0, 0,0, 'F'
resume

; =============================================================
; Exported Functions
; =============================================================

;! MemCpySm
;! Copy upto 256 bytes from a src address to a dst address
MemCpySm_Dst equ i
MemCpySm_Src equ j
MemCpySm_Len equ a

MemCpySm:
                push a
        .loop:
                load a, j
                store i, a
                pop a
                dec a
                _rjmp.z .end
                push a
                inc i
                inc j
                _rjmp .loop
        .end:
return

;! MemSet
;! Copy a constant to dst, len times
MemSet_Dst equ i
MemSet_Len equ j
MemSet_Val equ a

MemSet:
        .loop:  store i, a
                inc i
                dec j
                _rjmp.nz .loop
return

; =============================================================
; Functions
; =============================================================

DisplayLogo:
        _putchar 0,17+0, 29, 'D'
        _putchar 0,17+1, 29, 'X'
        _putchar 0,17+2, 29, '8'
        _putchar 0,17+4, 29, '/'
        _putchar 0,17+5, 29, '/'
        _putchar 0,17+6, 29, '/'

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
return

DrawCursor:
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
return

; =============================================================
; MAIN
; =============================================================
EntryPoint:
        ; Setup basic IVT
        _poke.w         INTVEC_ADDR_RESET,      RESET
        _poke.w         INTVEC_ADDR_HBLANK,     HBLANK
        _poke.w         INTVEC_ADDR_VBLANK,     VBLANK
        _poke.w         INTVEC_ADDR_FLOPPY,     FLOPPY

printl "HBLANK Addr=", (PROGRAM_SPACE + HBLANK)
printl "HBLANK RelAddr=", (HBLANK)

printl "VBLANK Addr=", (PROGRAM_SPACE + VBLANK)
printl "VBLANK RelAddr=", (VBLANK)

        ; Reset initial registers
        _poke           REG_MMU_BANK + 0,           $00
        _poke           REG_MMU_BANK + 1,           $00
        _poke           REG_MMU_BANK + 2,           $00
        _poke           REG_MMU_BANK + 3,           $00
        _poke           REG_MMU_BANK + 4,           $00
        _poke           REG_MMU_BANK + 5,           $00
        _poke           REG_MMU_BANK + 6,           $00
        _poke           REG_MMU_BANK + 7,           $00


printl "Tiles Addr=", (PROGRAM_SPACE + FONT)

        ; Set font
        _poke.w         REG_GFX_TILES_ADDR,         (PROGRAM_SPACE + FONT)
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
        call MemSet

        ; Copy test text over
        set MemCpySm_Dst, MEM_GFX_PLANE0
        set MemCpySm_Src, PROGRAM_SPACE + TEST_DATA
        set MemCpySm_Len, 12
        call MemCpySm

        call DisplayLogo
IDLE:
        call DrawCursor
        jmp IDLE
nop

; =============================================================
; Init sub-routine
; MMU initialises all RAM to be $FFFF (Apart from some registers)
; MMU_Bank masks point to ROM (all of them)
; Rom is 2048bytes in size, and addreses wrap around
; MMU ensures the first byte of memory is set to $FE
; Making the IVT_RESET address $FEFF
; Pad the rom to 2k bytes, and insert a relative jump
; and then jump back to the setup code to set up the IVT tables
; and initialise the hardware.
; =============================================================

CopyAndLaunch:

        length = CopyAndLaunch
        printl "Code Length ", length
        pages = (CopyAndLaunch / 0xFF)
        lastPage = (CopyAndLaunch mod 0xFF)
        printl "Pages ", pages

        if (lastPage > 0)
                pages = pages + 1
        end if

        count = 0
        repeat pages
                set MemCpySm_Len, 0xFF
                set MemCpySm_Dst, PROGRAM_SPACE + count
                set MemCpySm_Src, ROM_SPACE + count
                call MemCpySm

                count = count + 0xFF
        end repeat

        ;if (lastPage > 0)
        ;printl "    + ", lastPage
        ;        set MemCpySm_Len, lastPage + 10
        ;        set MemCpySm_Dst, PROGRAM_SPACE + count
        ;        set MemCpySm_Src, ROM_SPACE + count
        ;        call MemCpySm
        ;end if

        offset  PROGRAM_SPACE
        jmp     EntryPoint


rpad (3 + 3 + 2)

Launch:
        offset  ROM_SPACE
        jmp     CopyAndLaunch
FEFF:
        _rjmp   Launch
