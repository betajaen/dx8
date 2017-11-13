
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

macro INTERRUPT_TABLE RESET_ADDR, HBLANK_ADDR, VBLANK_ADDR {
      dw RESET_ADDR           ; Reset
      dw HBLANK_ADDR          ; HBlank
      dw VBLANK_ADDR          ; VBlank
      dw 0                    ; 4
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
      APOKE       MMU_B1, VAL
      APOKE_WORD  MMU_W1, DST
      APOKE_WORD  MMU_W2, LEN
      int         INT_MEMSET

      SLEEP 200

      pop a
}

macro MEMCPY DST, SRC, LEN {
      push a
      APOKE_WORD  MMU_W1, DST
      APOKE_WORD  MMU_W2, SRC
      APOKE_WORD  MMU_W3, LEN
      int         INT_MEMCPY

      SLEEP 200

      pop a
}

macro PRG2MEM    DST, SRC, LEN {
      push a
      APOKE_WORD  MMU_W1, DST
      APOKE_WORD  MMU_W2, SRC
      APOKE_WORD  MMU_W3, LEN
      int         INT_PRG2MEM

      SLEEP 200

      pop a
}

macro PRG2GPU    DST, SRC, LEN {
      push a
      APOKE_WORD  GFX_W1, DST
      APOKE_WORD  GFX_W2, SRC
      APOKE_WORD  GFX_W3, LEN
      int         INT_PRG2GPU

      SLEEP 200
      pop a
}

macro CLS   PLANE, PATTERN {
      MEMSET (GFX_PLANE0 + (GFX_PSIZE * PLANE)), PATTERN, GFX_PSIZE
}

macro SPLAT PLANE, IMAGE {
      PRG2MEM (GFX_PLANE0 + (GFX_PSIZE * PLANE)), (IMAGE), GFX_PSIZE
}

macro BEGIN NAME {
      NAME:
}

macro END {
      return
}

macro APUTCHAR P, X, Y, C {
      APOKE ((GFX_PLANE0 + (GFX_PSIZE * P)) + X + (Y * 40)), C
}

macro APUTCHAR1 P, X, Y, C {
      APOKE ((GFX_PLANE1) + X + (Y * 40)), C
}

macro PRINT_AT [P, X, Y, x] {
      store ((GFX_PLANE0 + (GFX_PSIZE * P)) + X + (Y * 40)), x
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
