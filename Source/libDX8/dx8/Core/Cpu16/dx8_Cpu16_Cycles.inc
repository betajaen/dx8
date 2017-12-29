
// Cycles

static u32 kCycles[256] = {
  2, // $00  push r
  2, // $01  pop r
  2, // $02  load r1, r2
  2, // $03  store r1, r2
  2, // $04  copy r1, r2
  2, // $05  set r, $1000
  2, // $06  move r1, r2
  2, // $07  setq r, $04
  2, // $08  add r1, r2
  2, // $09  sub r1, r2
  2, // $0A  adc r1, r2
  2, // $0B  sbc r1, r2
  2, // $0C  adq r, $04
  2, // $0D  sbq r, $04
  2, // $0E  inc r
  2, // $0F  dec r
  2, // $10  mul r1, r2
  2, // $11  div r1, r2
  2, // $12  mod r1, r2
  2, // $13  neg r
  2, // $14  abcd r1, r2
  2, // $15  sbcd r1, r2
  2, // $16  nbcd r
  2, // $17  i17
  2, // $18  and r1, r2
  2, // $19  or r1, r2
  2, // $1A  xor r1, r2
  2, // $1B  not r
  2, // $1C  shl r, $04
  2, // $1D  shr r, $04
  2, // $1E  rol r, $04
  2, // $1F  ror r, $04
  2, // $20  jmp r
  2, // $21  jta $1000, r
  2, // $22  jsr r
  2, // $23  ret
  2, // $24  cmp r1, r2
  2, // $25  cmpb r1, $4
  2, // $26  scf.or $04
  2, // $27  i27
  2, // $28  bra r
  2, // $29  i29
  2, // $2A  bsr r
  2, // $2B  i2b
  2, // $2C  i2c
  2, // $2D  i2d
  2, // $2E  i2e
  2, // $2F  i2f
  2, // $30  i30
  2, // $31  i31
  2, // $32  i32
  2, // $33  i33
  2, // $34  i34
  2, // $35  i35
  2, // $36  i36
  2, // $37  i37
  2, // $38  i38
  2, // $39  i39
  2, // $3A  i3a
  2, // $3B  i3b
  2, // $3C  io $01
  2, // $3D  int.set $10
  2, // $3E  rti
  2, // $3F  brk.r $01
  2, // $40  push.b r
  2, // $41  pop.b r
  2, // $42  load r1, $1000
  2, // $43  store $1000, r2
  2, // $44  copy.b r1, r2
  2, // $45  i45
  2, // $46  move $1000, r2
  2, // $47  i47
  2, // $48  add.b r1, r2
  2, // $49  sub.b r1, r2
  2, // $4A  adc.b r1, r2
  2, // $4B  sbc.b r1, r2
  2, // $4C  adq.b r, $04
  2, // $4D  sbq.b r, $04
  2, // $4E  inc.b r
  2, // $4F  dec.b r
  2, // $50  mul.b r1, r2
  2, // $51  div.b r1, r2
  2, // $52  mod.b r1, r2
  2, // $53  neg.b r
  2, // $54  abcd r1, $1000
  2, // $55  sbcd r1, $1000
  2, // $56  i56
  2, // $57  i57
  2, // $58  and.b r1, r2
  2, // $59  or.b r1, r2
  2, // $5A  xor.b r1, r2
  2, // $5B  not.b r
  2, // $5C  shl.b r, $04
  2, // $5D  shr.b r, $04
  2, // $5E  rol.b r, $04
  2, // $5F  ror.b r, $04
  2, // $60  jmp $1000
  2, // $61  i61
  2, // $62  jsr $1000
  2, // $63  i63
  2, // $64  cmp.b r1, r2
  2, // $65  i65
  2, // $66  scf.and $04
  2, // $67  i67
  2, // $68  bra.b $10
  2, // $69  i69
  2, // $6A  bsr.b $10
  2, // $6B  i6b
  2, // $6C  beq $10
  2, // $6D  bne $10
  2, // $6E  bro $10
  2, // $6F  brc $10
  2, // $70  blt $10
  2, // $71  bgt $10
  2, // $72  ble $10
  2, // $73  bge $10
  2, // $74  brm $10
  2, // $75  brl $10
  2, // $76  bme $10
  2, // $77  ble $10
  2, // $78  brz $10
  2, // $79  bnz $10
  2, // $7A  brp $10
  2, // $7B  brn $10
  2, // $7C  i7c
  2, // $7D  int.clear $10
  2, // $7E  i7e
  2, // $7F  brk.m $1000
  2, // $80  push $1000
  2, // $81  i81
  2, // $82  load.b r1, r2
  2, // $83  store.b r1, r2
  2, // $84  i84
  2, // $85  i85
  2, // $86  move r1, $1000
  2, // $87  i87
  2, // $88  add r1, $1000
  2, // $89  sub r1, $1000
  2, // $8A  adc r1, $1000
  2, // $8B  sbc r1, $1000
  2, // $8C  i8c
  2, // $8D  i8d
  2, // $8E  i8e
  2, // $8F  i8f
  2, // $90  mul r1, $1000
  2, // $91  div r1, $1000
  2, // $92  mod r1, $1000
  2, // $93  i93
  2, // $94  i94
  2, // $95  i95
  2, // $96  i96
  2, // $97  i97
  2, // $98  and r1, $1000
  2, // $99  or r1, $1000
  2, // $9A  xor r1, $1000
  2, // $9B  i9b
  2, // $9C  i9c
  2, // $9D  i9d
  2, // $9E  i9e
  2, // $9F  i9f
  2, // $A0  ia0
  2, // $A1  ia1
  2, // $A2  ia2
  2, // $A3  ia3
  2, // $A4  cmp r1, $1000
  2, // $A5  ia5
  2, // $A6  ia6
  2, // $A7  ia7
  2, // $A8  bra $1000
  2, // $A9  ia9
  2, // $AA  bsr $1000
  2, // $AB  iab
  2, // $AC  beq $1000
  2, // $AD  bne $1000
  2, // $AE  bro $1000
  2, // $AF  brc $1000
  2, // $B0  blt $1000
  2, // $B1  bgt $1000
  2, // $B2  ble $1000
  2, // $B3  bge $1000
  2, // $B4  brm $1000
  2, // $B5  brl $1000
  2, // $B6  bme $1000
  2, // $B7  ble $1000
  2, // $B8  brz $1000
  2, // $B9  bnz $1000
  2, // $BA  brp $1000
  2, // $BB  brn $1000
  2, // $BC  ibc
  2, // $BD  int $10
  2, // $BE  ibe
  2, // $BF  brk.c $1000
  2, // $C0  push $10
  2, // $C1  ic1
  2, // $C2  load.b r1, $1000
  2, // $C3  store.b $1000, r2
  2, // $C4  ic4
  2, // $C5  ic5
  2, // $C6  ic6
  2, // $C7  ic7
  2, // $C8  add.b r1, $10
  2, // $C9  sub.b r1, $10
  2, // $CA  adc.b r1, $10
  2, // $CB  sbc.b r1, $10
  2, // $CC  icc
  2, // $CD  icd
  2, // $CE  ice
  2, // $CF  icf
  2, // $D0  mul.b r1, $10
  2, // $D1  div.b r1, $10
  2, // $D2  mod.b r1, $10
  2, // $D3  id3
  2, // $D4  id4
  2, // $D5  id5
  2, // $D6  id6
  2, // $D7  id7
  2, // $D8  and.b r1, $10
  2, // $D9  or.b r1, $10
  2, // $DA  xor.b r1, $10
  2, // $DB  idb
  2, // $DC  idc
  2, // $DD  idd
  2, // $DE  ide
  2, // $DF  idf
  2, // $E0  ie0
  2, // $E1  ie1
  2, // $E2  ie2
  2, // $E3  ie3
  2, // $E4  cmp.b r1, $10
  2, // $E5  ie5
  2, // $E6  ie6
  2, // $E7  ie7
  2, // $E8  ie8
  2, // $E9  ie9
  2, // $EA  iea
  2, // $EB  ieb
  2, // $EC  iec
  2, // $ED  ied
  2, // $EE  iee
  2, // $EF  ief
  2, // $F0  if0
  2, // $F1  if1
  2, // $F2  if2
  2, // $F3  if3
  2, // $F4  if4
  2, // $F5  if5
  2, // $F6  if6
  2, // $F7  if7
  2, // $F8  if8
  2, // $F9  if9
  2, // $FA  ifa
  2, // $FB  ifb
  2, // $FC  ifc
  2, // $FD  int.ivt $1000
  2, // $FE  ife
  2, // $FF  brk.halt
};

static u32 kSizes[256] = {
  2, // $00  push r
  2, // $01  pop r
  2, // $02  load r1, r2
  2, // $03  store r1, r2
  2, // $04  copy r1, r2
  2, // $05  set r, $1000
  2, // $06  move r1, r2
  2, // $07  setq r, $04
  2, // $08  add r1, r2
  2, // $09  sub r1, r2
  2, // $0A  adc r1, r2
  2, // $0B  sbc r1, r2
  2, // $0C  adq r, $04
  2, // $0D  sbq r, $04
  2, // $0E  inc r
  2, // $0F  dec r
  2, // $10  mul r1, r2
  2, // $11  div r1, r2
  2, // $12  mod r1, r2
  2, // $13  neg r
  2, // $14  abcd r1, r2
  2, // $15  sbcd r1, r2
  2, // $16  nbcd r
  2, // $17  i17
  2, // $18  and r1, r2
  2, // $19  or r1, r2
  2, // $1A  xor r1, r2
  2, // $1B  not r
  2, // $1C  shl r, $04
  2, // $1D  shr r, $04
  2, // $1E  rol r, $04
  2, // $1F  ror r, $04
  2, // $20  jmp r
  2, // $21  jta $1000, r
  2, // $22  jsr r
  2, // $23  ret
  2, // $24  cmp r1, r2
  2, // $25  cmpb r1, $4
  2, // $26  scf.or $04
  2, // $27  i27
  2, // $28  bra r
  2, // $29  i29
  2, // $2A  bsr r
  2, // $2B  i2b
  2, // $2C  i2c
  2, // $2D  i2d
  2, // $2E  i2e
  2, // $2F  i2f
  2, // $30  i30
  2, // $31  i31
  2, // $32  i32
  2, // $33  i33
  2, // $34  i34
  2, // $35  i35
  2, // $36  i36
  2, // $37  i37
  2, // $38  i38
  2, // $39  i39
  2, // $3A  i3a
  2, // $3B  i3b
  2, // $3C  io $01
  2, // $3D  int.set $10
  2, // $3E  rti
  2, // $3F  brk.r $01
  2, // $40  push.b r
  2, // $41  pop.b r
  2, // $42  load r1, $1000
  2, // $43  store $1000, r2
  2, // $44  copy.b r1, r2
  2, // $45  i45
  2, // $46  move $1000, r2
  2, // $47  i47
  2, // $48  add.b r1, r2
  2, // $49  sub.b r1, r2
  2, // $4A  adc.b r1, r2
  2, // $4B  sbc.b r1, r2
  2, // $4C  adq.b r, $04
  2, // $4D  sbq.b r, $04
  2, // $4E  inc.b r
  2, // $4F  dec.b r
  2, // $50  mul.b r1, r2
  2, // $51  div.b r1, r2
  2, // $52  mod.b r1, r2
  2, // $53  neg.b r
  2, // $54  abcd r1, $1000
  2, // $55  sbcd r1, $1000
  2, // $56  i56
  2, // $57  i57
  2, // $58  and.b r1, r2
  2, // $59  or.b r1, r2
  2, // $5A  xor.b r1, r2
  2, // $5B  not.b r
  2, // $5C  shl.b r, $04
  2, // $5D  shr.b r, $04
  2, // $5E  rol.b r, $04
  2, // $5F  ror.b r, $04
  2, // $60  jmp $1000
  2, // $61  i61
  2, // $62  jsr $1000
  2, // $63  i63
  2, // $64  cmp.b r1, r2
  2, // $65  i65
  2, // $66  scf.and $04
  2, // $67  i67
  2, // $68  bra.b $10
  2, // $69  i69
  2, // $6A  bsr.b $10
  2, // $6B  i6b
  2, // $6C  beq $10
  2, // $6D  bne $10
  2, // $6E  bro $10
  2, // $6F  brc $10
  2, // $70  blt $10
  2, // $71  bgt $10
  2, // $72  ble $10
  2, // $73  bge $10
  2, // $74  brm $10
  2, // $75  brl $10
  2, // $76  bme $10
  2, // $77  ble $10
  2, // $78  brz $10
  2, // $79  bnz $10
  2, // $7A  brp $10
  2, // $7B  brn $10
  2, // $7C  i7c
  2, // $7D  int.clear $10
  2, // $7E  i7e
  4, // $7F  brk.m $1000
  2, // $80  push $1000
  2, // $81  i81
  2, // $82  load.b r1, r2
  2, // $83  store.b r1, r2
  2, // $84  i84
  2, // $85  i85
  2, // $86  move r1, $1000
  2, // $87  i87
  2, // $88  add r1, $1000
  2, // $89  sub r1, $1000
  2, // $8A  adc r1, $1000
  2, // $8B  sbc r1, $1000
  2, // $8C  i8c
  2, // $8D  i8d
  2, // $8E  i8e
  2, // $8F  i8f
  2, // $90  mul r1, $1000
  2, // $91  div r1, $1000
  2, // $92  mod r1, $1000
  2, // $93  i93
  2, // $94  i94
  2, // $95  i95
  2, // $96  i96
  2, // $97  i97
  2, // $98  and r1, $1000
  2, // $99  or r1, $1000
  2, // $9A  xor r1, $1000
  2, // $9B  i9b
  2, // $9C  i9c
  2, // $9D  i9d
  2, // $9E  i9e
  2, // $9F  i9f
  2, // $A0  ia0
  2, // $A1  ia1
  2, // $A2  ia2
  2, // $A3  ia3
  2, // $A4  cmp r1, $1000
  2, // $A5  ia5
  2, // $A6  ia6
  2, // $A7  ia7
  2, // $A8  bra $1000
  2, // $A9  ia9
  2, // $AA  bsr $1000
  2, // $AB  iab
  2, // $AC  beq $1000
  2, // $AD  bne $1000
  2, // $AE  bro $1000
  2, // $AF  brc $1000
  2, // $B0  blt $1000
  2, // $B1  bgt $1000
  2, // $B2  ble $1000
  2, // $B3  bge $1000
  2, // $B4  brm $1000
  2, // $B5  brl $1000
  2, // $B6  bme $1000
  2, // $B7  ble $1000
  2, // $B8  brz $1000
  2, // $B9  bnz $1000
  2, // $BA  brp $1000
  2, // $BB  brn $1000
  2, // $BC  ibc
  2, // $BD  int $10
  2, // $BE  ibe
  4, // $BF  brk.c $1000
  2, // $C0  push $10
  2, // $C1  ic1
  2, // $C2  load.b r1, $1000
  2, // $C3  store.b $1000, r2
  2, // $C4  ic4
  2, // $C5  ic5
  2, // $C6  ic6
  2, // $C7  ic7
  2, // $C8  add.b r1, $10
  2, // $C9  sub.b r1, $10
  2, // $CA  adc.b r1, $10
  2, // $CB  sbc.b r1, $10
  2, // $CC  icc
  2, // $CD  icd
  2, // $CE  ice
  2, // $CF  icf
  2, // $D0  mul.b r1, $10
  2, // $D1  div.b r1, $10
  2, // $D2  mod.b r1, $10
  2, // $D3  id3
  2, // $D4  id4
  2, // $D5  id5
  2, // $D6  id6
  2, // $D7  id7
  2, // $D8  and.b r1, $10
  2, // $D9  or.b r1, $10
  2, // $DA  xor.b r1, $10
  2, // $DB  idb
  2, // $DC  idc
  2, // $DD  idd
  2, // $DE  ide
  2, // $DF  idf
  2, // $E0  ie0
  2, // $E1  ie1
  2, // $E2  ie2
  2, // $E3  ie3
  2, // $E4  cmp.b r1, $10
  2, // $E5  ie5
  2, // $E6  ie6
  2, // $E7  ie7
  2, // $E8  ie8
  2, // $E9  ie9
  2, // $EA  iea
  2, // $EB  ieb
  2, // $EC  iec
  2, // $ED  ied
  2, // $EE  iee
  2, // $EF  ief
  2, // $F0  if0
  2, // $F1  if1
  2, // $F2  if2
  2, // $F3  if3
  2, // $F4  if4
  2, // $F5  if5
  2, // $F6  if6
  2, // $F7  if7
  2, // $F8  if8
  2, // $F9  if9
  2, // $FA  ifa
  2, // $FB  ifb
  2, // $FC  ifc
  2, // $FD  int.ivt $1000
  2, // $FE  ife
  2, // $FF  brk.halt
};
