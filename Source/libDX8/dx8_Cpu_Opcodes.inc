// Nop
OP(Nop, None, Opf_Single, 1, { DO_OP_NOP(); })

// Push
OP(Push, x, Opf_Single, 3,      { DO_OP_PUSH(REG_X); })
OP(Push, y, Opf_Single, 3,      { DO_OP_PUSH(REG_Y); })
OP(Push, z, Opf_Single, 3,      { DO_OP_PUSH(REG_Z); })
OP(Push, w, Opf_Single, 3,      { DO_OP_PUSH(REG_W); })
OP(Push, a, Opf_Single, 3,      { DO_OP_PUSH(REG_A); })
OP(PushF, None, Opf_Single, 3,  { DO_OP_PUSHF(); })
OP(PushR, None, Opf_Single, 3,  { DO_OP_PUSHR(); })

// Pop
OP(Pop, x, Opf_Single, 3,       { DO_OP_POP(REG_X) })
OP(Pop, y, Opf_Single, 3,       { DO_OP_POP(REG_Y) })
OP(Pop, z, Opf_Single, 3,       { DO_OP_POP(REG_Z) })
OP(Pop, w, Opf_Single, 3,       { DO_OP_POP(REG_W) })
OP(Pop, a, Opf_Single, 3,       { DO_OP_POP(REG_A) })
OP(PopF, None, Opf_Single, 3,   { DO_OP_POPF() })
OP(PopR, None, Opf_Single, 3,   { DO_OP_POPR() })

// Load
OP(Load, ai, Opf_Single,  6, { DO_OP_LOAD_INDIRECT(REG_A, REG_I);     })
OP(Load, zi, Opf_Single,  6, { DO_OP_LOAD_INDIRECT(REG_Z, REG_I);     })
OP(Load, wi, Opf_Single,  6, { DO_OP_LOAD_INDIRECT(REG_W, REG_I);     })
OP(Load, aj, Opf_Single,  6, { DO_OP_LOAD_INDIRECT(REG_A, REG_J);     })
OP(Load, xj, Opf_Single,  6, { DO_OP_LOAD_INDIRECT(REG_X, REG_J);     })
OP(Load, yj, Opf_Single,  6, { DO_OP_LOAD_INDIRECT(REG_Y, REG_J);     })
OP(Load, xA, Opf_Address, 4, { DO_OP_LOAD_ABSOLUTE(REG_X, REG_WORD);  })
OP(Load, yA, Opf_Address, 4, { DO_OP_LOAD_ABSOLUTE(REG_Y, REG_WORD);  })
OP(Load, zA, Opf_Address, 4, { DO_OP_LOAD_ABSOLUTE(REG_Z, REG_WORD);  })
OP(Load, wA, Opf_Address, 4, { DO_OP_LOAD_ABSOLUTE(REG_W, REG_WORD);  })
OP(Load, aA, Opf_Address, 4, { DO_OP_LOAD_ABSOLUTE(REG_A, REG_WORD);  })
OP(Load, iA, Opf_Address, 8, { DO_OP_LOADW_ABSOLUTE(REG_I, REG_WORD); })
OP(Load, jA, Opf_Address, 8, { DO_OP_LOADW_ABSOLUTE(REG_J, REG_WORD); })

// Load indirect

// Store
OP(Store, ia, Opf_Single,  6, { DO_OP_STORE_INDIRECT(REG_I, REG_A);     })
OP(Store, iw, Opf_Single,  6, { DO_OP_STORE_INDIRECT(REG_I, REG_W);     })
OP(Store, iz, Opf_Single,  6, { DO_OP_STORE_INDIRECT(REG_I, REG_Z);     })
OP(Store, ja, Opf_Single,  6, { DO_OP_STORE_INDIRECT(REG_J, REG_A);     })
OP(Store, jx, Opf_Single,  6, { DO_OP_STORE_INDIRECT(REG_J, REG_X);     })
OP(Store, jy, Opf_Single,  6, { DO_OP_STORE_INDIRECT(REG_J, REG_Y);     })
OP(Store, Ax, Opf_Address, 4, { DO_OP_STORE_ABSOLUTE(REG_WORD, REG_X);  })
OP(Store, Ay, Opf_Address, 4, { DO_OP_STORE_ABSOLUTE(REG_WORD, REG_Y);  })
OP(Store, Az, Opf_Address, 4, { DO_OP_STORE_ABSOLUTE(REG_WORD, REG_Z);  })
OP(Store, Aw, Opf_Address, 4, { DO_OP_STORE_ABSOLUTE(REG_WORD, REG_W);  })
OP(Store, Aa, Opf_Address, 4, { DO_OP_STORE_ABSOLUTE(REG_WORD, REG_A);  })
OP(Store, Ai, Opf_Address,  8, { DO_OP_STOREW_ABSOLUTE(REG_WORD, REG_I); })
OP(Store, Aj, Opf_Address,  8, { DO_OP_STOREW_ABSOLUTE(REG_WORD, REG_J); })

// Call
OP(Call,    A,  Opf_Address, 4, { DO_OP_CALL();  })
OP(CallEq,  A,  Opf_Address, 4, { DO_OP_CALL_EQ(); })
OP(CallNeq, A,  Opf_Address, 4, { DO_OP_CALL_NEQ(); })
OP(CallGt,  A,  Opf_Address, 4, { DO_OP_CALL_GT(); })
OP(CallLt,  A,  Opf_Address, 4, { DO_OP_CALL_LT(); })
OP(CallZ,   A,  Opf_Address, 4, { DO_OP_CALL_Z(); })
OP(CallNotZ,A,  Opf_Address, 4, { DO_OP_CALL_NOT_Z(); })

// Return
OP(Return, None, Opf_Single, 4,   { DO_OP_RETURN(); })

// Set
OP(Set, xB, Opf_Byte, 3, { DO_OP_SET(REG_X, REG_IMM); })
OP(Set, yB, Opf_Byte, 3, { DO_OP_SET(REG_Y, REG_IMM); })
OP(Set, zB, Opf_Byte, 3, { DO_OP_SET(REG_Z, REG_IMM); })
OP(Set, wB, Opf_Byte, 3, { DO_OP_SET(REG_W, REG_IMM); })
OP(Set, aB, Opf_Byte, 3, { DO_OP_SET(REG_A, REG_IMM); })
OP(Set, iW, Opf_Word, 3, { DO_OP_SETW(REG_I, REG_WORD); })
OP(Set, jW, Opf_Word, 3, { DO_OP_SETW(REG_J, REG_WORD); })

// Add
OP(Add, ax, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_X); })
OP(Add, ay, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_Y); })
OP(Add, az, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_Z); })
OP(Add, aw, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_W); })
OP(Add, aa, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_A); })

OP(Add, xB, Opf_Byte,   3, { DO_OP_ADD_IMM(REG_X); })
OP(Add, yB, Opf_Byte,   3, { DO_OP_ADD_IMM(REG_Y); })
OP(Add, zB, Opf_Byte,   3, { DO_OP_ADD_IMM(REG_Z); })
OP(Add, wB, Opf_Byte,   3, { DO_OP_ADD_IMM(REG_W); })
OP(Add, aB, Opf_Byte,   3, { DO_OP_ADD_IMM(REG_A); })

// Adc
OP(Adc, ax, Opf_Single, 3, { DO_OP_ADC(REG_A, REG_X); })
OP(Adc, ay, Opf_Single, 3, { DO_OP_ADC(REG_A, REG_Y); })
OP(Adc, az, Opf_Single, 3, { DO_OP_ADC(REG_A, REG_Z); })
OP(Adc, aw, Opf_Single, 3, { DO_OP_ADC(REG_A, REG_W); })
OP(Adc, aa, Opf_Single, 3, { DO_OP_ADC(REG_A, REG_A); })

OP(Adc, xB, Opf_Byte,   3, { DO_OP_ADC_IMM(REG_X); })
OP(Adc, yB, Opf_Byte,   3, { DO_OP_ADC_IMM(REG_Y); })
OP(Adc, zB, Opf_Byte,   3, { DO_OP_ADC_IMM(REG_Z); })
OP(Adc, wB, Opf_Byte,   3, { DO_OP_ADC_IMM(REG_W); })
OP(Adc, aB, Opf_Byte,   3, { DO_OP_ADC_IMM(REG_A); })

// Sub
OP(Sub, ax, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_X); })
OP(Sub, ay, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_Y); })
OP(Sub, az, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_Z); })
OP(Sub, aw, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_W); })

OP(Sub, xB, Opf_Byte,   3, { DO_OP_SUB_IMM(REG_X); })
OP(Sub, yB, Opf_Byte,   3, { DO_OP_SUB_IMM(REG_Y); })
OP(Sub, zB, Opf_Byte,   3, { DO_OP_SUB_IMM(REG_Z); })
OP(Sub, wB, Opf_Byte,   3, { DO_OP_SUB_IMM(REG_W); })
OP(Sub, aB, Opf_Byte,   3, { DO_OP_SUB_IMM(REG_A); })

// Mul
OP(Mul, ax, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_X); })
OP(Mul, ay, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_Y); })
OP(Mul, az, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_Z); })
OP(Mul, aw, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_W); })
OP(Mul, aa, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_A); })

OP(Mul, xB, Opf_Byte,   3, { DO_OP_MUL_IMM(REG_X); })
OP(Mul, yB, Opf_Byte,   3, { DO_OP_MUL_IMM(REG_Y); })
OP(Mul, zB, Opf_Byte,   3, { DO_OP_MUL_IMM(REG_Z); })
OP(Mul, wB, Opf_Byte,   3, { DO_OP_MUL_IMM(REG_W); })
OP(Mul, aB, Opf_Byte,   3, { DO_OP_MUL_IMM(REG_A); })

// Inc
OP(Inc, x, Opf_Single, 1, {DO_OP_INC(REG_X);})
OP(Inc, y, Opf_Single, 1, {DO_OP_INC(REG_Y);})
OP(Inc, z, Opf_Single, 1, {DO_OP_INC(REG_Z);})
OP(Inc, w, Opf_Single, 1, {DO_OP_INC(REG_W);})
OP(Inc, a, Opf_Single, 1, {DO_OP_INC(REG_A);})
OP(Inc, i, Opf_Single, 2, {DO_OP_INCW(REG_I);})
OP(Inc, j, Opf_Single, 2, {DO_OP_INCW(REG_J);})

// Dec
OP(Dec, x, Opf_Single, 1, {DO_OP_DEC(REG_X);})
OP(Dec, y, Opf_Single, 1, {DO_OP_DEC(REG_Y);})
OP(Dec, z, Opf_Single, 1, {DO_OP_DEC(REG_Z);})
OP(Dec, w, Opf_Single, 1, {DO_OP_DEC(REG_W);})
OP(Dec, a, Opf_Single, 1, {DO_OP_DEC(REG_A);})
OP(Dec, i, Opf_Single, 2, {DO_OP_DECW(REG_I);})
OP(Dec, j, Opf_Single, 2, {DO_OP_DECW(REG_J);})

// Cmp
OP(Cmp, ax, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_X); })
OP(Cmp, ay, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_Y); })
OP(Cmp, az, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_Z); })
OP(Cmp, aw, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_W); })

OP(Cmp, a, Opf_Single, 2, { DO_OP_CMP_SELF(REG_A); })
OP(Cmp, x, Opf_Single, 2, { DO_OP_CMP_SELF(REG_X); })
OP(Cmp, y, Opf_Single, 2, { DO_OP_CMP_SELF(REG_Y); })
OP(Cmp, z, Opf_Single, 2, { DO_OP_CMP_SELF(REG_Z); })
OP(Cmp, w, Opf_Single, 2, { DO_OP_CMP_SELF(REG_W); })

OP(Cmp, xB, Opf_Byte, 3,   { DO_OP_CMP_IMM(REG_X); })
OP(Cmp, yB, Opf_Byte, 3,   { DO_OP_CMP_IMM(REG_Y); })
OP(Cmp, zB, Opf_Byte, 3,   { DO_OP_CMP_IMM(REG_Z); })
OP(Cmp, wB, Opf_Byte, 3,   { DO_OP_CMP_IMM(REG_W); })
OP(Cmp, aB, Opf_Byte, 3,   { DO_OP_CMP_IMM(REG_A); })
OP(Cmp, iW, Opf_Word, 6,   { DO_OP_CMP_IMMW(REG_I, REG_WORD); })
OP(Cmp, jW, Opf_Word, 6,   { DO_OP_CMP_IMMW(REG_J, REG_WORD); })

// Bit Test
OP(CmpBit, xB, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_X); })
OP(CmpBit, yB, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_Y); })
OP(CmpBit, zB, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_Z); })
OP(CmpBit, wB, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_W); })
OP(CmpBit, aB, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_A); })

// And
OP(And, ax, Opf_Single, 1, { DO_OP_AND(REG_A, REG_X); })
OP(And, ay, Opf_Single, 1, { DO_OP_AND(REG_A, REG_Y); })
OP(And, az, Opf_Single, 1, { DO_OP_AND(REG_A, REG_Z); })
OP(And, aw, Opf_Single, 1, { DO_OP_AND(REG_A, REG_W); })

OP(And, xB, Opf_Byte,   1, { DO_OP_AND_IMM(REG_X); })
OP(And, yB, Opf_Byte,   1, { DO_OP_AND_IMM(REG_Y); })
OP(And, zB, Opf_Byte,   1, { DO_OP_AND_IMM(REG_Z); })
OP(And, wB, Opf_Byte,   1, { DO_OP_AND_IMM(REG_W); })
OP(And, aB, Opf_Byte,   1, { DO_OP_AND_IMM(REG_A); })

// Or

OP(Or, ax, Opf_Single,  1, { DO_OP_OR(REG_A, REG_X); })
OP(Or, ay, Opf_Single,  1, { DO_OP_OR(REG_A, REG_Y); })
OP(Or, az, Opf_Single,  1, { DO_OP_OR(REG_A, REG_Z); })
OP(Or, aw, Opf_Single,  1, { DO_OP_OR(REG_A, REG_W); })

OP(Or, xB, Opf_Byte,    1, { DO_OP_OR_IMM(REG_X); })
OP(Or, yB, Opf_Byte,    1, { DO_OP_OR_IMM(REG_Y); })
OP(Or, zB, Opf_Byte,    1, { DO_OP_OR_IMM(REG_Z); })
OP(Or, wB, Opf_Byte,    1, { DO_OP_OR_IMM(REG_W); })
OP(Or, aB, Opf_Byte,    1, { DO_OP_OR_IMM(REG_A); })

// Not
OP(Not, x, Opf_Single,  1, { DO_OP_NOT(REG_X); })
OP(Not, y, Opf_Single,  1, { DO_OP_NOT(REG_Y); })
OP(Not, z, Opf_Single,  1, { DO_OP_NOT(REG_Z); })
OP(Not, w, Opf_Single,  1, { DO_OP_NOT(REG_W); })
OP(Not, a, Opf_Single,  1, { DO_OP_NOT(REG_A); })

// Xor
OP(Xor, ax, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_X); })
OP(Xor, ay, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_Y); })
OP(Xor, az, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_Z); })
OP(Xor, aw, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_W); })

OP(Xor, xB, Opf_Byte,   1, { DO_OP_XOR_IMM(REG_X); })
OP(Xor, yB, Opf_Byte,   1, { DO_OP_XOR_IMM(REG_Y); })
OP(Xor, zB, Opf_Byte,   1, { DO_OP_XOR_IMM(REG_Z); })
OP(Xor, wB, Opf_Byte,   1, { DO_OP_XOR_IMM(REG_W); })
OP(Xor, aB, Opf_Byte,   1, { DO_OP_XOR_IMM(REG_A); })

// Shift Left
OP(ShiftLeft, xB, Opf_Byte, 2, { DO_OP_SHIFT_LEFT(REG_X, REG_IMM);  })
OP(ShiftLeft, yB, Opf_Byte, 2, { DO_OP_SHIFT_LEFT(REG_Y, REG_IMM);  })
OP(ShiftLeft, zB, Opf_Byte, 2, { DO_OP_SHIFT_LEFT(REG_Z, REG_IMM);  })
OP(ShiftLeft, wB, Opf_Byte, 2, { DO_OP_SHIFT_LEFT(REG_W, REG_IMM);  })
OP(ShiftLeft, aB, Opf_Byte, 2, { DO_OP_SHIFT_LEFT(REG_A, REG_IMM);  })

// Shift Right
OP(ShiftRight, xB, Opf_Byte, 2, { DO_OP_SHIFT_RIGHT(REG_X, REG_IMM); })
OP(ShiftRight, yB, Opf_Byte, 2, { DO_OP_SHIFT_RIGHT(REG_Y, REG_IMM); })
OP(ShiftRight, zB, Opf_Byte, 2, { DO_OP_SHIFT_RIGHT(REG_Z, REG_IMM); })
OP(ShiftRight, wB, Opf_Byte, 2, { DO_OP_SHIFT_RIGHT(REG_W, REG_IMM); })
OP(ShiftRight, aB, Opf_Byte, 2, { DO_OP_SHIFT_RIGHT(REG_A, REG_IMM); })

// Roll Left
OP(RollLeft, x, Opf_Single, 1, { DO_OP_ROLL_LEFT(REG_X); })
OP(RollLeft, y, Opf_Single, 1, { DO_OP_ROLL_LEFT(REG_Y); })
OP(RollLeft, z, Opf_Single, 1, { DO_OP_ROLL_LEFT(REG_Z); })
OP(RollLeft, w, Opf_Single, 1, { DO_OP_ROLL_LEFT(REG_W); })
OP(RollLeft, a, Opf_Single, 1, { DO_OP_ROLL_LEFT(REG_A); })

// Roll Right
OP(RollRight, x, Opf_Single, 1, { DO_OP_ROLL_RIGHT(REG_X); })
OP(RollRight, y, Opf_Single, 1, { DO_OP_ROLL_RIGHT(REG_Y); })
OP(RollRight, z, Opf_Single, 1, { DO_OP_ROLL_RIGHT(REG_Z); })
OP(RollRight, w, Opf_Single, 1, { DO_OP_ROLL_RIGHT(REG_W); })
OP(RollRight, a, Opf_Single, 1, { DO_OP_ROLL_RIGHT(REG_A); })

// Jmp
OP(Jmp, A,  Opf_Address, 2, { DO_OP_JMP(); })
OP(Jmp, i,  Opf_Single, 3, { DO_OP_JMP_ABS(REG_X, REG_Y); })
OP(Jmp, j,  Opf_Single, 3, { DO_OP_JMP_ABS(REG_Z, REG_W); })
OP(Jmp, Ax, Opf_Address, 4, { DO_OP_JMP_ADD(REG_X, 0); })
OP(Jmp, Ay, Opf_Address, 4, { DO_OP_JMP_ADD(REG_Y, 0); })
OP(Jmp, Az, Opf_Address, 4, { DO_OP_JMP_ADD(REG_Z, 0); })
OP(Jmp, Aw, Opf_Address, 4, { DO_OP_JMP_ADD(REG_W, 0); })
OP(Jmp, Aa, Opf_Address, 4, { DO_OP_JMP_ADD(REG_A, 0); })
OP(RJmp, B, Opf_Byte, 2,     { DO_OP_JMP_REL(); })

// Jmp Eq
OP(JmpEq, A, Opf_Address, 2, { DO_OP_JMP_EQ(); })
OP(RJmpEq, B, Opf_Byte, 2,    { DO_OP_JMP_REL_EQ(); })

// Jmp Neq
OP(JmpNeq, A, Opf_Address, 2, { DO_OP_JMP_NEQ(); })
OP(RJmpNeq, B, Opf_Byte, 2, { DO_OP_JMP_REL_NEQ(); })

// Jmp Gt
OP(JmpGt, A, Opf_Address, 2, { DO_OP_JMP_GT(); })
OP(RJmpGt, B, Opf_Byte, 2, { DO_OP_JMP_REL_GT(); })

// Jmp Lt
OP(JmpLt, A, Opf_Address, 2, { DO_OP_JMP_LT(); })
OP(RJmpLt, B, Opf_Byte, 2, { DO_OP_JMP_REL_LT(); })

// Jmp If Zero
OP(JmpZ, A, Opf_Address, 2, { DO_OP_JMP_Z(); })
OP(RJmpZ, B, Opf_Byte, 2, { DO_OP_JMP_REL_Z(); })

// Jmp If Not Zero
OP(JmpNotZ, A, Opf_Address, 2, { DO_OP_JMP_NOT_Z(); })
OP(RJmpNotZ, B, Opf_Byte, 2, { DO_OP_JMP_REL_NOT_Z(); })

// Branch
OP(JmpBranch,  Aa, Opf_Address, 4,  { DO_OP_JMP_BRANCH(REG_A); })
OP(JmpBranch,  Ax, Opf_Address, 4,  { DO_OP_JMP_BRANCH(REG_X); })
OP(JmpBranch,  Ay, Opf_Address, 4,  { DO_OP_JMP_BRANCH(REG_Y); })
OP(JmpBranch,  Az, Opf_Address, 4,  { DO_OP_JMP_BRANCH(REG_Z); })
OP(JmpBranch,  Aw, Opf_Address, 4,  { DO_OP_JMP_BRANCH(REG_W); })
OP(CallBranch, Aa, Opf_Address, 4, { DO_OP_CALL_BRANCH(REG_A); })
OP(CallBranch, Ax, Opf_Address, 4, { DO_OP_CALL_BRANCH(REG_X); })
OP(CallBranch, Ay, Opf_Address, 4, { DO_OP_CALL_BRANCH(REG_Y); })
OP(CallBranch, Az, Opf_Address, 4, { DO_OP_CALL_BRANCH(REG_Z); })
OP(CallBranch, Aw, Opf_Address, 4, { DO_OP_CALL_BRANCH(REG_W); })


// Interrupt
OP(Int, B, Opf_Byte, 4, { DO_OP_INT(); })

// Resume
OP(Resume, None, Opf_Single, 4, { DO_OP_RESUME(); })

// Carry Clear
OP(Clc, None, Opf_Single, 1,   { DO_OP_CLC() })

// Set Clear
OP(Sec, None, Opf_Single, 1,   { DO_OP_SEC() })

//
OP(Offset, A, Opf_Address, 2, { DO_OP_SET_PC_OFFSET(); })
OP(ROffset, A, Opf_Address, 2, { DO_OP_SET_PC_ROFFSET(); })

// Debug
OP(dbr, W, Opf_Byte,      1, { DO_OP_DEBUG_REGISTER(); })
OP(dba, B, Opf_Address,   1, { DO_OP_DEBUG_ADDRESS();  })
OP(dbb, None, Opf_Single, 1, { DO_OP_DEBUG_BREAKPOINT(); })
OP(dbn, W, Opf_Address,   1, { DO_OP_DEBUG_NOTE();  })
OP(dbo, B, Opf_Byte,      1, { DO_OP_DEBUG_OPTION(); })
