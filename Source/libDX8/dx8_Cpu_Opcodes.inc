// Nop
OP(Nop, None, Opf_Single, 1, { DO_OP_NOP(); })

// Push
OP(Push, x, Opf_Single, 3,  { DO_OP_PUSH(REG_X); })
OP(Push, y, Opf_Single, 3,  { DO_OP_PUSH(REG_Y); })
OP(Push, z, Opf_Single, 3,  { DO_OP_PUSH(REG_Z); })
OP(Push, w, Opf_Single, 3,  { DO_OP_PUSH(REG_W); })
OP(Push, a, Opf_Single, 3,  { DO_OP_PUSH(REG_A); })

// Pop
OP(Pop, x, Opf_Single, 3,   { DO_OP_POP(REG_X) })
OP(Pop, y, Opf_Single, 3,   { DO_OP_POP(REG_Y) })
OP(Pop, z, Opf_Single, 3,   { DO_OP_POP(REG_Z) })
OP(Pop, w, Opf_Single, 3,   { DO_OP_POP(REG_W) })
OP(Pop, a, Opf_Single, 3,   { DO_OP_POP(REG_A) })

// Load
OP(Load, xA, Opf_Address, 4, { DO_OP_LOAD(REG_X); })
OP(Load, yA, Opf_Address, 4, { DO_OP_LOAD(REG_Y); })
OP(Load, zA, Opf_Address, 4, { DO_OP_LOAD(REG_Z); })
OP(Load, wA, Opf_Address, 4, { DO_OP_LOAD(REG_W); })
OP(Load, aA, Opf_Address, 4, { DO_OP_LOAD(REG_A); })

// Store
OP(Store, Ax, Opf_Address, 4, { DO_OP_STORE(REG_X); })
OP(Store, Ay, Opf_Address, 4, { DO_OP_STORE(REG_Y); })
OP(Store, Az, Opf_Address, 4, { DO_OP_STORE(REG_Z); })
OP(Store, Aw, Opf_Address, 4, { DO_OP_STORE(REG_W); })
OP(Store, Aa, Opf_Address, 4, { DO_OP_STORE(REG_A); })

// Call
OP(Call, A, Opf_Address, 4, { DO_OP_CALL();  })

// Return
OP(Return, None, Opf_Single, 4,   { DO_OP_RETURN(); })

// Set
OP(Set, xB, Opf_Byte, 3, { DO_OP_SET(REG_X); })
OP(Set, yB, Opf_Byte, 3, { DO_OP_SET(REG_Y); })
OP(Set, zB, Opf_Byte, 3, { DO_OP_SET(REG_Z); })
OP(Set, wB, Opf_Byte, 3, { DO_OP_SET(REG_W); })
OP(Set, aB, Opf_Byte, 3, { DO_OP_SET(REG_A); })

// Add
OP(Add, xx, Opf_Single, 3, { DO_OP_ADD(REG_X, REG_X); })
OP(Add, xy, Opf_Single, 3, { DO_OP_ADD(REG_X, REG_Y); })
OP(Add, xz, Opf_Single, 3, { DO_OP_ADD(REG_X, REG_Z); })
OP(Add, xw, Opf_Single, 3, { DO_OP_ADD(REG_X, REG_W); })
OP(Add, xa, Opf_Single, 3, { DO_OP_ADD(REG_X, REG_A); })
OP(Add, yx, Opf_Single, 3, { DO_OP_ADD(REG_Y, REG_X); })
OP(Add, yy, Opf_Single, 3, { DO_OP_ADD(REG_Y, REG_Y); })
OP(Add, yz, Opf_Single, 3, { DO_OP_ADD(REG_Y, REG_Z); })
OP(Add, yw, Opf_Single, 3, { DO_OP_ADD(REG_Y, REG_W); })
OP(Add, ya, Opf_Single, 3, { DO_OP_ADD(REG_Y, REG_A); })
OP(Add, zx, Opf_Single, 3, { DO_OP_ADD(REG_Z, REG_X); })
OP(Add, zy, Opf_Single, 3, { DO_OP_ADD(REG_Z, REG_Y); })
OP(Add, zz, Opf_Single, 3, { DO_OP_ADD(REG_Z, REG_Z); })
OP(Add, zw, Opf_Single, 3, { DO_OP_ADD(REG_Z, REG_W); })
OP(Add, za, Opf_Single, 3, { DO_OP_ADD(REG_Z, REG_A); })
OP(Add, wx, Opf_Single, 3, { DO_OP_ADD(REG_W, REG_X); })
OP(Add, wy, Opf_Single, 3, { DO_OP_ADD(REG_W, REG_Y); })
OP(Add, wz, Opf_Single, 3, { DO_OP_ADD(REG_W, REG_Z); })
OP(Add, ww, Opf_Single, 3, { DO_OP_ADD(REG_W, REG_W); })
OP(Add, wa, Opf_Single, 3, { DO_OP_ADD(REG_W, REG_A); })
OP(Add, ax, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_X); })
OP(Add, ay, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_Y); })
OP(Add, az, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_Z); })
OP(Add, aw, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_W); })
OP(Add, aa, Opf_Single, 3, { DO_OP_ADD(REG_A, REG_A); })

// Sub
OP(Sub, xx, Opf_Single, 3, { DO_OP_SUB(REG_X, REG_X); })
OP(Sub, xy, Opf_Single, 3, { DO_OP_SUB(REG_X, REG_Y); })
OP(Sub, xz, Opf_Single, 3, { DO_OP_SUB(REG_X, REG_Z); })
OP(Sub, xw, Opf_Single, 3, { DO_OP_SUB(REG_X, REG_W); })
OP(Sub, xa, Opf_Single, 3, { DO_OP_SUB(REG_X, REG_A); })
OP(Sub, yx, Opf_Single, 3, { DO_OP_SUB(REG_Y, REG_X); })
OP(Sub, yy, Opf_Single, 3, { DO_OP_SUB(REG_Y, REG_Y); })
OP(Sub, yz, Opf_Single, 3, { DO_OP_SUB(REG_Y, REG_Z); })
OP(Sub, yw, Opf_Single, 3, { DO_OP_SUB(REG_Y, REG_W); })
OP(Sub, ya, Opf_Single, 3, { DO_OP_SUB(REG_Y, REG_A); })
OP(Sub, zx, Opf_Single, 3, { DO_OP_SUB(REG_Z, REG_X); })
OP(Sub, zy, Opf_Single, 3, { DO_OP_SUB(REG_Z, REG_Y); })
OP(Sub, zz, Opf_Single, 3, { DO_OP_SUB(REG_Z, REG_Z); })
OP(Sub, zw, Opf_Single, 3, { DO_OP_SUB(REG_Z, REG_W); })
OP(Sub, za, Opf_Single, 3, { DO_OP_SUB(REG_Z, REG_A); })
OP(Sub, wx, Opf_Single, 3, { DO_OP_SUB(REG_W, REG_X); })
OP(Sub, wy, Opf_Single, 3, { DO_OP_SUB(REG_W, REG_Y); })
OP(Sub, wz, Opf_Single, 3, { DO_OP_SUB(REG_W, REG_Z); })
OP(Sub, ww, Opf_Single, 3, { DO_OP_SUB(REG_W, REG_W); })
OP(Sub, wa, Opf_Single, 3, { DO_OP_SUB(REG_W, REG_A); })
OP(Sub, ax, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_X); })
OP(Sub, ay, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_Y); })
OP(Sub, az, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_Z); })
OP(Sub, aw, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_W); })
OP(Sub, aa, Opf_Single, 3, { DO_OP_SUB(REG_A, REG_A); })

// Mul
OP(Mul, xx, Opf_Single, 3, { DO_OP_MUL(REG_X, REG_X); })
OP(Mul, xy, Opf_Single, 3, { DO_OP_MUL(REG_X, REG_Y); })
OP(Mul, xz, Opf_Single, 3, { DO_OP_MUL(REG_X, REG_Z); })
OP(Mul, xw, Opf_Single, 3, { DO_OP_MUL(REG_X, REG_W); })
OP(Mul, xa, Opf_Single, 3, { DO_OP_MUL(REG_X, REG_A); })
OP(Mul, yx, Opf_Single, 3, { DO_OP_MUL(REG_Y, REG_X); })
OP(Mul, yy, Opf_Single, 3, { DO_OP_MUL(REG_Y, REG_Y); })
OP(Mul, yz, Opf_Single, 3, { DO_OP_MUL(REG_Y, REG_Z); })
OP(Mul, yw, Opf_Single, 3, { DO_OP_MUL(REG_Y, REG_W); })
OP(Mul, ya, Opf_Single, 3, { DO_OP_MUL(REG_Y, REG_A); })
OP(Mul, zx, Opf_Single, 3, { DO_OP_MUL(REG_Z, REG_X); })
OP(Mul, zy, Opf_Single, 3, { DO_OP_MUL(REG_Z, REG_Y); })
OP(Mul, zz, Opf_Single, 3, { DO_OP_MUL(REG_Z, REG_Z); })
OP(Mul, zw, Opf_Single, 3, { DO_OP_MUL(REG_Z, REG_W); })
OP(Mul, za, Opf_Single, 3, { DO_OP_MUL(REG_Z, REG_A); })
OP(Mul, wx, Opf_Single, 3, { DO_OP_MUL(REG_W, REG_X); })
OP(Mul, wy, Opf_Single, 3, { DO_OP_MUL(REG_W, REG_Y); })
OP(Mul, wz, Opf_Single, 3, { DO_OP_MUL(REG_W, REG_Z); })
OP(Mul, ww, Opf_Single, 3, { DO_OP_MUL(REG_W, REG_W); })
OP(Mul, wa, Opf_Single, 3, { DO_OP_MUL(REG_W, REG_A); })
OP(Mul, ax, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_X); })
OP(Mul, ay, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_Y); })
OP(Mul, az, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_Z); })
OP(Mul, aw, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_W); })
OP(Mul, aa, Opf_Single, 3, { DO_OP_MUL(REG_A, REG_A); })

// Inc
OP(Inc, x, Opf_Single, 1, {DO_OP_INC(REG_X);})
OP(Inc, y, Opf_Single, 1, {DO_OP_INC(REG_Y);})
OP(Inc, z, Opf_Single, 1, {DO_OP_INC(REG_Z);})
OP(Inc, w, Opf_Single, 1, {DO_OP_INC(REG_W);})
OP(Inc, a, Opf_Single, 1, {DO_OP_INC(REG_A);})

// Dec
OP(Dec, x, Opf_Single, 1, {DO_OP_DEC(REG_X);})
OP(Dec, y, Opf_Single, 1, {DO_OP_DEC(REG_Y);})
OP(Dec, z, Opf_Single, 1, {DO_OP_DEC(REG_Z);})
OP(Dec, w, Opf_Single, 1, {DO_OP_DEC(REG_W);})
OP(Dec, a, Opf_Single, 1, {DO_OP_DEC(REG_A);})

// Cmp
OP(Cmp, xx, Opf_Single, 3, { DO_OP_CMP(REG_X, REG_X); })
OP(Cmp, xy, Opf_Single, 3, { DO_OP_CMP(REG_X, REG_Y); })
OP(Cmp, xz, Opf_Single, 3, { DO_OP_CMP(REG_X, REG_Z); })
OP(Cmp, xw, Opf_Single, 3, { DO_OP_CMP(REG_X, REG_W); })
OP(Cmp, xa, Opf_Single, 3, { DO_OP_CMP(REG_X, REG_A); })
OP(Cmp, yx, Opf_Single, 3, { DO_OP_CMP(REG_Y, REG_X); })
OP(Cmp, yy, Opf_Single, 3, { DO_OP_CMP(REG_Y, REG_Y); })
OP(Cmp, yz, Opf_Single, 3, { DO_OP_CMP(REG_Y, REG_Z); })
OP(Cmp, yw, Opf_Single, 3, { DO_OP_CMP(REG_Y, REG_W); })
OP(Cmp, ya, Opf_Single, 3, { DO_OP_CMP(REG_Y, REG_A); })
OP(Cmp, zx, Opf_Single, 3, { DO_OP_CMP(REG_Z, REG_X); })
OP(Cmp, zy, Opf_Single, 3, { DO_OP_CMP(REG_Z, REG_Y); })
OP(Cmp, zz, Opf_Single, 3, { DO_OP_CMP(REG_Z, REG_Z); })
OP(Cmp, zw, Opf_Single, 3, { DO_OP_CMP(REG_Z, REG_W); })
OP(Cmp, za, Opf_Single, 3, { DO_OP_CMP(REG_Z, REG_A); })
OP(Cmp, wx, Opf_Single, 3, { DO_OP_CMP(REG_W, REG_X); })
OP(Cmp, wy, Opf_Single, 3, { DO_OP_CMP(REG_W, REG_Y); })
OP(Cmp, wz, Opf_Single, 3, { DO_OP_CMP(REG_W, REG_Z); })
OP(Cmp, ww, Opf_Single, 3, { DO_OP_CMP(REG_W, REG_W); })
OP(Cmp, wa, Opf_Single, 3, { DO_OP_CMP(REG_W, REG_A); })
OP(Cmp, ax, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_X); })
OP(Cmp, ay, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_Y); })
OP(Cmp, az, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_Z); })
OP(Cmp, aw, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_W); })
OP(Cmp, aa, Opf_Single, 3, { DO_OP_CMP(REG_A, REG_A); })

// Bit Test
OP(CmpBit, x, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_A); })
OP(CmpBit, y, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_X); })
OP(CmpBit, z, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_Y); })
OP(CmpBit, w, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_Z); })
OP(CmpBit, a, Opf_Byte, 3, { DO_OP_CMP_BIT(REG_W); })

// And
OP(And, xy, Opf_Single, 1, { DO_OP_AND(REG_X, REG_Y); })
OP(And, xz, Opf_Single, 1, { DO_OP_AND(REG_X, REG_Z); })
OP(And, xw, Opf_Single, 1, { DO_OP_AND(REG_X, REG_W); })
OP(And, xa, Opf_Single, 1, { DO_OP_AND(REG_X, REG_A); })
OP(And, yx, Opf_Single, 1, { DO_OP_AND(REG_Y, REG_X); })
OP(And, yz, Opf_Single, 1, { DO_OP_AND(REG_Y, REG_Z); })
OP(And, yw, Opf_Single, 1, { DO_OP_AND(REG_Y, REG_W); })
OP(And, ya, Opf_Single, 1, { DO_OP_AND(REG_Y, REG_A); })
OP(And, zx, Opf_Single, 1, { DO_OP_AND(REG_Z, REG_X); })
OP(And, zy, Opf_Single, 1, { DO_OP_AND(REG_Z, REG_Y); })
OP(And, zw, Opf_Single, 1, { DO_OP_AND(REG_Z, REG_W); })
OP(And, za, Opf_Single, 1, { DO_OP_AND(REG_Z, REG_A); })
OP(And, wx, Opf_Single, 1, { DO_OP_AND(REG_W, REG_X); })
OP(And, wy, Opf_Single, 1, { DO_OP_AND(REG_W, REG_Y); })
OP(And, wz, Opf_Single, 1, { DO_OP_AND(REG_W, REG_Z); })
OP(And, wa, Opf_Single, 1, { DO_OP_AND(REG_W, REG_A); })
OP(And, ax, Opf_Single, 1, { DO_OP_AND(REG_A, REG_X); })
OP(And, ay, Opf_Single, 1, { DO_OP_AND(REG_A, REG_Y); })
OP(And, az, Opf_Single, 1, { DO_OP_AND(REG_A, REG_Z); })
OP(And, aw, Opf_Single, 1, { DO_OP_AND(REG_A, REG_W); })

// Or
OP(Or, xy, Opf_Single,  1, { DO_OP_OR(REG_X, REG_Y); })
OP(Or, xz, Opf_Single,  1, { DO_OP_OR(REG_X, REG_Z); })
OP(Or, xw, Opf_Single,  1, { DO_OP_OR(REG_X, REG_W); })
OP(Or, xa, Opf_Single,  1, { DO_OP_OR(REG_X, REG_A); })
OP(Or, yx, Opf_Single,  1, { DO_OP_OR(REG_Y, REG_X); })
OP(Or, yz, Opf_Single,  1, { DO_OP_OR(REG_Y, REG_Z); })
OP(Or, yw, Opf_Single,  1, { DO_OP_OR(REG_Y, REG_W); })
OP(Or, ya, Opf_Single,  1, { DO_OP_OR(REG_Y, REG_A); })
OP(Or, zx, Opf_Single,  1, { DO_OP_OR(REG_Z, REG_X); })
OP(Or, zy, Opf_Single,  1, { DO_OP_OR(REG_Z, REG_Y); })
OP(Or, zw, Opf_Single,  1, { DO_OP_OR(REG_Z, REG_W); })
OP(Or, za, Opf_Single,  1, { DO_OP_OR(REG_Z, REG_A); })
OP(Or, wx, Opf_Single,  1, { DO_OP_OR(REG_W, REG_X); })
OP(Or, wy, Opf_Single,  1, { DO_OP_OR(REG_W, REG_Y); })
OP(Or, wz, Opf_Single,  1, { DO_OP_OR(REG_W, REG_Z); })
OP(Or, wa, Opf_Single,  1, { DO_OP_OR(REG_W, REG_A); })
OP(Or, ax, Opf_Single,  1, { DO_OP_OR(REG_A, REG_X); })
OP(Or, ay, Opf_Single,  1, { DO_OP_OR(REG_A, REG_Y); })
OP(Or, az, Opf_Single,  1, { DO_OP_OR(REG_A, REG_Z); })
OP(Or, aw, Opf_Single,  1, { DO_OP_OR(REG_A, REG_W); })

// Not
OP(Not, x, Opf_Single,  1, { DO_OP_NOT(REG_X); })
OP(Not, y, Opf_Single,  1, { DO_OP_NOT(REG_Y); })
OP(Not, z, Opf_Single,  1, { DO_OP_NOT(REG_Z); })
OP(Not, w, Opf_Single,  1, { DO_OP_NOT(REG_W); })
OP(Not, a, Opf_Single,  1, { DO_OP_NOT(REG_A); })

// Xor
OP(Xor, xx, Opf_Single, 1, { DO_OP_XOR(REG_X, REG_X); })
OP(Xor, xy, Opf_Single, 1, { DO_OP_XOR(REG_X, REG_Y); })
OP(Xor, xz, Opf_Single, 1, { DO_OP_XOR(REG_X, REG_Z); })
OP(Xor, xw, Opf_Single, 1, { DO_OP_XOR(REG_X, REG_W); })
OP(Xor, xa, Opf_Single, 1, { DO_OP_XOR(REG_X, REG_A); })
OP(Xor, yx, Opf_Single, 1, { DO_OP_XOR(REG_Y, REG_X); })
OP(Xor, yy, Opf_Single, 1, { DO_OP_XOR(REG_Y, REG_Y); })
OP(Xor, yz, Opf_Single, 1, { DO_OP_XOR(REG_Y, REG_Z); })
OP(Xor, yw, Opf_Single, 1, { DO_OP_XOR(REG_Y, REG_W); })
OP(Xor, ya, Opf_Single, 1, { DO_OP_XOR(REG_Y, REG_A); })
OP(Xor, zx, Opf_Single, 1, { DO_OP_XOR(REG_Z, REG_X); })
OP(Xor, zy, Opf_Single, 1, { DO_OP_XOR(REG_Z, REG_Y); })
OP(Xor, zz, Opf_Single, 1, { DO_OP_XOR(REG_Z, REG_Z); })
OP(Xor, zw, Opf_Single, 1, { DO_OP_XOR(REG_Z, REG_W); })
OP(Xor, za, Opf_Single, 1, { DO_OP_XOR(REG_Z, REG_A); })
OP(Xor, wx, Opf_Single, 1, { DO_OP_XOR(REG_W, REG_X); })
OP(Xor, wy, Opf_Single, 1, { DO_OP_XOR(REG_W, REG_Y); })
OP(Xor, wz, Opf_Single, 1, { DO_OP_XOR(REG_W, REG_Z); })
OP(Xor, ww, Opf_Single, 1, { DO_OP_XOR(REG_W, REG_W); })
OP(Xor, wa, Opf_Single, 1, { DO_OP_XOR(REG_W, REG_A); })
OP(Xor, ax, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_X); })
OP(Xor, ay, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_Y); })
OP(Xor, az, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_Z); })
OP(Xor, aw, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_W); })
OP(Xor, aa, Opf_Single, 1, { DO_OP_XOR(REG_A, REG_A); })

// Shift Left
OP(ShiftLeft, x, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_X);  })
OP(ShiftLeft, y, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_Y);  })
OP(ShiftLeft, z, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_Z);  })
OP(ShiftLeft, w, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_W);  })
OP(ShiftLeft, a, Opf_Single, 1, { DO_OP_SHIFT_LEFT(REG_A);  })

// Shift Right
OP(ShiftRight, x, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_X); })
OP(ShiftRight, y, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_Y); })
OP(ShiftRight, z, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_Z); })
OP(ShiftRight, w, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_W); })
OP(ShiftRight, a, Opf_Single, 1, { DO_OP_SHIFT_RIGHT(REG_A); })

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
OP(Jmp, A, Opf_Address, 2, { REG_PC = data.w & ~PROGRAM_SIZE; })
OP(Jmp, xy, Opf_Single, 3, { DO_OP_JMP_ABS(REG_X, REG_Y); })
OP(Jmp, zw, Opf_Single, 3, { DO_OP_JMP_ABS(REG_Z, REG_W); })
OP(Jmp, Ax, Opf_Address, 4, { DO_OP_JMP_ADD(REG_X, 0); })
OP(Jmp, Ay, Opf_Address, 4, { DO_OP_JMP_ADD(REG_Y, 0); })
OP(Jmp, Az, Opf_Address, 4, { DO_OP_JMP_ADD(REG_Z, 0); })
OP(Jmp, Aw, Opf_Address, 4, { DO_OP_JMP_ADD(REG_W, 0); })
OP(Jmp, Aa, Opf_Address, 4, { DO_OP_JMP_ADD(REG_A, 0); })

// Jmp Eq
OP(JmpEq, A, Opf_Address, 2, { DO_OP_JMP_EQ(); })

// Jmp Neq
OP(JmpNeq, A, Opf_Address, 2, { DO_OP_JMP_NEQ(); })

// Jmp Gt
OP(JmpGt, A, Opf_Address, 2, { DO_OP_JMP_GT(); })

// Jmp Lt
OP(JmpLt, A, Opf_Address, 2, { DO_OP_JMP_LT(); })

// Jmp If Zero
OP(JmpZ, A, Opf_Address, 2, { DO_OP_JMP_Z(); })

// Interrupt
OP(Int, B, Opf_Byte, 4, { DO_OP_INT(); })

// Resume
OP(Resume, None, Opf_Byte, 4, { DO_OP_RESUME(); })