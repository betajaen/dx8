Interrupt[$00] = $0010
Interrupt[$01] = $0013
Interrupt[$02] = $002E
Interrupt[$03] = $0030
Interrupt[$04] = $0000
Interrupt[$05] = $0000
Interrupt[$06] = $0000
Interrupt[$07] = $0000

0010: jmp $00DA           ; 9C DA 00
0013: load x, $5014       ; 0F 14 50
0016: not x               ; 7A
0017: and x, $E0          ; 6C E0
0019: shr x, $02          ; 8D 02
001B: set a, $3B          ; 25 3B(;)
001D: add a, x            ; 28
001E: store $5001, a      ; 1B 01 50
0021: set a, $3F          ; 25 3F(?)
0023: add a, x            ; 28
0024: store $5002, a      ; 1B 02 50
0027: set a, $42          ; 25 42(B)
0029: add a, x            ; 28
002A: store $5003, a      ; 1B 03 50
002D: resume              ; AB
002E: nop                 ; 00
002F: resume              ; AB
0030: set z, $00          ; 23 00
0032: store $4000, z      ; 19 00 40
0035: set a, $46          ; 25 46(F)
0037: store $8000, a      ; 1B 00 80
003A: resume              ; AB
003B: mul a, w            ; 49
003C: mul w, $53          ; 4E 53(S)
003E: sub a, $52          ; 45 52(R)
0040: inc a               ; 54
0041: return              ; 20
0042: mul a, x            ; 46
0043: mul y, $4F          ; 4C 4F(O)
0045: inc x               ; 50
0046: inc x               ; 50
0047: dec a               ; 59
0048: set z, $00          ; 23 00
004A: store $4000, z      ; 19 00 40
004D: set a, $44          ; 25 44(D)
004F: store $8499, a      ; 1B 99 84
0052: set a, $58          ; 25 58(X)
0054: store $849A, a      ; 1B 9A 84
0057: set a, $38          ; 25 38(8)
0059: store $849B, a      ; 1B 9B 84
005C: set a, $2F          ; 25 2F(/)
005E: store $AC9D, a      ; 1B 9D AC
0061: set a, $2F          ; 25 2F(/)
0063: store $D49E, a      ; 1B 9E D4
0066: set a, $2F          ; 25 2F(/)
0068: store $FC9F, a      ; 1B 9F FC
006B: set a, $49          ; 25 49(I)
006D: store $8269, a      ; 1B 69 82
0070: set a, $4E          ; 25 4E(N)
0072: store $826A, a      ; 1B 6A 82
0075: set a, $53          ; 25 53(S)
0077: store $826B, a      ; 1B 6B 82
007A: set a, $45          ; 25 45(E)
007C: store $826C, a      ; 1B 6C 82
007F: set a, $52          ; 25 52(R)
0081: store $826D, a      ; 1B 6D 82
0084: set a, $54          ; 25 54(T)
0086: store $826E, a      ; 1B 6E 82
0089: set a, $46          ; 25 46(F)
008B: store $8291, a      ; 1B 91 82
008E: set a, $4C          ; 25 4C(L)
0090: store $8292, a      ; 1B 92 82
0093: set a, $4F          ; 25 4F(O)
0095: store $8293, a      ; 1B 93 82
0098: set a, $50          ; 25 50(P)
009A: store $8294, a      ; 1B 94 82
009D: set a, $50          ; 25 50(P)
009F: store $8295, a      ; 1B 95 82
00A2: set a, $59          ; 25 59(Y)
00A4: store $8296, a      ; 1B 96 82
00A7: return              ; 20
00A8: load a, $4000       ; 13 00 40
00AB: push a              ; 05
00AC: set z, $00          ; 23 00
00AE: store $4000, z      ; 19 00 40
00B1: load x, $5017       ; 0F 17 50
00B4: cmpbit x, $40       ; 63 40(@)
00B6: jmp.z $00BC         ; A8 BC 00
00B9: jmp $00CA           ; 9C CA 00
00BC: set x, $20          ; 21 20
00BE: store $AC9D, x      ; 17 9D AC
00C1: store $D49E, x      ; 17 9E D4
00C4: store $FC9F, x      ; 17 9F FC
00C7: jmp $00D5           ; 9C D5 00
00CA: set x, $2F          ; 21 2F(/)
00CC: store $AC9D, x      ; 17 9D AC
00CF: store $D49E, x      ; 17 9E D4
00D2: store $FC9F, x      ; 17 9F FC
00D5: pop a               ; 0C
00D6: store $4000, a      ; 1B 00 40
00D9: return              ; 20
00DA: set a, $04          ; 25 04
00DC: store $5000, a      ; 1B 00 50
00DF: push a              ; 05
00E0: set a, $00          ; 25 00
00E2: store $5032, a      ; 1B 32 50
00E5: set a, $58          ; 25 58(X)
00E7: store $5033, a      ; 1B 33 50
00EA: set a, $B5          ; 25 B5
00EC: store $5034, a      ; 1B 34 50
00EF: set a, $01          ; 25 01
00F1: store $5035, a      ; 1B 35 50
00F4: set a, $00          ; 25 00
00F6: store $5036, a      ; 1B 36 50
00F9: set a, $03          ; 25 03
00FB: store $5037, a      ; 1B 37 50
00FE: int $11             ; AA 11
0100: push a              ; 05
0101: set a, $C8          ; 25 C8
0103: jmp.z $010A         ; A8 0A 01
0106: dec a               ; 59
0107: jmp $0103           ; 9C 03 01
010A: pop a               ; 0C
010B: pop a               ; 0C
010C: push a              ; 05
010D: set a, $20          ; 25 20
010F: store $4010, a      ; 1B 10 40
0112: set a, $00          ; 25 00
0114: store $4012, a      ; 1B 12 40
0117: set a, $80          ; 25 80
0119: store $4013, a      ; 1B 13 40
011C: set a, $00          ; 25 00
011E: store $4014, a      ; 1B 14 40
0121: set a, $28          ; 25 28(()
0123: store $4015, a      ; 1B 15 40
0126: int $01             ; AA 01
0128: push a              ; 05
0129: set a, $C8          ; 25 C8
012B: jmp.z $0132         ; A8 32 01
012E: dec a               ; 59
012F: jmp $012B           ; 9C 2B 01
0132: pop a               ; 0C
0133: pop a               ; 0C
0134: push a              ; 05
0135: set a, $20          ; 25 20
0137: store $4010, a      ; 1B 10 40
013A: set a, $00          ; 25 00
013C: store $4012, a      ; 1B 12 40
013F: set a, $A8          ; 25 A8
0141: store $4013, a      ; 1B 13 40
0144: set a, $00          ; 25 00
0146: store $4014, a      ; 1B 14 40
0149: set a, $28          ; 25 28(()
014B: store $4015, a      ; 1B 15 40
014E: int $01             ; AA 01
0150: push a              ; 05
0151: set a, $C8          ; 25 C8
0153: jmp.z $015A         ; A8 5A 01
0156: dec a               ; 59
0157: jmp $0153           ; 9C 53 01
015A: pop a               ; 0C
015B: pop a               ; 0C
015C: push a              ; 05
015D: set a, $20          ; 25 20
015F: store $4010, a      ; 1B 10 40
0162: set a, $00          ; 25 00
0164: store $4012, a      ; 1B 12 40
0167: set a, $D0          ; 25 D0
0169: store $4013, a      ; 1B 13 40
016C: set a, $00          ; 25 00
016E: store $4014, a      ; 1B 14 40
0171: set a, $28          ; 25 28(()
0173: store $4015, a      ; 1B 15 40
0176: int $01             ; AA 01
0178: push a              ; 05
0179: set a, $C8          ; 25 C8
017B: jmp.z $0182         ; A8 82 01
017E: dec a               ; 59
017F: jmp $017B           ; 9C 7B 01
0182: pop a               ; 0C
0183: pop a               ; 0C
0184: push a              ; 05
0185: set a, $20          ; 25 20
0187: store $4010, a      ; 1B 10 40
018A: set a, $00          ; 25 00
018C: store $4012, a      ; 1B 12 40
018F: set a, $F8          ; 25 F8
0191: store $4013, a      ; 1B 13 40
0194: set a, $00          ; 25 00
0196: store $4014, a      ; 1B 14 40
0199: set a, $28          ; 25 28(()
019B: store $4015, a      ; 1B 15 40
019E: int $01             ; AA 01
01A0: push a              ; 05
01A1: set a, $C8          ; 25 C8
01A3: jmp.z $01AA         ; A8 AA 01
01A6: dec a               ; 59
01A7: jmp $01A3           ; 9C A3 01
01AA: pop a               ; 0C
01AB: pop a               ; 0C
01AC: call $0048          ; 1F 48 00
01AF: call $00A8          ; 1F A8 00
01B2: jmp $01AF           ; 9C AF 01
01B5: nop                 ; 00
01B6: store $6C66, y      ; 18 66 6C
01B9: store $3846, y      ; 18 46 38
01BC: store $0C30, y      ; 18 30 0C
01BF: adc a, a            ; 36
01C0: nop                 ; 00
01C1: nop                 ; 00
01C2: nop                 ; 00
01C3: nop                 ; 00
01C4: sub a, w            ; 40
01C5: adw                 ; 3C 18
01C7: adw                 ; 3C 3C(<)
01C9: adc y, $7E          ; 38 7E(~)
01CB: adw                 ; 3C 7E(~)
01CD: adw                 ; 3C 3C(<)
01CF: nop                 ; 00
01D0: nop                 ; 00
01D1: cmp z, $00          ; 60 00
01D3: pop a               ; 0C
01D4: adw                 ; 3C 3C(<)
01D6: adw                 ; 3C 3E(>)
01D8: adw                 ; 3C 3E(>)
01DA: not a               ; 7E
01DB: not a               ; 7E
01DC: adw                 ; 3C 66(f)
01DE: adw                 ; 3C 60(`)
01E0: cmpbit w, $06       ; 66 06
01E2: cmpbit x, $66       ; 63 66(f)
01E4: adw                 ; 3C 3E(>)
01E6: adw                 ; 3C 3E(>)
01E8: adw                 ; 3C 7E(~)
01EA: cmpbit w, $66       ; 66 66(f)
01EC: cmpbit x, $66       ; 63 66(f)
01EE: cmpbit w, $7E       ; 66 7E(~)
01F0: adw                 ; 3C 02
01F2: adw                 ; 3C 10
01F4: nop                 ; 00
01F5: store $0600, y      ; 18 00 06
01F8: nop                 ; 00
01F9: cmp z, $00          ; 60 00
01FB: and a, $00          ; 70 00
01FD: push.f              ; 06
01FE: store $0660, y      ; 18 60 06
0201: adc y, $00          ; 38 00
0203: nop                 ; 00
0204: nop                 ; 00
0205: nop                 ; 00
0206: nop                 ; 00
0207: nop                 ; 00
0208: nop                 ; 00
0209: store $0000, y      ; 18 00 00
020C: nop                 ; 00
020D: nop                 ; 00
020E: nop                 ; 00
020F: nop                 ; 00
0210: nop                 ; 00
0211: nop                 ; 00
0212: nop                 ; 00
0213: nop                 ; 00
0214: nop                 ; 00
0215: nop                 ; 00
0216: store $FE66, y      ; 18 66 FE
0219: not z               ; 7C
021A: cmpbit w, $6C       ; 66 6C(l)
021C: store $1818, y      ; 18 18 18
021F: store.xy a          ; 1C
0220: load y, $0000       ; 10 00 00
0223: nop                 ; 00
0224: cmp z, $66          ; 60 66(f)
0226: store.xy a          ; 1C
0227: cmpbit w, $66       ; 66 66(f)
0229: adw                 ; 3C 06
022B: cmpbit w, $60       ; 66 60(`)
022D: cmpbit w, $66       ; 66 66(f)
022F: store $3018, y      ; 18 18 30
0232: nop                 ; 00
0233: store $4262, y      ; 18 62 42
0236: cmpbit w, $66       ; 66 66(f)
0238: cmpbit w, $66       ; 66 66(f)
023A: push.f              ; 06
023B: push.f              ; 06
023C: cmpbit w, $66       ; 66 66(f)
023E: store $3660, y      ; 18 60 36
0241: push.f              ; 06
0242: or z, $66           ; 77 66(f)
0244: cmpbit w, $66       ; 66 66(f)
0246: cmpbit w, $66       ; 66 66(f)
0248: cmpbit w, $18       ; 66 18
024A: cmpbit w, $66       ; 66 66(f)
024C: cmpbit x, $66       ; 63 66(f)
024E: cmpbit w, $60       ; 66 60(`)
0250: pop a               ; 0C
0251: push.f              ; 06
0252: add w, $38          ; 30 38(8)
0254: nop                 ; 00
0255: add w, $00          ; 30 00
0257: push.f              ; 06
0258: nop                 ; 00
0259: cmp z, $00          ; 60 00
025B: store $0600, y      ; 18 00 06
025E: nop                 ; 00
025F: nop                 ; 00
0260: push.f              ; 06
0261: add w, $00          ; 30 00
0263: nop                 ; 00
0264: nop                 ; 00
0265: nop                 ; 00
0266: nop                 ; 00
0267: nop                 ; 00
0268: nop                 ; 00
0269: store $0000, y      ; 18 00 00
026C: nop                 ; 00
026D: nop                 ; 00
026E: nop                 ; 00
026F: nop                 ; 00
0270: nop                 ; 00
0271: nop                 ; 00
0272: nop                 ; 00
0273: nop                 ; 00
0274: nop                 ; 00
0275: nop                 ; 00
0276: store $6C66, y      ; 18 66 6C
0279: push.f              ; 06
027A: add w, $6C          ; 30 6C(l)
027C: store $300C, y      ; 18 0C 30
027F: xor a, x            ; 7F
0280: load y, $0000       ; 10 00 00
0283: nop                 ; 00
0284: add w, $66          ; 30 66(f)
0286: store $6060, y      ; 18 60 60
0289: adc a, a            ; 36
028A: sub a, y            ; 3E
028B: push.f              ; 06
028C: add w, $66          ; 30 66(f)
028E: cmpbit w, $18       ; 66 18
0290: store $7E18, y      ; 18 18 7E
0293: add w, $60          ; 30 60(`)
0295: ror z               ; 99
0296: cmpbit w, $66       ; 66 66(f)
0298: push.f              ; 06
0299: cmpbit w, $06       ; 66 06
029B: push.f              ; 06
029C: push.f              ; 06
029D: cmpbit w, $18       ; 66 18
029F: cmp z, $1E          ; 60 1E
02A1: push.f              ; 06
02A2: xor a, x            ; 7F
02A3: and z, $66          ; 6E 66(f)
02A5: cmpbit w, $66       ; 66 66(f)
02A7: cmpbit w, $06       ; 66 06
02A9: store $6666, y      ; 18 66 66
02AC: cmpbit x, $3C       ; 63 3C(<)
02AE: cmpbit w, $30       ; 66 30(0)
02B0: pop a               ; 0C
02B1: pop a               ; 0C
02B2: add w, $6C          ; 30 6C(l)
02B4: nop                 ; 00
02B5: nop                 ; 00
02B6: adw                 ; 3C 3E(>)
02B8: adw                 ; 3C 7C(|)
02BA: adw                 ; 3C 3C(<)
02BC: not z               ; 7C
02BD: sub a, y            ; 3E
02BE: store.xy a          ; 1C
02BF: and a, $66          ; 70 66(f)
02C1: add w, $37          ; 30 37(7)
02C3: sub a, y            ; 3E
02C4: adw                 ; 3C 3E(>)
02C6: not z               ; 7C
02C7: or y, $7C           ; 76 7C(|)
02C9: adw                 ; 3C 66(f)
02CB: cmpbit w, $6B       ; 66 6B(k)
02CD: cmpbit w, $66       ; 66 66(f)
02CF: not a               ; 7E
02D0: nop                 ; 00
02D1: nop                 ; 00
02D2: nop                 ; 00
02D3: nop                 ; 00
02D4: nop                 ; 00
02D5: nop                 ; 00
02D6: store $6C00, y      ; 18 00 6C
02D9: adw                 ; 3C 18
02DB: adc y, $00          ; 38 00
02DD: pop a               ; 0C
02DE: add w, $1C          ; 30 1C
02E0: not z               ; 7C
02E1: nop                 ; 00
02E2: not a               ; 7E
02E3: nop                 ; 00
02E4: store $1866, y      ; 18 66 18
02E7: adc y, $38          ; 38 38(8)
02E9: adc a, a            ; 36
02EA: cmp z, $3E          ; 60 3E(>)
02EC: store $7C3C, y      ; 18 3C 7C
02EF: nop                 ; 00
02F0: nop                 ; 00
02F1: pop a               ; 0C
02F2: nop                 ; 00
02F3: cmp z, $38          ; 60 38(8)
02F5: jmp.neq $3E7E       ; A5 7E 3E
02F8: push.f              ; 06
02F9: cmpbit w, $1E       ; 66 1E
02FB: store.xy w          ; 1E
02FC: or y, $7E           ; 76 7E(~)
02FE: store $0E60, y      ; 18 60 0E
0301: push.f              ; 06
0302: and a, w            ; 6B
0303: not a               ; 7E
0304: cmpbit w, $3E       ; 66 3E(>)
0306: cmpbit w, $3E       ; 66 3E(>)
0308: adw                 ; 3C 18
030A: cmpbit w, $66       ; 66 66(f)
030C: and a, w            ; 6B
030D: store $183C, y      ; 18 3C 18
0310: pop a               ; 0C
0311: store $4430, y      ; 18 30 44
0314: nop                 ; 00
0315: nop                 ; 00
0316: cmp z, $66          ; 60 66(f)
0318: cmpbit w, $66       ; 66 66(f)
031A: cmpbit w, $18       ; 66 18
031C: cmpbit w, $66       ; 66 66(f)
031E: store $3660, y      ; 18 60 36
0321: add w, $7F          ; 30 7F()
0323: cmpbit w, $66       ; 66 66(f)
0325: cmpbit w, $66       ; 66 66(f)
0327: pop.r               ; 0E
0328: push.f              ; 06
0329: store $6666, y      ; 18 66 66
032C: and a, w            ; 6B
032D: adw                 ; 3C 66(f)
032F: add w, $00          ; 30 00
0331: nop                 ; 00
0332: nop                 ; 00
0333: nop                 ; 00
0334: nop                 ; 00
0335: nop                 ; 00
0336: store $6C00, y      ; 18 00 6C
0339: cmp z, $0C          ; 60 0C
033B: nop                 ; EC
033C: nop                 ; 00
033D: pop a               ; 0C
033E: add w, $36          ; 30 36(6)
0340: load y, $0018       ; 10 18 00
0343: nop                 ; 00
0344: pop a               ; 0C
0345: cmpbit w, $18       ; 66 18
0347: pop a               ; 0C
0348: cmp z, $7E          ; 60 7E(~)
034A: cmp z, $66          ; 60 66(f)
034C: store $6066, y      ; 18 66 60
034F: store $1818, y      ; 18 18 18
0352: not a               ; 7E
0353: add w, $18          ; 30 18
0355: jmp.neq $6666       ; A5 66 66
0358: push.f              ; 06
0359: cmpbit w, $06       ; 66 06
035B: push.f              ; 06
035C: cmpbit w, $66       ; 66 66(f)
035E: store $1E60, y      ; 18 60 1E
0361: push.f              ; 06
0362: cmpbit x, $76       ; 63 76(v)
0364: cmpbit w, $06       ; 66 06
0366: cmpbit w, $1E       ; 66 1E
0368: cmp z, $18          ; 60 18
036A: cmpbit w, $66       ; 66 66(f)
036C: xor a, x            ; 7F
036D: adw                 ; 3C 18
036F: pop a               ; 0C
0370: pop a               ; 0C
0371: add w, $30          ; 30 30(0)
0373: nop                 ; 00
0374: nop                 ; 00
0375: nop                 ; 00
0376: not z               ; 7C
0377: cmpbit w, $06       ; 66 06
0379: cmpbit w, $3E       ; 66 3E(>)
037B: store $6666, y      ; 18 66 66
037E: store $1E60, y      ; 18 60 1E
0381: add w, $6B          ; 30 6B(k)
0383: cmpbit w, $66       ; 66 66(f)
0385: cmpbit w, $66       ; 66 66(f)
0387: push.f              ; 06
0388: adw                 ; 3C 18
038A: cmpbit w, $66       ; 66 66(f)
038C: xor a, x            ; 7F
038D: store $1866, y      ; 18 66 18
0390: nop                 ; 00
0391: nop                 ; 00
0392: nop                 ; 00
0393: nop                 ; 00
0394: nop                 ; 00
0395: nop                 ; 00
0396: nop                 ; 00
0397: nop                 ; 00
0398: nop                 ; FE
0399: sub a, y            ; 3E
039A: cmpbit w, $66       ; 66 66(f)
039C: nop                 ; 00
039D: store $0018, y      ; 18 18 00
03A0: load y, $0018       ; 10 18 00
03A3: store $6606, y      ; 18 06 66
03A6: store $6606, y      ; 18 06 66
03A9: add w, $66          ; 30 66(f)
03AB: cmpbit w, $18       ; 66 18
03AD: cmpbit w, $66       ; 66 66(f)
03AF: store $3018, y      ; 18 18 30
03B2: nop                 ; 00
03B3: store $7900, y      ; 18 00 79
03B6: cmpbit w, $66       ; 66 66(f)
03B8: cmpbit w, $66       ; 66 66(f)
03BA: push.f              ; 06
03BB: push.f              ; 06
03BC: cmpbit w, $66       ; 66 66(f)
03BE: store $3666, y      ; 18 66 36
03C1: push.f              ; 06
03C2: cmpbit x, $66       ; 63 66(f)
03C4: cmpbit w, $06       ; 66 06
03C6: cmpbit w, $36       ; 66 36(6)
03C8: cmpbit w, $18       ; 66 18
03CA: cmpbit w, $3C       ; 66 3C(<)
03CC: or z, $66           ; 77 66(f)
03CE: store $0C06, y      ; 18 06 0C
03D1: cmp z, $30          ; 60 30(0)
03D3: nop                 ; 00
03D4: nop                 ; 00
03D5: nop                 ; 00
03D6: cmpbit w, $66       ; 66 66(f)
03D8: cmpbit w, $66       ; 66 66(f)
03DA: push.f              ; 06
03DB: store $667C, y      ; 18 7C 66
03DE: store $3660, y      ; 18 60 36
03E1: add w, $6B          ; 30 6B(k)
03E3: cmpbit w, $66       ; 66 66(f)
03E5: cmpbit w, $66       ; 66 66(f)
03E7: push.f              ; 06
03E8: cmp z, $18          ; 60 18
03EA: cmpbit w, $3C       ; 66 3C(<)
03EC: sub a, y            ; 3E
03ED: adw                 ; 3C 7C(|)
03EF: pop a               ; 0C
03F0: nop                 ; 00
03F1: nop                 ; 00
03F2: nop                 ; 00
03F3: nop                 ; 00
03F4: nop                 ; 00
03F5: nop                 ; 00
03F6: store $6C00, y      ; 18 00 6C
03F9: store $FC62, y      ; 18 62 FC
03FC: nop                 ; 00
03FD: add w, $0C          ; 30 0C
03FF: nop                 ; 00
0400: nop                 ; 00
0401: pop a               ; 0C
0402: nop                 ; 00
0403: store $3C02, y      ; 18 02 3C
0406: not a               ; 7E
0407: not a               ; 7E
0408: adw                 ; 3C 78(x)
040A: adw                 ; 3C 3C(<)
040C: store $3C3C, y      ; 18 3C 3C
040F: nop                 ; 00
0410: pop x               ; 08
0411: cmp z, $00          ; 60 00
0413: pop a               ; 0C
0414: store $6602, y      ; 18 02 66
0417: sub a, y            ; 3E
0418: adw                 ; 3C 3E(>)
041A: not a               ; 7E
041B: push.f              ; 06
041C: adw                 ; 3C 66(f)
041E: adw                 ; 3C 3C(<)
0420: cmpbit w, $7E       ; 66 7E(~)
0422: cmpbit x, $66       ; 63 66(f)
0424: adw                 ; 3C 06
0426: adw                 ; 3C 66(f)
0428: adw                 ; 3C 18
042A: adw                 ; 3C 18
042C: cmpbit x, $66       ; 63 66(f)
042E: store $3C7E, y      ; 18 7E 3C
0431: sub a, w            ; 40
0432: adw                 ; 3C 00
0434: nop                 ; 00
0435: nop                 ; 00
0436: not z               ; 7C
0437: sub a, y            ; 3E
0438: adw                 ; 3C 7C(|)
043A: not z               ; 7C
043B: store $6660, y      ; 18 60 66
043E: adw                 ; 3C 66(f)
0440: cmpbit w, $78       ; 66 78(x)
0442: and a, w            ; 6B
0443: cmpbit w, $3C       ; 66 3C(<)
0445: sub a, y            ; 3E
0446: not z               ; 7C
0447: push.f              ; 06
0448: sub a, y            ; 3E
0449: add w, $7C          ; 30 7C(|)
044B: store $6636, y      ; 18 36 66
044E: cmp z, $7E          ; 60 7E(~)
0450: nop                 ; 00
0451: nop                 ; 00
0452: nop                 ; 00
0453: nop                 ; 00
0454: nop                 ; 00
0455: nop                 ; 00
0456: nop                 ; 00
0457: nop                 ; 00
0458: nop                 ; 00
0459: nop                 ; 00
045A: nop                 ; 00
045B: nop                 ; 00
045C: nop                 ; 00
045D: nop                 ; 00
045E: nop                 ; 00
045F: nop                 ; 00
0460: nop                 ; 00
0461: nop                 ; 00
0462: nop                 ; 00
0463: nop                 ; 00
0464: nop                 ; 00
0465: nop                 ; 00
0466: nop                 ; 00
0467: nop                 ; 00
0468: nop                 ; 00
0469: nop                 ; 00
046A: nop                 ; 00
046B: nop                 ; 00
046C: nop                 ; 00
046D: nop                 ; 00
046E: nop                 ; 00
046F: nop                 ; 00
0470: nop                 ; 00
0471: nop                 ; 00
0472: nop                 ; 00
0473: nop                 ; 00
0474: nop                 ; 00
0475: adw                 ; 3C 00
0477: nop                 ; 00
0478: nop                 ; 00
0479: nop                 ; 00
047A: nop                 ; 00
047B: nop                 ; 00
047C: nop                 ; 00
047D: nop                 ; 00
047E: nop                 ; 00
047F: nop                 ; 00
0480: nop                 ; 00
0481: nop                 ; 00
0482: nop                 ; 00
0483: nop                 ; 00
0484: nop                 ; 00
0485: nop                 ; 00
0486: cmp z, $00          ; 60 00
0488: nop                 ; 00
0489: nop                 ; 00
048A: nop                 ; 00
048B: nop                 ; 00
048C: nop                 ; 00
048D: nop                 ; 00
048E: nop                 ; 00
048F: nop                 ; 00
0490: nop                 ; 00
0491: nop                 ; 00
0492: nop                 ; 00
0493: nop                 ; 00
0494: nop                 ; FF
0495: nop                 ; 00
0496: nop                 ; 00
0497: nop                 ; 00
0498: nop                 ; 00
0499: nop                 ; 00
049A: nop                 ; 00
049B: nop                 ; 00
049C: adw                 ; 3C 00
049E: nop                 ; 00
049F: adw                 ; 3C 00
04A1: nop                 ; 00
04A2: nop                 ; 00
04A3: nop                 ; 00
04A4: nop                 ; 00
04A5: push.f              ; 06
04A6: cmp z, $00          ; 60 00
04A8: nop                 ; 00
04A9: nop                 ; 00
04AA: nop                 ; 00
04AB: nop                 ; 00
04AC: nop                 ; 00
04AD: nop                 ; 00
04AE: adw                 ; 3C 00
04B0: nop                 ; 00
04B1: nop                 ; 00
04B2: nop                 ; 00
04B3: nop                 ; 00
04B4: nop                 ; 00
