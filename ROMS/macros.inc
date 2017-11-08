
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
