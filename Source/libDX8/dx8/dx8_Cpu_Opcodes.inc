// Nop
OP(Nop,      None,  Opf_Single,     Pcm_Length, 1, {      })

// Push
OP(Push,     x,     Opf_Single,     Pcm_Length, 3, { Cpu_Stack_PushByte(REG_X);    })
OP(Push,     y,     Opf_Single,     Pcm_Length, 3, { Cpu_Stack_PushByte(REG_Y);    })
OP(Push,     z,     Opf_Single,     Pcm_Length, 3, { Cpu_Stack_PushByte(REG_Z);    })
OP(Push,     w,     Opf_Single,     Pcm_Length, 3, { Cpu_Stack_PushByte(REG_W);    })
OP(Push,     a,     Opf_Single,     Pcm_Length, 3, { Cpu_Stack_PushByte(REG_A);    })
OP(Push,     i,     Opf_Single,     Pcm_Length, 3, { Cpu_Stack_PushWord(REG_I);    })
OP(Push,     j,     Opf_Single,     Pcm_Length, 3, { Cpu_Stack_PushWord(REG_J);    })
OP(Push,     F,     Opf_Single,     Pcm_Length, 3, { Cpu_Stack_PushFlags();        })
OP(PushB,    B,     Opf_Byte,       Pcm_Length, 3, { Cpu_Stack_PushByte(REG_IMM);  })
OP(PushW,    W,     Opf_Word,       Pcm_Length, 3, { Cpu_Stack_PushWord(REG_WORD); })

// Pop
OP(Pop,      x,     Opf_Single,     Pcm_Length, 3, { REG_X = Cpu_Stack_PopByte();  })
OP(Pop,      y,     Opf_Single,     Pcm_Length, 3, { REG_Y = Cpu_Stack_PopByte();  })
OP(Pop,      z,     Opf_Single,     Pcm_Length, 3, { REG_Z = Cpu_Stack_PopByte();  })
OP(Pop,      w,     Opf_Single,     Pcm_Length, 3, { REG_W = Cpu_Stack_PopByte();  })
OP(Pop,      a,     Opf_Single,     Pcm_Length, 3, { REG_A = Cpu_Stack_PopByte();  })
OP(Pop,      i,     Opf_Single,     Pcm_Length, 3, { REG_I = Cpu_Stack_PopWord();  })
OP(Pop,      j,     Opf_Single,     Pcm_Length, 3, { REG_J = Cpu_Stack_PopWord();  })
OP(Pop,      F,     Opf_Single,     Pcm_Length, 3, { Cpu_Stack_PopFlags();         })

// Stack to J
OP(stj,      None,  Opf_Single,     Pcm_Length, 1, { REG_J = REG_STACK;            })

// J to Stack
OP(jst,      None,  Opf_Single,     Pcm_Length, 1, { REG_STACK = REG_J;            })

// PcStack to J
OP(pcj,      None,  Opf_Single,     Pcm_Length, 1, { REG_J = REG_PC_STACK;         })

// J to PcStack
OP(jpc,      None,  Opf_Single,     Pcm_Length, 1, { REG_PC_STACK = REG_J;         })

// Flags to z
OP(flz,      None,  Opf_Single,     Pcm_Length, 1, { REG_Z = REG_FLAGS;            })

// Z to Flags
OP(zfl,      None,  Opf_Single,     Pcm_Length, 1, { REG_FLAGS = REG_Z;            })

// Load
OP(Load,     ai,    Opf_Single,     Pcm_Length, 6, { REG_A = FlagsOpB(Cpu_Memory_LoadByte(REG_I));    })
OP(Load,     zi,    Opf_Single,     Pcm_Length, 6, { REG_Z = FlagsOpB(Cpu_Memory_LoadByte(REG_I));    })
OP(Load,     wi,    Opf_Single,     Pcm_Length, 6, { REG_W = FlagsOpB(Cpu_Memory_LoadByte(REG_I));    })
OP(Load,     aj,    Opf_Single,     Pcm_Length, 6, { REG_A = FlagsOpB(Cpu_Memory_LoadByte(REG_J));    })
OP(Load,     xj,    Opf_Single,     Pcm_Length, 6, { REG_X = FlagsOpB(Cpu_Memory_LoadByte(REG_J));    })
OP(Load,     yj,    Opf_Single,     Pcm_Length, 6, { REG_Y = FlagsOpB(Cpu_Memory_LoadByte(REG_J));    })
OP(Load,     xA,    Opf_Address,    Pcm_Length, 4, { REG_X = FlagsOpB(Cpu_Memory_LoadByte(REG_WORD)); })
OP(Load,     yA,    Opf_Address,    Pcm_Length, 4, { REG_Y = FlagsOpB(Cpu_Memory_LoadByte(REG_WORD)); })
OP(Load,     zA,    Opf_Address,    Pcm_Length, 4, { REG_Z = FlagsOpB(Cpu_Memory_LoadByte(REG_WORD)); })
OP(Load,     wA,    Opf_Address,    Pcm_Length, 4, { REG_W = FlagsOpB(Cpu_Memory_LoadByte(REG_WORD)); })
OP(Load,     aA,    Opf_Address,    Pcm_Length, 4, { REG_A = FlagsOpB(Cpu_Memory_LoadByte(REG_WORD)); })
OP(Load,     iA,    Opf_Address,    Pcm_Length, 8, { REG_I = FlagsOpW(Cpu_Memory_LoadWord(REG_WORD)); })
OP(Load,     jA,    Opf_Address,    Pcm_Length, 8, { REG_J = FlagsOpW(Cpu_Memory_LoadWord(REG_WORD)); })

// Store
OP(Store,    ia,    Opf_Single,     Pcm_Length, 6, { Cpu_Memory_StoreByte(REG_I, REG_A);              })
OP(Store,    iw,    Opf_Single,     Pcm_Length, 6, { Cpu_Memory_StoreByte(REG_I, REG_W);              })
OP(Store,    iz,    Opf_Single,     Pcm_Length, 6, { Cpu_Memory_StoreByte(REG_I, REG_Z);              })
OP(Store,    ja,    Opf_Single,     Pcm_Length, 6, { Cpu_Memory_StoreByte(REG_J, REG_A);              })
OP(Store,    jx,    Opf_Single,     Pcm_Length, 6, { Cpu_Memory_StoreByte(REG_J, REG_X);              })
OP(Store,    jy,    Opf_Single,     Pcm_Length, 6, { Cpu_Memory_StoreByte(REG_J, REG_Y);              })
OP(Store,    Ax,    Opf_Address,    Pcm_Length, 4, { Cpu_Memory_StoreByte(REG_WORD, REG_X);           })
OP(Store,    Ay,    Opf_Address,    Pcm_Length, 4, { Cpu_Memory_StoreByte(REG_WORD, REG_Y);           })
OP(Store,    Az,    Opf_Address,    Pcm_Length, 4, { Cpu_Memory_StoreByte(REG_WORD, REG_Z);           })
OP(Store,    Aw,    Opf_Address,    Pcm_Length, 4, { Cpu_Memory_StoreByte(REG_WORD, REG_W);           })
OP(Store,    Aa,    Opf_Address,    Pcm_Length, 4, { Cpu_Memory_StoreByte(REG_WORD, REG_A);           })
OP(Store,    Ai,    Opf_Address,    Pcm_Length, 8, { Cpu_Memory_StoreWord(REG_WORD, REG_I);           })
OP(Store,    Aj,    Opf_Address,    Pcm_Length, 8, { Cpu_Memory_StoreWord(REG_WORD, REG_J);           })

// Call
OP(Call,     A,     Opf_Address,    Pcm_Set,    4, { Cpu_Call_Always(Opf_Address, REG_WORD)           })
OP(CallEq,   A,     Opf_Address,    Pcm_Set,    4, { Cpu_Call_Conditional(FL_Z == 1, Opf_Address, REG_WORD); })
OP(CallNeq,  A,     Opf_Address,    Pcm_Set,    4, { Cpu_Call_Conditional(FL_Z == 0, Opf_Address, REG_WORD); })
OP(CallGt,   A,     Opf_Address,    Pcm_Set,    4, { Cpu_Call_Conditional(FL_G == 1, Opf_Address, REG_WORD); })
OP(CallLt,   A,     Opf_Address,    Pcm_Set,    4, { Cpu_Call_Conditional(FL_G == 0 && FL_Z == 0, Opf_Address, REG_WORD); })
OP(CallZ,    A,     Opf_Address,    Pcm_Set,    4, { Cpu_Call_Conditional(FL_Z == 1, Opf_Address, REG_WORD); })
OP(CallNotZ, A,     Opf_Address,    Pcm_Set,    4, { Cpu_Call_Conditional(FL_Z == 0, Opf_Address, REG_WORD); })

// Return
OP(Return,   None,  Opf_Single,     Pcm_Set,    4, { Cpu_Call_Return();                                      })

// Copy
OP(Copy,     ax,    Opf_Single,     Pcm_Length, 1, { REG_A = REG_X;                                          })
OP(Copy,     ay,    Opf_Single,     Pcm_Length, 1, { REG_A = REG_Y;                                          })
OP(Copy,     az,    Opf_Single,     Pcm_Length, 1, { REG_A = REG_Z;                                          })
OP(Copy,     aw,    Opf_Single,     Pcm_Length, 1, { REG_A = REG_W;                                          })
OP(Copy,     xa,    Opf_Single,     Pcm_Length, 1, { REG_X = REG_A;                                          })
OP(Copy,     ya,    Opf_Single,     Pcm_Length, 1, { REG_Y = REG_A;                                          })
OP(Copy,     za,    Opf_Single,     Pcm_Length, 1, { REG_Z = REG_A;                                          })
OP(Copy,     wa,    Opf_Single,     Pcm_Length, 1, { REG_W = REG_A;                                          })

// Set
OP(Set,      xB,    Opf_Byte,       Pcm_Length, 3, { REG_X = REG_IMM;                                        })
OP(Set,      yB,    Opf_Byte,       Pcm_Length, 3, { REG_Y = REG_IMM;                                        })
OP(Set,      zB,    Opf_Byte,       Pcm_Length, 3, { REG_Z = REG_IMM;                                        })
OP(Set,      wB,    Opf_Byte,       Pcm_Length, 3, { REG_W = REG_IMM;                                        })
OP(Set,      aB,    Opf_Byte,       Pcm_Length, 3, { REG_A = REG_IMM;                                        })
OP(Set,      iW,    Opf_Word,       Pcm_Length, 3, { REG_I = REG_WORD;                                       })
OP(Set,      jW,    Opf_Word,       Pcm_Length, 3, { REG_J = REG_WORD;                                       })

// Add
OP(Add,      ax,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A + REG_X);                        })
OP(Add,      ay,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A + REG_Y);                        })
OP(Add,      az,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A + REG_Z);                        })
OP(Add,      aw,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A + REG_W);                        })
OP(Add,      ij,    Opf_Single,     Pcm_Length, 4, { REG_I = FlagsOpW(REG_I + REG_J);                        })
OP(Add,      ia,    Opf_Single,     Pcm_Length, 4, { REG_I = FlagsOpW(REG_I + REG_A);                        })
OP(Add,      iz,    Opf_Single,     Pcm_Length, 4, { REG_I = FlagsOpW(REG_I + REG_Z);                        })
OP(Add,      iw,    Opf_Single,     Pcm_Length, 4, { REG_I = FlagsOpW(REG_I + REG_W);                        })
OP(Add,      ja,    Opf_Single,     Pcm_Length, 4, { REG_J = FlagsOpW(REG_J + REG_A)                         })
OP(Add,      jx,    Opf_Single,     Pcm_Length, 4, { REG_J = FlagsOpW(REG_J + REG_X)                         })
OP(Add,      jy,    Opf_Single,     Pcm_Length, 4, { REG_J = FlagsOpW(REG_J + REG_Y)                         })
OP(Add,      iW,    Opf_Word,       Pcm_Length, 4, { REG_I = FlagsOpW(REG_I + REG_WORD)                      })
OP(Add,      jW,    Opf_Word,       Pcm_Length, 4, { REG_J = FlagsOpW(REG_J + REG_WORD)                      })
OP(Add,      xB,    Opf_Byte,       Pcm_Length, 3, { REG_X = FlagsOpB(REG_X + REG_IMM)                       })
OP(Add,      yB,    Opf_Byte,       Pcm_Length, 3, { REG_Y = FlagsOpB(REG_Y + REG_IMM)                       })
OP(Add,      zB,    Opf_Byte,       Pcm_Length, 3, { REG_Z = FlagsOpB(REG_Z + REG_IMM)                       })
OP(Add,      wB,    Opf_Byte,       Pcm_Length, 3, { REG_W = FlagsOpB(REG_W + REG_IMM)                       })
OP(Add,      aB,    Opf_Byte,       Pcm_Length, 3, { REG_A = FlagsOpB(REG_A + REG_IMM)                       })

// Sub
OP(Sub,      ax,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A - REG_X);                        })
OP(Sub,      ay,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A - REG_Y);                        })
OP(Sub,      az,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A - REG_Z);                        })
OP(Sub,      aw,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A - REG_W);                        })
OP(Sub,      xB,    Opf_Byte,       Pcm_Length, 3, { REG_X = FlagsOpB(REG_X - REG_IMM)                       })
OP(Sub,      yB,    Opf_Byte,       Pcm_Length, 3, { REG_Y = FlagsOpB(REG_Y - REG_IMM)                       })
OP(Sub,      zB,    Opf_Byte,       Pcm_Length, 3, { REG_Z = FlagsOpB(REG_Z - REG_IMM)                       })
OP(Sub,      wB,    Opf_Byte,       Pcm_Length, 3, { REG_W = FlagsOpB(REG_W - REG_IMM)                       })
OP(Sub,      aB,    Opf_Byte,       Pcm_Length, 3, { REG_A = FlagsOpB(REG_A - REG_IMM)                       })

// Mul
OP(Mul,      ax,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A * REG_X);                        })
OP(Mul,      aB,    Opf_Byte,       Pcm_Length, 3, { REG_A = FlagsOpB(REG_A * REG_IMM);                      })
OP(Mul,      ij,    Opf_Single,     Pcm_Length, 3, { REG_I = FlagsOpW(REG_I * REG_J);                        })
OP(Mul,      iW,    Opf_Word,       Pcm_Length, 3, { REG_I = FlagsOpW(REG_I * REG_WORD);                     })
OP(Mul,      jW,    Opf_Word,       Pcm_Length, 3, { REG_J = FlagsOpW(REG_J * REG_WORD);                     })

// Div
OP(Div,      ax,    Opf_Single,     Pcm_Length, 3, { DIVISOR_CHECK(REG_X);    REG_A = FlagsOpB(REG_A / REG_X);   })
OP(Div,      aB,    Opf_Byte,       Pcm_Length, 3, { DIVISOR_CHECK(REG_IMM);  REG_A = FlagsOpB(REG_A / REG_IMM); })
OP(Div,      ij,    Opf_Single,     Pcm_Length, 3, { DIVISOR_CHECK(REG_J);    REG_I = FlagsOpW(REG_I / REG_J);   })
OP(Div,      iW,    Opf_Word,       Pcm_Length, 3, { DIVISOR_CHECK(REG_WORD); REG_I = FlagsOpW(REG_I / REG_WORD);})
OP(Div,      jW,    Opf_Word,       Pcm_Length, 3, { DIVISOR_CHECK(REG_WORD); REG_J = FlagsOpW(REG_J / REG_WORD);})

// Mod
OP(Mod,      ax,    Opf_Single,     Pcm_Length, 3, { DIVISOR_CHECK(REG_X);    REG_A = FlagsOpB(REG_A % REG_X);   })
OP(Mod,      aB,    Opf_Byte,       Pcm_Length, 3, { DIVISOR_CHECK(REG_IMM);  REG_A = FlagsOpB(REG_A % REG_IMM); })
OP(Mod,      ij,    Opf_Single,     Pcm_Length, 3, { DIVISOR_CHECK(REG_J);    REG_I = FlagsOpW(REG_I % REG_J);   })
OP(Mod,      iW,    Opf_Word,       Pcm_Length, 3, { DIVISOR_CHECK(REG_WORD); REG_I = FlagsOpW(REG_I % REG_WORD);})
OP(Mod,      jW,    Opf_Word,       Pcm_Length, 3, { DIVISOR_CHECK(REG_WORD); REG_J = FlagsOpW(REG_J % REG_WORD);})

// Neg
OP(Neg,      a,     Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(-REG_A); })
OP(Neg,      x,     Opf_Single,     Pcm_Length, 3, { REG_X = FlagsOpB(-REG_X); })

// Inc
OP(Inc,      a,     Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A + 1); })
OP(Inc,      x,     Opf_Single,     Pcm_Length, 3, { REG_X = FlagsOpB(REG_X + 1); })
OP(Inc,      y,     Opf_Single,     Pcm_Length, 3, { REG_Y = FlagsOpB(REG_Y + 1); })
OP(Inc,      z,     Opf_Single,     Pcm_Length, 3, { REG_Z = FlagsOpB(REG_Z + 1); })
OP(Inc,      w,     Opf_Single,     Pcm_Length, 3, { REG_W = FlagsOpB(REG_W + 1); })
OP(Inc,      i,     Opf_Single,     Pcm_Length, 3, { REG_I = FlagsOpW(REG_I + 1); })
OP(Inc,      j,     Opf_Single,     Pcm_Length, 3, { REG_J = FlagsOpW(REG_J + 1); })

// Dec
OP(Dec,      a,     Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A - 1); })
OP(Dec,      x,     Opf_Single,     Pcm_Length, 3, { REG_X = FlagsOpB(REG_X - 1); })
OP(Dec,      y,     Opf_Single,     Pcm_Length, 3, { REG_Y = FlagsOpB(REG_Y - 1); })
OP(Dec,      z,     Opf_Single,     Pcm_Length, 3, { REG_Z = FlagsOpB(REG_Z - 1); })
OP(Dec,      w,     Opf_Single,     Pcm_Length, 3, { REG_W = FlagsOpB(REG_W - 1); })
OP(Dec,      i,     Opf_Single,     Pcm_Length, 3, { REG_I = FlagsOpW(REG_I - 1); })
OP(Dec,      j,     Opf_Single,     Pcm_Length, 3, { REG_J = FlagsOpW(REG_J - 1); })

// Cmp
OP(Cmp,      ax,    Opf_Single,     Pcm_Length, 3, { Cpu_CompareByte(REG_A, REG_X);     })
OP(Cmp,      ay,    Opf_Single,     Pcm_Length, 3, { Cpu_CompareByte(REG_A, REG_Y);     })
OP(Cmp,      az,    Opf_Single,     Pcm_Length, 3, { Cpu_CompareByte(REG_A, REG_Z);     })
OP(Cmp,      aw,    Opf_Single,     Pcm_Length, 3, { Cpu_CompareByte(REG_A, REG_W);     })
OP(Cmp,      a,     Opf_Single,     Pcm_Length, 2, { FlagsOpB(REG_A);                   })
OP(Cmp,      x,     Opf_Single,     Pcm_Length, 2, { FlagsOpB(REG_X);                   })
OP(Cmp,      y,     Opf_Single,     Pcm_Length, 2, { FlagsOpB(REG_Y);                   })
OP(Cmp,      z,     Opf_Single,     Pcm_Length, 2, { FlagsOpB(REG_Z);                   })
OP(Cmp,      w,     Opf_Single,     Pcm_Length, 2, { FlagsOpB(REG_W);                   })
OP(Cmp,      i,     Opf_Single,     Pcm_Length, 2, { FlagsOpW(REG_I);                   })
OP(Cmp,      j,     Opf_Single,     Pcm_Length, 2, { FlagsOpW(REG_J);                   })
OP(Cmp,      xB,    Opf_Byte,       Pcm_Length, 3, { Cpu_CompareByte(REG_X, REG_IMM);   })
OP(Cmp,      yB,    Opf_Byte,       Pcm_Length, 3, { Cpu_CompareByte(REG_Y, REG_IMM);   })
OP(Cmp,      zB,    Opf_Byte,       Pcm_Length, 3, { Cpu_CompareByte(REG_Z, REG_IMM);   })
OP(Cmp,      wB,    Opf_Byte,       Pcm_Length, 3, { Cpu_CompareByte(REG_W, REG_IMM);   })
OP(Cmp,      aB,    Opf_Byte,       Pcm_Length, 3, { Cpu_CompareByte(REG_A, REG_IMM);   })
OP(Cmp,      ij,    Opf_Single,     Pcm_Length, 6, { Cpu_CompareWord(REG_I, REG_J);     })
OP(Cmp,      iW,    Opf_Word,       Pcm_Length, 6, { Cpu_CompareWord(REG_I, REG_WORD);  })
OP(Cmp,      jW,    Opf_Word,       Pcm_Length, 6, { Cpu_CompareWord(REG_J, REG_WORD);  })

// Bit Test
OP(Bit,      xB,    Opf_Byte,       Pcm_Length, 3, { Cpu_CompareBit(REG_X, REG_IMM);        })
OP(Bit,      yB,    Opf_Byte,       Pcm_Length, 3, { Cpu_CompareBit(REG_Y, REG_IMM);        })
OP(Bit,      zB,    Opf_Byte,       Pcm_Length, 3, { Cpu_CompareBit(REG_Z, REG_IMM);        })
OP(Bit,      wB,    Opf_Byte,       Pcm_Length, 3, { Cpu_CompareBit(REG_W, REG_IMM);        })
OP(Bit,      aB,    Opf_Byte,       Pcm_Length, 3, { Cpu_CompareBit(REG_A, REG_IMM);        })

// And
OP(And,      ax,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A & REG_X);  })
OP(And,      ay,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A & REG_Y);  })
OP(And,      az,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A & REG_Z);  })
OP(And,      aw,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A & REG_W);  })
OP(And,      xB,    Opf_Byte,       Pcm_Length, 3, { REG_X = FlagsOpB(REG_X & REG_IMM) })
OP(And,      yB,    Opf_Byte,       Pcm_Length, 3, { REG_Y = FlagsOpB(REG_Y & REG_IMM) })
OP(And,      zB,    Opf_Byte,       Pcm_Length, 3, { REG_Z = FlagsOpB(REG_Z & REG_IMM) })
OP(And,      wB,    Opf_Byte,       Pcm_Length, 3, { REG_W = FlagsOpB(REG_W & REG_IMM) })
OP(And,      aB,    Opf_Byte,       Pcm_Length, 3, { REG_A = FlagsOpB(REG_A & REG_IMM) })

// Or
OP(Or,       ax,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A | REG_X);  })
OP(Or,       ay,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A | REG_Y);  })
OP(Or,       az,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A | REG_Z);  })
OP(Or,       aw,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A | REG_W);  })
OP(Or,       xB,    Opf_Byte,       Pcm_Length, 3, { REG_X = FlagsOpB(REG_X | REG_IMM) })
OP(Or,       yB,    Opf_Byte,       Pcm_Length, 3, { REG_Y = FlagsOpB(REG_Y | REG_IMM) })
OP(Or,       zB,    Opf_Byte,       Pcm_Length, 3, { REG_Z = FlagsOpB(REG_Z | REG_IMM) })
OP(Or,       wB,    Opf_Byte,       Pcm_Length, 3, { REG_W = FlagsOpB(REG_W | REG_IMM) })
OP(Or,       aB,    Opf_Byte,       Pcm_Length, 3, { REG_A = FlagsOpB(REG_A | REG_IMM) })

// Xor
OP(Xor,      ax,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A ^ REG_X);  })
OP(Xor,      ay,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A ^ REG_Y);  })
OP(Xor,      az,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A ^ REG_Z);  })
OP(Xor,      aw,    Opf_Single,     Pcm_Length, 3, { REG_A = FlagsOpB(REG_A ^ REG_W);  })
OP(Xor,      xB,    Opf_Byte,       Pcm_Length, 3, { REG_X = FlagsOpB(REG_X ^ REG_IMM) })
OP(Xor,      yB,    Opf_Byte,       Pcm_Length, 3, { REG_Y = FlagsOpB(REG_Y ^ REG_IMM) })
OP(Xor,      zB,    Opf_Byte,       Pcm_Length, 3, { REG_Z = FlagsOpB(REG_Z ^ REG_IMM) })
OP(Xor,      wB,    Opf_Byte,       Pcm_Length, 3, { REG_W = FlagsOpB(REG_W ^ REG_IMM) })
OP(Xor,      aB,    Opf_Byte,       Pcm_Length, 3, { REG_A = FlagsOpB(REG_A ^ REG_IMM) })

// Not
OP(Not,      x,     Opf_Single,     Pcm_Length, 1, { REG_X = FlagsOpB(~REG_X);         })
OP(Not,      y,     Opf_Single,     Pcm_Length, 1, { REG_Y = FlagsOpB(~REG_Y);         })
OP(Not,      z,     Opf_Single,     Pcm_Length, 1, { REG_Z = FlagsOpB(~REG_Z);         })
OP(Not,      w,     Opf_Single,     Pcm_Length, 1, { REG_W = FlagsOpB(~REG_W);         })
OP(Not,      a,     Opf_Single,     Pcm_Length, 1, { REG_A = FlagsOpB(~REG_A);         })

// Shift Left
OP(ShiftLeft, aB,   Opf_Byte,       Pcm_Length, 2, { REG_A = FlagsOpB(REG_A << REG_IMM);  })

// Shift Right
OP(ShiftRight, aB,  Opf_Byte,       Pcm_Length, 2, { REG_A = FlagsOpB(REG_A >> REG_IMM);  })

// Jmp
OP(Jmp,       A,    Opf_Address,    Pcm_Set, 2,    { Cpu_Jump_Always(REG_WORD); })
OP(Jmp,       i,    Opf_Single,     Pcm_Set, 3,    { Cpu_Jump_Always(REG_I); })
OP(Jmp,       j,    Opf_Single,     Pcm_Set, 3,    { Cpu_Jump_Always(REG_J); })
OP(Jmp,       ia,   Opf_Single,     Pcm_Set, 4,    { Cpu_Jump_Always(REG_I + REG_A); })
OP(Jmp,       ja,   Opf_Single,     Pcm_Set, 4,    { Cpu_Jump_Always(REG_J + REG_A); })
OP(Jmp,       Aa,   Opf_Address,    Pcm_Set, 4,    { Cpu_Jump_Always(REG_WORD + REG_A); })
OP(RJmp,      B,    Opf_Byte,       Pcm_Set, 2,    { Cpu_JumpRel_Always(REG_IMM); })
OP(JmpTable,  Aa,   Opf_Address,    Pcm_Set, 4,    { Cpu_Jump_Branch(REG_A, REG_WORD); })
OP(CallTable, Aa,   Opf_Address,    Pcm_Set, 4,    { Cpu_Call_Branch(REG_A, REG_WORD, Opf_Address); })

// Jmp Eq
OP(JmpEq,     A,    Opf_Address,    Pcm_Set, 2,    { Cpu_Jump_Conditional(FL_Z == 1, REG_WORD, Opf_Address); })
OP(RJmpEq,    B,    Opf_Byte,       Pcm_Set, 2,    { Cpu_JumpRel_Conditional(FL_Z == 1, REG_IMM, Opf_Byte); })

// Jmp Neq
OP(JmpNeq,    A,    Opf_Address,    Pcm_Set, 2,    { Cpu_Jump_Conditional(FL_Z == 0, REG_WORD, Opf_Address); })
OP(RJmpNeq,   B,    Opf_Byte,       Pcm_Set, 2,    { Cpu_JumpRel_Conditional(FL_Z == 0, REG_IMM, Opf_Byte); })

// Jmp Gt
OP(JmpGt,     A,    Opf_Address,    Pcm_Set, 2,    { Cpu_Jump_Conditional(FL_G == 1, REG_WORD, Opf_Address); })
OP(RJmpGt,    B,    Opf_Byte,       Pcm_Set, 2,    { Cpu_JumpRel_Conditional(FL_G == 1, REG_IMM, Opf_Byte); })

// Jmp Lt
OP(JmpLt,     A,    Opf_Address,    Pcm_Set, 2,    { Cpu_Jump_Conditional(FL_G == 0 && FL_Z == 0, REG_WORD, Opf_Address); })
OP(RJmpLt,    B,    Opf_Byte,       Pcm_Set, 2,    { Cpu_JumpRel_Conditional(FL_G == 0 && FL_Z == 0, REG_IMM, Opf_Byte); })

// Jmp If Zero
OP(JmpZ,      A,    Opf_Address,    Pcm_Set, 2,    { Cpu_Jump_Conditional(FL_Z == 1, REG_WORD, Opf_Address); })
OP(RJmpZ,     B,    Opf_Byte,       Pcm_Set, 2,    { Cpu_JumpRel_Conditional(FL_Z == 1, REG_IMM, Opf_Byte); })

// Jmp If Not Zero
OP(JmpNotZ,   A,    Opf_Address,    Pcm_Set, 2,    { Cpu_Jump_Conditional(FL_Z == 0, REG_WORD, Opf_Address); })
OP(RJmpNotZ,  B,    Opf_Byte,       Pcm_Set, 2,    { Cpu_JumpRel_Conditional(FL_Z == 0, REG_IMM, Opf_Byte); })

// Jump Carry
OP(JmpC,      A,    Opf_Address,    Pcm_Set, 2,    { Cpu_Jump_Conditional(FL_C == 1, imm, Opf_Address); })

// Interrupt
OP(Int,       B,    Opf_Byte,       Pcm_Length, 4, { Cpu_Interrupt_Emit(REG_IMM); })

// Resume
OP(Resume,    None, Opf_Single,     Pcm_Set, 4,    { Cpu_Interrupt_Resume(); })

// Carry Clear
OP(Clc,       None, Opf_Single,     Pcm_Length, 1, { cpu.flags.bCarry = 0; })

// Set Clear
OP(Sec,       None, Opf_Single,     Pcm_Length, 1, { cpu.flags.bCarry = 1; })

// Debug
OP(dbr,       W,    Opf_Byte,      Pcm_Length, 1,  { Cpu_Debug_Register(REG_IMM); })
OP(dba,       B,    Opf_Address,   Pcm_Length, 1,  { Cpu_Debug_Address(REG_WORD);  })
OP(dbb,       None, Opf_Single,    Pcm_Length, 1,  { Cpu_Debug_Breakpoint(); })
OP(dbn,       W,    Opf_Address,   Pcm_Length, 1,  { Cpu_Debug_Note(REG_WORD);  })
OP(dbo,       B,    Opf_Byte,      Pcm_Length, 1,  { Cpu_Debug_Option(REG_IMM); })

// Sti
OP(sti,       None, Opf_Single,    Pcm_Length, 1,  { Cpu_Interrupt_SetEnabled(false); })

// Rti
OP(rti,       None, Opf_Single,    Pcm_Length, 1,  { Cpu_Interrupt_SetEnabled(true);  })

// io - raise/lowers the 2 two IO pins, effectively controlling the MMU (set page, clear page, reset, etc.)
//      Only first two bits are used.
OP(io,        None, Opf_Byte,      Pcm_Length, 1,  { Cpu_Io(REG_IMM);                 })

// ivt - set's the address to the first entry of the vector interrupt table
OP(ivt,       None, Opf_Address,   Pcm_Length, 1,  { Cpu_SetVectorTableAddress(REG_WORD); })
