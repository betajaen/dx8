// Instructions

static void Cpu_DecodeAndRun(Byte opcode, Byte operand, u8* subCycle)
{
  Word imm = 0;

  switch(opcode)
  {
      
      case 0x00: // 0 push r
      {
      switch((*subCycle))
      {
        case 0:
        {
          i0_0:
          (*subCycle)++;
          CPU.er.mar = CPU.stack;
          CPU.er.mdr = CPU.registers[LO_NIBBLE(operand)];
          Cpu16_WriteW(CPU.mar, CPU.mdr);
        }
        return;
        case 1:
        {
          i0_1:
          (*subCycle)++;
          CPU.stack = CPU.stack + 2;
        }
        return;
      }
      }
      break;
      
      case 0x01: // 1 pop r
      {
      switch((*subCycle))
      {
        case 0:
        {
          i1_0:
          (*subCycle)++;
          CPU.stack = CPU.stack - 1;
          CPU.er.mdr = CPU.stack;
          CPU.er.mdr = Cpu16_ReadW(CPU.er.mar);
        }
        return;
        case 1:
        {
          i1_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU.er.mdr;
          CPU.stack = CPU.stack + 2;
        }
        return;
      }
      }
      break;
      
      case 0x02: // 2 load r1, r2
      {
      switch((*subCycle))
      {
        case 0:
        {
          i2_0:
          (*subCycle)++;
          CPU.er.mar = CPU.registers[LO_NIBBLE(operand)];
          CPU.er.mdr = Cpu16_ReadW(CPU.er.mar);
        }
        return;
        case 1:
        {
          i2_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU.er.mdr;
        }
        return;
      }
      }
      break;
      
      case 0x03: // 3 store r1, r2
      {
        CPU.er.mar = CPU.registers[HI_NIBBLE(operand)];
        CPU.er.mdr = CPU.registers[LO_NIBBLE(operand)];
        Cpu16_WriteW(CPU.mar, CPU.mdr);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x04: // 4 copy r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU.registers[LO_NIBBLE(operand)];
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x05: // 5 set r, $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          i5_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i5_1;
          }
        }
        return;
        case 1:
        {
          i5_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU.er.mdr;
        }
        return;
      }
      }
      break;
      
      case 0x06: // 6 move r1, r2
      {
      switch((*subCycle))
      {
        case 0:
        {
          i6_0:
          (*subCycle)++;
          CPU.er.mar = CPU.registers[LO_NIBBLE(operand)];
          CPU.er.mdr = Cpu16_ReadW(CPU.er.mar);
        }
        return;
        case 1:
        {
          i6_1:
          (*subCycle)++;
          CPU.er.mar = CPU.registers[HI_NIBBLE(operand)];
          Cpu16_WriteW(CPU.mar, CPU.mdr);
        }
        return;
      }
      }
      break;
      
      case 0x07: // 7 setq r, $04
      {
        CPU.registers[HI_NIBBLE(operand)] = LO_NIBBLE(operand);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x08: // 8 add r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] + CPU.registers[LO_NIBBLE(operand)];
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x09: // 9 sub r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] + CPU.registers[LO_NIBBLE(operand)];
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x0A: // 10 adc r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU16_ADC(CPU.registers[HI_NIBBLE(operand)], CPU.registers[LO_NIBBLE(operand)]);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x0B: // 11 sbc r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU16_SBC(CPU.registers[HI_NIBBLE(operand)], CPU.registers[LO_NIBBLE(operand)]);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x0C: // 12 adq r, $04
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] + LO_NIBBLE(operand);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x0D: // 13 sbq r, $04
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] + LO_NIBBLE(operand);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x0E: // 14 inc r
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] + 1;
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x0F: // 15 dec r
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] + 1;
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x10: // 16 mul r1, r2
         break;
      
      case 0x11: // 17 div r1, r2
         break;
      
      case 0x12: // 18 mod r1, r2
         break;
      
      case 0x13: // 19 neg r
         break;
      
      case 0x14: // 20 abcd r1, r2
         break;
      
      case 0x15: // 21 sbcd r1, r2
         break;
      
      case 0x16: // 22 nbcd r
         break;
      
      case 0x17: // 23 i17
         break;
      
      case 0x18: // 24 and r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] & CPU.registers[LO_NIBBLE(operand)];
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x19: // 25 or r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] | CPU.registers[LO_NIBBLE(operand)];
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x1A: // 26 xor r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] ^ CPU.registers[LO_NIBBLE(operand)];
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x1B: // 27 not r
      {
        CPU.registers[HI_NIBBLE(operand)] = ~CPU.registers[HI_NIBBLE(operand)];
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x1C: // 28 shl r, $04
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] << LO_NIBBLE(operand);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x1D: // 29 shr r, $04
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] >> LO_NIBBLE(operand);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x1E: // 30 rol r, $04
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU16_ROL(CPU.registers[HI_NIBBLE(operand)], LO_NIBBLE(operand));
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x1F: // 31 ror r, $04
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU16_ROR(CPU.registers[HI_NIBBLE(operand)], LO_NIBBLE(operand)) & 0xFF;
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x20: // 32 jmp r
      {
        CPU.pc = CPU.registers[HI_NIBBLE(operand)];
        Cpu16_Flush();
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x21: // 33 jta $1000, r
      {
      switch((*subCycle))
      {
        case 0:
        {
          i21_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i21_1;
          }
        }
        return;
        case 1:
        {
          i21_1:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_ReadW(CPU.er.mar);
        }
        return;
        case 2:
        {
          i21_2:
          (*subCycle)++;
          CPU.er.temp = CPU.registers[HI_NIBBLE(operand)];
          CPU.er.temp = CPU.er.temp << 2;
          CPU.er.mdr = CPU.er.mdr + CPU.er.temp;
        }
        return;
        case 3:
        {
          i21_3:
          (*subCycle)++;
          CPU.pc = CPU.er.mdr;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0x22: // 34 jsr r
      {
      switch((*subCycle))
      {
        case 0:
        {
          i22_0:
          (*subCycle)++;
          Cpu16_WriteW(CPU.mar, CPU.mdr);
          CPU.pcStack = CPU.pcStack + 1;
        }
        return;
        case 1:
        {
          i22_1:
          (*subCycle)++;
          CPU.pc = CPU.registers[HI_NIBBLE(operand)];
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0x23: // 35 ret
      {
      switch((*subCycle))
      {
        case 0:
        {
          i23_0:
          (*subCycle)++;
          CPU.pcStack = CPU.pcStack - 1;
          CPU.er.mdr = Cpu16_ReadW(CPU.er.mar);
        }
        return;
        case 1:
        {
          i23_1:
          (*subCycle)++;
          CPU.pc = CPU.er.mdr;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0x24: // 36 cmp r1, r2
      {
        Cpu16_CmpW(CPU.registers[HI_NIBBLE(operand)], CPU.registers[LO_NIBBLE(operand)]);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x25: // 37 cmpb r1, $4
      {
        Cpu16_CmpBit(CPU.registers[HI_NIBBLE(operand)], LO_NIBBLE(operand));
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x26: // 38 scf.or $04
      {
        Cpu16_OrConditionFlags(LO_NIBBLE(operand));
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x27: // 39 i27
         break;
      
      case 0x28: // 40 bra r
      {
        Cpu16_PcAddSignedW(CPU.registers[HI_NIBBLE(operand)]);
        Cpu16_Flush();
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x29: // 41 i29
         break;
      
      case 0x2A: // 42 bsr r
      {
      switch((*subCycle))
      {
        case 0:
        {
          i2a_0:
          (*subCycle)++;
          Cpu16_WriteW(CPU.mar, CPU.mdr);
          CPU.pcStack = CPU.pcStack + 1;
        }
        return;
        case 1:
        {
          i2a_1:
          (*subCycle)++;
          Cpu16_PcAddSignedW(CPU.registers[HI_NIBBLE(operand)]);
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0x2B: // 43 i2b
         break;
      
      case 0x2C: // 44 i2c
         break;
      
      case 0x2D: // 45 i2d
         break;
      
      case 0x2E: // 46 i2e
         break;
      
      case 0x2F: // 47 i2f
         break;
      
      case 0x30: // 48 i30
         break;
      
      case 0x31: // 49 i31
         break;
      
      case 0x32: // 50 i32
         break;
      
      case 0x33: // 51 i33
         break;
      
      case 0x34: // 52 i34
         break;
      
      case 0x35: // 53 i35
         break;
      
      case 0x36: // 54 i36
         break;
      
      case 0x37: // 55 i37
         break;
      
      case 0x38: // 56 i38
         break;
      
      case 0x39: // 57 i39
         break;
      
      case 0x3A: // 58 i3a
         break;
      
      case 0x3B: // 59 i3b
         break;
      
      case 0x3C: // 60 io $01
         break;
      
      case 0x3D: // 61 int.set $10
         break;
      
      case 0x3E: // 62 rti
         break;
      
      case 0x3F: // 63 brk.r $01
         break;
      
      case 0x40: // 64 push.b r
      {
      switch((*subCycle))
      {
        case 0:
        {
          i40_0:
          (*subCycle)++;
          CPU.er.mar = CPU.stack;
          CPU.er.mdr = CPU.registers[LO_NIBBLE(operand)];
          Cpu16_WriteB(CPU.mar, CPU.mdr);
        }
        return;
        case 1:
        {
          i40_1:
          (*subCycle)++;
          CPU.stack = CPU.stack + 1;
        }
        return;
      }
      }
      break;
      
      case 0x41: // 65 pop.b r
      {
      switch((*subCycle))
      {
        case 0:
        {
          i41_0:
          (*subCycle)++;
          CPU.stack = CPU.stack - 1;
          CPU.er.mdr = CPU.stack;
          CPU.er.mdr = Cpu16_ReadB(CPU.er.mar);
        }
        return;
        case 1:
        {
          i41_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU.er.mdr;
          CPU.stack = CPU.stack + 1;
        }
        return;
      }
      }
      break;
      
      case 0x42: // 66 load r1, $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          i42_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i42_1;
          }
        }
        return;
        case 1:
        {
          i42_1:
          (*subCycle)++;
          CPU.er.mar = CPU.er.mdr;
          CPU.er.mdr = Cpu16_ReadW(CPU.er.mar);
        }
        return;
        case 2:
        {
          i42_2:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU.er.mdr;
        }
        return;
      }
      }
      break;
      
      case 0x43: // 67 store $1000, r2
      {
      switch((*subCycle))
      {
        case 0:
        {
          i43_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i43_1;
          }
        }
        return;
        case 1:
        {
          i43_1:
          (*subCycle)++;
          CPU.er.mar = CPU.registers[HI_NIBBLE(operand)];
          CPU.er.mdr = CPU.er.mdr;
          Cpu16_WriteW(CPU.mar, CPU.mdr);
        }
        return;
      }
      }
      break;
      
      case 0x44: // 68 copy.b r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = (CPU.registers[LO_NIBBLE(operand)] & 0xFF);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x45: // 69 i45
         break;
      
      case 0x46: // 70 move $1000, r2
      {
      switch((*subCycle))
      {
        case 0:
        {
          i46_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i46_1;
          }
        }
        return;
        case 1:
        {
          i46_1:
          (*subCycle)++;
          CPU.er.temp = CPU.er.mdr;
          CPU.er.mar = CPU.registers[LO_NIBBLE(operand)];
          CPU.er.mdr = Cpu16_ReadW(CPU.er.mar);
        }
        return;
        case 2:
        {
          i46_2:
          (*subCycle)++;
          CPU.er.mar = CPU.er.temp;
          Cpu16_WriteW(CPU.mar, CPU.mdr);
        }
        return;
      }
      }
      break;
      
      case 0x47: // 71 i47
         break;
      
      case 0x48: // 72 add.b r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = (CPU.registers[HI_NIBBLE(operand)] + CPU.registers[LO_NIBBLE(operand)]) & 0xFF;
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x49: // 73 sub.b r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = (CPU.registers[HI_NIBBLE(operand)] + CPU.registers[LO_NIBBLE(operand)]) & 0xFF;
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x4A: // 74 adc.b r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = (CPU16_ADC(CPU.registers[HI_NIBBLE(operand)], CPU.registers[LO_NIBBLE(operand)]) & 0xFF);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x4B: // 75 sbc.b r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = (CPU16_SBC(CPU.registers[HI_NIBBLE(operand)], CPU.registers[LO_NIBBLE(operand)]) & 0xFF);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x4C: // 76 adq.b r, $04
      {
        CPU.registers[HI_NIBBLE(operand)] = (CPU.registers[HI_NIBBLE(operand)] + LO_NIBBLE(operand)) & 0xFF;
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x4D: // 77 sbq.b r, $04
      {
        CPU.registers[HI_NIBBLE(operand)] = (CPU.registers[HI_NIBBLE(operand)] + LO_NIBBLE(operand)) & 0xFF;
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x4E: // 78 inc.b r
      {
        CPU.registers[HI_NIBBLE(operand)] = (CPU.registers[HI_NIBBLE(operand)] + 1) & 0xFF;
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x4F: // 79 dec.b r
      {
        CPU.registers[HI_NIBBLE(operand)] = (CPU.registers[HI_NIBBLE(operand)] + 1) & 0xFF;
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x50: // 80 mul.b r1, r2
         break;
      
      case 0x51: // 81 div.b r1, r2
         break;
      
      case 0x52: // 82 mod.b r1, r2
         break;
      
      case 0x53: // 83 neg.b r
         break;
      
      case 0x54: // 84 abcd r1, $1000
         break;
      
      case 0x55: // 85 sbcd r1, $1000
         break;
      
      case 0x56: // 86 i56
         break;
      
      case 0x57: // 87 i57
         break;
      
      case 0x58: // 88 and.b r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = ((CPU.registers[HI_NIBBLE(operand)] & CPU.registers[LO_NIBBLE(operand)]) & 0xFF);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x59: // 89 or.b r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = ((CPU.registers[HI_NIBBLE(operand)] | CPU.registers[LO_NIBBLE(operand)]) & 0xFF);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x5A: // 90 xor.b r1, r2
      {
        CPU.registers[HI_NIBBLE(operand)] = ((CPU.registers[HI_NIBBLE(operand)] ^ CPU.registers[LO_NIBBLE(operand)]) & 0xFF);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x5B: // 91 not.b r
      {
        CPU.registers[HI_NIBBLE(operand)] = ((~CPU.registers[HI_NIBBLE(operand)]) & 0xFF);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x5C: // 92 shl.b r, $04
      {
        CPU.registers[HI_NIBBLE(operand)] = ((CPU.registers[HI_NIBBLE(operand)] << LO_NIBBLE(operand)) & 0xFF);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x5D: // 93 shr.b r, $04
      {
        CPU.registers[HI_NIBBLE(operand)] = ((CPU.registers[HI_NIBBLE(operand)] >> LO_NIBBLE(operand)) & 0xFF);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x5E: // 94 rol.b r, $04
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU16_ROL(CPU.registers[HI_NIBBLE(operand)], LO_NIBBLE(operand));
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x5F: // 95 ror.b r, $04
      {
        CPU.registers[HI_NIBBLE(operand)] = CPU16_ROR(CPU.registers[HI_NIBBLE(operand)], LO_NIBBLE(operand)) & 0xFF;
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x60: // 96 jmp $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          i60_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i60_1;
          }
        }
        return;
        case 1:
        {
          i60_1:
          (*subCycle)++;
          CPU.pc = CPU.er.mdr;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0x61: // 97 i61
         break;
      
      case 0x62: // 98 jsr $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          i62_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i62_1;
          }
        }
        return;
        case 1:
        {
          i62_1:
          (*subCycle)++;
          Cpu16_WriteW(CPU.mar, CPU.mdr);
          CPU.pcStack = CPU.pcStack + 1;
        }
        return;
        case 2:
        {
          i62_2:
          (*subCycle)++;
          CPU.pc = CPU.er.mdr;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0x63: // 99 i63
         break;
      
      case 0x64: // 100 cmp.b r1, r2
      {
        Cpu16_CmpB(CPU.registers[HI_NIBBLE(operand)], CPU.registers[LO_NIBBLE(operand)]);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x65: // 101 i65
         break;
      
      case 0x66: // 102 scf.and $04
      {
        Cpu16_AndConditionFlags(LO_NIBBLE(operand));
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x67: // 103 i67
         break;
      
      case 0x68: // 104 bra.b $10
      {
        Cpu16_PcAddSignedB(operand);
        Cpu16_Flush();
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x69: // 105 i69
         break;
      
      case 0x6A: // 106 bsr.b $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          i6a_0:
          (*subCycle)++;
          Cpu16_WriteW(CPU.mar, CPU.mdr);
          CPU.pcStack = CPU.pcStack + 1;
        }
        return;
        case 1:
        {
          i6a_1:
          (*subCycle)++;
          Cpu16_PcAddSignedB(operand);
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0x6B: // 107 i6b
         break;
      
      case 0x6C: // 108 beq $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          i6c_0:
          (*subCycle)++;
          CPU.er.temp = CPU.pc;
          CPU.er.temp = CPU.er.temp + operand;
        }
        return;
        case 1:
        {
          i6c_1:
          (*subCycle)++;
          if ((COND_EQ) == false)
          {
            (*subCycle) = 0x0F;
            return;
          }
        }
        return;
        case 2:
        {
          i6c_2:
          (*subCycle)++;
          CPU.pc = CPU.er.temp;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0x6D: // 109 bne $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          i6d_0:
          (*subCycle)++;
          CPU.er.temp = CPU.pc;
          CPU.er.temp = CPU.er.temp + operand;
        }
        return;
        case 1:
        {
          i6d_1:
          (*subCycle)++;
          if ((COND_NEQ) == false)
          {
            (*subCycle) = 0x0F;
            return;
          }
        }
        return;
        case 2:
        {
          i6d_2:
          (*subCycle)++;
          CPU.pc = CPU.er.temp;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0x6E: // 110 bro $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          i6e_0:
          (*subCycle)++;
          CPU.er.temp = CPU.pc;
          CPU.er.temp = CPU.er.temp + operand;
        }
        return;
        case 1:
        {
          i6e_1:
          (*subCycle)++;
          if ((COND_OVERFLOW) == false)
          {
            (*subCycle) = 0x0F;
            return;
          }
        }
        return;
        case 2:
        {
          i6e_2:
          (*subCycle)++;
          CPU.pc = CPU.er.temp;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0x6F: // 111 brc $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          i6f_0:
          (*subCycle)++;
          CPU.er.temp = CPU.pc;
          CPU.er.temp = CPU.er.temp + operand;
        }
        return;
        case 1:
        {
          i6f_1:
          (*subCycle)++;
          if ((COND_CARRY) == false)
          {
            (*subCycle) = 0x0F;
            return;
          }
        }
        return;
        case 2:
        {
          i6f_2:
          (*subCycle)++;
          CPU.pc = CPU.er.temp;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0x70: // 112 blt $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          i70_0:
          (*subCycle)++;
          CPU.er.temp = CPU.pc;
          CPU.er.temp = CPU.er.temp + operand;
        }
        return;
        case 1:
        {
          i70_1:
          (*subCycle)++;
          if ((COND_LT) == false)
          {
            (*subCycle) = 0x0F;
            return;
          }
        }
        return;
        case 2:
        {
          i70_2:
          (*subCycle)++;
          CPU.pc = CPU.er.temp;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0x71: // 113 bgt $10
         break;
      
      case 0x72: // 114 ble $10
         break;
      
      case 0x73: // 115 bge $10
         break;
      
      case 0x74: // 116 brm $10
         break;
      
      case 0x75: // 117 brl $10
         break;
      
      case 0x76: // 118 bme $10
         break;
      
      case 0x77: // 119 ble $10
         break;
      
      case 0x78: // 120 brz $10
         break;
      
      case 0x79: // 121 bnz $10
         break;
      
      case 0x7A: // 122 brp $10
         break;
      
      case 0x7B: // 123 brn $10
         break;
      
      case 0x7C: // 124 i7c
         break;
      
      case 0x7D: // 125 int.clear $10
         break;
      
      case 0x7E: // 126 i7e
         break;
      
      case 0x7F: // 127 brk.m $1000
         break;
      
      case 0x80: // 128 push $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          i80_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i80_1;
          }
        }
        return;
        case 1:
        {
          i80_1:
          (*subCycle)++;
          CPU.er.mar = CPU.stack;
          CPU.er.mdr = CPU.registers[LO_NIBBLE(operand)];
          Cpu16_WriteW(CPU.mar, CPU.mdr);
        }
        return;
        case 2:
        {
          i80_2:
          (*subCycle)++;
          CPU.stack = CPU.stack + 2;
        }
        return;
      }
      }
      break;
      
      case 0x81: // 129 i81
         break;
      
      case 0x82: // 130 load.b r1, r2
      {
      switch((*subCycle))
      {
        case 0:
        {
          i82_0:
          (*subCycle)++;
          CPU.er.mar = CPU.registers[LO_NIBBLE(operand)];
          CPU.er.mdr = Cpu16_ReadB(CPU.er.mar);
        }
        return;
        case 1:
        {
          i82_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU.er.mdr;
        }
        return;
      }
      }
      break;
      
      case 0x83: // 131 store.b r1, r2
      {
        CPU.er.mar = CPU.registers[HI_NIBBLE(operand)];
        CPU.er.mdr = CPU.registers[LO_NIBBLE(operand)];
        Cpu16_WriteB(CPU.mar, CPU.mdr);
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0x84: // 132 i84
         break;
      
      case 0x85: // 133 i85
         break;
      
      case 0x86: // 134 move r1, $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          i86_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i86_1;
          }
        }
        return;
        case 1:
        {
          i86_1:
          (*subCycle)++;
          CPU.er.mar = CPU.er.mdr;
          CPU.er.mdr = Cpu16_ReadW(CPU.er.mar);
        }
        return;
        case 2:
        {
          i86_2:
          (*subCycle)++;
          CPU.er.mar = CPU.registers[HI_NIBBLE(operand)];
          Cpu16_WriteW(CPU.mar, CPU.mdr);
        }
        return;
      }
      }
      break;
      
      case 0x87: // 135 i87
         break;
      
      case 0x88: // 136 add r1, $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          i88_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i88_1;
          }
        }
        return;
        case 1:
        {
          i88_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] + CPU.er.mdr;
        }
        return;
      }
      }
      break;
      
      case 0x89: // 137 sub r1, $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          i89_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i89_1;
          }
        }
        return;
        case 1:
        {
          i89_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] + CPU.er.mdr;
        }
        return;
      }
      }
      break;
      
      case 0x8A: // 138 adc r1, $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          i8a_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i8a_1;
          }
        }
        return;
        case 1:
        {
          i8a_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU16_ADC(CPU.registers[HI_NIBBLE(operand)], CPU.er.mdr);
        }
        return;
      }
      }
      break;
      
      case 0x8B: // 139 sbc r1, $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          i8b_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i8b_1;
          }
        }
        return;
        case 1:
        {
          i8b_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU16_SBC(CPU.registers[HI_NIBBLE(operand)], CPU.er.mdr);
        }
        return;
      }
      }
      break;
      
      case 0x8C: // 140 i8c
         break;
      
      case 0x8D: // 141 i8d
         break;
      
      case 0x8E: // 142 i8e
         break;
      
      case 0x8F: // 143 i8f
         break;
      
      case 0x90: // 144 mul r1, $1000
         break;
      
      case 0x91: // 145 div r1, $1000
         break;
      
      case 0x92: // 146 mod r1, $1000
         break;
      
      case 0x93: // 147 i93
         break;
      
      case 0x94: // 148 i94
         break;
      
      case 0x95: // 149 i95
         break;
      
      case 0x96: // 150 i96
         break;
      
      case 0x97: // 151 i97
         break;
      
      case 0x98: // 152 and r1, $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          i98_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i98_1;
          }
        }
        return;
        case 1:
        {
          i98_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] & CPU.er.mdr;
        }
        return;
      }
      }
      break;
      
      case 0x99: // 153 or r1, $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          i99_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i99_1;
          }
        }
        return;
        case 1:
        {
          i99_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] | CPU.er.mdr;
        }
        return;
      }
      }
      break;
      
      case 0x9A: // 154 xor r1, $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          i9a_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto i9a_1;
          }
        }
        return;
        case 1:
        {
          i9a_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU.registers[HI_NIBBLE(operand)] ^ CPU.er.mdr;
        }
        return;
      }
      }
      break;
      
      case 0x9B: // 155 i9b
         break;
      
      case 0x9C: // 156 i9c
         break;
      
      case 0x9D: // 157 i9d
         break;
      
      case 0x9E: // 158 i9e
         break;
      
      case 0x9F: // 159 i9f
         break;
      
      case 0xA0: // 160 ia0
         break;
      
      case 0xA1: // 161 ia1
         break;
      
      case 0xA2: // 162 ia2
         break;
      
      case 0xA3: // 163 ia3
         break;
      
      case 0xA4: // 164 cmp r1, $1000
      {
        Cpu16_CmpW(CPU.registers[HI_NIBBLE(operand)], LO_NIBBLE(operand));
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0xA5: // 165 ia5
         break;
      
      case 0xA6: // 166 ia6
         break;
      
      case 0xA7: // 167 ia7
         break;
      
      case 0xA8: // 168 bra $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          ia8_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto ia8_1;
          }
        }
        return;
        case 1:
        {
          ia8_1:
          (*subCycle)++;
          Cpu16_PcAddSignedW(CPU.er.mdr);
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0xA9: // 169 ia9
         break;
      
      case 0xAA: // 170 bsr $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          iaa_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto iaa_1;
          }
        }
        return;
        case 1:
        {
          iaa_1:
          (*subCycle)++;
          Cpu16_WriteW(CPU.mar, CPU.mdr);
          CPU.pcStack = CPU.pcStack + 1;
        }
        return;
        case 2:
        {
          iaa_2:
          (*subCycle)++;
          Cpu16_PcAddSignedB(CPU.er.mdr);
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0xAB: // 171 iab
         break;
      
      case 0xAC: // 172 beq $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          iac_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto iac_1;
          }
        }
        return;
        case 1:
        {
          iac_1:
          (*subCycle)++;
          CPU.er.temp = CPU.pc;
          CPU.er.temp = CPU.er.temp + operand;
        }
        return;
        case 2:
        {
          iac_2:
          (*subCycle)++;
          if ((COND_EQ) == false)
          {
            (*subCycle) = 0x0F;
            return;
          }
        }
        return;
        case 3:
        {
          iac_3:
          (*subCycle)++;
          CPU.pc = CPU.er.temp;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0xAD: // 173 bne $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          iad_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto iad_1;
          }
        }
        return;
        case 1:
        {
          iad_1:
          (*subCycle)++;
          CPU.er.temp = CPU.pc;
          CPU.er.temp = CPU.er.temp + operand;
        }
        return;
        case 2:
        {
          iad_2:
          (*subCycle)++;
          if ((COND_NEQ) == false)
          {
            (*subCycle) = 0x0F;
            return;
          }
        }
        return;
        case 3:
        {
          iad_3:
          (*subCycle)++;
          CPU.pc = CPU.er.temp;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0xAE: // 174 bro $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          iae_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto iae_1;
          }
        }
        return;
        case 1:
        {
          iae_1:
          (*subCycle)++;
          CPU.er.temp = CPU.pc;
          CPU.er.temp = CPU.er.temp + operand;
        }
        return;
        case 2:
        {
          iae_2:
          (*subCycle)++;
          if ((COND_OVERFLOW) == false)
          {
            (*subCycle) = 0x0F;
            return;
          }
        }
        return;
        case 3:
        {
          iae_3:
          (*subCycle)++;
          CPU.pc = CPU.er.temp;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0xAF: // 175 brc $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          iaf_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto iaf_1;
          }
        }
        return;
        case 1:
        {
          iaf_1:
          (*subCycle)++;
          CPU.er.temp = CPU.pc;
          CPU.er.temp = CPU.er.temp + operand;
        }
        return;
        case 2:
        {
          iaf_2:
          (*subCycle)++;
          if ((COND_CARRY) == false)
          {
            (*subCycle) = 0x0F;
            return;
          }
        }
        return;
        case 3:
        {
          iaf_3:
          (*subCycle)++;
          CPU.pc = CPU.er.temp;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0xB0: // 176 blt $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          ib0_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto ib0_1;
          }
        }
        return;
        case 1:
        {
          ib0_1:
          (*subCycle)++;
          CPU.er.temp = CPU.pc;
          CPU.er.temp = CPU.er.temp + operand;
        }
        return;
        case 2:
        {
          ib0_2:
          (*subCycle)++;
          if ((COND_LT) == false)
          {
            (*subCycle) = 0x0F;
            return;
          }
        }
        return;
        case 3:
        {
          ib0_3:
          (*subCycle)++;
          CPU.pc = CPU.er.temp;
          Cpu16_Flush();
        }
        return;
      }
      }
      break;
      
      case 0xB1: // 177 bgt $1000
         break;
      
      case 0xB2: // 178 ble $1000
         break;
      
      case 0xB3: // 179 bge $1000
         break;
      
      case 0xB4: // 180 brm $1000
         break;
      
      case 0xB5: // 181 brl $1000
         break;
      
      case 0xB6: // 182 bme $1000
         break;
      
      case 0xB7: // 183 ble $1000
         break;
      
      case 0xB8: // 184 brz $1000
         break;
      
      case 0xB9: // 185 bnz $1000
         break;
      
      case 0xBA: // 186 brp $1000
         break;
      
      case 0xBB: // 187 brn $1000
         break;
      
      case 0xBC: // 188 ibc
         break;
      
      case 0xBD: // 189 int $10
         break;
      
      case 0xBE: // 190 ibe
         break;
      
      case 0xBF: // 191 brk.c $1000
         break;
      
      case 0xC0: // 192 push $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          ic0_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto ic0_1;
          }
        }
        return;
        case 1:
        {
          ic0_1:
          (*subCycle)++;
          CPU.er.mar = CPU.stack;
          CPU.er.mdr = CPU.registers[LO_NIBBLE(operand)];
          Cpu16_WriteB(CPU.mar, CPU.mdr);
        }
        return;
        case 2:
        {
          ic0_2:
          (*subCycle)++;
          CPU.stack = CPU.stack + 1;
        }
        return;
      }
      }
      break;
      
      case 0xC1: // 193 ic1
         break;
      
      case 0xC2: // 194 load.b r1, $1000
      {
      switch((*subCycle))
      {
        case 0:
        {
          ic2_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto ic2_1;
          }
        }
        return;
        case 1:
        {
          ic2_1:
          (*subCycle)++;
          CPU.er.mar = CPU.er.mdr;
          CPU.er.mdr = Cpu16_ReadB(CPU.er.mar);
        }
        return;
        case 2:
        {
          ic2_2:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = CPU.er.mdr;
        }
        return;
      }
      }
      break;
      
      case 0xC3: // 195 store.b $1000, r2
      {
      switch((*subCycle))
      {
        case 0:
        {
          ic3_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto ic3_1;
          }
        }
        return;
        case 1:
        {
          ic3_1:
          (*subCycle)++;
          CPU.er.mar = CPU.registers[HI_NIBBLE(operand)];
          CPU.er.mdr = CPU.er.mdr;
          Cpu16_WriteB(CPU.mar, CPU.mdr);
        }
        return;
      }
      }
      break;
      
      case 0xC4: // 196 ic4
         break;
      
      case 0xC5: // 197 ic5
         break;
      
      case 0xC6: // 198 ic6
         break;
      
      case 0xC7: // 199 ic7
         break;
      
      case 0xC8: // 200 add.b r1, $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          ic8_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto ic8_1;
          }
        }
        return;
        case 1:
        {
          ic8_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = (CPU.registers[HI_NIBBLE(operand)] + CPU.er.mdr) & 0xFF;
        }
        return;
      }
      }
      break;
      
      case 0xC9: // 201 sub.b r1, $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          ic9_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto ic9_1;
          }
        }
        return;
        case 1:
        {
          ic9_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = (CPU.registers[HI_NIBBLE(operand)] + CPU.er.mdr) & 0xFF;
        }
        return;
      }
      }
      break;
      
      case 0xCA: // 202 adc.b r1, $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          ica_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto ica_1;
          }
        }
        return;
        case 1:
        {
          ica_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = (CPU16_ADC(CPU.registers[HI_NIBBLE(operand)], CPU.er.mdr) & 0xFF);
        }
        return;
      }
      }
      break;
      
      case 0xCB: // 203 sbc.b r1, $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          icb_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto icb_1;
          }
        }
        return;
        case 1:
        {
          icb_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = (CPU16_SBC(CPU.registers[HI_NIBBLE(operand)], CPU.er.mdr) & 0xFF);
        }
        return;
      }
      }
      break;
      
      case 0xCC: // 204 icc
         break;
      
      case 0xCD: // 205 icd
         break;
      
      case 0xCE: // 206 ice
         break;
      
      case 0xCF: // 207 icf
         break;
      
      case 0xD0: // 208 mul.b r1, $10
         break;
      
      case 0xD1: // 209 div.b r1, $10
         break;
      
      case 0xD2: // 210 mod.b r1, $10
         break;
      
      case 0xD3: // 211 id3
         break;
      
      case 0xD4: // 212 id4
         break;
      
      case 0xD5: // 213 id5
         break;
      
      case 0xD6: // 214 id6
         break;
      
      case 0xD7: // 215 id7
         break;
      
      case 0xD8: // 216 and.b r1, $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          id8_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto id8_1;
          }
        }
        return;
        case 1:
        {
          id8_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = ((CPU.registers[HI_NIBBLE(operand)] & CPU.er.mdr) & 0xFF);
        }
        return;
      }
      }
      break;
      
      case 0xD9: // 217 or.b r1, $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          id9_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto id9_1;
          }
        }
        return;
        case 1:
        {
          id9_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = ((CPU.registers[HI_NIBBLE(operand)] | CPU.er.mdr) & 0xFF);
        }
        return;
      }
      }
      break;
      
      case 0xDA: // 218 xor.b r1, $10
      {
      switch((*subCycle))
      {
        case 0:
        {
          ida_0:
          (*subCycle)++;
          CPU.er.mdr = Cpu16_PcRead();
          if (CPU.er.pcNextCached)
          {
            goto ida_1;
          }
        }
        return;
        case 1:
        {
          ida_1:
          (*subCycle)++;
          CPU.registers[HI_NIBBLE(operand)] = ((CPU.registers[HI_NIBBLE(operand)] ^ CPU.er.mdr) & 0xFF);
        }
        return;
      }
      }
      break;
      
      case 0xDB: // 219 idb
         break;
      
      case 0xDC: // 220 idc
         break;
      
      case 0xDD: // 221 idd
         break;
      
      case 0xDE: // 222 ide
         break;
      
      case 0xDF: // 223 idf
         break;
      
      case 0xE0: // 224 ie0
         break;
      
      case 0xE1: // 225 ie1
         break;
      
      case 0xE2: // 226 ie2
         break;
      
      case 0xE3: // 227 ie3
         break;
      
      case 0xE4: // 228 cmp.b r1, $10
      {
        Cpu16_CmpB(CPU.registers[HI_NIBBLE(operand)], LO_NIBBLE(operand));
        (*subCycle) = 0x0F;
      }
      break;
      
      case 0xE5: // 229 ie5
         break;
      
      case 0xE6: // 230 ie6
         break;
      
      case 0xE7: // 231 ie7
         break;
      
      case 0xE8: // 232 ie8
         break;
      
      case 0xE9: // 233 ie9
         break;
      
      case 0xEA: // 234 iea
         break;
      
      case 0xEB: // 235 ieb
         break;
      
      case 0xEC: // 236 iec
         break;
      
      case 0xED: // 237 ied
         break;
      
      case 0xEE: // 238 iee
         break;
      
      case 0xEF: // 239 ief
         break;
      
      case 0xF0: // 240 if0
         break;
      
      case 0xF1: // 241 if1
         break;
      
      case 0xF2: // 242 if2
         break;
      
      case 0xF3: // 243 if3
         break;
      
      case 0xF4: // 244 if4
         break;
      
      case 0xF5: // 245 if5
         break;
      
      case 0xF6: // 246 if6
         break;
      
      case 0xF7: // 247 if7
         break;
      
      case 0xF8: // 248 if8
         break;
      
      case 0xF9: // 249 if9
         break;
      
      case 0xFA: // 250 ifa
         break;
      
      case 0xFB: // 251 ifb
         break;
      
      case 0xFC: // 252 ifc
         break;
      
      case 0xFD: // 253 int.ivt $1000
         break;
      
      case 0xFE: // 254 ife
         break;
      
      case 0xFF: // 255 brk.halt
         break;
  }
}

