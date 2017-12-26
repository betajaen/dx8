// Instructions

static void Cpu_DecodeAndRun(Word instruction)
{
  Byte opcode  = ( (instruction >> 8) & 0xFF);
  Byte operand = ( (instruction) & 0xFF );
  Word imm = 0;

  switch(opcode)
  {
      case 0x00: // push r
      {
        Cpu_PushW_Reg(OPERAND_src);
      }
      break;
      case 0x01: // pop r
      {
        Cpu_PopW_Reg(OPERAND_dst);
      }
      break;
      case 0x02: // load r1, r2
      {
        Cpu_LoadW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x03: // store r1, r2
      {
        Cpu_StoreW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x04: // copy r1, r2
      {
        Cpu_CopyW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x05: // set r, $1000
      {
        imm = PC_FETCH();
        Cpu_SetW_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x06: // swap r1, r2
      {
        Cpu_SwapW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x07: // setq r, $04
      {
        Cpu_SetQuickW_Imm(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x08: // add r1, r2
      {
        Cpu_AddW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x09: // sub r1, r2
      {
        Cpu_SubW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x0A: // adc r1, r2
      {
        Cpu_AddCarryW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x0B: // sbc r1, r2
      {
        Cpu_SubCarryW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x0C: // adq r, $04
      {
        Cpu_AddQuickW_Imm(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x0D: // sbq r, $04
      {
        Cpu_SubQuickW_Imm(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x0E: // inc r
      {
        Cpu_IncW_Imm(OPERAND_dst);
      }
      break;
      case 0x0F: // dec r
      {
        Cpu_DecW_Imm(OPERAND_dst);
      }
      break;
      case 0x10: // mul r1, r2
      {
        Cpu_MulW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x11: // div r1, r2
      {
        Cpu_DivW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x12: // mod r1, r2
      {
        Cpu_ModW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x13: // neg r
      {
        Cpu_NegW_Reg(OPERAND_dst);
      }
      break;
      case 0x14: // abcd r1, r2
      {
        Cpu_AddBCD_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x15: // sbcd r1, r2
      {
        Cpu_SubBCD_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x16: // nbcd r
      {
        Cpu_NegBCD_Reg(OPERAND_dst);
      }
      break;
      case 0x17: // i17
         break;
      case 0x18: // and r1, r2
      {
        Cpu_AndW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x19: // or r1, r2
      {
        Cpu_OrW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x1A: // xor r1, r2
      {
        Cpu_XorW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x1B: // not r
      {
        Cpu_NotW_Reg(OPERAND_dst);
      }
      break;
      case 0x1C: // shl r, $04
      {
        Cpu_ShiftLeftW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x1D: // shr r, $04
      {
        Cpu_ShiftRightW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x1E: // rol r, $04
      {
        Cpu_RollLeftW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x1F: // ror r, $04
      {
        Cpu_RollRightW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x20: // jmp r
      {
        Cpu_JumpW_Reg(OPERAND_dst);
      }
      break;
      case 0x21: // jta $1000, r
      {
        imm = PC_FETCH();
        Cpu_JumpTableW_RegImm(OPERAND_dst, imm);
      }
      break;
      case 0x22: // jsr r
      {
        Cpu_JumpSubroutine_Reg(OPERAND_dst);
      }
      break;
      case 0x23: // ret
      {
        Cpu_Return();
      }
      break;
      case 0x24: // cmp r1, r2
      {
        Cpu_CompareW_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x25: // cmpb r1, $4
      {
        Cpu_CompareBitW_RegImm(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x26: // scf.or $04
      {
        Cpu_SetCF_Or_Imm(OPERAND_src);
      }
      break;
      case 0x27: // i27
         break;
      case 0x28: // bra r
      {
        Cpu_BranchAlwaysW_Reg(OPERAND_dst);
      }
      break;
      case 0x29: // i29
         break;
      case 0x2A: // bsr r
      {
        Cpu_BranchSubroutineW_Reg(OPERAND_dst);
      }
      break;
      case 0x2B: // i2b
         break;
      case 0x2C: // i2c
         break;
      case 0x2D: // i2d
         break;
      case 0x2E: // i2e
         break;
      case 0x2F: // i2f
         break;
      case 0x30: // i30
         break;
      case 0x31: // i31
         break;
      case 0x32: // i32
         break;
      case 0x33: // i33
         break;
      case 0x34: // i34
         break;
      case 0x35: // i35
         break;
      case 0x36: // i36
         break;
      case 0x37: // i37
         break;
      case 0x38: // i38
         break;
      case 0x39: // i39
         break;
      case 0x3A: // i3a
         break;
      case 0x3B: // i3b
         break;
      case 0x3C: // io $01
      {
        Cpu_Io_Imm(OPERAND_src);
      }
      break;
      case 0x3D: // int.set $10
      {
        Cpu_Interrupt_SetMask(OPERAND_src);
      }
      break;
      case 0x3E: // rti
      {
        Cpu_ReturnFromInterrupt();
      }
      break;
      case 0x3F: // brk.r $01
      {
        Cpu_Breakpoint_Register(OPERAND_src);
      }
      break;
      case 0x40: // push.b r
      {
        Cpu_PushB_Reg(OPERAND_src);
      }
      break;
      case 0x41: // pop.b r
      {
        Cpu_PopB_Reg(OPERAND_dst);
      }
      break;
      case 0x42: // load r1, $1000
      {
        imm = PC_FETCH();
        Cpu_LoadW_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x43: // store $1000, r2
      {
        imm = PC_FETCH();
        Cpu_StoreW_Imm(imm, OPERAND_src);
      }
      break;
      case 0x44: // copy.b r1, r2
      {
        Cpu_CopyB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x45: // i45
         break;
      case 0x46: // swap r
      {
        Cpu_SwapB_Reg(OPERAND_dst);
      }
      break;
      case 0x47: // i47
         break;
      case 0x48: // add.b r1, r2
      {
        Cpu_AddB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x49: // sub.b r1, r2
      {
        Cpu_SubB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x4A: // adc.b r1, r2
      {
        Cpu_AddCarryB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x4B: // sbc.b r1, r2
      {
        Cpu_SubCarryB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x4C: // adq.b r, $04
      {
        Cpu_AddQuickB_Imm(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x4D: // sbq.b r, $04
      {
        Cpu_SubQuickB_Imm(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x4E: // inc.b r
      {
        Cpu_IncB_Imm(OPERAND_dst);
      }
      break;
      case 0x4F: // dec.b r
      {
        Cpu_DecB_Imm(OPERAND_dst);
      }
      break;
      case 0x50: // mul.b r1, r2
      {
        Cpu_MulB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x51: // div.b r1, r2
      {
        Cpu_DivB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x52: // mod.b r1, r2
      {
        Cpu_ModB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x53: // neg.b r
      {
        Cpu_NegB_Reg(OPERAND_dst);
      }
      break;
      case 0x54: // abcd r1, $1000
      {
        imm = PC_FETCH();
        Cpu_AddBCD_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x55: // sbcd r1, $1000
      {
        imm = PC_FETCH();
        Cpu_SubBCD_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x56: // i56
         break;
      case 0x57: // i57
         break;
      case 0x58: // and.b r1, r2
      {
        Cpu_AndB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x59: // or.b r1, r2
      {
        Cpu_OrB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x5A: // xor.b r1, r2
      {
        Cpu_XorB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x5B: // not.b r
      {
        Cpu_NotB_Reg(OPERAND_dst);
      }
      break;
      case 0x5C: // shl.b r, $04
      {
        Cpu_ShiftLeftB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x5D: // shr.b r, $04
      {
        Cpu_ShiftRightB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x5E: // rol.b r, $04
      {
        Cpu_RollLeftB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x5F: // ror.b r, $04
      {
        Cpu_RollRightB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x60: // jmp $1000
      {
        imm = PC_FETCH();
        Cpu_JumpW_Imm(imm);
      }
      break;
      case 0x61: // i61
         break;
      case 0x62: // jsr $1000
      {
        imm = PC_FETCH();
        Cpu_JumpSubroutine_Imm(imm);
      }
      break;
      case 0x63: // i63
         break;
      case 0x64: // cmp.b r1, r2
      {
        Cpu_CompareB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x65: // i65
         break;
      case 0x66: // scf.and $04
      {
        Cpu_SetCF_And_Imm(OPERAND_src);
      }
      break;
      case 0x67: // i67
         break;
      case 0x68: // bra.b $10
      {
        Cpu_BranchAlwaysB_Imm(operand);
      }
      break;
      case 0x69: // i69
         break;
      case 0x6A: // bsr.b $10
      {
        Cpu_BranchSubroutineB_Imm(operand);
      }
      break;
      case 0x6B: // i6b
         break;
      case 0x6C: // beq $10
      {
        Cpu_BranchCondW(COND_EQ, operand);
      }
      break;
      case 0x6D: // bne $10
      {
        Cpu_BranchCondW(COND_NEQ, operand);
      }
      break;
      case 0x6E: // bro $10
      {
        Cpu_BranchCondW(COND_OVERFLOW, operand);
      }
      break;
      case 0x6F: // brc $10
      {
        Cpu_BranchCondW(COND_CARRY, operand);
      }
      break;
      case 0x70: // blt $10
      {
        Cpu_BranchCondW(COND_LT, operand);
      }
      break;
      case 0x71: // bgt $10
      {
        Cpu_BranchCondW(COND_GT, operand);
      }
      break;
      case 0x72: // ble $10
      {
        Cpu_BranchCondW(COND_LT_EQ, operand);
      }
      break;
      case 0x73: // bge $10
      {
        Cpu_BranchCondW(COND_GT_EQ, operand);
      }
      break;
      case 0x74: // brm $10
      {
        Cpu_BranchCondW(COND_MORE, operand);
      }
      break;
      case 0x75: // brl $10
      {
        Cpu_BranchCondW(COND_LOWER, operand);
      }
      break;
      case 0x76: // bme $10
      {
        Cpu_BranchCondW(COND_MORE_EQ, operand);
      }
      break;
      case 0x77: // ble $10
      {
        Cpu_BranchCondW(COND_LOWER_EQ, operand);
      }
      break;
      case 0x78: // brz $10
      {
        Cpu_BranchCondW(COND_ZERO, operand);
      }
      break;
      case 0x79: // bnz $10
      {
        Cpu_BranchCondW(COND_NOT_ZERO, operand);
      }
      break;
      case 0x7A: // brp $10
      {
        Cpu_BranchCondW(COND_POSITIVE, operand);
      }
      break;
      case 0x7B: // brn $10
      {
        Cpu_BranchCondW(COND_NEGATIVE, operand);
      }
      break;
      case 0x7C: // i7c
         break;
      case 0x7D: // int.clear $10
      {
        Cpu_Interrupt_ClearMask(OPERAND_src);
      }
      break;
      case 0x7E: // i7e
         break;
      case 0x7F: // brk.m $1000
      {
        imm = PC_FETCH();
        Cpu_Breakpoint_Memory(imm);
      }
      break;
      case 0x80: // push $1000
      {
        imm = PC_FETCH();
        Cpu_PushW_Imm(imm);
      }
      break;
      case 0x81: // i81
         break;
      case 0x82: // load.b r1, r2
      {
        Cpu_LoadB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x83: // store.b r1, r2
      {
        Cpu_StoreB_Reg(OPERAND_dst, OPERAND_src);
      }
      break;
      case 0x84: // i84
         break;
      case 0x85: // i85
         break;
      case 0x86: // i86
         break;
      case 0x87: // i87
         break;
      case 0x88: // add r1, $1000
      {
        imm = PC_FETCH();
        Cpu_AddW_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x89: // sub r1, $1000
      {
        imm = PC_FETCH();
        Cpu_SubW_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x8A: // adc r1, $1000
      {
        imm = PC_FETCH();
        Cpu_AddCarryW_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x8B: // sbc r1, $1000
      {
        imm = PC_FETCH();
        Cpu_SubCarryW_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x8C: // i8c
         break;
      case 0x8D: // i8d
         break;
      case 0x8E: // i8e
         break;
      case 0x8F: // i8f
         break;
      case 0x90: // mul r1, $1000
      {
        imm = PC_FETCH();
        Cpu_MulW_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x91: // div r1, $1000
      {
        imm = PC_FETCH();
        Cpu_DivW_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x92: // mod r1, $1000
      {
        imm = PC_FETCH();
        Cpu_ModW_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x93: // i93
         break;
      case 0x94: // i94
         break;
      case 0x95: // i95
         break;
      case 0x96: // i96
         break;
      case 0x97: // i97
         break;
      case 0x98: // and r1, $1000
      {
        imm = PC_FETCH();
        Cpu_AndW_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x99: // or r1, $1000
      {
        imm = PC_FETCH();
        Cpu_OrW_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x9A: // xor r1, $1000
      {
        imm = PC_FETCH();
        Cpu_XorW_Imm(OPERAND_dst, imm);
      }
      break;
      case 0x9B: // i9b
         break;
      case 0x9C: // i9c
         break;
      case 0x9D: // i9d
         break;
      case 0x9E: // i9e
         break;
      case 0x9F: // i9f
         break;
      case 0xA0: // ia0
         break;
      case 0xA1: // ia1
         break;
      case 0xA2: // ia2
         break;
      case 0xA3: // ia3
         break;
      case 0xA4: // cmp r1, $1000
      {
        imm = PC_FETCH();
        Cpu_CompareW_Imm(OPERAND_dst, imm);
      }
      break;
      case 0xA5: // ia5
         break;
      case 0xA6: // ia6
         break;
      case 0xA7: // ia7
         break;
      case 0xA8: // bra $1000
      {
        imm = PC_FETCH();
        Cpu_BranchAlwaysW_Imm(imm);
      }
      break;
      case 0xA9: // ia9
         break;
      case 0xAA: // bsr $1000
      {
        imm = PC_FETCH();
        Cpu_BranchSubroutineW_Imm(imm);
      }
      break;
      case 0xAB: // iab
         break;
      case 0xAC: // beq $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_EQ, imm);
      }
      break;
      case 0xAD: // bne $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_NEQ, imm);
      }
      break;
      case 0xAE: // bro $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_OVERFLOW, imm);
      }
      break;
      case 0xAF: // brc $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_CARRY, imm);
      }
      break;
      case 0xB0: // blt $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_LT, imm);
      }
      break;
      case 0xB1: // bgt $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_GT, imm);
      }
      break;
      case 0xB2: // ble $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_LT_EQ, imm);
      }
      break;
      case 0xB3: // bge $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_GT_EQ, imm);
      }
      break;
      case 0xB4: // brm $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_MORE, imm);
      }
      break;
      case 0xB5: // brl $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_LOWER, imm);
      }
      break;
      case 0xB6: // bme $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_MORE_EQ, imm);
      }
      break;
      case 0xB7: // ble $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_LOWER_EQ, imm);
      }
      break;
      case 0xB8: // brz $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_ZERO, imm);
      }
      break;
      case 0xB9: // bnz $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_NOT_ZERO, imm);
      }
      break;
      case 0xBA: // brp $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_POSITIVE, imm);
      }
      break;
      case 0xBB: // brn $1000
      {
        imm = PC_FETCH();
        Cpu_BranchCondB(COND_NOT_ZERO, imm);
      }
      break;
      case 0xBC: // ibc
         break;
      case 0xBD: // int $10
      {
        Cpu_Interrupt_Call(OPERAND_src);
      }
      break;
      case 0xBE: // ibe
         break;
      case 0xBF: // brk.c $1000
      {
        imm = PC_FETCH();
        Cpu_Breakpoint_Comment(imm);
      }
      break;
      case 0xC0: // push $10
      {
        imm = PC_FETCH();
        Cpu_PushB_Imm(imm);
      }
      break;
      case 0xC1: // ic1
         break;
      case 0xC2: // load.b r1, $1000
      {
        imm = PC_FETCH();
        Cpu_LoadB_Imm(OPERAND_dst, imm);
      }
      break;
      case 0xC3: // store.b $1000, r2
      {
        imm = PC_FETCH();
        Cpu_StoreB_Imm(imm, OPERAND_dst);
      }
      break;
      case 0xC4: // ic4
         break;
      case 0xC5: // ic5
         break;
      case 0xC6: // ic6
         break;
      case 0xC7: // ic7
         break;
      case 0xC8: // add.b r1, $10
      {
        imm = PC_FETCH();
        Cpu_AddB_Imm(OPERAND_dst, imm);
      }
      break;
      case 0xC9: // sub.b r1, $10
      {
        imm = PC_FETCH();
        Cpu_SubB_Imm(OPERAND_dst, imm);
      }
      break;
      case 0xCA: // adc.b r1, $10
      {
        imm = PC_FETCH();
        Cpu_AddCarryB_Imm(OPERAND_dst, imm);
      }
      break;
      case 0xCB: // sbc.b r1, $10
      {
        imm = PC_FETCH();
        Cpu_SubCarryB_Imm(OPERAND_dst, imm);
      }
      break;
      case 0xCC: // icc
         break;
      case 0xCD: // icd
         break;
      case 0xCE: // ice
         break;
      case 0xCF: // icf
         break;
      case 0xD0: // mul.b r1, $10
      {
        imm = PC_FETCH();
        Cpu_MulB_Imm(OPERAND_dst, imm);
      }
      break;
      case 0xD1: // div.b r1, $10
      {
        imm = PC_FETCH();
        Cpu_DivB_Imm(OPERAND_dst, imm);
      }
      break;
      case 0xD2: // mod.b r1, $10
      {
        imm = PC_FETCH();
        Cpu_ModB_Imm(OPERAND_dst, imm);
      }
      break;
      case 0xD3: // id3
         break;
      case 0xD4: // id4
         break;
      case 0xD5: // id5
         break;
      case 0xD6: // id6
         break;
      case 0xD7: // id7
         break;
      case 0xD8: // and.b r1, $10
      {
        imm = PC_FETCH();
        Cpu_AndB_Imm(OPERAND_dst, imm);
      }
      break;
      case 0xD9: // or.b r1, $10
      {
        imm = PC_FETCH();
        Cpu_OrB_Imm(OPERAND_dst, imm);
      }
      break;
      case 0xDA: // xor.b r1, $10
      {
        imm = PC_FETCH();
        Cpu_XorB_Imm(OPERAND_dst, imm);
      }
      break;
      case 0xDB: // idb
         break;
      case 0xDC: // idc
         break;
      case 0xDD: // idd
         break;
      case 0xDE: // ide
         break;
      case 0xDF: // idf
         break;
      case 0xE0: // ie0
         break;
      case 0xE1: // ie1
         break;
      case 0xE2: // ie2
         break;
      case 0xE3: // ie3
         break;
      case 0xE4: // cmp.b r1, $10
      {
        imm = PC_FETCH();
        Cpu_CompareB_Imm(OPERAND_dst, imm);
      }
      break;
      case 0xE5: // ie5
         break;
      case 0xE6: // ie6
         break;
      case 0xE7: // ie7
         break;
      case 0xE8: // ie8
         break;
      case 0xE9: // ie9
         break;
      case 0xEA: // iea
         break;
      case 0xEB: // ieb
         break;
      case 0xEC: // iec
         break;
      case 0xED: // ied
         break;
      case 0xEE: // iee
         break;
      case 0xEF: // ief
         break;
      case 0xF0: // if0
         break;
      case 0xF1: // if1
         break;
      case 0xF2: // if2
         break;
      case 0xF3: // if3
         break;
      case 0xF4: // if4
         break;
      case 0xF5: // if5
         break;
      case 0xF6: // if6
         break;
      case 0xF7: // if7
         break;
      case 0xF8: // if8
         break;
      case 0xF9: // if9
         break;
      case 0xFA: // ifa
         break;
      case 0xFB: // ifb
         break;
      case 0xFC: // ifc
         break;
      case 0xFD: // int.ivt $1000
      {
        imm = PC_FETCH();
        Cpu_Interrupt_SetTableAddress(imm);
      }
      break;
      case 0xFE: // ife
         break;
      case 0xFF: // brk.halt
      {
        Cpu_Halt();
      }
      break;
  }
}

