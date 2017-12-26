#define Op(STR, NAME, OpC, SUBIN, LENGTH, CYCLES, PC_NEXT, CODE)

// Push
Op("push", Push,    0, 0, Opf_Single, Pcm_Length, 0, { Cpu_StackW_Push(PARAM_SRC);                })
Op("push", Push,    0, 1, Opf_Single, Pcm_Length, 0, { Cpu_StackB_Push(PARAM_SRC);                })
Op("push", Push,    0, 2, Opf_Word,   Pcm_Length, 0, { Cpu_StackW_PushImm(REG_IMM);               })
Op("push", Push,    0, 3, Opf_Word,   Pcm_Length, 0, { Cpu_StackB_PushImm(REG_BYTE);              })

// Pop
Op("pop", Pop,     1, 0, Opf_Single, Pcm_Length, 0, { Cpu_StackW_POp(PARAM_DST);                 })
Op("pop", Pop,     1, 1, Opf_Single, Pcm_Length, 0, { Cpu_StackB_POp(PARAM_DST);                 })

// Load
Op("load", Load,    2, 0, Opf_Single, Pcm_Length, 0, { Cpu_LoadW_Register(PARAM_DST, PARAM_SRC);  })
Op("load", Load,    2, 1, Opf_Word,   Pcm_Length, 0, { Cpu_LoadW_Address(PARAM_DST, REG_IMM);     })
Op("load", Load,    2, 2, Opf_Single, Pcm_Length, 0, { Cpu_LoadW_Register(PARAM_DST, PARAM_SRC);  })
Op("load", Load,    2, 3, Opf_Word,   Pcm_Length, 0, { Cpu_LoadW_Address(PARAM_DST, REG_IMM);     })

// Store
Op("store", Store,   3, 0, Opf_Single, Pcm_Length, 0, { Cpu_StoreW_Register(PARAM_DST, PARAM_SRC); })
Op("store", Store,   3, 1, Opf_Word,   Pcm_Length, 0, { Cpu_StoreW_Address(PARAM_DST, REG_IMM);    })
Op("store", Store,   3, 2, Opf_Single, Pcm_Length, 0, { Cpu_StoreW_Register(PARAM_DST, PARAM_SRC); })
Op("store", Store,   3, 3, Opf_Word,   Pcm_Length, 0, { Cpu_StoreW_Address(PARAM_DST, REG_IMM);    })

// Copy
Op("copy", Copy,    4, 0, Opf_Single, Pcm_Length, 0, { Cpu_CopyW(PARAM_DST, PARAM_SRC);           })
Op("copy", Copy,    4, 1, Opf_Single, Pcm_Length, 0, { Cpu_COpyB(PARAM_DST, PARAM_SRC);           })

// Set
Op("set", Set,     5, 0, Opf_Word,   Pcm_Length, 0, { Cpu_SetW(PARAM_DST, REG_IMM);              })

// Swap
Op("swap", Swap,    6, 0, Op_Single,  Pcm_Length, 0, { Cpu_ExchangeRegisters(PARAM_DST, PARAM_SRC); })
Op("swap", Swap,    6, 1, Op_Single,  Pcm_Length, 0, { Cpu_SwapRegister(PARAM_DST);                 })

// Set Quick
Op("setq", SetQuick, 7, 0, Op_Single, Pcm_Length, 0, { Cpu_SetQuick(PARAM_DST, PARAM_B); })

// Add
Op("add", Add,      8, 0, Op_Single, Pcm_Length, 0, { Cpu_AddW_Register(PARAM_DST, PARAM_SRC);  })
Op("add", Add,      8, 1, Op_Single, Pcm_Length, 0, { Cpu_AddB_Register(PARAM_DST, PARAM_SRC);  })
Op("add", Add,      8, 2, Op_Single, Pcm_Length, 0, { Cpu_AddW_Imm(PARAM_DST, REG_IMM);         })
Op("add", Add,      8, 3, Op_Single, Pcm_Length, 0, { Cpu_AddB_Imm(PARAM_DST, REG_BYTE);        })

// Sub
Op("sub", Sub,      9, 0, Op_Single, Pcm_Length, 0, { Cpu_SubW_Register(PARAM_DST, PARAM_SRC);  })
Op("sub", Sub,      9, 1, Op_Single, Pcm_Length, 0, { Cpu_SubB_Register(PARAM_DST, PARAM_SRC);  })
Op("sub", Sub,      9, 2, Op_Single, Pcm_Length, 0, { Cpu_SubW_Imm(PARAM_DST, REG_IMM);         })
Op("sub", Sub,      9, 3, Op_Single, Pcm_Length, 0, { Cpu_SubB_Imm(PARAM_DST, REG_BYTE);        })

// Add Carry
Op("adc", AddCarry, 10, 0, Op_Single, Pcm_Length, 0, { Cpu_AddCarryW_Register(PARAM_DST, PARAM_SRC);  })
Op("adc", AddCarry, 10, 1, Op_Single, Pcm_Length, 0, { Cpu_AddCarryB_Register(PARAM_DST, PARAM_SRC);  })
Op("adc", AddCarry, 10, 2, Op_Single, Pcm_Length, 0, { Cpu_AddCarryW_Imm(PARAM_DST, REG_IMM);         })
Op("adc", AddCarry, 10, 3, Op_Single, Pcm_Length, 0, { Cpu_AddCarryB_Imm(PARAM_DST, REG_BYTE);        })

// Sub Carry
Op("sbc", SubCarry, 11, 0, Op_Single, Pcm_Length, 0, { Cpu_SubCarryW_Register(PARAM_DST, PARAM_SRC);  })
Op("sbc", SubCarry, 11, 1, Op_Single, Pcm_Length, 0, { Cpu_SubCarryB_Register(PARAM_DST, PARAM_SRC);  })
Op("sbc", SubCarry, 11, 2, Op_Single, Pcm_Length, 0, { Cpu_SubCarryW_Imm(PARAM_DST, REG_IMM);         })
Op("sbc", SubCarry, 11, 3, Op_Single, Pcm_Length, 0, { Cpu_SubCarryB_Imm(PARAM_DST, REG_BYTE);        })

// Add Quick
Op("adq", AddQuick, 12, 0, Op_Single, Pcm_Length, 0, { Cpu_AddQuickW_Imm(PARAM_DST, REG_IMM);         })
Op("adq", AddQuick, 12, 1, Op_Single, Pcm_Length, 0, { Cpu_AddQuickB_Imm(PARAM_DST, REG_BYTE);        })

// Sub Quick
Op("sbq", SubQuick, 13, 0, Op_Single, Pcm_Length, 0, { Cpu_SubQuickW_Imm(PARAM_DST, REG_IMM);         })
Op("sbq", SubQuick, 13, 1, Op_Single, Pcm_Length, 0, { Cpu_SubQuickB_Imm(PARAM_DST, REG_BYTE);        })

// Inc
Op("inc", Inc,      14, 0, Op_Single, Pcm_Length, 0, { Cpu_IncW(PARAM_DST);                           })
Op("inc", Inc,      14, 1, Op_Single, Pcm_Length, 0, { Cpu_IncB(PARAM_DST);                           })

// Dec
Op("dec", Dec,      15, 0, Op_Single, Pcm_Length, 0, {  Cpu_DecW(PARAM_DST);                           })
Op("dec", Dec,      15, 1, Op_Single, Pcm_Length, 0, {  Cpu_DecB(PARAM_DST);                           })

// Mul
Op("mul", Mul,      16, 0, Op_Single, Pcm_Length, 0, { Cpu_MulW_Register(PARAM_DST, PARAM_SRC);     })
Op("mul", Mul,      16, 1, Op_Single, Pcm_Length, 0, { Cpu_MulB_Register(PARAM_DST, PARAM_SRC);     })
Op("mul", Mul,      16, 2, Op_Single, Pcm_Length, 0, { Cpu_MulW_Imm(PARAM_DST, REG_IMM);            })
Op("mul", Mul,      16, 3, Op_Single, Pcm_Length, 0, { Cpu_MulB_Imm(PARAM_DST, REG_BYTE);           })

// Div
Op("div", Div,      17, 0, Op_Single, Pcm_Length, 0, { Cpu_DivW_Register(PARAM_DST, PARAM_SRC);     })
Op("div", Div,      17, 1, Op_Single, Pcm_Length, 0, { Cpu_DivB_Register(PARAM_DST, PARAM_SRC);     })
Op("div", Div,      17, 2, Op_Single, Pcm_Length, 0, { Cpu_DivW_Imm(PARAM_DST, REG_IMM);            })
Op("div", Div,      17, 3, Op_Single, Pcm_Length, 0, { Cpu_DivB_Imm(PARAM_DST, REG_BYTE);           })

// Mod
Op("mod", Mod,      18, 0, Op_Single, Pcm_Length, 0, { Cpu_ModW_Register(PARAM_DST, PARAM_SRC);     })
Op("mod", Mod,      18, 1, Op_Single, Pcm_Length, 0, { Cpu_ModB_Register(PARAM_DST, PARAM_SRC);     })
Op("mod", Mod,      18, 2, Op_Single, Pcm_Length, 0, { Cpu_ModW_Imm(PARAM_DST, REG_IMM);            })
Op("mod", Mod,      18, 3, Op_Single, Pcm_Length, 0, { Cpu_ModB_Imm(PARAM_DST, REG_BYTE);           })

// Neg
Op("neg", Neg,      19, 0, Op_Single, Pcm_Length, 0, { Cpu_NegW(PARAM_DST);                         })
Op("neg", Neg,      19, 1, Op_Single, Pcm_Length, 0, { Cpu_NegB(PARAM_DST);                         })

// Add Binary Coded Decimal
Op("abcd", AddBCD,   20, 0, Op_Single, Pcm_Length, 0, { Cpu_AddBCD_Imm(PARAM_DST, PARAM_SRC);         })
Op("abcd", AddBCD,   20, 0, Op_Single, Pcm_Length, 0, { Cpu_AddBCD_Reg(PARAM_DST, REG_WORD);          })

// Sub Binary Coded Decimal
Op("sbcd", SubBCD,   21, 0, Op_Single, Pcm_Length, 0, { Cpu_SubBCD_Imm(PARAM_DST, PARAM_SRC);         })
Op("sbcd", SubBCD,   21, 0, Op_Single, Pcm_Length, 0, { Cpu_SubBCD_Reg(PARAM_DST, REG_WORD);          })

// Negate Binary Coded Decimal
Op("nbcd", NegBCD,   22, 0, Op_Single, Pcm_Length, 0, { Cpu_SubBCD_Imm(PARAM_DST, PARAM_SRC);         })

// Reserved
Op("i23", I23,       23, 0, Op_Single, Pcm_Length, 0, { })

// And
Op("and", And,      24, 0, Op_Single, Pcm_Length, 0, { Cpu_AndW_Register(PARAM_DST, PARAM_SRC);     })
Op("and", And,      24, 1, Op_Single, Pcm_Length, 0, { Cpu_AndB_Register(PARAM_DST, PARAM_SRC);     })
Op("and", And,      24, 2, Op_Single, Pcm_Length, 0, { Cpu_AndW_Imm(PARAM_DST, REG_IMM);            })
Op("and", And,      24, 3, Op_Single, Pcm_Length, 0, { Cpu_AndB_Imm(PARAM_DST, REG_BYTE);           })

// Or
Op("or",  Or,       25, 0, Op_Single, Pcm_Length, 0, { Cpu_OrW_Register(PARAM_DST, PARAM_SRC);     })
Op("or",  Or,       25, 1, Op_Single, Pcm_Length, 0, { Cpu_OrB_Register(PARAM_DST, PARAM_SRC);     })
Op("or",  Or,       25, 2, Op_Single, Pcm_Length, 0, { Cpu_OrW_Imm(PARAM_DST, REG_IMM);            })
Op("or",  Or,       25, 3, Op_Single, Pcm_Length, 0, { Cpu_OrB_Imm(PARAM_DST, REG_BYTE);           })

// Xor
Op("xor", Xor,      26, 0, Op_Single, Pcm_Length, 0, { Cpu_XorW_Register(PARAM_DST, PARAM_SRC);     })
Op("xor", Xor,      26, 1, Op_Single, Pcm_Length, 0, { Cpu_XorB_Register(PARAM_DST, PARAM_SRC);     })
Op("xor", Xor,      26, 2, Op_Single, Pcm_Length, 0, { Cpu_XorW_Imm(PARAM_DST, REG_IMM);            })
Op("xor", Xor,      26, 3, Op_Single, Pcm_Length, 0, { Cpu_XorB_Imm(PARAM_DST, REG_BYTE);           })

// Not
Op("not", Not,      27, 0, Op_Single, Pcm_Length, 0, { Cpu_NotW_Register(PARAM_DST);                })
Op("not", Not,      27, 1, Op_Single, Pcm_Length, 0, { Cpu_NotB_Register(PARAM_DST);                })

// Shift Left
Op("shl", ShiftLeft, 28, 0, Op_Single, Pcm_Length, 0, { Cpu_ShiftLeftB(PARAM_DST, PARAM_B);         })
Op("shl", ShiftLeft, 28, 1, Op_Single, Pcm_Length, 0, { Cpu_ShiftLeftW(PARAM_DST, PARAM_B);         })

// Shift Right
Op("shr", ShiftRight, 29, 0, Op_Single, Pcm_Length, 0, { Cpu_ShiftRightB(PARAM_DST, PARAM_B);         })
Op("shr", ShiftRight, 29, 1, Op_Single, Pcm_Length, 0, { Cpu_ShiftRightW(PARAM_DST, PARAM_B);         })

// Roll Left
Op("rol", RollLeft, 30, 0, Op_Single, Pcm_Length, 0,   { Cpu_RollLeftB(PARAM_DST, PARAM_B);         })
Op("rol", RollLeft, 30, 1, Op_Single, Pcm_Length, 0,   { Cpu_RollLeftW(PARAM_DST, PARAM_B);         })

// Roll Right
Op("ror", RollRight, 31, 0, Op_Single, Pcm_Length, 0,  { Cpu_RollRightB(PARAM_DST, PARAM_B);         })
Op("ror", RollRight, 31, 1, Op_Single, Pcm_Length, 0,  { Cpu_RollRightW(PARAM_DST, PARAM_B);         })

// Jump
Op("jmp",  Jump,      32, 0, Op_Single, Pcm_Set, 0,          { Cpu_Jump_Register(PARAM_DST);                })
Op("jmp",  Jump,      32, 1, Op_Word,   Pcm_Set, 0,          { Cpu_Jump_Imm(REG_WORD);                      })

// Jump Table
Op("jta",  JumpTable, 33, 0, Op_Word,   Pcm_Set, 0,          { Cpu_Jump_Register(PARAM_DST, REG_WORD);      })

// Jump Subrout
ine
Op("jsr",  JumpSubroutine, 34, 0, Op_Single, Pcm_Set, 0,     { Cpu_JumpSubroutine_Register(PARAM_DST);      })
Op("jsr",  JumpSubroutine, 34, 1, Op_Word,   Pcm_Set, 0,     { Cpu_JumpSubroutine_Imm(REG_WORD);            })

// Return Subroutine
Op("ret",  Return, 35, 0, Op_Single, Pcm_Set, 0,             { Cpu_Return();                                })

// Compare
Op("cmp",  Compare,  36, 0, Op_Single, Pcm_Length, 0, { Cpu_CmpW_Register(PARAM_DST, PARAM_SRC);     })
Op("cmp",  Compare,  36, 1, Op_Single, Pcm_Length, 0, { Cpu_CmpB_Register(PARAM_DST, PARAM_SRC);     })
Op("cmp",  Compare,  36, 2, Op_Single, Pcm_Length, 0, { Cpu_CmpW_Imm(PARAM_DST, REG_IMM);            })
Op("cmp",  Compare,  36, 3, Op_Single, Pcm_Length, 0, { Cpu_CmpB_Imm(PARAM_DST, REG_BYTE);           })

// Compare Bit
Op("i37",  I37,     37, 0, Op_Single, Pcm_Length, 0, { })

// Compare Flags
Op("i38",  I38,     38, 0, Op_Single, Pcm_Length, 0, { })

// Reserved
Op("i39",  I39, 0, Op_Single, Pcm_Length, 0, { })

// Branch Always
Op("bra",  BranchAlways, 40, 0, Op_Single, Pcm_Set, 0, {  Cpu_BranchAlwaysW_Register(PARAM_DST);      })
Op("bra",  BranchAlways, 40, 1, Op_Single, Pcm_Set, 0, {  Cpu_BranchAlwaysB_Imm(PARAM_BYTE);         })
Op("bra",  BranchAlways, 40, 2, Op_Word, Pcm_Set, 0,   {  Cpu_BranchAlwaysW_Imm(REG_WORD);           })

// Reserved
Op("i41",  I41,     41, 0, Op_Single, Pcm_Length, 0, { })

// Branch Always Subroutine
Op("bsr",  BranchAlwaysSubroutine, 42, 0, Op_Single, Pcm_Set, 0, {  Cpu_BranchAlwaysSubroutineW_Register(PARAM_DST);     })
Op("bsr",  BranchAlwaysSubroutine, 42, 1, Op_Single, Pcm_Set, 0, {  Cpu_BranchAlwaysSubroutineB_Imm(PARAM_BYTE);         })
Op("bsr",  BranchAlwaysSubroutine, 42, 2, Op_Word,   Pcm_Set, 0, {  Cpu_BranchAlwaysSubroutineW_Imm(REG_WORD);           })

// Branch Equals
Op("beq",  BranchEquals, 43, 1, Op_Single, Pcm_Set, 0,           {  Cpu_BranchCondB(COND_EQ(), PARAM_BYTE);            })
Op("beq",  BranchEquals, 43, 2, Op_Word,   Pcm_Set, 0,           {  Cpu_BranchCondW(COND_EQ(), REG_WORD);              })

// Branch Not Equals
Op("bne",  BranchNotEquals, 44, 1, Op_Single, Pcm_Set, 0,        {  Cpu_BranchCondB(COND_NEQ(), PARAM_BYTE);            })
Op("bne",  BranchNotEquals, 44, 2, Op_Word,   Pcm_Set, 0,        {  Cpu_BranchCondW(COND_NEQ(), REG_WORD);              })

// Branch Less Than
Op("blt",  BranchLessThan, 45, 1, Op_Single, Pcm_Set, 0,         {  Cpu_BranchCondB(COND_LT(), PARAM_BYTE);            })
Op("blt",  BranchLessThan, 45, 2, Op_Word,   Pcm_Set, 0,         {  Cpu_BranchCondW(COND_LT(), REG_WORD);              })

// Branch Greater Than
Op("bgt",  BranchGreaterThan, 46, 1, Op_Single, Pcm_Set, 0,      {  Cpu_BranchCondB(COND_GT(), PARAM_BYTE);            })
Op("bgt",  BranchGreaterThan, 46, 2, Op_Word,   Pcm_Set, 0,      {  Cpu_BranchCondW(COND_GT(), REG_WORD);              })

// Branch Less Than or Equal
Op("ble",  BranchLessThan, 47, 1, Op_Single, Pcm_Set, 0,         {  Cpu_BranchCondB(COND_LT_EQ(), PARAM_BYTE);            })
Op("ble",  BranchLessThan, 47, 2, Op_Word,   Pcm_Set, 0,         {  Cpu_BranchCondW(COND_LT_EQ(), REG_WORD);              })

// Branch Greater Than or Equal
Op("bge",  BranchGreaterThan, 48, 1, Op_Single, Pcm_Set, 0,      {  Cpu_BranchCondB(COND_GT_EQ(), PARAM_BYTE);            })
Op("bge",  BranchGreaterThan, 48, 2, Op_Word,   Pcm_Set, 0,      {  Cpu_BranchCondW(COND_GT_EQ(), REG_WORD);              })

// Branch Overflow
Op("bro",  BranchOverflow, 49, 1, Op_Single, Pcm_Set, 0,      {  Cpu_BranchCondB(COND_OVERFLOW(), PARAM_BYTE);            })
Op("bro",  BranchOverflow, 49, 2, Op_Word,   Pcm_Set, 0,      {  Cpu_BranchCondW(COND_OVERFLOW(), REG_WORD);              })

// Branch Overflow
Op("brc",  BranchCarry, 50, 1, Op_Single, Pcm_Set, 0,      {  Cpu_BranchCondB(COND_CARRY(), PARAM_BYTE);            })
Op("brc",  BranchCarry, 50, 2, Op_Word,   Pcm_Set, 0,      {  Cpu_BranchCondW(COND_CARRY(), REG_WORD);              })

// Branch More Than
Op("brm",  BranchMoreThan, 48, 1, Op_Single, Pcm_Set, 0,      {  Cpu_BranchCondB(COND_MORE(), PARAM_BYTE);            })
Op("brm",  BranchMoreThan, 48, 2, Op_Word,   Pcm_Set, 0,      {  Cpu_BranchCondW(COND_MORE(), REG_WORD);              })

// Branch Lower Than
Op("brm",  BranchLowerThan, 48, 1, Op_Single, Pcm_Set, 0,      {  Cpu_BranchCondB(COND_LOWER(), PARAM_BYTE);            })
Op("brm",  BranchLowerThan, 48, 2, Op_Word,   Pcm_Set, 0,      {  Cpu_BranchCondW(COND_LOWER(), REG_WORD);              })

// Branch More Than or Equal
Op("bme",  BranchMoreThanEqual, 48, 1, Op_Single, Pcm_Set, 0,      {  Cpu_BranchCondB(COND_MORE_EQ(), PARAM_BYTE);            })
Op("bme",  BranchMoreThanEqual, 48, 2, Op_Word,   Pcm_Set, 0,      {  Cpu_BranchCondW(COND_MORE_EQ(), REG_WORD);              })

// Branch Lower Than or Equal
Op("ble",  BranchLowerThanEqual, 48, 1, Op_Single, Pcm_Set, 0,      {  Cpu_BranchCondB(COND_LOWER_EQUAL(), PARAM_BYTE);            })
Op("ble",  BranchLowerThanEqual, 48, 2, Op_Word,   Pcm_Set, 0,      {  Cpu_BranchCondW(COND_LOWER_EQUAL(), REG_WORD);              })

// Branch Zero
Op("brz",  BranchZero, 48, 1, Op_Single, Pcm_Set, 0,      {  Cpu_BranchCondB(COND_Z(), PARAM_BYTE);            })
Op("brz",  BranchZero, 48, 2, Op_Word,   Pcm_Set, 0,      {  Cpu_BranchCondW(COND_Z(), REG_WORD);              })

// Branch Not Zero
Op("bnz",  BranchNotZero, 48, 1, Op_Single, Pcm_Set, 0,      {  Cpu_BranchCondB(COND_NOT_Z(), PARAM_BYTE);            })
Op("bnz",  BranchNotZero, 48, 2, Op_Word,   Pcm_Set, 0,      {  Cpu_BranchCondW(COND_NOT_Z(), REG_WORD);              })

// Branch Positive
Op("brp",  BranchPositive, 48, 1, Op_Single, Pcm_Set, 0,      {  Cpu_BranchCondB(COND_POSITVE(), PARAM_BYTE);            })
Op("brp",  BranchPositive, 48, 2, Op_Word,   Pcm_Set, 0,      {  Cpu_BranchCondW(COND_POSITVE(), REG_WORD);              })

// Branch Positive
Op("brn",  BranchNegative, 48, 1, Op_Single, Pcm_Set, 0,      {  Cpu_BranchCondB(COND_NEGATIVE(), PARAM_BYTE);            })
Op("brn",  BranchNegative, 48, 2, Op_Word,   Pcm_Set, 0,      {  Cpu_BranchCondW(COND_NEGATIVE(), REG_WORD);              })



