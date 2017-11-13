Interrupt[$00] = $0010
Interrupt[$01] = $0013
Interrupt[$02] = $002E
Interrupt[$03] = $0000
Interrupt[$04] = $0000
Interrupt[$05] = $0000
Interrupt[$06] = $0000
Interrupt[$07] = $0000

0010: jmp $00B3           ; 9C B3 00
0013: load x, $5014       ; 0F 14 50
0016: not x               ; 7A
0017: and x, $E0          ; 6C E0
0019: shr x, $02          ; 8D 02
001B: set a, $3B          ; 25 3B
001D: add a, x            ; 28
001E: store $5001, a      ; 1B 01 50
0021: set a, $3F          ; 25 3F
0023: add a, x            ; 28
0024: store $5002, a      ; 1B 02 50
0027: set a, $42          ; 25 42
0029: add a, x            ; 28
002A: store $5003, a      ; 1B 03 50
002D: resume              ; AB
002E: load x, $5017       ; 0F 17 50
0031: cmpbit x, $10       ; 63 10
0033: jmp.nz $003B        ; A9 3B 00
0036: set x, $00          ; 21 00
0038: jmp $003D           ; 9C 3D 00
003B: set x, $01          ; 21 01
003D: load a, $4000       ; 13 00 40
0040: push a              ; 05
0041: set a, $01          ; 25 01
0043: store $4000, a      ; 1B 00 40
0046: store $8000, x      ; 17 00 80
0049: set a, $00          ; 25 00
004B: store $4000, a      ; 1B 00 40
004E: pop a               ; 0C
004F: store $4000, a      ; 1B 00 40
0052: resume              ; AB
0053: load a, $4000       ; 13 00 40
0056: push a              ; 05
0057: set z, $00          ; 23 00
0059: store $4000, z      ; 19 00 40
005C: set a, $44          ; 25 44
005E: store $8499, a      ; 1B 99 84
0061: set a, $58          ; 25 58
0063: store $849A, a      ; 1B 9A 84
0066: set a, $38          ; 25 38
0068: store $849B, a      ; 1B 9B 84
006B: set a, $2F          ; 25 2F
006D: store $AC9C, a      ; 1B 9C AC
0070: set a, $2F          ; 25 2F
0072: store $D49D, a      ; 1B 9D D4
0075: set a, $2F          ; 25 2F
0077: store $FC9E, a      ; 1B 9E FC
007A: pop a               ; 0C
007B: store $4000, a      ; 1B 00 40
007E: return              ; 20
007F: load a, $4000       ; 13 00 40
0082: push a              ; 05
0083: set z, $FF          ; 23 FF
0085: store $4000, z      ; 19 00 40
0088: load x, $8002       ; 0F 02 80
008B: set z, $00          ; 23 00
008D: store $4000, z      ; 19 00 40
0090: cmp x, $01          ; 5E 01
0092: jmp.eq $00A3        ; A4 A3 00
0095: set x, $20          ; 21 20
0097: store $AC9C, x      ; 17 9C AC
009A: store $D49D, x      ; 17 9D D4
009D: store $FC9E, x      ; 17 9E FC
00A0: jmp $00AE           ; 9C AE 00
00A3: set x, $2F          ; 21 2F
00A5: store $AC9C, x      ; 17 9C AC
00A8: store $D49D, x      ; 17 9D D4
00AB: store $FC9E, x      ; 17 9E FC
00AE: pop a               ; 0C
00AF: store $4000, a      ; 1B 00 40
00B2: return              ; 20
00B3: set a, $04          ; 25 04
00B5: store $5000, a      ; 1B 00 50
00B8: push a              ; 05
00B9: set a, $00          ; 25 00
00BB: store $5032, a      ; 1B 32 50
00BE: set a, $58          ; 25 58
00C0: store $5033, a      ; 1B 33 50
00C3: set a, $A7          ; 25 A7
00C5: store $5034, a      ; 1B 34 50
00C8: set a, $29          ; 25 29
00CA: store $5035, a      ; 1B 35 50
00CD: set a, $00          ; 25 00
00CF: store $5036, a      ; 1B 36 50
00D2: set a, $03          ; 25 03
00D4: store $5037, a      ; 1B 37 50
00D7: int $11             ; AA 11
00D9: push a              ; 05
00DA: set a, $C8          ; 25 C8
00DC: jmp.z $00E3         ; A8 E3 00
00DF: dec a               ; 59
00E0: jmp $00DC           ; 9C DC 00
00E3: pop a               ; 0C
00E4: pop a               ; 0C
00E5: push a              ; 05
00E6: set a, $20          ; 25 20
00E8: store $4010, a      ; 1B 10 40
00EB: set a, $00          ; 25 00
00ED: store $4012, a      ; 1B 12 40
00F0: set a, $80          ; 25 80
00F2: store $4013, a      ; 1B 13 40
00F5: set a, $00          ; 25 00
00F7: store $4014, a      ; 1B 14 40
00FA: set a, $28          ; 25 28
00FC: store $4015, a      ; 1B 15 40
00FF: int $01             ; AA 01
0101: push a              ; 05
0102: set a, $C8          ; 25 C8
0104: jmp.z $010B         ; A8 0B 01
0107: dec a               ; 59
0108: jmp $0104           ; 9C 04 01
010B: pop a               ; 0C
010C: pop a               ; 0C
010D: push a              ; 05
010E: set a, $20          ; 25 20
0110: store $4010, a      ; 1B 10 40
0113: set a, $00          ; 25 00
0115: store $4012, a      ; 1B 12 40
0118: set a, $A8          ; 25 A8
011A: store $4013, a      ; 1B 13 40
011D: set a, $00          ; 25 00
011F: store $4014, a      ; 1B 14 40
0122: set a, $28          ; 25 28
0124: store $4015, a      ; 1B 15 40
0127: int $01             ; AA 01
0129: push a              ; 05
012A: set a, $C8          ; 25 C8
012C: jmp.z $0133         ; A8 33 01
012F: dec a               ; 59
0130: jmp $012C           ; 9C 2C 01
0133: pop a               ; 0C
0134: pop a               ; 0C
0135: push a              ; 05
0136: set a, $20          ; 25 20
0138: store $4010, a      ; 1B 10 40
013B: set a, $00          ; 25 00
013D: store $4012, a      ; 1B 12 40
0140: set a, $D0          ; 25 D0
0142: store $4013, a      ; 1B 13 40
0145: set a, $00          ; 25 00
0147: store $4014, a      ; 1B 14 40
014A: set a, $28          ; 25 28
014C: store $4015, a      ; 1B 15 40
014F: int $01             ; AA 01
0151: push a              ; 05
0152: set a, $C8          ; 25 C8
0154: jmp.z $015B         ; A8 5B 01
0157: dec a               ; 59
0158: jmp $0154           ; 9C 54 01
015B: pop a               ; 0C
015C: pop a               ; 0C
015D: push a              ; 05
015E: set a, $20          ; 25 20
0160: store $4010, a      ; 1B 10 40
0163: set a, $00          ; 25 00
0165: store $4012, a      ; 1B 12 40
0168: set a, $F8          ; 25 F8
016A: store $4013, a      ; 1B 13 40
016D: set a, $00          ; 25 00
016F: store $4014, a      ; 1B 14 40
0172: set a, $28          ; 25 28
0174: store $4015, a      ; 1B 15 40
0177: int $01             ; AA 01
0179: push a              ; 05
017A: set a, $C8          ; 25 C8
017C: jmp.z $0183         ; A8 83 01
017F: dec a               ; 59
0180: jmp $017C           ; 9C 7C 01
0183: pop a               ; 0C
0184: pop a               ; 0C
0185: set z, $01          ; 23 01
0187: store $4000, z      ; 19 00 40
018A: set a, $00          ; 25 00
018C: store $8000, a      ; 1B 00 80
018F: set a, $00          ; 25 00
0191: store $8001, a      ; 1B 01 80
0194: set a, $00          ; 25 00
0196: store $8002, a      ; 1B 02 80
0199: set z, $00          ; 23 00
019B: store $4000, z      ; 19 00 40
019E: call $0053          ; 1F 53 00
01A1: call $007F          ; 1F 7F 00
01A4: jmp $01A1           ; 9C A1 01
01A7: nop                 ; 00
01A8: nop                 ; 00
01A9: nop                 ; 00
01AA: nop                 ; 00
01AB: nop                 ; 00
01AC: nop                 ; 00
01AD: nop                 ; 00
01AE: nop                 ; 00
01AF: nop                 ; 00
01B0: nop                 ; 00
01B1: nop                 ; 00
01B2: nop                 ; 00
01B3: nop                 ; 00
01B4: nop                 ; 00
01B5: nop                 ; 00
01B6: nop                 ; 00
01B7: nop                 ; 00
01B8: nop                 ; 00
01B9: nop                 ; 00
01BA: nop                 ; 00
01BB: nop                 ; 00
01BC: nop                 ; 00
01BD: nop                 ; 00
01BE: nop                 ; 00
01BF: nop                 ; 00
01C0: nop                 ; 00
01C1: nop                 ; 00
01C2: nop                 ; 00
01C3: nop                 ; 00
01C4: nop                 ; 00
01C5: nop                 ; 00
01C6: nop                 ; 00
01C7: nop                 ; 00
01C8: nop                 ; 00
01C9: nop                 ; 00
01CA: nop                 ; 00
01CB: nop                 ; 00
01CC: nop                 ; 00
01CD: nop                 ; FC
01CE: nop                 ; FF
01CF: nop                 ; 00
01D0: nop                 ; 00
01D1: nop                 ; 00
01D2: nop                 ; 00
01D3: nop                 ; 00
01D4: nop                 ; 00
01D5: nop                 ; 00
01D6: nop                 ; 00
01D7: nop                 ; 00
01D8: nop                 ; 00
01D9: nop                 ; 00
01DA: nop                 ; 00
01DB: nop                 ; 00
01DC: nop                 ; 00
01DD: nop                 ; 00
01DE: nop                 ; 00
01DF: nop                 ; 00
01E0: nop                 ; 00
01E1: nop                 ; 00
01E2: nop                 ; 00
01E3: nop                 ; 00
01E4: nop                 ; 00
01E5: nop                 ; 00
01E6: nop                 ; 00
01E7: nop                 ; 00
01E8: nop                 ; 00
01E9: nop                 ; 00
01EA: nop                 ; 00
01EB: nop                 ; 00
01EC: nop                 ; 00
01ED: nop                 ; 00
01EE: nop                 ; 00
01EF: nop                 ; 00
01F0: nop                 ; 00
01F1: nop                 ; 00
01F2: nop                 ; 00
01F3: nop                 ; 00
01F4: nop                 ; 00
01F5: nop                 ; FC
01F6: nop                 ; FF
01F7: nop                 ; 00
01F8: nop                 ; 00
01F9: nop                 ; 00
01FA: nop                 ; 00
01FB: nop                 ; 00
01FC: nop                 ; 00
01FD: nop                 ; 00
01FE: nop                 ; 00
01FF: nop                 ; 00
0200: nop                 ; 00
0201: nop                 ; 00
0202: push y              ; 02
0203: nop                 ; 00
0204: nop                 ; 00
0205: nop                 ; 00
0206: nop                 ; 00
0207: nop                 ; 00
0208: nop                 ; 00
0209: nop                 ; 00
020A: nop                 ; 00
020B: nop                 ; 00
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
0216: nop                 ; 00
0217: nop                 ; 00
0218: nop                 ; 00
0219: nop                 ; 00
021A: nop                 ; 00
021B: nop                 ; 00
021C: nop                 ; 00
021D: nop                 ; FC
021E: nop                 ; FF
021F: nop                 ; 00
0220: nop                 ; 00
0221: nop                 ; 00
0222: nop                 ; 00
0223: nop                 ; 00
0224: nop                 ; 00
0225: nop                 ; 00
0226: nop                 ; 00
0227: nop                 ; 00
0228: nop                 ; 00
0229: nop                 ; 00
022A: nop                 ; 00
022B: nop                 ; 00
022C: nop                 ; 00
022D: nop                 ; 00
022E: nop                 ; 00
022F: nop                 ; 00
0230: nop                 ; 00
0231: nop                 ; 00
0232: nop                 ; 00
0233: nop                 ; 00
0234: nop                 ; 00
0235: nop                 ; 00
0236: nop                 ; 00
0237: nop                 ; 00
0238: nop                 ; 00
0239: nop                 ; 00
023A: nop                 ; 00
023B: nop                 ; 00
023C: nop                 ; 00
023D: nop                 ; 00
023E: nop                 ; 00
023F: nop                 ; 00
0240: nop                 ; 00
0241: nop                 ; 00
0242: nop                 ; 00
0243: nop                 ; 00
0244: nop                 ; 00
0245: nop                 ; FC
0246: nop                 ; FF
0247: nop                 ; 00
0248: nop                 ; 00
0249: nop                 ; 00
024A: nop                 ; 00
024B: nop                 ; 00
024C: nop                 ; 00
024D: nop                 ; 00
024E: nop                 ; 00
024F: nop                 ; 00
0250: nop                 ; 00
0251: nop                 ; 00
0252: nop                 ; 00
0253: nop                 ; 00
0254: nop                 ; 00
0255: nop                 ; 00
0256: nop                 ; 00
0257: nop                 ; 00
0258: nop                 ; 00
0259: nop                 ; 00
025A: nop                 ; 00
025B: nop                 ; 00
025C: nop                 ; 00
025D: nop                 ; 00
025E: nop                 ; 00
025F: nop                 ; 00
0260: nop                 ; 00
0261: nop                 ; 00
0262: nop                 ; 00
0263: nop                 ; 00
0264: nop                 ; 00
0265: nop                 ; 00
0266: nop                 ; 00
0267: nop                 ; 00
0268: nop                 ; 00
0269: nop                 ; 00
026A: nop                 ; 00
026B: nop                 ; 00
026C: nop                 ; 00
026D: nop                 ; FC
026E: nop                 ; FF
026F: nop                 ; 00
0270: nop                 ; 00
0271: nop                 ; 00
0272: nop                 ; 00
0273: nop                 ; 00
0274: nop                 ; 00
0275: nop                 ; 00
0276: nop                 ; 00
0277: nop                 ; 00
0278: nop                 ; 00
0279: nop                 ; 00
027A: nop                 ; 00
027B: nop                 ; 00
027C: nop                 ; 00
027D: nop                 ; 00
027E: nop                 ; 00
027F: nop                 ; 00
0280: nop                 ; 00
0281: nop                 ; 00
0282: nop                 ; 00
0283: nop                 ; 00
0284: nop                 ; 00
0285: nop                 ; 00
0286: nop                 ; 00
0287: nop                 ; 00
0288: nop                 ; 00
0289: nop                 ; 00
028A: nop                 ; 00
028B: nop                 ; 00
028C: nop                 ; 00
028D: nop                 ; 00
028E: nop                 ; 00
028F: nop                 ; 00
0290: nop                 ; 00
0291: nop                 ; 00
0292: nop                 ; 00
0293: nop                 ; 00
0294: nop                 ; 00
0295: nop                 ; FC
0296: nop                 ; FF
0297: nop                 ; 00
0298: nop                 ; 00
0299: nop                 ; 00
029A: nop                 ; 00
029B: nop                 ; 00
029C: nop                 ; 00
029D: nop                 ; 00
029E: nop                 ; 00
029F: nop                 ; 00
02A0: nop                 ; 00
02A1: nop                 ; 00
02A2: nop                 ; 00
02A3: nop                 ; 00
02A4: nop                 ; 00
02A5: nop                 ; 00
02A6: nop                 ; 00
02A7: nop                 ; 00
02A8: nop                 ; 00
02A9: nop                 ; 00
02AA: nop                 ; 00
02AB: nop                 ; 00
02AC: nop                 ; 00
02AD: nop                 ; 00
02AE: nop                 ; 00
02AF: nop                 ; 00
02B0: nop                 ; 00
02B1: nop                 ; 00
02B2: nop                 ; 00
02B3: nop                 ; 00
02B4: nop                 ; 00
02B5: nop                 ; 00
02B6: nop                 ; 00
02B7: nop                 ; 00
02B8: nop                 ; 00
02B9: nop                 ; 00
02BA: nop                 ; 00
02BB: nop                 ; 00
02BC: nop                 ; 00
02BD: nop                 ; FC
02BE: nop                 ; FF
02BF: nop                 ; 00
02C0: nop                 ; 00
02C1: nop                 ; 00
02C2: nop                 ; 00
02C3: nop                 ; 00
02C4: nop                 ; 00
02C5: nop                 ; 00
02C6: nop                 ; 00
02C7: nop                 ; 00
02C8: nop                 ; 00
02C9: nop                 ; 00
02CA: nop                 ; 00
02CB: nop                 ; 00
02CC: nop                 ; 00
02CD: nop                 ; 00
02CE: nop                 ; 00
02CF: nop                 ; 00
02D0: nop                 ; 00
02D1: nop                 ; 00
02D2: nop                 ; 00
02D3: nop                 ; 00
02D4: nop                 ; 00
02D5: nop                 ; 00
02D6: nop                 ; 00
02D7: nop                 ; 00
02D8: nop                 ; 00
02D9: nop                 ; 00
02DA: nop                 ; 00
02DB: nop                 ; 00
02DC: nop                 ; 00
02DD: nop                 ; 00
02DE: nop                 ; 00
02DF: nop                 ; 00
02E0: nop                 ; 00
02E1: nop                 ; 00
02E2: nop                 ; 00
02E3: nop                 ; 00
02E4: nop                 ; 00
02E5: nop                 ; FC
02E6: nop                 ; FF
02E7: nop                 ; 00
02E8: nop                 ; 00
02E9: nop                 ; 00
02EA: nop                 ; 00
02EB: nop                 ; 00
02EC: nop                 ; 00
02ED: nop                 ; 00
02EE: nop                 ; 00
02EF: nop                 ; 00
02F0: nop                 ; 00
02F1: nop                 ; 00
02F2: nop                 ; 00
02F3: nop                 ; 00
02F4: nop                 ; 00
02F5: nop                 ; 00
02F6: nop                 ; 00
02F7: nop                 ; 00
02F8: nop                 ; 00
02F9: nop                 ; 00
02FA: nop                 ; 00
02FB: nop                 ; 00
02FC: nop                 ; 00
02FD: nop                 ; 00
02FE: nop                 ; 00
02FF: nop                 ; 00
0300: nop                 ; 00
0301: nop                 ; 00
0302: nop                 ; 00
0303: nop                 ; 00
0304: nop                 ; 00
0305: nop                 ; 00
0306: nop                 ; 00
0307: nop                 ; 00
0308: nop                 ; 00
0309: nop                 ; 00
030A: nop                 ; 00
030B: nop                 ; 00
030C: nop                 ; 00
030D: nop                 ; FC
030E: nop                 ; FF
030F: nop                 ; 00
0310: nop                 ; 00
0311: nop                 ; 00
0312: nop                 ; 00
0313: nop                 ; 00
0314: nop                 ; 00
0315: nop                 ; 00
0316: nop                 ; 00
0317: nop                 ; 00
0318: nop                 ; 00
0319: nop                 ; 00
031A: nop                 ; 00
031B: nop                 ; 00
031C: nop                 ; 00
031D: nop                 ; 00
031E: nop                 ; 00
031F: nop                 ; 00
0320: nop                 ; 00
0321: nop                 ; 00
0322: nop                 ; 00
0323: nop                 ; 00
0324: nop                 ; 00
0325: nop                 ; 00
0326: nop                 ; 00
0327: nop                 ; 00
0328: nop                 ; 00
0329: nop                 ; 00
032A: nop                 ; 00
032B: nop                 ; 00
032C: nop                 ; 00
032D: nop                 ; 00
032E: nop                 ; 00
032F: nop                 ; 00
0330: nop                 ; 00
0331: nop                 ; 00
0332: nop                 ; 00
0333: nop                 ; 00
0334: nop                 ; 00
0335: nop                 ; FC
0336: nop                 ; FF
0337: nop                 ; 00
0338: nop                 ; 00
0339: nop                 ; 00
033A: nop                 ; 00
033B: nop                 ; 00
033C: nop                 ; 00
033D: nop                 ; 00
033E: nop                 ; 00
033F: nop                 ; 00
0340: nop                 ; 00
0341: nop                 ; 00
0342: nop                 ; 00
0343: nop                 ; 00
0344: nop                 ; 00
0345: nop                 ; 00
0346: nop                 ; 00
0347: nop                 ; 00
0348: nop                 ; 00
0349: nop                 ; 00
034A: nop                 ; 00
034B: nop                 ; 00
034C: nop                 ; 00
034D: nop                 ; 00
034E: nop                 ; 00
034F: nop                 ; 00
0350: nop                 ; 00
0351: nop                 ; 00
0352: nop                 ; 00
0353: nop                 ; 00
0354: nop                 ; 00
0355: nop                 ; 00
0356: nop                 ; 00
0357: nop                 ; 00
0358: nop                 ; 00
0359: nop                 ; 00
035A: nop                 ; 00
035B: nop                 ; 00
035C: nop                 ; 00
035D: nop                 ; FC
035E: nop                 ; FF
035F: nop                 ; 00
0360: nop                 ; 00
0361: nop                 ; 00
0362: nop                 ; 00
0363: nop                 ; 00
0364: nop                 ; 00
0365: nop                 ; 00
0366: nop                 ; 00
0367: nop                 ; 00
0368: nop                 ; 00
0369: nop                 ; 00
036A: nop                 ; 00
036B: nop                 ; 00
036C: nop                 ; 00
036D: nop                 ; 00
036E: nop                 ; 00
036F: nop                 ; 00
0370: nop                 ; 00
0371: nop                 ; 00
0372: nop                 ; 00
0373: nop                 ; 00
0374: nop                 ; 00
0375: nop                 ; 00
0376: nop                 ; 00
0377: nop                 ; 00
0378: nop                 ; 00
0379: nop                 ; 00
037A: nop                 ; 00
037B: nop                 ; 00
037C: nop                 ; 00
037D: nop                 ; 00
037E: nop                 ; 00
037F: nop                 ; 00
0380: nop                 ; 00
0381: nop                 ; 00
0382: nop                 ; 00
0383: nop                 ; 00
0384: nop                 ; 00
0385: nop                 ; FC
0386: nop                 ; FF
0387: nop                 ; 00
0388: nop                 ; 00
0389: nop                 ; 00
038A: nop                 ; 00
038B: nop                 ; 00
038C: nop                 ; 00
038D: nop                 ; 00
038E: nop                 ; 00
038F: nop                 ; 00
0390: nop                 ; 00
0391: nop                 ; 00
0392: nop                 ; 00
0393: nop                 ; 00
0394: nop                 ; 00
0395: nop                 ; 00
0396: nop                 ; 00
0397: nop                 ; 00
0398: nop                 ; 00
0399: nop                 ; 00
039A: nop                 ; 00
039B: nop                 ; 00
039C: nop                 ; 00
039D: nop                 ; 00
039E: nop                 ; 00
039F: nop                 ; 00
03A0: nop                 ; 00
03A1: nop                 ; 00
03A2: nop                 ; 00
03A3: nop                 ; 00
03A4: nop                 ; 00
03A5: nop                 ; 00
03A6: nop                 ; 00
03A7: nop                 ; 00
03A8: nop                 ; 00
03A9: nop                 ; 00
03AA: nop                 ; 00
03AB: nop                 ; 00
03AC: nop                 ; 00
03AD: nop                 ; FC
03AE: nop                 ; FF
03AF: nop                 ; 00
03B0: nop                 ; 00
03B1: nop                 ; 00
03B2: nop                 ; 00
03B3: nop                 ; 00
03B4: nop                 ; 00
03B5: nop                 ; 00
03B6: nop                 ; 00
03B7: nop                 ; 00
03B8: nop                 ; 00
03B9: nop                 ; 00
03BA: nop                 ; 00
03BB: nop                 ; 00
03BC: nop                 ; 00
03BD: nop                 ; 00
03BE: nop                 ; 00
03BF: nop                 ; 00
03C0: nop                 ; 00
03C1: nop                 ; 00
03C2: nop                 ; 00
03C3: nop                 ; 00
03C4: nop                 ; 00
03C5: nop                 ; 00
03C6: nop                 ; 00
03C7: nop                 ; 00
03C8: nop                 ; 00
03C9: nop                 ; 00
03CA: nop                 ; 00
03CB: nop                 ; 00
03CC: nop                 ; 00
03CD: nop                 ; 00
03CE: nop                 ; 00
03CF: nop                 ; 00
03D0: nop                 ; 00
03D1: nop                 ; 00
03D2: nop                 ; 00
03D3: nop                 ; 00
03D4: nop                 ; 00
03D5: nop                 ; FC
03D6: nop                 ; FF
03D7: nop                 ; 00
03D8: nop                 ; 00
03D9: nop                 ; 00
03DA: nop                 ; 00
03DB: nop                 ; 00
03DC: nop                 ; 00
03DD: nop                 ; 00
03DE: nop                 ; 00
03DF: nop                 ; 00
03E0: nop                 ; 00
03E1: nop                 ; 00
03E2: nop                 ; 00
03E3: nop                 ; 00
03E4: nop                 ; 00
03E5: nop                 ; 00
03E6: nop                 ; 00
03E7: nop                 ; 00
03E8: nop                 ; 00
03E9: nop                 ; 00
03EA: nop                 ; 00
03EB: nop                 ; 00
03EC: nop                 ; 00
03ED: nop                 ; 00
03EE: nop                 ; 00
03EF: nop                 ; 00
03F0: nop                 ; 00
03F1: nop                 ; 00
03F2: nop                 ; 00
03F3: nop                 ; 00
03F4: nop                 ; 00
03F5: nop                 ; 00
03F6: nop                 ; 00
03F7: nop                 ; 00
03F8: nop                 ; 00
03F9: nop                 ; 00
03FA: nop                 ; 00
03FB: nop                 ; 00
03FC: nop                 ; 00
03FD: nop                 ; FC
03FE: nop                 ; FF
03FF: nop                 ; 00
0400: nop                 ; 00
0401: nop                 ; 00
0402: nop                 ; 00
0403: nop                 ; 00
0404: nop                 ; 00
0405: nop                 ; 00
0406: nop                 ; 00
0407: nop                 ; 00
0408: nop                 ; 00
0409: nop                 ; 00
040A: nop                 ; 00
040B: nop                 ; 00
040C: nop                 ; 00
040D: nop                 ; 00
040E: nop                 ; 00
040F: nop                 ; 00
0410: nop                 ; 00
0411: nop                 ; 00
0412: nop                 ; 00
0413: nop                 ; 00
0414: nop                 ; 00
0415: nop                 ; 00
0416: nop                 ; 00
0417: nop                 ; 00
0418: nop                 ; 00
0419: nop                 ; 00
041A: nop                 ; 00
041B: nop                 ; 00
041C: nop                 ; 00
041D: nop                 ; 00
041E: nop                 ; 00
041F: nop                 ; 00
0420: nop                 ; 00
0421: nop                 ; 00
0422: nop                 ; 00
0423: nop                 ; 00
0424: nop                 ; 00
0425: nop                 ; FC
0426: nop                 ; FF
0427: nop                 ; 00
0428: nop                 ; 00
0429: nop                 ; 00
042A: nop                 ; 00
042B: nop                 ; 00
042C: nop                 ; 00
042D: nop                 ; 00
042E: nop                 ; 00
042F: nop                 ; 00
0430: nop                 ; 00
0431: nop                 ; 00
0432: nop                 ; 00
0433: nop                 ; 00
0434: nop                 ; 00
0435: nop                 ; 00
0436: nop                 ; 00
0437: nop                 ; 00
0438: nop                 ; 00
0439: nop                 ; 00
043A: nop                 ; 00
043B: nop                 ; 00
043C: nop                 ; 00
043D: nop                 ; 00
043E: nop                 ; 00
043F: nop                 ; 00
0440: nop                 ; 00
0441: nop                 ; 00
0442: nop                 ; 00
0443: nop                 ; 00
0444: nop                 ; 00
0445: nop                 ; 00
0446: nop                 ; 00
0447: nop                 ; 00
0448: nop                 ; 00
0449: nop                 ; 00
044A: nop                 ; 00
044B: nop                 ; 00
044C: nop                 ; 00
044D: nop                 ; FC
044E: nop                 ; FF
044F: nop                 ; 00
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
0475: nop                 ; FC
0476: nop                 ; FF
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
0486: nop                 ; 00
0487: nop                 ; 00
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
0494: nop                 ; 00
0495: nop                 ; 00
0496: nop                 ; 00
0497: nop                 ; 00
0498: nop                 ; 00
0499: nop                 ; 00
049A: nop                 ; 00
049B: nop                 ; 00
049C: nop                 ; 00
049D: nop                 ; FC
049E: nop                 ; FF
049F: nop                 ; 00
04A0: nop                 ; 00
04A1: nop                 ; 00
04A2: nop                 ; 00
04A3: nop                 ; 00
04A4: nop                 ; 00
04A5: nop                 ; 00
04A6: nop                 ; 00
04A7: nop                 ; 00
04A8: nop                 ; 00
04A9: nop                 ; 00
04AA: nop                 ; 00
04AB: nop                 ; 00
04AC: nop                 ; 00
04AD: nop                 ; 00
04AE: nop                 ; 00
04AF: nop                 ; 00
04B0: nop                 ; 00
04B1: nop                 ; 00
04B2: nop                 ; 00
04B3: nop                 ; 00
04B4: nop                 ; 00
04B5: nop                 ; 00
04B6: nop                 ; 00
04B7: nop                 ; 00
04B8: nop                 ; 00
04B9: nop                 ; 00
04BA: nop                 ; 00
04BB: nop                 ; 00
04BC: nop                 ; 00
04BD: nop                 ; 00
04BE: nop                 ; 00
04BF: nop                 ; 00
04C0: nop                 ; 00
04C1: nop                 ; 00
04C2: nop                 ; 00
04C3: nop                 ; 00
04C4: nop                 ; 00
04C5: nop                 ; FC
04C6: nop                 ; FF
04C7: nop                 ; 00
04C8: nop                 ; 00
04C9: nop                 ; 00
04CA: nop                 ; 00
04CB: nop                 ; 00
04CC: nop                 ; 00
04CD: nop                 ; 00
04CE: nop                 ; 00
04CF: nop                 ; 00
04D0: nop                 ; 00
04D1: nop                 ; 00
04D2: nop                 ; 00
04D3: nop                 ; 00
04D4: nop                 ; 00
04D5: nop                 ; 00
04D6: nop                 ; 00
04D7: nop                 ; 00
04D8: nop                 ; 00
04D9: nop                 ; 00
04DA: nop                 ; 00
04DB: nop                 ; 00
04DC: nop                 ; 00
04DD: nop                 ; 00
04DE: nop                 ; 00
04DF: nop                 ; 00
04E0: nop                 ; 00
04E1: nop                 ; 00
04E2: nop                 ; 00
04E3: nop                 ; 00
04E4: nop                 ; 00
04E5: nop                 ; 00
04E6: nop                 ; 00
04E7: nop                 ; 00
04E8: nop                 ; 00
04E9: nop                 ; 00
04EA: nop                 ; 00
04EB: nop                 ; 00
04EC: nop                 ; 00
04ED: nop                 ; FC
04EE: nop                 ; FF
04EF: nop                 ; 00
04F0: nop                 ; 00
04F1: nop                 ; 00
04F2: nop                 ; 00
04F3: nop                 ; 00
04F4: nop                 ; 00
04F5: nop                 ; 00
04F6: nop                 ; 00
04F7: nop                 ; 00
04F8: nop                 ; 00
04F9: nop                 ; 00
04FA: nop                 ; 00
04FB: nop                 ; 00
04FC: nop                 ; 00
04FD: nop                 ; 00
04FE: nop                 ; 00
04FF: nop                 ; 00
0500: nop                 ; 00
0501: nop                 ; 00
0502: nop                 ; 00
0503: nop                 ; 00
0504: nop                 ; 00
0505: nop                 ; 00
0506: nop                 ; 00
0507: nop                 ; 00
0508: nop                 ; 00
0509: nop                 ; 00
050A: nop                 ; 00
050B: nop                 ; 00
050C: nop                 ; 00
050D: nop                 ; 00
050E: nop                 ; 00
050F: nop                 ; 00
0510: nop                 ; 00
0511: nop                 ; 00
0512: nop                 ; 00
0513: nop                 ; 00
0514: nop                 ; 00
0515: nop                 ; FC
0516: nop                 ; FF
0517: nop                 ; 00
0518: nop                 ; 00
0519: nop                 ; 00
051A: nop                 ; 00
051B: nop                 ; 00
051C: nop                 ; 00
051D: nop                 ; 00
051E: nop                 ; 00
051F: nop                 ; 00
0520: nop                 ; 00
0521: nop                 ; 00
0522: nop                 ; 00
0523: nop                 ; 00
0524: nop                 ; 00
0525: nop                 ; 00
0526: nop                 ; 00
0527: nop                 ; 00
0528: nop                 ; 00
0529: nop                 ; 00
052A: nop                 ; 00
052B: nop                 ; 00
052C: nop                 ; 00
052D: nop                 ; 00
052E: nop                 ; 00
052F: nop                 ; 00
0530: nop                 ; 00
0531: nop                 ; 00
0532: nop                 ; 00
0533: nop                 ; 00
0534: nop                 ; 00
0535: nop                 ; 00
0536: nop                 ; 00
0537: nop                 ; 00
0538: nop                 ; 00
0539: nop                 ; 00
053A: nop                 ; 00
053B: nop                 ; 00
053C: nop                 ; 00
053D: nop                 ; FC
053E: nop                 ; FF
053F: nop                 ; 00
0540: nop                 ; 00
0541: nop                 ; 00
0542: nop                 ; 00
0543: nop                 ; 00
0544: nop                 ; 00
0545: nop                 ; 00
0546: nop                 ; 00
0547: nop                 ; 00
0548: nop                 ; 00
0549: nop                 ; 00
054A: nop                 ; 00
054B: nop                 ; 00
054C: nop                 ; 00
054D: nop                 ; 00
054E: nop                 ; 00
054F: nop                 ; 00
0550: nop                 ; 00
0551: nop                 ; 00
0552: nop                 ; 00
0553: nop                 ; 00
0554: nop                 ; 00
0555: nop                 ; 00
0556: nop                 ; 00
0557: nop                 ; 00
0558: nop                 ; 00
0559: nop                 ; 00
055A: nop                 ; 00
055B: nop                 ; 00
055C: nop                 ; 00
055D: nop                 ; 00
055E: nop                 ; 00
055F: nop                 ; 00
0560: nop                 ; 00
0561: nop                 ; 00
0562: nop                 ; 00
0563: nop                 ; 00
0564: nop                 ; 00
0565: nop                 ; FC
0566: nop                 ; FF
0567: nop                 ; 00
0568: nop                 ; 00
0569: nop                 ; 00
056A: nop                 ; 00
056B: nop                 ; 00
056C: nop                 ; 00
056D: nop                 ; 00
056E: nop                 ; 00
056F: nop                 ; 00
0570: nop                 ; 00
0571: nop                 ; 00
0572: nop                 ; 00
0573: nop                 ; 00
0574: nop                 ; 00
0575: nop                 ; 00
0576: nop                 ; 00
0577: nop                 ; 00
0578: nop                 ; 00
0579: nop                 ; 00
057A: nop                 ; 00
057B: nop                 ; 00
057C: nop                 ; 00
057D: nop                 ; 00
057E: nop                 ; 00
057F: nop                 ; 00
0580: nop                 ; 00
0581: nop                 ; 00
0582: nop                 ; 00
0583: nop                 ; 00
0584: nop                 ; 00
0585: nop                 ; 00
0586: nop                 ; 00
0587: nop                 ; 00
0588: nop                 ; 00
0589: nop                 ; 00
058A: nop                 ; 00
058B: nop                 ; 00
058C: nop                 ; 00
058D: nop                 ; FC
058E: nop                 ; FF
058F: nop                 ; 00
0590: nop                 ; 00
0591: nop                 ; 00
0592: nop                 ; 00
0593: nop                 ; 00
0594: nop                 ; 00
0595: nop                 ; 00
0596: nop                 ; 00
0597: nop                 ; 00
0598: nop                 ; 00
0599: nop                 ; 00
059A: nop                 ; 00
059B: nop                 ; 00
059C: nop                 ; 00
059D: nop                 ; 00
059E: nop                 ; 00
059F: nop                 ; 00
05A0: nop                 ; 00
05A1: nop                 ; 00
05A2: nop                 ; 00
05A3: nop                 ; 00
05A4: nop                 ; 00
05A5: nop                 ; 00
05A6: nop                 ; 00
05A7: nop                 ; 00
05A8: nop                 ; 00
05A9: nop                 ; 00
05AA: nop                 ; 00
05AB: nop                 ; 00
05AC: nop                 ; 00
05AD: nop                 ; 00
05AE: nop                 ; 00
05AF: nop                 ; 00
05B0: nop                 ; 00
05B1: nop                 ; 00
05B2: nop                 ; 00
05B3: nop                 ; 00
05B4: nop                 ; 00
05B5: nop                 ; FC
05B6: nop                 ; FF
05B7: nop                 ; 00
05B8: nop                 ; 00
05B9: nop                 ; 00
05BA: nop                 ; 00
05BB: nop                 ; 00
05BC: nop                 ; 00
05BD: nop                 ; 00
05BE: nop                 ; 00
05BF: nop                 ; 00
05C0: nop                 ; 00
05C1: nop                 ; 00
05C2: nop                 ; 00
05C3: nop                 ; 00
05C4: nop                 ; 00
05C5: nop                 ; 00
05C6: nop                 ; 00
05C7: nop                 ; 00
05C8: nop                 ; 00
05C9: nop                 ; 00
05CA: nop                 ; 00
05CB: nop                 ; 00
05CC: nop                 ; 00
05CD: nop                 ; 00
05CE: nop                 ; 00
05CF: nop                 ; 00
05D0: nop                 ; 00
05D1: nop                 ; 00
05D2: nop                 ; 00
05D3: nop                 ; 00
05D4: nop                 ; 00
05D5: nop                 ; 00
05D6: nop                 ; 00
05D7: nop                 ; 00
05D8: nop                 ; 00
05D9: nop                 ; 00
05DA: nop                 ; 00
05DB: nop                 ; 00
05DC: nop                 ; 00
05DD: nop                 ; FC
05DE: nop                 ; FF
05DF: nop                 ; 00
05E0: nop                 ; 00
05E1: nop                 ; 00
05E2: nop                 ; 00
05E3: nop                 ; 00
05E4: nop                 ; 00
05E5: nop                 ; 00
05E6: nop                 ; 00
05E7: nop                 ; 00
05E8: nop                 ; 00
05E9: nop                 ; 00
05EA: nop                 ; 00
05EB: nop                 ; 00
05EC: nop                 ; 00
05ED: nop                 ; 00
05EE: nop                 ; 00
05EF: nop                 ; 00
05F0: nop                 ; 00
05F1: nop                 ; 00
05F2: nop                 ; 00
05F3: nop                 ; 00
05F4: nop                 ; 00
05F5: nop                 ; 00
05F6: nop                 ; 00
05F7: nop                 ; 00
05F8: nop                 ; 00
05F9: nop                 ; 00
05FA: nop                 ; 00
05FB: nop                 ; 00
05FC: nop                 ; 00
05FD: nop                 ; 00
05FE: nop                 ; 00
05FF: nop                 ; 00
0600: nop                 ; 00
0601: nop                 ; 00
0602: nop                 ; 00
0603: nop                 ; 00
0604: nop                 ; 00
0605: nop                 ; FC
0606: nop                 ; FF
0607: nop                 ; 00
0608: nop                 ; 00
0609: nop                 ; 00
060A: nop                 ; 00
060B: nop                 ; 00
060C: nop                 ; 00
060D: nop                 ; 00
060E: nop                 ; 00
060F: nop                 ; 00
0610: nop                 ; 00
0611: nop                 ; 00
0612: nop                 ; 00
0613: nop                 ; 00
0614: nop                 ; 00
0615: nop                 ; 00
0616: nop                 ; 00
0617: nop                 ; 00
0618: nop                 ; 00
0619: nop                 ; 00
061A: nop                 ; 00
061B: nop                 ; 00
061C: nop                 ; 00
061D: nop                 ; 00
061E: nop                 ; 00
061F: nop                 ; 00
0620: nop                 ; 00
0621: nop                 ; 00
0622: nop                 ; 00
0623: nop                 ; 00
0624: nop                 ; 00
0625: nop                 ; 00
0626: nop                 ; 00
0627: nop                 ; 00
0628: nop                 ; 00
0629: nop                 ; 00
062A: nop                 ; 00
062B: nop                 ; 00
062C: nop                 ; 00
062D: nop                 ; FC
062E: nop                 ; FF
062F: nop                 ; 00
0630: nop                 ; 00
0631: nop                 ; 00
0632: nop                 ; 00
0633: nop                 ; 00
0634: nop                 ; 00
0635: nop                 ; 00
0636: nop                 ; 00
0637: load y, $0000       ; 10 00 00
063A: nop                 ; 00
063B: nop                 ; 00
063C: nop                 ; 00
063D: nop                 ; 00
063E: nop                 ; 00
063F: nop                 ; 00
0640: nop                 ; 00
0641: nop                 ; 00
0642: nop                 ; 00
0643: nop                 ; 00
0644: nop                 ; 00
0645: nop                 ; 00
0646: nop                 ; 00
0647: nop                 ; 00
0648: nop                 ; 00
0649: nop                 ; 00
064A: nop                 ; 00
064B: nop                 ; 00
064C: nop                 ; 00
064D: nop                 ; 00
064E: nop                 ; 00
064F: nop                 ; 00
0650: nop                 ; 00
0651: nop                 ; 00
0652: nop                 ; 00
0653: nop                 ; 00
0654: nop                 ; 00
0655: nop                 ; FC
0656: nop                 ; FF
0657: nop                 ; 00
0658: nop                 ; 00
0659: nop                 ; 00
065A: nop                 ; 00
065B: nop                 ; 00
065C: nop                 ; 00
065D: nop                 ; 00
065E: nop                 ; 00
065F: nop                 ; 00
0660: nop                 ; 00
0661: nop                 ; 00
0662: nop                 ; 00
0663: nop                 ; 00
0664: nop                 ; 00
0665: nop                 ; 00
0666: nop                 ; 00
0667: nop                 ; 00
0668: nop                 ; 00
0669: nop                 ; 00
066A: nop                 ; 00
066B: nop                 ; 00
066C: nop                 ; 00
066D: nop                 ; 00
066E: nop                 ; 00
066F: nop                 ; 00
0670: nop                 ; 00
0671: nop                 ; 00
0672: nop                 ; 00
0673: nop                 ; 00
0674: nop                 ; 00
0675: nop                 ; 00
0676: nop                 ; 00
0677: nop                 ; 00
0678: nop                 ; 00
0679: nop                 ; 00
067A: nop                 ; 00
067B: nop                 ; 00
067C: nop                 ; 00
067D: nop                 ; FC
067E: nop                 ; FF
067F: nop                 ; 00
0680: nop                 ; 00
0681: nop                 ; 00
0682: nop                 ; 00
0683: nop                 ; 00
0684: nop                 ; 00
0685: nop                 ; 00
0686: nop                 ; 00
0687: nop                 ; 00
0688: nop                 ; 00
0689: nop                 ; 00
068A: nop                 ; 00
068B: nop                 ; 00
068C: nop                 ; 00
068D: nop                 ; 00
068E: nop                 ; 00
068F: nop                 ; 00
0690: nop                 ; 00
0691: nop                 ; 00
0692: nop                 ; 00
0693: nop                 ; 00
0694: nop                 ; 00
0695: nop                 ; 00
0696: nop                 ; 00
0697: nop                 ; 00
0698: nop                 ; 00
0699: nop                 ; 00
069A: nop                 ; 00
069B: nop                 ; 00
069C: nop                 ; 00
069D: nop                 ; 00
069E: nop                 ; 00
069F: nop                 ; 00
06A0: nop                 ; 00
06A1: nop                 ; 00
06A2: nop                 ; 00
06A3: nop                 ; 00
06A4: nop                 ; 00
06A5: nop                 ; FC
06A6: nop                 ; FF
06A7: nop                 ; 00
06A8: nop                 ; 00
06A9: nop                 ; 00
06AA: nop                 ; 00
06AB: nop                 ; 00
06AC: nop                 ; 00
06AD: nop                 ; 00
06AE: nop                 ; 00
06AF: push x              ; 01
06B0: nop                 ; 00
06B1: nop                 ; 00
06B2: nop                 ; 00
06B3: nop                 ; 00
06B4: nop                 ; 00
06B5: nop                 ; 00
06B6: nop                 ; 00
06B7: nop                 ; 00
06B8: nop                 ; 00
06B9: nop                 ; 00
06BA: nop                 ; 00
06BB: nop                 ; 00
06BC: nop                 ; 00
06BD: nop                 ; 00
06BE: nop                 ; 00
06BF: nop                 ; 00
06C0: nop                 ; 00
06C1: nop                 ; 00
06C2: nop                 ; 00
06C3: nop                 ; 00
06C4: nop                 ; 00
06C5: nop                 ; 00
06C6: nop                 ; 00
06C7: nop                 ; 00
06C8: nop                 ; 00
06C9: nop                 ; 00
06CA: nop                 ; 00
06CB: nop                 ; 00
06CC: nop                 ; 00
06CD: nop                 ; FC
06CE: nop                 ; FF
06CF: nop                 ; 00
06D0: nop                 ; 00
06D1: nop                 ; 00
06D2: nop                 ; 00
06D3: nop                 ; 00
06D4: nop                 ; 00
06D5: nop                 ; 00
06D6: return              ; 20
06D7: nop                 ; 00
06D8: nop                 ; 00
06D9: nop                 ; 00
06DA: nop                 ; 00
06DB: nop                 ; 00
06DC: nop                 ; 00
06DD: nop                 ; 00
06DE: nop                 ; 00
06DF: nop                 ; 00
06E0: nop                 ; 00
06E1: nop                 ; 00
06E2: nop                 ; 00
06E3: nop                 ; 00
06E4: nop                 ; 00
06E5: nop                 ; 00
06E6: nop                 ; 00
06E7: nop                 ; 00
06E8: nop                 ; 00
06E9: nop                 ; 00
06EA: nop                 ; 00
06EB: nop                 ; 00
06EC: nop                 ; 00
06ED: nop                 ; 00
06EE: nop                 ; 00
06EF: nop                 ; 00
06F0: nop                 ; 00
06F1: nop                 ; 00
06F2: nop                 ; 00
06F3: nop                 ; 00
06F4: nop                 ; 00
06F5: nop                 ; FC
06F6: nop                 ; FF
06F7: nop                 ; 00
06F8: nop                 ; 00
06F9: nop                 ; 00
06FA: nop                 ; F4
06FB: nop                 ; B7
06FC: push y              ; 02
06FD: nop                 ; 00
06FE: nop                 ; 00
06FF: nop                 ; 00
0700: nop                 ; 00
0701: nop                 ; 00
0702: nop                 ; 00
0703: nop                 ; 00
0704: nop                 ; 00
0705: nop                 ; 00
0706: nop                 ; 00
0707: nop                 ; 00
0708: nop                 ; 00
0709: nop                 ; 00
070A: nop                 ; 00
070B: nop                 ; 00
070C: nop                 ; 00
070D: nop                 ; 00
070E: nop                 ; 00
070F: nop                 ; 00
0710: nop                 ; 00
0711: nop                 ; 00
0712: nop                 ; 00
0713: nop                 ; 00
0714: nop                 ; 00
0715: nop                 ; 00
0716: nop                 ; 00
0717: nop                 ; 00
0718: nop                 ; 00
0719: nop                 ; 00
071A: nop                 ; 00
071B: nop                 ; 00
071C: nop                 ; 00
071D: nop                 ; FC
071E: nop                 ; FF
071F: nop                 ; 00
0720: nop                 ; 00
0721: xor a, y            ; 80
0722: nop                 ; BA
0723: nop                 ; DD
0724: nop                 ; FA
0725: cmp a, y            ; 5B
0726: sub x, $00          ; 41 00
0728: nop                 ; 00
0729: nop                 ; 00
072A: nop                 ; 00
072B: nop                 ; 00
072C: nop                 ; 00
072D: nop                 ; 00
072E: nop                 ; 00
072F: nop                 ; 00
0730: nop                 ; 00
0731: nop                 ; 00
0732: nop                 ; 00
0733: nop                 ; 00
0734: nop                 ; 00
0735: nop                 ; 00
0736: nop                 ; 00
0737: nop                 ; 00
0738: nop                 ; 00
0739: nop                 ; 00
073A: nop                 ; 00
073B: nop                 ; 00
073C: nop                 ; 00
073D: nop                 ; 00
073E: nop                 ; 00
073F: nop                 ; 00
0740: nop                 ; 00
0741: nop                 ; 00
0742: nop                 ; 00
0743: nop                 ; 00
0744: nop                 ; 00
0745: nop                 ; FC
0746: nop                 ; FF
0747: nop                 ; 00
0748: nop                 ; 00
0749: nop                 ; E0
074A: nop                 ; FF
074B: load w, $F7ED       ; 12 ED F7
074E: nop                 ; BE
074F: add a, z            ; 2A
0750: nop                 ; 00
0751: nop                 ; 00
0752: nop                 ; 00
0753: nop                 ; 00
0754: nop                 ; 00
0755: nop                 ; 00
0756: nop                 ; 00
0757: nop                 ; 00
0758: nop                 ; 00
0759: nop                 ; 00
075A: nop                 ; 00
075B: nop                 ; 00
075C: nop                 ; 00
075D: nop                 ; 00
075E: nop                 ; 00
075F: nop                 ; 00
0760: nop                 ; 00
0761: nop                 ; 00
0762: nop                 ; 00
0763: nop                 ; 00
0764: nop                 ; 00
0765: nop                 ; 00
0766: nop                 ; 00
0767: nop                 ; 00
0768: nop                 ; 00
0769: nop                 ; 00
076A: nop                 ; 00
076B: nop                 ; 00
076C: nop                 ; 00
076D: nop                 ; FC
076E: nop                 ; FF
076F: nop                 ; 00
0770: nop                 ; 00
0771: nop                 ; 00
0772: cmp y, $00          ; 5F 00
0774: nop                 ; F0
0775: cmp a, x            ; 5A
0776: resume              ; AB
0777: dec x               ; 55
0778: rol w               ; 95
0779: nop                 ; 00
077A: nop                 ; 00
077B: nop                 ; 00
077C: nop                 ; 00
077D: nop                 ; 00
077E: nop                 ; 00
077F: nop                 ; 00
0780: nop                 ; 00
0781: nop                 ; 00
0782: nop                 ; 00
0783: nop                 ; 00
0784: nop                 ; 00
0785: nop                 ; 00
0786: nop                 ; 00
0787: nop                 ; 00
0788: nop                 ; 00
0789: nop                 ; 00
078A: nop                 ; 00
078B: nop                 ; 00
078C: nop                 ; 00
078D: nop                 ; 00
078E: nop                 ; 00
078F: nop                 ; 00
0790: nop                 ; 00
0791: nop                 ; 00
0792: nop                 ; 00
0793: nop                 ; 00
0794: nop                 ; 00
0795: nop                 ; FC
0796: nop                 ; FF
0797: nop                 ; 00
0798: nop                 ; 00
0799: nop                 ; 00
079A: nop                 ; F0
079B: nop                 ; FF
079C: add z, $00          ; 2F 00
079E: nop                 ; 00
079F: nop                 ; 00
07A0: inc z               ; 52
07A1: clc                 ; AD
07A2: pop z               ; 0A
07A3: nop                 ; 00
07A4: nop                 ; 00
07A5: nop                 ; 00
07A6: nop                 ; 00
07A7: nop                 ; 00
07A8: nop                 ; 00
07A9: nop                 ; 00
07AA: nop                 ; 00
07AB: nop                 ; 00
07AC: nop                 ; 00
07AD: nop                 ; 00
07AE: nop                 ; 00
07AF: nop                 ; 00
07B0: nop                 ; 00
07B1: nop                 ; 00
07B2: nop                 ; 00
07B3: nop                 ; 00
07B4: nop                 ; 00
07B5: nop                 ; 00
07B6: nop                 ; 00
07B7: nop                 ; 00
07B8: nop                 ; 00
07B9: nop                 ; 00
07BA: nop                 ; 00
07BB: nop                 ; 00
07BC: nop                 ; 00
07BD: nop                 ; FC
07BE: nop                 ; FF
07BF: sub a, w            ; 40
07C0: nop                 ; 00
07C1: nop                 ; 00
07C2: sub a, w            ; 40
07C3: add z, $00          ; 2F 00
07C5: nop                 ; 00
07C6: nop                 ; 00
07C7: nop                 ; 00
07C8: nop                 ; 00
07C9: jmp $55EA, y        ; A0 EA 55
07CC: push x              ; 01
07CD: nop                 ; 00
07CE: nop                 ; 00
07CF: nop                 ; 00
07D0: nop                 ; 00
07D1: nop                 ; 00
07D2: nop                 ; 00
07D3: nop                 ; 00
07D4: nop                 ; 00
07D5: nop                 ; 00
07D6: nop                 ; 00
07D7: nop                 ; 00
07D8: nop                 ; 00
07D9: nop                 ; 00
07DA: nop                 ; 00
07DB: nop                 ; 00
07DC: nop                 ; 00
07DD: nop                 ; 00
07DE: nop                 ; 00
07DF: nop                 ; 00
07E0: nop                 ; 00
07E1: nop                 ; 00
07E2: nop                 ; 00
07E3: nop                 ; 00
07E4: nop                 ; 00
07E5: nop                 ; FC
07E6: nop                 ; FF
07E7: load y, $0805       ; 10 05 08
07EA: nop                 ; 00
07EB: nop                 ; E8
07EC: push a              ; 05
07ED: xor a, w            ; 82
07EE: set w, $48          ; 24 48
07F0: nop                 ; 00
07F1: nop                 ; 00
07F2: nop                 ; 00
07F3: jmp $057E, y        ; A0 7E 05
07F6: nop                 ; 00
07F7: nop                 ; 00
07F8: nop                 ; 00
07F9: nop                 ; 00
07FA: nop                 ; 00
07FB: nop                 ; 00
07FC: nop                 ; 00
07FD: nop                 ; 00
07FE: nop                 ; 00
07FF: nop                 ; 00
0800: nop                 ; 00
0801: nop                 ; 00
0802: nop                 ; 00
0803: nop                 ; 00
0804: nop                 ; 00
0805: nop                 ; 00
0806: nop                 ; 00
0807: nop                 ; 00
0808: nop                 ; 00
0809: nop                 ; 00
080A: nop                 ; 00
080B: nop                 ; 00
080C: nop                 ; 00
080D: nop                 ; FC
080E: nop                 ; FF
080F: sub y, $00          ; 42 00
0811: nop                 ; 00
0812: nop                 ; 00
0813: inc x               ; 50
0814: nop                 ; BF
0815: load y, $B580       ; 10 80 B5
0818: dec z               ; 57
0819: push a              ; 05
081A: nop                 ; 00
081B: nop                 ; 00
081C: xor a, z            ; 81
081D: jmp.z $000A         ; A8 0A 00
0820: nop                 ; 00
0821: nop                 ; 00
0822: nop                 ; 00
0823: nop                 ; 00
0824: nop                 ; 00
0825: nop                 ; 00
0826: nop                 ; 00
0827: nop                 ; 00
0828: nop                 ; 00
0829: nop                 ; 00
082A: nop                 ; 00
082B: nop                 ; 00
082C: nop                 ; 00
082D: nop                 ; 00
082E: nop                 ; 00
082F: nop                 ; 00
0830: nop                 ; 00
0831: nop                 ; 00
0832: nop                 ; 00
0833: nop                 ; 00
0834: nop                 ; 00
0835: nop                 ; FC
0836: nop                 ; FF
0837: nop                 ; D0
0838: push y              ; 02
0839: nop                 ; 00
083A: nop                 ; 00
083B: nop                 ; 00
083C: nop                 ; EA
083D: xor a, $7A          ; 87 7A
083F: and w, $FD          ; 6F FD
0841: nop                 ; FF
0842: add a, z            ; 2A
0843: sub a, w            ; 40
0844: cmp y, $AA          ; 5F AA
0846: nop                 ; 00
0847: return              ; 20
0848: nop                 ; 00
0849: nop                 ; 00
084A: nop                 ; 00
084B: nop                 ; 00
084C: nop                 ; 00
084D: nop                 ; 00
084E: nop                 ; 00
084F: nop                 ; 00
0850: nop                 ; 00
0851: nop                 ; 00
0852: nop                 ; 00
0853: nop                 ; 00
0854: nop                 ; 00
0855: nop                 ; 00
0856: nop                 ; 00
0857: nop                 ; 00
0858: nop                 ; 00
0859: nop                 ; 00
085A: nop                 ; 00
085B: nop                 ; 00
085C: nop                 ; 00
085D: nop                 ; FC
085E: nop                 ; FF
085F: nop                 ; E4
0860: push y              ; 02
0861: load y, $0004       ; 10 04 00
0864: nop                 ; E9
0865: nop                 ; FE
0866: nop                 ; AF
0867: nop                 ; BD
0868: store $ABA9, x      ; 17 A9 AB
086B: nop                 ; AF
086C: jmp $A925, y        ; A0 25 A9
086F: mul a, a            ; 4A
0870: dec x               ; 55
0871: dec x               ; 55
0872: push x              ; 01
0873: nop                 ; 00
0874: nop                 ; 00
0875: nop                 ; 00
0876: nop                 ; 00
0877: nop                 ; 00
0878: nop                 ; 00
0879: nop                 ; 00
087A: nop                 ; 00
087B: nop                 ; 00
087C: nop                 ; 00
087D: nop                 ; 00
087E: nop                 ; 00
087F: nop                 ; 00
0880: nop                 ; 00
0881: nop                 ; 00
0882: nop                 ; 00
0883: nop                 ; 00
0884: nop                 ; 00
0885: nop                 ; FC
0886: nop                 ; FF
0887: nop                 ; C8
0888: push a              ; 05
0889: sub a, w            ; 40
088A: xor a, y            ; 80
088B: push w              ; 04
088C: xor a, y            ; 80
088D: dec x               ; 55
088E: nop                 ; F5
088F: and a, w            ; 6B
0890: nop                 ; E9
0891: dec y               ; 56
0892: mul a, a            ; 4A
0893: dec a               ; 59
0894: cmp a, w            ; 5D
0895: dec x               ; 55
0896: push y              ; 02
0897: inc y               ; 51
0898: push y              ; 02
0899: return              ; 20
089A: push y              ; 02
089B: nop                 ; 00
089C: nop                 ; 00
089D: nop                 ; 00
089E: nop                 ; 00
089F: nop                 ; 00
08A0: nop                 ; 00
08A1: nop                 ; 00
08A2: nop                 ; 00
08A3: nop                 ; 00
08A4: nop                 ; 00
08A5: nop                 ; 00
08A6: nop                 ; 00
08A7: nop                 ; 00
08A8: nop                 ; 00
08A9: nop                 ; 00
08AA: nop                 ; 00
08AB: nop                 ; 00
08AC: nop                 ; 00
08AD: nop                 ; FC
08AE: nop                 ; FF
08AF: return              ; 20
08B0: nop                 ; 00
08B1: nop                 ; 00
08B2: return              ; 20
08B3: return              ; 20
08B4: set w, $4A          ; 24 4A
08B6: cmp y, $AD          ; 5F AD
08B8: clc                 ; AD
08B9: mul a, a            ; 4A
08BA: and a, y            ; 69
08BB: nop                 ; EF
08BC: dec z               ; 57
08BD: push a              ; 05
08BE: jmp.nz $A94C        ; A9 4C A9
08C1: pop z               ; 0A
08C2: nop                 ; 00
08C3: nop                 ; 00
08C4: nop                 ; 00
08C5: nop                 ; 00
08C6: nop                 ; 00
08C7: nop                 ; 00
08C8: nop                 ; 00
08C9: nop                 ; 00
08CA: nop                 ; 00
08CB: nop                 ; 00
08CC: nop                 ; 00
08CD: nop                 ; 00
08CE: nop                 ; 00
08CF: nop                 ; 00
08D0: nop                 ; 00
08D1: nop                 ; 00
08D2: nop                 ; 00
08D3: nop                 ; 00
08D4: nop                 ; 00
08D5: nop                 ; FC
08D6: nop                 ; FF
08D7: sub a, w            ; 40
08D8: set x, $00          ; 21 00
08DA: pop x               ; 08
08DB: xor a, y            ; 80
08DC: mul a, z            ; 48
08DD: load y, $7BF5       ; 10 F5 7B
08E0: nop                 ; BB
08E1: inc w               ; 53
08E2: nop                 ; FF
08E3: mul a, a            ; 4A
08E4: jmp.neq $36D4       ; A5 D4 36
08E7: set x, $55          ; 21 55
08E9: set a, $A8          ; 25 A8
08EB: nop                 ; 00
08EC: nop                 ; 00
08ED: nop                 ; 00
08EE: nop                 ; 00
08EF: nop                 ; 00
08F0: nop                 ; 00
08F1: nop                 ; 00
08F2: nop                 ; 00
08F3: nop                 ; 00
08F4: nop                 ; 00
08F5: nop                 ; 00
08F6: nop                 ; 00
08F7: nop                 ; 00
08F8: nop                 ; 00
08F9: nop                 ; 00
08FA: nop                 ; 00
08FB: nop                 ; 00
08FC: nop                 ; 00
08FD: nop                 ; FC
08FE: nop                 ; FF
08FF: return              ; 20
0900: nop                 ; 00
0901: return              ; 20
0902: nop                 ; EA
0903: pop z               ; 0A
0904: push y              ; 02
0905: sub x, $5A          ; 41 5A
0907: nop                 ; DF
0908: and y, $FD          ; 6D FD
090A: add x, $A4          ; 2D A4
090C: dec x               ; 55
090D: nop                 ; BB
090E: shl z, $94          ; 8A 94
0910: set w, $92          ; 24 92
0912: xor a, w            ; 82
0913: pop z               ; 0A
0914: nop                 ; 00
0915: nop                 ; 00
0916: nop                 ; 00
0917: nop                 ; 00
0918: nop                 ; 00
0919: nop                 ; 00
091A: nop                 ; 00
091B: nop                 ; 00
091C: nop                 ; 00
091D: nop                 ; 00
091E: nop                 ; 00
091F: nop                 ; 00
0920: nop                 ; 00
0921: nop                 ; 00
0922: nop                 ; 00
0923: nop                 ; 00
0924: nop                 ; 00
0925: nop                 ; FC
0926: nop                 ; FF
0927: xor a, y            ; 80
0928: nop                 ; 00
0929: nop                 ; 00
092A: dec w               ; 58
092B: dec x               ; 55
092C: inc x               ; 50
092D: shl x, $D0          ; 88 D0
092F: nop                 ; B5
0930: nop                 ; D6
0931: pop w               ; 0B
0932: inc x               ; 50
0933: nop                 ; BB
0934: nop                 ; B6
0935: int $35             ; AA 35
0937: set y, $A9          ; 22 A9
0939: set w, $28          ; 24 28
093B: nop                 ; 00
093C: nop                 ; 00
093D: nop                 ; 00
093E: nop                 ; 00
093F: nop                 ; 00
0940: nop                 ; 00
0941: nop                 ; 00
0942: nop                 ; 00
0943: nop                 ; 00
0944: nop                 ; 00
0945: nop                 ; 00
0946: nop                 ; 00
0947: nop                 ; 00
0948: nop                 ; 00
0949: nop                 ; 00
094A: nop                 ; 00
094B: nop                 ; 00
094C: nop                 ; 00
094D: nop                 ; FC
094E: nop                 ; FF
094F: nop                 ; 00
0950: nop                 ; 00
0951: xor a, y            ; 80
0952: nop                 ; D4
0953: push y              ; 02
0954: push a              ; 05
0955: push y              ; 02
0956: push y              ; 02
0957: int $3B             ; AA 3B
0959: nop                 ; 00
095A: push x              ; 01
095B: jmp $56DA, y        ; A0 DA 56
095E: dec x               ; 55
095F: shl x, $00          ; 88 00
0961: shr w, $00          ; 90 00
0963: xor y, $00          ; 84 00
0965: nop                 ; 00
0966: nop                 ; 00
0967: nop                 ; 00
0968: nop                 ; 00
0969: nop                 ; 00
096A: nop                 ; 00
096B: nop                 ; 00
096C: nop                 ; 00
096D: nop                 ; 00
096E: nop                 ; 00
096F: nop                 ; 00
0970: nop                 ; 00
0971: nop                 ; 00
0972: nop                 ; 00
0973: nop                 ; 00
0974: nop                 ; 00
0975: nop                 ; FC
0976: nop                 ; FF
0977: nop                 ; 00
0978: nop                 ; 00
0979: push w              ; 04
097A: and a, x            ; 68
097B: cmp y, $00          ; 5F 00
097D: jmp $4AA8, y        ; A0 A8 4A
0980: mul a, a            ; 4A
0981: and a, y            ; 69
0982: clc                 ; AD
0983: cmp z, $85          ; 60 85
0985: clc                 ; AD
0986: shl z, $22          ; 8A 22
0988: nop                 ; 00
0989: nop                 ; 00
098A: nop                 ; 00
098B: load z, $0000       ; 11 00 00
098E: nop                 ; 00
098F: nop                 ; 00
0990: nop                 ; 00
0991: nop                 ; 00
0992: nop                 ; 00
0993: nop                 ; 00
0994: nop                 ; 00
0995: nop                 ; 00
0996: nop                 ; 00
0997: nop                 ; 00
0998: nop                 ; 00
0999: nop                 ; 00
099A: nop                 ; 00
099B: nop                 ; 00
099C: nop                 ; 00
099D: nop                 ; FC
099E: nop                 ; FF
099F: nop                 ; 00
09A0: nop                 ; 00
09A1: set x, $DE          ; 21 DE
09A3: or x, $A9           ; 75 A9
09A5: pop z               ; 0A
09A6: push y              ; 02
09A7: return              ; 20
09A8: set x, $AA          ; 21 AA
09AA: inc z               ; 52
09AB: resume              ; AB
09AC: rol z               ; 94
09AD: ror x               ; 97
09AE: return              ; 20
09AF: shr w, $00          ; 90 00
09B1: nop                 ; 00
09B2: rol x               ; 92
09B3: push w              ; 04
09B4: nop                 ; 00
09B5: nop                 ; 00
09B6: nop                 ; 00
09B7: nop                 ; 00
09B8: nop                 ; 00
09B9: nop                 ; 00
09BA: nop                 ; 00
09BB: nop                 ; 00
09BC: nop                 ; 00
09BD: nop                 ; 00
09BE: nop                 ; 00
09BF: nop                 ; 00
09C0: nop                 ; 00
09C1: nop                 ; 00
09C2: nop                 ; 00
09C3: nop                 ; 00
09C4: nop                 ; 00
09C5: nop                 ; FC
09C6: nop                 ; FF
09C7: nop                 ; 00
09C8: return              ; 20
09C9: sub a, w            ; 40
09CA: nop                 ; B0
09CB: nop                 ; DE
09CC: push w              ; 04
09CD: jmp $0AAA, y        ; A0 AA 0A
09D0: mul a, a            ; 4A
09D1: dec x               ; 55
09D2: clc                 ; AD
09D3: jmp.gt $542A        ; A6 2A 54
09D6: mul a, a            ; 4A
09D7: set a, $05          ; 25 05
09D9: xor a, y            ; 80
09DA: jmp.eq $0000        ; A4 00 00
09DD: nop                 ; 00
09DE: nop                 ; 00
09DF: nop                 ; 00
09E0: nop                 ; 00
09E1: nop                 ; 00
09E2: nop                 ; 00
09E3: nop                 ; 00
09E4: nop                 ; 00
09E5: nop                 ; 00
09E6: nop                 ; 00
09E7: nop                 ; 00
09E8: nop                 ; 00
09E9: nop                 ; 00
09EA: nop                 ; 00
09EB: nop                 ; 00
09EC: nop                 ; 00
09ED: nop                 ; FC
09EE: nop                 ; FF
09EF: nop                 ; 00
09F0: nop                 ; 00
09F1: push w              ; 04
09F2: nop                 ; DD
09F3: and a, w            ; 6B
09F4: nop                 ; D5
09F5: dec z               ; 57
09F6: dec x               ; 55
09F7: jmp $AD00, w        ; A2 00 AD
09FA: and a, z            ; 6A
09FB: add a, y            ; 29
09FC: rol w               ; 95
09FD: mul a, a            ; 4A
09FE: add a, y            ; 29
09FF: rol x               ; 92
0A00: jmp.z $122A         ; A8 2A 12
0A03: nop                 ; 00
0A04: nop                 ; 00
0A05: nop                 ; 00
0A06: nop                 ; 00
0A07: nop                 ; 00
0A08: nop                 ; 00
0A09: nop                 ; 00
0A0A: nop                 ; 00
0A0B: nop                 ; 00
0A0C: nop                 ; 00
0A0D: nop                 ; 00
0A0E: nop                 ; 00
0A0F: nop                 ; 00
0A10: nop                 ; 00
0A11: nop                 ; 00
0A12: nop                 ; 00
0A13: nop                 ; 00
0A14: nop                 ; 00
0A15: nop                 ; FC
0A16: nop                 ; FF
0A17: nop                 ; 00
0A18: xor a, y            ; 80
0A19: return              ; 20
0A1A: nop                 ; B4
0A1B: nop                 ; DE
0A1C: add a, z            ; 2A
0A1D: nop                 ; FF
0A1E: nop                 ; BF
0A1F: pop z               ; 0A
0A20: dec x               ; 55
0A21: int $B6             ; AA B6
0A23: xor a, w            ; 82
0A24: int $92             ; AA 92
0A26: xor y, $24          ; 84 24
0A28: push y              ; 02
0A29: xor a, y            ; 80
0A2A: push w              ; 04
0A2B: sub a, w            ; 40
0A2C: push y              ; 02
0A2D: nop                 ; 00
0A2E: nop                 ; 00
0A2F: nop                 ; 00
0A30: nop                 ; 00
0A31: nop                 ; 00
0A32: nop                 ; 00
0A33: nop                 ; 00
0A34: nop                 ; 00
0A35: nop                 ; 00
0A36: nop                 ; 00
0A37: nop                 ; 00
0A38: nop                 ; 00
0A39: nop                 ; 00
0A3A: nop                 ; 00
0A3B: nop                 ; 00
0A3C: nop                 ; 00
0A3D: nop                 ; FC
0A3E: nop                 ; FF
0A3F: nop                 ; 00
0A40: nop                 ; 00
0A41: load y, $7BD5       ; 10 D5 7B
0A44: nop                 ; D2
0A45: nop                 ; FF
0A46: nop                 ; FF
0A47: dec x               ; 55
0A48: return              ; 20
0A49: jmp.nz $694D        ; A9 4D 69
0A4C: nop                 ; FD
0A4D: mul z, $52          ; 4D 52
0A4F: rol x               ; 92
0A50: inc a               ; 54
0A51: cmp a, y            ; 5B
0A52: sub y, $15          ; 42 15
0A54: add a, y            ; 29
0A55: nop                 ; 00
0A56: nop                 ; 00
0A57: nop                 ; 00
0A58: nop                 ; 00
0A59: nop                 ; 00
0A5A: nop                 ; 00
0A5B: nop                 ; 00
0A5C: nop                 ; 00
0A5D: nop                 ; 00
0A5E: nop                 ; 00
0A5F: nop                 ; 00
0A60: nop                 ; 00
0A61: nop                 ; 00
0A62: nop                 ; 00
0A63: nop                 ; 00
0A64: nop                 ; 00
0A65: nop                 ; FC
0A66: nop                 ; FF
0A67: nop                 ; 00
0A68: nop                 ; 00
0A69: sub y, $B8          ; 42 B8
0A6B: nop                 ; AE
0A6C: clc                 ; AD
0A6D: nop                 ; FF
0A6E: nop                 ; FF
0A6F: nop                 ; EF
0A70: mul a, a            ; 4A
0A71: inc z               ; 52
0A72: inc w               ; 53
0A73: int $56             ; AA 56
0A75: nop                 ; BB
0A76: rol z               ; 94
0A77: sub w, $82          ; 44 82
0A79: jmp.eq $A814        ; A4 14 A8
0A7C: xor y, $00          ; 84 00
0A7E: nop                 ; 00
0A7F: nop                 ; 00
0A80: nop                 ; 00
0A81: nop                 ; 00
0A82: nop                 ; 00
0A83: nop                 ; 00
0A84: nop                 ; 00
0A85: nop                 ; 00
0A86: nop                 ; 00
0A87: nop                 ; 00
0A88: nop                 ; 00
0A89: nop                 ; 00
0A8A: nop                 ; 00
0A8B: nop                 ; 00
0A8C: nop                 ; 00
0A8D: nop                 ; FC
0A8E: nop                 ; FF
0A8F: nop                 ; 00
0A90: mul a, z            ; 48
0A91: pop x               ; 08
0A92: nop                 ; ED
0A93: cmp a, y            ; 5B
0A94: nop                 ; F5
0A95: nop                 ; FF
0A96: nop                 ; FF
0A97: nop                 ; FF
0A98: jmp $4D55, a        ; A3 55 4D
0A9B: cmp a, w            ; 5D
0A9C: nop                 ; FB
0A9D: dec y               ; 56
0A9E: set x, $29          ; 21 29
0AA0: jmp.nz $554A        ; A9 4A 55
0AA3: add a, w            ; 2B
0AA4: nop                 ; D2
0AA5: push y              ; 02
0AA6: nop                 ; 00
0AA7: nop                 ; 00
0AA8: nop                 ; 00
0AA9: nop                 ; 00
0AAA: nop                 ; 00
0AAB: nop                 ; 00
0AAC: nop                 ; 00
0AAD: nop                 ; 00
0AAE: nop                 ; 00
0AAF: nop                 ; 00
0AB0: nop                 ; 00
0AB1: nop                 ; 00
0AB2: nop                 ; 00
0AB3: nop                 ; 00
0AB4: nop                 ; 00
0AB5: nop                 ; FC
0AB6: nop                 ; FF
0AB7: nop                 ; 00
0AB8: nop                 ; 00
0AB9: inc y               ; 51
0ABA: or a, y             ; 72
0ABB: nop                 ; F7
0ABC: nop                 ; DE
0ABD: nop                 ; FF
0ABE: nop                 ; FF
0ABF: nop                 ; FF
0AC0: ror x               ; 97
0AC1: ror x               ; 97
0AC2: inc x               ; 50
0AC3: and a, w            ; 6B
0AC4: clc                 ; AD
0AC5: clc                 ; AD
0AC6: rol z               ; 94
0AC7: mul a, a            ; 4A
0AC8: set y, $29          ; 22 29
0ACA: mul a, w            ; 49
0ACB: rol x               ; 92
0ACC: set a, $0D          ; 25 0D
0ACE: nop                 ; 00
0ACF: nop                 ; 00
0AD0: nop                 ; 00
0AD1: nop                 ; 00
0AD2: nop                 ; 00
0AD3: nop                 ; 00
0AD4: nop                 ; 00
0AD5: nop                 ; 00
0AD6: nop                 ; 00
0AD7: nop                 ; 00
0AD8: nop                 ; 00
0AD9: nop                 ; 00
0ADA: nop                 ; 00
0ADB: nop                 ; 00
0ADC: nop                 ; 00
0ADD: nop                 ; FC
0ADE: nop                 ; FF
0ADF: sub a, w            ; 40
0AE0: load w, $AAA4       ; 12 A4 AA
0AE3: cmp a, w            ; 5D
0AE4: nop                 ; FB
0AE5: nop                 ; FF
0AE6: nop                 ; FF
0AE7: nop                 ; FF
0AE8: jmp $EA5F, z        ; A1 5F EA
0AEB: int $B6             ; AA B6
0AED: load w, $AEEA       ; 12 EA AE
0AF0: rol z               ; 94
0AF1: and a, z            ; 6A
0AF2: jmp.neq $8AFA       ; A5 FA 8A
0AF5: inc a               ; 54
0AF6: nop                 ; 00
0AF7: nop                 ; 00
0AF8: nop                 ; 00
0AF9: nop                 ; 00
0AFA: nop                 ; 00
0AFB: nop                 ; 00
0AFC: nop                 ; 00
0AFD: nop                 ; 00
0AFE: nop                 ; 00
0AFF: nop                 ; 00
0B00: nop                 ; 00
0B01: nop                 ; 00
0B02: nop                 ; 00
0B03: nop                 ; 00
0B04: nop                 ; 00
0B05: nop                 ; FC
0B06: nop                 ; FF
0B07: pop x               ; 08
0B08: jmp $EA92, y        ; A0 92 EA
0B0B: nop                 ; F7
0B0C: nop                 ; FF
0B0D: nop                 ; FF
0B0E: nop                 ; FF
0B0F: nop                 ; FF
0B10: mul a, a            ; 4A
0B11: not z               ; 7C
0B12: xor z, $AD          ; 85 AD
0B14: nop                 ; D5
0B15: jmp.eq $DB55        ; A4 55 DB
0B18: jmp.neq $DBDE       ; A5 DE DB
0B1B: nop                 ; AE
0B1C: adc x, $29          ; 37 29
0B1E: push x              ; 01
0B1F: nop                 ; 00
0B20: nop                 ; 00
0B21: nop                 ; 00
0B22: nop                 ; 00
0B23: nop                 ; 00
0B24: nop                 ; 00
0B25: nop                 ; 00
0B26: nop                 ; 00
0B27: nop                 ; 00
0B28: nop                 ; 00
0B29: nop                 ; 00
0B2A: nop                 ; 00
0B2B: nop                 ; 00
0B2C: nop                 ; 00
0B2D: nop                 ; FC
0B2E: nop                 ; FF
0B2F: return              ; 20
0B30: load.xy z           ; 15
0B31: and x, $BD          ; 6C BD
0B33: nop                 ; FE
0B34: nop                 ; FF
0B35: nop                 ; FF
0B36: nop                 ; FF
0B37: add z, $20          ; 2F 20
0B39: nop                 ; F5
0B3A: inc y               ; 51
0B3B: nop                 ; EB
0B3C: and w, $6B          ; 6F 6B
0B3E: nop                 ; DB
0B3F: int $BF             ; AA BF
0B41: not y               ; 7B
0B42: and y, $7B          ; 6D 7B
0B44: mul a, w            ; 49
0B45: inc a               ; 54
0B46: push a              ; 05
0B47: nop                 ; 00
0B48: nop                 ; 00
0B49: nop                 ; 00
0B4A: nop                 ; 00
0B4B: nop                 ; 00
0B4C: nop                 ; 00
0B4D: nop                 ; 00
0B4E: nop                 ; 00
0B4F: nop                 ; 00
0B50: nop                 ; 00
0B51: nop                 ; 00
0B52: nop                 ; 00
0B53: nop                 ; 00
0B54: nop                 ; 00
0B55: nop                 ; FC
0B56: nop                 ; FF
0B57: sub w, $A0          ; 44 A0
0B59: inc z               ; 52
0B5A: nop                 ; EB
0B5B: nop                 ; DD
0B5C: nop                 ; FF
0B5D: nop                 ; FF
0B5E: nop                 ; FF
0B5F: dec z               ; 57
0B60: sub a, $D4          ; 45 D4
0B62: xor a, $F6          ; 87 F6
0B64: nop                 ; BA
0B65: nop                 ; DA
0B66: nop                 ; B6
0B67: clc                 ; AD
0B68: and a, z            ; 6A
0B69: sub a, w            ; 40
0B6A: nop                 ; FD
0B6B: nop                 ; AE
0B6C: load.xy a           ; 14
0B6D: jmp.neq $0014       ; A5 14 00
0B70: nop                 ; 00
0B71: nop                 ; 00
0B72: nop                 ; 00
0B73: nop                 ; 00
0B74: nop                 ; 00
0B75: nop                 ; 00
0B76: nop                 ; 00
0B77: nop                 ; 00
0B78: nop                 ; 00
0B79: nop                 ; 00
0B7A: nop                 ; 00
0B7B: nop                 ; 00
0B7C: nop                 ; 00
0B7D: nop                 ; FC
0B7E: nop                 ; FF
0B7F: load z, $ED55       ; 11 55 ED
0B82: nop                 ; FD
0B83: nop                 ; FF
0B84: nop                 ; FF
0B85: nop                 ; FF
0B86: nop                 ; FF
0B87: pop y               ; 09
0B88: load z, $11A1       ; 11 A1 11
0B8B: nop                 ; DB
0B8C: nop                 ; D7
0B8D: dec y               ; 56
0B8E: mul x, $F5          ; 4B F5
0B90: nop                 ; BF
0B91: nop                 ; 00
0B92: nop                 ; D4
0B93: not y               ; 7B
0B94: dec x               ; 55
0B95: jmp.z $0012         ; A8 12 00
0B98: nop                 ; 00
0B99: nop                 ; 00
0B9A: nop                 ; 00
0B9B: nop                 ; 00
0B9C: nop                 ; 00
0B9D: nop                 ; 00
0B9E: nop                 ; 00
0B9F: nop                 ; 00
0BA0: nop                 ; 00
0BA1: nop                 ; 00
0BA2: nop                 ; 00
0BA3: nop                 ; 00
0BA4: nop                 ; 00
0BA5: nop                 ; FC
0BA6: nop                 ; FF
0BA7: sub w, $AA          ; 44 AA
0BA9: cmp a, x            ; 5A
0BAA: nop                 ; FF
0BAB: nop                 ; FF
0BAC: nop                 ; FF
0BAD: nop                 ; FF
0BAE: nop                 ; FF
0BAF: dec y               ; 56
0BB0: sub w, $08          ; 44 08
0BB2: sub w, $7C          ; 44 7C
0BB4: clc                 ; AD
0BB5: nop                 ; FD
0BB6: or z, $EF           ; 77 EF
0BB8: and a, w            ; 6B
0BB9: push x              ; 01
0BBA: xor a, y            ; 80
0BBB: nop                 ; D6
0BBC: rol x               ; 92
0BBD: inc z               ; 52
0BBE: nop                 ; 00
0BBF: nop                 ; 00
0BC0: nop                 ; 00
0BC1: nop                 ; 00
0BC2: nop                 ; 00
0BC3: nop                 ; 00
0BC4: nop                 ; 00
0BC5: nop                 ; 00
0BC6: nop                 ; 00
0BC7: nop                 ; 00
0BC8: nop                 ; 00
0BC9: nop                 ; 00
0BCA: nop                 ; 00
0BCB: nop                 ; 00
0BCC: nop                 ; 00
0BCD: nop                 ; FC
0BCE: nop                 ; FF
0BCF: inc y               ; 51
0BD0: dec x               ; 55
0BD1: nop                 ; EB
0BD2: nop                 ; FF
0BD3: nop                 ; FF
0BD4: nop                 ; FF
0BD5: nop                 ; FF
0BD6: xor a, x            ; 7F
0BD7: jmp.nz $A512        ; A9 12 A5
0BDA: load w, $7552       ; 12 52 75
0BDD: nop                 ; B7
0BDE: nop                 ; EE
0BDF: nop                 ; BD
0BE0: nop                 ; FF
0BE1: push x              ; 01
0BE2: nop                 ; 00
0BE3: adc w, $25          ; 3A 25
0BE5: nop                 ; 00
0BE6: nop                 ; 00
0BE7: nop                 ; 00
0BE8: nop                 ; 00
0BE9: nop                 ; 00
0BEA: nop                 ; 00
0BEB: nop                 ; 00
0BEC: nop                 ; 00
0BED: nop                 ; 00
0BEE: nop                 ; 00
0BEF: nop                 ; 00
0BF0: nop                 ; 00
0BF1: nop                 ; 00
0BF2: nop                 ; 00
0BF3: nop                 ; 00
0BF4: nop                 ; 00
0BF5: nop                 ; FC
0BF6: nop                 ; FF
0BF7: dec x               ; 55
0BF8: nop                 ; D5
0BF9: nop                 ; FE
0BFA: nop                 ; FF
0BFB: nop                 ; FF
0BFC: nop                 ; FF
0BFD: nop                 ; FF
0BFE: cmp y, $75          ; 5F 75
0C00: sub x, $00          ; 41 00
0C02: nop                 ; 00
0C03: jmp.z $EEDD         ; A8 DD EE
0C06: cmp a, y            ; 5B
0C07: nop                 ; F7
0C08: not w               ; 7D
0C09: push z              ; 03
0C0A: nop                 ; 00
0C0B: jmp.eq $0554        ; A4 54 05
0C0E: nop                 ; 00
0C0F: nop                 ; 00
0C10: nop                 ; 00
0C11: nop                 ; 00
0C12: nop                 ; 00
0C13: nop                 ; 00
0C14: nop                 ; 00
0C15: nop                 ; 00
0C16: nop                 ; 00
0C17: nop                 ; 00
0C18: nop                 ; 00
0C19: nop                 ; 00
0C1A: nop                 ; 00
0C1B: nop                 ; 00
0C1C: nop                 ; 00
0C1D: nop                 ; FC
0C1E: nop                 ; FF
0C1F: int $7A             ; AA 7A
0C21: nop                 ; FF
0C22: nop                 ; FF
0C23: nop                 ; FF
0C24: nop                 ; FF
0C25: nop                 ; FF
0C26: nop                 ; BF
0C27: nop                 ; F2
0C28: load.xy z           ; 15
0C29: sub a, $88          ; 45 88
0C2B: nop                 ; F0
0C2C: nop                 ; F6
0C2D: nop                 ; BB
0C2E: nop                 ; ED
0C2F: cmp a, w            ; 5D
0C30: nop                 ; D7
0C31: push y              ; 02
0C32: nop                 ; 00
0C33: mul a, z            ; 48
0C34: dec x               ; 55
0C35: inc x               ; 50
0C36: nop                 ; 00
0C37: nop                 ; 00
0C38: nop                 ; 00
0C39: nop                 ; 00
0C3A: nop                 ; 00
0C3B: nop                 ; 00
0C3C: nop                 ; 00
0C3D: nop                 ; 00
0C3E: nop                 ; 00
0C3F: nop                 ; 00
0C40: nop                 ; 00
0C41: nop                 ; 00
0C42: nop                 ; 00
0C43: nop                 ; 00
0C44: nop                 ; 00
0C45: nop                 ; FC
0C46: nop                 ; FF
0C47: int $D6             ; AA D6
0C49: nop                 ; F7
0C4A: nop                 ; FF
0C4B: nop                 ; FF
0C4C: nop                 ; FF
0C4D: nop                 ; FF
0C4E: dec z               ; 57
0C4F: nop                 ; F5
0C50: inc y               ; 51
0C51: nop                 ; 00
0C52: nop                 ; 00
0C53: xor a, y            ; 80
0C54: nop                 ; DF
0C55: not a               ; 7E
0C56: or z, $F7           ; 77 F7
0C58: nop                 ; BA
0C59: push.r              ; 07
0C5A: nop                 ; 00
0C5B: inc x               ; 50
0C5C: rol x               ; 92
0C5D: jmp.neq $12AD       ; A5 AD 12
0C60: nop                 ; 00
0C61: nop                 ; 00
0C62: nop                 ; 00
0C63: nop                 ; 00
0C64: nop                 ; 00
0C65: nop                 ; 00
0C66: nop                 ; 00
0C67: nop                 ; 00
0C68: nop                 ; 00
0C69: nop                 ; 00
0C6A: nop                 ; 00
0C6B: nop                 ; 00
0C6C: nop                 ; 00
0C6D: nop                 ; FC
0C6E: nop                 ; FF
0C6F: nop                 ; BD
0C70: nop                 ; FB
0C71: nop                 ; FF
0C72: nop                 ; FF
0C73: nop                 ; FF
0C74: nop                 ; FF
0C75: nop                 ; FF
0C76: clc                 ; AD
0C77: nop                 ; F4
0C78: push a              ; 05
0C79: mul a, w            ; 49
0C7A: return              ; 20
0C7B: cmp w, $7B          ; 61 7B
0C7D: nop                 ; D7
0C7E: nop                 ; DA
0C7F: clc                 ; AD
0C80: nop                 ; ED
0C81: pop z               ; 0A
0C82: nop                 ; 00
0C83: jmp.z $2255         ; A8 55 22
0C86: inc z               ; 52
0C87: mul a, a            ; 4A
0C88: load.xy z           ; 15
0C89: nop                 ; 00
0C8A: nop                 ; 00
0C8B: nop                 ; 00
0C8C: nop                 ; 00
0C8D: nop                 ; 00
0C8E: nop                 ; 00
0C8F: nop                 ; 00
0C90: nop                 ; 00
0C91: nop                 ; 00
0C92: nop                 ; 00
0C93: nop                 ; 00
0C94: nop                 ; 00
0C95: nop                 ; FC
0C96: nop                 ; FF
0C97: nop                 ; EB
0C98: nop                 ; EE
0C99: nop                 ; FE
0C9A: nop                 ; FF
0C9B: nop                 ; FF
0C9C: nop                 ; FF
0C9D: xor a, x            ; 7F
0C9E: dec x               ; 55
0C9F: nop                 ; F5
0CA0: add a, y            ; 29
0CA1: xor a, y            ; 80
0CA2: push y              ; 02
0CA3: push w              ; 04
0CA4: nop                 ; DE
0CA5: nop                 ; B5
0CA6: xor a, x            ; 7F
0CA7: cmp a, y            ; 5B
0CA8: nop                 ; B7
0CA9: push.r              ; 07
0CAA: nop                 ; 00
0CAB: cmp z, $AB          ; 60 AB
0CAD: nop                 ; CA
0CAE: int $52             ; AA 52
0CB0: nop                 ; 00
0CB1: nop                 ; 00
0CB2: nop                 ; 00
0CB3: nop                 ; 00
0CB4: nop                 ; 00
0CB5: nop                 ; 00
0CB6: nop                 ; 00
0CB7: nop                 ; 00
0CB8: nop                 ; 00
0CB9: nop                 ; 00
0CBA: nop                 ; 00
0CBB: nop                 ; 00
0CBC: nop                 ; 00
0CBD: nop                 ; FC
0CBE: nop                 ; FF
0CBF: nop                 ; BD
0CC0: nop                 ; FF
0CC1: nop                 ; FF
0CC2: nop                 ; FF
0CC3: nop                 ; FF
0CC4: nop                 ; FF
0CC5: nop                 ; BF
0CC6: add a, z            ; 2A
0CC7: nop                 ; F9
0CC8: load w, $9004       ; 12 04 90
0CCB: nop                 ; 00
0CCC: or x, $EF           ; 75 EF
0CCE: nop                 ; EA
0CCF: and y, $49          ; 6D 49
0CD1: pop x               ; 08
0CD2: nop                 ; 00
0CD3: nop                 ; B0
0CD4: clc                 ; AD
0CD5: push w              ; 04
0CD6: jmp.neq $0504       ; A5 04 05
0CD9: nop                 ; 00
0CDA: nop                 ; 00
0CDB: nop                 ; 00
0CDC: nop                 ; 00
0CDD: nop                 ; 00
0CDE: nop                 ; 00
0CDF: nop                 ; 00
0CE0: nop                 ; 00
0CE1: nop                 ; 00
0CE2: nop                 ; 00
0CE3: nop                 ; 00
0CE4: nop                 ; 00
0CE5: nop                 ; FC
0CE6: nop                 ; FF
0CE7: nop                 ; EB
0CE8: nop                 ; FF
0CE9: nop                 ; FF
0CEA: nop                 ; FF
0CEB: nop                 ; FF
0CEC: nop                 ; FF
0CED: nop                 ; AF
0CEE: mul a, a            ; 4A
0CEF: nop                 ; F2
0CF0: jmp.neq $0520       ; A5 20 05
0CF3: set y, $D4          ; 22 D4
0CF5: int $BF             ; AA BF
0CF7: nop                 ; B6
0CF8: load w, $0215       ; 12 15 02
0CFB: cmp z, $BF          ; 60 BF
0CFD: int $94             ; AA 94
0CFF: store $0800, w      ; 1A 00 08
0D02: nop                 ; 00
0D03: nop                 ; 00
0D04: nop                 ; 00
0D05: nop                 ; 00
0D06: nop                 ; 00
0D07: nop                 ; 00
0D08: nop                 ; 00
0D09: nop                 ; 00
0D0A: nop                 ; 00
0D0B: nop                 ; 00
0D0C: nop                 ; 00
0D0D: nop                 ; FC
0D0E: nop                 ; FF
0D0F: nop                 ; FD
0D10: nop                 ; FD
0D11: nop                 ; FF
0D12: nop                 ; FF
0D13: nop                 ; FF
0D14: nop                 ; FF
0D15: jmp.lt $F492        ; A7 92 F4
0D18: mul a, z            ; 48
0D19: nop                 ; 00
0D1A: return              ; 20
0D1B: pop x               ; 08
0D1C: and a, x            ; 68
0D1D: nop                 ; DF
0D1E: and a, z            ; 6A
0D1F: resume              ; AB
0D20: nop                 ; C8
0D21: store $A000, w      ; 1A 00 A0
0D24: jmp.neq $5520       ; A5 20 55
0D27: add a, y            ; 29
0D28: nop                 ; 00
0D29: nop                 ; 00
0D2A: nop                 ; 00
0D2B: nop                 ; 00
0D2C: nop                 ; 00
0D2D: nop                 ; 00
0D2E: nop                 ; 00
0D2F: nop                 ; 00
0D30: nop                 ; 00
0D31: nop                 ; 00
0D32: nop                 ; 00
0D33: nop                 ; 00
0D34: nop                 ; 00
0D35: nop                 ; FC
0D36: nop                 ; FF
0D37: nop                 ; BF
0D38: nop                 ; FF
0D39: nop                 ; FF
0D3A: nop                 ; FF
0D3B: nop                 ; FF
0D3C: nop                 ; FF
0D3D: load x, $F224       ; 0F 24 F2
0D40: rol y               ; 93
0D41: pop z               ; 0A
0D42: sub w, $02          ; 44 02
0D44: nop                 ; C1
0D45: nop                 ; BB
0D46: nop                 ; DB
0D47: nop                 ; BA
0D48: or a, y             ; 72
0D49: add z, $00          ; 2F 00
0D4B: nop                 ; C0
0D4C: mul a, a            ; 4A
0D4D: cmp a, x            ; 5A
0D4E: add y, $A5          ; 2E A5
0D50: dec x               ; 55
0D51: nop                 ; 00
0D52: nop                 ; 00
0D53: nop                 ; 00
0D54: nop                 ; 00
0D55: nop                 ; 00
0D56: nop                 ; 00
0D57: nop                 ; 00
0D58: nop                 ; 00
0D59: nop                 ; 00
0D5A: nop                 ; 00
0D5B: nop                 ; 00
0D5C: nop                 ; 00
0D5D: nop                 ; FC
0D5E: nop                 ; FF
0D5F: nop                 ; F5
0D60: nop                 ; FF
0D61: nop                 ; FF
0D62: nop                 ; FF
0D63: nop                 ; FF
0D64: cmp y, $A5          ; 5F A5
0D66: rol x               ; 92
0D67: nop                 ; F8
0D68: pop x               ; 08
0D69: sub x, $02          ; 41 02
0D6B: load z, $ED48       ; 11 48 ED
0D6E: nop                 ; B6
0D6F: and y, $4D          ; 6D 4D
0D71: adc a, w            ; 35
0D72: nop                 ; 00
0D73: nop                 ; 00
0D74: and a, y            ; 69
0D75: nop                 ; EB
0D76: nop                 ; BA
0D77: mul a, a            ; 4A
0D78: pop z               ; 0A
0D79: nop                 ; 00
0D7A: nop                 ; 00
0D7B: nop                 ; 00
0D7C: nop                 ; 00
0D7D: nop                 ; 00
0D7E: nop                 ; 00
0D7F: nop                 ; 00
0D80: nop                 ; 00
0D81: nop                 ; 00
0D82: nop                 ; 00
0D83: nop                 ; 00
0D84: nop                 ; 00
0D85: nop                 ; FC
0D86: nop                 ; FF
0D87: nop                 ; EF
0D88: nop                 ; FF
0D89: nop                 ; FF
0D8A: nop                 ; FF
0D8B: nop                 ; FF
0D8C: nop                 ; F7
0D8D: pop w               ; 0B
0D8E: set w, $F2          ; 24 F2
0D90: jmp $2814, w        ; A2 14 28
0D93: sub a, w            ; 40
0D94: load y, $6D5A       ; 10 5A 6D
0D97: dec x               ; 55
0D98: cmp a, y            ; 5B
0D99: cmp y, $00          ; 5F 00
0D9B: xor a, y            ; 80
0D9C: nop                 ; DA
0D9D: nop                 ; BD
0D9E: and y, $A9          ; 6D A9
0DA0: int $00             ; AA 00
0DA2: nop                 ; 00
0DA3: nop                 ; 00
0DA4: nop                 ; 00
0DA5: nop                 ; 00
0DA6: nop                 ; 00
0DA7: nop                 ; 00
0DA8: nop                 ; 00
0DA9: nop                 ; 00
0DAA: nop                 ; 00
0DAB: nop                 ; 00
0DAC: nop                 ; 00
0DAD: nop                 ; FC
0DAE: nop                 ; FF
0DAF: nop                 ; BD
0DB0: nop                 ; FD
0DB1: nop                 ; FF
0DB2: nop                 ; EF
0DB3: clc                 ; AD
0DB4: cmp a, x            ; 5A
0DB5: int $92             ; AA 92
0DB7: nop                 ; F4
0DB8: pop z               ; 0A
0DB9: sub a, w            ; 40
0DBA: nop                 ; 00
0DBB: push w              ; 04
0DBC: sub x, $F5          ; 41 F5
0DBE: nop                 ; F7
0DBF: nop                 ; D7
0DC0: nop                 ; B6
0DC1: dec x               ; 55
0DC2: nop                 ; 00
0DC3: nop                 ; 00
0DC4: and w, $AB          ; 6F AB
0DC6: nop                 ; BA
0DC7: add a, z            ; 2A
0DC8: inc y               ; 51
0DC9: nop                 ; 00
0DCA: nop                 ; 00
0DCB: nop                 ; 00
0DCC: nop                 ; 00
0DCD: nop                 ; 00
0DCE: nop                 ; 00
0DCF: nop                 ; 00
0DD0: nop                 ; 00
0DD1: nop                 ; 00
0DD2: nop                 ; 00
0DD3: nop                 ; 00
0DD4: nop                 ; 00
0DD5: nop                 ; FC
0DD6: nop                 ; FF
0DD7: nop                 ; F7
0DD8: nop                 ; B7
0DD9: not w               ; 7D
0DDA: not y               ; 7B
0DDB: nop                 ; FB
0DDC: nop                 ; AF
0DDD: push a              ; 05
0DDE: nop                 ; 00
0DDF: nop                 ; F1
0DE0: inc y               ; 51
0DE1: rol x               ; 92
0DE2: push w              ; 04
0DE3: set x, $04          ; 21 04
0DE5: load.xy a           ; 14
0DE6: nop                 ; BD
0DE7: cmp a, x            ; 5A
0DE8: dec x               ; 55
0DE9: cmp y, $00          ; 5F 00
0DEB: nop                 ; 00
0DEC: nop                 ; DA
0DED: and a, w            ; 6B
0DEE: nop                 ; E7
0DEF: jmp.eq $02AA        ; A4 AA 02
0DF2: nop                 ; 00
0DF3: nop                 ; 00
0DF4: nop                 ; 00
0DF5: nop                 ; 00
0DF6: nop                 ; 00
0DF7: nop                 ; 00
0DF8: nop                 ; 00
0DF9: nop                 ; 00
0DFA: nop                 ; 00
0DFB: nop                 ; 00
0DFC: nop                 ; 00
0DFD: nop                 ; FC
0DFE: nop                 ; FF
0DFF: nop                 ; DD
0E00: nop                 ; FE
0E01: nop                 ; EF
0E02: nop                 ; AF
0E03: clc                 ; AD
0E04: inc a               ; 54
0E05: rol x               ; 92
0E06: mul a, a            ; 4A
0E07: nop                 ; FC
0E08: push w              ; 04
0E09: pop x               ; 08
0E0A: set y, $08          ; 22 08
0E0C: return              ; 20
0E0D: nop                 ; D1
0E0E: nop                 ; D7
0E0F: clc                 ; AD
0E10: nop                 ; FA
0E11: nop                 ; B5
0E12: nop                 ; 00
0E13: nop                 ; 00
0E14: not w               ; 7D
0E15: clc                 ; AD
0E16: nop                 ; D5
0E17: int $24             ; AA 24
0E19: push x              ; 01
0E1A: nop                 ; 00
0E1B: nop                 ; 00
0E1C: nop                 ; 00
0E1D: nop                 ; 00
0E1E: nop                 ; 00
0E1F: nop                 ; 00
0E20: nop                 ; 00
0E21: nop                 ; 00
0E22: nop                 ; 00
0E23: nop                 ; 00
0E24: nop                 ; 00
0E25: nop                 ; FC
0E26: nop                 ; FF
0E27: nop                 ; B7
0E28: cmp a, y            ; 5B
0E29: nop                 ; FB
0E2A: nop                 ; DA
0E2B: dec y               ; 56
0E2C: resume              ; AB
0E2D: push a              ; 05
0E2E: load y, $11F1       ; 10 F1 11
0E31: int $88             ; AA 88
0E33: xor a, w            ; 82
0E34: pop z               ; 0A
0E35: load w, $AB7E       ; 12 7E AB
0E38: dec y               ; 56
0E39: nop                 ; AF
0E3A: push x              ; 01
0E3B: nop                 ; 00
0E3C: nop                 ; D4
0E3D: and w, $BD          ; 6F BD
0E3F: add a, z            ; 2A
0E40: dec x               ; 55
0E41: nop                 ; 00
0E42: nop                 ; 00
0E43: nop                 ; 00
0E44: nop                 ; 00
0E45: nop                 ; 00
0E46: nop                 ; 00
0E47: nop                 ; 00
0E48: nop                 ; 00
0E49: nop                 ; 00
0E4A: nop                 ; 00
0E4B: nop                 ; 00
0E4C: nop                 ; 00
0E4D: nop                 ; FC
0E4E: nop                 ; FF
0E4F: nop                 ; DD
0E50: nop                 ; EE
0E51: clc                 ; AD
0E52: and w, $A9          ; 6F A9
0E54: inc a               ; 54
0E55: set y, $81          ; 22 81
0E57: nop                 ; F4
0E58: sub w, $05          ; 44 05
0E5A: set y, $28          ; 22 28
0E5C: return              ; 20
0E5D: nop                 ; E8
0E5E: nop                 ; FB
0E5F: nop                 ; D5
0E60: nop                 ; FB
0E61: inc z               ; 52
0E62: nop                 ; 00
0E63: nop                 ; 00
0E64: or a, w             ; 74
0E65: clc                 ; AD
0E66: push y              ; 02
0E67: mul a, w            ; 49
0E68: dec x               ; 55
0E69: nop                 ; 00
0E6A: nop                 ; 00
0E6B: nop                 ; 00
0E6C: nop                 ; 00
0E6D: nop                 ; 00
0E6E: nop                 ; 00
0E6F: nop                 ; 00
0E70: nop                 ; 00
0E71: nop                 ; 00
0E72: nop                 ; 00
0E73: nop                 ; 00
0E74: nop                 ; 00
0E75: nop                 ; FC
0E76: nop                 ; FF
0E77: and a, z            ; 6A
0E78: cmp a, y            ; 5B
0E79: nop                 ; FB
0E7A: nop                 ; DA
0E7B: mul a, a            ; 4A
0E7C: dec x               ; 55
0E7D: pop y               ; 09
0E7E: load w, $1170       ; 12 70 11
0E81: int $94             ; AA 94
0E83: push y              ; 02
0E84: mul a, w            ; 49
0E85: push x              ; 01
0E86: clc                 ; AD
0E87: nop                 ; BA
0E88: dec y               ; 56
0E89: load x, $0000       ; 0F 00 00
0E8C: nop                 ; D0
0E8D: store $5454, x      ; 17 54 54
0E90: nop                 ; 00
0E91: nop                 ; 00
0E92: nop                 ; 00
0E93: nop                 ; 00
0E94: nop                 ; 00
0E95: nop                 ; 00
0E96: nop                 ; 00
0E97: nop                 ; 00
0E98: nop                 ; 00
0E99: nop                 ; 00
0E9A: nop                 ; 00
0E9B: nop                 ; 00
0E9C: nop                 ; 00
0E9D: nop                 ; FC
0E9E: nop                 ; FF
0E9F: nop                 ; DB
0EA0: nop                 ; EA
0EA1: clc                 ; AD
0EA2: and y, $93          ; 6D 93
0EA4: shr w, $04          ; 90 04
0EA6: nop                 ; 00
0EA7: load.xy z           ; 15
0EA8: xor y, $82          ; 84 82
0EAA: cmp a, $A8          ; 62 A8
0EAC: push w              ; 04
0EAD: nop                 ; C4
0EAE: cmp a, x            ; 5A
0EAF: nop                 ; EF
0EB0: nop                 ; DB
0EB1: push x              ; 01
0EB2: nop                 ; 00
0EB3: nop                 ; 00
0EB4: and a, x            ; 68
0EB5: mul a, w            ; 49
0EB6: shr a, $A8          ; 91 A8
0EB8: nop                 ; 00
0EB9: nop                 ; 00
0EBA: nop                 ; 00
0EBB: nop                 ; 00
0EBC: nop                 ; 00
0EBD: nop                 ; 00
0EBE: nop                 ; 00
0EBF: nop                 ; 00
0EC0: nop                 ; 00
0EC1: nop                 ; 00
0EC2: nop                 ; 00
0EC3: nop                 ; 00
0EC4: nop                 ; 00
0EC5: nop                 ; FC
0EC6: nop                 ; FF
0EC7: int $5D             ; AA 5D
0EC9: cmp a, y            ; 5B
0ECA: cmp a, y            ; 5B
0ECB: add x, $45          ; 2D 45
0ECD: int $44             ; AA 44
0ECF: xor a, y            ; 80
0ED0: load y, $D429       ; 10 29 D4
0ED3: load a, $1151       ; 13 51 11
0ED6: nop                 ; D6
0ED7: nop                 ; BB
0ED8: or a, w             ; 74
0ED9: nop                 ; 00
0EDA: nop                 ; 00
0EDB: nop                 ; 00
0EDC: inc x               ; 50
0EDD: int $56             ; AA 56
0EDF: set y, $15          ; 22 15
0EE1: nop                 ; 00
0EE2: nop                 ; 00
0EE3: nop                 ; 00
0EE4: nop                 ; 00
0EE5: nop                 ; 00
0EE6: nop                 ; 00
0EE7: nop                 ; 00
0EE8: nop                 ; 00
0EE9: nop                 ; 00
0EEA: nop                 ; 00
0EEB: nop                 ; 00
0EEC: nop                 ; 00
0EED: nop                 ; FC
0EEE: nop                 ; FF
0EEF: nop                 ; B5
0EF0: dec y               ; 56
0EF1: dec x               ; 55
0EF2: dec x               ; 55
0EF3: rol w               ; 95
0EF4: load y, $0001       ; 10 01 00
0EF7: mul a, z            ; 48
0EF8: sub w, $A2          ; 44 A2
0EFA: nop                 ; EA
0EFB: mul x, $04          ; 4B 04
0EFD: xor y, $7A          ; 84 7A
0EFF: and y, $0B          ; 6D 0B
0F01: nop                 ; 00
0F02: sub a, w            ; 40
0F03: nop                 ; 00
0F04: nop                 ; B0
0F05: int $95             ; AA 95
0F07: mul a, a            ; 4A
0F08: load.xy z           ; 15
0F09: nop                 ; 00
0F0A: nop                 ; 00
0F0B: nop                 ; 00
0F0C: nop                 ; 00
0F0D: nop                 ; 00
0F0E: nop                 ; 00
0F0F: nop                 ; 00
0F10: nop                 ; 00
0F11: nop                 ; 00
0F12: nop                 ; 00
0F13: nop                 ; 00
0F14: nop                 ; 00
0F15: nop                 ; FC
0F16: nop                 ; FF
0F17: clc                 ; AD
0F18: nop                 ; D5
0F19: int $AA             ; AA AA
0F1B: and a, z            ; 6A
0F1C: sub w, $54          ; 44 54
0F1E: load z, $9102       ; 11 02 91
0F21: rol z               ; 94
0F22: nop                 ; D4
0F23: dec z               ; 57
0F24: dec x               ; 55
0F25: add a, y            ; 29
0F26: nop                 ; D4
0F27: nop                 ; FF
0F28: push x              ; 01
0F29: nop                 ; 00
0F2A: push y              ; 02
0F2B: nop                 ; 00
0F2C: jmp $BD55, y        ; A0 55 BD
0F2F: load y, $0025       ; 10 25 00
0F32: nop                 ; 00
0F33: nop                 ; 00
0F34: nop                 ; 00
0F35: nop                 ; 00
0F36: nop                 ; 00
0F37: nop                 ; 00
0F38: nop                 ; 00
0F39: nop                 ; 00
0F3A: nop                 ; 00
0F3B: nop                 ; 00
0F3C: nop                 ; 00
0F3D: nop                 ; FC
0F3E: nop                 ; FF
0F3F: dec x               ; 55
0F40: clc                 ; AD
0F41: int $AA             ; AA AA
0F43: int $02             ; AA 02
0F45: push x              ; 01
0F46: sub w, $11          ; 44 11
0F48: sub w, $52          ; 44 52
0F4A: nop                 ; F5
0F4B: nop                 ; AF
0F4C: inc a               ; 54
0F4D: xor a, w            ; 82
0F4E: inc x               ; 50
0F4F: nop                 ; BD
0F50: nop                 ; 00
0F51: load y, $0000       ; 10 00 00
0F54: jmp $2BBA, y        ; A0 BA 2B
0F57: mul a, a            ; 4A
0F58: load w, $0000       ; 12 00 00
0F5B: nop                 ; 00
0F5C: nop                 ; 00
0F5D: nop                 ; 00
0F5E: nop                 ; 00
0F5F: nop                 ; 00
0F60: nop                 ; 00
0F61: nop                 ; 00
0F62: nop                 ; 00
0F63: nop                 ; 00
0F64: nop                 ; 00
0F65: nop                 ; FC
0F66: nop                 ; FF
0F67: int $6A             ; AA 6A
0F69: dec x               ; 55
0F6A: dec x               ; 55
0F6B: set a, $21          ; 25 21
0F6D: inc a               ; 54
0F6E: pop y               ; 09
0F6F: xor y, $28          ; 84 28
0F71: mul a, w            ; 49
0F72: nop                 ; EA
0F73: cmp y, $53          ; 5F 53
0F75: add a, y            ; 29
0F76: nop                 ; C2
0F77: nop                 ; FE
0F78: push.r              ; 07
0F79: nop                 ; 00
0F7A: nop                 ; 00
0F7B: nop                 ; 00
0F7C: sub a, w            ; 40
0F7D: nop                 ; D7
0F7E: nop                 ; D6
0F7F: rol x               ; 92
0F80: nop                 ; 00
0F81: nop                 ; 00
0F82: push w              ; 04
0F83: nop                 ; 00
0F84: nop                 ; 00
0F85: nop                 ; 00
0F86: nop                 ; 00
0F87: nop                 ; 00
0F88: nop                 ; 00
0F89: nop                 ; 00
0F8A: nop                 ; 00
0F8B: nop                 ; 00
0F8C: nop                 ; 00
0F8D: nop                 ; FC
0F8E: nop                 ; FF
0F8F: and a, z            ; 6A
0F90: rol w               ; 95
0F91: int $AA             ; AA AA
0F93: int $0A             ; AA 0A
0F95: inc x               ; 50
0F96: set w, $51          ; 24 51
0F98: sub y, $55          ; 42 55
0F9A: nop                 ; F5
0F9B: nop                 ; FF
0F9C: sec                 ; AC
0F9D: mul a, a            ; 4A
0F9E: mul a, w            ; 49
0F9F: nop                 ; FD
0FA0: sub a, $04          ; 45 04
0FA2: nop                 ; 00
0FA3: pop x               ; 08
0FA4: nop                 ; C0
0FA5: nop                 ; B5
0FA6: not x               ; 7A
0FA7: set w, $A4          ; 24 A4
0FA9: int $05             ; AA 05
0FAB: nop                 ; 00
0FAC: nop                 ; 00
0FAD: nop                 ; 00
0FAE: nop                 ; 00
0FAF: nop                 ; 00
0FB0: nop                 ; 00
0FB1: nop                 ; 00
0FB2: nop                 ; 00
0FB3: nop                 ; 00
0FB4: nop                 ; 00
0FB5: nop                 ; FC
0FB6: nop                 ; FF
0FB7: rol w               ; 95
0FB8: and a, z            ; 6A
0FB9: dec x               ; 55
0FBA: mul a, w            ; 49
0FBB: rol x               ; 92
0FBC: push w              ; 04
0FBD: push y              ; 02
0FBE: push x              ; 01
0FBF: xor y, $54          ; 84 54
0FC1: dec x               ; 55
0FC2: nop                 ; ED
0FC3: nop                 ; FF
0FC4: dec z               ; 57
0FC5: dec x               ; 55
0FC6: rol x               ; 92
0FC7: nop                 ; EA
0FC8: call $1000          ; 1F 00 10
0FCB: nop                 ; 00
0FCC: xor a, y            ; 80
0FCD: nop                 ; AE
0FCE: clc                 ; AD
0FCF: mul a, w            ; 49
0FD0: inc y               ; 51
0FD1: add a, y            ; 29
0FD2: load.xy a           ; 14
0FD3: nop                 ; 00
0FD4: nop                 ; 00
0FD5: nop                 ; 00
0FD6: nop                 ; 00
0FD7: nop                 ; 00
0FD8: nop                 ; 00
0FD9: nop                 ; 00
0FDA: nop                 ; 00
0FDB: nop                 ; 00
0FDC: nop                 ; 00
0FDD: nop                 ; FC
0FDE: nop                 ; FF
0FDF: and a, z            ; 6A
0FE0: rol w               ; 95
0FE1: int $AA             ; AA AA
0FE3: int $4A             ; AA 4A
0FE5: sub a, w            ; 40
0FE6: return              ; 20
0FE7: inc x               ; 50
0FE8: add a, z            ; 2A
0FE9: dec x               ; 55
0FEA: nop                 ; FB
0FEB: nop                 ; FF
0FEC: nop                 ; BB
0FED: int $04             ; AA 04
0FEF: nop                 ; F4
0FF0: add z, $00          ; 2F 00
0FF2: xor a, w            ; 82
0FF3: nop                 ; 00
0FF4: nop                 ; 00
0FF5: nop                 ; EB
0FF6: nop                 ; D6
0FF7: rol x               ; 92
0FF8: sub w, $4A          ; 44 4A
0FFA: load.xy z           ; 15
0FFB: nop                 ; 00
0FFC: nop                 ; 00
0FFD: nop                 ; 00
0FFE: nop                 ; 00
0FFF: nop                 ; 00
1000: nop                 ; 00
1001: nop                 ; 00
1002: nop                 ; 00
1003: nop                 ; 00
1004: nop                 ; 00
1005: nop                 ; FC
1006: nop                 ; FF
1007: rol w               ; 95
1008: int $AA             ; AA AA
100A: set w, $49          ; 24 49
100C: rol w               ; 95
100D: store $8508, w      ; 1A 08 85
1010: nop                 ; CA
1011: int $F6             ; AA F6
1013: nop                 ; FF
1014: nop                 ; EF
1015: resume              ; AB
1016: clc                 ; AD
1017: shl x, $FF          ; 88 FF
1019: return              ; 20
101A: nop                 ; 00
101B: nop                 ; 00
101C: nop                 ; 00
101D: jmp x, y            ; 9D
101E: nop                 ; B5
101F: mul a, a            ; 4A
1020: load w, $0029       ; 12 29 00
1023: nop                 ; 00
1024: nop                 ; 00
1025: nop                 ; 00
1026: nop                 ; 00
1027: nop                 ; 00
1028: nop                 ; 00
1029: nop                 ; 00
102A: nop                 ; 00
102B: nop                 ; 00
102C: nop                 ; 00
102D: nop                 ; FC
102E: nop                 ; FF
102F: int $AA             ; AA AA
1031: mul a, a            ; 4A
1032: dec x               ; 55
1033: dec x               ; 55
1034: inc z               ; 52
1035: jmp.neq $5044       ; A5 44 50
1038: add a, y            ; 29
1039: nop                 ; F5
103A: nop                 ; FD
103B: nop                 ; FF
103C: nop                 ; FF
103D: nop                 ; FE
103E: add z, $AA          ; 2F AA
1040: nop                 ; BE
1041: push x              ; 01
1042: nop                 ; 00
1043: nop                 ; 00
1044: nop                 ; 00
1045: nop                 ; D6
1046: and z, $15          ; 6E 15
1048: mul a, w            ; 49
1049: jmp.neq $0000       ; A5 00 00
104C: nop                 ; 00
104D: nop                 ; 00
104E: nop                 ; 00
104F: nop                 ; 00
1050: nop                 ; 00
1051: nop                 ; 00
1052: nop                 ; 00
1053: nop                 ; 00
1054: nop                 ; 00
1055: nop                 ; FC
1056: nop                 ; FF
1057: int $52             ; AA 52
1059: add a, z            ; 2A
105A: dec x               ; 55
105B: jmp.neq $54AA       ; A5 AA 54
105E: load z, $D525       ; 11 25 D5
1061: cmp a, x            ; 5A
1062: nop                 ; FF
1063: nop                 ; FF
1064: nop                 ; FF
1065: nop                 ; FF
1066: jmp $7D10, x        ; 9F 10 7D
1069: xor a, $00          ; 87 00
106B: sub a, w            ; 40
106C: nop                 ; 00
106D: cmp a, z            ; 5C
106E: nop                 ; B5
106F: cmpbit y, $12       ; 64 12
1071: inc a               ; 54
1072: and a, z            ; 6A
1073: push x              ; 01
1074: nop                 ; 00
1075: nop                 ; 00
1076: nop                 ; 00
1077: nop                 ; 00
1078: nop                 ; 00
1079: nop                 ; 00
107A: nop                 ; 00
107B: nop                 ; 00
107C: nop                 ; 00
107D: nop                 ; FC
107E: nop                 ; FF
107F: rol x               ; 92
1080: inc a               ; 54
1081: jmp.nz $5492        ; A9 92 54
1084: rol w               ; 95
1085: int $4A             ; AA 4A
1087: mul a, a            ; 4A
1088: dec x               ; 55
1089: nop                 ; EF
108A: nop                 ; FF
108B: nop                 ; FF
108C: nop                 ; FF
108D: nop                 ; FF
108E: xor a, x            ; 7F
108F: jmp $05FC, w        ; A2 FC 05
1092: nop                 ; 00
1093: push x              ; 01
1094: nop                 ; 00
1095: nop                 ; B6
1096: shr x, $92          ; 8D 92
1098: sub w, $40          ; 44 40
109A: set x, $01          ; 21 01
109C: nop                 ; 00
109D: nop                 ; 00
109E: nop                 ; 00
109F: nop                 ; 00
10A0: nop                 ; 00
10A1: nop                 ; 00
10A2: nop                 ; 00
10A3: nop                 ; 00
10A4: nop                 ; 00
10A5: nop                 ; FC
10A6: nop                 ; FF
10A7: dec x               ; 55
10A8: rol w               ; 95
10A9: int $AA             ; AA AA
10AB: add a, z            ; 2A
10AC: jmp.nz $2AAA        ; A9 AA 2A
10AF: inc y               ; 51
10B0: nop                 ; D5
10B1: nop                 ; BA
10B2: nop                 ; FF
10B3: nop                 ; FF
10B4: nop                 ; FF
10B5: nop                 ; FF
10B6: nop                 ; FF
10B7: pop y               ; 09
10B8: nop                 ; F1
10B9: add z, $04          ; 2F 04
10BB: nop                 ; 00
10BC: nop                 ; 00
10BD: and x, $2B          ; 6C 2B
10BF: inc a               ; 54
10C0: shr a, $08          ; 91 08
10C2: shl z, $00          ; 8A 00
10C4: nop                 ; 00
10C5: nop                 ; 00
10C6: nop                 ; 00
10C7: nop                 ; 00
10C8: nop                 ; 00
10C9: nop                 ; 00
10CA: nop                 ; 00
10CB: nop                 ; 00
10CC: nop                 ; 00
10CD: nop                 ; FC
10CE: nop                 ; FF
10CF: set w, $A9          ; 24 A9
10D1: int $2A             ; AA 2A
10D3: dec x               ; 55
10D4: dec x               ; 55
10D5: dec x               ; 55
10D6: nop                 ; D5
10D7: int $7A             ; AA 7A
10D9: nop                 ; FF
10DA: nop                 ; FF
10DB: nop                 ; FF
10DC: nop                 ; FF
10DD: nop                 ; FF
10DE: nop                 ; FF
10DF: sub a, $E4          ; 45 E4
10E1: store $0000, x      ; 17 00 00
10E4: nop                 ; 00
10E5: jmp.z $2296         ; A8 96 22
10E8: dec x               ; 55
10E9: nop                 ; 00
10EA: jmp.nz $0002        ; A9 02 00
10ED: nop                 ; 00
10EE: nop                 ; 00
10EF: nop                 ; 00
10F0: nop                 ; 00
10F1: nop                 ; 00
10F2: nop                 ; 00
10F3: nop                 ; 00
10F4: nop                 ; 00
10F5: nop                 ; FC
10F6: nop                 ; FF
10F7: dec x               ; 55
10F8: mul a, a            ; 4A
10F9: inc z               ; 52
10FA: int $52             ; AA 52
10FC: dec x               ; 55
10FD: dec x               ; 55
10FE: nop                 ; B5
10FF: int $D6             ; AA D6
1101: nop                 ; FF
1102: nop                 ; FF
1103: nop                 ; FF
1104: nop                 ; FF
1105: nop                 ; FF
1106: nop                 ; FF
1107: xor x, $88          ; 83 88
1109: nop                 ; BF
110A: load y, $0000       ; 10 00 00
110D: nop                 ; D0
110E: nop                 ; BA
110F: mul a, z            ; 48
1110: xor z, $00          ; 85 00
1112: set y, $01          ; 22 01
1114: nop                 ; 00
1115: nop                 ; 00
1116: nop                 ; 00
1117: nop                 ; 00
1118: nop                 ; 00
1119: nop                 ; 00
111A: nop                 ; 00
111B: nop                 ; 00
111C: nop                 ; 00
111D: nop                 ; FC
111E: nop                 ; FF
111F: mul a, w            ; 49
1120: jmp.nz $AAAA        ; A9 AA AA
1123: int $AA             ; AA AA
1125: int $D6             ; AA D6
1127: dec y               ; 56
1128: nop                 ; FB
1129: nop                 ; FF
112A: nop                 ; FF
112B: nop                 ; FF
112C: nop                 ; FF
112D: nop                 ; FF
112E: nop                 ; FF
112F: push a              ; 05
1130: sub y, $FF          ; 42 FF
1132: push x              ; 01
1133: sub a, w            ; 40
1134: nop                 ; 00
1135: inc z               ; 52
1136: load.xy z           ; 15
1137: inc z               ; 52
1138: add a, y            ; 29
1139: nop                 ; 00
113A: shl x, $00          ; 88 00
113C: nop                 ; 00
113D: nop                 ; 00
113E: nop                 ; 00
113F: nop                 ; 00
1140: nop                 ; 00
1141: nop                 ; 00
1142: nop                 ; 00
1143: nop                 ; 00
1144: nop                 ; 00
1145: nop                 ; FC
1146: nop                 ; FF
1147: add a, z            ; 2A
1148: set a, $95          ; 25 95
114A: int $AA             ; AA AA
114C: int $AA             ; AA AA
114E: nop                 ; B5
114F: nop                 ; FD
1150: nop                 ; DE
1151: nop                 ; FF
1152: nop                 ; FF
1153: nop                 ; FF
1154: nop                 ; FF
1155: nop                 ; FF
1156: nop                 ; FF
1157: set x, $04          ; 21 04
1159: not z               ; 7C
115A: push.r              ; 07
115B: nop                 ; 00
115C: nop                 ; 00
115D: jmp $44EB, y        ; A0 EB 44
1160: int $01             ; AA 01
1162: set a, $05          ; 25 05
1164: nop                 ; 00
1165: nop                 ; 00
1166: nop                 ; 00
1167: nop                 ; 00
1168: nop                 ; 00
1169: nop                 ; 00
116A: nop                 ; 00
116B: nop                 ; 00
116C: nop                 ; 00
116D: nop                 ; FC
116E: nop                 ; FF
116F: inc z               ; 52
1170: dec x               ; 55
1171: jmp.nz $4AAA        ; A9 AA 4A
1174: dec x               ; 55
1175: nop                 ; B5
1176: nop                 ; D6
1177: dec y               ; 56
1178: nop                 ; F7
1179: nop                 ; FF
117A: nop                 ; FF
117B: nop                 ; FF
117C: nop                 ; FF
117D: nop                 ; FF
117E: cmp y, $84          ; 5F 84
1180: shr w, $FA          ; 90 FA
1182: pop.f               ; 0D
1183: nop                 ; 00
1184: nop                 ; 00
1185: nop                 ; B0
1186: adc w, $92          ; 3A 92
1188: not x               ; 7A
1189: push z              ; 03
118A: shr w, $02          ; 90 02
118C: nop                 ; 00
118D: nop                 ; 00
118E: nop                 ; 00
118F: nop                 ; 00
1190: nop                 ; 00
1191: nop                 ; 00
1192: nop                 ; 00
1193: nop                 ; 00
1194: nop                 ; 00
1195: nop                 ; FC
1196: nop                 ; FF
1197: rol w               ; 95
1198: rol x               ; 92
1199: int $4A             ; AA 4A
119B: dec x               ; 55
119C: dec x               ; 55
119D: and y, $BB          ; 6D BB
119F: nop                 ; FD
11A0: nop                 ; FF
11A1: nop                 ; FF
11A2: nop                 ; FF
11A3: nop                 ; FF
11A4: nop                 ; FF
11A5: nop                 ; FF
11A6: add z, $01          ; 2F 01
11A8: adc a, x            ; 32
11A9: nop                 ; E0
11AA: adc x, $00          ; 37 00
11AC: nop                 ; 00
11AD: jmp $494B, y        ; A0 4B 49
11B0: nop                 ; D7
11B1: pop.r               ; 0E
11B2: mul a, a            ; 4A
11B3: push a              ; 05
11B4: nop                 ; 00
11B5: nop                 ; 00
11B6: nop                 ; 00
11B7: nop                 ; 00
11B8: nop                 ; 00
11B9: nop                 ; 00
11BA: nop                 ; 00
11BB: nop                 ; 00
11BC: nop                 ; 00
11BD: nop                 ; FC
11BE: nop                 ; FF
11BF: inc a               ; 54
11C0: int $52             ; AA 52
11C2: int $AA             ; AA AA
11C4: int $D5             ; AA D5
11C6: nop                 ; EE
11C7: nop                 ; FE
11C8: nop                 ; FF
11C9: nop                 ; FF
11CA: nop                 ; FF
11CB: nop                 ; FF
11CC: nop                 ; FF
11CD: nop                 ; FF
11CE: ror x               ; 97
11CF: load y, $E811       ; 10 11 E8
11D2: cmp y, $00          ; 5F 00
11D4: nop                 ; 00
11D5: int $26             ; AA 26
11D7: jmp.eq $15FD        ; A4 FD 15
11DA: nop                 ; B4
11DB: push.r              ; 07
11DC: nop                 ; 00
11DD: nop                 ; 00
11DE: nop                 ; 00
11DF: nop                 ; 00
11E0: nop                 ; 00
11E1: nop                 ; 00
11E2: nop                 ; 00
11E3: nop                 ; 00
11E4: nop                 ; 00
11E5: nop                 ; FC
11E6: nop                 ; FF
11E7: mul a, a            ; 4A
11E8: jmp.neq $5554       ; A5 54 55
11EB: dec x               ; 55
11EC: dec x               ; 55
11ED: nop                 ; BB
11EE: nop                 ; B5
11EF: nop                 ; DB
11F0: nop                 ; FF
11F1: nop                 ; FF
11F2: nop                 ; FF
11F3: nop                 ; FF
11F4: nop                 ; FF
11F5: nop                 ; FF
11F6: set a, $02          ; 25 02
11F8: xor y, $00          ; 84 00
11FA: nop                 ; FF
11FB: push x              ; 01
11FC: xor a, y            ; 80
11FD: nop                 ; D6
11FE: shl y, $5A          ; 89 5A
1200: cmp a, y            ; 5B
1201: adc x, $EC          ; 37 EC
1203: pop z               ; 0A
1204: nop                 ; 00
1205: nop                 ; 00
1206: nop                 ; 00
1207: nop                 ; 00
1208: nop                 ; 00
1209: nop                 ; 00
120A: nop                 ; 00
120B: nop                 ; 00
120C: nop                 ; 00
120D: nop                 ; FC
120E: nop                 ; FF
120F: dec x               ; 55
1210: add a, y            ; 29
1211: dec x               ; 55
1212: dec x               ; 55
1213: dec x               ; 55
1214: nop                 ; B5
1215: nop                 ; D6
1216: nop                 ; DE
1217: nop                 ; FF
1218: nop                 ; FF
1219: nop                 ; FF
121A: nop                 ; FF
121B: nop                 ; FF
121C: nop                 ; FF
121D: nop                 ; FF
121E: dec x               ; 55
121F: xor a, z            ; 81
1220: nop                 ; 00
1221: sub a, w            ; 40
1222: nop                 ; BF
1223: push y              ; 02
1224: cmp z, $3D          ; 60 3D
1226: inc z               ; 52
1227: nop                 ; EA
1228: nop                 ; ED
1229: clc                 ; AD
122A: nop                 ; B4
122B: push.f              ; 06
122C: nop                 ; 00
122D: nop                 ; 00
122E: nop                 ; 00
122F: nop                 ; 00
1230: nop                 ; 00
1231: nop                 ; 00
1232: nop                 ; 00
1233: nop                 ; 00
1234: nop                 ; 00
1235: nop                 ; FC
1236: nop                 ; FF
1237: inc z               ; 52
1238: int $4A             ; AA 4A
123A: dec x               ; 55
123B: dec x               ; 55
123C: and y, $BB          ; 6D BB
123E: nop                 ; F5
123F: nop                 ; FE
1240: nop                 ; FF
1241: nop                 ; FF
1242: nop                 ; FF
1243: nop                 ; FF
1244: nop                 ; FF
1245: xor a, x            ; 7F
1246: nop                 ; C1
1247: pop x               ; 08
1248: set a, $02          ; 25 02
124A: nop                 ; FC
124B: push.r              ; 07
124C: inc a               ; 54
124D: nop                 ; CB
124E: jmp.eq $7F75        ; A4 75 7F
1251: cmp a, y            ; 5B
1252: clc                 ; AD
1253: pop.f               ; 0D
1254: nop                 ; 00
1255: nop                 ; 00
1256: nop                 ; 00
1257: nop                 ; 00
1258: nop                 ; 00
1259: nop                 ; 00
125A: nop                 ; 00
125B: nop                 ; 00
125C: nop                 ; 00
125D: nop                 ; FC
125E: nop                 ; FF
125F: int $4A             ; AA 4A
1261: dec x               ; 55
1262: dec x               ; 55
1263: nop                 ; B5
1264: int $ED             ; AA ED
1266: nop                 ; BE
1267: nop                 ; FF
1268: nop                 ; FF
1269: nop                 ; FF
126A: nop                 ; FF
126B: nop                 ; FF
126C: nop                 ; FF
126D: nop                 ; BF
126E: nop                 ; F4
126F: push z              ; 03
1270: nop                 ; 00
1271: nop                 ; 00
1272: nop                 ; FA
1273: mul z, $EA          ; 4D EA
1275: dec x               ; 55
1276: nop                 ; DA
1277: nop                 ; DA
1278: nop                 ; D5
1279: and w, $B5          ; 6F B5
127B: pop z               ; 0A
127C: nop                 ; 00
127D: nop                 ; 00
127E: nop                 ; 00
127F: nop                 ; 00
1280: nop                 ; 00
1281: nop                 ; 00
1282: nop                 ; 00
1283: nop                 ; 00
1284: nop                 ; 00
1285: nop                 ; FC
1286: nop                 ; FF
1287: rol z               ; 94
1288: int $54             ; AA 54
128A: dec x               ; 55
128B: clc                 ; AD
128C: and y, $BB          ; 6D BB
128E: nop                 ; F7
128F: nop                 ; FF
1290: nop                 ; FF
1291: nop                 ; FF
1292: nop                 ; FF
1293: nop                 ; FF
1294: nop                 ; FE
1295: cmp y, $C1          ; 5F C1
1297: store $0085, x      ; 17 85 00
129A: nop                 ; E0
129B: cmp a, y            ; 5B
129C: inc y               ; 51
129D: dec x               ; 55
129E: nop                 ; B5
129F: or z, $FF           ; 77 FF
12A1: nop                 ; FA
12A2: nop                 ; EE
12A3: store.xy w          ; 1E
12A4: nop                 ; 00
12A5: nop                 ; 00
12A6: nop                 ; 00
12A7: nop                 ; 00
12A8: nop                 ; 00
12A9: nop                 ; 00
12AA: nop                 ; 00
12AB: nop                 ; 00
12AC: nop                 ; 00
12AD: nop                 ; FC
12AE: nop                 ; FF
12AF: dec x               ; 55
12B0: jmp.nz $AAAA        ; A9 AA AA
12B3: nop                 ; B5
12B4: nop                 ; B6
12B5: nop                 ; ED
12B6: nop                 ; FE
12B7: nop                 ; FF
12B8: nop                 ; FF
12B9: nop                 ; FF
12BA: nop                 ; FF
12BB: nop                 ; AF
12BC: nop                 ; EB
12BD: add z, $F4          ; 2F F4
12BF: push z              ; 03
12C0: return              ; 20
12C1: pop x               ; 08
12C2: nop                 ; D0
12C3: and w, $BD          ; 6F BD
12C5: xor a, y            ; 80
12C6: nop                 ; DE
12C7: nop                 ; DA
12C8: dec x               ; 55
12C9: nop                 ; AF
12CA: nop                 ; B5
12CB: push x              ; 01
12CC: nop                 ; 00
12CD: nop                 ; 00
12CE: nop                 ; 00
12CF: nop                 ; 00
12D0: nop                 ; 00
12D1: nop                 ; 00
12D2: nop                 ; 00
12D3: nop                 ; 00
12D4: nop                 ; 00
12D5: nop                 ; FC
12D6: nop                 ; FF
12D7: inc z               ; 52
12D8: rol w               ; 95
12D9: int $AA             ; AA AA
12DB: nop                 ; D6
12DC: and y, $BB          ; 6D BB
12DE: nop                 ; FD
12DF: nop                 ; FF
12E0: nop                 ; FF
12E1: nop                 ; FF
12E2: nop                 ; FF
12E3: nop                 ; FB
12E4: cmp a, x            ; 5A
12E5: mul x, $C1          ; 4B C1
12E7: push a              ; 05
12E8: load.xy z           ; 15
12E9: nop                 ; 00
12EA: nop                 ; 00
12EB: nop                 ; DF
12EC: dec z               ; 57
12ED: push y              ; 02
12EE: nop                 ; B4
12EF: or z, $FF           ; 77 FF
12F1: nop                 ; FD
12F2: cmp a, y            ; 5B
12F3: load.xy z           ; 15
12F4: nop                 ; 00
12F5: nop                 ; 00
12F6: nop                 ; 00
12F7: nop                 ; 00
12F8: nop                 ; 00
12F9: nop                 ; 00
12FA: nop                 ; 00
12FB: nop                 ; 00
12FC: nop                 ; 00
12FD: nop                 ; FC
12FE: nop                 ; FF
12FF: int $AA             ; AA AA
1301: int $6A             ; AA 6A
1303: and y, $BB          ; 6D BB
1305: nop                 ; ED
1306: nop                 ; FF
1307: nop                 ; FF
1308: nop                 ; FF
1309: nop                 ; FF
130A: xor a, x            ; 7F
130B: add x, $55          ; 2D 55
130D: set a, $E8          ; 25 E8
130F: sub z, $30          ; 43 30
1311: xor a, y            ; 80
1312: sub a, w            ; 40
1313: or x, $2D           ; 75 2D
1315: nop                 ; 00
1316: nop                 ; DA
1317: nop                 ; EA
1318: xor a, x            ; 7F
1319: dec z               ; 57
131A: dec z               ; 57
131B: push w              ; 04
131C: nop                 ; 00
131D: nop                 ; 00
131E: nop                 ; 00
131F: nop                 ; 00
1320: nop                 ; 00
1321: nop                 ; 00
1322: nop                 ; 00
1323: nop                 ; 00
1324: nop                 ; 00
1325: nop                 ; FC
1326: nop                 ; FF
1327: add a, z            ; 2A
1328: dec x               ; 55
1329: dec x               ; 55
132A: dec x               ; 55
132B: nop                 ; DB
132C: and z, $BB          ; 6E BB
132E: nop                 ; FF
132F: nop                 ; FF
1330: nop                 ; FF
1331: nop                 ; FF
1332: nop                 ; DF
1333: nop                 ; DB
1334: dec x               ; 55
1335: pop x               ; 08
1336: nop                 ; C0
1337: pop w               ; 0B
1338: rol x               ; 92
1339: load y, $DD00       ; 10 00 DD
133C: adc a, $20          ; 3B 20
133E: nop                 ; D0
133F: nop                 ; AF
1340: nop                 ; FF
1341: nop                 ; FD
1342: pop z               ; 0A
1343: add a, $00          ; 31 00
1345: nop                 ; 00
1346: nop                 ; 00
1347: nop                 ; 00
1348: nop                 ; 00
1349: nop                 ; 00
134A: nop                 ; 00
134B: nop                 ; 00
134C: nop                 ; 00
134D: nop                 ; FC
134E: nop                 ; FF
134F: int $AA             ; AA AA
1351: int $DA             ; AA DA
1353: and a, z            ; 6A
1354: nop                 ; BB
1355: nop                 ; ED
1356: nop                 ; FF
1357: nop                 ; FF
1358: nop                 ; FF
1359: nop                 ; FF
135A: or z, $55           ; 77 55
135C: pop z               ; 0A
135D: sub x, $F2          ; 41 F2
135F: nop                 ; 00
1360: push x              ; 01
1361: nop                 ; 00
1362: nop                 ; 00
1363: or a, w             ; 74
1364: add x, $08          ; 2D 08
1366: jmp $FFFA, y        ; A0 FA FF
1369: nop                 ; EF
136A: jmp.lt $001E        ; A7 1E 00
136D: nop                 ; 00
136E: nop                 ; 00
136F: nop                 ; 00
1370: nop                 ; 00
1371: nop                 ; 00
1372: nop                 ; 00
1373: nop                 ; 00
1374: nop                 ; 00
1375: nop                 ; FC
1376: nop                 ; FF
1377: int $AA             ; AA AA
1379: int $56             ; AA 56
137B: nop                 ; BD
137C: and y, $FF          ; 6D FF
137E: nop                 ; FB
137F: nop                 ; FF
1380: nop                 ; FF
1381: and w, $5D          ; 6F 5D
1383: resume              ; AB
1384: set a, $04          ; 25 04
1386: nop                 ; C0
1387: push a              ; 05
1388: sub w, $D0          ; 44 D0
138A: push w              ; 04
138B: nop                 ; D0
138C: cmp a, y            ; 5B
138D: nop                 ; 00
138E: xor y, $BF          ; 84 BF
1390: nop                 ; FF
1391: cmp y, $9D          ; 5F 9D
1393: and a, z            ; 6A
1394: nop                 ; 00
1395: nop                 ; 00
1396: nop                 ; 00
1397: nop                 ; 00
1398: nop                 ; 00
1399: nop                 ; 00
139A: nop                 ; 00
139B: nop                 ; 00
139C: nop                 ; 00
139D: nop                 ; FC
139E: nop                 ; FF
139F: int $AA             ; AA AA
13A1: int $6A             ; AA 6A
13A3: nop                 ; EB
13A4: nop                 ; B6
13A5: and y, $FF          ; 6D FF
13A7: nop                 ; FF
13A8: nop                 ; FF
13A9: nop                 ; BF
13AA: or z, $55           ; 77 55
13AC: push y              ; 02
13AD: nop                 ; 00
13AE: add a, x            ; 28
13AF: xor a, y            ; 80
13B0: nop                 ; 00
13B1: inc z               ; 52
13B2: nop                 ; 00
13B3: cmp z, $2F          ; 60 2F
13B5: nop                 ; 00
13B6: nop                 ; 00
13B7: nop                 ; FD
13B8: nop                 ; F7
13B9: nop                 ; FB
13BA: or z, $1D           ; 77 1D
13BC: nop                 ; 00
13BD: nop                 ; 00
13BE: nop                 ; 00
13BF: nop                 ; 00
13C0: nop                 ; 00
13C1: nop                 ; 00
13C2: nop                 ; 00
13C3: nop                 ; 00
13C4: nop                 ; 00
13C5: nop                 ; FC
13C6: nop                 ; FF
13C7: dec x               ; 55
13C8: dec x               ; 55
13C9: nop                 ; D5
13CA: int $AD             ; AA AD
13CC: nop                 ; ED
13CD: nop                 ; FF
13CE: nop                 ; FF
13CF: nop                 ; FF
13D0: nop                 ; FF
13D1: nop                 ; EF
13D2: int $AA             ; AA AA
13D4: shl z, $90          ; 8A 90
13D6: sub a, w            ; 40
13D7: nop                 ; 00
13D8: load w, $0350       ; 12 50 03
13DB: xor a, y            ; 80
13DC: nop                 ; FA
13DD: push y              ; 02
13DE: nop                 ; 00
13DF: or y, $FF           ; 76 FF
13E1: nop                 ; AE
13E2: cmp a, w            ; 5D
13E3: or z, $00           ; 77 00
13E5: nop                 ; 00
13E6: nop                 ; 00
13E7: nop                 ; 00
13E8: nop                 ; 00
13E9: nop                 ; 00
13EA: nop                 ; 00
13EB: nop                 ; 00
13EC: nop                 ; 00
13ED: nop                 ; FC
13EE: nop                 ; FF
13EF: int $AA             ; AA AA
13F1: int $B6             ; AA B6
13F3: or y, $B7           ; 76 B7
13F5: nop                 ; F6
13F6: nop                 ; FF
13F7: nop                 ; FF
13F8: nop                 ; BF
13F9: nop                 ; B5
13FA: int $2A             ; AA 2A
13FC: push x              ; 01
13FD: nop                 ; 00
13FE: nop                 ; 00
13FF: nop                 ; 00
1400: sub x, $68          ; 41 68
1402: push a              ; 05
1403: nop                 ; 00
1404: nop                 ; AF
1405: pop y               ; 09
1406: nop                 ; 00
1407: nop                 ; FC
1408: cmp y, $FB          ; 5F FB
140A: nop                 ; F6
140B: add a, z            ; 2A
140C: nop                 ; 00
140D: nop                 ; 00
140E: nop                 ; 00
140F: nop                 ; 00
1410: nop                 ; 00
1411: nop                 ; 00
1412: nop                 ; 00
1413: nop                 ; 00
1414: nop                 ; 00
1415: nop                 ; FC
1416: nop                 ; FF
1417: int $AA             ; AA AA
1419: int $6A             ; AA 6A
141B: nop                 ; DB
141C: nop                 ; ED
141D: nop                 ; BF
141E: nop                 ; DD
141F: nop                 ; FF
1420: or y, $AF           ; 76 AF
1422: int $AA             ; AA AA
1424: push w              ; 04
1425: push y              ; 02
1426: nop                 ; 00
1427: nop                 ; 00
1428: pop x               ; 08
1429: inc x               ; 50
142A: rol w               ; 95
142B: nop                 ; 00
142C: or w, $97           ; 78 97
142E: return              ; 20
142F: or w, $FD           ; 78 FD
1431: nop                 ; B7
1432: nop                 ; BF
1433: nop                 ; DB
1434: nop                 ; 00
1435: nop                 ; 00
1436: nop                 ; 00
1437: nop                 ; 00
1438: nop                 ; 00
1439: nop                 ; 00
143A: nop                 ; 00
143B: nop                 ; 00
143C: nop                 ; 00
143D: nop                 ; FC
143E: nop                 ; FF
143F: dec x               ; 55
1440: dec x               ; 55
1441: and y, $DB          ; 6D DB
1443: dec y               ; 56
1444: nop                 ; B7
1445: nop                 ; FA
1446: nop                 ; FF
1447: nop                 ; B6
1448: nop                 ; DF
1449: dec x               ; 55
144A: dec x               ; 55
144B: set a, $25          ; 25 25
144D: nop                 ; 00
144E: nop                 ; 00
144F: xor a, y            ; 80
1450: inc z               ; 52
1451: nop                 ; DA
1452: load.xy z           ; 15
1453: nop                 ; 00
1454: nop                 ; EA
1455: load x, $D800       ; 0F 00 D8
1458: nop                 ; D7
1459: nop                 ; DE
145A: nop                 ; D5
145B: and z, $00          ; 6E 00
145D: nop                 ; 00
145E: nop                 ; 00
145F: nop                 ; 00
1460: nop                 ; 00
1461: nop                 ; 00
1462: nop                 ; 00
1463: nop                 ; 00
1464: nop                 ; 00
1465: nop                 ; FC
1466: nop                 ; FF
1467: dec x               ; 55
1468: dec x               ; 55
1469: resume              ; AB
146A: int $ED             ; AA ED
146C: nop                 ; ED
146D: nop                 ; DF
146E: nop                 ; F7
146F: nop                 ; EF
1470: or x, $57           ; 75 57
1472: rol w               ; 95
1473: mul a, a            ; 4A
1474: shl y, $20          ; 89 20
1476: pop x               ; 08
1477: nop                 ; 00
1478: load y, $5568       ; 10 68 55
147B: push y              ; 02
147C: nop                 ; D0
147D: xor a, x            ; 7F
147E: nop                 ; 00
147F: nop                 ; F4
1480: nop                 ; BA
1481: or x, $FF           ; 75 FF
1483: nop                 ; B3
1484: nop                 ; 00
1485: nop                 ; 00
1486: nop                 ; 00
1487: nop                 ; 00
1488: nop                 ; 00
1489: nop                 ; 00
148A: nop                 ; 00
148B: nop                 ; 00
148C: nop                 ; 00
148D: nop                 ; FC
148E: nop                 ; FF
148F: int $6A             ; AA 6A
1491: nop                 ; D5
1492: nop                 ; B6
1493: cmp a, x            ; 5A
1494: nop                 ; BD
1495: not x               ; 7A
1496: nop                 ; DD
1497: nop                 ; BA
1498: nop                 ; DE
1499: dec x               ; 55
149A: set y, $54          ; 22 54
149C: set a, $02          ; 25 02
149E: sub a, w            ; 40
149F: nop                 ; 00
14A0: mul a, w            ; 49
14A1: dec w               ; 58
14A2: dec z               ; 57
14A3: nop                 ; 00
14A4: nop                 ; E0
14A5: nop                 ; BF
14A6: shr w, $FF          ; 90 FF
14A8: nop                 ; DB
14A9: nop                 ; FF
14AA: clc                 ; AD
14AB: nop                 ; DE
14AC: nop                 ; 00
14AD: nop                 ; 00
14AE: nop                 ; 00
14AF: nop                 ; 00
14B0: nop                 ; 00
14B1: nop                 ; 00
14B2: nop                 ; 00
14B3: nop                 ; 00
14B4: nop                 ; 00
14B5: nop                 ; FC
14B6: nop                 ; FF
14B7: dec x               ; 55
14B8: clc                 ; AD
14B9: cmp a, x            ; 5A
14BA: nop                 ; D5
14BB: and z, $EB          ; 6E EB
14BD: nop                 ; D7
14BE: nop                 ; BF
14BF: nop                 ; EF
14C0: nop                 ; B5
14C1: cmp a, x            ; 5A
14C2: mul a, w            ; 49
14C3: sub x, $4A          ; 41 4A
14C5: jmp $0002, y        ; A0 02 00
14C8: push y              ; 02
14C9: nop                 ; E8
14CA: cmp a, w            ; 5D
14CB: load a, $7F00       ; 13 00 7F
14CE: push z              ; 03
14CF: nop                 ; BD
14D0: nop                 ; F6
14D1: nop                 ; AF
14D2: nop                 ; FB
14D3: and a, w            ; 6B
14D4: push x              ; 01
14D5: nop                 ; 00
14D6: nop                 ; 00
14D7: nop                 ; 00
14D8: nop                 ; 00
14D9: nop                 ; 00
14DA: nop                 ; 00
14DB: nop                 ; 00
14DC: nop                 ; 00
14DD: nop                 ; FC
14DE: nop                 ; FF
14DF: int $AA             ; AA AA
14E1: dec x               ; 55
14E2: cmp a, y            ; 5B
14E3: resume              ; AB
14E4: clc                 ; AD
14E5: not x               ; 7A
14E6: nop                 ; F5
14E7: cmp a, x            ; 5A
14E8: resume              ; AB
14E9: dec y               ; 56
14EA: set a, $2A          ; 25 2A
14EC: push x              ; 01
14ED: pop x               ; 08
14EE: nop                 ; 00
14EF: rol x               ; 92
14F0: nop                 ; 00
14F1: nop                 ; B9
14F2: dec y               ; 56
14F3: push x              ; 01
14F4: xor a, y            ; 80
14F5: nop                 ; FE
14F6: nop                 ; ED
14F7: nop                 ; FF
14F8: nop                 ; EB
14F9: nop                 ; F7
14FA: nop                 ; AE
14FB: clc                 ; AD
14FC: push x              ; 01
14FD: nop                 ; 00
14FE: nop                 ; 00
14FF: nop                 ; 00
1500: nop                 ; 00
1501: nop                 ; 00
1502: nop                 ; 00
1503: nop                 ; 00
1504: nop                 ; 00
1505: nop                 ; FC
1506: nop                 ; FF
1507: and a, z            ; 6A
1508: nop                 ; B5
1509: nop                 ; D6
150A: and a, z            ; 6A
150B: nop                 ; F5
150C: or y, $D7           ; 76 D7
150E: nop                 ; AF
150F: nop                 ; B6
1510: int $B5             ; AA B5
1512: shl z, $40          ; 8A 40
1514: inc a               ; 54
1515: sub z, $91          ; 43 91
1517: push w              ; 04
1518: return              ; 20
1519: jmp.z $4D75         ; A8 75 4D
151C: nop                 ; 00
151D: nop                 ; F8
151E: nop                 ; DF
151F: nop                 ; BF
1520: nop                 ; EE
1521: nop                 ; DF
1522: not w               ; 7D
1523: nop                 ; BB
1524: push y              ; 02
1525: nop                 ; 00
1526: nop                 ; 00
1527: nop                 ; 00
1528: nop                 ; 00
1529: nop                 ; 00
152A: nop                 ; 00
152B: nop                 ; 00
152C: nop                 ; 00
152D: nop                 ; FC
152E: nop                 ; FF
152F: dec x               ; 55
1530: dec x               ; 55
1531: clc                 ; AD
1532: dec y               ; 56
1533: cmp a, y            ; 5B
1534: nop                 ; DB
1535: nop                 ; BA
1536: nop                 ; DA
1537: nop                 ; D5
1538: cmp a, x            ; 5A
1539: dec x               ; 55
153A: set a, $12          ; 25 12
153C: dec x               ; 55
153D: load.xy z           ; 15
153E: sub w, $20          ; 44 20
1540: push a              ; 05
1541: nop                 ; EA
1542: cmp x, $25          ; 5E 25
1544: nop                 ; 00
1545: nop                 ; FA
1546: nop                 ; FF
1547: nop                 ; FF
1548: nop                 ; FB
1549: xor a, x            ; 7F
154A: nop                 ; F7
154B: nop                 ; AF
154C: nop                 ; 00
154D: nop                 ; 00
154E: nop                 ; 00
154F: nop                 ; 00
1550: nop                 ; 00
1551: nop                 ; 00
1552: nop                 ; 00
1553: nop                 ; 00
1554: nop                 ; 00
1555: nop                 ; FC
1556: nop                 ; FF
1557: int $D6             ; AA D6
1559: and a, z            ; 6A
155A: nop                 ; B5
155B: clc                 ; AD
155C: int $EE             ; AA EE
155E: and a, w            ; 6B
155F: clc                 ; AD
1560: dec y               ; 56
1561: dec x               ; 55
1562: load.xy z           ; 15
1563: jmp.eq $024A        ; A4 4A 02
1566: pop y               ; 09
1567: pop y               ; 09
1568: load y, $F5B8       ; 10 B8 F5
156B: adc x, $01          ; 37 01
156D: nop                 ; E0
156E: nop                 ; FF
156F: nop                 ; FE
1570: nop                 ; BE
1571: nop                 ; DF
1572: nop                 ; BE
1573: nop                 ; BA
1574: push y              ; 02
1575: nop                 ; 00
1576: nop                 ; 00
1577: nop                 ; 00
1578: nop                 ; 00
1579: nop                 ; 00
157A: nop                 ; 00
157B: nop                 ; 00
157C: nop                 ; 00
157D: nop                 ; FC
157E: nop                 ; FF
157F: nop                 ; DA
1580: int $5A             ; AA 5A
1582: resume              ; AB
1583: nop                 ; B6
1584: and y, $AB          ; 6D AB
1586: nop                 ; B6
1587: int $AA             ; AA AA
1589: int $AA             ; AA AA
158B: int $54             ; AA 54
158D: push x              ; 01
158E: sub a, w            ; 40
158F: return              ; 20
1590: nop                 ; 00
1591: jmp.z $9D5E         ; A8 5E 9D
1594: nop                 ; 00
1595: jmp $FFF7, y        ; A0 F7 FF
1598: nop                 ; DF
1599: nop                 ; EF
159A: nop                 ; EB
159B: add z, $00          ; 2F 00
159D: inc a               ; 54
159E: push x              ; 01
159F: nop                 ; 00
15A0: nop                 ; 00
15A1: nop                 ; 00
15A2: nop                 ; 00
15A3: nop                 ; 00
15A4: nop                 ; 00
15A5: nop                 ; FC
15A6: nop                 ; FF
15A7: int $6A             ; AA 6A
15A9: resume              ; AB
15AA: nop                 ; DA
15AB: and a, z            ; 6A
15AC: nop                 ; D5
15AD: nop                 ; F6
15AE: cmp a, x            ; 5A
15AF: and a, w            ; 6B
15B0: dec x               ; 55
15B1: dec x               ; 55
15B2: dec x               ; 55
15B3: dec x               ; 55
15B4: jmp.neq $0004       ; A5 04 00
15B7: push w              ; 04
15B8: sub a, $E0          ; 45 E0
15BA: nop                 ; EB
15BB: nop                 ; F5
15BC: pop x               ; 08
15BD: sub a, w            ; 40
15BE: nop                 ; FF
15BF: nop                 ; EF
15C0: nop                 ; BF
15C1: nop                 ; BF
15C2: nop                 ; DE
15C3: int $0A             ; AA 0A
15C5: jmp.z $000A         ; A8 0A 00
15C8: nop                 ; 00
15C9: nop                 ; 00
15CA: nop                 ; 00
15CB: nop                 ; 00
15CC: nop                 ; 00
15CD: nop                 ; FC
15CE: nop                 ; FF
15CF: int $AD             ; AA AD
15D1: and a, z            ; 6A
15D2: resume              ; AB
15D3: int $B6             ; AA B6
15D5: cmp a, x            ; 5A
15D6: and a, w            ; 6B
15D7: clc                 ; AD
15D8: int $AA             ; AA AA
15DA: add a, z            ; 2A
15DB: mul a, w            ; 49
15DC: add a, y            ; 29
15DD: xor a, z            ; 81
15DE: xor a, y            ; 80
15DF: return              ; 20
15E0: load y, $BE92       ; 10 92 BE
15E3: dec x               ; 55
15E4: push z              ; 03
15E5: nop                 ; 00
15E6: nop                 ; FF
15E7: nop                 ; FF
15E8: nop                 ; FF
15E9: or x, $7A           ; 75 7A
15EB: mul x, $14          ; 4B 14
15ED: nop                 ; F4
15EE: push y              ; 02
15EF: nop                 ; 00
15F0: nop                 ; 00
15F1: nop                 ; 00
15F2: nop                 ; 00
15F3: nop                 ; 00
15F4: nop                 ; 00
15F5: nop                 ; FC
15F6: nop                 ; FF
15F7: resume              ; AB
15F8: and a, z            ; 6A
15F9: cmp a, y            ; 5B
15FA: and y, $AD          ; 6D AD
15FC: dec x               ; 55
15FD: dec z               ; 57
15FE: clc                 ; AD
15FF: int $AA             ; AA AA
1601: add a, z            ; 2A
1602: jmp.nz $AAAA        ; A9 AA AA
1605: pop z               ; 0A
1606: nop                 ; 00
1607: push w              ; 04
1608: nop                 ; 00
1609: jmp.eq $DF6A        ; A4 6A DF
160C: load w, $B800       ; 12 00 B8
160F: nop                 ; FF
1610: xor a, x            ; 7F
1611: nop                 ; DF
1612: nop                 ; DA
1613: ror x               ; 97
1614: and a, w            ; 6B
1615: nop                 ; F8
1616: load.xy z           ; 15
1617: nop                 ; 00
1618: nop                 ; 00
1619: nop                 ; 00
161A: nop                 ; 00
161B: nop                 ; 00
161C: nop                 ; 00
161D: nop                 ; FC
161E: nop                 ; FF
161F: dec x               ; 55
1620: dec x               ; 55
1621: clc                 ; AD
1622: dec x               ; 55
1623: resume              ; AB
1624: nop                 ; DA
1625: and a, z            ; 6A
1626: dec x               ; 55
1627: dec x               ; 55
1628: dec x               ; 55
1629: jmp.neq $954A       ; A5 4A 95
162C: mul a, a            ; 4A
162D: push a              ; 05
162E: sub a, w            ; 40
162F: push y              ; 02
1630: sub y, $1E          ; 42 1E
1632: nop                 ; BB
1633: or x, $0B           ; 75 0B
1635: nop                 ; 00
1636: nop                 ; FC
1637: nop                 ; FB
1638: nop                 ; FF
1639: and a, z            ; 6A
163A: and y, $DD          ; 6D DD
163C: nop                 ; B6
163D: nop                 ; F4
163E: push.r              ; 07
163F: nop                 ; 00
1640: nop                 ; 00
1641: nop                 ; 00
1642: nop                 ; 00
1643: nop                 ; 00
1644: nop                 ; 00
1645: nop                 ; FC
1646: nop                 ; FF
1647: nop                 ; DA
1648: nop                 ; DA
1649: and a, z            ; 6A
164A: dec x               ; 55
164B: nop                 ; D5
164C: int $55             ; AA 55
164E: dec x               ; 55
164F: dec x               ; 55
1650: dec x               ; 55
1651: dec x               ; 55
1652: dec x               ; 55
1653: jmp.neq $0954       ; A5 54 09
1656: nop                 ; 00
1657: nop                 ; 00
1658: pop x               ; 08
1659: and a, $AA          ; 70 AA
165B: nop                 ; DF
165C: mul w, $01          ; 4E 01
165E: nop                 ; E0
165F: nop                 ; FF
1660: nop                 ; BF
1661: nop                 ; DD
1662: nop                 ; FB
1663: nop                 ; F7
1664: dec z               ; 57
1665: nop                 ; D1
1666: call $0000          ; 1F 00 00
1669: nop                 ; 00
166A: nop                 ; 00
166B: nop                 ; 00
166C: nop                 ; 00
166D: nop                 ; FC
166E: nop                 ; FF
166F: int $56             ; AA 56
1671: resume              ; AB
1672: nop                 ; B6
1673: nop                 ; B6
1674: nop                 ; B6
1675: int $56             ; AA 56
1677: dec x               ; 55
1678: dec x               ; 55
1679: add a, z            ; 2A
167A: dec x               ; 55
167B: int $52             ; AA 52
167D: pop z               ; 0A
167E: nop                 ; 00
167F: xor a, y            ; 80
1680: nop                 ; 00
1681: nop                 ; EE
1682: nop                 ; ED
1683: or y, $2B           ; 76 2B
1685: nop                 ; 00
1686: sub a, w            ; 40
1687: nop                 ; BF
1688: nop                 ; F7
1689: or y, $BF           ; 76 BF
168B: cmp a, w            ; 5D
168C: nop                 ; ED
168D: jmp.neq $0007       ; A5 07 00
1690: nop                 ; 00
1691: nop                 ; 00
1692: nop                 ; 00
1693: nop                 ; 00
1694: nop                 ; 00
1695: nop                 ; FC
1696: nop                 ; FF
1697: int $AA             ; AA AA
1699: int $AA             ; AA AA
169B: dec x               ; 55
169C: resume              ; AB
169D: cmp a, x            ; 5A
169E: jmp.nz $4AAA        ; A9 AA 4A
16A1: jmp.neq $9552       ; A5 52 95
16A4: mul a, a            ; 4A
16A5: load.xy z           ; 15
16A6: xor a, y            ; 80
16A7: nop                 ; 00
16A8: sub a, w            ; 40
16A9: jmp $DDB7           ; 9C B7 DD
16AC: and y, $01          ; 6D 01
16AE: nop                 ; 00
16AF: jmp.eq $D914        ; A4 14 D9
16B2: nop                 ; FF
16B3: nop                 ; F7
16B4: nop                 ; BF
16B5: mul w, $2E          ; 4E 2E
16B7: nop                 ; 00
16B8: nop                 ; 00
16B9: nop                 ; 00
16BA: nop                 ; 00
16BB: nop                 ; 00
16BC: nop                 ; 00
16BD: nop                 ; FC
16BE: nop                 ; FF
16BF: dec y               ; 56
16C0: dec x               ; 55
16C1: dec x               ; 55
16C2: dec x               ; 55
16C3: nop                 ; D5
16C4: int $AA             ; AA AA
16C6: dec y               ; 56
16C7: dec x               ; 55
16C8: inc z               ; 52
16C9: jmp.nz $5554        ; A9 54 55
16CC: int $14             ; AA 14
16CE: nop                 ; 00
16CF: nop                 ; 00
16D0: load y, $B670       ; 10 70 B6
16D3: or y, $AF           ; 76 AF
16D5: push x              ; 01
16D6: nop                 ; 00
16D7: load w, $F442       ; 12 42 F4
16DA: nop                 ; FF
16DB: cmp y, $55          ; 5F 55
16DD: ror a               ; 9B
16DE: push y              ; 02
16DF: nop                 ; 00
16E0: nop                 ; 00
16E1: nop                 ; 00
16E2: nop                 ; 00
16E3: nop                 ; 00
16E4: nop                 ; 00
16E5: nop                 ; FC
16E6: nop                 ; FF
16E7: int $B5             ; AA B5
16E9: int $6A             ; AA 6A
16EB: clc                 ; AD
16EC: cmp a, x            ; 5A
16ED: dec x               ; 55
16EE: jmp.nz $2AAA        ; A9 AA 2A
16F1: dec x               ; 55
16F2: rol w               ; 95
16F3: inc z               ; 52
16F4: dec x               ; 55
16F5: set a, $00          ; 25 00
16F7: nop                 ; 00
16F8: nop                 ; 00
16F9: nop                 ; CC
16FA: nop                 ; E9
16FB: cmp x, $B9          ; 5E B9
16FD: pop z               ; 0A
16FE: nop                 ; 00
16FF: push w              ; 04
1700: load y, $FFE1       ; 10 E1 FF
1703: nop                 ; FF
1704: nop                 ; FF
1705: and a, z            ; 6A
1706: pop x               ; 08
1707: nop                 ; 00
1708: nop                 ; 00
1709: nop                 ; 00
170A: nop                 ; 00
170B: nop                 ; 00
170C: nop                 ; 00
170D: nop                 ; FC
170E: nop                 ; FF
170F: cmp a, x            ; 5A
1710: dec x               ; 55
1711: dec x               ; 55
1712: dec x               ; 55
1713: dec x               ; 55
1714: jmp.neq $56AA       ; A5 AA 56
1717: jmp.neq $2554       ; A5 54 25
171A: jmp.neq $92AA       ; A5 AA 92
171D: add a, z            ; 2A
171E: nop                 ; 00
171F: nop                 ; 00
1720: xor a, y            ; 80
1721: nop                 ; DC
1722: jmp.lt $AFEB        ; A7 EB AF
1725: push a              ; 05
1726: nop                 ; 00
1727: sub a, w            ; 40
1728: int $E4             ; AA E4
172A: nop                 ; FF
172B: nop                 ; FF
172C: int $BF             ; AA BF
172E: load.xy a           ; 14
172F: nop                 ; 00
1730: nop                 ; 00
1731: nop                 ; 00
1732: nop                 ; 00
1733: nop                 ; 00
1734: nop                 ; 00
1735: nop                 ; FC
1736: nop                 ; FF
1737: dec x               ; 55
1738: dec x               ; 55
1739: resume              ; AB
173A: int $AA             ; AA AA
173C: cmp a, x            ; 5A
173D: dec x               ; 55
173E: jmp.nz $9294        ; A9 94 92
1741: inc a               ; 54
1742: jmp.nz $5554        ; A9 54 55
1745: dec x               ; 55
1746: push x              ; 01
1747: xor a, w            ; 82
1748: nop                 ; 00
1749: and a, $DE          ; 70 DE
174B: not x               ; 7A
174C: nop                 ; F5
174D: load.xy w           ; 16
174E: nop                 ; 00
174F: rol z               ; 94
1750: mul a, z            ; 48
1751: shl y, $FF          ; 89 FF
1753: nop                 ; FF
1754: nop                 ; FF
1755: nop                 ; EA
1756: push x              ; 01
1757: nop                 ; 00
1758: nop                 ; 00
1759: nop                 ; 00
175A: nop                 ; 00
175B: nop                 ; 00
175C: nop                 ; 00
175D: nop                 ; FC
175E: nop                 ; FF
175F: int $AA             ; AA AA
1761: inc a               ; 54
1762: dec x               ; 55
1763: dec x               ; 55
1764: jmp.neq $56AA       ; A5 AA 56
1767: dec x               ; 55
1768: dec x               ; 55
1769: dec x               ; 55
176A: dec x               ; 55
176B: jmp.neq $A92A       ; A5 2A A9
176E: nop                 ; 00
176F: return              ; 20
1770: nop                 ; 00
1771: nop                 ; E0
1772: nop                 ; D9
1773: nop                 ; AE
1774: nop                 ; BD
1775: load.xy w           ; 16
1776: nop                 ; 00
1777: nop                 ; 00
1778: jmp.neq $FFA2       ; A5 A2 FF
177B: nop                 ; FF
177C: resume              ; AB
177D: nop                 ; BA
177E: push y              ; 02
177F: nop                 ; 00
1780: nop                 ; 00
1781: nop                 ; 00
1782: nop                 ; 00
1783: nop                 ; 00
1784: nop                 ; 00
1785: nop                 ; FC
1786: nop                 ; FF
1787: dec x               ; 55
1788: dec x               ; 55
1789: resume              ; AB
178A: int $AA             ; AA AA
178C: cmp a, x            ; 5A
178D: dec x               ; 55
178E: add a, y            ; 29
178F: jmp.neq $4924       ; A5 24 49
1792: mul a, a            ; 4A
1793: add a, z            ; 2A
1794: jmp.nz $0B4A        ; A9 4A 0B
1797: nop                 ; 00
1798: push w              ; 04
1799: nop                 ; 00
179A: ror x               ; 97
179B: not y               ; 7B
179C: nop                 ; E7
179D: push.f              ; 06
179E: nop                 ; 00
179F: inc x               ; 50
17A0: add a, x            ; 28
17A1: pop.f               ; 0D
17A2: nop                 ; FF
17A3: nop                 ; FF
17A4: nop                 ; BE
17A5: nop                 ; F7
17A6: load x, $0000       ; 0F 00 00
17A9: nop                 ; 00
17AA: nop                 ; 00
17AB: nop                 ; 00
17AC: nop                 ; 00
17AD: nop                 ; FC
17AE: nop                 ; FF
17AF: int $AA             ; AA AA
17B1: int $AA             ; AA AA
17B3: int $AA             ; AA AA
17B5: int $4A             ; AA 4A
17B7: dec x               ; 55
17B8: dec x               ; 55
17B9: dec x               ; 55
17BA: jmp.nz $4AAA        ; A9 AA 4A
17BD: inc z               ; 52
17BE: push w              ; 04
17BF: nop                 ; 00
17C0: nop                 ; 00
17C1: push w              ; 04
17C2: nop                 ; CF
17C3: int $BD             ; AA BD
17C5: push y              ; 02
17C6: nop                 ; 00
17C7: nop                 ; 00
17C8: sub a, $51          ; 45 51
17CA: nop                 ; FF
17CB: cmp a, w            ; 5D
17CC: nop                 ; EB
17CD: nop                 ; BA
17CE: call $00E8          ; 1F E8 00
17D1: nop                 ; 00
17D2: nop                 ; 00
17D3: nop                 ; 00
17D4: nop                 ; 00
17D5: nop                 ; FC
17D6: nop                 ; FF
17D7: dec x               ; 55
17D8: dec x               ; 55
17D9: dec x               ; 55
17DA: dec x               ; 55
17DB: dec x               ; 55
17DC: dec x               ; 55
17DD: dec x               ; 55
17DE: int $54             ; AA 54
17E0: int $24             ; AA 24
17E2: dec x               ; 55
17E3: mul a, w            ; 49
17E4: dec x               ; 55
17E5: dec x               ; 55
17E6: add a, w            ; 2B
17E7: nop                 ; 00
17E8: nop                 ; 00
17E9: nop                 ; 00
17EA: nop                 ; B8
17EB: nop                 ; EE
17EC: nop                 ; D7
17ED: dec z               ; 57
17EE: nop                 ; 00
17EF: sub a, w            ; 40
17F0: inc x               ; 50
17F1: load.xy w           ; 16
17F2: nop                 ; FC
17F3: nop                 ; FF
17F4: nop                 ; BE
17F5: nop                 ; F7
17F6: nop                 ; B5
17F7: int $01             ; AA 01
17F9: nop                 ; 00
17FA: nop                 ; 00
17FB: nop                 ; 00
17FC: nop                 ; 00
17FD: nop                 ; FC
17FE: nop                 ; FF
17FF: int $AA             ; AA AA
1801: cmp a, x            ; 5A
1802: dec x               ; 55
1803: dec x               ; 55
1804: dec x               ; 55
1805: mul a, w            ; 49
1806: jmp.nz $9292        ; A9 92 92
1809: int $92             ; AA 92
180B: add a, z            ; 2A
180C: dec x               ; 55
180D: jmp.neq $0054       ; A5 54 00
1810: sub a, w            ; 40
1811: sub a, w            ; 40
1812: nop                 ; C0
1813: nop                 ; BB
1814: nop                 ; F6
1815: push y              ; 02
1816: nop                 ; 00
1817: nop                 ; 00
1818: xor a, z            ; 81
1819: jmp.z $6FFE         ; A8 FE 6F
181C: nop                 ; EB
181D: nop                 ; DF
181E: xor a, x            ; 7F
181F: nop                 ; FB
1820: push x              ; 01
1821: nop                 ; 00
1822: nop                 ; 00
1823: nop                 ; 00
1824: nop                 ; 00
1825: nop                 ; FC
1826: nop                 ; FF
1827: dec x               ; 55
1828: dec x               ; 55
1829: dec x               ; 55
182A: dec x               ; 55
182B: dec x               ; 55
182C: dec x               ; 55
182D: int $2A             ; AA 2A
182F: dec x               ; 55
1830: dec x               ; 55
1831: rol w               ; 95
1832: inc a               ; 54
1833: jmp.neq $2952       ; A5 52 29
1836: dec x               ; 55
1837: push x              ; 01
1838: nop                 ; 00
1839: nop                 ; 00
183A: xor y, $AA          ; 84 AA
183C: nop                 ; DD
183D: load.xy w           ; 16
183E: nop                 ; 00
183F: nop                 ; 00
1840: add a, z            ; 2A
1841: set a, $F8          ; 25 F8
1843: nop                 ; DF
1844: nop                 ; FF
1845: nop                 ; FF
1846: nop                 ; AE
1847: dec y               ; 56
1848: push.r              ; 07
1849: nop                 ; 00
184A: nop                 ; 00
184B: nop                 ; 00
184C: nop                 ; 00
184D: nop                 ; FC
184E: nop                 ; FF
184F: int $AA             ; AA AA
1851: int $AA             ; AA AA
1853: int $92             ; AA 92
1855: rol x               ; 92
1856: inc z               ; 52
1857: dec x               ; 55
1858: dec x               ; 55
1859: inc z               ; 52
185A: set a, $55          ; 25 55
185C: mul a, a            ; 4A
185D: rol w               ; 95
185E: rol x               ; 92
185F: nop                 ; 00
1860: nop                 ; 00
1861: nop                 ; 00
1862: sub a, w            ; 40
1863: nop                 ; FB
1864: dec y               ; 56
1865: push z              ; 03
1866: nop                 ; 00
1867: nop                 ; 00
1868: xor a, y            ; 80
1869: inc a               ; 54
186A: jmp.nz $0052        ; A9 52 00
186D: jmp $FAF7, y        ; A0 F7 FA
1870: push.r              ; 07
1871: nop                 ; 00
1872: nop                 ; 00
1873: nop                 ; 00
1874: nop                 ; 00
1875: nop                 ; FC
1876: nop                 ; FF
1877: int $AA             ; AA AA
1879: dec y               ; 56
187A: dec x               ; 55
187B: dec x               ; 55
187C: dec x               ; 55
187D: dec x               ; 55
187E: int $24             ; AA 24
1880: mul a, w            ; 49
1881: dec x               ; 55
1882: int $52             ; AA 52
1884: dec x               ; 55
1885: int $AA             ; AA AA
1887: push.f              ; 06
1888: nop                 ; 00
1889: nop                 ; 00
188A: nop                 ; 00
188B: sec                 ; AC
188C: not a               ; 7E
188D: load a, $0000       ; 13 00 00
1890: add a, x            ; 28
1891: mul a, w            ; 49
1892: push y              ; 02
1893: nop                 ; 00
1894: nop                 ; 00
1895: nop                 ; E0
1896: nop                 ; AF
1897: nop                 ; FD
1898: pop.f               ; 0D
1899: nop                 ; 00
189A: nop                 ; 00
189B: nop                 ; 00
189C: nop                 ; 00
189D: nop                 ; FC
189E: nop                 ; FF
189F: dec x               ; 55
18A0: dec x               ; 55
18A1: dec x               ; 55
18A2: dec x               ; 55
18A3: rol w               ; 95
18A4: set w, $A5          ; 24 A5
18A6: mul a, a            ; 4A
18A7: dec x               ; 55
18A8: dec x               ; 55
18A9: jmp.neq $4A52       ; A5 52 4A
18AC: jmp.nz $5252        ; A9 52 52
18AF: pop y               ; 09
18B0: nop                 ; 00
18B1: nop                 ; 00
18B2: return              ; 20
18B3: nop                 ; B4
18B4: nop                 ; DB
18B5: push a              ; 05
18B6: nop                 ; 00
18B7: nop                 ; 00
18B8: nop                 ; 00
18B9: jmp.eq $0000        ; A4 00 00
18BC: mul a, w            ; 49
18BD: sub y, $B5          ; 42 B5
18BF: dec y               ; 56
18C0: load x, $0000       ; 0F 00 00
18C3: nop                 ; 00
18C4: nop                 ; 00
18C5: nop                 ; FC
18C6: nop                 ; FF
18C7: dec x               ; 55
18C8: dec x               ; 55
18C9: dec x               ; 55
18CA: dec x               ; 55
18CB: dec x               ; 55
18CC: dec x               ; 55
18CD: add a, y            ; 29
18CE: add a, y            ; 29
18CF: dec x               ; 55
18D0: dec x               ; 55
18D1: add a, y            ; 29
18D2: rol w               ; 95
18D3: add a, z            ; 2A
18D4: rol w               ; 95
18D5: mul a, a            ; 4A
18D6: add a, y            ; 29
18D7: adc a, w            ; 35
18D8: nop                 ; 00
18D9: nop                 ; 00
18DA: nop                 ; 00
18DB: jmp $0B76, y        ; A0 76 0B
18DE: nop                 ; 00
18DF: nop                 ; 00
18E0: sub a, w            ; 40
18E1: shr a, $0A          ; 91 0A
18E3: nop                 ; 00
18E4: xor a, y            ; 80
18E5: xor y, $DB          ; 84 DB
18E7: nop                 ; FF
18E8: adc a, $00          ; 3B 00
18EA: nop                 ; 00
18EB: nop                 ; 00
18EC: nop                 ; 00
18ED: nop                 ; FC
18EE: nop                 ; FF
18EF: dec x               ; 55
18F0: dec x               ; 55
18F1: dec x               ; 55
18F2: dec x               ; 55
18F3: jmp.nz $4A4A        ; A9 4A 4A
18F6: dec x               ; 55
18F7: mul a, w            ; 49
18F8: add a, z            ; 2A
18F9: dec x               ; 55
18FA: jmp.neq $A554       ; A5 54 A5
18FD: inc a               ; 54
18FE: jmp.neq $0092       ; A5 92 00
1901: nop                 ; 00
1902: nop                 ; 00
1903: nop                 ; C1
1904: cmp a, x            ; 5A
1905: push x              ; 01
1906: nop                 ; 00
1907: nop                 ; 00
1908: nop                 ; 00
1909: sub a, w            ; 40
190A: push y              ; 02
190B: add a, y            ; 29
190C: add a, z            ; 2A
190D: xor a, w            ; 82
190E: and z, $EB          ; 6E EB
1910: add y, $00          ; 2E 00
1912: nop                 ; 00
1913: nop                 ; 00
1914: nop                 ; 00
1915: nop                 ; FC
1916: nop                 ; FF
1917: dec x               ; 55
1918: dec x               ; 55
1919: dec x               ; 55
191A: dec x               ; 55
191B: set a, $A9          ; 25 A9
191D: int $A4             ; AA A4
191F: int $52             ; AA 52
1921: rol w               ; 95
1922: inc a               ; 54
1923: jmp.neq $5554       ; A5 54 55
1926: mul a, a            ; 4A
1927: int $00             ; AA 00
1929: nop                 ; 00
192A: nop                 ; 00
192B: nop                 ; 00
192C: and a, z            ; 6A
192D: load a, $0000       ; 13 00 00
1930: nop                 ; 00
1931: rol w               ; 95
1932: nop                 ; 00
1933: xor a, y            ; 80
1934: xor a, y            ; 80
1935: load.xy a           ; 14
1936: nop                 ; D5
1937: nop                 ; BE
1938: and w, $00          ; 6F 00
193A: nop                 ; 00
193B: nop                 ; 00
193C: nop                 ; 00
193D: nop                 ; FC
193E: nop                 ; FF
193F: int $AA             ; AA AA
1941: int $AA             ; AA AA
1943: int $2A             ; AA 2A
1945: add a, y            ; 29
1946: rol w               ; 95
1947: int $4A             ; AA 4A
1949: jmp.nz $294A        ; A9 4A 29
194C: rol w               ; 95
194D: rol x               ; 92
194E: int $52             ; AA 52
1950: push x              ; 01
1951: nop                 ; 00
1952: nop                 ; 00
1953: nop                 ; 00
1954: not x               ; 7A
1955: push x              ; 01
1956: nop                 ; 00
1957: nop                 ; 00
1958: nop                 ; 00
1959: nop                 ; 00
195A: nop                 ; 00
195B: add a, x            ; 28
195C: int $02             ; AA 02
195E: nop                 ; FD
195F: nop                 ; D7
1960: nop                 ; BD
1961: nop                 ; 00
1962: nop                 ; 00
1963: nop                 ; 00
1964: nop                 ; 00
1965: nop                 ; FC
1966: nop                 ; FF
1967: dec x               ; 55
1968: dec x               ; 55
1969: dec x               ; 55
196A: dec x               ; 55
196B: rol w               ; 95
196C: jmp.eq $A94A        ; A4 4A A9
196F: set w, $29          ; 24 29
1971: jmp.neq $AA52       ; A5 52 AA
1974: inc z               ; 52
1975: dec x               ; 55
1976: jmp.nz $0A94        ; A9 94 0A
1979: nop                 ; 00
197A: nop                 ; 00
197B: nop                 ; 00
197C: sub a, w            ; 40
197D: pop w               ; 0B
197E: nop                 ; 00
197F: nop                 ; 00
1980: nop                 ; 00
1981: mul a, z            ; 48
1982: nop                 ; 00
1983: xor a, y            ; 80
1984: set y, $28          ; 22 28
1986: and a, z            ; 6A
1987: nop                 ; BF
1988: and w, $00          ; 6F 00
198A: nop                 ; 00
198B: nop                 ; 00
198C: nop                 ; 00
198D: nop                 ; FC
198E: nop                 ; FF
198F: dec x               ; 55
1990: dec x               ; 55
1991: dec x               ; 55
1992: dec x               ; 55
1993: jmp.nz $524A        ; A9 4A 52
1996: mul a, a            ; 4A
1997: dec x               ; 55
1998: rol w               ; 95
1999: inc a               ; 54
199A: int $52             ; AA 52
199C: dec x               ; 55
199D: int $4A             ; AA 4A
199F: jmp.neq $00AA       ; A5 AA 00
19A2: nop                 ; 00
19A3: nop                 ; 00
19A4: jmp $0001, y        ; A0 01 00
19A7: nop                 ; 00
19A8: nop                 ; 00
19A9: return              ; 20
19AA: nop                 ; 00
19AB: inc y               ; 51
19AC: shl x, $0A          ; 88 0A
19AE: nop                 ; BC
19AF: nop                 ; ED
19B0: nop                 ; B6
19B1: nop                 ; 00
19B2: nop                 ; 00
19B3: nop                 ; 00
19B4: nop                 ; 00
19B5: nop                 ; FC
19B6: nop                 ; FF
19B7: dec x               ; 55
19B8: dec x               ; 55
19B9: dec x               ; 55
19BA: rol w               ; 95
19BB: mul a, a            ; 4A
19BC: jmp.nz $52AA        ; A9 AA 52
19BF: rol x               ; 92
19C0: jmp.eq $9552        ; A4 52 95
19C3: add a, z            ; 2A
19C4: mul a, w            ; 49
19C5: mul a, w            ; 49
19C6: add a, z            ; 2A
19C7: add a, y            ; 29
19C8: mul a, w            ; 49
19C9: clc                 ; AD
19CA: nop                 ; 00
19CB: nop                 ; 00
19CC: nop                 ; 00
19CD: push x              ; 01
19CE: nop                 ; 00
19CF: nop                 ; 00
19D0: nop                 ; 00
19D1: xor a, y            ; 80
19D2: nop                 ; 00
19D3: xor a, y            ; 80
19D4: inc z               ; 52
19D5: inc z               ; 52
19D6: nop                 ; E8
19D7: nop                 ; FF
19D8: nop                 ; FD
19D9: push x              ; 01
19DA: nop                 ; 00
19DB: nop                 ; 00
19DC: nop                 ; 00
19DD: nop                 ; FC
19DE: nop                 ; FF
19DF: dec x               ; 55
19E0: dec x               ; 55
19E1: dec x               ; 55
19E2: jmp.nz $952A        ; A9 2A 95
19E5: set w, $95          ; 24 95
19E7: int $2A             ; AA 2A
19E9: rol w               ; 95
19EA: inc z               ; 52
19EB: mul a, a            ; 4A
19EC: dec x               ; 55
19ED: dec x               ; 55
19EE: dec x               ; 55
19EF: dec x               ; 55
19F0: dec x               ; 55
19F1: set a, $02          ; 25 02
19F3: nop                 ; 00
19F4: nop                 ; 00
19F5: nop                 ; 00
19F6: nop                 ; 00
19F7: nop                 ; 00
19F8: nop                 ; 00
19F9: nop                 ; 00
19FA: nop                 ; 00
19FB: nop                 ; 00
19FC: xor y, $48          ; 84 48
19FE: nop                 ; B8
19FF: nop                 ; B5
1A00: and w, $03          ; 6F 03
1A02: nop                 ; 00
1A03: nop                 ; 00
1A04: nop                 ; 00
1A05: nop                 ; FC
1A06: nop                 ; FF
1A07: dec x               ; 55
1A08: dec x               ; 55
1A09: dec x               ; 55
1A0A: dec x               ; 55
1A0B: inc z               ; 52
1A0C: jmp.neq $52AA       ; A5 AA 52
1A0F: jmp.neq $54A4       ; A5 A4 54
1A12: dec x               ; 55
1A13: jmp.nz $552A        ; A9 2A 55
1A16: mul a, w            ; 49
1A17: rol w               ; 95
1A18: set w, $A9          ; 24 A9
1A1A: push w              ; 04
1A1B: nop                 ; 00
1A1C: nop                 ; 00
1A1D: pop x               ; 08
1A1E: nop                 ; 00
1A1F: nop                 ; 00
1A20: nop                 ; 00
1A21: nop                 ; 00
1A22: pop x               ; 08
1A23: sub a, w            ; 40
1A24: add a, y            ; 29
1A25: load w, $FF61       ; 12 61 FF
1A28: nop                 ; FB
1A29: push.f              ; 06
1A2A: nop                 ; 00
1A2B: nop                 ; 00
1A2C: nop                 ; 00
1A2D: nop                 ; FC
1A2E: nop                 ; FF
1A2F: dec x               ; 55
1A30: dec x               ; 55
1A31: dec x               ; 55
1A32: dec x               ; 55
1A33: dec x               ; 55
1A34: add a, z            ; 2A
1A35: mul a, w            ; 49
1A36: mul a, a            ; 4A
1A37: mul a, a            ; 4A
1A38: rol w               ; 95
1A39: inc z               ; 52
1A3A: mul a, a            ; 4A
1A3B: rol w               ; 95
1A3C: jmp.eq $2A92        ; A4 92 2A
1A3F: jmp.nz $4AAA        ; A9 AA 4A
1A42: push a              ; 05
1A43: nop                 ; 00
1A44: nop                 ; 00
1A45: nop                 ; 00
1A46: nop                 ; 00
1A47: nop                 ; 00
1A48: nop                 ; 00
1A49: nop                 ; 00
1A4A: nop                 ; 00
1A4B: nop                 ; 00
1A4C: jmp.eq $F0A4        ; A4 A4 F0
1A4F: and y, $EF          ; 6D EF
1A51: pop w               ; 0B
1A52: nop                 ; 00
1A53: nop                 ; 00
1A54: nop                 ; 00
1A55: nop                 ; FC
1A56: nop                 ; FF
1A57: int $AA             ; AA AA
1A59: int $AA             ; AA AA
1A5B: int $52             ; AA 52
1A5D: dec x               ; 55
1A5E: jmp.nz $5252        ; A9 52 52
1A61: rol z               ; 94
1A62: inc z               ; 52
1A63: jmp.neq $54AA       ; A5 AA 54
1A66: int $4A             ; AA 4A
1A68: rol x               ; 92
1A69: add a, z            ; 2A
1A6A: add a, y            ; 29
1A6B: nop                 ; 00
1A6C: nop                 ; 00
1A6D: nop                 ; 00
1A6E: nop                 ; 00
1A6F: nop                 ; 00
1A70: nop                 ; 00
1A71: nop                 ; 00
1A72: xor a, y            ; 80
1A73: nop                 ; 00
1A74: pop x               ; 08
1A75: pop y               ; 09
1A76: sub y, $DF          ; 42 DF
1A78: nop                 ; BB
1A79: store.xy w          ; 1E
1A7A: nop                 ; 00
1A7B: nop                 ; 00
1A7C: nop                 ; 00
1A7D: nop                 ; FC
1A7E: nop                 ; FF
1A7F: dec x               ; 55
1A80: dec x               ; 55
1A81: dec x               ; 55
1A82: dec x               ; 55
1A83: jmp.neq $924A       ; A5 4A 92
1A86: mul a, a            ; 4A
1A87: add a, z            ; 2A
1A88: rol w               ; 95
1A89: inc z               ; 52
1A8A: dec x               ; 55
1A8B: int $4A             ; AA 4A
1A8D: dec x               ; 55
1A8E: mul a, w            ; 49
1A8F: dec x               ; 55
1A90: dec x               ; 55
1A91: int $92             ; AA 92
1A93: nop                 ; 00
1A94: nop                 ; 00
1A95: return              ; 20
1A96: nop                 ; 00
1A97: nop                 ; 00
1A98: nop                 ; 00
1A99: nop                 ; 00
1A9A: nop                 ; 00
1A9B: xor a, y            ; 80
1A9C: jmp.eq $F0A4        ; A4 A4 F0
1A9F: nop                 ; F5
1AA0: nop                 ; EE
1AA1: pop.f               ; 0D
1AA2: nop                 ; 00
1AA3: nop                 ; 00
1AA4: nop                 ; 00
1AA5: nop                 ; FC
1AA6: nop                 ; FF
1AA7: dec x               ; 55
1AA8: dec x               ; 55
1AA9: dec x               ; 55
1AAA: int $94             ; AA 94
1AAC: inc a               ; 54
1AAD: dec x               ; 55
1AAE: jmp.nz $A4A4        ; A9 A4 A4
1AB1: rol z               ; 94
1AB2: inc a               ; 54
1AB3: dec x               ; 55
1AB4: inc z               ; 52
1AB5: mul a, a            ; 4A
1AB6: dec x               ; 55
1AB7: inc z               ; 52
1AB8: jmp.neq $2552       ; A5 52 25
1ABB: push x              ; 01
1ABC: nop                 ; 00
1ABD: nop                 ; 00
1ABE: nop                 ; 00
1ABF: nop                 ; 00
1AC0: nop                 ; 00
1AC1: nop                 ; 00
1AC2: load y, $0008       ; 10 08 00
1AC5: load z, $BFB1       ; 11 B1 BF
1AC8: dec z               ; 57
1AC9: not y               ; 7B
1ACA: nop                 ; 00
1ACB: nop                 ; 00
1ACC: nop                 ; 00
1ACD: nop                 ; FC
1ACE: nop                 ; FF
1ACF: dec x               ; 55
1AD0: dec x               ; 55
1AD1: dec x               ; 55
1AD2: dec x               ; 55
1AD3: dec x               ; 55
1AD4: rol w               ; 95
1AD5: set w, $95          ; 24 95
1AD7: mul a, a            ; 4A
1AD8: load.xy z           ; 15
1AD9: set x, $49          ; 21 49
1ADB: mul a, w            ; 49
1ADC: rol w               ; 95
1ADD: inc z               ; 52
1ADE: dec x               ; 55
1ADF: rol w               ; 95
1AE0: rol z               ; 94
1AE1: rol z               ; 94
1AE2: rol z               ; 94
1AE3: push w              ; 04
1AE4: nop                 ; 00
1AE5: nop                 ; 00
1AE6: push x              ; 01
1AE7: nop                 ; 00
1AE8: xor a, y            ; 80
1AE9: nop                 ; 00
1AEA: nop                 ; 00
1AEB: nop                 ; 00
1AEC: jmp.z $F844         ; A8 44 F8
1AEF: nop                 ; F6
1AF0: nop                 ; ED
1AF1: add a, z            ; 2A
1AF2: nop                 ; 00
1AF3: nop                 ; 00
1AF4: nop                 ; 00
1AF5: nop                 ; FC
1AF6: nop                 ; FF
1AF7: dec x               ; 55
1AF8: dec x               ; 55
1AF9: mul a, w            ; 49
1AFA: mul a, w            ; 49
1AFB: dec x               ; 55
1AFC: jmp.neq $A4AA       ; A5 AA A4
1AFF: inc z               ; 52
1B00: inc z               ; 52
1B01: mul a, a            ; 4A
1B02: add a, z            ; 2A
1B03: dec x               ; 55
1B04: jmp.nz $24AA        ; A9 AA 24
1B07: jmp.nz $5552        ; A9 52 55
1B0A: dec x               ; 55
1B0B: pop y               ; 09
1B0C: nop                 ; 00
1B0D: nop                 ; 00
1B0E: nop                 ; 00
1B0F: nop                 ; 00
1B10: nop                 ; 00
1B11: nop                 ; 00
1B12: xor a, y            ; 80
1B13: nop                 ; 00
1B14: push x              ; 01
1B15: load z, $6FA8       ; 11 A8 6F
1B18: nop                 ; B7
1B19: nop                 ; F6
1B1A: nop                 ; 00
1B1B: nop                 ; 00
1B1C: nop                 ; 00
1B1D: nop                 ; FC
1B1E: nop                 ; FF
1B1F: dec x               ; 55
1B20: dec x               ; 55
1B21: dec x               ; 55
1B22: dec x               ; 55
1B23: jmp.neq $9254       ; A5 54 92
1B26: add a, z            ; 2A
1B27: rol w               ; 95
1B28: int $92             ; AA 92
1B2A: inc z               ; 52
1B2B: dec x               ; 55
1B2C: dec x               ; 55
1B2D: mul a, a            ; 4A
1B2E: dec x               ; 55
1B2F: dec x               ; 55
1B30: dec x               ; 55
1B31: inc z               ; 52
1B32: dec x               ; 55
1B33: add a, z            ; 2A
1B34: nop                 ; 00
1B35: nop                 ; 00
1B36: pop x               ; 08
1B37: nop                 ; 00
1B38: nop                 ; 00
1B39: nop                 ; 00
1B3A: nop                 ; 00
1B3B: xor a, y            ; 80
1B3C: sub a, w            ; 40
1B3D: xor y, $FC          ; 84 FC
1B3F: nop                 ; FA
1B40: nop                 ; D9
1B41: dec x               ; 55
1B42: push x              ; 01
1B43: nop                 ; 00
1B44: nop                 ; 00
1B45: nop                 ; FC
1B46: nop                 ; FF
1B47: int $AA             ; AA AA
1B49: int $AA             ; AA AA
1B4B: inc a               ; 54
1B4C: dec x               ; 55
1B4D: dec x               ; 55
1B4E: mul a, w            ; 49
1B4F: jmp.nz $A492        ; A9 92 A4
1B52: set w, $49          ; 24 49
1B54: mul a, a            ; 4A
1B55: dec x               ; 55
1B56: int $4A             ; AA 4A
1B58: mul a, a            ; 4A
1B59: rol w               ; 95
1B5A: jmp.eq $0092        ; A4 92 00
1B5D: nop                 ; 00
1B5E: nop                 ; 00
1B5F: nop                 ; 00
1B60: nop                 ; 00
1B61: nop                 ; 00
1B62: nop                 ; 00
1B63: nop                 ; 00
1B64: push w              ; 04
1B65: load z, $6FD4       ; 11 D4 6F
1B68: nop                 ; B7
1B69: nop                 ; F6
1B6A: nop                 ; 00
1B6B: nop                 ; 00
1B6C: nop                 ; 00
1B6D: nop                 ; FC
1B6E: nop                 ; FF
1B6F: dec x               ; 55
1B70: int $AA             ; AA AA
1B72: int $2A             ; AA 2A
1B74: rol w               ; 95
1B75: set w, $55          ; 24 55
1B77: add a, z            ; 2A
1B78: dec x               ; 55
1B79: load.xy z           ; 15
1B7A: rol x               ; 92
1B7B: inc a               ; 54
1B7C: dec x               ; 55
1B7D: jmp.nz $5492        ; A9 92 54
1B80: dec x               ; 55
1B81: mul a, w            ; 49
1B82: rol w               ; 95
1B83: mul a, a            ; 4A
1B84: nop                 ; 00
1B85: nop                 ; 00
1B86: nop                 ; 00
1B87: nop                 ; 00
1B88: nop                 ; 00
1B89: nop                 ; 00
1B8A: nop                 ; 00
1B8B: load z, $0480       ; 11 80 04
1B8E: and a, z            ; 6A
1B8F: nop                 ; FB
1B90: nop                 ; DD
1B91: nop                 ; FA
1B92: nop                 ; 00
1B93: nop                 ; 00
1B94: nop                 ; 00
1B95: nop                 ; FC
1B96: nop                 ; FF
1B97: inc z               ; 52
1B98: dec x               ; 55
1B99: dec x               ; 55
1B9A: rol w               ; 95
1B9B: int $52             ; AA 52
1B9D: dec x               ; 55
1B9E: mul a, w            ; 49
1B9F: jmp.neq $4924       ; A5 24 49
1BA2: mul a, w            ; 49
1BA3: set a, $29          ; 25 29
1BA5: rol w               ; 95
1BA6: int $52             ; AA 52
1BA8: add a, y            ; 29
1BA9: dec x               ; 55
1BAA: inc z               ; 52
1BAB: dec x               ; 55
1BAC: push a              ; 05
1BAD: nop                 ; 00
1BAE: sub a, w            ; 40
1BAF: nop                 ; 00
1BB0: nop                 ; 00
1BB1: nop                 ; 00
1BB2: nop                 ; 00
1BB3: nop                 ; 00
1BB4: pop x               ; 08
1BB5: mul a, z            ; 48
1BB6: jmp.z $756F         ; A8 6F 75
1BB9: nop                 ; EB
1BBA: push z              ; 03
1BBB: nop                 ; 00
1BBC: nop                 ; 00
1BBD: nop                 ; FC
1BBE: nop                 ; FF
1BBF: int $92             ; AA 92
1BC1: int $54             ; AA 54
1BC3: jmp.neq $92AA       ; A5 AA 92
1BC6: inc a               ; 54
1BC7: inc z               ; 52
1BC8: dec x               ; 55
1BC9: dec x               ; 55
1BCA: set w, $A9          ; 24 A9
1BCC: int $52             ; AA 52
1BCE: int $4A             ; AA 4A
1BD0: dec x               ; 55
1BD1: rol w               ; 95
1BD2: int $94             ; AA 94
1BD4: load w, $0000       ; 12 00 00
1BD7: nop                 ; 00
1BD8: pop x               ; 08
1BD9: nop                 ; 00
1BDA: nop                 ; 00
1BDB: nop                 ; 00
1BDC: push x              ; 01
1BDD: nop                 ; 00
1BDE: jmp $DEBE, y        ; A0 BE DE
1BE1: nop                 ; FE
1BE2: push x              ; 01
1BE3: nop                 ; 00
1BE4: nop                 ; 00
1BE5: nop                 ; FC
1BE6: nop                 ; FF
1BE7: int $AA             ; AA AA
1BE9: inc a               ; 54
1BEA: dec x               ; 55
1BEB: dec x               ; 55
1BEC: add a, y            ; 29
1BED: dec x               ; 55
1BEE: rol w               ; 95
1BEF: mul a, a            ; 4A
1BF0: mul a, a            ; 4A
1BF1: mul a, w            ; 49
1BF2: mul a, w            ; 49
1BF3: mul a, a            ; 4A
1BF4: mul a, a            ; 4A
1BF5: dec x               ; 55
1BF6: mul a, w            ; 49
1BF7: add a, z            ; 2A
1BF8: jmp.neq $9552       ; A5 52 95
1BFB: int $24             ; AA 24
1BFD: nop                 ; 00
1BFE: nop                 ; 00
1BFF: nop                 ; 00
1C00: nop                 ; 00
1C01: nop                 ; 00
1C02: nop                 ; 00
1C03: pop x               ; 08
1C04: nop                 ; 00
1C05: push y              ; 02
1C06: nop                 ; 00
1C07: or z, $BB           ; 77 BB
1C09: nop                 ; FB
1C0A: push z              ; 03
1C0B: nop                 ; 00
1C0C: nop                 ; 00
1C0D: nop                 ; FC
1C0E: nop                 ; FF
1C0F: inc a               ; 54
1C10: dec x               ; 55
1C11: dec x               ; 55
1C12: dec x               ; 55
1C13: rol w               ; 95
1C14: mul a, a            ; 4A
1C15: rol w               ; 95
1C16: inc z               ; 52
1C17: int $52             ; AA 52
1C19: int $92             ; AA 92
1C1B: set w, $A9          ; 24 A9
1C1D: rol z               ; 94
1C1E: int $AA             ; AA AA
1C20: inc a               ; 54
1C21: add a, z            ; 2A
1C22: jmp.nz $9552        ; A9 52 95
1C25: nop                 ; 00
1C26: nop                 ; 00
1C27: nop                 ; 00
1C28: xor a, y            ; 80
1C29: nop                 ; 00
1C2A: nop                 ; 00
1C2B: nop                 ; 00
1C2C: return              ; 20
1C2D: load y, $5D88       ; 10 88 5D
1C30: nop                 ; EF
1C31: nop                 ; BD
1C32: push x              ; 01
1C33: nop                 ; 00
1C34: nop                 ; 00
1C35: nop                 ; FC
1C36: nop                 ; FF
1C37: mul a, a            ; 4A
1C38: int $AA             ; AA AA
1C3A: int $6A             ; AA 6A
1C3C: int $52             ; AA 52
1C3E: mul a, w            ; 49
1C3F: mul a, w            ; 49
1C40: int $4A             ; AA 4A
1C42: mul a, a            ; 4A
1C43: inc z               ; 52
1C44: set a, $A5          ; 25 A5
1C46: int $52             ; AA 52
1C48: rol w               ; 95
1C49: int $4A             ; AA 4A
1C4B: dec x               ; 55
1C4C: dec x               ; 55
1C4D: push x              ; 01
1C4E: nop                 ; 00
1C4F: nop                 ; 00
1C50: nop                 ; 00
1C51: push a              ; 05
1C52: nop                 ; 00
1C53: sub a, w            ; 40
1C54: nop                 ; 00
1C55: nop                 ; 00
1C56: return              ; 20
1C57: nop                 ; BA
1C58: not w               ; 7D
1C59: nop                 ; F7
1C5A: push x              ; 01
1C5B: nop                 ; 00
1C5C: nop                 ; 00
1C5D: nop                 ; FC
1C5E: nop                 ; FF
1C5F: dec x               ; 55
1C60: jmp.neq $AA92       ; A5 92 AA
1C63: rol z               ; 94
1C64: int $54             ; AA 54
1C66: int $AA             ; AA AA
1C68: jmp.eq $9554        ; A4 54 95
1C6B: shl x, $54          ; 88 54
1C6D: dec x               ; 55
1C6E: rol x               ; 92
1C6F: rol z               ; 94
1C70: inc z               ; 52
1C71: mul a, w            ; 49
1C72: dec x               ; 55
1C73: mul a, a            ; 4A
1C74: mul a, w            ; 49
1C75: push y              ; 02
1C76: nop                 ; 00
1C77: nop                 ; 00
1C78: sub a, w            ; 40
1C79: push y              ; 02
1C7A: nop                 ; 00
1C7B: nop                 ; 00
1C7C: push y              ; 02
1C7D: nop                 ; 00
1C7E: nop                 ; B0
1C7F: nop                 ; AE
1C80: nop                 ; B7
1C81: nop                 ; FB
1C82: push x              ; 01
1C83: nop                 ; 00
1C84: nop                 ; 00
1C85: nop                 ; FC
1C86: nop                 ; FF
1C87: int $AA             ; AA AA
1C89: int $A4             ; AA A4
1C8B: int $92             ; AA 92
1C8D: int $4A             ; AA 4A
1C8F: rol x               ; 92
1C90: add a, z            ; 2A
1C91: jmp.neq $52A4       ; A5 A4 52
1C94: rol x               ; 92
1C95: inc z               ; 52
1C96: dec x               ; 55
1C97: dec x               ; 55
1C98: dec x               ; 55
1C99: dec x               ; 55
1C9A: rol x               ; 92
1C9B: inc z               ; 52
1C9C: int $0A             ; AA 0A
1C9E: nop                 ; 00
1C9F: sub a, w            ; 40
1CA0: nop                 ; 00
1CA1: push x              ; 01
1CA2: nop                 ; 00
1CA3: nop                 ; 00
1CA4: pop x               ; 08
1CA5: pop y               ; 09
1CA6: sub w, $DC          ; 44 DC
1CA8: nop                 ; FE
1CA9: nop                 ; DE
1CAA: nop                 ; 00
1CAB: nop                 ; 00
1CAC: nop                 ; 00
1CAD: nop                 ; FC
1CAE: nop                 ; FF
1CAF: jmp.nz $552A        ; A9 2A 55
1CB2: dec x               ; 55
1CB3: dec x               ; 55
1CB4: dec x               ; 55
1CB5: jmp.neq $2954       ; A5 54 29
1CB8: mul a, w            ; 49
1CB9: add a, y            ; 29
1CBA: dec x               ; 55
1CBB: set a, $A9          ; 25 A9
1CBD: rol z               ; 94
1CBE: int $AA             ; AA AA
1CC0: rol z               ; 94
1CC1: int $AA             ; AA AA
1CC3: inc a               ; 54
1CC4: dec x               ; 55
1CC5: push a              ; 05
1CC6: nop                 ; 00
1CC7: nop                 ; 00
1CC8: nop                 ; 00
1CC9: push x              ; 01
1CCA: nop                 ; 00
1CCB: nop                 ; 00
1CCC: sub a, w            ; 40
1CCD: nop                 ; 00
1CCE: sub a, w            ; 40
1CCF: and a, z            ; 6A
1CD0: nop                 ; EB
1CD1: and a, w            ; 6B
1CD2: nop                 ; 00
1CD3: nop                 ; 00
1CD4: nop                 ; 00
1CD5: nop                 ; FC
1CD6: nop                 ; FF
1CD7: add a, z            ; 2A
1CD8: jmp.nz $AAAA        ; A9 AA AA
1CDB: int $AA             ; AA AA
1CDD: add a, z            ; 2A
1CDE: set a, $A5          ; 25 A5
1CE0: int $AA             ; AA AA
1CE2: add a, z            ; 2A
1CE3: mul a, w            ; 49
1CE4: rol w               ; 95
1CE5: int $24             ; AA 24
1CE7: jmp.neq $A4AA       ; A5 AA A4
1CEA: mul a, a            ; 4A
1CEB: dec x               ; 55
1CEC: rol w               ; 95
1CED: load.xy a           ; 14
1CEE: nop                 ; 00
1CEF: nop                 ; 00
1CF0: nop                 ; 00
1CF1: nop                 ; 00
1CF2: nop                 ; 00
1CF3: nop                 ; 00
1CF4: nop                 ; 00
1CF5: nop                 ; 00
1CF6: load y, $BFDC       ; 10 DC BF
1CF9: not a               ; 7E
1CFA: nop                 ; 00
1CFB: nop                 ; 00
1CFC: nop                 ; 00
1CFD: nop                 ; FC
1CFE: nop                 ; FF
1CFF: dec x               ; 55
1D00: dec x               ; 55
1D01: dec x               ; 55
1D02: rol w               ; 95
1D03: inc z               ; 52
1D04: rol w               ; 95
1D05: inc a               ; 54
1D06: dec x               ; 55
1D07: rol w               ; 95
1D08: set w, $A5          ; 24 A5
1D0A: jmp.eq $52AA        ; A4 AA 52
1D0D: inc z               ; 52
1D0E: dec x               ; 55
1D0F: add a, y            ; 29
1D10: jmp.neq $292A       ; A5 2A 29
1D13: mul a, w            ; 49
1D14: inc z               ; 52
1D15: dec x               ; 55
1D16: nop                 ; 00
1D17: nop                 ; 00
1D18: nop                 ; 00
1D19: nop                 ; 00
1D1A: nop                 ; 00
1D1B: nop                 ; 00
1D1C: nop                 ; 00
1D1D: push y              ; 02
1D1E: nop                 ; 00
1D1F: nop                 ; E4
1D20: nop                 ; F6
1D21: add a, w            ; 2B
1D22: nop                 ; 00
1D23: nop                 ; 00
1D24: nop                 ; 00
1D25: nop                 ; FC
1D26: nop                 ; FF
1D27: jmp.neq $AAAA       ; A5 AA AA
1D2A: int $AA             ; AA AA
1D2C: inc z               ; 52
1D2D: jmp.neq $5252       ; A5 52 52
1D30: dec x               ; 55
1D31: add a, y            ; 29
1D32: rol w               ; 95
1D33: inc a               ; 54
1D34: int $2A             ; AA 2A
1D36: mul a, w            ; 49
1D37: dec x               ; 55
1D38: jmp.nz $AAAA        ; A9 AA AA
1D3B: int $AA             ; AA AA
1D3D: int $00             ; AA 00
1D3F: nop                 ; 00
1D40: nop                 ; 00
1D41: nop                 ; 00
1D42: nop                 ; 00
1D43: nop                 ; 00
1D44: set y, $20          ; 22 20
1D46: nop                 ; 00
1D47: nop                 ; B4
1D48: nop                 ; AF
1D49: sub a, y            ; 3E
1D4A: nop                 ; 00
1D4B: nop                 ; 00
1D4C: nop                 ; 00
1D4D: nop                 ; FC
1D4E: nop                 ; FF
1D4F: dec x               ; 55
1D50: dec x               ; 55
1D51: dec x               ; 55
1D52: dec x               ; 55
1D53: dec x               ; 55
1D54: int $2A             ; AA 2A
1D56: rol w               ; 95
1D57: add a, z            ; 2A
1D58: mul a, w            ; 49
1D59: mul a, a            ; 4A
1D5A: jmp.nz $4A92        ; A9 92 4A
1D5D: mul a, w            ; 49
1D5E: dec x               ; 55
1D5F: int $4A             ; AA 4A
1D61: inc z               ; 52
1D62: dec x               ; 55
1D63: rol w               ; 95
1D64: int $92             ; AA 92
1D66: push y              ; 02
1D67: nop                 ; 00
1D68: nop                 ; 00
1D69: nop                 ; 00
1D6A: push y              ; 02
1D6B: nop                 ; 00
1D6C: nop                 ; 00
1D6D: push w              ; 04
1D6E: nop                 ; 00
1D6F: nop                 ; F8
1D70: nop                 ; FA
1D71: store $0000, a      ; 1B 00 00
1D74: nop                 ; 00
1D75: nop                 ; FC
1D76: nop                 ; FF
1D77: rol z               ; 94
1D78: rol z               ; 94
1D79: int $AA             ; AA AA
1D7B: int $2A             ; AA 2A
1D7D: jmp.nz $A554        ; A9 54 A5
1D80: int $AA             ; AA AA
1D82: mul a, a            ; 4A
1D83: int $52             ; AA 52
1D85: int $A4             ; AA A4
1D87: mul a, a            ; 4A
1D88: int $2A             ; AA 2A
1D8A: mul a, w            ; 49
1D8B: inc z               ; 52
1D8C: mul a, w            ; 49
1D8D: int $0A             ; AA 0A
1D8F: nop                 ; 00
1D90: nop                 ; 00
1D91: nop                 ; 00
1D92: nop                 ; 00
1D93: nop                 ; 00
1D94: xor a, y            ; 80
1D95: nop                 ; 00
1D96: nop                 ; 00
1D97: jmp.z $16DF         ; A8 DF 16
1D9A: nop                 ; 00
1D9B: nop                 ; 00
1D9C: nop                 ; 00
1D9D: nop                 ; FC
1D9E: nop                 ; FF
1D9F: int $AA             ; AA AA
1DA1: rol x               ; 92
1DA2: inc z               ; 52
1DA3: mul a, a            ; 4A
1DA4: dec x               ; 55
1DA5: dec x               ; 55
1DA6: jmp.neq $2494       ; A5 94 24
1DA9: add a, y            ; 29
1DAA: dec x               ; 55
1DAB: set a, $49          ; 25 49
1DAD: set a, $95          ; 25 95
1DAF: inc a               ; 54
1DB0: jmp.nz $554A        ; A9 4A 55
1DB3: rol w               ; 95
1DB4: int $AA             ; AA AA
1DB6: load.xy a           ; 14
1DB7: nop                 ; 00
1DB8: nop                 ; 00
1DB9: nop                 ; 00
1DBA: nop                 ; 00
1DBB: nop                 ; 00
1DBC: load y, $0048       ; 10 48 00
1DBF: nop                 ; FC
1DC0: or y, $0F           ; 76 0F
1DC2: nop                 ; 00
1DC3: nop                 ; 00
1DC4: nop                 ; 00
1DC5: nop                 ; FC
1DC6: nop                 ; FF
1DC7: inc z               ; 52
1DC8: dec x               ; 55
1DC9: dec x               ; 55
1DCA: int $AA             ; AA AA
1DCC: mul a, a            ; 4A
1DCD: rol w               ; 95
1DCE: int $52             ; AA 52
1DD0: dec x               ; 55
1DD1: jmp.neq $A924       ; A5 24 A9
1DD4: add a, z            ; 2A
1DD5: jmp.nz $2552        ; A9 52 25
1DD8: rol w               ; 95
1DD9: inc a               ; 54
1DDA: dec x               ; 55
1DDB: jmp.nz $4AA4        ; A9 A4 4A
1DDE: dec x               ; 55
1DDF: nop                 ; 00
1DE0: nop                 ; 00
1DE1: nop                 ; 00
1DE2: nop                 ; 00
1DE3: nop                 ; 00
1DE4: nop                 ; 00
1DE5: push x              ; 01
1DE6: nop                 ; 00
1DE7: nop                 ; D0
1DE8: nop                 ; DD
1DE9: push a              ; 05
1DEA: nop                 ; 00
1DEB: nop                 ; 00
1DEC: nop                 ; 00
1DED: nop                 ; FC
1DEE: nop                 ; FF
1DEF: dec x               ; 55
1DF0: dec x               ; 55
1DF1: dec x               ; 55
1DF2: dec x               ; 55
1DF3: dec x               ; 55
1DF4: jmp.nz $94A4        ; A9 A4 94
1DF7: add a, z            ; 2A
1DF8: mul a, w            ; 49
1DF9: int $AA             ; AA AA
1DFB: mul a, a            ; 4A
1DFC: int $4A             ; AA 4A
1DFE: add a, z            ; 2A
1DFF: rol w               ; 95
1E00: inc z               ; 52
1E01: dec x               ; 55
1E02: inc z               ; 52
1E03: set a, $95          ; 25 95
1E05: inc a               ; 54
1E06: jmp.neq $0000       ; A5 00 00
1E09: nop                 ; 00
1E0A: nop                 ; 00
1E0B: nop                 ; 00
1E0C: nop                 ; 00
1E0D: nop                 ; 00
1E0E: push x              ; 01
1E0F: and x, $77          ; 6C 77
1E11: push.r              ; 07
1E12: nop                 ; 00
1E13: nop                 ; 00
1E14: nop                 ; 00
1E15: nop                 ; FC
1E16: nop                 ; FF
1E17: dec x               ; 55
1E18: int $54             ; AA 54
1E1A: dec x               ; 55
1E1B: jmp.nz $AAAA        ; A9 AA AA
1E1E: inc z               ; 52
1E1F: mul a, a            ; 4A
1E20: dec x               ; 55
1E21: mul a, w            ; 49
1E22: inc z               ; 52
1E23: int $92             ; AA 92
1E25: inc a               ; 54
1E26: mul a, w            ; 49
1E27: jmp.nz $A54A        ; A9 4A A5
1E2A: mul a, a            ; 4A
1E2B: int $52             ; AA 52
1E2D: dec x               ; 55
1E2E: jmp.nz $0002        ; A9 02 00
1E31: nop                 ; 00
1E32: nop                 ; 00
1E33: nop                 ; 00
1E34: sub a, w            ; 40
1E35: set w, $00          ; 24 00
1E37: nop                 ; D0
1E38: nop                 ; DE
1E39: push z              ; 03
1E3A: nop                 ; 00
1E3B: nop                 ; 00
1E3C: nop                 ; 00
1E3D: nop                 ; FC
1E3E: nop                 ; FF
1E3F: rol w               ; 95
1E40: inc z               ; 52
1E41: dec x               ; 55
1E42: jmp.neq $AAAA       ; A5 AA AA
1E45: int $AA             ; AA AA
1E47: inc z               ; 52
1E48: rol x               ; 92
1E49: int $4A             ; AA 4A
1E4B: add a, y            ; 29
1E4C: dec x               ; 55
1E4D: jmp.neq $2AAA       ; A5 AA 2A
1E50: dec x               ; 55
1E51: int $AA             ; AA AA
1E53: int $94             ; AA 94
1E55: set w, $95          ; 24 95
1E57: pop z               ; 0A
1E58: nop                 ; 00
1E59: nop                 ; 00
1E5A: nop                 ; 00
1E5B: nop                 ; 00
1E5C: nop                 ; 00
1E5D: nop                 ; 00
1E5E: push w              ; 04
1E5F: nop                 ; D4
1E60: not y               ; 7B
1E61: push x              ; 01
1E62: nop                 ; 00
1E63: nop                 ; 00
1E64: nop                 ; 00
1E65: nop                 ; FC
1E66: nop                 ; FF
1E67: jmp.eq $252A        ; A4 2A 25
1E6A: dec x               ; 55
1E6B: add a, z            ; 2A
1E6C: dec x               ; 55
1E6D: rol w               ; 95
1E6E: rol z               ; 94
1E6F: int $AA             ; AA AA
1E71: set w, $A9          ; 24 A9
1E73: mul a, a            ; 4A
1E74: mul a, w            ; 49
1E75: inc z               ; 52
1E76: inc z               ; 52
1E77: mul a, a            ; 4A
1E78: jmp.nz $5492        ; A9 92 54
1E7B: rol w               ; 95
1E7C: inc z               ; 52
1E7D: dec x               ; 55
1E7E: dec x               ; 55
1E7F: load.xy z           ; 15
1E80: nop                 ; 00
1E81: nop                 ; 00
1E82: nop                 ; 00
1E83: nop                 ; 00
1E84: nop                 ; 00
1E85: load z, $D400       ; 11 00 D4
1E88: nop                 ; D6
1E89: push x              ; 01
1E8A: nop                 ; 00
1E8B: nop                 ; 00
1E8C: nop                 ; 00
1E8D: nop                 ; FC
1E8E: nop                 ; FF
1E8F: dec x               ; 55
1E90: jmp.neq $AAAA       ; A5 AA AA
1E93: int $4A             ; AA 4A
1E95: jmp.nz $4A52        ; A9 52 4A
1E98: set a, $55          ; 25 55
1E9A: rol w               ; 95
1E9B: inc z               ; 52
1E9C: int $4A             ; AA 4A
1E9E: rol w               ; 95
1E9F: inc z               ; 52
1EA0: mul a, a            ; 4A
1EA1: dec x               ; 55
1EA2: set a, $A9          ; 25 A9
1EA4: mul a, a            ; 4A
1EA5: inc z               ; 52
1EA6: set a, $29          ; 25 29
1EA8: nop                 ; 00
1EA9: nop                 ; 00
1EAA: nop                 ; 00
1EAB: nop                 ; 00
1EAC: nop                 ; 00
1EAD: xor a, y            ; 80
1EAE: nop                 ; 00
1EAF: cmpbit y, $7F       ; 64 7F
1EB1: push x              ; 01
1EB2: nop                 ; 00
1EB3: nop                 ; 00
1EB4: nop                 ; 00
1EB5: nop                 ; FC
1EB6: nop                 ; FF
1EB7: int $54             ; AA 54
1EB9: dec x               ; 55
1EBA: mul a, w            ; 49
1EBB: dec x               ; 55
1EBC: dec x               ; 55
1EBD: dec x               ; 55
1EBE: dec x               ; 55
1EBF: add a, y            ; 29
1EC0: jmp.nz $5492        ; A9 92 54
1EC3: int $2A             ; AA 2A
1EC5: jmp.nz $AAA4        ; A9 A4 AA
1EC8: int $54             ; AA 54
1ECA: dec x               ; 55
1ECB: jmp.neq $9554       ; A5 54 95
1ECE: inc a               ; 54
1ECF: dec x               ; 55
1ED0: push x              ; 01
1ED1: nop                 ; 00
1ED2: nop                 ; 00
1ED3: nop                 ; 00
1ED4: nop                 ; 00
1ED5: push w              ; 04
1ED6: load y, $D5DC       ; 10 DC D5
1ED9: nop                 ; 00
1EDA: nop                 ; 00
1EDB: nop                 ; 00
1EDC: nop                 ; 00
1EDD: nop                 ; FC
1EDE: nop                 ; FF
1EDF: jmp.neq $A92A       ; A5 2A A9
1EE2: int $52             ; AA 52
1EE4: add a, y            ; 29
1EE5: jmp.neq $AAAA       ; A5 AA AA
1EE8: int $54             ; AA 54
1EEA: jmp.neq $494A       ; A5 4A 49
1EED: rol w               ; 95
1EEE: add a, z            ; 2A
1EEF: mul a, w            ; 49
1EF0: add a, y            ; 29
1EF1: dec x               ; 55
1EF2: dec x               ; 55
1EF3: dec x               ; 55
1EF4: set a, $A9          ; 25 A9
1EF6: int $52             ; AA 52
1EF8: push x              ; 01
1EF9: load y, $0000       ; 10 00 00
1EFC: load y, $0220       ; 10 20 02
1EFF: or a, w             ; 74
1F00: xor a, x            ; 7F
1F01: nop                 ; 00
1F02: nop                 ; 00
1F03: nop                 ; 00
1F04: nop                 ; 00
1F05: nop                 ; FC
1F06: nop                 ; FF
1F07: rol w               ; 95
1F08: int $2A             ; AA 2A
1F0A: dec x               ; 55
1F0B: add a, z            ; 2A
1F0C: dec x               ; 55
1F0D: dec x               ; 55
1F0E: mul a, a            ; 4A
1F0F: jmp.neq $4A94       ; A5 94 4A
1F12: rol w               ; 95
1F13: inc z               ; 52
1F14: int $54             ; AA 54
1F16: int $2A             ; AA 2A
1F18: jmp.neq $524A       ; A5 4A 52
1F1B: add a, z            ; 2A
1F1C: dec x               ; 55
1F1D: mul a, a            ; 4A
1F1E: rol x               ; 92
1F1F: rol z               ; 94
1F20: pop z               ; 0A
1F21: nop                 ; 00
1F22: nop                 ; 00
1F23: nop                 ; 00
1F24: sub a, w            ; 40
1F25: nop                 ; 00
1F26: nop                 ; 00
1F27: nop                 ; F8
1F28: dec y               ; 56
1F29: nop                 ; 00
1F2A: nop                 ; 00
1F2B: nop                 ; 00
1F2C: nop                 ; 00
1F2D: nop                 ; FC
1F2E: nop                 ; FF
1F2F: inc a               ; 54
1F30: mul a, w            ; 49
1F31: jmp.neq $4AAA       ; A5 AA 4A
1F34: jmp.neq $5294       ; A5 94 52
1F37: int $52             ; AA 52
1F39: add a, y            ; 29
1F3A: jmp.nz $9294        ; A9 94 92
1F3D: inc z               ; 52
1F3E: mul a, w            ; 49
1F3F: inc z               ; 52
1F40: dec x               ; 55
1F41: inc z               ; 52
1F42: dec x               ; 55
1F43: jmp.nz $A94A        ; A9 4A A9
1F46: int $AA             ; AA AA
1F48: pop z               ; 0A
1F49: xor a, w            ; 82
1F4A: nop                 ; 00
1F4B: nop                 ; 00
1F4C: nop                 ; 00
1F4D: xor a, z            ; 81
1F4E: return              ; 20
1F4F: jmp.z $003B         ; A8 3B 00
1F52: nop                 ; 00
1F53: nop                 ; 00
1F54: nop                 ; 00
1F55: nop                 ; FC
1F56: nop                 ; FF
1F57: int $AA             ; AA AA
1F59: inc a               ; 54
1F5A: mul a, w            ; 49
1F5B: jmp.nz $52AA        ; A9 AA 52
1F5E: dec x               ; 55
1F5F: rol w               ; 95
1F60: mul a, a            ; 4A
1F61: int $4A             ; AA 4A
1F63: dec x               ; 55
1F64: dec x               ; 55
1F65: rol w               ; 95
1F66: int $4A             ; AA 4A
1F68: rol x               ; 92
1F69: int $4A             ; AA 4A
1F6B: rol w               ; 95
1F6C: inc z               ; 52
1F6D: set a, $A9          ; 25 A9
1F6F: mul a, a            ; 4A
1F70: nop                 ; B2
1F71: load.xy z           ; 15
1F72: push y              ; 02
1F73: nop                 ; 00
1F74: inc a               ; 54
1F75: push w              ; 04
1F76: push w              ; 04
1F77: nop                 ; E0
1F78: store.xy w          ; 1E
1F79: nop                 ; 00
1F7A: nop                 ; 00
1F7B: nop                 ; 00
1F7C: nop                 ; 00
1F7D: nop                 ; FC
1F7E: nop                 ; FF
1F7F: int $2A             ; AA 2A
1F81: dec x               ; 55
1F82: int $AA             ; AA AA
1F84: rol z               ; 94
1F85: add a, z            ; 2A
1F86: rol w               ; 95
1F87: inc z               ; 52
1F88: dec x               ; 55
1F89: jmp.neq $5252       ; A5 52 52
1F8C: add a, z            ; 2A
1F8D: jmp.neq $5492       ; A5 92 54
1F90: dec x               ; 55
1F91: set a, $55          ; 25 55
1F93: jmp.neq $9494       ; A5 94 94
1F96: mul a, a            ; 4A
1F97: inc z               ; 52
1F98: dec x               ; 55
1F99: add a, z            ; 2A
1F9A: load y, $2000       ; 10 00 20
1F9D: push x              ; 01
1F9E: nop                 ; 00
1F9F: nop                 ; C0
1FA0: pop w               ; 0B
1FA1: nop                 ; 00
1FA2: nop                 ; 00
1FA3: nop                 ; 00
1FA4: nop                 ; 00
1FA5: nop                 ; FC
1FA6: nop                 ; FF
1FA7: dec x               ; 55
1FA8: dec x               ; 55
1FA9: rol w               ; 95
1FAA: add a, z            ; 2A
1FAB: rol w               ; 95
1FAC: inc z               ; 52
1FAD: jmp.nz $5552        ; A9 52 55
1FB0: add a, y            ; 29
1FB1: dec x               ; 55
1FB2: int $4A             ; AA 4A
1FB4: jmp.neq $AA54       ; A5 54 AA
1FB7: add a, z            ; 2A
1FB8: dec x               ; 55
1FB9: jmp.nz $AA52        ; A9 52 AA
1FBC: int $52             ; AA 52
1FBE: jmp.nz $492A        ; A9 2A 49
1FC1: jmp.nz $0000        ; A9 00 00
1FC4: nop                 ; EA
1FC5: push y              ; 02
1FC6: push x              ; 01
1FC7: xor a, z            ; 81
1FC8: store.xy w          ; 1E
1FC9: nop                 ; 00
1FCA: nop                 ; 00
1FCB: nop                 ; 00
1FCC: nop                 ; 00
1FCD: nop                 ; FC
1FCE: nop                 ; FF
1FCF: dec x               ; 55
1FD0: jmp.neq $A552       ; A5 52 A5
1FD3: jmp.eq $A52A        ; A4 2A A5
1FD6: inc a               ; 54
1FD7: mul a, a            ; 4A
1FD8: int $A4             ; AA A4
1FDA: mul a, a            ; 4A
1FDB: dec x               ; 55
1FDC: jmp.nz $254A        ; A9 4A 25
1FDF: mul a, w            ; 49
1FE0: mul a, w            ; 49
1FE1: int $54             ; AA 54
1FE3: dec x               ; 55
1FE4: dec x               ; 55
1FE5: rol w               ; 95
1FE6: rol z               ; 94
1FE7: int $2A             ; AA 2A
1FE9: jmp.neq $0042       ; A5 42 00
1FEC: or w, $01           ; 78 01
1FEE: mul a, z            ; 48
1FEF: nop                 ; 00
1FF0: pop w               ; 0B
1FF1: nop                 ; 00
1FF2: nop                 ; 00
1FF3: nop                 ; 00
1FF4: nop                 ; 00
1FF5: nop                 ; FC
1FF6: nop                 ; FF
1FF7: jmp.eq $54AA        ; A4 AA 54
1FFA: jmp.nz $A4AA        ; A9 AA A4
1FFD: add a, z            ; 2A
1FFE: rol w               ; 95
1FFF: inc z               ; 52
2000: rol w               ; 95
2001: add a, z            ; 2A
2002: jmp.nz $5524        ; A9 24 55
2005: inc z               ; 52
2006: jmp.nz $AAAA        ; A9 AA AA
2009: mul a, a            ; 4A
200A: rol w               ; 95
200B: mul a, a            ; 4A
200C: rol x               ; 92
200D: inc a               ; 54
200E: mul a, a            ; 4A
200F: mul a, w            ; 49
2010: jmp.neq $0494       ; A5 94 04
2013: push y              ; 02
2014: nop                 ; F4
2015: pop z               ; 0A
2016: nop                 ; 00
2017: nop                 ; 00
2018: push.f              ; 06
2019: nop                 ; 00
201A: nop                 ; 00
201B: nop                 ; 00
201C: nop                 ; 00
201D: nop                 ; FC
201E: nop                 ; FF
201F: dec x               ; 55
2020: int $4A             ; AA 4A
2022: rol w               ; 95
2023: rol x               ; 92
2024: add a, z            ; 2A
2025: mul a, w            ; 49
2026: mul a, w            ; 49
2027: jmp.nz $4AA4        ; A9 A4 4A
202A: rol w               ; 95
202B: int $92             ; AA 92
202D: add a, z            ; 2A
202E: dec x               ; 55
202F: rol x               ; 92
2030: rol z               ; 94
2031: int $AA             ; AA AA
2033: inc a               ; 54
2034: dec x               ; 55
2035: jmp.neq $2A52       ; A5 52 2A
2038: jmp.nz $0AAA        ; A9 AA 0A
203B: pop x               ; 08
203C: nop                 ; F9
203D: push x              ; 01
203E: nop                 ; 00
203F: pop x               ; 08
2040: push w              ; 04
2041: nop                 ; 00
2042: nop                 ; 00
2043: nop                 ; 00
2044: nop                 ; 00
2045: nop                 ; FC
2046: nop                 ; FF
2047: int $2A             ; AA 2A
2049: dec x               ; 55
204A: int $54             ; AA 54
204C: int $AA             ; AA AA
204E: inc z               ; 52
204F: add a, z            ; 2A
2050: dec x               ; 55
2051: jmp.nz $92A4        ; A9 A4 92
2054: int $AA             ; AA AA
2056: mul a, a            ; 4A
2057: dec x               ; 55
2058: jmp.neq $A4A4       ; A5 A4 A4
205B: int $AA             ; AA AA
205D: int $24             ; AA 24
205F: jmp.neq $252A       ; A5 2A 25
2062: dec x               ; 55
2063: return              ; 20
2064: nop                 ; C0
2065: push a              ; 05
2066: shr w, $00          ; 90 00
2068: nop                 ; 00
2069: nop                 ; 00
206A: nop                 ; 00
206B: nop                 ; 00
206C: nop                 ; 00
206D: nop                 ; FC
206E: nop                 ; FF
206F: rol x               ; 92
2070: inc z               ; 52
2071: dec x               ; 55
2072: add a, y            ; 29
2073: jmp.neq $9252       ; A5 52 92
2076: rol z               ; 94
2077: rol x               ; 92
2078: add a, z            ; 2A
2079: dec x               ; 55
207A: dec x               ; 55
207B: int $24             ; AA 24
207D: mul a, w            ; 49
207E: inc z               ; 52
207F: set a, $55          ; 25 55
2081: rol w               ; 95
2082: int $92             ; AA 92
2084: set w, $95          ; 24 95
2086: mul a, a            ; 4A
2087: jmp.nz $AA52        ; A9 52 AA
208A: inc a               ; 54
208B: mul a, z            ; 48
208C: inc a               ; 54
208D: push x              ; 01
208E: nop                 ; 00
208F: nop                 ; 00
2090: nop                 ; 00
2091: nop                 ; 00
2092: nop                 ; 00
2093: nop                 ; 00
2094: nop                 ; 00
2095: nop                 ; FC
2096: nop                 ; FF
2097: int $94             ; AA 94
2099: rol x               ; 92
209A: mul a, a            ; 4A
209B: rol w               ; 95
209C: mul a, a            ; 4A
209D: dec x               ; 55
209E: int $A4             ; AA A4
20A0: jmp.eq $524A        ; A4 4A 52
20A3: jmp.nz $AAAA        ; A9 AA AA
20A6: int $54             ; AA 54
20A8: add a, y            ; 29
20A9: dec x               ; 55
20AA: add a, z            ; 2A
20AB: dec x               ; 55
20AC: dec x               ; 55
20AD: jmp.nz $952A        ; A9 2A 95
20B0: rol z               ; 94
20B1: rol x               ; 92
20B2: inc z               ; 52
20B3: jmp $0211, a        ; A3 11 02
20B6: nop                 ; 00
20B7: push y              ; 02
20B8: nop                 ; 00
20B9: nop                 ; 00
20BA: nop                 ; 00
20BB: nop                 ; 00
20BC: nop                 ; 00
20BD: nop                 ; FC
20BE: nop                 ; FF
20BF: dec x               ; 55
20C0: dec x               ; 55
20C1: int $AA             ; AA AA
20C3: inc a               ; 54
20C4: int $A4             ; AA A4
20C6: rol x               ; 92
20C7: add a, z            ; 2A
20C8: dec x               ; 55
20C9: inc z               ; 52
20CA: rol w               ; 95
20CB: mul a, a            ; 4A
20CC: int $52             ; AA 52
20CE: set a, $55          ; 25 55
20D0: dec x               ; 55
20D1: jmp.nz $5552        ; A9 52 55
20D4: dec x               ; 55
20D5: dec x               ; 55
20D6: inc z               ; 52
20D7: dec x               ; 55
20D8: dec x               ; 55
20D9: dec x               ; 55
20DA: rol w               ; 95
20DB: xor y, $80          ; 84 80
20DD: nop                 ; 00
20DE: sub a, w            ; 40
20DF: nop                 ; 00
20E0: nop                 ; 00
20E1: nop                 ; 00
20E2: nop                 ; 00
20E3: nop                 ; 00
20E4: nop                 ; 00
20E5: nop                 ; FC
20E6: nop                 ; FF
20E7: mul a, a            ; 4A
20E8: mul a, a            ; 4A
20E9: mul a, w            ; 49
20EA: jmp.nz $AAAA        ; A9 AA AA
20ED: add a, z            ; 2A
20EE: dec x               ; 55
20EF: rol x               ; 92
20F0: rol x               ; 92
20F1: add a, z            ; 2A
20F2: dec x               ; 55
20F3: dec x               ; 55
20F4: mul a, w            ; 49
20F5: add a, z            ; 2A
20F6: jmp.nz $9492        ; A9 92 94
20F9: mul a, a            ; 4A
20FA: dec x               ; 55
20FB: add a, y            ; 29
20FC: set a, $A5          ; 25 A5
20FE: int $A4             ; AA A4
2100: mul a, a            ; 4A
2101: mul a, w            ; 49
2102: inc z               ; 52
2103: load.xy z           ; 15
2104: pop w               ; 0B
2105: nop                 ; 00
2106: nop                 ; 00
2107: nop                 ; 00
2108: nop                 ; 00
2109: nop                 ; 00
210A: nop                 ; 00
210B: nop                 ; 00
210C: nop                 ; 00
210D: nop                 ; FC
210E: nop                 ; FF
210F: int $52             ; AA 52
2111: dec x               ; 55
2112: mul a, a            ; 4A
2113: jmp.nz $AA92        ; A9 92 AA
2116: jmp.eq $54AA        ; A4 AA 54
2119: dec x               ; 55
211A: mul a, w            ; 49
211B: int $AA             ; AA AA
211D: mul a, a            ; 4A
211E: dec x               ; 55
211F: dec x               ; 55
2120: jmp.neq $A552       ; A5 52 A5
2123: int $54             ; AA 54
2125: dec x               ; 55
2126: rol w               ; 95
2127: add a, z            ; 2A
2128: add a, y            ; 29
2129: dec x               ; 55
212A: mul a, w            ; 49
212B: add a, y            ; 29
212C: set w, $00          ; 24 00
212E: nop                 ; 00
212F: nop                 ; 00
2130: nop                 ; 00
2131: nop                 ; 00
2132: nop                 ; 00
2133: nop                 ; 00
2134: nop                 ; 00
2135: nop                 ; FC
2136: nop                 ; FF
2137: jmp.neq $AAAA       ; A5 AA AA
213A: add a, z            ; 2A
213B: rol w               ; 95
213C: inc a               ; 54
213D: dec x               ; 55
213E: rol w               ; 95
213F: set w, $49          ; 24 49
2141: rol x               ; 92
2142: int $2A             ; AA 2A
2144: dec x               ; 55
2145: jmp.nz $5494        ; A9 94 54
2148: int $54             ; AA 54
214A: add a, z            ; 2A
214B: jmp.neq $94AA       ; A5 AA 94
214E: inc a               ; 54
214F: dec x               ; 55
2150: dec x               ; 55
2151: set a, $55          ; 25 55
2153: int $90             ; AA 90
2155: nop                 ; 00
2156: nop                 ; 00
2157: nop                 ; 00
2158: nop                 ; 00
2159: nop                 ; 00
215A: nop                 ; 00
215B: nop                 ; 00
215C: nop                 ; 00
215D: nop                 ; FC
215E: nop                 ; FF
215F: add a, y            ; 29
2160: rol w               ; 95
2161: int $AA             ; AA AA
2163: inc z               ; 52
2164: dec x               ; 55
2165: inc z               ; 52
2166: dec x               ; 55
2167: dec x               ; 55
2168: jmp.neq $9254       ; A5 54 92
216B: jmp.eq $AA92        ; A4 92 AA
216E: int $4A             ; AA 4A
2170: add a, y            ; 29
2171: dec x               ; 55
2172: jmp.nz $92AA        ; A9 AA 92
2175: inc z               ; 52
2176: jmp.neq $A4A4       ; A5 A4 A4
2179: inc a               ; 54
217A: mul a, w            ; 49
217B: jmp.neq $0042       ; A5 42 00
217E: nop                 ; 00
217F: push w              ; 04
2180: nop                 ; 00
2181: nop                 ; 00
2182: nop                 ; 00
2183: nop                 ; 00
2184: nop                 ; 00
2185: nop                 ; FC
2186: nop                 ; FF
2187: dec x               ; 55
2188: jmp.nz $4A94        ; A9 94 4A
218B: dec x               ; 55
218C: dec x               ; 55
218D: rol w               ; 95
218E: inc z               ; 52
218F: rol x               ; 92
2190: rol z               ; 94
2191: mul a, a            ; 4A
2192: dec x               ; 55
2193: jmp.nz $2554        ; A9 54 25
2196: jmp.neq $4AAA       ; A5 AA 4A
2199: set a, $55          ; 25 55
219B: jmp.nz $AAAA        ; A9 AA AA
219E: int $2A             ; AA 2A
21A0: dec x               ; 55
21A1: dec x               ; 55
21A2: set a, $49          ; 25 49
21A4: pop z               ; 0A
21A5: push y              ; 02
21A6: nop                 ; 00
21A7: nop                 ; 00
21A8: nop                 ; 00
21A9: nop                 ; 00
21AA: nop                 ; 00
21AB: nop                 ; 00
21AC: nop                 ; 00
21AD: nop                 ; FC
21AE: nop                 ; FF
21AF: jmp.neq $AAAA       ; A5 AA AA
21B2: inc a               ; 54
21B3: mul a, a            ; 4A
21B4: rol x               ; 92
21B5: int $4A             ; AA 4A
21B7: dec x               ; 55
21B8: inc z               ; 52
21B9: inc z               ; 52
21BA: jmp.neq $554A       ; A5 4A 55
21BD: int $2A             ; AA 2A
21BF: add a, y            ; 29
21C0: dec x               ; 55
21C1: jmp.nz $4A4A        ; A9 4A 4A
21C4: int $4A             ; AA 4A
21C6: mul a, a            ; 4A
21C7: dec x               ; 55
21C8: mul a, w            ; 49
21C9: set a, $55          ; 25 55
21CB: dec x               ; 55
21CC: pop y               ; 09
21CD: add a, x            ; 28
21CE: nop                 ; 00
21CF: nop                 ; 00
21D0: nop                 ; 00
21D1: nop                 ; 00
21D2: nop                 ; 00
21D3: nop                 ; 00
21D4: nop                 ; 00
21D5: nop                 ; FC
21D6: nop                 ; FF
21D7: inc a               ; 54
21D8: mul a, a            ; 4A
21D9: dec x               ; 55
21DA: jmp.neq $5552       ; A5 52 55
21DD: jmp.neq $4954       ; A5 54 49
21E0: rol w               ; 95
21E1: int $54             ; AA 54
21E3: add a, z            ; 2A
21E4: rol w               ; 95
21E5: int $52             ; AA 52
21E7: jmp.neq $5552       ; A5 52 55
21EA: jmp.nz $AAAA        ; A9 AA AA
21ED: inc a               ; 54
21EE: dec x               ; 55
21EF: rol x               ; 92
21F0: add a, z            ; 2A
21F1: jmp.nz $2492        ; A9 92 24
21F4: dec x               ; 55
21F5: nop                 ; 00
21F6: push x              ; 01
21F7: nop                 ; 00
21F8: nop                 ; 00
21F9: nop                 ; 00
21FA: nop                 ; 00
21FB: nop                 ; 00
21FC: nop                 ; 00
21FD: nop                 ; FC
21FE: nop                 ; FF
21FF: mul a, a            ; 4A
2200: jmp.nz $5552        ; A9 52 55
2203: rol w               ; 95
2204: jmp.eq $5554        ; A4 54 55
2207: int $A4             ; AA A4
2209: set w, $95          ; 24 95
220B: inc z               ; 52
220C: jmp.nz $5492        ; A9 92 54
220F: dec x               ; 55
2210: rol w               ; 95
2211: mul a, a            ; 4A
2212: int $AA             ; AA AA
2214: rol x               ; 92
2215: inc z               ; 52
2216: jmp.nz $52AA        ; A9 AA 52
2219: dec x               ; 55
221A: int $AA             ; AA AA
221C: inc z               ; 52
221D: push x              ; 01
221E: nop                 ; 00
221F: nop                 ; 00
2220: nop                 ; 00
2221: nop                 ; 00
2222: nop                 ; 00
2223: nop                 ; 00
2224: nop                 ; 00
2225: nop                 ; FC
2226: nop                 ; FF
2227: inc z               ; 52
2228: jmp.neq $9494       ; A5 94 94
222B: inc a               ; 54
222C: rol w               ; 95
222D: rol x               ; 92
222E: inc z               ; 52
222F: set a, $29          ; 25 29
2231: mul a, w            ; 49
2232: jmp.neq $4AAA       ; A5 AA 4A
2235: dec x               ; 55
2236: rol w               ; 95
2237: rol z               ; 94
2238: inc a               ; 54
2239: inc z               ; 52
223A: set a, $29          ; 25 29
223C: dec x               ; 55
223D: dec x               ; 55
223E: mul a, a            ; 4A
223F: jmp.nz $9494        ; A9 94 94
2242: mul a, a            ; 4A
2243: mul a, w            ; 49
2244: int $54             ; AA 54
2246: add a, y            ; 29
2247: nop                 ; 00
2248: nop                 ; 00
2249: nop                 ; 00
224A: nop                 ; 00
224B: nop                 ; 00
224C: nop                 ; 00
224D: nop                 ; FC
224E: nop                 ; FF
224F: int $2A             ; AA 2A
2251: dec x               ; 55
2252: dec x               ; 55
2253: set a, $A9          ; 25 A9
2255: int $4A             ; AA 4A
2257: dec x               ; 55
2258: jmp.neq $292A       ; A5 2A 29
225B: set a, $55          ; 25 55
225D: int $AA             ; AA AA
225F: int $AA             ; AA AA
2261: int $AA             ; AA AA
2263: int $AA             ; AA AA
2265: mul a, a            ; 4A
2266: dec x               ; 55
2267: mul a, a            ; 4A
2268: dec x               ; 55
2269: jmp.neq $952A       ; A5 2A 95
226C: set w, $25          ; 24 25
226E: jmp.neq $0000       ; A5 00 00
2271: nop                 ; 00
2272: nop                 ; 00
2273: nop                 ; 00
2274: nop                 ; 00
2275: nop                 ; FC
2276: nop                 ; FF
2277: dec x               ; 55
2278: inc z               ; 52
2279: jmp.neq $554A       ; A5 4A 55
227C: set a, $49          ; 25 49
227E: int $54             ; AA 54
2280: load.xy z           ; 15
2281: mul a, w            ; 49
2282: inc z               ; 52
2283: jmp.nz $2552        ; A9 52 25
2286: mul a, w            ; 49
2287: jmp.neq $954A       ; A5 4A 95
228A: inc z               ; 52
228B: jmp.neq $AA54       ; A5 54 AA
228E: inc z               ; 52
228F: dec x               ; 55
2290: mul a, a            ; 4A
2291: int $A4             ; AA A4
2293: jmp.eq $954A        ; A4 4A 95
2296: load.xy a           ; 14
2297: push x              ; 01
2298: nop                 ; 00
2299: nop                 ; 00
229A: nop                 ; 00
229B: nop                 ; 00
229C: nop                 ; 00
229D: nop                 ; FC
229E: nop                 ; FF
229F: rol w               ; 95
22A0: mul a, a            ; 4A
22A1: rol w               ; 95
22A2: inc a               ; 54
22A3: inc z               ; 52
22A4: int $AA             ; AA AA
22A6: add a, z            ; 2A
22A7: set a, $A9          ; 25 A9
22A9: jmp.eq $4A4A        ; A4 4A 4A
22AC: int $AA             ; AA AA
22AE: int $54             ; AA 54
22B0: add a, z            ; 2A
22B1: jmp.nz $5494        ; A9 94 54
22B4: jmp.neq $4A52       ; A5 52 4A
22B7: jmp.nz $4952        ; A9 52 49
22BA: dec x               ; 55
22BB: dec x               ; 55
22BC: inc z               ; 52
22BD: inc z               ; 52
22BE: inc z               ; 52
22BF: push y              ; 02
22C0: nop                 ; 00
22C1: nop                 ; 00
22C2: nop                 ; 00
22C3: nop                 ; 00
22C4: nop                 ; 00
22C5: nop                 ; FC
22C6: nop                 ; FF
22C7: inc z               ; 52
22C8: add a, y            ; 29
22C9: jmp.nz $954A        ; A9 4A 95
22CC: rol x               ; 92
22CD: set w, $A5          ; 24 A5
22CF: int $4A             ; AA 4A
22D1: rol w               ; 95
22D2: inc a               ; 54
22D3: dec x               ; 55
22D4: add a, y            ; 29
22D5: jmp.nz $AAAA        ; A9 AA AA
22D8: inc z               ; 52
22D9: set a, $55          ; 25 55
22DB: rol w               ; 95
22DC: int $AA             ; AA AA
22DE: add a, z            ; 2A
22DF: rol w               ; 95
22E0: int $2A             ; AA 2A
22E2: mul a, w            ; 49
22E3: rol x               ; 92
22E4: add a, z            ; 2A
22E5: jmp.nz $094A        ; A9 4A 09
22E8: nop                 ; 00
22E9: nop                 ; 00
22EA: nop                 ; 00
22EB: nop                 ; 00
22EC: nop                 ; 00
22ED: nop                 ; FC
22EE: nop                 ; FF
22EF: inc a               ; 54
22F0: dec x               ; 55
22F1: set a, $29          ; 25 29
22F3: jmp.nz $5554        ; A9 54 55
22F6: jmp.nz $2A54        ; A9 54 2A
22F9: mul a, w            ; 49
22FA: rol x               ; 92
22FB: jmp.eq $254A        ; A4 4A 25
22FE: mul a, w            ; 49
22FF: rol w               ; 95
2300: int $AA             ; AA AA
2302: add a, z            ; 2A
2303: jmp.nz $9554        ; A9 54 95
2306: int $52             ; AA 52
2308: mul a, a            ; 4A
2309: inc z               ; 52
230A: dec x               ; 55
230B: dec x               ; 55
230C: inc z               ; 52
230D: set a, $29          ; 25 29
230F: set a, $00          ; 25 00
2311: nop                 ; 00
2312: nop                 ; 00
2313: nop                 ; 00
2314: nop                 ; 00
2315: nop                 ; FC
2316: nop                 ; FF
2317: rol w               ; 95
2318: rol z               ; 94
2319: inc a               ; 54
231A: dec x               ; 55
231B: rol w               ; 95
231C: mul a, a            ; 4A
231D: rol x               ; 92
231E: rol z               ; 94
231F: mul a, a            ; 4A
2320: jmp.neq $5552       ; A5 52 55
2323: dec x               ; 55
2324: int $AA             ; AA AA
2326: add a, z            ; 2A
2327: jmp.neq $94AA       ; A5 AA 94
232A: jmp.eq $954A        ; A4 4A 95
232D: inc a               ; 54
232E: jmp.neq $52AA       ; A5 AA 52
2331: rol w               ; 95
2332: set w, $49          ; 24 49
2334: rol w               ; 95
2335: rol z               ; 94
2336: mul a, a            ; 4A
2337: load w, $0000       ; 12 00 00
233A: nop                 ; 00
233B: nop                 ; 00
233C: nop                 ; 00
233D: nop                 ; FC
233E: nop                 ; FF
233F: jmp.nz $5552        ; A9 52 55
2342: inc z               ; 52
2343: inc z               ; 52
2344: inc z               ; 52
2345: mul a, w            ; 49
2346: jmp.neq $A954       ; A5 54 A9
2349: mul a, a            ; 4A
234A: rol x               ; 92
234B: set w, $29          ; 24 29
234D: dec x               ; 55
234E: dec x               ; 55
234F: dec x               ; 55
2350: mul a, a            ; 4A
2351: dec x               ; 55
2352: inc z               ; 52
2353: inc z               ; 52
2354: jmp.nz $94AA        ; A9 AA 94
2357: jmp.eq $A494        ; A4 94 A4
235A: inc z               ; 52
235B: dec x               ; 55
235C: inc z               ; 52
235D: inc z               ; 52
235E: inc z               ; 52
235F: mul a, w            ; 49
2360: nop                 ; 00
2361: nop                 ; 00
2362: nop                 ; 00
2363: nop                 ; 00
2364: nop                 ; 00
2365: nop                 ; FC
2366: nop                 ; FF
2367: mul a, a            ; 4A
2368: mul a, a            ; 4A
2369: rol x               ; 92
236A: mul a, a            ; 4A
236B: jmp.neq $AA4A       ; A5 4A AA
236E: rol z               ; 94
236F: inc z               ; 52
2370: add a, z            ; 2A
2371: jmp.nz $5524        ; A9 24 55
2374: jmp.neq $A524       ; A5 24 A5
2377: inc a               ; 54
2378: add a, y            ; 29
2379: jmp.neq $552A       ; A5 2A 55
237C: mul a, a            ; 4A
237D: jmp.neq $2AAA       ; A5 AA 2A
2380: dec x               ; 55
2381: dec x               ; 55
2382: mul a, a            ; 4A
2383: rol x               ; 92
2384: mul a, a            ; 4A
2385: rol w               ; 95
2386: set w, $AA          ; 24 AA
2388: push y              ; 02
2389: nop                 ; 00
238A: nop                 ; 00
238B: nop                 ; 00
238C: nop                 ; 00
238D: nop                 ; FC
238E: nop                 ; FF
238F: inc z               ; 52
2390: jmp.nz $294A        ; A9 4A 29
2393: mul a, w            ; 49
2394: rol x               ; 92
2395: load w, $A529       ; 12 29 A5
2398: inc z               ; 52
2399: rol w               ; 95
239A: mul a, a            ; 4A
239B: mul a, w            ; 49
239C: dec x               ; 55
239D: dec x               ; 55
239E: dec x               ; 55
239F: dec x               ; 55
23A0: dec x               ; 55
23A1: jmp.nz $A544        ; A9 44 A5
23A4: add a, z            ; 2A
23A5: rol w               ; 95
23A6: int $4A             ; AA 4A
23A8: add a, y            ; 29
23A9: mul a, w            ; 49
23AA: add a, y            ; 29
23AB: jmp.nz $A494        ; A9 94 A4
23AE: mul a, a            ; 4A
23AF: shr a, $08          ; 91 08
23B1: nop                 ; 00
23B2: nop                 ; 00
23B3: nop                 ; 00
23B4: nop                 ; 00
23B5: nop                 ; FC
23B6: nop                 ; FF
23B7: dec x               ; 55
23B8: mul a, a            ; 4A
23B9: inc z               ; 52
23BA: jmp.neq $A92A       ; A5 2A A9
23BD: jmp.eq $294A        ; A4 4A 29
23C0: rol w               ; 95
23C1: inc z               ; 52
23C2: inc z               ; 52
23C3: add a, z            ; 2A
23C4: mul a, w            ; 49
23C5: inc z               ; 52
23C6: add a, y            ; 29
23C7: set a, $55          ; 25 55
23C9: rol w               ; 95
23CA: int $94             ; AA 94
23CC: inc z               ; 52
23CD: jmp.nz $5252        ; A9 52 52
23D0: jmp.neq $4A52       ; A5 52 4A
23D3: rol w               ; 95
23D4: inc z               ; 52
23D5: mul a, w            ; 49
23D6: rol x               ; 92
23D7: mul a, a            ; 4A
23D8: load w, $0000       ; 12 00 00
23DB: nop                 ; 00
23DC: nop                 ; 00
23DD: nop                 ; FC
23DE: nop                 ; FF
23DF: set a, $A5          ; 25 A5
23E1: rol z               ; 94
23E2: rol z               ; 94
23E3: jmp.eq $5524        ; A4 24 55
23E6: inc z               ; 52
23E7: mul a, a            ; 4A
23E8: jmp.nz $4954        ; A9 54 49
23EB: inc y               ; 51
23EC: dec x               ; 55
23ED: rol w               ; 95
23EE: int $54             ; AA 54
23F0: mul a, w            ; 49
23F1: dec x               ; 55
23F2: add a, y            ; 29
23F3: dec x               ; 55
23F4: int $AA             ; AA AA
23F6: int $2A             ; AA 2A
23F8: rol w               ; 95
23F9: rol z               ; 94
23FA: inc z               ; 52
23FB: set y, $49          ; 22 49
23FD: add a, z            ; 2A
23FE: add a, y            ; 29
23FF: add a, y            ; 29
2400: sub a, $00          ; 45 00
2402: nop                 ; 00
2403: nop                 ; 00
2404: nop                 ; 00
2405: nop                 ; FC
2406: nop                 ; FF
2407: inc a               ; 54
2408: rol w               ; 95
2409: inc z               ; 52
240A: add a, z            ; 2A
240B: rol w               ; 95
240C: mul a, a            ; 4A
240D: rol x               ; 92
240E: set w, $A9          ; 24 A9
2410: mul a, a            ; 4A
2411: rol w               ; 95
2412: add a, z            ; 2A
2413: rol w               ; 95
2414: set w, $55          ; 24 55
2416: mul a, a            ; 4A
2417: dec x               ; 55
2418: dec x               ; 55
2419: jmp.neq $4AAA       ; A5 AA 4A
241C: rol w               ; 95
241D: inc a               ; 54
241E: add a, z            ; 2A
241F: mul a, w            ; 49
2420: inc z               ; 52
2421: jmp.neq $5494       ; A5 94 54
2424: add a, z            ; 2A
2425: jmp.neq $44A4       ; A5 A4 44
2428: rol x               ; 92
2429: nop                 ; 00
242A: nop                 ; 00
242B: nop                 ; 00
242C: nop                 ; 00
242D: nop                 ; FC
242E: nop                 ; FF
242F: mul a, w            ; 49
2430: inc z               ; 52
2431: mul a, a            ; 4A
2432: mul a, w            ; 49
2433: mul a, w            ; 49
2434: inc z               ; 52
2435: mul a, w            ; 49
2436: rol w               ; 95
2437: rol x               ; 92
2438: inc a               ; 54
2439: inc z               ; 52
243A: rol x               ; 92
243B: jmp.eq $A4AA        ; A4 AA A4
243E: inc z               ; 52
243F: mul a, w            ; 49
2440: dec x               ; 55
2441: add a, z            ; 2A
2442: jmp.neq $A954       ; A5 54 A9
2445: rol x               ; 92
2446: inc z               ; 52
2447: dec x               ; 55
2448: mul a, w            ; 49
2449: rol x               ; 92
244A: inc z               ; 52
244B: jmp.neq $4952       ; A5 52 49
244E: rol x               ; 92
244F: inc z               ; 52
2450: mul a, w            ; 49
2451: push y              ; 02
2452: nop                 ; 00
2453: nop                 ; 00
2454: nop                 ; 00
2455: nop                 ; FC
2456: nop                 ; FF
2457: int $94             ; AA 94
2459: rol x               ; 92
245A: inc z               ; 52
245B: inc z               ; 52
245C: mul a, w            ; 49
245D: int $A4             ; AA A4
245F: inc a               ; 54
2460: rol x               ; 92
2461: mul a, a            ; 4A
2462: dec x               ; 55
2463: add a, y            ; 29
2464: mul a, w            ; 49
2465: dec x               ; 55
2466: dec x               ; 55
2467: add a, z            ; 2A
2468: mul a, w            ; 49
2469: jmp.nz $252A        ; A9 2A 25
246C: jmp.neq $4AAA       ; A5 AA 4A
246F: set a, $95          ; 25 95
2471: mul a, a            ; 4A
2472: mul a, a            ; 4A
2473: load w, $2A49       ; 12 49 2A
2476: set a, $29          ; 25 29
2478: rol x               ; 92
2479: push w              ; 04
247A: nop                 ; 00
247B: nop                 ; 00
247C: nop                 ; 00
247D: nop                 ; FC
247E: nop                 ; FF
247F: rol x               ; 92
2480: inc z               ; 52
2481: add a, z            ; 2A
2482: rol w               ; 95
2483: mul a, a            ; 4A
2484: add a, z            ; 2A
2485: shl y, $92          ; 89 92
2487: rol x               ; 92
2488: int $54             ; AA 54
248A: mul a, w            ; 49
248B: mul a, a            ; 4A
248C: add a, z            ; 2A
248D: mul a, w            ; 49
248E: mul a, a            ; 4A
248F: dec x               ; 55
2490: dec x               ; 55
2491: dec x               ; 55
2492: int $AA             ; AA AA
2494: add a, z            ; 2A
2495: jmp.neq $AA54       ; A5 54 AA
2498: inc z               ; 52
2499: rol x               ; 92
249A: set w, $49          ; 24 49
249C: add a, z            ; 2A
249D: mul a, w            ; 49
249E: mul a, w            ; 49
249F: sub w, $49          ; 44 49
24A1: load w, $0000       ; 12 00 00
24A4: nop                 ; 00
24A5: nop                 ; FC
24A6: nop                 ; FF
24A7: inc a               ; 54
24A8: mul a, a            ; 4A
24A9: mul a, w            ; 49
24AA: mul a, w            ; 49
24AB: rol x               ; 92
24AC: sub w, $25          ; 44 25
24AE: jmp.nz $92A4        ; A9 A4 92
24B1: inc z               ; 52
24B2: int $52             ; AA 52
24B4: mul a, w            ; 49
24B5: dec x               ; 55
24B6: jmp.nz $5552        ; A9 52 55
24B9: mul a, a            ; 4A
24BA: mul a, w            ; 49
24BB: jmp.nz $94AA        ; A9 AA 94
24BE: int $52             ; AA 52
24C0: mul a, a            ; 4A
24C1: add a, y            ; 29
24C2: jmp.nz $92AA        ; A9 AA 92
24C5: rol x               ; 92
24C6: rol z               ; 94
24C7: inc z               ; 52
24C8: rol x               ; 92
24C9: set w, $00          ; 24 00
24CB: nop                 ; 00
24CC: nop                 ; 00
24CD: nop                 ; FC
24CE: nop                 ; FF
24CF: jmp.neq $2492       ; A5 92 24
24D2: set a, $A9          ; 25 A9
24D4: rol x               ; 92
24D5: inc a               ; 54
24D6: mul a, a            ; 4A
24D7: add a, z            ; 2A
24D8: jmp.nz $254A        ; A9 4A 25
24DB: mul a, w            ; 49
24DC: inc z               ; 52
24DD: rol x               ; 92
24DE: add a, z            ; 2A
24DF: rol w               ; 95
24E0: jmp.eq $AAAA        ; A4 AA AA
24E3: mul a, a            ; 4A
24E4: inc z               ; 52
24E5: dec x               ; 55
24E6: mul a, w            ; 49
24E7: rol w               ; 95
24E8: add a, z            ; 2A
24E9: jmp.neq $2244       ; A5 44 22
24EC: jmp.eq $5254        ; A4 54 52
24EF: shl z, $24          ; 8A 24
24F1: shr a, $00          ; 91 00
24F3: nop                 ; 00
24F4: nop                 ; 00
24F5: nop                 ; FC
24F6: nop                 ; FF
24F7: rol x               ; 92
24F8: inc a               ; 54
24F9: int $A8             ; AA A8
24FB: set w, $29          ; 24 29
24FD: shr a, $92          ; 91 92
24FF: rol x               ; 92
2500: rol z               ; 94
2501: rol z               ; 94
2502: inc a               ; 54
2503: rol w               ; 95
2504: rol z               ; 94
2505: inc a               ; 54
2506: jmp.neq $2AAA       ; A5 AA 2A
2509: jmp.neq $54AA       ; A5 AA 54
250C: rol w               ; 95
250D: mul a, a            ; 4A
250E: add a, z            ; 2A
250F: jmp.nz $14A4        ; A9 A4 14
2512: add a, y            ; 29
2513: mul a, w            ; 49
2514: add a, y            ; 29
2515: set a, $25          ; 25 25
2517: set x, $49          ; 21 49
2519: set w, $01          ; 24 01
251B: nop                 ; 00
251C: nop                 ; 00
251D: nop                 ; FC
251E: nop                 ; FF
251F: inc a               ; 54
2520: rol x               ; 92
2521: rol x               ; 92
2522: mul a, a            ; 4A
2523: rol x               ; 92
2524: jmp.eq $4924        ; A4 24 49
2527: mul a, a            ; 4A
2528: jmp.neq $2552       ; A5 52 25
252B: jmp.nz $2552        ; A9 52 25
252E: dec x               ; 55
252F: jmp.nz $2AAA        ; A9 AA 2A
2532: mul a, w            ; 49
2533: rol w               ; 95
2534: inc a               ; 54
2535: inc z               ; 52
2536: jmp.neq $294A       ; A5 4A 29
2539: mul a, w            ; 49
253A: rol x               ; 92
253B: rol z               ; 94
253C: sub w, $48          ; 44 48
253E: rol z               ; 94
253F: rol z               ; 94
2540: set w, $89          ; 24 89
2542: push w              ; 04
2543: nop                 ; 00
2544: nop                 ; 00
2545: nop                 ; FC
2546: nop                 ; FF
2547: set a, $25          ; 25 25
2549: mul a, w            ; 49
254A: rol x               ; 92
254B: add a, z            ; 2A
254C: load.xy z           ; 15
254D: rol w               ; 95
254E: jmp.eq $4924        ; A4 24 49
2551: add a, z            ; 2A
2552: jmp.nz $4A4A        ; A9 4A 4A
2555: inc z               ; 52
2556: add a, y            ; 29
2557: set a, $A5          ; 25 A5
2559: inc z               ; 52
255A: dec x               ; 55
255B: inc z               ; 52
255C: jmp.neq $552A       ; A5 2A 55
255F: inc z               ; 52
2560: mul a, a            ; 4A
2561: jmp.neq $4524       ; A5 24 45
2564: rol x               ; 92
2565: rol x               ; 92
2566: set y, $25          ; 22 25
2568: mul a, w            ; 49
2569: set y, $09          ; 22 09
256B: nop                 ; 00
256C: nop                 ; 00
256D: nop                 ; FC
256E: nop                 ; FF
256F: mul a, z            ; 48
2570: jmp.nz $4924        ; A9 24 49
2573: sub w, $A2          ; 44 A2
2575: mul a, z            ; 48
2576: rol x               ; 92
2577: inc z               ; 52
2578: add a, z            ; 2A
2579: mul a, w            ; 49
257A: rol w               ; 95
257B: jmp.eq $9524        ; A4 24 95
257E: mul a, a            ; 4A
257F: dec x               ; 55
2580: add a, y            ; 29
2581: dec x               ; 55
2582: rol w               ; 95
2583: int $AA             ; AA AA
2585: inc a               ; 54
2586: mul a, w            ; 49
2587: rol w               ; 95
2588: inc z               ; 52
2589: rol x               ; 92
258A: rol x               ; 92
258B: add a, x            ; 28
258C: mul a, w            ; 49
258D: int $94             ; AA 94
258F: mul a, z            ; 48
2590: rol x               ; 92
2591: rol z               ; 94
2592: set w, $00          ; 24 00
2594: nop                 ; 00
2595: nop                 ; FC
2596: nop                 ; FF
2597: inc z               ; 52
2598: load w, $54A9       ; 12 A9 54
259B: add a, y            ; 29
259C: mul a, w            ; 49
259D: rol x               ; 92
259E: inc a               ; 54
259F: rol z               ; 94
25A0: jmp.eq $A492        ; A4 92 A4
25A3: add a, z            ; 2A
25A4: jmp.nz $A952        ; A9 52 A9
25A7: int $AA             ; AA AA
25A9: rol z               ; 94
25AA: jmp.eq $924A        ; A4 4A 92
25AD: rol x               ; 92
25AE: add a, z            ; 2A
25AF: mul a, w            ; 49
25B0: add a, z            ; 2A
25B1: add a, y            ; 29
25B2: mul a, w            ; 49
25B3: rol x               ; 92
25B4: set w, $09          ; 24 09
25B6: jmp.neq $2492       ; A5 92 24
25B9: set x, $49          ; 21 49
25BB: nop                 ; 00
25BC: nop                 ; 00
25BD: nop                 ; FC
25BE: nop                 ; FF
25BF: shl z, $4A          ; 8A 4A
25C1: sub a, $22          ; 45 22
25C3: jmp.neq $4A94       ; A5 94 4A
25C6: set y, $49          ; 22 49
25C8: mul a, w            ; 49
25C9: int $2A             ; AA 2A
25CB: mul a, w            ; 49
25CC: set a, $4A          ; 25 4A
25CE: add a, z            ; 2A
25CF: add a, y            ; 29
25D0: dec x               ; 55
25D1: jmp.neq $54AA       ; A5 AA 54
25D4: dec x               ; 55
25D5: dec x               ; 55
25D6: inc z               ; 52
25D7: int $A4             ; AA A4
25D9: mul a, a            ; 4A
25DA: load w, $9249       ; 12 49 92
25DD: jmp.eq $4A48        ; A4 48 4A
25E0: rol x               ; 92
25E1: rol z               ; 94
25E2: set w, $01          ; 24 01
25E4: nop                 ; 00
25E5: nop                 ; FC
25E6: nop                 ; FF
25E7: jmp.eq $90A4        ; A4 A4 90
25EA: rol z               ; 94
25EB: load y, $2125       ; 10 25 21
25EE: mul a, w            ; 49
25EF: set a, $95          ; 25 95
25F1: set w, $49          ; 24 49
25F3: dec x               ; 55
25F4: mul a, a            ; 4A
25F5: shr a, $4A          ; 91 4A
25F7: jmp.neq $AA92       ; A5 92 AA
25FA: add a, z            ; 2A
25FB: set a, $29          ; 25 29
25FD: mul a, w            ; 49
25FE: rol w               ; 95
25FF: rol x               ; 92
2600: mul a, a            ; 4A
2601: inc z               ; 52
2602: mul a, w            ; 49
2603: rol x               ; 92
2604: set w, $29          ; 24 29
2606: set a, $91          ; 25 91
2608: set w, $22          ; 24 22
260A: mul a, w            ; 49
260B: nop                 ; 00
260C: nop                 ; 00
260D: nop                 ; FC
260E: nop                 ; FF
260F: load w, $5509       ; 12 09 55
2612: inc z               ; 52
2613: mul a, a            ; 4A
2614: shr w, $94          ; 90 94
2616: set w, $92          ; 24 92
2618: jmp.eq $5492        ; A4 92 54
261B: rol x               ; 92
261C: int $54             ; AA 54
261E: inc z               ; 52
261F: int $54             ; AA 54
2621: add a, y            ; 29
2622: mul a, w            ; 49
2623: jmp.nz $254A        ; A9 4A 25
2626: jmp.nz $2924        ; A9 24 29
2629: shl y, $24          ; 89 24
262B: mul a, w            ; 49
262C: rol x               ; 92
262D: sub w, $92          ; 44 92
262F: set w, $91          ; 24 91
2631: shl x, $20          ; 88 20
2633: push a              ; 05
2634: nop                 ; 00
2635: nop                 ; FC
2636: nop                 ; FF
2637: inc a               ; 54
2638: inc z               ; 52
2639: pop y               ; 09
263A: shl y, $52          ; 89 52
263C: set a, $49          ; 25 49
263E: rol x               ; 92
263F: add a, x            ; 28
2640: add a, y            ; 29
2641: jmp.nz $5492        ; A9 92 54
2644: mul a, w            ; 49
2645: mul a, a            ; 4A
2646: jmp.nz $552A        ; A9 2A 55
2649: mul a, a            ; 4A
264A: dec x               ; 55
264B: rol w               ; 95
264C: inc a               ; 54
264D: jmp.nz $5524        ; A9 24 55
2650: mul a, a            ; 4A
2651: dec x               ; 55
2652: mul a, a            ; 4A
2653: rol x               ; 92
2654: sub w, $92          ; 44 92
2656: set w, $95          ; 24 95
2658: set w, $22          ; 24 22
265A: mul a, a            ; 4A
265B: load y, $FC00       ; 10 00 FC
265E: nop                 ; FF
265F: set y, $29          ; 22 29
2661: jmp.eq $8424        ; A4 24 84
2664: rol z               ; 94
2665: set w, $49          ; 24 49
2667: jmp.neq $4A44       ; A5 44 4A
266A: mul a, a            ; 4A
266B: set a, $A5          ; 25 A5
266D: rol x               ; 92
266E: mul a, a            ; 4A
266F: mul a, w            ; 49
2670: jmp.neq $52AA       ; A5 AA 52
2673: int $92             ; AA 92
2675: mul a, a            ; 4A
2676: rol w               ; 95
2677: jmp.eq $9252        ; A4 52 92
267A: add a, x            ; 28
267B: sub x, $12          ; 41 12
267D: mul a, w            ; 49
267E: rol x               ; 92
267F: inc x               ; 50
2680: rol x               ; 92
2681: rol z               ; 94
2682: return              ; 20
2683: sub a, $00          ; 45 00
2685: nop                 ; FC
2686: nop                 ; FF
2687: shl y, $44          ; 89 44
2689: add a, y            ; 29
268A: mul a, w            ; 49
268B: add a, y            ; 29
268C: set x, $49          ; 21 49
268E: inc z               ; 52
268F: mul a, z            ; 48
2690: rol x               ; 92
2691: rol x               ; 92
2692: inc z               ; 52
2693: rol x               ; 92
2694: rol z               ; 94
2695: inc a               ; 54
2696: inc z               ; 52
2697: int $94             ; AA 94
2699: inc z               ; 52
269A: mul a, a            ; 4A
269B: mul a, w            ; 49
269C: int $94             ; AA 94
269E: jmp.eq $2492        ; A4 92 24
26A1: mul a, w            ; 49
26A2: xor z, $94          ; 85 94
26A4: mul a, z            ; 48
26A5: set w, $49          ; 24 49
26A7: shl z, $24          ; 8A 24
26A9: set x, $4A          ; 21 4A
26AB: load y, $FC00       ; 10 00 FC
26AE: nop                 ; FF
26AF: add a, z            ; 2A
26B0: add a, y            ; 29
26B1: xor z, $24          ; 85 24
26B3: jmp.neq $2494       ; A5 94 24
26B6: pop y               ; 09
26B7: set a, $29          ; 25 29
26B9: set w, $49          ; 24 49
26BB: jmp.nz $2552        ; A9 52 25
26BE: mul a, w            ; 49
26BF: add a, y            ; 29
26C0: dec x               ; 55
26C1: mul a, a            ; 4A
26C2: dec x               ; 55
26C3: dec x               ; 55
26C4: set a, $A5          ; 25 A5
26C6: inc z               ; 52
26C7: mul a, a            ; 4A
26C8: mul a, a            ; 4A
26C9: set a, $29          ; 25 29
26CB: pop y               ; 09
26CC: set y, $91          ; 22 91
26CE: set w, $51          ; 24 51
26D0: rol x               ; 92
26D1: rol z               ; 94
26D2: return              ; 20
26D3: sub a, $01          ; 45 01
26D5: nop                 ; FC
26D6: nop                 ; FF
26D7: xor a, z            ; 81
26D8: sub w, $28          ; 44 28
26DA: mul a, w            ; 49
26DB: pop x               ; 08
26DC: set y, $49          ; 22 49
26DE: inc z               ; 52
26DF: mul a, w            ; 49
26E0: mul a, a            ; 4A
26E1: mul a, w            ; 49
26E2: add a, z            ; 2A
26E3: mul a, a            ; 4A
26E4: mul a, a            ; 4A
26E5: rol x               ; 92
26E6: inc a               ; 54
26E7: mul a, a            ; 4A
26E8: mul a, w            ; 49
26E9: jmp.nz $4A52        ; A9 52 4A
26EC: inc z               ; 52
26ED: inc z               ; 52
26EE: add a, z            ; 2A
26EF: jmp.nz $5252        ; A9 52 52
26F2: inc z               ; 52
26F3: jmp $2448, w        ; A2 48 24
26F6: mul a, w            ; 49
26F7: shl z, $24          ; 8A 24
26F9: set x, $4A          ; 21 4A
26FB: load y, $FC04       ; 10 04 FC
26FE: nop                 ; FF
26FF: add a, z            ; 2A
2700: add a, y            ; 29
2701: sub a, $92          ; 45 92
2703: jmp $2488, w        ; A2 88 24
2706: pop y               ; 09
2707: rol x               ; 92
2708: return              ; 20
2709: set a, $91          ; 25 91
270B: rol x               ; 92
270C: set w, $55          ; 24 55
270E: rol x               ; 92
270F: inc z               ; 52
2710: int $2A             ; AA 2A
2712: rol w               ; 95
2713: inc z               ; 52
2714: rol w               ; 95
2715: mul a, a            ; 4A
2716: mul a, w            ; 49
2717: set a, $89          ; 25 89
2719: rol z               ; 94
271A: sub w, $09          ; 44 09
271C: set y, $91          ; 22 91
271E: set w, $21          ; 24 21
2720: rol x               ; 92
2721: rol z               ; 94
2722: return              ; 20
2723: sub a, $11          ; 45 11
2725: nop                 ; FC
2726: nop                 ; FF
2727: shr w, $44          ; 90 44
2729: shr a, $24          ; 91 24
272B: add a, x            ; 28
272C: set a, $49          ; 25 49
272E: jmp $9524, w        ; A2 24 95
2731: shr w, $A4          ; 90 A4
2733: set w, $A9          ; 24 A9
2735: rol x               ; 92
2736: mul a, a            ; 4A
2737: int $4A             ; AA 4A
2739: mul a, a            ; 4A
273A: mul a, w            ; 49
273B: add a, y            ; 29
273C: mul a, w            ; 49
273D: inc z               ; 52
273E: rol x               ; 92
273F: mul a, z            ; 48
2740: add a, z            ; 2A
2741: set a, $29          ; 25 29
2743: int $48             ; AA 48
2745: set w, $49          ; 24 49
2747: rol z               ; 94
2748: set w, $22          ; 24 22
274A: pop z               ; 0A
274B: load y, $FC04       ; 10 04 FC
274E: nop                 ; FF
274F: mul a, a            ; 4A
2750: load w, $9244       ; 12 44 92
2753: xor a, w            ; 82
2754: shr w, $24          ; 90 24
2756: mul a, w            ; 49
2757: rol x               ; 92
2758: sub w, $4A          ; 44 4A
275A: mul a, a            ; 4A
275B: inc z               ; 52
275C: set a, $49          ; 25 49
275E: set w, $49          ; 24 49
2760: inc z               ; 52
2761: add a, y            ; 29
2762: dec x               ; 55
2763: mul a, a            ; 4A
2764: dec x               ; 55
2765: mul a, w            ; 49
2766: dec x               ; 55
2767: add a, z            ; 2A
2768: inc y               ; 51
2769: rol x               ; 92
276A: sub w, $21          ; 44 21
276C: push a              ; 05
276D: shr a, $24          ; 91 24
276F: mul a, w            ; 49
2770: rol x               ; 92
2771: shl x, $A0          ; 88 A0
2773: sub y, $52          ; 42 52
2775: nop                 ; FC
2776: nop                 ; FF
2777: rol x               ; 92
2778: jmp.eq $2492        ; A4 92 24
277B: add a, y            ; 29
277C: set a, $09          ; 25 09
277E: rol x               ; 92
277F: set w, $91          ; 24 91
2781: rol x               ; 92
2782: rol x               ; 92
2783: rol z               ; 94
2784: rol z               ; 94
2785: inc a               ; 54
2786: jmp.nz $2952        ; A9 52 29
2789: jmp.neq $A552       ; A5 52 A5
278C: set w, $95          ; 24 95
278E: set w, $45          ; 24 45
2790: pop z               ; 0A
2791: mul a, w            ; 49
2792: add a, y            ; 29
2793: mul a, a            ; 4A
2794: inc x               ; 50
2795: push w              ; 04
2796: mul a, w            ; 49
2797: rol x               ; 92
2798: set w, $22          ; 24 22
279A: pop z               ; 0A
279B: rol z               ; 94
279C: xor a, y            ; 80
279D: nop                 ; FC
279E: nop                 ; FF
279F: mul a, z            ; 48
27A0: rol x               ; 92
27A1: mul a, z            ; 48
27A2: rol x               ; 92
27A3: sub w, $94          ; 44 94
27A5: jmp.eq $9248        ; A4 48 92
27A8: set w, $24          ; 24 24
27AA: mul a, z            ; 48
27AB: set y, $A9          ; 22 A9
27AD: rol x               ; 92
27AE: sub y, $4A          ; 42 4A
27B0: mul a, a            ; 4A
27B1: add a, y            ; 29
27B2: mul a, w            ; 49
27B3: add a, z            ; 2A
27B4: mul a, w            ; 49
27B5: inc z               ; 52
27B6: rol x               ; 92
27B7: inc a               ; 54
27B8: jmp.nz $9224        ; A9 24 92
27BB: set w, $05          ; 24 05
27BD: inc y               ; 51
27BE: set w, $49          ; 24 49
27C0: rol x               ; 92
27C1: rol z               ; 94
27C2: jmp $0A00, y        ; A0 00 0A
27C5: nop                 ; FE
27C6: nop                 ; FF
27C7: rol x               ; 92
27C8: set w, $92          ; 24 92
27CA: set w, $11          ; 24 11
27CC: set x, $08          ; 21 08
27CE: rol x               ; 92
27CF: set w, $49          ; 24 49
27D1: shl y, $92          ; 89 92
27D3: rol z               ; 94
27D4: sub w, $4A          ; 44 4A
27D6: add a, z            ; 2A
27D7: add a, y            ; 29
27D8: dec x               ; 55
27D9: mul a, a            ; 4A
27DA: add a, z            ; 2A
27DB: mul a, w            ; 49
27DC: int $94             ; AA 94
27DE: int $22             ; AA 22
27E0: set y, $A9          ; 22 A9
27E2: set w, $49          ; 24 49
27E4: jmp.nz $4904        ; A9 04 49
27E7: rol x               ; 92
27E8: set w, $21          ; 24 21
27EA: pop z               ; 0A
27EB: dec x               ; 55
27EC: jmp $FFFC, y        ; A0 FC FF
27EF: mul a, z            ; 48
27F0: rol x               ; 92
27F1: mul a, z            ; 48
27F2: rol x               ; 92
27F3: sub w, $94          ; 44 94
27F5: jmp $9248, w        ; A2 48 92
27F8: set w, $52          ; 24 52
27FA: mul a, a            ; 4A
27FB: inc z               ; 52
27FC: rol x               ; 92
27FD: set w, $49          ; 24 49
27FF: rol x               ; 92
2800: jmp.eq $A552        ; A4 52 A5
2803: inc z               ; 52
2804: mul a, w            ; 49
2805: mul a, w            ; 49
2806: set y, $4A          ; 22 4A
2808: mul a, w            ; 49
2809: sub y, $92          ; 42 92
280B: set w, $24          ; 24 24
280D: inc z               ; 52
280E: set w, $49          ; 24 49
2810: rol x               ; 92
2811: rol z               ; 94
2812: return              ; 20
2813: nop                 ; 00
2814: pop y               ; 09
2815: nop                 ; FC
2816: nop                 ; FF
2817: rol x               ; 92
2818: sub w, $12          ; 44 12
281A: push w              ; 04
281B: add a, y            ; 29
281C: set x, $08          ; 21 08
281E: xor a, w            ; 82
281F: set w, $89          ; 24 89
2821: xor y, $90          ; 84 90
2823: push w              ; 04
2824: add a, y            ; 29
2825: jmp.nz $A494        ; A9 94 A4
2828: load w, $4929       ; 12 29 49
282B: add a, z            ; 2A
282C: set a, $52          ; 25 52
282E: mul a, w            ; 49
282F: shr a, $94          ; 91 94
2831: rol z               ; 94
2832: set w, $49          ; 24 49
2834: shl y, $04          ; 89 04
2836: mul a, w            ; 49
2837: rol x               ; 92
2838: set w, $21          ; 24 21
283A: shl z, $4A          ; 8A 4A
283C: sub a, w            ; 40
283D: nop                 ; FE
283E: nop                 ; FF
283F: mul a, z            ; 48
2840: load w, $5149       ; 12 49 51
2843: xor y, $94          ; 84 94
2845: jmp $9228, w        ; A2 28 92
2848: set w, $52          ; 24 52
284A: mul a, a            ; 4A
284B: inc z               ; 52
284C: jmp.neq $5244       ; A5 44 52
284F: rol x               ; 92
2850: inc a               ; 54
2851: jmp.neq $A494       ; A5 94 A4
2854: inc a               ; 54
2855: set a, $95          ; 25 95
2857: inc a               ; 54
2858: inc z               ; 52
2859: inc z               ; 52
285A: rol x               ; 92
285B: set w, $22          ; 24 22
285D: inc y               ; 51
285E: set w, $49          ; 24 49
2860: xor a, w            ; 82
2861: xor y, $20          ; 84 20
2863: return              ; 20
2864: load w, $FFFC       ; 12 FC FF
2867: load w, $1244       ; 12 44 12
286A: push w              ; 04
286B: add a, y            ; 29
286C: set x, $08          ; 21 08
286E: xor a, w            ; 82
286F: push w              ; 04
2870: shl y, $14          ; 89 14
2872: shr a, $94          ; 91 94
2874: load y, $2529       ; 10 29 25
2877: mul a, w            ; 49
2878: rol x               ; 92
2879: load.xy a           ; 14
287A: jmp.neq $9292       ; A5 92 92
287D: rol z               ; 94
287E: set w, $89          ; 24 89
2880: xor y, $84          ; 84 84
2882: set w, $89          ; 24 89
2884: mul a, z            ; 48
2885: load.xy a           ; 14
2886: mul a, w            ; 49
2887: rol x               ; 92
2888: add a, x            ; 28
2889: add a, y            ; 29
288A: shl z, $8A          ; 8A 8A
288C: push w              ; 04
288D: nop                 ; FD
288E: nop                 ; FF
288F: mul a, z            ; 48
2890: load z, $5149       ; 11 49 51
2893: xor a, y            ; 80
2894: xor y, $A2          ; 84 A2
2896: add a, x            ; 28
2897: inc z               ; 52
2898: set w, $42          ; 24 42
289A: sub w, $22          ; 44 22
289C: mul a, a            ; 4A
289D: rol x               ; 92
289E: rol z               ; 94
289F: set w, $25          ; 24 25
28A1: jmp.nz $5494        ; A9 94 54
28A4: mul a, a            ; 4A
28A5: inc z               ; 52
28A6: inc z               ; 52
28A7: inc z               ; 52
28A8: inc z               ; 52
28A9: inc z               ; 52
28AA: rol x               ; 92
28AB: set w, $25          ; 24 25
28AD: sub x, $24          ; 41 24
28AF: pop y               ; 09
28B0: xor a, w            ; 82
28B1: xor a, y            ; 80
28B2: return              ; 20
28B3: return              ; 20
28B4: return              ; 20
28B5: nop                 ; FC
28B6: nop                 ; FF
28B7: load w, $1244       ; 12 44 12
28BA: xor y, $2A          ; 84 2A
28BC: add a, y            ; 29
28BD: pop x               ; 08
28BE: xor a, w            ; 82
28BF: push w              ; 04
28C0: shl y, $94          ; 89 94
28C2: rol x               ; 92
28C3: shl x, $52          ; 88 52
28C5: mul a, w            ; 49
28C6: set y, $49          ; 22 49
28C8: jmp.nz $5292        ; A9 92 52
28CB: shl z, $52          ; 8A 52
28CD: set a, $89          ; 25 89
28CF: shl z, $94          ; 8A 94
28D1: rol z               ; 94
28D2: set w, $49          ; 24 49
28D4: mul a, z            ; 48
28D5: load.xy a           ; 14
28D6: sub x, $A2          ; 41 A2
28D8: add a, x            ; 28
28D9: add a, z            ; 2A
28DA: shl z, $0A          ; 8A 0A
28DC: pop y               ; 09
28DD: nop                 ; FD
28DE: nop                 ; FF
28DF: mul a, z            ; 48
28E0: load z, $5141       ; 11 41 51
28E3: xor a, y            ; 80
28E4: xor a, y            ; 80
28E5: jmp $5228, w        ; A2 28 52
28E8: set w, $42          ; 24 42
28EA: mul a, z            ; 48
28EB: inc z               ; 52
28EC: xor y, $24          ; 84 24
28EE: mul a, w            ; 49
28EF: set a, $4A          ; 25 4A
28F1: mul a, a            ; 4A
28F2: mul a, a            ; 4A
28F3: jmp.nz $4924        ; A9 24 49
28F6: inc z               ; 52
28F7: set w, $41          ; 24 41
28F9: sub y, $92          ; 42 92
28FB: set w, $25          ; 24 25
28FD: jmp $0914, z        ; A1 14 09
2900: xor a, w            ; 82
2901: xor a, y            ; 80
2902: return              ; 20
2903: return              ; 20
2904: sub w, $FC          ; 44 FC
2906: nop                 ; FF
2907: load w, $1444       ; 12 44 14
290A: push w              ; 04
290B: add a, z            ; 2A
290C: add a, z            ; 2A
290D: pop x               ; 08
290E: xor a, w            ; 82
290F: push w              ; 04
2910: shl y, $94          ; 89 94
2912: rol x               ; 92
2913: set w, $29          ; 24 29
2915: rol x               ; 92
2916: rol z               ; 94
2917: shr w, $22          ; 90 22
2919: jmp.nz $2524        ; A9 24 25
291C: mul a, w            ; 49
291D: rol x               ; 92
291E: set w, $A9          ; 24 A9
2920: rol z               ; 94
2921: rol z               ; 94
2922: set w, $89          ; 24 89
2924: mul a, z            ; 48
2925: pop z               ; 0A
2926: sub x, $A2          ; 41 A2
2928: add a, x            ; 28
2929: add a, z            ; 2A
292A: shl z, $44          ; 8A 44
292C: push x              ; 01
292D: nop                 ; FC
292E: nop                 ; FF
292F: mul a, z            ; 48
2930: load z, $5141       ; 11 41 51
2933: xor a, z            ; 81
2934: xor a, y            ; 80
2935: jmp $5028, w        ; A2 28 50
2938: set w, $42          ; 24 42
293A: mul a, z            ; 48
293B: rol x               ; 92
293C: jmp.eq $5124        ; A4 24 51
293F: mul a, a            ; 4A
2940: rol z               ; 94
2941: set w, $A9          ; 24 A9
2943: rol z               ; 94
2944: add a, z            ; 2A
2945: mul a, w            ; 49
2946: rol x               ; 92
2947: xor y, $52          ; 84 52
2949: set y, $92          ; 22 92
294B: set w, $22          ; 24 22
294D: jmp $0914, z        ; A1 14 09
2950: xor a, w            ; 82
2951: xor a, y            ; 80
2952: return              ; 20
2953: load w, $FD28       ; 12 28 FD
2956: nop                 ; FF
2957: load w, $1444       ; 12 44 14
295A: push w              ; 04
295B: add a, x            ; 28
295C: add a, z            ; 2A
295D: pop x               ; 08
295E: sub y, $05          ; 42 05
2960: shl y, $90          ; 89 90
2962: rol x               ; 92
2963: set w, $09          ; 24 09
2965: mul a, w            ; 49
2966: shl z, $24          ; 8A 24
2968: jmp.neq $4A92       ; A5 92 4A
296B: jmp $2A44, w        ; A2 44 2A
296E: mul a, w            ; 49
296F: inc z               ; 52
2970: xor y, $88          ; 84 88
2972: set w, $89          ; 24 89
2974: pop x               ; 08
2975: pop z               ; 0A
2976: sub x, $A2          ; 41 A2
2978: add a, x            ; 28
2979: add a, z            ; 2A
297A: shl y, $40          ; 89 40
297C: push y              ; 02
297D: nop                 ; FC
297E: nop                 ; FF
297F: mul a, z            ; 48
2980: load z, $5141       ; 11 41 51
2983: xor z, $80          ; 85 80
2985: jmp $5008, w        ; A2 08 50
2988: return              ; 20
2989: pop z               ; 0A
298A: mul a, z            ; 48
298B: rol x               ; 92
298C: jmp.eq $5124        ; A4 24 51
298F: rol x               ; 92
2990: load y, $9249       ; 10 49 92
2993: add a, z            ; 2A
2994: add a, y            ; 29
2995: shr a, $24          ; 91 24
2997: pop y               ; 09
2998: add a, y            ; 29
2999: inc z               ; 52
299A: rol x               ; 92
299B: set w, $A5          ; 24 A5
299D: return              ; 20
299E: load.xy a           ; 14
299F: pop y               ; 09
29A0: xor a, w            ; 82
29A1: nop                 ; 00
29A2: sub w, $04          ; 44 04
29A4: shr a, $FC          ; 91 FC
29A6: nop                 ; FF
29A7: nop                 ; 00
29A8: store $6C66, y      ; 18 66 6C
29AB: store $3846, y      ; 18 46 38
29AE: store $0C30, y      ; 18 30 0C
29B1: adc a, a            ; 36
29B2: nop                 ; 00
29B3: nop                 ; 00
29B4: nop                 ; 00
29B5: nop                 ; 00
29B6: sub a, w            ; 40
29B7: adw                 ; 3C 18
29B9: adw                 ; 3C 3C
29BB: adc y, $7E          ; 38 7E
29BD: adw                 ; 3C 7E
29BF: adw                 ; 3C 3C
29C1: nop                 ; 00
29C2: nop                 ; 00
29C3: cmp z, $00          ; 60 00
29C5: pop a               ; 0C
29C6: adw                 ; 3C 3C
29C8: adw                 ; 3C 3E
29CA: adw                 ; 3C 3E
29CC: not a               ; 7E
29CD: not a               ; 7E
29CE: adw                 ; 3C 66
29D0: adw                 ; 3C 60
29D2: cmpbit w, $06       ; 66 06
29D4: cmpbit x, $66       ; 63 66
29D6: adw                 ; 3C 3E
29D8: adw                 ; 3C 3E
29DA: adw                 ; 3C 7E
29DC: cmpbit w, $66       ; 66 66
29DE: cmpbit x, $66       ; 63 66
29E0: cmpbit w, $7E       ; 66 7E
29E2: adw                 ; 3C 02
29E4: adw                 ; 3C 10
29E6: nop                 ; 00
29E7: store $0600, y      ; 18 00 06
29EA: nop                 ; 00
29EB: cmp z, $00          ; 60 00
29ED: and a, $00          ; 70 00
29EF: push.f              ; 06
29F0: store $0660, y      ; 18 60 06
29F3: adc y, $00          ; 38 00
29F5: nop                 ; 00
29F6: nop                 ; 00
29F7: nop                 ; 00
29F8: nop                 ; 00
29F9: nop                 ; 00
29FA: nop                 ; 00
29FB: store $0000, y      ; 18 00 00
29FE: nop                 ; 00
29FF: nop                 ; 00
2A00: nop                 ; 00
2A01: nop                 ; 00
2A02: nop                 ; 00
2A03: nop                 ; 00
2A04: nop                 ; 00
2A05: nop                 ; 00
2A06: nop                 ; 00
2A07: nop                 ; 00
2A08: store $FE66, y      ; 18 66 FE
2A0B: not z               ; 7C
2A0C: cmpbit w, $6C       ; 66 6C
2A0E: store $1818, y      ; 18 18 18
2A11: store.xy a          ; 1C
2A12: load y, $0000       ; 10 00 00
2A15: nop                 ; 00
2A16: cmp z, $66          ; 60 66
2A18: store.xy a          ; 1C
2A19: cmpbit w, $66       ; 66 66
2A1B: adw                 ; 3C 06
2A1D: cmpbit w, $60       ; 66 60
2A1F: cmpbit w, $66       ; 66 66
2A21: store $3018, y      ; 18 18 30
2A24: nop                 ; 00
2A25: store $4262, y      ; 18 62 42
2A28: cmpbit w, $66       ; 66 66
2A2A: cmpbit w, $66       ; 66 66
2A2C: push.f              ; 06
2A2D: push.f              ; 06
2A2E: cmpbit w, $66       ; 66 66
2A30: store $3660, y      ; 18 60 36
2A33: push.f              ; 06
2A34: or z, $66           ; 77 66
2A36: cmpbit w, $66       ; 66 66
2A38: cmpbit w, $66       ; 66 66
2A3A: cmpbit w, $18       ; 66 18
2A3C: cmpbit w, $66       ; 66 66
2A3E: cmpbit x, $66       ; 63 66
2A40: cmpbit w, $60       ; 66 60
2A42: pop a               ; 0C
2A43: push.f              ; 06
2A44: add w, $38          ; 30 38
2A46: nop                 ; 00
2A47: add w, $00          ; 30 00
2A49: push.f              ; 06
2A4A: nop                 ; 00
2A4B: cmp z, $00          ; 60 00
2A4D: store $0600, y      ; 18 00 06
2A50: nop                 ; 00
2A51: nop                 ; 00
2A52: push.f              ; 06
2A53: add w, $00          ; 30 00
2A55: nop                 ; 00
2A56: nop                 ; 00
2A57: nop                 ; 00
2A58: nop                 ; 00
2A59: nop                 ; 00
2A5A: nop                 ; 00
2A5B: store $0000, y      ; 18 00 00
2A5E: nop                 ; 00
2A5F: nop                 ; 00
2A60: nop                 ; 00
2A61: nop                 ; 00
2A62: nop                 ; 00
2A63: nop                 ; 00
2A64: nop                 ; 00
2A65: nop                 ; 00
2A66: nop                 ; 00
2A67: nop                 ; 00
2A68: store $6C66, y      ; 18 66 6C
2A6B: push.f              ; 06
2A6C: add w, $6C          ; 30 6C
2A6E: store $300C, y      ; 18 0C 30
2A71: xor a, x            ; 7F
2A72: load y, $0000       ; 10 00 00
2A75: nop                 ; 00
2A76: add w, $66          ; 30 66
2A78: store $6060, y      ; 18 60 60
2A7B: adc a, a            ; 36
2A7C: sub a, y            ; 3E
2A7D: push.f              ; 06
2A7E: add w, $66          ; 30 66
2A80: cmpbit w, $18       ; 66 18
2A82: store $7E18, y      ; 18 18 7E
2A85: add w, $60          ; 30 60
2A87: ror z               ; 99
2A88: cmpbit w, $66       ; 66 66
2A8A: push.f              ; 06
2A8B: cmpbit w, $06       ; 66 06
2A8D: push.f              ; 06
2A8E: push.f              ; 06
2A8F: cmpbit w, $18       ; 66 18
2A91: cmp z, $1E          ; 60 1E
2A93: push.f              ; 06
2A94: xor a, x            ; 7F
2A95: and z, $66          ; 6E 66
2A97: cmpbit w, $66       ; 66 66
2A99: cmpbit w, $06       ; 66 06
2A9B: store $6666, y      ; 18 66 66
2A9E: cmpbit x, $3C       ; 63 3C
2AA0: cmpbit w, $30       ; 66 30
2AA2: pop a               ; 0C
2AA3: pop a               ; 0C
2AA4: add w, $6C          ; 30 6C
2AA6: nop                 ; 00
2AA7: nop                 ; 00
2AA8: adw                 ; 3C 3E
2AAA: adw                 ; 3C 7C
2AAC: adw                 ; 3C 3C
2AAE: not z               ; 7C
2AAF: sub a, y            ; 3E
2AB0: store.xy a          ; 1C
2AB1: and a, $66          ; 70 66
2AB3: add w, $37          ; 30 37
2AB5: sub a, y            ; 3E
2AB6: adw                 ; 3C 3E
2AB8: not z               ; 7C
2AB9: or y, $7C           ; 76 7C
2ABB: adw                 ; 3C 66
2ABD: cmpbit w, $6B       ; 66 6B
2ABF: cmpbit w, $66       ; 66 66
2AC1: not a               ; 7E
2AC2: nop                 ; 00
2AC3: nop                 ; 00
2AC4: nop                 ; 00
2AC5: nop                 ; 00
2AC6: nop                 ; 00
2AC7: nop                 ; 00
2AC8: store $6C00, y      ; 18 00 6C
2ACB: adw                 ; 3C 18
2ACD: adc y, $00          ; 38 00
2ACF: pop a               ; 0C
2AD0: add w, $1C          ; 30 1C
2AD2: not z               ; 7C
2AD3: nop                 ; 00
2AD4: not a               ; 7E
2AD5: nop                 ; 00
2AD6: store $1866, y      ; 18 66 18
2AD9: adc y, $38          ; 38 38
2ADB: adc a, a            ; 36
2ADC: cmp z, $3E          ; 60 3E
2ADE: store $7C3C, y      ; 18 3C 7C
2AE1: nop                 ; 00
2AE2: nop                 ; 00
2AE3: pop a               ; 0C
2AE4: nop                 ; 00
2AE5: cmp z, $38          ; 60 38
2AE7: jmp.neq $3E7E       ; A5 7E 3E
2AEA: push.f              ; 06
2AEB: cmpbit w, $1E       ; 66 1E
2AED: store.xy w          ; 1E
2AEE: or y, $7E           ; 76 7E
2AF0: store $0E60, y      ; 18 60 0E
2AF3: push.f              ; 06
2AF4: and a, w            ; 6B
2AF5: not a               ; 7E
2AF6: cmpbit w, $3E       ; 66 3E
2AF8: cmpbit w, $3E       ; 66 3E
2AFA: adw                 ; 3C 18
2AFC: cmpbit w, $66       ; 66 66
2AFE: and a, w            ; 6B
2AFF: store $183C, y      ; 18 3C 18
2B02: pop a               ; 0C
2B03: store $4430, y      ; 18 30 44
2B06: nop                 ; 00
2B07: nop                 ; 00
2B08: cmp z, $66          ; 60 66
2B0A: cmpbit w, $66       ; 66 66
2B0C: cmpbit w, $18       ; 66 18
2B0E: cmpbit w, $66       ; 66 66
2B10: store $3660, y      ; 18 60 36
2B13: add w, $7F          ; 30 7F
2B15: cmpbit w, $66       ; 66 66
2B17: cmpbit w, $66       ; 66 66
2B19: pop.r               ; 0E
2B1A: push.f              ; 06
2B1B: store $6666, y      ; 18 66 66
2B1E: and a, w            ; 6B
2B1F: adw                 ; 3C 66
2B21: add w, $00          ; 30 00
2B23: nop                 ; 00
2B24: nop                 ; 00
2B25: nop                 ; 00
2B26: nop                 ; 00
2B27: nop                 ; 00
2B28: store $6C00, y      ; 18 00 6C
2B2B: cmp z, $0C          ; 60 0C
2B2D: nop                 ; EC
2B2E: nop                 ; 00
2B2F: pop a               ; 0C
2B30: add w, $36          ; 30 36
2B32: load y, $0018       ; 10 18 00
2B35: nop                 ; 00
2B36: pop a               ; 0C
2B37: cmpbit w, $18       ; 66 18
2B39: pop a               ; 0C
2B3A: cmp z, $7E          ; 60 7E
2B3C: cmp z, $66          ; 60 66
2B3E: store $6066, y      ; 18 66 60
2B41: store $1818, y      ; 18 18 18
2B44: not a               ; 7E
2B45: add w, $18          ; 30 18
2B47: jmp.neq $6666       ; A5 66 66
2B4A: push.f              ; 06
2B4B: cmpbit w, $06       ; 66 06
2B4D: push.f              ; 06
2B4E: cmpbit w, $66       ; 66 66
2B50: store $1E60, y      ; 18 60 1E
2B53: push.f              ; 06
2B54: cmpbit x, $76       ; 63 76
2B56: cmpbit w, $06       ; 66 06
2B58: cmpbit w, $1E       ; 66 1E
2B5A: cmp z, $18          ; 60 18
2B5C: cmpbit w, $66       ; 66 66
2B5E: xor a, x            ; 7F
2B5F: adw                 ; 3C 18
2B61: pop a               ; 0C
2B62: pop a               ; 0C
2B63: add w, $30          ; 30 30
2B65: nop                 ; 00
2B66: nop                 ; 00
2B67: nop                 ; 00
2B68: not z               ; 7C
2B69: cmpbit w, $06       ; 66 06
2B6B: cmpbit w, $3E       ; 66 3E
2B6D: store $6666, y      ; 18 66 66
2B70: store $1E60, y      ; 18 60 1E
2B73: add w, $6B          ; 30 6B
2B75: cmpbit w, $66       ; 66 66
2B77: cmpbit w, $66       ; 66 66
2B79: push.f              ; 06
2B7A: adw                 ; 3C 18
2B7C: cmpbit w, $66       ; 66 66
2B7E: xor a, x            ; 7F
2B7F: store $1866, y      ; 18 66 18
2B82: nop                 ; 00
2B83: nop                 ; 00
2B84: nop                 ; 00
2B85: nop                 ; 00
2B86: nop                 ; 00
2B87: nop                 ; 00
2B88: nop                 ; 00
2B89: nop                 ; 00
2B8A: nop                 ; FE
2B8B: sub a, y            ; 3E
2B8C: cmpbit w, $66       ; 66 66
2B8E: nop                 ; 00
2B8F: store $0018, y      ; 18 18 00
2B92: load y, $0018       ; 10 18 00
2B95: store $6606, y      ; 18 06 66
2B98: store $6606, y      ; 18 06 66
2B9B: add w, $66          ; 30 66
2B9D: cmpbit w, $18       ; 66 18
2B9F: cmpbit w, $66       ; 66 66
2BA1: store $3018, y      ; 18 18 30
2BA4: nop                 ; 00
2BA5: store $7900, y      ; 18 00 79
2BA8: cmpbit w, $66       ; 66 66
2BAA: cmpbit w, $66       ; 66 66
2BAC: push.f              ; 06
2BAD: push.f              ; 06
2BAE: cmpbit w, $66       ; 66 66
2BB0: store $3666, y      ; 18 66 36
2BB3: push.f              ; 06
2BB4: cmpbit x, $66       ; 63 66
2BB6: cmpbit w, $06       ; 66 06
2BB8: cmpbit w, $36       ; 66 36
2BBA: cmpbit w, $18       ; 66 18
2BBC: cmpbit w, $3C       ; 66 3C
2BBE: or z, $66           ; 77 66
2BC0: store $0C06, y      ; 18 06 0C
2BC3: cmp z, $30          ; 60 30
2BC5: nop                 ; 00
2BC6: nop                 ; 00
2BC7: nop                 ; 00
2BC8: cmpbit w, $66       ; 66 66
2BCA: cmpbit w, $66       ; 66 66
2BCC: push.f              ; 06
2BCD: store $667C, y      ; 18 7C 66
2BD0: store $3660, y      ; 18 60 36
2BD3: add w, $6B          ; 30 6B
2BD5: cmpbit w, $66       ; 66 66
2BD7: cmpbit w, $66       ; 66 66
2BD9: push.f              ; 06
2BDA: cmp z, $18          ; 60 18
2BDC: cmpbit w, $3C       ; 66 3C
2BDE: sub a, y            ; 3E
2BDF: adw                 ; 3C 7C
2BE1: pop a               ; 0C
2BE2: nop                 ; 00
2BE3: nop                 ; 00
2BE4: nop                 ; 00
2BE5: nop                 ; 00
2BE6: nop                 ; 00
2BE7: nop                 ; 00
2BE8: store $6C00, y      ; 18 00 6C
2BEB: store $FC62, y      ; 18 62 FC
2BEE: nop                 ; 00
2BEF: add w, $0C          ; 30 0C
2BF1: nop                 ; 00
2BF2: nop                 ; 00
2BF3: pop a               ; 0C
2BF4: nop                 ; 00
2BF5: store $3C02, y      ; 18 02 3C
2BF8: not a               ; 7E
2BF9: not a               ; 7E
2BFA: adw                 ; 3C 78
2BFC: adw                 ; 3C 3C
2BFE: store $3C3C, y      ; 18 3C 3C
2C01: nop                 ; 00
2C02: pop x               ; 08
2C03: cmp z, $00          ; 60 00
2C05: pop a               ; 0C
2C06: store $6602, y      ; 18 02 66
2C09: sub a, y            ; 3E
2C0A: adw                 ; 3C 3E
2C0C: not a               ; 7E
2C0D: push.f              ; 06
2C0E: adw                 ; 3C 66
2C10: adw                 ; 3C 3C
2C12: cmpbit w, $7E       ; 66 7E
2C14: cmpbit x, $66       ; 63 66
2C16: adw                 ; 3C 06
2C18: adw                 ; 3C 66
2C1A: adw                 ; 3C 18
2C1C: adw                 ; 3C 18
2C1E: cmpbit x, $66       ; 63 66
2C20: store $3C7E, y      ; 18 7E 3C
2C23: sub a, w            ; 40
2C24: adw                 ; 3C 00
2C26: nop                 ; 00
2C27: nop                 ; 00
2C28: not z               ; 7C
2C29: sub a, y            ; 3E
2C2A: adw                 ; 3C 7C
2C2C: not z               ; 7C
2C2D: store $6660, y      ; 18 60 66
2C30: adw                 ; 3C 66
2C32: cmpbit w, $78       ; 66 78
2C34: and a, w            ; 6B
2C35: cmpbit w, $3C       ; 66 3C
2C37: sub a, y            ; 3E
2C38: not z               ; 7C
2C39: push.f              ; 06
2C3A: sub a, y            ; 3E
2C3B: add w, $7C          ; 30 7C
2C3D: store $6636, y      ; 18 36 66
2C40: cmp z, $7E          ; 60 7E
2C42: nop                 ; 00
2C43: nop                 ; 00
2C44: nop                 ; 00
2C45: nop                 ; 00
2C46: nop                 ; 00
2C47: nop                 ; 00
2C48: nop                 ; 00
2C49: nop                 ; 00
2C4A: nop                 ; 00
2C4B: nop                 ; 00
2C4C: nop                 ; 00
2C4D: nop                 ; 00
2C4E: nop                 ; 00
2C4F: nop                 ; 00
2C50: nop                 ; 00
2C51: nop                 ; 00
2C52: nop                 ; 00
2C53: nop                 ; 00
2C54: nop                 ; 00
2C55: nop                 ; 00
2C56: nop                 ; 00
2C57: nop                 ; 00
2C58: nop                 ; 00
2C59: nop                 ; 00
2C5A: nop                 ; 00
2C5B: nop                 ; 00
2C5C: nop                 ; 00
2C5D: nop                 ; 00
2C5E: nop                 ; 00
2C5F: nop                 ; 00
2C60: nop                 ; 00
2C61: nop                 ; 00
2C62: nop                 ; 00
2C63: nop                 ; 00
2C64: nop                 ; 00
2C65: nop                 ; 00
2C66: nop                 ; 00
2C67: adw                 ; 3C 00
2C69: nop                 ; 00
2C6A: nop                 ; 00
2C6B: nop                 ; 00
2C6C: nop                 ; 00
2C6D: nop                 ; 00
2C6E: nop                 ; 00
2C6F: nop                 ; 00
2C70: nop                 ; 00
2C71: nop                 ; 00
2C72: nop                 ; 00
2C73: nop                 ; 00
2C74: nop                 ; 00
2C75: nop                 ; 00
2C76: nop                 ; 00
2C77: nop                 ; 00
2C78: cmp z, $00          ; 60 00
2C7A: nop                 ; 00
2C7B: nop                 ; 00
2C7C: nop                 ; 00
2C7D: nop                 ; 00
2C7E: nop                 ; 00
2C7F: nop                 ; 00
2C80: nop                 ; 00
2C81: nop                 ; 00
2C82: nop                 ; 00
2C83: nop                 ; 00
2C84: nop                 ; 00
2C85: nop                 ; 00
2C86: nop                 ; FF
2C87: nop                 ; 00
2C88: nop                 ; 00
2C89: nop                 ; 00
2C8A: nop                 ; 00
2C8B: nop                 ; 00
2C8C: nop                 ; 00
2C8D: nop                 ; 00
2C8E: adw                 ; 3C 00
2C90: nop                 ; 00
2C91: adw                 ; 3C 00
2C93: nop                 ; 00
2C94: nop                 ; 00
2C95: nop                 ; 00
2C96: nop                 ; 00
2C97: push.f              ; 06
2C98: cmp z, $00          ; 60 00
2C9A: nop                 ; 00
2C9B: nop                 ; 00
2C9C: nop                 ; 00
2C9D: nop                 ; 00
2C9E: nop                 ; 00
2C9F: nop                 ; 00
2CA0: adw                 ; 3C 00
2CA2: nop                 ; 00
2CA3: nop                 ; 00
2CA4: nop                 ; 00
2CA5: nop                 ; 00
2CA6: nop                 ; 00
