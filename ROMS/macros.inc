
macro APOKE [ADDR, VALUE] {
      set a, VALUE
      store a, ADDR
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
