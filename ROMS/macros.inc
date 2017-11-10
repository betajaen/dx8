
macro APOKE [ADDR, VALUE] {
      set a, VALUE
      store ADDR, a
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
