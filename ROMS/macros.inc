
macro APOKE [ADDR, VALUE] {
      set a, VALUE
      store (ADDR), a
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

macro interrupt [A] {
      db $EB
      db A
}

macro COPY [DST, SRC] {
      xor DST, DST
      add DST, SRC
}

macro INTERRUPT_TABLE RESET_ADDR, HBLANK_ADDR, VBLANK_ADDR {
      dw RESET_ADDR
      dw HBLANK_ADDR
      dw VBLANK_ADDR
      dw 0
      dw 0
      dw 0
      dw 0
      dw 0
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

macro MMU_MEMSET DST, VAL, LEN {
      push a
      APOKE       MMU_B1, VAL
      APOKE_WORD  MMU_W1, DST
      APOKE_WORD  MMU_W2, LEN
      int         INT_MMU_MEMSET

      SLEEP 200

      pop a
}

macro MMU_MEMCPY DST, SRC, LEN {
      push a
      APOKE_WORD  MMU_W1, DST
      APOKE_WORD  MMU_W2, SRC
      APOKE_WORD  MMU_W3, LEN
      int         INT_MMU_MEMCPY

      SLEEP 200

      pop a
}

macro MMU_PRGCPY DST, SRC, LEN {
      push a
      APOKE_WORD  MMU_W1, DST
      APOKE_WORD  MMU_W2, SRC
      APOKE_WORD  MMU_W3, LEN
      int         INT_MMU_PRGCPY

      SLEEP 200

      pop a
}

macro CLS PLANE, PATTERN {
      MMU_MEMSET (GFX_PLANE0 + (GFX_PSIZE * PLANE)), PATTERN, GFX_PSIZE
}

macro SPLAT PLANE, IMAGE {
      MMU_PRGCPY (GFX_PLANE0 + (GFX_PSIZE * PLANE)), (IMAGE), GFX_PSIZE
}
