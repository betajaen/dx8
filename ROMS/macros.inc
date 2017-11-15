
macro APOKE [ADDR, VALUE] {
      set a, VALUE
      store (ADDR), a
}

macro ZPOKE [ADDR, VALUE] {
      set z, VALUE
      store (ADDR), z
}

macro APOKE_WORD [ADDR, VALUE] {
      set a, ((VALUE) and $FF)
      store ADDR, a
      set a, ((VALUE) shr 8)
      store ADDR+1, a
}

macro APEEK [ADDR] {
      load a, ADDR
}

macro ZPEEK [ADDR] {
      load a, ADDR
}

macro interrupt [A] {
      db $EB
      db A
}

macro COPY [DST, SRC] {
      xor DST, DST
      add DST, SRC
}

macro INTERRUPT_TABLE RESET_ADDR, HBLANK_ADDR, VBLANK_ADDR, FLOPPY_ADDR {
      dw RESET_ADDR           ; Reset
      dw HBLANK_ADDR          ; HBlank
      dw VBLANK_ADDR          ; VBlank
      dw FLOPPY_ADDR          ; Floppy
      dw 0                    ; 5
      dw 0                    ; 6
      dw 0                    ; 7
      dw 0                    ; 8
}

macro SLEEP [N] {
      push a
      set a, N
@@:
      jmp.z @f
      dec a
      jmp @b
@@:
      pop a
}

macro MEMSET DST, VAL, LEN {
      push a
      APOKE       REG_MMU_B1, VAL
      APOKE_WORD  REG_MMU_W1, DST
      APOKE_WORD  REG_MMU_W2, LEN
      int         INT_MEMSET

      SLEEP 200

      pop a
}

macro MEMCPY DST, SRC, LEN {
      push a
      APOKE_WORD  REG_MMU_W1, DST
      APOKE_WORD  REG_MMU_W2, SRC
      APOKE_WORD  REG_MMU_W3, LEN
      int         INT_MEMCPY

      SLEEP 200

      pop a
}

macro PRG2MEM    DST, SRC, LEN {
      push a
      APOKE_WORD  REG_MMU_W1, DST
      APOKE_WORD  REG_MMU_W2, SRC
      APOKE_WORD  REG_MMU_W3, LEN
      int         INT_PRG2MEM

      SLEEP 200

      pop a
}

macro PRG2GPU    DST, SRC, LEN {
      push a
      APOKE_WORD  REG_GFX_W1, DST
      APOKE_WORD  REG_GFX_W2, SRC
      APOKE_WORD  REG_GFX_W3, LEN
      int         INT_PRG2GPU

      SLEEP 200
      pop a
}

macro CLS   PLANE, PATTERN {
      MEMSET (REG_GFX_PLANE0_COLOUR + (MEM_GFX_PLANE_SIZE * PLANE)), PATTERN, MEM_GFX_PLANE_SIZE
}

macro SPLAT PLANE, IMAGE {
      PRG2MEM (REG_GFX_PLANE0_COLOUR + (MEM_GFX_PLANE_SIZE * PLANE)), (IMAGE), MEM_GFX_PLANE_SIZE
}

macro BEGIN NAME {
      NAME:
}

macro END {
      return
}

macro APUTCHAR P, X, Y, C {
      APOKE ((REG_GFX_PLANE0_COLOUR + (MEM_GFX_PLANE_SIZE * P)) + X + (Y * 40)), C
}

macro APUTCHAR1 P, X, Y, C {
      APOKE ((REG_GFX_PLANE1_COLOUR) + X + (Y * 40)), C
}

macro PRINT_AT [P, X, Y, x] {
      store ((REG_GFX_PLANE0_COLOUR + (MEM_GFX_PLANE_SIZE * P)) + X + (Y * 40)), x
}

macro PUSH_MMUBANK {
      load a, MMU_BANK
      push a
}

macro POP_MMUBANK {
      pop a
      store MMU_BANK, a
}

macro PUSH_MMUBANKZ {
      load z, MMU_BANK
      push z
}

macro POP_MMUBANKZ {
      pop z
      store MMU_BANK, z
}

macro STORE_IMM ADDR, VAL {
      push a
      set a, VAL
      store ADDR, a
      pop a
}

macro MMU.a V {
      APOKE MMU_BANK, V
}

macro MMU.z V {
      ZPOKE MMU_BANK, V
}

macro printl TXT, LL {
            bits = 16
            display TXT
            repeat bits/4
                  d = '0' + LL shr (bits-%*4) and 0Fh
                  if d > '9'
                        d = d + 'A'-'9'-1
                  end if
                  display d
            end repeat
            display 13,10
}

macro rpad AMOUNT {
            len = 2048 - $ - AMOUNT
            repeat len
                  db $CD
            end repeat
}

macro RJMP x {
      .here:
            addr = x - .here
            if (addr < -128 | addr > 127)
            'Address exceeds relative range'
            end if
            db $A4
            db addr
}

