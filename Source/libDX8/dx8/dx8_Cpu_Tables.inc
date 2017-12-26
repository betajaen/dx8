const char* kOpStrs[] = {
"nop",
"push",
"push",
"push",
"push",
"push",
"push",
"push",
"push",
"push.b",
"push.w",
"pop",
"pop",
"pop",
"pop",
"pop",
"pop",
"pop",
"pop",
"load",
"load",
"load",
"load",
"load",
"load",
"load",
"load",
"load",
"load",
"load",
"load",
"load",
"store",
"store",
"store",
"store",
"store",
"store",
"store",
"store",
"store",
"store",
"store",
"store",
"store",
"call",
"call.eq",
"call.neq",
"call.gt",
"call.lt",
"call.z",
"call.nz",
"return",
"cpy",
"cpy",
"cpy",
"cpy",
"cpy",
"cpy",
"cpy",
"cpy",
"set",
"set",
"set",
"set",
"set",
"set",
"set",
"add",
"add",
"add",
"add",
"add",
"add",
"add",
"add",
"add",
"add",
"add",
"add",
"add",
"add",
"add",
"add",
"add",
"add",
"sub",
"sub",
"sub",
"sub",
"sub",
"sub",
"sub",
"sub",
"sub",
"mul",
"mul",
"mul",
"mul",
"mul",
"div",
"div",
"div",
"div",
"div",
"mod",
"mod",
"mod",
"mod",
"mod",
"neg",
"neg",
"inc",
"inc",
"inc",
"inc",
"inc",
"inc",
"inc",
"dec",
"dec",
"dec",
"dec",
"dec",
"dec",
"dec",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"cmp",
"bit",
"bit",
"bit",
"bit",
"bit",
"and",
"and",
"and",
"and",
"and",
"and",
"and",
"and",
"and",
"or",
"or",
"or",
"or",
"or",
"or",
"or",
"or",
"or",
"xor",
"xor",
"xor",
"xor",
"xor",
"xor",
"xor",
"xor",
"xor",
"not",
"not",
"not",
"not",
"not",
"shl",
"shr",
"jmp",
"jmp",
"jmp",
"jmp",
"jmp",
"jmp",
"rjmp",
"jmpt",
"callt",
"jmp.eq",
"rjmp.eq",
"jmp.neq",
"rjmp.neq",
"jmp.gt",
"rjmp.gt",
"jmp.lt",
"rjmp.lt",
"jmp.z",
"rjmp.z",
"jmp.nz",
"rjmp.nz",
"jmp.c",
"int",
"resume",
"sec",
"clc",
"dbr",
"dba",
"dbb",
"dbn",
"dbo",
"sti",
"rti",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
"nop",
};

int Cpu_FormatInstruction(char* str, Byte opcode, Word imm)
{
    switch(opcode)
    {
      case 0: return sprintf(str, "nop");
      case 1: return sprintf(str, "push x");
      case 2: return sprintf(str, "push y");
      case 3: return sprintf(str, "push z");
      case 4: return sprintf(str, "push w");
      case 5: return sprintf(str, "push a");
      case 6: return sprintf(str, "push i");
      case 7: return sprintf(str, "push j");
      case 8: return sprintf(str, "push f");
      case 9: return sprintf(str, "push.b $%02X", imm);
      case 10: return sprintf(str, "push.w $%04X", imm);
      case 11: return sprintf(str, "pop x");
      case 12: return sprintf(str, "pop y");
      case 13: return sprintf(str, "pop z");
      case 14: return sprintf(str, "pop w");
      case 15: return sprintf(str, "pop a");
      case 16: return sprintf(str, "pop i");
      case 17: return sprintf(str, "pop j");
      case 18: return sprintf(str, "pop f");
      case 19: return sprintf(str, "load a,i");
      case 20: return sprintf(str, "load z,i");
      case 21: return sprintf(str, "load w,i");
      case 22: return sprintf(str, "load a,j");
      case 23: return sprintf(str, "load x,j");
      case 24: return sprintf(str, "load y,j");
      case 25: return sprintf(str, "load x,$%04X", imm);
      case 26: return sprintf(str, "load y,$%04X", imm);
      case 27: return sprintf(str, "load z,$%04X", imm);
      case 28: return sprintf(str, "load w,$%04X", imm);
      case 29: return sprintf(str, "load a,$%04X", imm);
      case 30: return sprintf(str, "load i,$%04X", imm);
      case 31: return sprintf(str, "load j,$%04X", imm);
      case 32: return sprintf(str, "store i,a");
      case 33: return sprintf(str, "store i,w");
      case 34: return sprintf(str, "store i,z");
      case 35: return sprintf(str, "store j,a");
      case 36: return sprintf(str, "store j,x");
      case 37: return sprintf(str, "store j,y");
      case 38: return sprintf(str, "store $%04X,x", imm);
      case 39: return sprintf(str, "store $%04X,y", imm);
      case 40: return sprintf(str, "store $%04X,z", imm);
      case 41: return sprintf(str, "store $%04X,w", imm);
      case 42: return sprintf(str, "store $%04X,a", imm);
      case 43: return sprintf(str, "store $%04X,i", imm);
      case 44: return sprintf(str, "store $%04X,j", imm);
      case 45: return sprintf(str, "call $%04X", imm);
      case 46: return sprintf(str, "call.eq $%04X", imm);
      case 47: return sprintf(str, "call.neq $%04X", imm);
      case 48: return sprintf(str, "call.gt $%04X", imm);
      case 49: return sprintf(str, "call.lt $%04X", imm);
      case 50: return sprintf(str, "call.z $%04X", imm);
      case 51: return sprintf(str, "call.nz $%04X", imm);
      case 52: return sprintf(str, "return");
      case 53: return sprintf(str, "cpy a,x");
      case 54: return sprintf(str, "cpy a,y");
      case 55: return sprintf(str, "cpy a,z");
      case 56: return sprintf(str, "cpy a,w");
      case 57: return sprintf(str, "cpy x,a");
      case 58: return sprintf(str, "cpy y,a");
      case 59: return sprintf(str, "cpy z,a");
      case 60: return sprintf(str, "cpy w,a");
      case 61: return sprintf(str, "set x,$%02X", imm);
      case 62: return sprintf(str, "set y,$%02X", imm);
      case 63: return sprintf(str, "set z,$%02X", imm);
      case 64: return sprintf(str, "set w,$%02X", imm);
      case 65: return sprintf(str, "set a,$%02X", imm);
      case 66: return sprintf(str, "set i,$%04X", imm);
      case 67: return sprintf(str, "set j,$%04X", imm);
      case 68: return sprintf(str, "add a,x");
      case 69: return sprintf(str, "add a,y");
      case 70: return sprintf(str, "add a,z");
      case 71: return sprintf(str, "add a,w");
      case 72: return sprintf(str, "add i,j");
      case 73: return sprintf(str, "add i,a");
      case 74: return sprintf(str, "add i,z");
      case 75: return sprintf(str, "add i,w");
      case 76: return sprintf(str, "add j,a");
      case 77: return sprintf(str, "add j,x");
      case 78: return sprintf(str, "add j,y");
      case 79: return sprintf(str, "add i,$%04X", imm);
      case 80: return sprintf(str, "add j,$%04X", imm);
      case 81: return sprintf(str, "add x,$%02X", imm);
      case 82: return sprintf(str, "add y,$%02X", imm);
      case 83: return sprintf(str, "add z,$%02X", imm);
      case 84: return sprintf(str, "add w,$%02X", imm);
      case 85: return sprintf(str, "add a,$%02X", imm);
      case 86: return sprintf(str, "sub a,x");
      case 87: return sprintf(str, "sub a,y");
      case 88: return sprintf(str, "sub a,z");
      case 89: return sprintf(str, "sub a,w");
      case 90: return sprintf(str, "sub x,$%02X", imm);
      case 91: return sprintf(str, "sub y,$%02X", imm);
      case 92: return sprintf(str, "sub z,$%02X", imm);
      case 93: return sprintf(str, "sub w,$%02X", imm);
      case 94: return sprintf(str, "sub a,$%02X", imm);
      case 95: return sprintf(str, "mul a,x");
      case 96: return sprintf(str, "mul a,$%02X", imm);
      case 97: return sprintf(str, "mul i,j");
      case 98: return sprintf(str, "mul i,$%04X", imm);
      case 99: return sprintf(str, "mul j,$%04X", imm);
      case 100: return sprintf(str, "div a,x");
      case 101: return sprintf(str, "div a,$%02X", imm);
      case 102: return sprintf(str, "div i,j");
      case 103: return sprintf(str, "div i,$%04X", imm);
      case 104: return sprintf(str, "div j,$%04X", imm);
      case 105: return sprintf(str, "mod a,x");
      case 106: return sprintf(str, "mod a,$%02X", imm);
      case 107: return sprintf(str, "mod i,j");
      case 108: return sprintf(str, "mod i,$%04X", imm);
      case 109: return sprintf(str, "mod j,$%04X", imm);
      case 110: return sprintf(str, "neg a");
      case 111: return sprintf(str, "neg x");
      case 112: return sprintf(str, "inc a");
      case 113: return sprintf(str, "inc x");
      case 114: return sprintf(str, "inc y");
      case 115: return sprintf(str, "inc z");
      case 116: return sprintf(str, "inc w");
      case 117: return sprintf(str, "inc i");
      case 118: return sprintf(str, "inc j");
      case 119: return sprintf(str, "dec a");
      case 120: return sprintf(str, "dec x");
      case 121: return sprintf(str, "dec y");
      case 122: return sprintf(str, "dec z");
      case 123: return sprintf(str, "dec w");
      case 124: return sprintf(str, "dec i");
      case 125: return sprintf(str, "dec j");
      case 126: return sprintf(str, "cmp a,x");
      case 127: return sprintf(str, "cmp a,y");
      case 128: return sprintf(str, "cmp a,z");
      case 129: return sprintf(str, "cmp a,w");
      case 130: return sprintf(str, "cmp a");
      case 131: return sprintf(str, "cmp x");
      case 132: return sprintf(str, "cmp y");
      case 133: return sprintf(str, "cmp z");
      case 134: return sprintf(str, "cmp w");
      case 135: return sprintf(str, "cmp i");
      case 136: return sprintf(str, "cmp j");
      case 137: return sprintf(str, "cmp x,$%02X", imm);
      case 138: return sprintf(str, "cmp y,$%02X", imm);
      case 139: return sprintf(str, "cmp z,$%02X", imm);
      case 140: return sprintf(str, "cmp w,$%02X", imm);
      case 141: return sprintf(str, "cmp a,$%02X", imm);
      case 142: return sprintf(str, "cmp i,j");
      case 143: return sprintf(str, "cmp i,$%04X", imm);
      case 144: return sprintf(str, "cmp j,$%04X", imm);
      case 145: return sprintf(str, "bit x,$%02X", imm);
      case 146: return sprintf(str, "bit y,$%02X", imm);
      case 147: return sprintf(str, "bit z,$%02X", imm);
      case 148: return sprintf(str, "bit w,$%02X", imm);
      case 149: return sprintf(str, "bit a,$%02X", imm);
      case 150: return sprintf(str, "and a,x");
      case 151: return sprintf(str, "and a,y");
      case 152: return sprintf(str, "and a,z");
      case 153: return sprintf(str, "and a,w");
      case 154: return sprintf(str, "and x,$%02X", imm);
      case 155: return sprintf(str, "and y,$%02X", imm);
      case 156: return sprintf(str, "and z,$%02X", imm);
      case 157: return sprintf(str, "and w,$%02X", imm);
      case 158: return sprintf(str, "and a,$%02X", imm);
      case 159: return sprintf(str, "or a,x");
      case 160: return sprintf(str, "or a,y");
      case 161: return sprintf(str, "or a,z");
      case 162: return sprintf(str, "or a,w");
      case 163: return sprintf(str, "or x,$%02X", imm);
      case 164: return sprintf(str, "or y,$%02X", imm);
      case 165: return sprintf(str, "or z,$%02X", imm);
      case 166: return sprintf(str, "or w,$%02X", imm);
      case 167: return sprintf(str, "or a,$%02X", imm);
      case 168: return sprintf(str, "xor a,x");
      case 169: return sprintf(str, "xor a,y");
      case 170: return sprintf(str, "xor a,z");
      case 171: return sprintf(str, "xor a,w");
      case 172: return sprintf(str, "xor x,$%02X", imm);
      case 173: return sprintf(str, "xor y,$%02X", imm);
      case 174: return sprintf(str, "xor z,$%02X", imm);
      case 175: return sprintf(str, "xor w,$%02X", imm);
      case 176: return sprintf(str, "xor a,$%02X", imm);
      case 177: return sprintf(str, "not x");
      case 178: return sprintf(str, "not y");
      case 179: return sprintf(str, "not z");
      case 180: return sprintf(str, "not w");
      case 181: return sprintf(str, "not a");
      case 182: return sprintf(str, "shl a,$%02X", imm);
      case 183: return sprintf(str, "shr a,$%02X", imm);
      case 184: return sprintf(str, "jmp $%04X", imm);
      case 185: return sprintf(str, "jmp i");
      case 186: return sprintf(str, "jmp j");
      case 187: return sprintf(str, "jmp i,a");
      case 188: return sprintf(str, "jmp j,a");
      case 189: return sprintf(str, "jmp $%04X,a", imm);
      case 190: return sprintf(str, "rjmp $%02X", imm);
      case 191: return sprintf(str, "jmpt $%04X,a", imm);
      case 192: return sprintf(str, "callt $%04X,a", imm);
      case 193: return sprintf(str, "jmp.eq $%04X", imm);
      case 194: return sprintf(str, "rjmp.eq $%02X", imm);
      case 195: return sprintf(str, "jmp.neq $%04X", imm);
      case 196: return sprintf(str, "rjmp.neq $%02X", imm);
      case 197: return sprintf(str, "jmp.gt $%04X", imm);
      case 198: return sprintf(str, "rjmp.gt $%02X", imm);
      case 199: return sprintf(str, "jmp.lt $%04X", imm);
      case 200: return sprintf(str, "rjmp.lt $%02X", imm);
      case 201: return sprintf(str, "jmp.z $%04X", imm);
      case 202: return sprintf(str, "rjmp.z $%02X", imm);
      case 203: return sprintf(str, "jmp.nz $%04X", imm);
      case 204: return sprintf(str, "rjmp.nz $%02X", imm);
      case 205: return sprintf(str, "jmp.c $%04X", imm);
      case 206: return sprintf(str, "int $%02X", imm);
      case 207: return sprintf(str, "resume");
      case 208: return sprintf(str, "sec");
      case 209: return sprintf(str, "clc");
      case 210: return sprintf(str, "dbr $%04X", imm);
      case 211: return sprintf(str, "dba $%02X", imm);
      case 212: return sprintf(str, "dbb");
      case 213: return sprintf(str, "dbn $%04X", imm);
      case 214: return sprintf(str, "dbo $%02X", imm);
      case 215: return sprintf(str, "sti");
      case 216: return sprintf(str, "rti");
      case 217: return sprintf(str, "nop");
      case 218: return sprintf(str, "nop");
      case 219: return sprintf(str, "nop");
      case 220: return sprintf(str, "nop");
      case 221: return sprintf(str, "nop");
      case 222: return sprintf(str, "nop");
      case 223: return sprintf(str, "nop");
      case 224: return sprintf(str, "nop");
      case 225: return sprintf(str, "nop");
      case 226: return sprintf(str, "nop");
      case 227: return sprintf(str, "nop");
      case 228: return sprintf(str, "nop");
      case 229: return sprintf(str, "nop");
      case 230: return sprintf(str, "nop");
      case 231: return sprintf(str, "nop");
      case 232: return sprintf(str, "nop");
      case 233: return sprintf(str, "nop");
      case 234: return sprintf(str, "nop");
      case 235: return sprintf(str, "nop");
      case 236: return sprintf(str, "nop");
      case 237: return sprintf(str, "nop");
      case 238: return sprintf(str, "nop");
      case 239: return sprintf(str, "nop");
      case 240: return sprintf(str, "nop");
      case 241: return sprintf(str, "nop");
      case 242: return sprintf(str, "nop");
      case 243: return sprintf(str, "nop");
      case 244: return sprintf(str, "nop");
      case 245: return sprintf(str, "nop");
      case 246: return sprintf(str, "nop");
      case 247: return sprintf(str, "nop");
      case 248: return sprintf(str, "nop");
      case 249: return sprintf(str, "nop");
      case 250: return sprintf(str, "nop");
      case 251: return sprintf(str, "nop");
      case 252: return sprintf(str, "nop");
      case 253: return sprintf(str, "nop");
      case 254: return sprintf(str, "nop");
      case 255: return sprintf(str, "nop");
  }
  return 0;
}

typedef enum
{
  Op_Nop = 0x00,
  Op_Push_X = 0x01,
  Op_Push_Y = 0x02,
  Op_Push_Z = 0x03,
  Op_Push_W = 0x04,
  Op_Push_A = 0x05,
  Op_Push_I = 0x06,
  Op_Push_J = 0x07,
  Op_Push_F = 0x08,
  Op_PushB_Byte = 0x09,
  Op_PushW_Address = 0x0A,
  Op_Pop_X = 0x0B,
  Op_Pop_Y = 0x0C,
  Op_Pop_Z = 0x0D,
  Op_Pop_W = 0x0E,
  Op_Pop_A = 0x0F,
  Op_Pop_I = 0x10,
  Op_Pop_J = 0x11,
  Op_Pop_F = 0x12,
  Op_Load_A_I = 0x13,
  Op_Load_Z_I = 0x14,
  Op_Load_W_I = 0x15,
  Op_Load_A_J = 0x16,
  Op_Load_X_J = 0x17,
  Op_Load_Y_J = 0x18,
  Op_Load_X_Address = 0x19,
  Op_Load_Y_Address = 0x1A,
  Op_Load_Z_Address = 0x1B,
  Op_Load_W_Address = 0x1C,
  Op_Load_A_Address = 0x1D,
  Op_Load_I_Address = 0x1E,
  Op_Load_J_Address = 0x1F,
  Op_Store_I_A = 0x20,
  Op_Store_I_W = 0x21,
  Op_Store_I_Z = 0x22,
  Op_Store_J_A = 0x23,
  Op_Store_J_X = 0x24,
  Op_Store_J_Y = 0x25,
  Op_Store_Address_X = 0x26,
  Op_Store_Address_Y = 0x27,
  Op_Store_Address_Z = 0x28,
  Op_Store_Address_W = 0x29,
  Op_Store_Address_A = 0x2A,
  Op_Store_Address_I = 0x2B,
  Op_Store_Address_J = 0x2C,
  Op_Call_Address = 0x2D,
  Op_CallEq_Address = 0x2E,
  Op_CallNeq_Address = 0x2F,
  Op_CallGt_Address = 0x30,
  Op_CallLt_Address = 0x31,
  Op_CallZ_Address = 0x32,
  Op_CallNz_Address = 0x33,
  Op_Return = 0x34,
  Op_Cpy_A_X = 0x35,
  Op_Cpy_A_Y = 0x36,
  Op_Cpy_A_Z = 0x37,
  Op_Cpy_A_W = 0x38,
  Op_Cpy_X_A = 0x39,
  Op_Cpy_Y_A = 0x3A,
  Op_Cpy_Z_A = 0x3B,
  Op_Cpy_W_A = 0x3C,
  Op_Set_X_Byte = 0x3D,
  Op_Set_Y_Byte = 0x3E,
  Op_Set_Z_Byte = 0x3F,
  Op_Set_W_Byte = 0x40,
  Op_Set_A_Byte = 0x41,
  Op_Set_I_Address = 0x42,
  Op_Set_J_Address = 0x43,
  Op_Add_A_X = 0x44,
  Op_Add_A_Y = 0x45,
  Op_Add_A_Z = 0x46,
  Op_Add_A_W = 0x47,
  Op_Add_I_J = 0x48,
  Op_Add_I_A = 0x49,
  Op_Add_I_Z = 0x4A,
  Op_Add_I_W = 0x4B,
  Op_Add_J_A = 0x4C,
  Op_Add_J_X = 0x4D,
  Op_Add_J_Y = 0x4E,
  Op_Add_I_Address = 0x4F,
  Op_Add_J_Address = 0x50,
  Op_Add_X_Byte = 0x51,
  Op_Add_Y_Byte = 0x52,
  Op_Add_Z_Byte = 0x53,
  Op_Add_W_Byte = 0x54,
  Op_Add_A_Byte = 0x55,
  Op_Sub_A_X = 0x56,
  Op_Sub_A_Y = 0x57,
  Op_Sub_A_Z = 0x58,
  Op_Sub_A_W = 0x59,
  Op_Sub_X_Byte = 0x5A,
  Op_Sub_Y_Byte = 0x5B,
  Op_Sub_Z_Byte = 0x5C,
  Op_Sub_W_Byte = 0x5D,
  Op_Sub_A_Byte = 0x5E,
  Op_Mul_A_X = 0x5F,
  Op_Mul_A_Byte = 0x60,
  Op_Mul_I_J = 0x61,
  Op_Mul_I_Address = 0x62,
  Op_Mul_J_Address = 0x63,
  Op_Div_A_X = 0x64,
  Op_Div_A_Byte = 0x65,
  Op_Div_I_J = 0x66,
  Op_Div_I_Address = 0x67,
  Op_Div_J_Address = 0x68,
  Op_Mod_A_X = 0x69,
  Op_Mod_A_Byte = 0x6A,
  Op_Mod_I_J = 0x6B,
  Op_Mod_I_Address = 0x6C,
  Op_Mod_J_Address = 0x6D,
  Op_Neg_A = 0x6E,
  Op_Neg_X = 0x6F,
  Op_Inc_A = 0x70,
  Op_Inc_X = 0x71,
  Op_Inc_Y = 0x72,
  Op_Inc_Z = 0x73,
  Op_Inc_W = 0x74,
  Op_Inc_I = 0x75,
  Op_Inc_J = 0x76,
  Op_Dec_A = 0x77,
  Op_Dec_X = 0x78,
  Op_Dec_Y = 0x79,
  Op_Dec_Z = 0x7A,
  Op_Dec_W = 0x7B,
  Op_Dec_I = 0x7C,
  Op_Dec_J = 0x7D,
  Op_Cmp_A_X = 0x7E,
  Op_Cmp_A_Y = 0x7F,
  Op_Cmp_A_Z = 0x80,
  Op_Cmp_A_W = 0x81,
  Op_Cmp_A = 0x82,
  Op_Cmp_X = 0x83,
  Op_Cmp_Y = 0x84,
  Op_Cmp_Z = 0x85,
  Op_Cmp_W = 0x86,
  Op_Cmp_I = 0x87,
  Op_Cmp_J = 0x88,
  Op_Cmp_X_Byte = 0x89,
  Op_Cmp_Y_Byte = 0x8A,
  Op_Cmp_Z_Byte = 0x8B,
  Op_Cmp_W_Byte = 0x8C,
  Op_Cmp_A_Byte = 0x8D,
  Op_Cmp_I_J = 0x8E,
  Op_Cmp_I_Address = 0x8F,
  Op_Cmp_J_Address = 0x90,
  Op_Bit_X_Byte = 0x91,
  Op_Bit_Y_Byte = 0x92,
  Op_Bit_Z_Byte = 0x93,
  Op_Bit_W_Byte = 0x94,
  Op_Bit_A_Byte = 0x95,
  Op_And_A_X = 0x96,
  Op_And_A_Y = 0x97,
  Op_And_A_Z = 0x98,
  Op_And_A_W = 0x99,
  Op_And_X_Byte = 0x9A,
  Op_And_Y_Byte = 0x9B,
  Op_And_Z_Byte = 0x9C,
  Op_And_W_Byte = 0x9D,
  Op_And_A_Byte = 0x9E,
  Op_Or_A_X = 0x9F,
  Op_Or_A_Y = 0xA0,
  Op_Or_A_Z = 0xA1,
  Op_Or_A_W = 0xA2,
  Op_Or_X_Byte = 0xA3,
  Op_Or_Y_Byte = 0xA4,
  Op_Or_Z_Byte = 0xA5,
  Op_Or_W_Byte = 0xA6,
  Op_Or_A_Byte = 0xA7,
  Op_Xor_A_X = 0xA8,
  Op_Xor_A_Y = 0xA9,
  Op_Xor_A_Z = 0xAA,
  Op_Xor_A_W = 0xAB,
  Op_Xor_X_Byte = 0xAC,
  Op_Xor_Y_Byte = 0xAD,
  Op_Xor_Z_Byte = 0xAE,
  Op_Xor_W_Byte = 0xAF,
  Op_Xor_A_Byte = 0xB0,
  Op_Not_X = 0xB1,
  Op_Not_Y = 0xB2,
  Op_Not_Z = 0xB3,
  Op_Not_W = 0xB4,
  Op_Not_A = 0xB5,
  Op_Shl_A_Byte = 0xB6,
  Op_Shr_A_Byte = 0xB7,
  Op_Jmp_Address = 0xB8,
  Op_Jmp_I = 0xB9,
  Op_Jmp_J = 0xBA,
  Op_Jmp_I_A = 0xBB,
  Op_Jmp_J_A = 0xBC,
  Op_Jmp_Address_A = 0xBD,
  Op_Rjmp_Byte = 0xBE,
  Op_Jmpt_Address_A = 0xBF,
  Op_Callt_Address_A = 0xC0,
  Op_JmpEq_Address = 0xC1,
  Op_RjmpEq_Byte = 0xC2,
  Op_JmpNeq_Address = 0xC3,
  Op_RjmpNeq_Byte = 0xC4,
  Op_JmpGt_Address = 0xC5,
  Op_RjmpGt_Byte = 0xC6,
  Op_JmpLt_Address = 0xC7,
  Op_RjmpLt_Byte = 0xC8,
  Op_JmpZ_Address = 0xC9,
  Op_RjmpZ_Byte = 0xCA,
  Op_JmpNz_Address = 0xCB,
  Op_RjmpNz_Byte = 0xCC,
  Op_JmpC_Address = 0xCD,
  Op_Int_Byte = 0xCE,
  Op_Resume = 0xCF,
  Op_Sec = 0xD0,
  Op_Clc = 0xD1,
  Op_Dbr_Address = 0xD2,
  Op_Dba_Byte = 0xD3,
  Op_Dbb = 0xD4,
  Op_Dbn_Address = 0xD5,
  Op_Dbo_Byte = 0xD6,
  Op_Sti = 0xD7,
  Op_Rti = 0xD8,
  Op_Nop_D9 = 0xD9,
  Op_Nop_DA = 0xDA,
  Op_Nop_DB = 0xDB,
  Op_Nop_DC = 0xDC,
  Op_Nop_DD = 0xDD,
  Op_Nop_DE = 0xDE,
  Op_Nop_DF = 0xDF,
  Op_Nop_E0 = 0xE0,
  Op_Nop_E1 = 0xE1,
  Op_Nop_E2 = 0xE2,
  Op_Nop_E3 = 0xE3,
  Op_Nop_E4 = 0xE4,
  Op_Nop_E5 = 0xE5,
  Op_Nop_E6 = 0xE6,
  Op_Nop_E7 = 0xE7,
  Op_Nop_E8 = 0xE8,
  Op_Nop_E9 = 0xE9,
  Op_Nop_EA = 0xEA,
  Op_Nop_EB = 0xEB,
  Op_Nop_EC = 0xEC,
  Op_Nop_ED = 0xED,
  Op_Nop_EE = 0xEE,
  Op_Nop_EF = 0xEF,
  Op_Nop_F0 = 0xF0,
  Op_Nop_F1 = 0xF1,
  Op_Nop_F2 = 0xF2,
  Op_Nop_F3 = 0xF3,
  Op_Nop_F4 = 0xF4,
  Op_Nop_F5 = 0xF5,
  Op_Nop_F6 = 0xF6,
  Op_Nop_F7 = 0xF7,
  Op_Nop_F8 = 0xF8,
  Op_Nop_F9 = 0xF9,
  Op_Nop_FA = 0xFA,
  Op_Nop_FB = 0xFB,
  Op_Nop_FC = 0xFC,
  Op_Nop_FD = 0xFD,
  Op_Nop_FE = 0xFE,
  Op_Nop_FF = 0xFF,
  OP_COUNT
} Opcode;
