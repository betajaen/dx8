include '../dx8.inc'
include '../dx8_crt.inc'
include '../rom.exports.inc'

kProgramSpace = $800

kVirtualProgramSpace = $4000

jmp MAIN

; ===========================================================================
; Variables
; ===========================================================================

  Var_Word  Cursor, $8000 + 40

; ===========================================================================
; Main and Loop
; ===========================================================================

VIRTUAL_TEST:
  _poke     $8008 + (40 * 2), '1'
  _rjmp VIRTUAL_TEST
VIRTUAL_TEST_END:

MAIN:

  set MemSet_Dst, MEM_GFX_PLANE0
  set MemSet_Len, MEM_GFX_PLANE_SIZE
  set MemSet_Val, ' '
  _CallFunction MemSet

  dbo 'L'

  _poke     REG_GFX_PLANES_COUNT, $01

  _poke.rgb REG_GFX_BACKGROUND_COLOUR, $CC, $00, $00
  _poke.rgb REG_GFX_PLANE0_COLOUR, $FF, $FF, $FF

  _poke     $8000, 'V'
  _poke     $8001, 'i'
  _poke     $8002, 'r'
  _poke     $8003, 't'
  _poke     $8004, 'u'
  _poke     $8005, 'a'
  _poke     $8006, 'l'
  _poke     $8007, ' '
  _poke     $8008, 'T'
  _poke     $8009, 'e'
  _poke     $800A, 's'
  _poke     $800B, 't'

  _poke     $8000 + (40 * 2), 'E'
  _poke     $8001 + (40 * 2), 'n'
  _poke     $8002 + (40 * 2), 'a'
  _poke     $8003 + (40 * 2), 'b'
  _poke     $8004 + (40 * 2), 'l'
  _poke     $8005 + (40 * 2), 'e'
  _poke     $8006 + (40 * 2), 'd'
  _poke     $8007 + (40 * 2), '='
  _poke     $8009 + (40 * 2), '0'

  set i, kVirtualProgramSpace
  set j, VIRTUAL_TEST
  set a, VIRTUAL_TEST_END - VIRTUAL_TEST

  _CallFunction MemCpySm

  ; Configure
  _mmu_map  0, $0800, $0800, $1000  ; Program as is
  _mmu_map  1, $7800, $7800, $8000  ; Rom as is
  _mmu_map  2, $8000, $4000, $6800  ; Move Graphics

  _poke     REG_MMU_PAGE_REAL_MODE, $00

  dbn 'vv'
  dbo 'V'
  _poke     $4009 + (40 * 2), '1'
  dbo 'v'
  dbo 'l'

INF:
  inc j
  jmp INF

