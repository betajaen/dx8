Interrupt[$00] = $0010
Interrupt[$01] = $0013
Interrupt[$02] = $0015
Interrupt[$03] = $0000
Interrupt[$04] = $0000
Interrupt[$05] = $0000
Interrupt[$06] = $0000
Interrupt[$07] = $0000

0010: jmp $0036           ; 93 36 00
0013: nop                 ; 00
0014: resume              ; A1
0015: nop                 ; 00
0016: resume              ; A1
0017: set a, $44          ; 1F 44
0019: store $80A4, a      ; 18 A4 80
001C: set a, $58          ; 1F 58
001E: store $80A5, a      ; 18 A5 80
0021: set a, $38          ; 1F 38
0023: store $80A6, a      ; 18 A6 80
0026: set a, $2F          ; 1F 2F
0028: store $A8A8, a      ; 18 A8 A8
002B: set a, $2F          ; 1F 2F
002D: store $D0A9, a      ; 18 A9 D0
0030: set a, $2F          ; 1F 2F
0032: store $F8AA, a      ; 18 AA F8
0035: return              ; 1A
0036: set a, $04          ; 1F 04
0038: store $5000, a      ; 18 00 50
003B: push a              ; 05
003C: set a, $00          ; 1F 00
003E: store $5032, a      ; 18 32 50
0041: set a, $58          ; 1F 58
0043: store $5033, a      ; 18 33 50
0046: set a, $0F          ; 1F 0F
0048: store $5034, a      ; 18 34 50
004B: set a, $29          ; 1F 29
004D: store $5035, a      ; 18 35 50
0050: set a, $00          ; 1F 00
0052: store $5036, a      ; 18 36 50
0055: set a, $03          ; 1F 03
0057: store $5037, a      ; 18 37 50
005A: int $11             ; A0 11
005C: push a              ; 05
005D: set a, $C8          ; 1F C8
005F: jmp.z $0066         ; 9F 66 00
0062: dec a               ; 50
0063: jmp $005F           ; 93 5F 00
0066: pop a               ; 0C
0067: pop a               ; 0C
0068: push a              ; 05
0069: set a, $20          ; 1F 20
006B: store $4010, a      ; 18 10 40
006E: set a, $00          ; 1F 00
0070: store $4012, a      ; 18 12 40
0073: set a, $80          ; 1F 80
0075: store $4013, a      ; 18 13 40
0078: set a, $00          ; 1F 00
007A: store $4014, a      ; 18 14 40
007D: set a, $28          ; 1F 28
007F: store $4015, a      ; 18 15 40
0082: int $01             ; A0 01
0084: push a              ; 05
0085: set a, $C8          ; 1F C8
0087: jmp.z $008E         ; 9F 8E 00
008A: dec a               ; 50
008B: jmp $0087           ; 93 87 00
008E: pop a               ; 0C
008F: pop a               ; 0C
0090: push a              ; 05
0091: set a, $20          ; 1F 20
0093: store $4010, a      ; 18 10 40
0096: set a, $00          ; 1F 00
0098: store $4012, a      ; 18 12 40
009B: set a, $A8          ; 1F A8
009D: store $4013, a      ; 18 13 40
00A0: set a, $00          ; 1F 00
00A2: store $4014, a      ; 18 14 40
00A5: set a, $28          ; 1F 28
00A7: store $4015, a      ; 18 15 40
00AA: int $01             ; A0 01
00AC: push a              ; 05
00AD: set a, $C8          ; 1F C8
00AF: jmp.z $00B6         ; 9F B6 00
00B2: dec a               ; 50
00B3: jmp $00AF           ; 93 AF 00
00B6: pop a               ; 0C
00B7: pop a               ; 0C
00B8: push a              ; 05
00B9: set a, $20          ; 1F 20
00BB: store $4010, a      ; 18 10 40
00BE: set a, $00          ; 1F 00
00C0: store $4012, a      ; 18 12 40
00C3: set a, $D0          ; 1F D0
00C5: store $4013, a      ; 18 13 40
00C8: set a, $00          ; 1F 00
00CA: store $4014, a      ; 18 14 40
00CD: set a, $28          ; 1F 28
00CF: store $4015, a      ; 18 15 40
00D2: int $01             ; A0 01
00D4: push a              ; 05
00D5: set a, $C8          ; 1F C8
00D7: jmp.z $00DE         ; 9F DE 00
00DA: dec a               ; 50
00DB: jmp $00D7           ; 93 D7 00
00DE: pop a               ; 0C
00DF: pop a               ; 0C
00E0: push a              ; 05
00E1: set a, $20          ; 1F 20
00E3: store $4010, a      ; 18 10 40
00E6: set a, $00          ; 1F 00
00E8: store $4012, a      ; 18 12 40
00EB: set a, $F8          ; 1F F8
00ED: store $4013, a      ; 18 13 40
00F0: set a, $00          ; 1F 00
00F2: store $4014, a      ; 18 14 40
00F5: set a, $28          ; 1F 28
00F7: store $4015, a      ; 18 15 40
00FA: int $01             ; A0 01
00FC: push a              ; 05
00FD: set a, $C8          ; 1F C8
00FF: jmp.z $0106         ; 9F 06 01
0102: dec a               ; 50
0103: jmp $00FF           ; 93 FF 00
0106: pop a               ; 0C
0107: pop a               ; 0C
0108: call $0017          ; 19 17 00
010B: nop                 ; 00
010C: jmp $010B           ; 93 0B 01
010F: nop                 ; 00
0110: nop                 ; 00
0111: nop                 ; 00
0112: nop                 ; 00
0113: nop                 ; 00
0114: nop                 ; 00
0115: nop                 ; 00
0116: nop                 ; 00
0117: nop                 ; 00
0118: nop                 ; 00
0119: nop                 ; 00
011A: nop                 ; 00
011B: nop                 ; 00
011C: nop                 ; 00
011D: nop                 ; 00
011E: nop                 ; 00
011F: nop                 ; 00
0120: nop                 ; 00
0121: nop                 ; 00
0122: nop                 ; 00
0123: nop                 ; 00
0124: nop                 ; 00
0125: nop                 ; 00
0126: nop                 ; 00
0127: nop                 ; 00
0128: nop                 ; 00
0129: nop                 ; 00
012A: nop                 ; 00
012B: nop                 ; 00
012C: nop                 ; 00
012D: nop                 ; 00
012E: nop                 ; 00
012F: nop                 ; 00
0130: nop                 ; 00
0131: nop                 ; 00
0132: nop                 ; 00
0133: nop                 ; 00
0134: nop                 ; 00
0135: nop                 ; FC
0136: nop                 ; FF
0137: nop                 ; 00
0138: nop                 ; 00
0139: nop                 ; 00
013A: nop                 ; 00
013B: nop                 ; 00
013C: nop                 ; 00
013D: nop                 ; 00
013E: nop                 ; 00
013F: nop                 ; 00
0140: nop                 ; 00
0141: nop                 ; 00
0142: nop                 ; 00
0143: nop                 ; 00
0144: nop                 ; 00
0145: nop                 ; 00
0146: nop                 ; 00
0147: nop                 ; 00
0148: nop                 ; 00
0149: nop                 ; 00
014A: nop                 ; 00
014B: nop                 ; 00
014C: nop                 ; 00
014D: nop                 ; 00
014E: nop                 ; 00
014F: nop                 ; 00
0150: nop                 ; 00
0151: nop                 ; 00
0152: nop                 ; 00
0153: nop                 ; 00
0154: nop                 ; 00
0155: nop                 ; 00
0156: nop                 ; 00
0157: nop                 ; 00
0158: nop                 ; 00
0159: nop                 ; 00
015A: nop                 ; 00
015B: nop                 ; 00
015C: nop                 ; 00
015D: nop                 ; FC
015E: nop                 ; FF
015F: nop                 ; 00
0160: nop                 ; 00
0161: nop                 ; 00
0162: nop                 ; 00
0163: nop                 ; 00
0164: nop                 ; 00
0165: nop                 ; 00
0166: nop                 ; 00
0167: nop                 ; 00
0168: nop                 ; 00
0169: nop                 ; 00
016A: push y              ; 02
016B: nop                 ; 00
016C: nop                 ; 00
016D: nop                 ; 00
016E: nop                 ; 00
016F: nop                 ; 00
0170: nop                 ; 00
0171: nop                 ; 00
0172: nop                 ; 00
0173: nop                 ; 00
0174: nop                 ; 00
0175: nop                 ; 00
0176: nop                 ; 00
0177: nop                 ; 00
0178: nop                 ; 00
0179: nop                 ; 00
017A: nop                 ; 00
017B: nop                 ; 00
017C: nop                 ; 00
017D: nop                 ; 00
017E: nop                 ; 00
017F: nop                 ; 00
0180: nop                 ; 00
0181: nop                 ; 00
0182: nop                 ; 00
0183: nop                 ; 00
0184: nop                 ; 00
0185: nop                 ; FC
0186: nop                 ; FF
0187: nop                 ; 00
0188: nop                 ; 00
0189: nop                 ; 00
018A: nop                 ; 00
018B: nop                 ; 00
018C: nop                 ; 00
018D: nop                 ; 00
018E: nop                 ; 00
018F: nop                 ; 00
0190: nop                 ; 00
0191: nop                 ; 00
0192: nop                 ; 00
0193: nop                 ; 00
0194: nop                 ; 00
0195: nop                 ; 00
0196: nop                 ; 00
0197: nop                 ; 00
0198: nop                 ; 00
0199: nop                 ; 00
019A: nop                 ; 00
019B: nop                 ; 00
019C: nop                 ; 00
019D: nop                 ; 00
019E: nop                 ; 00
019F: nop                 ; 00
01A0: nop                 ; 00
01A1: nop                 ; 00
01A2: nop                 ; 00
01A3: nop                 ; 00
01A4: nop                 ; 00
01A5: nop                 ; 00
01A6: nop                 ; 00
01A7: nop                 ; 00
01A8: nop                 ; 00
01A9: nop                 ; 00
01AA: nop                 ; 00
01AB: nop                 ; 00
01AC: nop                 ; 00
01AD: nop                 ; FC
01AE: nop                 ; FF
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
01CD: nop                 ; 00
01CE: nop                 ; 00
01CF: nop                 ; 00
01D0: nop                 ; 00
01D1: nop                 ; 00
01D2: nop                 ; 00
01D3: nop                 ; 00
01D4: nop                 ; 00
01D5: nop                 ; FC
01D6: nop                 ; FF
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
01F5: nop                 ; 00
01F6: nop                 ; 00
01F7: nop                 ; 00
01F8: nop                 ; 00
01F9: nop                 ; 00
01FA: nop                 ; 00
01FB: nop                 ; 00
01FC: nop                 ; 00
01FD: nop                 ; FC
01FE: nop                 ; FF
01FF: nop                 ; 00
0200: nop                 ; 00
0201: nop                 ; 00
0202: nop                 ; 00
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
021D: nop                 ; 00
021E: nop                 ; 00
021F: nop                 ; 00
0220: nop                 ; 00
0221: nop                 ; 00
0222: nop                 ; 00
0223: nop                 ; 00
0224: nop                 ; 00
0225: nop                 ; FC
0226: nop                 ; FF
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
0245: nop                 ; 00
0246: nop                 ; 00
0247: nop                 ; 00
0248: nop                 ; 00
0249: nop                 ; 00
024A: nop                 ; 00
024B: nop                 ; 00
024C: nop                 ; 00
024D: nop                 ; FC
024E: nop                 ; FF
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
026D: nop                 ; 00
026E: nop                 ; 00
026F: nop                 ; 00
0270: nop                 ; 00
0271: nop                 ; 00
0272: nop                 ; 00
0273: nop                 ; 00
0274: nop                 ; 00
0275: nop                 ; FC
0276: nop                 ; FF
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
0295: nop                 ; 00
0296: nop                 ; 00
0297: nop                 ; 00
0298: nop                 ; 00
0299: nop                 ; 00
029A: nop                 ; 00
029B: nop                 ; 00
029C: nop                 ; 00
029D: nop                 ; FC
029E: nop                 ; FF
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
02BD: nop                 ; 00
02BE: nop                 ; 00
02BF: nop                 ; 00
02C0: nop                 ; 00
02C1: nop                 ; 00
02C2: nop                 ; 00
02C3: nop                 ; 00
02C4: nop                 ; 00
02C5: nop                 ; FC
02C6: nop                 ; FF
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
02E5: nop                 ; 00
02E6: nop                 ; 00
02E7: nop                 ; 00
02E8: nop                 ; 00
02E9: nop                 ; 00
02EA: nop                 ; 00
02EB: nop                 ; 00
02EC: nop                 ; 00
02ED: nop                 ; FC
02EE: nop                 ; FF
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
030D: nop                 ; 00
030E: nop                 ; 00
030F: nop                 ; 00
0310: nop                 ; 00
0311: nop                 ; 00
0312: nop                 ; 00
0313: nop                 ; 00
0314: nop                 ; 00
0315: nop                 ; FC
0316: nop                 ; FF
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
0335: nop                 ; 00
0336: nop                 ; 00
0337: nop                 ; 00
0338: nop                 ; 00
0339: nop                 ; 00
033A: nop                 ; 00
033B: nop                 ; 00
033C: nop                 ; 00
033D: nop                 ; FC
033E: nop                 ; FF
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
035D: nop                 ; 00
035E: nop                 ; 00
035F: nop                 ; 00
0360: nop                 ; 00
0361: nop                 ; 00
0362: nop                 ; 00
0363: nop                 ; 00
0364: nop                 ; 00
0365: nop                 ; FC
0366: nop                 ; FF
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
0385: nop                 ; 00
0386: nop                 ; 00
0387: nop                 ; 00
0388: nop                 ; 00
0389: nop                 ; 00
038A: nop                 ; 00
038B: nop                 ; 00
038C: nop                 ; 00
038D: nop                 ; FC
038E: nop                 ; FF
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
03AD: nop                 ; 00
03AE: nop                 ; 00
03AF: nop                 ; 00
03B0: nop                 ; 00
03B1: nop                 ; 00
03B2: nop                 ; 00
03B3: nop                 ; 00
03B4: nop                 ; 00
03B5: nop                 ; FC
03B6: nop                 ; FF
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
03D5: nop                 ; 00
03D6: nop                 ; 00
03D7: nop                 ; 00
03D8: nop                 ; 00
03D9: nop                 ; 00
03DA: nop                 ; 00
03DB: nop                 ; 00
03DC: nop                 ; 00
03DD: nop                 ; FC
03DE: nop                 ; FF
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
03FD: nop                 ; 00
03FE: nop                 ; 00
03FF: nop                 ; 00
0400: nop                 ; 00
0401: nop                 ; 00
0402: nop                 ; 00
0403: nop                 ; 00
0404: nop                 ; 00
0405: nop                 ; FC
0406: nop                 ; FF
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
0425: nop                 ; 00
0426: nop                 ; 00
0427: nop                 ; 00
0428: nop                 ; 00
0429: nop                 ; 00
042A: nop                 ; 00
042B: nop                 ; 00
042C: nop                 ; 00
042D: nop                 ; FC
042E: nop                 ; FF
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
044D: nop                 ; 00
044E: nop                 ; 00
044F: nop                 ; 00
0450: nop                 ; 00
0451: nop                 ; 00
0452: nop                 ; 00
0453: nop                 ; 00
0454: nop                 ; 00
0455: nop                 ; FC
0456: nop                 ; FF
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
0475: nop                 ; 00
0476: nop                 ; 00
0477: nop                 ; 00
0478: nop                 ; 00
0479: nop                 ; 00
047A: nop                 ; 00
047B: nop                 ; 00
047C: nop                 ; 00
047D: nop                 ; FC
047E: nop                 ; FF
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
049D: nop                 ; 00
049E: nop                 ; 00
049F: nop                 ; 00
04A0: nop                 ; 00
04A1: nop                 ; 00
04A2: nop                 ; 00
04A3: nop                 ; 00
04A4: nop                 ; 00
04A5: nop                 ; FC
04A6: nop                 ; FF
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
04C5: nop                 ; 00
04C6: nop                 ; 00
04C7: nop                 ; 00
04C8: nop                 ; 00
04C9: nop                 ; 00
04CA: nop                 ; 00
04CB: nop                 ; 00
04CC: nop                 ; 00
04CD: nop                 ; FC
04CE: nop                 ; FF
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
04ED: nop                 ; 00
04EE: nop                 ; 00
04EF: nop                 ; 00
04F0: nop                 ; 00
04F1: nop                 ; 00
04F2: nop                 ; 00
04F3: nop                 ; 00
04F4: nop                 ; 00
04F5: nop                 ; FC
04F6: nop                 ; FF
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
0515: nop                 ; 00
0516: nop                 ; 00
0517: nop                 ; 00
0518: nop                 ; 00
0519: nop                 ; 00
051A: nop                 ; 00
051B: nop                 ; 00
051C: nop                 ; 00
051D: nop                 ; FC
051E: nop                 ; FF
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
053D: nop                 ; 00
053E: nop                 ; 00
053F: nop                 ; 00
0540: nop                 ; 00
0541: nop                 ; 00
0542: nop                 ; 00
0543: nop                 ; 00
0544: nop                 ; 00
0545: nop                 ; FC
0546: nop                 ; FF
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
0565: nop                 ; 00
0566: nop                 ; 00
0567: nop                 ; 00
0568: nop                 ; 00
0569: nop                 ; 00
056A: nop                 ; 00
056B: nop                 ; 00
056C: nop                 ; 00
056D: nop                 ; FC
056E: nop                 ; FF
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
058D: nop                 ; 00
058E: nop                 ; 00
058F: nop                 ; 00
0590: nop                 ; 00
0591: nop                 ; 00
0592: nop                 ; 00
0593: nop                 ; 00
0594: nop                 ; 00
0595: nop                 ; FC
0596: nop                 ; FF
0597: nop                 ; 00
0598: nop                 ; 00
0599: nop                 ; 00
059A: nop                 ; 00
059B: nop                 ; 00
059C: nop                 ; 00
059D: nop                 ; 00
059E: nop                 ; 00
059F: load y, $0000       ; 10 00 00
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
05B5: nop                 ; 00
05B6: nop                 ; 00
05B7: nop                 ; 00
05B8: nop                 ; 00
05B9: nop                 ; 00
05BA: nop                 ; 00
05BB: nop                 ; 00
05BC: nop                 ; 00
05BD: nop                 ; FC
05BE: nop                 ; FF
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
05DD: nop                 ; 00
05DE: nop                 ; 00
05DF: nop                 ; 00
05E0: nop                 ; 00
05E1: nop                 ; 00
05E2: nop                 ; 00
05E3: nop                 ; 00
05E4: nop                 ; 00
05E5: nop                 ; FC
05E6: nop                 ; FF
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
0605: nop                 ; 00
0606: nop                 ; 00
0607: nop                 ; 00
0608: nop                 ; 00
0609: nop                 ; 00
060A: nop                 ; 00
060B: nop                 ; 00
060C: nop                 ; 00
060D: nop                 ; FC
060E: nop                 ; FF
060F: nop                 ; 00
0610: nop                 ; 00
0611: nop                 ; 00
0612: nop                 ; 00
0613: nop                 ; 00
0614: nop                 ; 00
0615: nop                 ; 00
0616: nop                 ; 00
0617: push x              ; 01
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
062D: nop                 ; 00
062E: nop                 ; 00
062F: nop                 ; 00
0630: nop                 ; 00
0631: nop                 ; 00
0632: nop                 ; 00
0633: nop                 ; 00
0634: nop                 ; 00
0635: nop                 ; FC
0636: nop                 ; FF
0637: nop                 ; 00
0638: nop                 ; 00
0639: nop                 ; 00
063A: nop                 ; 00
063B: nop                 ; 00
063C: nop                 ; 00
063D: nop                 ; 00
063E: add a, x            ; 20
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
0655: nop                 ; 00
0656: nop                 ; 00
0657: nop                 ; 00
0658: nop                 ; 00
0659: nop                 ; 00
065A: nop                 ; 00
065B: nop                 ; 00
065C: nop                 ; 00
065D: nop                 ; FC
065E: nop                 ; FF
065F: nop                 ; 00
0660: nop                 ; 00
0661: nop                 ; 00
0662: nop                 ; F4
0663: nop                 ; B7
0664: push y              ; 02
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
067D: nop                 ; 00
067E: nop                 ; 00
067F: nop                 ; 00
0680: nop                 ; 00
0681: nop                 ; 00
0682: nop                 ; 00
0683: nop                 ; 00
0684: nop                 ; 00
0685: nop                 ; FC
0686: nop                 ; FF
0687: nop                 ; 00
0688: nop                 ; 00
0689: shl y, $BA          ; 80 BA
068B: nop                 ; DD
068C: nop                 ; FA
068D: cmpbit y            ; 5B 41
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
06A5: nop                 ; 00
06A6: nop                 ; 00
06A7: nop                 ; 00
06A8: nop                 ; 00
06A9: nop                 ; 00
06AA: nop                 ; 00
06AB: nop                 ; 00
06AC: nop                 ; 00
06AD: nop                 ; FC
06AE: nop                 ; FF
06AF: nop                 ; 00
06B0: nop                 ; 00
06B1: nop                 ; E0
06B2: nop                 ; FF
06B3: load w, $F7ED       ; 12 ED F7
06B6: nop                 ; BE
06B7: adc a, x            ; 2A
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
06CD: nop                 ; 00
06CE: nop                 ; 00
06CF: nop                 ; 00
06D0: nop                 ; 00
06D1: nop                 ; 00
06D2: nop                 ; 00
06D3: nop                 ; 00
06D4: nop                 ; 00
06D5: nop                 ; FC
06D6: nop                 ; FF
06D7: nop                 ; 00
06D8: nop                 ; 00
06D9: nop                 ; 00
06DA: and a, x            ; 5F
06DB: nop                 ; 00
06DC: nop                 ; F0
06DD: cmpbit x            ; 5A AB
06DF: cmp x, $95          ; 55 95
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
06F5: nop                 ; 00
06F6: nop                 ; 00
06F7: nop                 ; 00
06F8: nop                 ; 00
06F9: nop                 ; 00
06FA: nop                 ; 00
06FB: nop                 ; 00
06FC: nop                 ; 00
06FD: nop                 ; FC
06FE: nop                 ; FF
06FF: nop                 ; 00
0700: nop                 ; 00
0701: nop                 ; 00
0702: nop                 ; F0
0703: nop                 ; FF
0704: adc x, $00          ; 2F 00
0706: nop                 ; 00
0707: nop                 ; 00
0708: cmp a, y            ; 52
0709: nop                 ; AD
070A: pop z               ; 0A
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
071D: nop                 ; 00
071E: nop                 ; 00
071F: nop                 ; 00
0720: nop                 ; 00
0721: nop                 ; 00
0722: nop                 ; 00
0723: nop                 ; 00
0724: nop                 ; 00
0725: nop                 ; FC
0726: nop                 ; FF
0727: mul a, w            ; 40
0728: nop                 ; 00
0729: nop                 ; 00
072A: mul a, w            ; 40
072B: adc x, $00          ; 2F 00
072D: nop                 ; 00
072E: nop                 ; 00
072F: nop                 ; 00
0730: nop                 ; 00
0731: int $EA             ; A0 EA
0733: cmp x, $01          ; 55 01
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
0745: nop                 ; 00
0746: nop                 ; 00
0747: nop                 ; 00
0748: nop                 ; 00
0749: nop                 ; 00
074A: nop                 ; 00
074B: nop                 ; 00
074C: nop                 ; 00
074D: nop                 ; FC
074E: nop                 ; FF
074F: load y, $0805       ; 10 05 08
0752: nop                 ; 00
0753: nop                 ; E8
0754: push a              ; 05
0755: shl w, $24          ; 82 24
0757: inc y               ; 48
0758: nop                 ; 00
0759: nop                 ; 00
075A: nop                 ; 00
075B: int $7E             ; A0 7E
075D: push a              ; 05
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
076D: nop                 ; 00
076E: nop                 ; 00
076F: nop                 ; 00
0770: nop                 ; 00
0771: nop                 ; 00
0772: nop                 ; 00
0773: nop                 ; 00
0774: nop                 ; 00
0775: nop                 ; FC
0776: nop                 ; FF
0777: mul x, $00          ; 42 00
0779: nop                 ; 00
077A: nop                 ; 00
077B: dec a               ; 50
077C: nop                 ; BF
077D: load y, $B580       ; 10 80 B5
0780: cmp z, $05          ; 57 05
0782: nop                 ; 00
0783: nop                 ; 00
0784: shl z, $A8          ; 81 A8
0786: pop z               ; 0A
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
0795: nop                 ; 00
0796: nop                 ; 00
0797: nop                 ; 00
0798: nop                 ; 00
0799: nop                 ; 00
079A: nop                 ; 00
079B: nop                 ; 00
079C: nop                 ; 00
079D: nop                 ; FC
079E: nop                 ; FF
079F: nop                 ; D0
07A0: push y              ; 02
07A1: nop                 ; 00
07A2: nop                 ; 00
07A3: nop                 ; 00
07A4: nop                 ; EA
07A5: shr w, $7A          ; 87 7A
07A7: or w, $FD           ; 6F FD
07A9: nop                 ; FF
07AA: adc a, x            ; 2A
07AB: mul a, w            ; 40
07AC: and a, x            ; 5F
07AD: nop                 ; AA
07AE: nop                 ; 00
07AF: add a, x            ; 20
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
07BD: nop                 ; 00
07BE: nop                 ; 00
07BF: nop                 ; 00
07C0: nop                 ; 00
07C1: nop                 ; 00
07C2: nop                 ; 00
07C3: nop                 ; 00
07C4: nop                 ; 00
07C5: nop                 ; FC
07C6: nop                 ; FF
07C7: nop                 ; E4
07C8: push y              ; 02
07C9: load y, $0004       ; 10 04 00
07CC: nop                 ; E9
07CD: nop                 ; FE
07CE: nop                 ; AF
07CF: nop                 ; BD
07D0: store $ABA9, w      ; 17 A9 AB
07D3: nop                 ; AF
07D4: int $25             ; A0 25
07D6: nop                 ; A9
07D7: inc w               ; 4A
07D8: cmp x, $55          ; 55 55
07DA: push x              ; 01
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
07E5: nop                 ; 00
07E6: nop                 ; 00
07E7: nop                 ; 00
07E8: nop                 ; 00
07E9: nop                 ; 00
07EA: nop                 ; 00
07EB: nop                 ; 00
07EC: nop                 ; 00
07ED: nop                 ; FC
07EE: nop                 ; FF
07EF: nop                 ; C8
07F0: push a              ; 05
07F1: mul a, w            ; 40
07F2: shl y, $04          ; 80 04
07F4: shl y, $55          ; 80 55
07F6: nop                 ; F5
07F7: or a, w             ; 6B
07F8: nop                 ; E9
07F9: cmp y, $4A          ; 56 4A
07FB: cmp a, $5D          ; 59 5D
07FD: cmp x, $02          ; 55 02
07FF: cmp a, x            ; 51
0800: push y              ; 02
0801: add a, x            ; 20
0802: push y              ; 02
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
080D: nop                 ; 00
080E: nop                 ; 00
080F: nop                 ; 00
0810: nop                 ; 00
0811: nop                 ; 00
0812: nop                 ; 00
0813: nop                 ; 00
0814: nop                 ; 00
0815: nop                 ; FC
0816: nop                 ; FF
0817: add a, x            ; 20
0818: nop                 ; 00
0819: nop                 ; 00
081A: add a, x            ; 20
081B: add a, x            ; 20
081C: add a, a            ; 24
081D: inc w               ; 4A
081E: and a, x            ; 5F
081F: nop                 ; AD
0820: nop                 ; AD
0821: inc w               ; 4A
0822: or a, y             ; 69
0823: nop                 ; EF
0824: cmp z, $05          ; 57 05
0826: nop                 ; A9
0827: dec x               ; 4C
0828: nop                 ; A9
0829: pop z               ; 0A
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
0835: nop                 ; 00
0836: nop                 ; 00
0837: nop                 ; 00
0838: nop                 ; 00
0839: nop                 ; 00
083A: nop                 ; 00
083B: nop                 ; 00
083C: nop                 ; 00
083D: nop                 ; FC
083E: nop                 ; FF
083F: mul a, w            ; 40
0840: add a, y            ; 21
0841: nop                 ; 00
0842: pop x               ; 08
0843: shl y, $48          ; 80 48
0845: load y, $7BF5       ; 10 F5 7B
0848: nop                 ; BB
0849: cmp a, z            ; 53
084A: nop                 ; FF
084B: inc w               ; 4A
084C: nop                 ; A5
084D: nop                 ; D4
084E: sub a, z            ; 36
084F: add a, y            ; 21
0850: cmp x, $25          ; 55 25
0852: nop                 ; A8
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
085D: nop                 ; 00
085E: nop                 ; 00
085F: nop                 ; 00
0860: nop                 ; 00
0861: nop                 ; 00
0862: nop                 ; 00
0863: nop                 ; 00
0864: nop                 ; 00
0865: nop                 ; FC
0866: nop                 ; FF
0867: add a, x            ; 20
0868: nop                 ; 00
0869: add a, x            ; 20
086A: nop                 ; EA
086B: pop z               ; 0A
086C: push y              ; 02
086D: mul a, a            ; 41
086E: cmpbit x            ; 5A DF
0870: or y, $FD           ; 6D FD
0872: adc a, w            ; 2D
0873: nop                 ; A4
0874: cmp x, $BB          ; 55 BB
0876: rol y               ; 8A
0877: jmp x, y            ; 94
0878: add a, a            ; 24
0879: ror a               ; 92
087A: shl w, $0A          ; 82 0A
087C: nop                 ; 00
087D: nop                 ; 00
087E: nop                 ; 00
087F: nop                 ; 00
0880: nop                 ; 00
0881: nop                 ; 00
0882: nop                 ; 00
0883: nop                 ; 00
0884: nop                 ; 00
0885: nop                 ; 00
0886: nop                 ; 00
0887: nop                 ; 00
0888: nop                 ; 00
0889: nop                 ; 00
088A: nop                 ; 00
088B: nop                 ; 00
088C: nop                 ; 00
088D: nop                 ; FC
088E: nop                 ; FF
088F: shl y, $00          ; 80 00
0891: nop                 ; 00
0892: cmp w, $55          ; 58 55
0894: dec a               ; 50
0895: shr a, $D0          ; 88 D0
0897: nop                 ; B5
0898: nop                 ; D6
0899: pop w               ; 0B
089A: dec a               ; 50
089B: nop                 ; BB
089C: nop                 ; B6
089D: nop                 ; AA
089E: sub a, y            ; 35
089F: add a, z            ; 22
08A0: nop                 ; A9
08A1: add a, a            ; 24
08A2: add w, $00          ; 28 00
08A4: nop                 ; 00
08A5: nop                 ; 00
08A6: nop                 ; 00
08A7: nop                 ; 00
08A8: nop                 ; 00
08A9: nop                 ; 00
08AA: nop                 ; 00
08AB: nop                 ; 00
08AC: nop                 ; 00
08AD: nop                 ; 00
08AE: nop                 ; 00
08AF: nop                 ; 00
08B0: nop                 ; 00
08B1: nop                 ; 00
08B2: nop                 ; 00
08B3: nop                 ; 00
08B4: nop                 ; 00
08B5: nop                 ; FC
08B6: nop                 ; FF
08B7: nop                 ; 00
08B8: nop                 ; 00
08B9: shl y, $D4          ; 80 D4
08BB: push y              ; 02
08BC: push a              ; 05
08BD: push y              ; 02
08BE: push y              ; 02
08BF: nop                 ; AA
08C0: sub w, $00          ; 3B 00
08C2: push x              ; 01
08C3: int $DA             ; A0 DA
08C5: cmp y, $55          ; 56 55
08C7: shr a, $00          ; 88 00
08C9: ror z               ; 90
08CA: nop                 ; 00
08CB: shr x, $00          ; 84 00
08CD: nop                 ; 00
08CE: nop                 ; 00
08CF: nop                 ; 00
08D0: nop                 ; 00
08D1: nop                 ; 00
08D2: nop                 ; 00
08D3: nop                 ; 00
08D4: nop                 ; 00
08D5: nop                 ; 00
08D6: nop                 ; 00
08D7: nop                 ; 00
08D8: nop                 ; 00
08D9: nop                 ; 00
08DA: nop                 ; 00
08DB: nop                 ; 00
08DC: nop                 ; 00
08DD: nop                 ; FC
08DE: nop                 ; FF
08DF: nop                 ; 00
08E0: nop                 ; 00
08E1: push w              ; 04
08E2: or a, x             ; 68
08E3: and a, x            ; 5F
08E4: nop                 ; 00
08E5: int $A8             ; A0 A8
08E7: inc w               ; 4A
08E8: inc w               ; 4A
08E9: or a, y             ; 69
08EA: nop                 ; AD
08EB: and a, y            ; 60
08EC: shr y, $AD          ; 85 AD
08EE: rol y               ; 8A
08EF: add a, z            ; 22
08F0: nop                 ; 00
08F1: nop                 ; 00
08F2: nop                 ; 00
08F3: load z, $0000       ; 11 00 00
08F6: nop                 ; 00
08F7: nop                 ; 00
08F8: nop                 ; 00
08F9: nop                 ; 00
08FA: nop                 ; 00
08FB: nop                 ; 00
08FC: nop                 ; 00
08FD: nop                 ; 00
08FE: nop                 ; 00
08FF: nop                 ; 00
0900: nop                 ; 00
0901: nop                 ; 00
0902: nop                 ; 00
0903: nop                 ; 00
0904: nop                 ; 00
0905: nop                 ; FC
0906: nop                 ; FF
0907: nop                 ; 00
0908: nop                 ; 00
0909: add a, y            ; 21
090A: nop                 ; DE
090B: not a               ; 75
090C: nop                 ; A9
090D: pop z               ; 0A
090E: push y              ; 02
090F: add a, x            ; 20
0910: add a, y            ; 21
0911: nop                 ; AA
0912: cmp a, y            ; 52
0913: nop                 ; AB
0914: jmp x, y            ; 94
0915: jmp $9020, y        ; 97 20 90
0918: nop                 ; 00
0919: nop                 ; 00
091A: ror a               ; 92
091B: push w              ; 04
091C: nop                 ; 00
091D: nop                 ; 00
091E: nop                 ; 00
091F: nop                 ; 00
0920: nop                 ; 00
0921: nop                 ; 00
0922: nop                 ; 00
0923: nop                 ; 00
0924: nop                 ; 00
0925: nop                 ; 00
0926: nop                 ; 00
0927: nop                 ; 00
0928: nop                 ; 00
0929: nop                 ; 00
092A: nop                 ; 00
092B: nop                 ; 00
092C: nop                 ; 00
092D: nop                 ; FC
092E: nop                 ; FF
092F: nop                 ; 00
0930: add a, x            ; 20
0931: mul a, w            ; 40
0932: nop                 ; B0
0933: nop                 ; DE
0934: push w              ; 04
0935: int $AA             ; A0 AA
0937: pop z               ; 0A
0938: inc w               ; 4A
0939: cmp x, $AD          ; 55 AD
093B: nop                 ; A6
093C: adc a, x            ; 2A
093D: cmp a, w            ; 54
093E: inc w               ; 4A
093F: add x, $05          ; 25 05
0941: shl y, $A4          ; 80 A4
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
094D: nop                 ; 00
094E: nop                 ; 00
094F: nop                 ; 00
0950: nop                 ; 00
0951: nop                 ; 00
0952: nop                 ; 00
0953: nop                 ; 00
0954: nop                 ; 00
0955: nop                 ; FC
0956: nop                 ; FF
0957: nop                 ; 00
0958: nop                 ; 00
0959: push w              ; 04
095A: nop                 ; DD
095B: or a, w             ; 6B
095C: nop                 ; D5
095D: cmp z, $55          ; 57 55
095F: sec                 ; A2
0960: nop                 ; 00
0961: nop                 ; AD
0962: or a, z             ; 6A
0963: add a, $95          ; 29 95
0965: inc w               ; 4A
0966: add a, $92          ; 29 92
0968: nop                 ; A8
0969: adc a, x            ; 2A
096A: load w, $0000       ; 12 00 00
096D: nop                 ; 00
096E: nop                 ; 00
096F: nop                 ; 00
0970: nop                 ; 00
0971: nop                 ; 00
0972: nop                 ; 00
0973: nop                 ; 00
0974: nop                 ; 00
0975: nop                 ; 00
0976: nop                 ; 00
0977: nop                 ; 00
0978: nop                 ; 00
0979: nop                 ; 00
097A: nop                 ; 00
097B: nop                 ; 00
097C: nop                 ; 00
097D: nop                 ; FC
097E: nop                 ; FF
097F: nop                 ; 00
0980: shl y, $20          ; 80 20
0982: nop                 ; B4
0983: nop                 ; DE
0984: adc a, x            ; 2A
0985: nop                 ; FF
0986: nop                 ; BF
0987: pop z               ; 0A
0988: cmp x, $AA          ; 55 AA
098A: nop                 ; B6
098B: shl w, $AA          ; 82 AA
098D: ror a               ; 92
098E: shr x, $24          ; 84 24
0990: push y              ; 02
0991: shl y, $04          ; 80 04
0993: mul a, w            ; 40
0994: push y              ; 02
0995: nop                 ; 00
0996: nop                 ; 00
0997: nop                 ; 00
0998: nop                 ; 00
0999: nop                 ; 00
099A: nop                 ; 00
099B: nop                 ; 00
099C: nop                 ; 00
099D: nop                 ; 00
099E: nop                 ; 00
099F: nop                 ; 00
09A0: nop                 ; 00
09A1: nop                 ; 00
09A2: nop                 ; 00
09A3: nop                 ; 00
09A4: nop                 ; 00
09A5: nop                 ; FC
09A6: nop                 ; FF
09A7: nop                 ; 00
09A8: nop                 ; 00
09A9: load y, $7BD5       ; 10 D5 7B
09AC: nop                 ; D2
09AD: nop                 ; FF
09AE: nop                 ; FF
09AF: cmp x, $20          ; 55 20
09B1: nop                 ; A9
09B2: dec y               ; 4D
09B3: or a, y             ; 69
09B4: nop                 ; FD
09B5: dec y               ; 4D
09B6: cmp a, y            ; 52
09B7: ror a               ; 92
09B8: cmp a, w            ; 54
09B9: cmpbit y            ; 5B 42
09BB: store $0029, y      ; 15 29 00
09BE: nop                 ; 00
09BF: nop                 ; 00
09C0: nop                 ; 00
09C1: nop                 ; 00
09C2: nop                 ; 00
09C3: nop                 ; 00
09C4: nop                 ; 00
09C5: nop                 ; 00
09C6: nop                 ; 00
09C7: nop                 ; 00
09C8: nop                 ; 00
09C9: nop                 ; 00
09CA: nop                 ; 00
09CB: nop                 ; 00
09CC: nop                 ; 00
09CD: nop                 ; FC
09CE: nop                 ; FF
09CF: nop                 ; 00
09D0: nop                 ; 00
09D1: mul x, $B8          ; 42 B8
09D3: nop                 ; AE
09D4: nop                 ; AD
09D5: nop                 ; FF
09D6: nop                 ; FF
09D7: nop                 ; EF
09D8: inc w               ; 4A
09D9: cmp a, y            ; 52
09DA: cmp a, z            ; 53
09DB: nop                 ; AA
09DC: cmp y, $BB          ; 56 BB
09DE: jmp x, y            ; 94
09DF: mul z, $82          ; 44 82
09E1: nop                 ; A4
09E2: store $84A8, x      ; 14 A8 84
09E5: nop                 ; 00
09E6: nop                 ; 00
09E7: nop                 ; 00
09E8: nop                 ; 00
09E9: nop                 ; 00
09EA: nop                 ; 00
09EB: nop                 ; 00
09EC: nop                 ; 00
09ED: nop                 ; 00
09EE: nop                 ; 00
09EF: nop                 ; 00
09F0: nop                 ; 00
09F1: nop                 ; 00
09F2: nop                 ; 00
09F3: nop                 ; 00
09F4: nop                 ; 00
09F5: nop                 ; FC
09F6: nop                 ; FF
09F7: nop                 ; 00
09F8: inc y               ; 48
09F9: pop x               ; 08
09FA: nop                 ; ED
09FB: cmpbit y            ; 5B F5
09FD: nop                 ; FF
09FE: nop                 ; FF
09FF: nop                 ; FF
0A00: clc                 ; A3
0A01: cmp x, $4D          ; 55 4D
0A03: cmpbit w            ; 5D FB
0A05: cmp y, $21          ; 56 21
0A07: add a, $A9          ; 29 A9
0A09: inc w               ; 4A
0A0A: cmp x, $2B          ; 55 2B
0A0C: nop                 ; D2
0A0D: push y              ; 02
0A0E: nop                 ; 00
0A0F: nop                 ; 00
0A10: nop                 ; 00
0A11: nop                 ; 00
0A12: nop                 ; 00
0A13: nop                 ; 00
0A14: nop                 ; 00
0A15: nop                 ; 00
0A16: nop                 ; 00
0A17: nop                 ; 00
0A18: nop                 ; 00
0A19: nop                 ; 00
0A1A: nop                 ; 00
0A1B: nop                 ; 00
0A1C: nop                 ; 00
0A1D: nop                 ; FC
0A1E: nop                 ; FF
0A1F: nop                 ; 00
0A20: nop                 ; 00
0A21: cmp a, x            ; 51
0A22: not y               ; 72
0A23: nop                 ; F7
0A24: nop                 ; DE
0A25: nop                 ; FF
0A26: nop                 ; FF
0A27: nop                 ; FF
0A28: jmp $5097, y        ; 97 97 50
0A2B: or a, w             ; 6B
0A2C: nop                 ; AD
0A2D: nop                 ; AD
0A2E: jmp x, y            ; 94
0A2F: inc w               ; 4A
0A30: add a, z            ; 22
0A31: add a, $49          ; 29 49
0A33: ror a               ; 92
0A34: add x, $0D          ; 25 0D
0A36: nop                 ; 00
0A37: nop                 ; 00
0A38: nop                 ; 00
0A39: nop                 ; 00
0A3A: nop                 ; 00
0A3B: nop                 ; 00
0A3C: nop                 ; 00
0A3D: nop                 ; 00
0A3E: nop                 ; 00
0A3F: nop                 ; 00
0A40: nop                 ; 00
0A41: nop                 ; 00
0A42: nop                 ; 00
0A43: nop                 ; 00
0A44: nop                 ; 00
0A45: nop                 ; FC
0A46: nop                 ; FF
0A47: mul a, w            ; 40
0A48: load w, $AAA4       ; 12 A4 AA
0A4B: cmpbit w            ; 5D FB
0A4D: nop                 ; FF
0A4E: nop                 ; FF
0A4F: nop                 ; FF
0A50: resume              ; A1
0A51: and a, x            ; 5F
0A52: nop                 ; EA
0A53: nop                 ; AA
0A54: nop                 ; B6
0A55: load w, $AEEA       ; 12 EA AE
0A58: jmp x, y            ; 94
0A59: or a, z             ; 6A
0A5A: nop                 ; A5
0A5B: nop                 ; FA
0A5C: rol y               ; 8A
0A5D: cmp a, w            ; 54
0A5E: nop                 ; 00
0A5F: nop                 ; 00
0A60: nop                 ; 00
0A61: nop                 ; 00
0A62: nop                 ; 00
0A63: nop                 ; 00
0A64: nop                 ; 00
0A65: nop                 ; 00
0A66: nop                 ; 00
0A67: nop                 ; 00
0A68: nop                 ; 00
0A69: nop                 ; 00
0A6A: nop                 ; 00
0A6B: nop                 ; 00
0A6C: nop                 ; 00
0A6D: nop                 ; FC
0A6E: nop                 ; FF
0A6F: pop x               ; 08
0A70: int $92             ; A0 92
0A72: nop                 ; EA
0A73: nop                 ; F7
0A74: nop                 ; FF
0A75: nop                 ; FF
0A76: nop                 ; FF
0A77: nop                 ; FF
0A78: inc w               ; 4A
0A79: xor z, $85          ; 7C 85
0A7B: nop                 ; AD
0A7C: nop                 ; D5
0A7D: nop                 ; A4
0A7E: cmp x, $DB          ; 55 DB
0A80: nop                 ; A5
0A81: nop                 ; DE
0A82: nop                 ; DB
0A83: nop                 ; AE
0A84: sub a, w            ; 37
0A85: add a, $01          ; 29 01
0A87: nop                 ; 00
0A88: nop                 ; 00
0A89: nop                 ; 00
0A8A: nop                 ; 00
0A8B: nop                 ; 00
0A8C: nop                 ; 00
0A8D: nop                 ; 00
0A8E: nop                 ; 00
0A8F: nop                 ; 00
0A90: nop                 ; 00
0A91: nop                 ; 00
0A92: nop                 ; 00
0A93: nop                 ; 00
0A94: nop                 ; 00
0A95: nop                 ; FC
0A96: nop                 ; FF
0A97: add a, x            ; 20
0A98: store $BD6C, y      ; 15 6C BD
0A9B: nop                 ; FE
0A9C: nop                 ; FF
0A9D: nop                 ; FF
0A9E: nop                 ; FF
0A9F: adc x, $20          ; 2F 20
0AA1: nop                 ; F5
0AA2: cmp a, x            ; 51
0AA3: nop                 ; EB
0AA4: or w, $6B           ; 6F 6B
0AA6: nop                 ; DB
0AA7: nop                 ; AA
0AA8: nop                 ; BF
0AA9: xor y, $6D          ; 7B 6D
0AAB: xor y, $49          ; 7B 49
0AAD: cmp a, w            ; 54
0AAE: push a              ; 05
0AAF: nop                 ; 00
0AB0: nop                 ; 00
0AB1: nop                 ; 00
0AB2: nop                 ; 00
0AB3: nop                 ; 00
0AB4: nop                 ; 00
0AB5: nop                 ; 00
0AB6: nop                 ; 00
0AB7: nop                 ; 00
0AB8: nop                 ; 00
0AB9: nop                 ; 00
0ABA: nop                 ; 00
0ABB: nop                 ; 00
0ABC: nop                 ; 00
0ABD: nop                 ; FC
0ABE: nop                 ; FF
0ABF: mul z, $A0          ; 44 A0
0AC1: cmp a, y            ; 52
0AC2: nop                 ; EB
0AC3: nop                 ; DD
0AC4: nop                 ; FF
0AC5: nop                 ; FF
0AC6: nop                 ; FF
0AC7: cmp z, $45          ; 57 45
0AC9: nop                 ; D4
0ACA: shr w, $F6          ; 87 F6
0ACC: nop                 ; BA
0ACD: nop                 ; DA
0ACE: nop                 ; B6
0ACF: nop                 ; AD
0AD0: or a, z             ; 6A
0AD1: mul a, w            ; 40
0AD2: nop                 ; FD
0AD3: nop                 ; AE
0AD4: store $14A5, x      ; 14 A5 14
0AD7: nop                 ; 00
0AD8: nop                 ; 00
0AD9: nop                 ; 00
0ADA: nop                 ; 00
0ADB: nop                 ; 00
0ADC: nop                 ; 00
0ADD: nop                 ; 00
0ADE: nop                 ; 00
0ADF: nop                 ; 00
0AE0: nop                 ; 00
0AE1: nop                 ; 00
0AE2: nop                 ; 00
0AE3: nop                 ; 00
0AE4: nop                 ; 00
0AE5: nop                 ; FC
0AE6: nop                 ; FF
0AE7: load z, $ED55       ; 11 55 ED
0AEA: nop                 ; FD
0AEB: nop                 ; FF
0AEC: nop                 ; FF
0AED: nop                 ; FF
0AEE: nop                 ; FF
0AEF: pop y               ; 09
0AF0: load z, $11A1       ; 11 A1 11
0AF3: nop                 ; DB
0AF4: nop                 ; D7
0AF5: cmp y, $4B          ; 56 4B
0AF7: nop                 ; F5
0AF8: nop                 ; BF
0AF9: nop                 ; 00
0AFA: nop                 ; D4
0AFB: xor y, $55          ; 7B 55
0AFD: nop                 ; A8
0AFE: load w, $0000       ; 12 00 00
0B01: nop                 ; 00
0B02: nop                 ; 00
0B03: nop                 ; 00
0B04: nop                 ; 00
0B05: nop                 ; 00
0B06: nop                 ; 00
0B07: nop                 ; 00
0B08: nop                 ; 00
0B09: nop                 ; 00
0B0A: nop                 ; 00
0B0B: nop                 ; 00
0B0C: nop                 ; 00
0B0D: nop                 ; FC
0B0E: nop                 ; FF
0B0F: mul z, $AA          ; 44 AA
0B11: cmpbit x            ; 5A FF
0B13: nop                 ; FF
0B14: nop                 ; FF
0B15: nop                 ; FF
0B16: nop                 ; FF
0B17: cmp y, $44          ; 56 44
0B19: pop x               ; 08
0B1A: mul z, $7C          ; 44 7C
0B1C: nop                 ; AD
0B1D: nop                 ; FD
0B1E: xor a, y            ; 77
0B1F: nop                 ; EF
0B20: or a, w             ; 6B
0B21: push x              ; 01
0B22: shl y, $D6          ; 80 D6
0B24: ror a               ; 92
0B25: cmp a, y            ; 52
0B26: nop                 ; 00
0B27: nop                 ; 00
0B28: nop                 ; 00
0B29: nop                 ; 00
0B2A: nop                 ; 00
0B2B: nop                 ; 00
0B2C: nop                 ; 00
0B2D: nop                 ; 00
0B2E: nop                 ; 00
0B2F: nop                 ; 00
0B30: nop                 ; 00
0B31: nop                 ; 00
0B32: nop                 ; 00
0B33: nop                 ; 00
0B34: nop                 ; 00
0B35: nop                 ; FC
0B36: nop                 ; FF
0B37: cmp a, x            ; 51
0B38: cmp x, $EB          ; 55 EB
0B3A: nop                 ; FF
0B3B: nop                 ; FF
0B3C: nop                 ; FF
0B3D: nop                 ; FF
0B3E: shl x, $A9          ; 7F A9
0B40: load w, $12A5       ; 12 A5 12
0B43: cmp a, y            ; 52
0B44: not a               ; 75
0B45: nop                 ; B7
0B46: nop                 ; EE
0B47: nop                 ; BD
0B48: nop                 ; FF
0B49: push x              ; 01
0B4A: nop                 ; 00
0B4B: sub z, $25          ; 3A 25
0B4D: nop                 ; 00
0B4E: nop                 ; 00
0B4F: nop                 ; 00
0B50: nop                 ; 00
0B51: nop                 ; 00
0B52: nop                 ; 00
0B53: nop                 ; 00
0B54: nop                 ; 00
0B55: nop                 ; 00
0B56: nop                 ; 00
0B57: nop                 ; 00
0B58: nop                 ; 00
0B59: nop                 ; 00
0B5A: nop                 ; 00
0B5B: nop                 ; 00
0B5C: nop                 ; 00
0B5D: nop                 ; FC
0B5E: nop                 ; FF
0B5F: cmp x, $D5          ; 55 D5
0B61: nop                 ; FE
0B62: nop                 ; FF
0B63: nop                 ; FF
0B64: nop                 ; FF
0B65: nop                 ; FF
0B66: and a, x            ; 5F
0B67: not a               ; 75
0B68: mul a, a            ; 41
0B69: nop                 ; 00
0B6A: nop                 ; 00
0B6B: nop                 ; A8
0B6C: nop                 ; DD
0B6D: nop                 ; EE
0B6E: cmpbit y            ; 5B F7
0B70: xor w, $03          ; 7D 03
0B72: nop                 ; 00
0B73: nop                 ; A4
0B74: cmp a, w            ; 54
0B75: push a              ; 05
0B76: nop                 ; 00
0B77: nop                 ; 00
0B78: nop                 ; 00
0B79: nop                 ; 00
0B7A: nop                 ; 00
0B7B: nop                 ; 00
0B7C: nop                 ; 00
0B7D: nop                 ; 00
0B7E: nop                 ; 00
0B7F: nop                 ; 00
0B80: nop                 ; 00
0B81: nop                 ; 00
0B82: nop                 ; 00
0B83: nop                 ; 00
0B84: nop                 ; 00
0B85: nop                 ; FC
0B86: nop                 ; FF
0B87: nop                 ; AA
0B88: xor x, $FF          ; 7A FF
0B8A: nop                 ; FF
0B8B: nop                 ; FF
0B8C: nop                 ; FF
0B8D: nop                 ; FF
0B8E: nop                 ; BF
0B8F: nop                 ; F2
0B90: store $8845, y      ; 15 45 88
0B93: nop                 ; F0
0B94: nop                 ; F6
0B95: nop                 ; BB
0B96: nop                 ; ED
0B97: cmpbit w            ; 5D D7
0B99: push y              ; 02
0B9A: nop                 ; 00
0B9B: inc y               ; 48
0B9C: cmp x, $50          ; 55 50
0B9E: nop                 ; 00
0B9F: nop                 ; 00
0BA0: nop                 ; 00
0BA1: nop                 ; 00
0BA2: nop                 ; 00
0BA3: nop                 ; 00
0BA4: nop                 ; 00
0BA5: nop                 ; 00
0BA6: nop                 ; 00
0BA7: nop                 ; 00
0BA8: nop                 ; 00
0BA9: nop                 ; 00
0BAA: nop                 ; 00
0BAB: nop                 ; 00
0BAC: nop                 ; 00
0BAD: nop                 ; FC
0BAE: nop                 ; FF
0BAF: nop                 ; AA
0BB0: nop                 ; D6
0BB1: nop                 ; F7
0BB2: nop                 ; FF
0BB3: nop                 ; FF
0BB4: nop                 ; FF
0BB5: nop                 ; FF
0BB6: cmp z, $F5          ; 57 F5
0BB8: cmp a, x            ; 51
0BB9: nop                 ; 00
0BBA: nop                 ; 00
0BBB: shl y, $DF          ; 80 DF
0BBD: xor a, $77          ; 7E 77
0BBF: nop                 ; F7
0BC0: nop                 ; BA
0BC1: push.f              ; 07
0BC2: nop                 ; 00
0BC3: dec a               ; 50
0BC4: ror a               ; 92
0BC5: nop                 ; A5
0BC6: nop                 ; AD
0BC7: load w, $0000       ; 12 00 00
0BCA: nop                 ; 00
0BCB: nop                 ; 00
0BCC: nop                 ; 00
0BCD: nop                 ; 00
0BCE: nop                 ; 00
0BCF: nop                 ; 00
0BD0: nop                 ; 00
0BD1: nop                 ; 00
0BD2: nop                 ; 00
0BD3: nop                 ; 00
0BD4: nop                 ; 00
0BD5: nop                 ; FC
0BD6: nop                 ; FF
0BD7: nop                 ; BD
0BD8: nop                 ; FB
0BD9: nop                 ; FF
0BDA: nop                 ; FF
0BDB: nop                 ; FF
0BDC: nop                 ; FF
0BDD: nop                 ; FF
0BDE: nop                 ; AD
0BDF: nop                 ; F4
0BE0: push a              ; 05
0BE1: inc z               ; 49
0BE2: add a, x            ; 20
0BE3: and a, z            ; 61
0BE4: xor y, $D7          ; 7B D7
0BE6: nop                 ; DA
0BE7: nop                 ; AD
0BE8: nop                 ; ED
0BE9: pop z               ; 0A
0BEA: nop                 ; 00
0BEB: nop                 ; A8
0BEC: cmp x, $22          ; 55 22
0BEE: cmp a, y            ; 52
0BEF: inc w               ; 4A
0BF0: store $0000, y      ; 15 00 00
0BF3: nop                 ; 00
0BF4: nop                 ; 00
0BF5: nop                 ; 00
0BF6: nop                 ; 00
0BF7: nop                 ; 00
0BF8: nop                 ; 00
0BF9: nop                 ; 00
0BFA: nop                 ; 00
0BFB: nop                 ; 00
0BFC: nop                 ; 00
0BFD: nop                 ; FC
0BFE: nop                 ; FF
0BFF: nop                 ; EB
0C00: nop                 ; EE
0C01: nop                 ; FE
0C02: nop                 ; FF
0C03: nop                 ; FF
0C04: nop                 ; FF
0C05: shl x, $55          ; 7F 55
0C07: nop                 ; F5
0C08: add a, $80          ; 29 80
0C0A: push y              ; 02
0C0B: push w              ; 04
0C0C: nop                 ; DE
0C0D: nop                 ; B5
0C0E: shl x, $5B          ; 7F 5B
0C10: nop                 ; B7
0C11: push.f              ; 07
0C12: nop                 ; 00
0C13: and a, y            ; 60
0C14: nop                 ; AB
0C15: nop                 ; CA
0C16: nop                 ; AA
0C17: cmp a, y            ; 52
0C18: nop                 ; 00
0C19: nop                 ; 00
0C1A: nop                 ; 00
0C1B: nop                 ; 00
0C1C: nop                 ; 00
0C1D: nop                 ; 00
0C1E: nop                 ; 00
0C1F: nop                 ; 00
0C20: nop                 ; 00
0C21: nop                 ; 00
0C22: nop                 ; 00
0C23: nop                 ; 00
0C24: nop                 ; 00
0C25: nop                 ; FC
0C26: nop                 ; FF
0C27: nop                 ; BD
0C28: nop                 ; FF
0C29: nop                 ; FF
0C2A: nop                 ; FF
0C2B: nop                 ; FF
0C2C: nop                 ; FF
0C2D: nop                 ; BF
0C2E: adc a, x            ; 2A
0C2F: nop                 ; F9
0C30: load w, $9004       ; 12 04 90
0C33: nop                 ; 00
0C34: not a               ; 75
0C35: nop                 ; EF
0C36: nop                 ; EA
0C37: or y, $49           ; 6D 49
0C39: pop x               ; 08
0C3A: nop                 ; 00
0C3B: nop                 ; B0
0C3C: nop                 ; AD
0C3D: push w              ; 04
0C3E: nop                 ; A5
0C3F: push w              ; 04
0C40: push a              ; 05
0C41: nop                 ; 00
0C42: nop                 ; 00
0C43: nop                 ; 00
0C44: nop                 ; 00
0C45: nop                 ; 00
0C46: nop                 ; 00
0C47: nop                 ; 00
0C48: nop                 ; 00
0C49: nop                 ; 00
0C4A: nop                 ; 00
0C4B: nop                 ; 00
0C4C: nop                 ; 00
0C4D: nop                 ; FC
0C4E: nop                 ; FF
0C4F: nop                 ; EB
0C50: nop                 ; FF
0C51: nop                 ; FF
0C52: nop                 ; FF
0C53: nop                 ; FF
0C54: nop                 ; FF
0C55: nop                 ; AF
0C56: inc w               ; 4A
0C57: nop                 ; F2
0C58: nop                 ; A5
0C59: add a, x            ; 20
0C5A: push a              ; 05
0C5B: add a, z            ; 22
0C5C: nop                 ; D4
0C5D: nop                 ; AA
0C5E: nop                 ; BF
0C5F: nop                 ; B6
0C60: load w, $0215       ; 12 15 02
0C63: and a, y            ; 60
0C64: nop                 ; BF
0C65: nop                 ; AA
0C66: jmp x, y            ; 94
0C67: return              ; 1A
0C68: nop                 ; 00
0C69: pop x               ; 08
0C6A: nop                 ; 00
0C6B: nop                 ; 00
0C6C: nop                 ; 00
0C6D: nop                 ; 00
0C6E: nop                 ; 00
0C6F: nop                 ; 00
0C70: nop                 ; 00
0C71: nop                 ; 00
0C72: nop                 ; 00
0C73: nop                 ; 00
0C74: nop                 ; 00
0C75: nop                 ; FC
0C76: nop                 ; FF
0C77: nop                 ; FD
0C78: nop                 ; FD
0C79: nop                 ; FF
0C7A: nop                 ; FF
0C7B: nop                 ; FF
0C7C: nop                 ; FF
0C7D: nop                 ; A7
0C7E: ror a               ; 92
0C7F: nop                 ; F4
0C80: inc y               ; 48
0C81: nop                 ; 00
0C82: add a, x            ; 20
0C83: pop x               ; 08
0C84: or a, x             ; 68
0C85: nop                 ; DF
0C86: or a, z             ; 6A
0C87: nop                 ; AB
0C88: nop                 ; C8
0C89: return              ; 1A
0C8A: nop                 ; 00
0C8B: int $A5             ; A0 A5
0C8D: add a, x            ; 20
0C8E: cmp x, $29          ; 55 29
0C90: nop                 ; 00
0C91: nop                 ; 00
0C92: nop                 ; 00
0C93: nop                 ; 00
0C94: nop                 ; 00
0C95: nop                 ; 00
0C96: nop                 ; 00
0C97: nop                 ; 00
0C98: nop                 ; 00
0C99: nop                 ; 00
0C9A: nop                 ; 00
0C9B: nop                 ; 00
0C9C: nop                 ; 00
0C9D: nop                 ; FC
0C9E: nop                 ; FF
0C9F: nop                 ; BF
0CA0: nop                 ; FF
0CA1: nop                 ; FF
0CA2: nop                 ; FF
0CA3: nop                 ; FF
0CA4: nop                 ; FF
0CA5: load x, $F224       ; 0F 24 F2
0CA8: jmp $440A           ; 93 0A 44
0CAB: push y              ; 02
0CAC: nop                 ; C1
0CAD: nop                 ; BB
0CAE: nop                 ; DB
0CAF: nop                 ; BA
0CB0: not y               ; 72
0CB1: adc x, $00          ; 2F 00
0CB3: nop                 ; C0
0CB4: inc w               ; 4A
0CB5: cmpbit x            ; 5A 2E
0CB7: nop                 ; A5
0CB8: cmp x, $00          ; 55 00
0CBA: nop                 ; 00
0CBB: nop                 ; 00
0CBC: nop                 ; 00
0CBD: nop                 ; 00
0CBE: nop                 ; 00
0CBF: nop                 ; 00
0CC0: nop                 ; 00
0CC1: nop                 ; 00
0CC2: nop                 ; 00
0CC3: nop                 ; 00
0CC4: nop                 ; 00
0CC5: nop                 ; FC
0CC6: nop                 ; FF
0CC7: nop                 ; F5
0CC8: nop                 ; FF
0CC9: nop                 ; FF
0CCA: nop                 ; FF
0CCB: nop                 ; FF
0CCC: and a, x            ; 5F
0CCD: nop                 ; A5
0CCE: ror a               ; 92
0CCF: nop                 ; F8
0CD0: pop x               ; 08
0CD1: mul a, a            ; 41
0CD2: push y              ; 02
0CD3: load z, $ED48       ; 11 48 ED
0CD6: nop                 ; B6
0CD7: or y, $4D           ; 6D 4D
0CD9: sub a, y            ; 35
0CDA: nop                 ; 00
0CDB: nop                 ; 00
0CDC: or a, y             ; 69
0CDD: nop                 ; EB
0CDE: nop                 ; BA
0CDF: inc w               ; 4A
0CE0: pop z               ; 0A
0CE1: nop                 ; 00
0CE2: nop                 ; 00
0CE3: nop                 ; 00
0CE4: nop                 ; 00
0CE5: nop                 ; 00
0CE6: nop                 ; 00
0CE7: nop                 ; 00
0CE8: nop                 ; 00
0CE9: nop                 ; 00
0CEA: nop                 ; 00
0CEB: nop                 ; 00
0CEC: nop                 ; 00
0CED: nop                 ; FC
0CEE: nop                 ; FF
0CEF: nop                 ; EF
0CF0: nop                 ; FF
0CF1: nop                 ; FF
0CF2: nop                 ; FF
0CF3: nop                 ; FF
0CF4: nop                 ; F7
0CF5: pop w               ; 0B
0CF6: add a, a            ; 24
0CF7: nop                 ; F2
0CF8: sec                 ; A2
0CF9: store $4028, x      ; 14 28 40
0CFC: load y, $6D5A       ; 10 5A 6D
0CFF: cmp x, $5B          ; 55 5B
0D01: and a, x            ; 5F
0D02: nop                 ; 00
0D03: shl y, $DA          ; 80 DA
0D05: nop                 ; BD
0D06: or y, $A9           ; 6D A9
0D08: nop                 ; AA
0D09: nop                 ; 00
0D0A: nop                 ; 00
0D0B: nop                 ; 00
0D0C: nop                 ; 00
0D0D: nop                 ; 00
0D0E: nop                 ; 00
0D0F: nop                 ; 00
0D10: nop                 ; 00
0D11: nop                 ; 00
0D12: nop                 ; 00
0D13: nop                 ; 00
0D14: nop                 ; 00
0D15: nop                 ; FC
0D16: nop                 ; FF
0D17: nop                 ; BD
0D18: nop                 ; FD
0D19: nop                 ; FF
0D1A: nop                 ; EF
0D1B: nop                 ; AD
0D1C: cmpbit x            ; 5A AA
0D1E: ror a               ; 92
0D1F: nop                 ; F4
0D20: pop z               ; 0A
0D21: mul a, w            ; 40
0D22: nop                 ; 00
0D23: push w              ; 04
0D24: mul a, a            ; 41
0D25: nop                 ; F5
0D26: nop                 ; F7
0D27: nop                 ; D7
0D28: nop                 ; B6
0D29: cmp x, $00          ; 55 00
0D2B: nop                 ; 00
0D2C: or w, $AB           ; 6F AB
0D2E: nop                 ; BA
0D2F: adc a, x            ; 2A
0D30: cmp a, x            ; 51
0D31: nop                 ; 00
0D32: nop                 ; 00
0D33: nop                 ; 00
0D34: nop                 ; 00
0D35: nop                 ; 00
0D36: nop                 ; 00
0D37: nop                 ; 00
0D38: nop                 ; 00
0D39: nop                 ; 00
0D3A: nop                 ; 00
0D3B: nop                 ; 00
0D3C: nop                 ; 00
0D3D: nop                 ; FC
0D3E: nop                 ; FF
0D3F: nop                 ; F7
0D40: nop                 ; B7
0D41: xor w, $7B          ; 7D 7B
0D43: nop                 ; FB
0D44: nop                 ; AF
0D45: push a              ; 05
0D46: nop                 ; 00
0D47: nop                 ; F1
0D48: cmp a, x            ; 51
0D49: ror a               ; 92
0D4A: push w              ; 04
0D4B: add a, y            ; 21
0D4C: push w              ; 04
0D4D: store $5ABD, x      ; 14 BD 5A
0D50: cmp x, $5F          ; 55 5F
0D52: nop                 ; 00
0D53: nop                 ; 00
0D54: nop                 ; DA
0D55: or a, w             ; 6B
0D56: nop                 ; E7
0D57: nop                 ; A4
0D58: nop                 ; AA
0D59: push y              ; 02
0D5A: nop                 ; 00
0D5B: nop                 ; 00
0D5C: nop                 ; 00
0D5D: nop                 ; 00
0D5E: nop                 ; 00
0D5F: nop                 ; 00
0D60: nop                 ; 00
0D61: nop                 ; 00
0D62: nop                 ; 00
0D63: nop                 ; 00
0D64: nop                 ; 00
0D65: nop                 ; FC
0D66: nop                 ; FF
0D67: nop                 ; DD
0D68: nop                 ; FE
0D69: nop                 ; EF
0D6A: nop                 ; AF
0D6B: nop                 ; AD
0D6C: cmp a, w            ; 54
0D6D: ror a               ; 92
0D6E: inc w               ; 4A
0D6F: nop                 ; FC
0D70: push w              ; 04
0D71: pop x               ; 08
0D72: add a, z            ; 22
0D73: pop x               ; 08
0D74: add a, x            ; 20
0D75: nop                 ; D1
0D76: nop                 ; D7
0D77: nop                 ; AD
0D78: nop                 ; FA
0D79: nop                 ; B5
0D7A: nop                 ; 00
0D7B: nop                 ; 00
0D7C: xor w, $AD          ; 7D AD
0D7E: nop                 ; D5
0D7F: nop                 ; AA
0D80: add a, a            ; 24
0D81: push x              ; 01
0D82: nop                 ; 00
0D83: nop                 ; 00
0D84: nop                 ; 00
0D85: nop                 ; 00
0D86: nop                 ; 00
0D87: nop                 ; 00
0D88: nop                 ; 00
0D89: nop                 ; 00
0D8A: nop                 ; 00
0D8B: nop                 ; 00
0D8C: nop                 ; 00
0D8D: nop                 ; FC
0D8E: nop                 ; FF
0D8F: nop                 ; B7
0D90: cmpbit y            ; 5B FB
0D92: nop                 ; DA
0D93: cmp y, $AB          ; 56 AB
0D95: push a              ; 05
0D96: load y, $11F1       ; 10 F1 11
0D99: nop                 ; AA
0D9A: shr a, $82          ; 88 82
0D9C: pop z               ; 0A
0D9D: load w, $AB7E       ; 12 7E AB
0DA0: cmp y, $AF          ; 56 AF
0DA2: push x              ; 01
0DA3: nop                 ; 00
0DA4: nop                 ; D4
0DA5: or w, $BD           ; 6F BD
0DA7: adc a, x            ; 2A
0DA8: cmp x, $00          ; 55 00
0DAA: nop                 ; 00
0DAB: nop                 ; 00
0DAC: nop                 ; 00
0DAD: nop                 ; 00
0DAE: nop                 ; 00
0DAF: nop                 ; 00
0DB0: nop                 ; 00
0DB1: nop                 ; 00
0DB2: nop                 ; 00
0DB3: nop                 ; 00
0DB4: nop                 ; 00
0DB5: nop                 ; FC
0DB6: nop                 ; FF
0DB7: nop                 ; DD
0DB8: nop                 ; EE
0DB9: nop                 ; AD
0DBA: or w, $A9           ; 6F A9
0DBC: cmp a, w            ; 54
0DBD: add a, z            ; 22
0DBE: shl z, $F4          ; 81 F4
0DC0: mul z, $05          ; 44 05
0DC2: add a, z            ; 22
0DC3: add w, $20          ; 28 20
0DC5: nop                 ; E8
0DC6: nop                 ; FB
0DC7: nop                 ; D5
0DC8: nop                 ; FB
0DC9: cmp a, y            ; 52
0DCA: nop                 ; 00
0DCB: nop                 ; 00
0DCC: not w               ; 74
0DCD: nop                 ; AD
0DCE: push y              ; 02
0DCF: inc z               ; 49
0DD0: cmp x, $00          ; 55 00
0DD2: nop                 ; 00
0DD3: nop                 ; 00
0DD4: nop                 ; 00
0DD5: nop                 ; 00
0DD6: nop                 ; 00
0DD7: nop                 ; 00
0DD8: nop                 ; 00
0DD9: nop                 ; 00
0DDA: nop                 ; 00
0DDB: nop                 ; 00
0DDC: nop                 ; 00
0DDD: nop                 ; FC
0DDE: nop                 ; FF
0DDF: or a, z             ; 6A
0DE0: cmpbit y            ; 5B FB
0DE2: nop                 ; DA
0DE3: inc w               ; 4A
0DE4: cmp x, $09          ; 55 09
0DE6: load w, $1170       ; 12 70 11
0DE9: nop                 ; AA
0DEA: jmp x, y            ; 94
0DEB: push y              ; 02
0DEC: inc z               ; 49
0DED: push x              ; 01
0DEE: nop                 ; AD
0DEF: nop                 ; BA
0DF0: cmp y, $0F          ; 56 0F
0DF2: nop                 ; 00
0DF3: nop                 ; 00
0DF4: nop                 ; D0
0DF5: store $5454, w      ; 17 54 54
0DF8: nop                 ; 00
0DF9: nop                 ; 00
0DFA: nop                 ; 00
0DFB: nop                 ; 00
0DFC: nop                 ; 00
0DFD: nop                 ; 00
0DFE: nop                 ; 00
0DFF: nop                 ; 00
0E00: nop                 ; 00
0E01: nop                 ; 00
0E02: nop                 ; 00
0E03: nop                 ; 00
0E04: nop                 ; 00
0E05: nop                 ; FC
0E06: nop                 ; FF
0E07: nop                 ; DB
0E08: nop                 ; EA
0E09: nop                 ; AD
0E0A: or y, $93           ; 6D 93
0E0C: ror z               ; 90
0E0D: push w              ; 04
0E0E: nop                 ; 00
0E0F: store $8284, y      ; 15 84 82
0E12: and a, w            ; 62
0E13: nop                 ; A8
0E14: push w              ; 04
0E15: nop                 ; C4
0E16: cmpbit x            ; 5A EF
0E18: nop                 ; DB
0E19: push x              ; 01
0E1A: nop                 ; 00
0E1B: nop                 ; 00
0E1C: or a, x             ; 68
0E1D: inc z               ; 49
0E1E: ror w               ; 91
0E1F: nop                 ; A8
0E20: nop                 ; 00
0E21: nop                 ; 00
0E22: nop                 ; 00
0E23: nop                 ; 00
0E24: nop                 ; 00
0E25: nop                 ; 00
0E26: nop                 ; 00
0E27: nop                 ; 00
0E28: nop                 ; 00
0E29: nop                 ; 00
0E2A: nop                 ; 00
0E2B: nop                 ; 00
0E2C: nop                 ; 00
0E2D: nop                 ; FC
0E2E: nop                 ; FF
0E2F: nop                 ; AA
0E30: cmpbit w            ; 5D 5B
0E32: cmpbit y            ; 5B 2D
0E34: mul w, $AA          ; 45 AA
0E36: mul z, $80          ; 44 80
0E38: load y, $D429       ; 10 29 D4
0E3B: load a, $1151       ; 13 51 11
0E3E: nop                 ; D6
0E3F: nop                 ; BB
0E40: not w               ; 74
0E41: nop                 ; 00
0E42: nop                 ; 00
0E43: nop                 ; 00
0E44: dec a               ; 50
0E45: nop                 ; AA
0E46: cmp y, $22          ; 56 22
0E48: store $0000, y      ; 15 00 00
0E4B: nop                 ; 00
0E4C: nop                 ; 00
0E4D: nop                 ; 00
0E4E: nop                 ; 00
0E4F: nop                 ; 00
0E50: nop                 ; 00
0E51: nop                 ; 00
0E52: nop                 ; 00
0E53: nop                 ; 00
0E54: nop                 ; 00
0E55: nop                 ; FC
0E56: nop                 ; FF
0E57: nop                 ; B5
0E58: cmp y, $55          ; 56 55
0E5A: cmp x, $95          ; 55 95
0E5C: load y, $0001       ; 10 01 00
0E5F: inc y               ; 48
0E60: mul z, $A2          ; 44 A2
0E62: nop                 ; EA
0E63: inc a               ; 4B
0E64: push w              ; 04
0E65: shr x, $7A          ; 84 7A
0E67: or y, $0B           ; 6D 0B
0E69: nop                 ; 00
0E6A: mul a, w            ; 40
0E6B: nop                 ; 00
0E6C: nop                 ; B0
0E6D: nop                 ; AA
0E6E: jmp z, w            ; 95
0E6F: inc w               ; 4A
0E70: store $0000, y      ; 15 00 00
0E73: nop                 ; 00
0E74: nop                 ; 00
0E75: nop                 ; 00
0E76: nop                 ; 00
0E77: nop                 ; 00
0E78: nop                 ; 00
0E79: nop                 ; 00
0E7A: nop                 ; 00
0E7B: nop                 ; 00
0E7C: nop                 ; 00
0E7D: nop                 ; FC
0E7E: nop                 ; FF
0E7F: nop                 ; AD
0E80: nop                 ; D5
0E81: nop                 ; AA
0E82: nop                 ; AA
0E83: or a, z             ; 6A
0E84: mul z, $54          ; 44 54
0E86: load z, $9102       ; 11 02 91
0E89: jmp x, y            ; 94
0E8A: nop                 ; D4
0E8B: cmp z, $55          ; 57 55
0E8D: add a, $D4          ; 29 D4
0E8F: nop                 ; FF
0E90: push x              ; 01
0E91: nop                 ; 00
0E92: push y              ; 02
0E93: nop                 ; 00
0E94: int $55             ; A0 55
0E96: nop                 ; BD
0E97: load y, $0025       ; 10 25 00
0E9A: nop                 ; 00
0E9B: nop                 ; 00
0E9C: nop                 ; 00
0E9D: nop                 ; 00
0E9E: nop                 ; 00
0E9F: nop                 ; 00
0EA0: nop                 ; 00
0EA1: nop                 ; 00
0EA2: nop                 ; 00
0EA3: nop                 ; 00
0EA4: nop                 ; 00
0EA5: nop                 ; FC
0EA6: nop                 ; FF
0EA7: cmp x, $AD          ; 55 AD
0EA9: nop                 ; AA
0EAA: nop                 ; AA
0EAB: nop                 ; AA
0EAC: push y              ; 02
0EAD: push x              ; 01
0EAE: mul z, $11          ; 44 11
0EB0: mul z, $52          ; 44 52
0EB2: nop                 ; F5
0EB3: nop                 ; AF
0EB4: cmp a, w            ; 54
0EB5: shl w, $50          ; 82 50
0EB7: nop                 ; BD
0EB8: nop                 ; 00
0EB9: load y, $0000       ; 10 00 00
0EBC: int $BA             ; A0 BA
0EBE: adc a, y            ; 2B
0EBF: inc w               ; 4A
0EC0: load w, $0000       ; 12 00 00
0EC3: nop                 ; 00
0EC4: nop                 ; 00
0EC5: nop                 ; 00
0EC6: nop                 ; 00
0EC7: nop                 ; 00
0EC8: nop                 ; 00
0EC9: nop                 ; 00
0ECA: nop                 ; 00
0ECB: nop                 ; 00
0ECC: nop                 ; 00
0ECD: nop                 ; FC
0ECE: nop                 ; FF
0ECF: nop                 ; AA
0ED0: or a, z             ; 6A
0ED1: cmp x, $55          ; 55 55
0ED3: add x, $21          ; 25 21
0ED5: cmp a, w            ; 54
0ED6: pop y               ; 09
0ED7: shr x, $28          ; 84 28
0ED9: inc z               ; 49
0EDA: nop                 ; EA
0EDB: and a, x            ; 5F
0EDC: cmp a, z            ; 53
0EDD: add a, $C2          ; 29 C2
0EDF: nop                 ; FE
0EE0: push.f              ; 07
0EE1: nop                 ; 00
0EE2: nop                 ; 00
0EE3: nop                 ; 00
0EE4: mul a, w            ; 40
0EE5: nop                 ; D7
0EE6: nop                 ; D6
0EE7: ror a               ; 92
0EE8: nop                 ; 00
0EE9: nop                 ; 00
0EEA: push w              ; 04
0EEB: nop                 ; 00
0EEC: nop                 ; 00
0EED: nop                 ; 00
0EEE: nop                 ; 00
0EEF: nop                 ; 00
0EF0: nop                 ; 00
0EF1: nop                 ; 00
0EF2: nop                 ; 00
0EF3: nop                 ; 00
0EF4: nop                 ; 00
0EF5: nop                 ; FC
0EF6: nop                 ; FF
0EF7: or a, z             ; 6A
0EF8: jmp z, w            ; 95
0EF9: nop                 ; AA
0EFA: nop                 ; AA
0EFB: nop                 ; AA
0EFC: pop z               ; 0A
0EFD: dec a               ; 50
0EFE: add a, a            ; 24
0EFF: cmp a, x            ; 51
0F00: mul x, $55          ; 42 55
0F02: nop                 ; F5
0F03: nop                 ; FF
0F04: nop                 ; AC
0F05: inc w               ; 4A
0F06: inc z               ; 49
0F07: nop                 ; FD
0F08: mul w, $04          ; 45 04
0F0A: nop                 ; 00
0F0B: pop x               ; 08
0F0C: nop                 ; C0
0F0D: nop                 ; B5
0F0E: xor x, $24          ; 7A 24
0F10: nop                 ; A4
0F11: nop                 ; AA
0F12: push a              ; 05
0F13: nop                 ; 00
0F14: nop                 ; 00
0F15: nop                 ; 00
0F16: nop                 ; 00
0F17: nop                 ; 00
0F18: nop                 ; 00
0F19: nop                 ; 00
0F1A: nop                 ; 00
0F1B: nop                 ; 00
0F1C: nop                 ; 00
0F1D: nop                 ; FC
0F1E: nop                 ; FF
0F1F: jmp z, w            ; 95
0F20: or a, z             ; 6A
0F21: cmp x, $49          ; 55 49
0F23: ror a               ; 92
0F24: push w              ; 04
0F25: push y              ; 02
0F26: push x              ; 01
0F27: shr x, $54          ; 84 54
0F29: cmp x, $ED          ; 55 ED
0F2B: nop                 ; FF
0F2C: cmp z, $55          ; 57 55
0F2E: ror a               ; 92
0F2F: nop                 ; EA
0F30: set a, $00          ; 1F 00
0F32: load y, $8000       ; 10 00 80
0F35: nop                 ; AE
0F36: nop                 ; AD
0F37: inc z               ; 49
0F38: cmp a, x            ; 51
0F39: add a, $14          ; 29 14
0F3B: nop                 ; 00
0F3C: nop                 ; 00
0F3D: nop                 ; 00
0F3E: nop                 ; 00
0F3F: nop                 ; 00
0F40: nop                 ; 00
0F41: nop                 ; 00
0F42: nop                 ; 00
0F43: nop                 ; 00
0F44: nop                 ; 00
0F45: nop                 ; FC
0F46: nop                 ; FF
0F47: or a, z             ; 6A
0F48: jmp z, w            ; 95
0F49: nop                 ; AA
0F4A: nop                 ; AA
0F4B: nop                 ; AA
0F4C: inc w               ; 4A
0F4D: mul a, w            ; 40
0F4E: add a, x            ; 20
0F4F: dec a               ; 50
0F50: adc a, x            ; 2A
0F51: cmp x, $FB          ; 55 FB
0F53: nop                 ; FF
0F54: nop                 ; BB
0F55: nop                 ; AA
0F56: push w              ; 04
0F57: nop                 ; F4
0F58: adc x, $00          ; 2F 00
0F5A: shl w, $00          ; 82 00
0F5C: nop                 ; 00
0F5D: nop                 ; EB
0F5E: nop                 ; D6
0F5F: ror a               ; 92
0F60: mul z, $4A          ; 44 4A
0F62: store $0000, y      ; 15 00 00
0F65: nop                 ; 00
0F66: nop                 ; 00
0F67: nop                 ; 00
0F68: nop                 ; 00
0F69: nop                 ; 00
0F6A: nop                 ; 00
0F6B: nop                 ; 00
0F6C: nop                 ; 00
0F6D: nop                 ; FC
0F6E: nop                 ; FF
0F6F: jmp z, w            ; 95
0F70: nop                 ; AA
0F71: nop                 ; AA
0F72: add a, a            ; 24
0F73: inc z               ; 49
0F74: jmp z, w            ; 95
0F75: return              ; 1A
0F76: pop x               ; 08
0F77: shr y, $CA          ; 85 CA
0F79: nop                 ; AA
0F7A: nop                 ; F6
0F7B: nop                 ; FF
0F7C: nop                 ; EF
0F7D: nop                 ; AB
0F7E: nop                 ; AD
0F7F: shr a, $FF          ; 88 FF
0F81: add a, x            ; 20
0F82: nop                 ; 00
0F83: nop                 ; 00
0F84: nop                 ; 00
0F85: jmp.gt $4AB5        ; 9D B5 4A
0F88: load w, $0029       ; 12 29 00
0F8B: nop                 ; 00
0F8C: nop                 ; 00
0F8D: nop                 ; 00
0F8E: nop                 ; 00
0F8F: nop                 ; 00
0F90: nop                 ; 00
0F91: nop                 ; 00
0F92: nop                 ; 00
0F93: nop                 ; 00
0F94: nop                 ; 00
0F95: nop                 ; FC
0F96: nop                 ; FF
0F97: nop                 ; AA
0F98: nop                 ; AA
0F99: inc w               ; 4A
0F9A: cmp x, $55          ; 55 55
0F9C: cmp a, y            ; 52
0F9D: nop                 ; A5
0F9E: mul z, $50          ; 44 50
0FA0: add a, $F5          ; 29 F5
0FA2: nop                 ; FD
0FA3: nop                 ; FF
0FA4: nop                 ; FF
0FA5: nop                 ; FE
0FA6: adc x, $AA          ; 2F AA
0FA8: nop                 ; BE
0FA9: push x              ; 01
0FAA: nop                 ; 00
0FAB: nop                 ; 00
0FAC: nop                 ; 00
0FAD: nop                 ; D6
0FAE: or z, $15           ; 6E 15
0FB0: inc z               ; 49
0FB1: nop                 ; A5
0FB2: nop                 ; 00
0FB3: nop                 ; 00
0FB4: nop                 ; 00
0FB5: nop                 ; 00
0FB6: nop                 ; 00
0FB7: nop                 ; 00
0FB8: nop                 ; 00
0FB9: nop                 ; 00
0FBA: nop                 ; 00
0FBB: nop                 ; 00
0FBC: nop                 ; 00
0FBD: nop                 ; FC
0FBE: nop                 ; FF
0FBF: nop                 ; AA
0FC0: cmp a, y            ; 52
0FC1: adc a, x            ; 2A
0FC2: cmp x, $A5          ; 55 A5
0FC4: nop                 ; AA
0FC5: cmp a, w            ; 54
0FC6: load z, $D525       ; 11 25 D5
0FC9: cmpbit x            ; 5A FF
0FCB: nop                 ; FF
0FCC: nop                 ; FF
0FCD: nop                 ; FF
0FCE: jmp.z $7D10         ; 9F 10 7D
0FD1: shr w, $00          ; 87 00
0FD3: mul a, w            ; 40
0FD4: nop                 ; 00
0FD5: cmpbit z            ; 5C B5
0FD7: and y, $12          ; 64 12
0FD9: cmp a, w            ; 54
0FDA: or a, z             ; 6A
0FDB: push x              ; 01
0FDC: nop                 ; 00
0FDD: nop                 ; 00
0FDE: nop                 ; 00
0FDF: nop                 ; 00
0FE0: nop                 ; 00
0FE1: nop                 ; 00
0FE2: nop                 ; 00
0FE3: nop                 ; 00
0FE4: nop                 ; 00
0FE5: nop                 ; FC
0FE6: nop                 ; FF
0FE7: ror a               ; 92
0FE8: cmp a, w            ; 54
0FE9: nop                 ; A9
0FEA: ror a               ; 92
0FEB: cmp a, w            ; 54
0FEC: jmp z, w            ; 95
0FED: nop                 ; AA
0FEE: inc w               ; 4A
0FEF: inc w               ; 4A
0FF0: cmp x, $EF          ; 55 EF
0FF2: nop                 ; FF
0FF3: nop                 ; FF
0FF4: nop                 ; FF
0FF5: nop                 ; FF
0FF6: shl x, $A2          ; 7F A2
0FF8: nop                 ; FC
0FF9: push a              ; 05
0FFA: nop                 ; 00
0FFB: push x              ; 01
0FFC: nop                 ; 00
0FFD: nop                 ; B6
0FFE: rol a               ; 8D
0FFF: ror a               ; 92
1000: mul z, $40          ; 44 40
1002: add a, y            ; 21
1003: push x              ; 01
1004: nop                 ; 00
1005: nop                 ; 00
1006: nop                 ; 00
1007: nop                 ; 00
1008: nop                 ; 00
1009: nop                 ; 00
100A: nop                 ; 00
100B: nop                 ; 00
100C: nop                 ; 00
100D: nop                 ; FC
100E: nop                 ; FF
100F: cmp x, $95          ; 55 95
1011: nop                 ; AA
1012: nop                 ; AA
1013: adc a, x            ; 2A
1014: nop                 ; A9
1015: nop                 ; AA
1016: adc a, x            ; 2A
1017: cmp a, x            ; 51
1018: nop                 ; D5
1019: nop                 ; BA
101A: nop                 ; FF
101B: nop                 ; FF
101C: nop                 ; FF
101D: nop                 ; FF
101E: nop                 ; FF
101F: pop y               ; 09
1020: nop                 ; F1
1021: adc x, $04          ; 2F 04
1023: nop                 ; 00
1024: nop                 ; 00
1025: or x, $2B           ; 6C 2B
1027: cmp a, w            ; 54
1028: ror w               ; 91
1029: pop x               ; 08
102A: rol y               ; 8A
102B: nop                 ; 00
102C: nop                 ; 00
102D: nop                 ; 00
102E: nop                 ; 00
102F: nop                 ; 00
1030: nop                 ; 00
1031: nop                 ; 00
1032: nop                 ; 00
1033: nop                 ; 00
1034: nop                 ; 00
1035: nop                 ; FC
1036: nop                 ; FF
1037: add a, a            ; 24
1038: nop                 ; A9
1039: nop                 ; AA
103A: adc a, x            ; 2A
103B: cmp x, $55          ; 55 55
103D: cmp x, $D5          ; 55 D5
103F: nop                 ; AA
1040: xor x, $FF          ; 7A FF
1042: nop                 ; FF
1043: nop                 ; FF
1044: nop                 ; FF
1045: nop                 ; FF
1046: nop                 ; FF
1047: mul w, $E4          ; 45 E4
1049: store $0000, w      ; 17 00 00
104C: nop                 ; 00
104D: nop                 ; A8
104E: jmp $5522, x        ; 96 22 55
1051: nop                 ; 00
1052: nop                 ; A9
1053: push y              ; 02
1054: nop                 ; 00
1055: nop                 ; 00
1056: nop                 ; 00
1057: nop                 ; 00
1058: nop                 ; 00
1059: nop                 ; 00
105A: nop                 ; 00
105B: nop                 ; 00
105C: nop                 ; 00
105D: nop                 ; FC
105E: nop                 ; FF
105F: cmp x, $4A          ; 55 4A
1061: cmp a, y            ; 52
1062: nop                 ; AA
1063: cmp a, y            ; 52
1064: cmp x, $55          ; 55 55
1066: nop                 ; B5
1067: nop                 ; AA
1068: nop                 ; D6
1069: nop                 ; FF
106A: nop                 ; FF
106B: nop                 ; FF
106C: nop                 ; FF
106D: nop                 ; FF
106E: nop                 ; FF
106F: shl a, $88          ; 83 88
1071: nop                 ; BF
1072: load y, $0000       ; 10 00 00
1075: nop                 ; D0
1076: nop                 ; BA
1077: inc y               ; 48
1078: shr y, $00          ; 85 00
107A: add a, z            ; 22
107B: push x              ; 01
107C: nop                 ; 00
107D: nop                 ; 00
107E: nop                 ; 00
107F: nop                 ; 00
1080: nop                 ; 00
1081: nop                 ; 00
1082: nop                 ; 00
1083: nop                 ; 00
1084: nop                 ; 00
1085: nop                 ; FC
1086: nop                 ; FF
1087: inc z               ; 49
1088: nop                 ; A9
1089: nop                 ; AA
108A: nop                 ; AA
108B: nop                 ; AA
108C: nop                 ; AA
108D: nop                 ; AA
108E: nop                 ; D6
108F: cmp y, $FB          ; 56 FB
1091: nop                 ; FF
1092: nop                 ; FF
1093: nop                 ; FF
1094: nop                 ; FF
1095: nop                 ; FF
1096: nop                 ; FF
1097: push a              ; 05
1098: mul x, $FF          ; 42 FF
109A: push x              ; 01
109B: mul a, w            ; 40
109C: nop                 ; 00
109D: cmp a, y            ; 52
109E: store $2952, y      ; 15 52 29
10A1: nop                 ; 00
10A2: shr a, $00          ; 88 00
10A4: nop                 ; 00
10A5: nop                 ; 00
10A6: nop                 ; 00
10A7: nop                 ; 00
10A8: nop                 ; 00
10A9: nop                 ; 00
10AA: nop                 ; 00
10AB: nop                 ; 00
10AC: nop                 ; 00
10AD: nop                 ; FC
10AE: nop                 ; FF
10AF: adc a, x            ; 2A
10B0: add x, $95          ; 25 95
10B2: nop                 ; AA
10B3: nop                 ; AA
10B4: nop                 ; AA
10B5: nop                 ; AA
10B6: nop                 ; B5
10B7: nop                 ; FD
10B8: nop                 ; DE
10B9: nop                 ; FF
10BA: nop                 ; FF
10BB: nop                 ; FF
10BC: nop                 ; FF
10BD: nop                 ; FF
10BE: nop                 ; FF
10BF: add a, y            ; 21
10C0: push w              ; 04
10C1: xor z, $07          ; 7C 07
10C3: nop                 ; 00
10C4: nop                 ; 00
10C5: int $EB             ; A0 EB
10C7: mul z, $AA          ; 44 AA
10C9: push x              ; 01
10CA: add x, $05          ; 25 05
10CC: nop                 ; 00
10CD: nop                 ; 00
10CE: nop                 ; 00
10CF: nop                 ; 00
10D0: nop                 ; 00
10D1: nop                 ; 00
10D2: nop                 ; 00
10D3: nop                 ; 00
10D4: nop                 ; 00
10D5: nop                 ; FC
10D6: nop                 ; FF
10D7: cmp a, y            ; 52
10D8: cmp x, $A9          ; 55 A9
10DA: nop                 ; AA
10DB: inc w               ; 4A
10DC: cmp x, $B5          ; 55 B5
10DE: nop                 ; D6
10DF: cmp y, $F7          ; 56 F7
10E1: nop                 ; FF
10E2: nop                 ; FF
10E3: nop                 ; FF
10E4: nop                 ; FF
10E5: nop                 ; FF
10E6: and a, x            ; 5F
10E7: shr x, $90          ; 84 90
10E9: nop                 ; FA
10EA: pop.a               ; 0D
10EB: nop                 ; 00
10EC: nop                 ; 00
10ED: nop                 ; B0
10EE: sub z, $92          ; 3A 92
10F0: xor x, $03          ; 7A 03
10F2: ror z               ; 90
10F3: push y              ; 02
10F4: nop                 ; 00
10F5: nop                 ; 00
10F6: nop                 ; 00
10F7: nop                 ; 00
10F8: nop                 ; 00
10F9: nop                 ; 00
10FA: nop                 ; 00
10FB: nop                 ; 00
10FC: nop                 ; 00
10FD: nop                 ; FC
10FE: nop                 ; FF
10FF: jmp z, w            ; 95
1100: ror a               ; 92
1101: nop                 ; AA
1102: inc w               ; 4A
1103: cmp x, $55          ; 55 55
1105: or y, $BB           ; 6D BB
1107: nop                 ; FD
1108: nop                 ; FF
1109: nop                 ; FF
110A: nop                 ; FF
110B: nop                 ; FF
110C: nop                 ; FF
110D: nop                 ; FF
110E: adc x, $01          ; 2F 01
1110: adc w, $E0          ; 32 E0
1112: sub a, w            ; 37
1113: nop                 ; 00
1114: nop                 ; 00
1115: int $4B             ; A0 4B
1117: inc z               ; 49
1118: nop                 ; D7
1119: pop.f               ; 0E
111A: inc w               ; 4A
111B: push a              ; 05
111C: nop                 ; 00
111D: nop                 ; 00
111E: nop                 ; 00
111F: nop                 ; 00
1120: nop                 ; 00
1121: nop                 ; 00
1122: nop                 ; 00
1123: nop                 ; 00
1124: nop                 ; 00
1125: nop                 ; FC
1126: nop                 ; FF
1127: cmp a, w            ; 54
1128: nop                 ; AA
1129: cmp a, y            ; 52
112A: nop                 ; AA
112B: nop                 ; AA
112C: nop                 ; AA
112D: nop                 ; D5
112E: nop                 ; EE
112F: nop                 ; FE
1130: nop                 ; FF
1131: nop                 ; FF
1132: nop                 ; FF
1133: nop                 ; FF
1134: nop                 ; FF
1135: nop                 ; FF
1136: jmp $1110, y        ; 97 10 11
1139: nop                 ; E8
113A: and a, x            ; 5F
113B: nop                 ; 00
113C: nop                 ; 00
113D: nop                 ; AA
113E: add y, $A4          ; 26 A4
1140: nop                 ; FD
1141: store $07B4, y      ; 15 B4 07
1144: nop                 ; 00
1145: nop                 ; 00
1146: nop                 ; 00
1147: nop                 ; 00
1148: nop                 ; 00
1149: nop                 ; 00
114A: nop                 ; 00
114B: nop                 ; 00
114C: nop                 ; 00
114D: nop                 ; FC
114E: nop                 ; FF
114F: inc w               ; 4A
1150: nop                 ; A5
1151: cmp a, w            ; 54
1152: cmp x, $55          ; 55 55
1154: cmp x, $BB          ; 55 BB
1156: nop                 ; B5
1157: nop                 ; DB
1158: nop                 ; FF
1159: nop                 ; FF
115A: nop                 ; FF
115B: nop                 ; FF
115C: nop                 ; FF
115D: nop                 ; FF
115E: add x, $02          ; 25 02
1160: shr x, $00          ; 84 00
1162: nop                 ; FF
1163: push x              ; 01
1164: shl y, $D6          ; 80 D6
1166: rol x               ; 89
1167: cmpbit x            ; 5A 5B
1169: sub a, w            ; 37
116A: nop                 ; EC
116B: pop z               ; 0A
116C: nop                 ; 00
116D: nop                 ; 00
116E: nop                 ; 00
116F: nop                 ; 00
1170: nop                 ; 00
1171: nop                 ; 00
1172: nop                 ; 00
1173: nop                 ; 00
1174: nop                 ; 00
1175: nop                 ; FC
1176: nop                 ; FF
1177: cmp x, $29          ; 55 29
1179: cmp x, $55          ; 55 55
117B: cmp x, $B5          ; 55 B5
117D: nop                 ; D6
117E: nop                 ; DE
117F: nop                 ; FF
1180: nop                 ; FF
1181: nop                 ; FF
1182: nop                 ; FF
1183: nop                 ; FF
1184: nop                 ; FF
1185: nop                 ; FF
1186: cmp x, $81          ; 55 81
1188: nop                 ; 00
1189: mul a, w            ; 40
118A: nop                 ; BF
118B: push y              ; 02
118C: and a, y            ; 60
118D: mul a, x            ; 3D
118E: cmp a, y            ; 52
118F: nop                 ; EA
1190: nop                 ; ED
1191: nop                 ; AD
1192: nop                 ; B4
1193: push.a              ; 06
1194: nop                 ; 00
1195: nop                 ; 00
1196: nop                 ; 00
1197: nop                 ; 00
1198: nop                 ; 00
1199: nop                 ; 00
119A: nop                 ; 00
119B: nop                 ; 00
119C: nop                 ; 00
119D: nop                 ; FC
119E: nop                 ; FF
119F: cmp a, y            ; 52
11A0: nop                 ; AA
11A1: inc w               ; 4A
11A2: cmp x, $55          ; 55 55
11A4: or y, $BB           ; 6D BB
11A6: nop                 ; F5
11A7: nop                 ; FE
11A8: nop                 ; FF
11A9: nop                 ; FF
11AA: nop                 ; FF
11AB: nop                 ; FF
11AC: nop                 ; FF
11AD: shl x, $C1          ; 7F C1
11AF: pop x               ; 08
11B0: add x, $02          ; 25 02
11B2: nop                 ; FC
11B3: push.f              ; 07
11B4: cmp a, w            ; 54
11B5: nop                 ; CB
11B6: nop                 ; A4
11B7: not a               ; 75
11B8: shl x, $5B          ; 7F 5B
11BA: nop                 ; AD
11BB: pop.a               ; 0D
11BC: nop                 ; 00
11BD: nop                 ; 00
11BE: nop                 ; 00
11BF: nop                 ; 00
11C0: nop                 ; 00
11C1: nop                 ; 00
11C2: nop                 ; 00
11C3: nop                 ; 00
11C4: nop                 ; 00
11C5: nop                 ; FC
11C6: nop                 ; FF
11C7: nop                 ; AA
11C8: inc w               ; 4A
11C9: cmp x, $55          ; 55 55
11CB: nop                 ; B5
11CC: nop                 ; AA
11CD: nop                 ; ED
11CE: nop                 ; BE
11CF: nop                 ; FF
11D0: nop                 ; FF
11D1: nop                 ; FF
11D2: nop                 ; FF
11D3: nop                 ; FF
11D4: nop                 ; FF
11D5: nop                 ; BF
11D6: nop                 ; F4
11D7: push z              ; 03
11D8: nop                 ; 00
11D9: nop                 ; 00
11DA: nop                 ; FA
11DB: dec y               ; 4D
11DC: nop                 ; EA
11DD: cmp x, $DA          ; 55 DA
11DF: nop                 ; DA
11E0: nop                 ; D5
11E1: or w, $B5           ; 6F B5
11E3: pop z               ; 0A
11E4: nop                 ; 00
11E5: nop                 ; 00
11E6: nop                 ; 00
11E7: nop                 ; 00
11E8: nop                 ; 00
11E9: nop                 ; 00
11EA: nop                 ; 00
11EB: nop                 ; 00
11EC: nop                 ; 00
11ED: nop                 ; FC
11EE: nop                 ; FF
11EF: jmp x, y            ; 94
11F0: nop                 ; AA
11F1: cmp a, w            ; 54
11F2: cmp x, $AD          ; 55 AD
11F4: or y, $BB           ; 6D BB
11F6: nop                 ; F7
11F7: nop                 ; FF
11F8: nop                 ; FF
11F9: nop                 ; FF
11FA: nop                 ; FF
11FB: nop                 ; FF
11FC: nop                 ; FE
11FD: and a, x            ; 5F
11FE: nop                 ; C1
11FF: store $0085, w      ; 17 85 00
1202: nop                 ; E0
1203: cmpbit y            ; 5B 51
1205: cmp x, $B5          ; 55 B5
1207: xor a, y            ; 77
1208: nop                 ; FF
1209: nop                 ; FA
120A: nop                 ; EE
120B: set w, $00          ; 1E 00
120D: nop                 ; 00
120E: nop                 ; 00
120F: nop                 ; 00
1210: nop                 ; 00
1211: nop                 ; 00
1212: nop                 ; 00
1213: nop                 ; 00
1214: nop                 ; 00
1215: nop                 ; FC
1216: nop                 ; FF
1217: cmp x, $A9          ; 55 A9
1219: nop                 ; AA
121A: nop                 ; AA
121B: nop                 ; B5
121C: nop                 ; B6
121D: nop                 ; ED
121E: nop                 ; FE
121F: nop                 ; FF
1220: nop                 ; FF
1221: nop                 ; FF
1222: nop                 ; FF
1223: nop                 ; AF
1224: nop                 ; EB
1225: adc x, $F4          ; 2F F4
1227: push z              ; 03
1228: add a, x            ; 20
1229: pop x               ; 08
122A: nop                 ; D0
122B: or w, $BD           ; 6F BD
122D: shl y, $DE          ; 80 DE
122F: nop                 ; DA
1230: cmp x, $AF          ; 55 AF
1232: nop                 ; B5
1233: push x              ; 01
1234: nop                 ; 00
1235: nop                 ; 00
1236: nop                 ; 00
1237: nop                 ; 00
1238: nop                 ; 00
1239: nop                 ; 00
123A: nop                 ; 00
123B: nop                 ; 00
123C: nop                 ; 00
123D: nop                 ; FC
123E: nop                 ; FF
123F: cmp a, y            ; 52
1240: jmp z, w            ; 95
1241: nop                 ; AA
1242: nop                 ; AA
1243: nop                 ; D6
1244: or y, $BB           ; 6D BB
1246: nop                 ; FD
1247: nop                 ; FF
1248: nop                 ; FF
1249: nop                 ; FF
124A: nop                 ; FF
124B: nop                 ; FB
124C: cmpbit x            ; 5A 4B
124E: nop                 ; C1
124F: push a              ; 05
1250: store $0000, y      ; 15 00 00
1253: nop                 ; DF
1254: cmp z, $02          ; 57 02
1256: nop                 ; B4
1257: xor a, y            ; 77
1258: nop                 ; FF
1259: nop                 ; FD
125A: cmpbit y            ; 5B 15
125C: nop                 ; 00
125D: nop                 ; 00
125E: nop                 ; 00
125F: nop                 ; 00
1260: nop                 ; 00
1261: nop                 ; 00
1262: nop                 ; 00
1263: nop                 ; 00
1264: nop                 ; 00
1265: nop                 ; FC
1266: nop                 ; FF
1267: nop                 ; AA
1268: nop                 ; AA
1269: nop                 ; AA
126A: or a, z             ; 6A
126B: or y, $BB           ; 6D BB
126D: nop                 ; ED
126E: nop                 ; FF
126F: nop                 ; FF
1270: nop                 ; FF
1271: nop                 ; FF
1272: shl x, $2D          ; 7F 2D
1274: cmp x, $25          ; 55 25
1276: nop                 ; E8
1277: mul y, $30          ; 43 30
1279: shl y, $40          ; 80 40
127B: not a               ; 75
127C: adc a, w            ; 2D
127D: nop                 ; 00
127E: nop                 ; DA
127F: nop                 ; EA
1280: shl x, $57          ; 7F 57
1282: cmp z, $04          ; 57 04
1284: nop                 ; 00
1285: nop                 ; 00
1286: nop                 ; 00
1287: nop                 ; 00
1288: nop                 ; 00
1289: nop                 ; 00
128A: nop                 ; 00
128B: nop                 ; 00
128C: nop                 ; 00
128D: nop                 ; FC
128E: nop                 ; FF
128F: adc a, x            ; 2A
1290: cmp x, $55          ; 55 55
1292: cmp x, $DB          ; 55 DB
1294: or z, $BB           ; 6E BB
1296: nop                 ; FF
1297: nop                 ; FF
1298: nop                 ; FF
1299: nop                 ; FF
129A: nop                 ; DF
129B: nop                 ; DB
129C: cmp x, $08          ; 55 08
129E: nop                 ; C0
129F: pop w               ; 0B
12A0: ror a               ; 92
12A1: load y, $DD00       ; 10 00 DD
12A4: sub w, $20          ; 3B 20
12A6: nop                 ; D0
12A7: nop                 ; AF
12A8: nop                 ; FF
12A9: nop                 ; FD
12AA: pop z               ; 0A
12AB: adc z, $00          ; 31 00
12AD: nop                 ; 00
12AE: nop                 ; 00
12AF: nop                 ; 00
12B0: nop                 ; 00
12B1: nop                 ; 00
12B2: nop                 ; 00
12B3: nop                 ; 00
12B4: nop                 ; 00
12B5: nop                 ; FC
12B6: nop                 ; FF
12B7: nop                 ; AA
12B8: nop                 ; AA
12B9: nop                 ; AA
12BA: nop                 ; DA
12BB: or a, z             ; 6A
12BC: nop                 ; BB
12BD: nop                 ; ED
12BE: nop                 ; FF
12BF: nop                 ; FF
12C0: nop                 ; FF
12C1: nop                 ; FF
12C2: xor a, y            ; 77
12C3: cmp x, $0A          ; 55 0A
12C5: mul a, a            ; 41
12C6: nop                 ; F2
12C7: nop                 ; 00
12C8: push x              ; 01
12C9: nop                 ; 00
12CA: nop                 ; 00
12CB: not w               ; 74
12CC: adc a, w            ; 2D
12CD: pop x               ; 08
12CE: int $FA             ; A0 FA
12D0: nop                 ; FF
12D1: nop                 ; EF
12D2: nop                 ; A7
12D3: set w, $00          ; 1E 00
12D5: nop                 ; 00
12D6: nop                 ; 00
12D7: nop                 ; 00
12D8: nop                 ; 00
12D9: nop                 ; 00
12DA: nop                 ; 00
12DB: nop                 ; 00
12DC: nop                 ; 00
12DD: nop                 ; FC
12DE: nop                 ; FF
12DF: nop                 ; AA
12E0: nop                 ; AA
12E1: nop                 ; AA
12E2: cmp y, $BD          ; 56 BD
12E4: or y, $FF           ; 6D FF
12E6: nop                 ; FB
12E7: nop                 ; FF
12E8: nop                 ; FF
12E9: or w, $5D           ; 6F 5D
12EB: nop                 ; AB
12EC: add x, $04          ; 25 04
12EE: nop                 ; C0
12EF: push a              ; 05
12F0: mul z, $D0          ; 44 D0
12F2: push w              ; 04
12F3: nop                 ; D0
12F4: cmpbit y            ; 5B 00
12F6: shr x, $BF          ; 84 BF
12F8: nop                 ; FF
12F9: and a, x            ; 5F
12FA: jmp.gt $006A        ; 9D 6A 00
12FD: nop                 ; 00
12FE: nop                 ; 00
12FF: nop                 ; 00
1300: nop                 ; 00
1301: nop                 ; 00
1302: nop                 ; 00
1303: nop                 ; 00
1304: nop                 ; 00
1305: nop                 ; FC
1306: nop                 ; FF
1307: nop                 ; AA
1308: nop                 ; AA
1309: nop                 ; AA
130A: or a, z             ; 6A
130B: nop                 ; EB
130C: nop                 ; B6
130D: or y, $FF           ; 6D FF
130F: nop                 ; FF
1310: nop                 ; FF
1311: nop                 ; BF
1312: xor a, y            ; 77
1313: cmp x, $02          ; 55 02
1315: nop                 ; 00
1316: add w, $80          ; 28 80
1318: nop                 ; 00
1319: cmp a, y            ; 52
131A: nop                 ; 00
131B: and a, y            ; 60
131C: adc x, $00          ; 2F 00
131E: nop                 ; 00
131F: nop                 ; FD
1320: nop                 ; F7
1321: nop                 ; FB
1322: xor a, y            ; 77
1323: set z, $00          ; 1D 00
1325: nop                 ; 00
1326: nop                 ; 00
1327: nop                 ; 00
1328: nop                 ; 00
1329: nop                 ; 00
132A: nop                 ; 00
132B: nop                 ; 00
132C: nop                 ; 00
132D: nop                 ; FC
132E: nop                 ; FF
132F: cmp x, $55          ; 55 55
1331: nop                 ; D5
1332: nop                 ; AA
1333: nop                 ; AD
1334: nop                 ; ED
1335: nop                 ; FF
1336: nop                 ; FF
1337: nop                 ; FF
1338: nop                 ; FF
1339: nop                 ; EF
133A: nop                 ; AA
133B: nop                 ; AA
133C: rol y               ; 8A
133D: ror z               ; 90
133E: mul a, w            ; 40
133F: nop                 ; 00
1340: load w, $0350       ; 12 50 03
1343: shl y, $FA          ; 80 FA
1345: push y              ; 02
1346: nop                 ; 00
1347: xor a, x            ; 76
1348: nop                 ; FF
1349: nop                 ; AE
134A: cmpbit w            ; 5D 77
134C: nop                 ; 00
134D: nop                 ; 00
134E: nop                 ; 00
134F: nop                 ; 00
1350: nop                 ; 00
1351: nop                 ; 00
1352: nop                 ; 00
1353: nop                 ; 00
1354: nop                 ; 00
1355: nop                 ; FC
1356: nop                 ; FF
1357: nop                 ; AA
1358: nop                 ; AA
1359: nop                 ; AA
135A: nop                 ; B6
135B: xor a, x            ; 76
135C: nop                 ; B7
135D: nop                 ; F6
135E: nop                 ; FF
135F: nop                 ; FF
1360: nop                 ; BF
1361: nop                 ; B5
1362: nop                 ; AA
1363: adc a, x            ; 2A
1364: push x              ; 01
1365: nop                 ; 00
1366: nop                 ; 00
1367: nop                 ; 00
1368: mul a, a            ; 41
1369: or a, x             ; 68
136A: push a              ; 05
136B: nop                 ; 00
136C: nop                 ; AF
136D: pop y               ; 09
136E: nop                 ; 00
136F: nop                 ; FC
1370: and a, x            ; 5F
1371: nop                 ; FB
1372: nop                 ; F6
1373: adc a, x            ; 2A
1374: nop                 ; 00
1375: nop                 ; 00
1376: nop                 ; 00
1377: nop                 ; 00
1378: nop                 ; 00
1379: nop                 ; 00
137A: nop                 ; 00
137B: nop                 ; 00
137C: nop                 ; 00
137D: nop                 ; FC
137E: nop                 ; FF
137F: nop                 ; AA
1380: nop                 ; AA
1381: nop                 ; AA
1382: or a, z             ; 6A
1383: nop                 ; DB
1384: nop                 ; ED
1385: nop                 ; BF
1386: nop                 ; DD
1387: nop                 ; FF
1388: xor a, x            ; 76
1389: nop                 ; AF
138A: nop                 ; AA
138B: nop                 ; AA
138C: push w              ; 04
138D: push y              ; 02
138E: nop                 ; 00
138F: nop                 ; 00
1390: pop x               ; 08
1391: dec a               ; 50
1392: jmp z, w            ; 95
1393: nop                 ; 00
1394: xor a, z            ; 78
1395: jmp $7820, y        ; 97 20 78
1398: nop                 ; FD
1399: nop                 ; B7
139A: nop                 ; BF
139B: nop                 ; DB
139C: nop                 ; 00
139D: nop                 ; 00
139E: nop                 ; 00
139F: nop                 ; 00
13A0: nop                 ; 00
13A1: nop                 ; 00
13A2: nop                 ; 00
13A3: nop                 ; 00
13A4: nop                 ; 00
13A5: nop                 ; FC
13A6: nop                 ; FF
13A7: cmp x, $55          ; 55 55
13A9: or y, $DB           ; 6D DB
13AB: cmp y, $B7          ; 56 B7
13AD: nop                 ; FA
13AE: nop                 ; FF
13AF: nop                 ; B6
13B0: nop                 ; DF
13B1: cmp x, $55          ; 55 55
13B3: add x, $25          ; 25 25
13B5: nop                 ; 00
13B6: nop                 ; 00
13B7: shl y, $52          ; 80 52
13B9: nop                 ; DA
13BA: store $EA00, y      ; 15 00 EA
13BD: load x, $D800       ; 0F 00 D8
13C0: nop                 ; D7
13C1: nop                 ; DE
13C2: nop                 ; D5
13C3: or z, $00           ; 6E 00
13C5: nop                 ; 00
13C6: nop                 ; 00
13C7: nop                 ; 00
13C8: nop                 ; 00
13C9: nop                 ; 00
13CA: nop                 ; 00
13CB: nop                 ; 00
13CC: nop                 ; 00
13CD: nop                 ; FC
13CE: nop                 ; FF
13CF: cmp x, $55          ; 55 55
13D1: nop                 ; AB
13D2: nop                 ; AA
13D3: nop                 ; ED
13D4: nop                 ; ED
13D5: nop                 ; DF
13D6: nop                 ; F7
13D7: nop                 ; EF
13D8: not a               ; 75
13D9: cmp z, $95          ; 57 95
13DB: inc w               ; 4A
13DC: rol x               ; 89
13DD: add a, x            ; 20
13DE: pop x               ; 08
13DF: nop                 ; 00
13E0: load y, $5568       ; 10 68 55
13E3: push y              ; 02
13E4: nop                 ; D0
13E5: shl x, $00          ; 7F 00
13E7: nop                 ; F4
13E8: nop                 ; BA
13E9: not a               ; 75
13EA: nop                 ; FF
13EB: nop                 ; B3
13EC: nop                 ; 00
13ED: nop                 ; 00
13EE: nop                 ; 00
13EF: nop                 ; 00
13F0: nop                 ; 00
13F1: nop                 ; 00
13F2: nop                 ; 00
13F3: nop                 ; 00
13F4: nop                 ; 00
13F5: nop                 ; FC
13F6: nop                 ; FF
13F7: nop                 ; AA
13F8: or a, z             ; 6A
13F9: nop                 ; D5
13FA: nop                 ; B6
13FB: cmpbit x            ; 5A BD
13FD: xor x, $DD          ; 7A DD
13FF: nop                 ; BA
1400: nop                 ; DE
1401: cmp x, $22          ; 55 22
1403: cmp a, w            ; 54
1404: add x, $02          ; 25 02
1406: mul a, w            ; 40
1407: nop                 ; 00
1408: inc z               ; 49
1409: cmp w, $57          ; 58 57
140B: nop                 ; 00
140C: nop                 ; E0
140D: nop                 ; BF
140E: ror z               ; 90
140F: nop                 ; FF
1410: nop                 ; DB
1411: nop                 ; FF
1412: nop                 ; AD
1413: nop                 ; DE
1414: nop                 ; 00
1415: nop                 ; 00
1416: nop                 ; 00
1417: nop                 ; 00
1418: nop                 ; 00
1419: nop                 ; 00
141A: nop                 ; 00
141B: nop                 ; 00
141C: nop                 ; 00
141D: nop                 ; FC
141E: nop                 ; FF
141F: cmp x, $AD          ; 55 AD
1421: cmpbit x            ; 5A D5
1423: or z, $EB           ; 6E EB
1425: nop                 ; D7
1426: nop                 ; BF
1427: nop                 ; EF
1428: nop                 ; B5
1429: cmpbit x            ; 5A 49
142B: mul a, a            ; 41
142C: inc w               ; 4A
142D: int $02             ; A0 02
142F: nop                 ; 00
1430: push y              ; 02
1431: nop                 ; E8
1432: cmpbit w            ; 5D 13
1434: nop                 ; 00
1435: shl x, $03          ; 7F 03
1437: nop                 ; BD
1438: nop                 ; F6
1439: nop                 ; AF
143A: nop                 ; FB
143B: or a, w             ; 6B
143C: push x              ; 01
143D: nop                 ; 00
143E: nop                 ; 00
143F: nop                 ; 00
1440: nop                 ; 00
1441: nop                 ; 00
1442: nop                 ; 00
1443: nop                 ; 00
1444: nop                 ; 00
1445: nop                 ; FC
1446: nop                 ; FF
1447: nop                 ; AA
1448: nop                 ; AA
1449: cmp x, $5B          ; 55 5B
144B: nop                 ; AB
144C: nop                 ; AD
144D: xor x, $F5          ; 7A F5
144F: cmpbit x            ; 5A AB
1451: cmp y, $25          ; 56 25
1453: adc a, x            ; 2A
1454: push x              ; 01
1455: pop x               ; 08
1456: nop                 ; 00
1457: ror a               ; 92
1458: nop                 ; 00
1459: nop                 ; B9
145A: cmp y, $01          ; 56 01
145C: shl y, $FE          ; 80 FE
145E: nop                 ; ED
145F: nop                 ; FF
1460: nop                 ; EB
1461: nop                 ; F7
1462: nop                 ; AE
1463: nop                 ; AD
1464: push x              ; 01
1465: nop                 ; 00
1466: nop                 ; 00
1467: nop                 ; 00
1468: nop                 ; 00
1469: nop                 ; 00
146A: nop                 ; 00
146B: nop                 ; 00
146C: nop                 ; 00
146D: nop                 ; FC
146E: nop                 ; FF
146F: or a, z             ; 6A
1470: nop                 ; B5
1471: nop                 ; D6
1472: or a, z             ; 6A
1473: nop                 ; F5
1474: xor a, x            ; 76
1475: nop                 ; D7
1476: nop                 ; AF
1477: nop                 ; B6
1478: nop                 ; AA
1479: nop                 ; B5
147A: rol y               ; 8A
147B: mul a, w            ; 40
147C: cmp a, w            ; 54
147D: mul y, $91          ; 43 91
147F: push w              ; 04
1480: add a, x            ; 20
1481: nop                 ; A8
1482: not a               ; 75
1483: dec y               ; 4D
1484: nop                 ; 00
1485: nop                 ; F8
1486: nop                 ; DF
1487: nop                 ; BF
1488: nop                 ; EE
1489: nop                 ; DF
148A: xor w, $BB          ; 7D BB
148C: push y              ; 02
148D: nop                 ; 00
148E: nop                 ; 00
148F: nop                 ; 00
1490: nop                 ; 00
1491: nop                 ; 00
1492: nop                 ; 00
1493: nop                 ; 00
1494: nop                 ; 00
1495: nop                 ; FC
1496: nop                 ; FF
1497: cmp x, $55          ; 55 55
1499: nop                 ; AD
149A: cmp y, $5B          ; 56 5B
149C: nop                 ; DB
149D: nop                 ; BA
149E: nop                 ; DA
149F: nop                 ; D5
14A0: cmpbit x            ; 5A 55
14A2: add x, $12          ; 25 12
14A4: cmp x, $15          ; 55 15
14A6: mul z, $20          ; 44 20
14A8: push a              ; 05
14A9: nop                 ; EA
14AA: cmpbit a            ; 5E 25
14AC: nop                 ; 00
14AD: nop                 ; FA
14AE: nop                 ; FF
14AF: nop                 ; FF
14B0: nop                 ; FB
14B1: shl x, $F7          ; 7F F7
14B3: nop                 ; AF
14B4: nop                 ; 00
14B5: nop                 ; 00
14B6: nop                 ; 00
14B7: nop                 ; 00
14B8: nop                 ; 00
14B9: nop                 ; 00
14BA: nop                 ; 00
14BB: nop                 ; 00
14BC: nop                 ; 00
14BD: nop                 ; FC
14BE: nop                 ; FF
14BF: nop                 ; AA
14C0: nop                 ; D6
14C1: or a, z             ; 6A
14C2: nop                 ; B5
14C3: nop                 ; AD
14C4: nop                 ; AA
14C5: nop                 ; EE
14C6: or a, w             ; 6B
14C7: nop                 ; AD
14C8: cmp y, $55          ; 56 55
14CA: store $4AA4, y      ; 15 A4 4A
14CD: push y              ; 02
14CE: pop y               ; 09
14CF: pop y               ; 09
14D0: load y, $F5B8       ; 10 B8 F5
14D3: sub a, w            ; 37
14D4: push x              ; 01
14D5: nop                 ; E0
14D6: nop                 ; FF
14D7: nop                 ; FE
14D8: nop                 ; BE
14D9: nop                 ; DF
14DA: nop                 ; BE
14DB: nop                 ; BA
14DC: push y              ; 02
14DD: nop                 ; 00
14DE: nop                 ; 00
14DF: nop                 ; 00
14E0: nop                 ; 00
14E1: nop                 ; 00
14E2: nop                 ; 00
14E3: nop                 ; 00
14E4: nop                 ; 00
14E5: nop                 ; FC
14E6: nop                 ; FF
14E7: nop                 ; DA
14E8: nop                 ; AA
14E9: cmpbit x            ; 5A AB
14EB: nop                 ; B6
14EC: or y, $AB           ; 6D AB
14EE: nop                 ; B6
14EF: nop                 ; AA
14F0: nop                 ; AA
14F1: nop                 ; AA
14F2: nop                 ; AA
14F3: nop                 ; AA
14F4: cmp a, w            ; 54
14F5: push x              ; 01
14F6: mul a, w            ; 40
14F7: add a, x            ; 20
14F8: nop                 ; 00
14F9: nop                 ; A8
14FA: cmpbit a            ; 5E 9D
14FC: nop                 ; 00
14FD: int $F7             ; A0 F7
14FF: nop                 ; FF
1500: nop                 ; DF
1501: nop                 ; EF
1502: nop                 ; EB
1503: adc x, $00          ; 2F 00
1505: cmp a, w            ; 54
1506: push x              ; 01
1507: nop                 ; 00
1508: nop                 ; 00
1509: nop                 ; 00
150A: nop                 ; 00
150B: nop                 ; 00
150C: nop                 ; 00
150D: nop                 ; FC
150E: nop                 ; FF
150F: nop                 ; AA
1510: or a, z             ; 6A
1511: nop                 ; AB
1512: nop                 ; DA
1513: or a, z             ; 6A
1514: nop                 ; D5
1515: nop                 ; F6
1516: cmpbit x            ; 5A 6B
1518: cmp x, $55          ; 55 55
151A: cmp x, $55          ; 55 55
151C: nop                 ; A5
151D: push w              ; 04
151E: nop                 ; 00
151F: push w              ; 04
1520: mul w, $E0          ; 45 E0
1522: nop                 ; EB
1523: nop                 ; F5
1524: pop x               ; 08
1525: mul a, w            ; 40
1526: nop                 ; FF
1527: nop                 ; EF
1528: nop                 ; BF
1529: nop                 ; BF
152A: nop                 ; DE
152B: nop                 ; AA
152C: pop z               ; 0A
152D: nop                 ; A8
152E: pop z               ; 0A
152F: nop                 ; 00
1530: nop                 ; 00
1531: nop                 ; 00
1532: nop                 ; 00
1533: nop                 ; 00
1534: nop                 ; 00
1535: nop                 ; FC
1536: nop                 ; FF
1537: nop                 ; AA
1538: nop                 ; AD
1539: or a, z             ; 6A
153A: nop                 ; AB
153B: nop                 ; AA
153C: nop                 ; B6
153D: cmpbit x            ; 5A 6B
153F: nop                 ; AD
1540: nop                 ; AA
1541: nop                 ; AA
1542: adc a, x            ; 2A
1543: inc z               ; 49
1544: add a, $81          ; 29 81
1546: shl y, $20          ; 80 20
1548: load y, $BE92       ; 10 92 BE
154B: cmp x, $03          ; 55 03
154D: nop                 ; 00
154E: nop                 ; FF
154F: nop                 ; FF
1550: nop                 ; FF
1551: not a               ; 75
1552: xor x, $4B          ; 7A 4B
1554: store $02F4, x      ; 14 F4 02
1557: nop                 ; 00
1558: nop                 ; 00
1559: nop                 ; 00
155A: nop                 ; 00
155B: nop                 ; 00
155C: nop                 ; 00
155D: nop                 ; FC
155E: nop                 ; FF
155F: nop                 ; AB
1560: or a, z             ; 6A
1561: cmpbit y            ; 5B 6D
1563: nop                 ; AD
1564: cmp x, $57          ; 55 57
1566: nop                 ; AD
1567: nop                 ; AA
1568: nop                 ; AA
1569: adc a, x            ; 2A
156A: nop                 ; A9
156B: nop                 ; AA
156C: nop                 ; AA
156D: pop z               ; 0A
156E: nop                 ; 00
156F: push w              ; 04
1570: nop                 ; 00
1571: nop                 ; A4
1572: or a, z             ; 6A
1573: nop                 ; DF
1574: load w, $B800       ; 12 00 B8
1577: nop                 ; FF
1578: shl x, $DF          ; 7F DF
157A: nop                 ; DA
157B: jmp $F86B, y        ; 97 6B F8
157E: store $0000, y      ; 15 00 00
1581: nop                 ; 00
1582: nop                 ; 00
1583: nop                 ; 00
1584: nop                 ; 00
1585: nop                 ; FC
1586: nop                 ; FF
1587: cmp x, $55          ; 55 55
1589: nop                 ; AD
158A: cmp x, $AB          ; 55 AB
158C: nop                 ; DA
158D: or a, z             ; 6A
158E: cmp x, $55          ; 55 55
1590: cmp x, $A5          ; 55 A5
1592: inc w               ; 4A
1593: jmp z, w            ; 95
1594: inc w               ; 4A
1595: push a              ; 05
1596: mul a, w            ; 40
1597: push y              ; 02
1598: mul x, $1E          ; 42 1E
159A: nop                 ; BB
159B: not a               ; 75
159C: pop w               ; 0B
159D: nop                 ; 00
159E: nop                 ; FC
159F: nop                 ; FB
15A0: nop                 ; FF
15A1: or a, z             ; 6A
15A2: or y, $DD           ; 6D DD
15A4: nop                 ; B6
15A5: nop                 ; F4
15A6: push.f              ; 07
15A7: nop                 ; 00
15A8: nop                 ; 00
15A9: nop                 ; 00
15AA: nop                 ; 00
15AB: nop                 ; 00
15AC: nop                 ; 00
15AD: nop                 ; FC
15AE: nop                 ; FF
15AF: nop                 ; DA
15B0: nop                 ; DA
15B1: or a, z             ; 6A
15B2: cmp x, $D5          ; 55 D5
15B4: nop                 ; AA
15B5: cmp x, $55          ; 55 55
15B7: cmp x, $55          ; 55 55
15B9: cmp x, $55          ; 55 55
15BB: nop                 ; A5
15BC: cmp a, w            ; 54
15BD: pop y               ; 09
15BE: nop                 ; 00
15BF: nop                 ; 00
15C0: pop x               ; 08
15C1: or a, $AA           ; 70 AA
15C3: nop                 ; DF
15C4: dec z               ; 4E
15C5: push x              ; 01
15C6: nop                 ; E0
15C7: nop                 ; FF
15C8: nop                 ; BF
15C9: nop                 ; DD
15CA: nop                 ; FB
15CB: nop                 ; F7
15CC: cmp z, $D1          ; 57 D1
15CE: set a, $00          ; 1F 00
15D0: nop                 ; 00
15D1: nop                 ; 00
15D2: nop                 ; 00
15D3: nop                 ; 00
15D4: nop                 ; 00
15D5: nop                 ; FC
15D6: nop                 ; FF
15D7: nop                 ; AA
15D8: cmp y, $AB          ; 56 AB
15DA: nop                 ; B6
15DB: nop                 ; B6
15DC: nop                 ; B6
15DD: nop                 ; AA
15DE: cmp y, $55          ; 56 55
15E0: cmp x, $2A          ; 55 2A
15E2: cmp x, $AA          ; 55 AA
15E4: cmp a, y            ; 52
15E5: pop z               ; 0A
15E6: nop                 ; 00
15E7: shl y, $00          ; 80 00
15E9: nop                 ; EE
15EA: nop                 ; ED
15EB: xor a, x            ; 76
15EC: adc a, y            ; 2B
15ED: nop                 ; 00
15EE: mul a, w            ; 40
15EF: nop                 ; BF
15F0: nop                 ; F7
15F1: xor a, x            ; 76
15F2: nop                 ; BF
15F3: cmpbit w            ; 5D ED
15F5: nop                 ; A5
15F6: push.f              ; 07
15F7: nop                 ; 00
15F8: nop                 ; 00
15F9: nop                 ; 00
15FA: nop                 ; 00
15FB: nop                 ; 00
15FC: nop                 ; 00
15FD: nop                 ; FC
15FE: nop                 ; FF
15FF: nop                 ; AA
1600: nop                 ; AA
1601: nop                 ; AA
1602: nop                 ; AA
1603: cmp x, $AB          ; 55 AB
1605: cmpbit x            ; 5A A9
1607: nop                 ; AA
1608: inc w               ; 4A
1609: nop                 ; A5
160A: cmp a, y            ; 52
160B: jmp z, w            ; 95
160C: inc w               ; 4A
160D: store $0080, y      ; 15 80 00
1610: mul a, w            ; 40
1611: jmp.neq $DDB7       ; 9C B7 DD
1614: or y, $01           ; 6D 01
1616: nop                 ; 00
1617: nop                 ; A4
1618: store $FFD9, x      ; 14 D9 FF
161B: nop                 ; F7
161C: nop                 ; BF
161D: dec z               ; 4E
161E: adc a, a            ; 2E
161F: nop                 ; 00
1620: nop                 ; 00
1621: nop                 ; 00
1622: nop                 ; 00
1623: nop                 ; 00
1624: nop                 ; 00
1625: nop                 ; FC
1626: nop                 ; FF
1627: cmp y, $55          ; 56 55
1629: cmp x, $55          ; 55 55
162B: nop                 ; D5
162C: nop                 ; AA
162D: nop                 ; AA
162E: cmp y, $55          ; 56 55
1630: cmp a, y            ; 52
1631: nop                 ; A9
1632: cmp a, w            ; 54
1633: cmp x, $AA          ; 55 AA
1635: store $0000, x      ; 14 00 00
1638: load y, $B670       ; 10 70 B6
163B: xor a, x            ; 76
163C: nop                 ; AF
163D: push x              ; 01
163E: nop                 ; 00
163F: load w, $F442       ; 12 42 F4
1642: nop                 ; FF
1643: and a, x            ; 5F
1644: cmp x, $9B          ; 55 9B
1646: push y              ; 02
1647: nop                 ; 00
1648: nop                 ; 00
1649: nop                 ; 00
164A: nop                 ; 00
164B: nop                 ; 00
164C: nop                 ; 00
164D: nop                 ; FC
164E: nop                 ; FF
164F: nop                 ; AA
1650: nop                 ; B5
1651: nop                 ; AA
1652: or a, z             ; 6A
1653: nop                 ; AD
1654: cmpbit x            ; 5A 55
1656: nop                 ; A9
1657: nop                 ; AA
1658: adc a, x            ; 2A
1659: cmp x, $95          ; 55 95
165B: cmp a, y            ; 52
165C: cmp x, $25          ; 55 25
165E: nop                 ; 00
165F: nop                 ; 00
1660: nop                 ; 00
1661: nop                 ; CC
1662: nop                 ; E9
1663: cmpbit a            ; 5E B9
1665: pop z               ; 0A
1666: nop                 ; 00
1667: push w              ; 04
1668: load y, $FFE1       ; 10 E1 FF
166B: nop                 ; FF
166C: nop                 ; FF
166D: or a, z             ; 6A
166E: pop x               ; 08
166F: nop                 ; 00
1670: nop                 ; 00
1671: nop                 ; 00
1672: nop                 ; 00
1673: nop                 ; 00
1674: nop                 ; 00
1675: nop                 ; FC
1676: nop                 ; FF
1677: cmpbit x            ; 5A 55
1679: cmp x, $55          ; 55 55
167B: cmp x, $A5          ; 55 A5
167D: nop                 ; AA
167E: cmp y, $A5          ; 56 A5
1680: cmp a, w            ; 54
1681: add x, $A5          ; 25 A5
1683: nop                 ; AA
1684: ror a               ; 92
1685: adc a, x            ; 2A
1686: nop                 ; 00
1687: nop                 ; 00
1688: shl y, $DC          ; 80 DC
168A: nop                 ; A7
168B: nop                 ; EB
168C: nop                 ; AF
168D: push a              ; 05
168E: nop                 ; 00
168F: mul a, w            ; 40
1690: nop                 ; AA
1691: nop                 ; E4
1692: nop                 ; FF
1693: nop                 ; FF
1694: nop                 ; AA
1695: nop                 ; BF
1696: store $0000, x      ; 14 00 00
1699: nop                 ; 00
169A: nop                 ; 00
169B: nop                 ; 00
169C: nop                 ; 00
169D: nop                 ; FC
169E: nop                 ; FF
169F: cmp x, $55          ; 55 55
16A1: nop                 ; AB
16A2: nop                 ; AA
16A3: nop                 ; AA
16A4: cmpbit x            ; 5A 55
16A6: nop                 ; A9
16A7: jmp x, y            ; 94
16A8: ror a               ; 92
16A9: cmp a, w            ; 54
16AA: nop                 ; A9
16AB: cmp a, w            ; 54
16AC: cmp x, $55          ; 55 55
16AE: push x              ; 01
16AF: shl w, $00          ; 82 00
16B1: or a, $DE           ; 70 DE
16B3: xor x, $F5          ; 7A F5
16B5: store $9400, z      ; 16 00 94
16B8: inc y               ; 48
16B9: rol x               ; 89
16BA: nop                 ; FF
16BB: nop                 ; FF
16BC: nop                 ; FF
16BD: nop                 ; EA
16BE: push x              ; 01
16BF: nop                 ; 00
16C0: nop                 ; 00
16C1: nop                 ; 00
16C2: nop                 ; 00
16C3: nop                 ; 00
16C4: nop                 ; 00
16C5: nop                 ; FC
16C6: nop                 ; FF
16C7: nop                 ; AA
16C8: nop                 ; AA
16C9: cmp a, w            ; 54
16CA: cmp x, $55          ; 55 55
16CC: nop                 ; A5
16CD: nop                 ; AA
16CE: cmp y, $55          ; 56 55
16D0: cmp x, $55          ; 55 55
16D2: cmp x, $A5          ; 55 A5
16D4: adc a, x            ; 2A
16D5: nop                 ; A9
16D6: nop                 ; 00
16D7: add a, x            ; 20
16D8: nop                 ; 00
16D9: nop                 ; E0
16DA: nop                 ; D9
16DB: nop                 ; AE
16DC: nop                 ; BD
16DD: store $0000, z      ; 16 00 00
16E0: nop                 ; A5
16E1: sec                 ; A2
16E2: nop                 ; FF
16E3: nop                 ; FF
16E4: nop                 ; AB
16E5: nop                 ; BA
16E6: push y              ; 02
16E7: nop                 ; 00
16E8: nop                 ; 00
16E9: nop                 ; 00
16EA: nop                 ; 00
16EB: nop                 ; 00
16EC: nop                 ; 00
16ED: nop                 ; FC
16EE: nop                 ; FF
16EF: cmp x, $55          ; 55 55
16F1: nop                 ; AB
16F2: nop                 ; AA
16F3: nop                 ; AA
16F4: cmpbit x            ; 5A 55
16F6: add a, $A5          ; 29 A5
16F8: add a, a            ; 24
16F9: inc z               ; 49
16FA: inc w               ; 4A
16FB: adc a, x            ; 2A
16FC: nop                 ; A9
16FD: inc w               ; 4A
16FE: pop w               ; 0B
16FF: nop                 ; 00
1700: push w              ; 04
1701: nop                 ; 00
1702: jmp $E77B, y        ; 97 7B E7
1705: push.a              ; 06
1706: nop                 ; 00
1707: dec a               ; 50
1708: add w, $0D          ; 28 0D
170A: nop                 ; FF
170B: nop                 ; FF
170C: nop                 ; BE
170D: nop                 ; F7
170E: load x, $0000       ; 0F 00 00
1711: nop                 ; 00
1712: nop                 ; 00
1713: nop                 ; 00
1714: nop                 ; 00
1715: nop                 ; FC
1716: nop                 ; FF
1717: nop                 ; AA
1718: nop                 ; AA
1719: nop                 ; AA
171A: nop                 ; AA
171B: nop                 ; AA
171C: nop                 ; AA
171D: nop                 ; AA
171E: inc w               ; 4A
171F: cmp x, $55          ; 55 55
1721: cmp x, $A9          ; 55 A9
1723: nop                 ; AA
1724: inc w               ; 4A
1725: cmp a, y            ; 52
1726: push w              ; 04
1727: nop                 ; 00
1728: nop                 ; 00
1729: push w              ; 04
172A: nop                 ; CF
172B: nop                 ; AA
172C: nop                 ; BD
172D: push y              ; 02
172E: nop                 ; 00
172F: nop                 ; 00
1730: mul w, $51          ; 45 51
1732: nop                 ; FF
1733: cmpbit w            ; 5D EB
1735: nop                 ; BA
1736: set a, $E8          ; 1F E8
1738: nop                 ; 00
1739: nop                 ; 00
173A: nop                 ; 00
173B: nop                 ; 00
173C: nop                 ; 00
173D: nop                 ; FC
173E: nop                 ; FF
173F: cmp x, $55          ; 55 55
1741: cmp x, $55          ; 55 55
1743: cmp x, $55          ; 55 55
1745: cmp x, $AA          ; 55 AA
1747: cmp a, w            ; 54
1748: nop                 ; AA
1749: add a, a            ; 24
174A: cmp x, $49          ; 55 49
174C: cmp x, $55          ; 55 55
174E: adc a, y            ; 2B
174F: nop                 ; 00
1750: nop                 ; 00
1751: nop                 ; 00
1752: nop                 ; B8
1753: nop                 ; EE
1754: nop                 ; D7
1755: cmp z, $00          ; 57 00
1757: mul a, w            ; 40
1758: dec a               ; 50
1759: store $FFFC, z      ; 16 FC FF
175C: nop                 ; BE
175D: nop                 ; F7
175E: nop                 ; B5
175F: nop                 ; AA
1760: push x              ; 01
1761: nop                 ; 00
1762: nop                 ; 00
1763: nop                 ; 00
1764: nop                 ; 00
1765: nop                 ; FC
1766: nop                 ; FF
1767: nop                 ; AA
1768: nop                 ; AA
1769: cmpbit x            ; 5A 55
176B: cmp x, $55          ; 55 55
176D: inc z               ; 49
176E: nop                 ; A9
176F: ror a               ; 92
1770: ror a               ; 92
1771: nop                 ; AA
1772: ror a               ; 92
1773: adc a, x            ; 2A
1774: cmp x, $A5          ; 55 A5
1776: cmp a, w            ; 54
1777: nop                 ; 00
1778: mul a, w            ; 40
1779: mul a, w            ; 40
177A: nop                 ; C0
177B: nop                 ; BB
177C: nop                 ; F6
177D: push y              ; 02
177E: nop                 ; 00
177F: nop                 ; 00
1780: shl z, $A8          ; 81 A8
1782: nop                 ; FE
1783: or w, $EB           ; 6F EB
1785: nop                 ; DF
1786: shl x, $FB          ; 7F FB
1788: push x              ; 01
1789: nop                 ; 00
178A: nop                 ; 00
178B: nop                 ; 00
178C: nop                 ; 00
178D: nop                 ; FC
178E: nop                 ; FF
178F: cmp x, $55          ; 55 55
1791: cmp x, $55          ; 55 55
1793: cmp x, $55          ; 55 55
1795: nop                 ; AA
1796: adc a, x            ; 2A
1797: cmp x, $55          ; 55 55
1799: jmp z, w            ; 95
179A: cmp a, w            ; 54
179B: nop                 ; A5
179C: cmp a, y            ; 52
179D: add a, $55          ; 29 55
179F: push x              ; 01
17A0: nop                 ; 00
17A1: nop                 ; 00
17A2: shr x, $AA          ; 84 AA
17A4: nop                 ; DD
17A5: store $0000, z      ; 16 00 00
17A8: adc a, x            ; 2A
17A9: add x, $F8          ; 25 F8
17AB: nop                 ; DF
17AC: nop                 ; FF
17AD: nop                 ; FF
17AE: nop                 ; AE
17AF: cmp y, $07          ; 56 07
17B1: nop                 ; 00
17B2: nop                 ; 00
17B3: nop                 ; 00
17B4: nop                 ; 00
17B5: nop                 ; FC
17B6: nop                 ; FF
17B7: nop                 ; AA
17B8: nop                 ; AA
17B9: nop                 ; AA
17BA: nop                 ; AA
17BB: nop                 ; AA
17BC: ror a               ; 92
17BD: ror a               ; 92
17BE: cmp a, y            ; 52
17BF: cmp x, $55          ; 55 55
17C1: cmp a, y            ; 52
17C2: add x, $55          ; 25 55
17C4: inc w               ; 4A
17C5: jmp z, w            ; 95
17C6: ror a               ; 92
17C7: nop                 ; 00
17C8: nop                 ; 00
17C9: nop                 ; 00
17CA: mul a, w            ; 40
17CB: nop                 ; FB
17CC: cmp y, $03          ; 56 03
17CE: nop                 ; 00
17CF: nop                 ; 00
17D0: shl y, $54          ; 80 54
17D2: nop                 ; A9
17D3: cmp a, y            ; 52
17D4: nop                 ; 00
17D5: int $F7             ; A0 F7
17D7: nop                 ; FA
17D8: push.f              ; 07
17D9: nop                 ; 00
17DA: nop                 ; 00
17DB: nop                 ; 00
17DC: nop                 ; 00
17DD: nop                 ; FC
17DE: nop                 ; FF
17DF: nop                 ; AA
17E0: nop                 ; AA
17E1: cmp y, $55          ; 56 55
17E3: cmp x, $55          ; 55 55
17E5: cmp x, $AA          ; 55 AA
17E7: add a, a            ; 24
17E8: inc z               ; 49
17E9: cmp x, $AA          ; 55 AA
17EB: cmp a, y            ; 52
17EC: cmp x, $AA          ; 55 AA
17EE: nop                 ; AA
17EF: push.a              ; 06
17F0: nop                 ; 00
17F1: nop                 ; 00
17F2: nop                 ; 00
17F3: nop                 ; AC
17F4: xor a, $13          ; 7E 13
17F6: nop                 ; 00
17F7: nop                 ; 00
17F8: add w, $49          ; 28 49
17FA: push y              ; 02
17FB: nop                 ; 00
17FC: nop                 ; 00
17FD: nop                 ; E0
17FE: nop                 ; AF
17FF: nop                 ; FD
1800: pop.a               ; 0D
1801: nop                 ; 00
1802: nop                 ; 00
1803: nop                 ; 00
1804: nop                 ; 00
1805: nop                 ; FC
1806: nop                 ; FF
1807: cmp x, $55          ; 55 55
1809: cmp x, $55          ; 55 55
180B: jmp z, w            ; 95
180C: add a, a            ; 24
180D: nop                 ; A5
180E: inc w               ; 4A
180F: cmp x, $55          ; 55 55
1811: nop                 ; A5
1812: cmp a, y            ; 52
1813: inc w               ; 4A
1814: nop                 ; A9
1815: cmp a, y            ; 52
1816: cmp a, y            ; 52
1817: pop y               ; 09
1818: nop                 ; 00
1819: nop                 ; 00
181A: add a, x            ; 20
181B: nop                 ; B4
181C: nop                 ; DB
181D: push a              ; 05
181E: nop                 ; 00
181F: nop                 ; 00
1820: nop                 ; 00
1821: nop                 ; A4
1822: nop                 ; 00
1823: nop                 ; 00
1824: inc z               ; 49
1825: mul x, $B5          ; 42 B5
1827: cmp y, $0F          ; 56 0F
1829: nop                 ; 00
182A: nop                 ; 00
182B: nop                 ; 00
182C: nop                 ; 00
182D: nop                 ; FC
182E: nop                 ; FF
182F: cmp x, $55          ; 55 55
1831: cmp x, $55          ; 55 55
1833: cmp x, $55          ; 55 55
1835: add a, $29          ; 29 29
1837: cmp x, $55          ; 55 55
1839: add a, $95          ; 29 95
183B: adc a, x            ; 2A
183C: jmp z, w            ; 95
183D: inc w               ; 4A
183E: add a, $35          ; 29 35
1840: nop                 ; 00
1841: nop                 ; 00
1842: nop                 ; 00
1843: int $76             ; A0 76
1845: pop w               ; 0B
1846: nop                 ; 00
1847: nop                 ; 00
1848: mul a, w            ; 40
1849: ror w               ; 91
184A: pop z               ; 0A
184B: nop                 ; 00
184C: shl y, $84          ; 80 84
184E: nop                 ; DB
184F: nop                 ; FF
1850: sub w, $00          ; 3B 00
1852: nop                 ; 00
1853: nop                 ; 00
1854: nop                 ; 00
1855: nop                 ; FC
1856: nop                 ; FF
1857: cmp x, $55          ; 55 55
1859: cmp x, $55          ; 55 55
185B: nop                 ; A9
185C: inc w               ; 4A
185D: inc w               ; 4A
185E: cmp x, $49          ; 55 49
1860: adc a, x            ; 2A
1861: cmp x, $A5          ; 55 A5
1863: cmp a, w            ; 54
1864: nop                 ; A5
1865: cmp a, w            ; 54
1866: nop                 ; A5
1867: ror a               ; 92
1868: nop                 ; 00
1869: nop                 ; 00
186A: nop                 ; 00
186B: nop                 ; C1
186C: cmpbit x            ; 5A 01
186E: nop                 ; 00
186F: nop                 ; 00
1870: nop                 ; 00
1871: mul a, w            ; 40
1872: push y              ; 02
1873: add a, $2A          ; 29 2A
1875: shl w, $6E          ; 82 6E
1877: nop                 ; EB
1878: adc a, a            ; 2E
1879: nop                 ; 00
187A: nop                 ; 00
187B: nop                 ; 00
187C: nop                 ; 00
187D: nop                 ; FC
187E: nop                 ; FF
187F: cmp x, $55          ; 55 55
1881: cmp x, $55          ; 55 55
1883: add x, $A9          ; 25 A9
1885: nop                 ; AA
1886: nop                 ; A4
1887: nop                 ; AA
1888: cmp a, y            ; 52
1889: jmp z, w            ; 95
188A: cmp a, w            ; 54
188B: nop                 ; A5
188C: cmp a, w            ; 54
188D: cmp x, $4A          ; 55 4A
188F: nop                 ; AA
1890: nop                 ; 00
1891: nop                 ; 00
1892: nop                 ; 00
1893: nop                 ; 00
1894: or a, z             ; 6A
1895: load a, $0000       ; 13 00 00
1898: nop                 ; 00
1899: jmp z, w            ; 95
189A: nop                 ; 00
189B: shl y, $80          ; 80 80
189D: store $BED5, x      ; 14 D5 BE
18A0: or w, $00           ; 6F 00
18A2: nop                 ; 00
18A3: nop                 ; 00
18A4: nop                 ; 00
18A5: nop                 ; FC
18A6: nop                 ; FF
18A7: nop                 ; AA
18A8: nop                 ; AA
18A9: nop                 ; AA
18AA: nop                 ; AA
18AB: nop                 ; AA
18AC: adc a, x            ; 2A
18AD: add a, $95          ; 29 95
18AF: nop                 ; AA
18B0: inc w               ; 4A
18B1: nop                 ; A9
18B2: inc w               ; 4A
18B3: add a, $95          ; 29 95
18B5: ror a               ; 92
18B6: nop                 ; AA
18B7: cmp a, y            ; 52
18B8: push x              ; 01
18B9: nop                 ; 00
18BA: nop                 ; 00
18BB: nop                 ; 00
18BC: xor x, $01          ; 7A 01
18BE: nop                 ; 00
18BF: nop                 ; 00
18C0: nop                 ; 00
18C1: nop                 ; 00
18C2: nop                 ; 00
18C3: add w, $AA          ; 28 AA
18C5: push y              ; 02
18C6: nop                 ; FD
18C7: nop                 ; D7
18C8: nop                 ; BD
18C9: nop                 ; 00
18CA: nop                 ; 00
18CB: nop                 ; 00
18CC: nop                 ; 00
18CD: nop                 ; FC
18CE: nop                 ; FF
18CF: cmp x, $55          ; 55 55
18D1: cmp x, $55          ; 55 55
18D3: jmp z, w            ; 95
18D4: nop                 ; A4
18D5: inc w               ; 4A
18D6: nop                 ; A9
18D7: add a, a            ; 24
18D8: add a, $A5          ; 29 A5
18DA: cmp a, y            ; 52
18DB: nop                 ; AA
18DC: cmp a, y            ; 52
18DD: cmp x, $A9          ; 55 A9
18DF: jmp x, y            ; 94
18E0: pop z               ; 0A
18E1: nop                 ; 00
18E2: nop                 ; 00
18E3: nop                 ; 00
18E4: mul a, w            ; 40
18E5: pop w               ; 0B
18E6: nop                 ; 00
18E7: nop                 ; 00
18E8: nop                 ; 00
18E9: inc y               ; 48
18EA: nop                 ; 00
18EB: shl y, $22          ; 80 22
18ED: add w, $6A          ; 28 6A
18EF: nop                 ; BF
18F0: or w, $00           ; 6F 00
18F2: nop                 ; 00
18F3: nop                 ; 00
18F4: nop                 ; 00
18F5: nop                 ; FC
18F6: nop                 ; FF
18F7: cmp x, $55          ; 55 55
18F9: cmp x, $55          ; 55 55
18FB: nop                 ; A9
18FC: inc w               ; 4A
18FD: cmp a, y            ; 52
18FE: inc w               ; 4A
18FF: cmp x, $95          ; 55 95
1901: cmp a, w            ; 54
1902: nop                 ; AA
1903: cmp a, y            ; 52
1904: cmp x, $AA          ; 55 AA
1906: inc w               ; 4A
1907: nop                 ; A5
1908: nop                 ; AA
1909: nop                 ; 00
190A: nop                 ; 00
190B: nop                 ; 00
190C: int $01             ; A0 01
190E: nop                 ; 00
190F: nop                 ; 00
1910: nop                 ; 00
1911: add a, x            ; 20
1912: nop                 ; 00
1913: cmp a, x            ; 51
1914: shr a, $0A          ; 88 0A
1916: nop                 ; BC
1917: nop                 ; ED
1918: nop                 ; B6
1919: nop                 ; 00
191A: nop                 ; 00
191B: nop                 ; 00
191C: nop                 ; 00
191D: nop                 ; FC
191E: nop                 ; FF
191F: cmp x, $55          ; 55 55
1921: cmp x, $95          ; 55 95
1923: inc w               ; 4A
1924: nop                 ; A9
1925: nop                 ; AA
1926: cmp a, y            ; 52
1927: ror a               ; 92
1928: nop                 ; A4
1929: cmp a, y            ; 52
192A: jmp z, w            ; 95
192B: adc a, x            ; 2A
192C: inc z               ; 49
192D: inc z               ; 49
192E: adc a, x            ; 2A
192F: add a, $49          ; 29 49
1931: nop                 ; AD
1932: nop                 ; 00
1933: nop                 ; 00
1934: nop                 ; 00
1935: push x              ; 01
1936: nop                 ; 00
1937: nop                 ; 00
1938: nop                 ; 00
1939: shl y, $00          ; 80 00
193B: shl y, $52          ; 80 52
193D: cmp a, y            ; 52
193E: nop                 ; E8
193F: nop                 ; FF
1940: nop                 ; FD
1941: push x              ; 01
1942: nop                 ; 00
1943: nop                 ; 00
1944: nop                 ; 00
1945: nop                 ; FC
1946: nop                 ; FF
1947: cmp x, $55          ; 55 55
1949: cmp x, $A9          ; 55 A9
194B: adc a, x            ; 2A
194C: jmp z, w            ; 95
194D: add a, a            ; 24
194E: jmp z, w            ; 95
194F: nop                 ; AA
1950: adc a, x            ; 2A
1951: jmp z, w            ; 95
1952: cmp a, y            ; 52
1953: inc w               ; 4A
1954: cmp x, $55          ; 55 55
1956: cmp x, $55          ; 55 55
1958: cmp x, $25          ; 55 25
195A: push y              ; 02
195B: nop                 ; 00
195C: nop                 ; 00
195D: nop                 ; 00
195E: nop                 ; 00
195F: nop                 ; 00
1960: nop                 ; 00
1961: nop                 ; 00
1962: nop                 ; 00
1963: nop                 ; 00
1964: shr x, $48          ; 84 48
1966: nop                 ; B8
1967: nop                 ; B5
1968: or w, $03           ; 6F 03
196A: nop                 ; 00
196B: nop                 ; 00
196C: nop                 ; 00
196D: nop                 ; FC
196E: nop                 ; FF
196F: cmp x, $55          ; 55 55
1971: cmp x, $55          ; 55 55
1973: cmp a, y            ; 52
1974: nop                 ; A5
1975: nop                 ; AA
1976: cmp a, y            ; 52
1977: nop                 ; A5
1978: nop                 ; A4
1979: cmp a, w            ; 54
197A: cmp x, $A9          ; 55 A9
197C: adc a, x            ; 2A
197D: cmp x, $49          ; 55 49
197F: jmp z, w            ; 95
1980: add a, a            ; 24
1981: nop                 ; A9
1982: push w              ; 04
1983: nop                 ; 00
1984: nop                 ; 00
1985: pop x               ; 08
1986: nop                 ; 00
1987: nop                 ; 00
1988: nop                 ; 00
1989: nop                 ; 00
198A: pop x               ; 08
198B: mul a, w            ; 40
198C: add a, $12          ; 29 12
198E: and a, z            ; 61
198F: nop                 ; FF
1990: nop                 ; FB
1991: push.a              ; 06
1992: nop                 ; 00
1993: nop                 ; 00
1994: nop                 ; 00
1995: nop                 ; FC
1996: nop                 ; FF
1997: cmp x, $55          ; 55 55
1999: cmp x, $55          ; 55 55
199B: cmp x, $2A          ; 55 2A
199D: inc z               ; 49
199E: inc w               ; 4A
199F: inc w               ; 4A
19A0: jmp z, w            ; 95
19A1: cmp a, y            ; 52
19A2: inc w               ; 4A
19A3: jmp z, w            ; 95
19A4: nop                 ; A4
19A5: ror a               ; 92
19A6: adc a, x            ; 2A
19A7: nop                 ; A9
19A8: nop                 ; AA
19A9: inc w               ; 4A
19AA: push a              ; 05
19AB: nop                 ; 00
19AC: nop                 ; 00
19AD: nop                 ; 00
19AE: nop                 ; 00
19AF: nop                 ; 00
19B0: nop                 ; 00
19B1: nop                 ; 00
19B2: nop                 ; 00
19B3: nop                 ; 00
19B4: nop                 ; A4
19B5: nop                 ; A4
19B6: nop                 ; F0
19B7: or y, $EF           ; 6D EF
19B9: pop w               ; 0B
19BA: nop                 ; 00
19BB: nop                 ; 00
19BC: nop                 ; 00
19BD: nop                 ; FC
19BE: nop                 ; FF
19BF: nop                 ; AA
19C0: nop                 ; AA
19C1: nop                 ; AA
19C2: nop                 ; AA
19C3: nop                 ; AA
19C4: cmp a, y            ; 52
19C5: cmp x, $A9          ; 55 A9
19C7: cmp a, y            ; 52
19C8: cmp a, y            ; 52
19C9: jmp x, y            ; 94
19CA: cmp a, y            ; 52
19CB: nop                 ; A5
19CC: nop                 ; AA
19CD: cmp a, w            ; 54
19CE: nop                 ; AA
19CF: inc w               ; 4A
19D0: ror a               ; 92
19D1: adc a, x            ; 2A
19D2: add a, $00          ; 29 00
19D4: nop                 ; 00
19D5: nop                 ; 00
19D6: nop                 ; 00
19D7: nop                 ; 00
19D8: nop                 ; 00
19D9: nop                 ; 00
19DA: shl y, $00          ; 80 00
19DC: pop x               ; 08
19DD: pop y               ; 09
19DE: mul x, $DF          ; 42 DF
19E0: nop                 ; BB
19E1: set w, $00          ; 1E 00
19E3: nop                 ; 00
19E4: nop                 ; 00
19E5: nop                 ; FC
19E6: nop                 ; FF
19E7: cmp x, $55          ; 55 55
19E9: cmp x, $55          ; 55 55
19EB: nop                 ; A5
19EC: inc w               ; 4A
19ED: ror a               ; 92
19EE: inc w               ; 4A
19EF: adc a, x            ; 2A
19F0: jmp z, w            ; 95
19F1: cmp a, y            ; 52
19F2: cmp x, $AA          ; 55 AA
19F4: inc w               ; 4A
19F5: cmp x, $49          ; 55 49
19F7: cmp x, $55          ; 55 55
19F9: nop                 ; AA
19FA: ror a               ; 92
19FB: nop                 ; 00
19FC: nop                 ; 00
19FD: add a, x            ; 20
19FE: nop                 ; 00
19FF: nop                 ; 00
1A00: nop                 ; 00
1A01: nop                 ; 00
1A02: nop                 ; 00
1A03: shl y, $A4          ; 80 A4
1A05: nop                 ; A4
1A06: nop                 ; F0
1A07: nop                 ; F5
1A08: nop                 ; EE
1A09: pop.a               ; 0D
1A0A: nop                 ; 00
1A0B: nop                 ; 00
1A0C: nop                 ; 00
1A0D: nop                 ; FC
1A0E: nop                 ; FF
1A0F: cmp x, $55          ; 55 55
1A11: cmp x, $AA          ; 55 AA
1A13: jmp x, y            ; 94
1A14: cmp a, w            ; 54
1A15: cmp x, $A9          ; 55 A9
1A17: nop                 ; A4
1A18: nop                 ; A4
1A19: jmp x, y            ; 94
1A1A: cmp a, w            ; 54
1A1B: cmp x, $52          ; 55 52
1A1D: inc w               ; 4A
1A1E: cmp x, $52          ; 55 52
1A20: nop                 ; A5
1A21: cmp a, y            ; 52
1A22: add x, $01          ; 25 01
1A24: nop                 ; 00
1A25: nop                 ; 00
1A26: nop                 ; 00
1A27: nop                 ; 00
1A28: nop                 ; 00
1A29: nop                 ; 00
1A2A: load y, $0008       ; 10 08 00
1A2D: load z, $BFB1       ; 11 B1 BF
1A30: cmp z, $7B          ; 57 7B
1A32: nop                 ; 00
1A33: nop                 ; 00
1A34: nop                 ; 00
1A35: nop                 ; FC
1A36: nop                 ; FF
1A37: cmp x, $55          ; 55 55
1A39: cmp x, $55          ; 55 55
1A3B: cmp x, $95          ; 55 95
1A3D: add a, a            ; 24
1A3E: jmp z, w            ; 95
1A3F: inc w               ; 4A
1A40: store $4921, y      ; 15 21 49
1A43: inc z               ; 49
1A44: jmp z, w            ; 95
1A45: cmp a, y            ; 52
1A46: cmp x, $95          ; 55 95
1A48: jmp x, y            ; 94
1A49: jmp x, y            ; 94
1A4A: jmp x, y            ; 94
1A4B: push w              ; 04
1A4C: nop                 ; 00
1A4D: nop                 ; 00
1A4E: push x              ; 01
1A4F: nop                 ; 00
1A50: shl y, $00          ; 80 00
1A52: nop                 ; 00
1A53: nop                 ; 00
1A54: nop                 ; A8
1A55: mul z, $F8          ; 44 F8
1A57: nop                 ; F6
1A58: nop                 ; ED
1A59: adc a, x            ; 2A
1A5A: nop                 ; 00
1A5B: nop                 ; 00
1A5C: nop                 ; 00
1A5D: nop                 ; FC
1A5E: nop                 ; FF
1A5F: cmp x, $55          ; 55 55
1A61: inc z               ; 49
1A62: inc z               ; 49
1A63: cmp x, $A5          ; 55 A5
1A65: nop                 ; AA
1A66: nop                 ; A4
1A67: cmp a, y            ; 52
1A68: cmp a, y            ; 52
1A69: inc w               ; 4A
1A6A: adc a, x            ; 2A
1A6B: cmp x, $A9          ; 55 A9
1A6D: nop                 ; AA
1A6E: add a, a            ; 24
1A6F: nop                 ; A9
1A70: cmp a, y            ; 52
1A71: cmp x, $55          ; 55 55
1A73: pop y               ; 09
1A74: nop                 ; 00
1A75: nop                 ; 00
1A76: nop                 ; 00
1A77: nop                 ; 00
1A78: nop                 ; 00
1A79: nop                 ; 00
1A7A: shl y, $00          ; 80 00
1A7C: push x              ; 01
1A7D: load z, $6FA8       ; 11 A8 6F
1A80: nop                 ; B7
1A81: nop                 ; F6
1A82: nop                 ; 00
1A83: nop                 ; 00
1A84: nop                 ; 00
1A85: nop                 ; FC
1A86: nop                 ; FF
1A87: cmp x, $55          ; 55 55
1A89: cmp x, $55          ; 55 55
1A8B: nop                 ; A5
1A8C: cmp a, w            ; 54
1A8D: ror a               ; 92
1A8E: adc a, x            ; 2A
1A8F: jmp z, w            ; 95
1A90: nop                 ; AA
1A91: ror a               ; 92
1A92: cmp a, y            ; 52
1A93: cmp x, $55          ; 55 55
1A95: inc w               ; 4A
1A96: cmp x, $55          ; 55 55
1A98: cmp x, $52          ; 55 52
1A9A: cmp x, $2A          ; 55 2A
1A9C: nop                 ; 00
1A9D: nop                 ; 00
1A9E: pop x               ; 08
1A9F: nop                 ; 00
1AA0: nop                 ; 00
1AA1: nop                 ; 00
1AA2: nop                 ; 00
1AA3: shl y, $40          ; 80 40
1AA5: shr x, $FC          ; 84 FC
1AA7: nop                 ; FA
1AA8: nop                 ; D9
1AA9: cmp x, $01          ; 55 01
1AAB: nop                 ; 00
1AAC: nop                 ; 00
1AAD: nop                 ; FC
1AAE: nop                 ; FF
1AAF: nop                 ; AA
1AB0: nop                 ; AA
1AB1: nop                 ; AA
1AB2: nop                 ; AA
1AB3: cmp a, w            ; 54
1AB4: cmp x, $55          ; 55 55
1AB6: inc z               ; 49
1AB7: nop                 ; A9
1AB8: ror a               ; 92
1AB9: nop                 ; A4
1ABA: add a, a            ; 24
1ABB: inc z               ; 49
1ABC: inc w               ; 4A
1ABD: cmp x, $AA          ; 55 AA
1ABF: inc w               ; 4A
1AC0: inc w               ; 4A
1AC1: jmp z, w            ; 95
1AC2: nop                 ; A4
1AC3: ror a               ; 92
1AC4: nop                 ; 00
1AC5: nop                 ; 00
1AC6: nop                 ; 00
1AC7: nop                 ; 00
1AC8: nop                 ; 00
1AC9: nop                 ; 00
1ACA: nop                 ; 00
1ACB: nop                 ; 00
1ACC: push w              ; 04
1ACD: load z, $6FD4       ; 11 D4 6F
1AD0: nop                 ; B7
1AD1: nop                 ; F6
1AD2: nop                 ; 00
1AD3: nop                 ; 00
1AD4: nop                 ; 00
1AD5: nop                 ; FC
1AD6: nop                 ; FF
1AD7: cmp x, $AA          ; 55 AA
1AD9: nop                 ; AA
1ADA: nop                 ; AA
1ADB: adc a, x            ; 2A
1ADC: jmp z, w            ; 95
1ADD: add a, a            ; 24
1ADE: cmp x, $2A          ; 55 2A
1AE0: cmp x, $15          ; 55 15
1AE2: ror a               ; 92
1AE3: cmp a, w            ; 54
1AE4: cmp x, $A9          ; 55 A9
1AE6: ror a               ; 92
1AE7: cmp a, w            ; 54
1AE8: cmp x, $49          ; 55 49
1AEA: jmp z, w            ; 95
1AEB: inc w               ; 4A
1AEC: nop                 ; 00
1AED: nop                 ; 00
1AEE: nop                 ; 00
1AEF: nop                 ; 00
1AF0: nop                 ; 00
1AF1: nop                 ; 00
1AF2: nop                 ; 00
1AF3: load z, $0480       ; 11 80 04
1AF6: or a, z             ; 6A
1AF7: nop                 ; FB
1AF8: nop                 ; DD
1AF9: nop                 ; FA
1AFA: nop                 ; 00
1AFB: nop                 ; 00
1AFC: nop                 ; 00
1AFD: nop                 ; FC
1AFE: nop                 ; FF
1AFF: cmp a, y            ; 52
1B00: cmp x, $55          ; 55 55
1B02: jmp z, w            ; 95
1B03: nop                 ; AA
1B04: cmp a, y            ; 52
1B05: cmp x, $49          ; 55 49
1B07: nop                 ; A5
1B08: add a, a            ; 24
1B09: inc z               ; 49
1B0A: inc z               ; 49
1B0B: add x, $29          ; 25 29
1B0D: jmp z, w            ; 95
1B0E: nop                 ; AA
1B0F: cmp a, y            ; 52
1B10: add a, $55          ; 29 55
1B12: cmp a, y            ; 52
1B13: cmp x, $05          ; 55 05
1B15: nop                 ; 00
1B16: mul a, w            ; 40
1B17: nop                 ; 00
1B18: nop                 ; 00
1B19: nop                 ; 00
1B1A: nop                 ; 00
1B1B: nop                 ; 00
1B1C: pop x               ; 08
1B1D: inc y               ; 48
1B1E: nop                 ; A8
1B1F: or w, $75           ; 6F 75
1B21: nop                 ; EB
1B22: push z              ; 03
1B23: nop                 ; 00
1B24: nop                 ; 00
1B25: nop                 ; FC
1B26: nop                 ; FF
1B27: nop                 ; AA
1B28: ror a               ; 92
1B29: nop                 ; AA
1B2A: cmp a, w            ; 54
1B2B: nop                 ; A5
1B2C: nop                 ; AA
1B2D: ror a               ; 92
1B2E: cmp a, w            ; 54
1B2F: cmp a, y            ; 52
1B30: cmp x, $55          ; 55 55
1B32: add a, a            ; 24
1B33: nop                 ; A9
1B34: nop                 ; AA
1B35: cmp a, y            ; 52
1B36: nop                 ; AA
1B37: inc w               ; 4A
1B38: cmp x, $95          ; 55 95
1B3A: nop                 ; AA
1B3B: jmp x, y            ; 94
1B3C: load w, $0000       ; 12 00 00
1B3F: nop                 ; 00
1B40: pop x               ; 08
1B41: nop                 ; 00
1B42: nop                 ; 00
1B43: nop                 ; 00
1B44: push x              ; 01
1B45: nop                 ; 00
1B46: int $BE             ; A0 BE
1B48: nop                 ; DE
1B49: nop                 ; FE
1B4A: push x              ; 01
1B4B: nop                 ; 00
1B4C: nop                 ; 00
1B4D: nop                 ; FC
1B4E: nop                 ; FF
1B4F: nop                 ; AA
1B50: nop                 ; AA
1B51: cmp a, w            ; 54
1B52: cmp x, $55          ; 55 55
1B54: add a, $55          ; 29 55
1B56: jmp z, w            ; 95
1B57: inc w               ; 4A
1B58: inc w               ; 4A
1B59: inc z               ; 49
1B5A: inc z               ; 49
1B5B: inc w               ; 4A
1B5C: inc w               ; 4A
1B5D: cmp x, $49          ; 55 49
1B5F: adc a, x            ; 2A
1B60: nop                 ; A5
1B61: cmp a, y            ; 52
1B62: jmp z, w            ; 95
1B63: nop                 ; AA
1B64: add a, a            ; 24
1B65: nop                 ; 00
1B66: nop                 ; 00
1B67: nop                 ; 00
1B68: nop                 ; 00
1B69: nop                 ; 00
1B6A: nop                 ; 00
1B6B: pop x               ; 08
1B6C: nop                 ; 00
1B6D: push y              ; 02
1B6E: nop                 ; 00
1B6F: xor a, y            ; 77
1B70: nop                 ; BB
1B71: nop                 ; FB
1B72: push z              ; 03
1B73: nop                 ; 00
1B74: nop                 ; 00
1B75: nop                 ; FC
1B76: nop                 ; FF
1B77: cmp a, w            ; 54
1B78: cmp x, $55          ; 55 55
1B7A: cmp x, $95          ; 55 95
1B7C: inc w               ; 4A
1B7D: jmp z, w            ; 95
1B7E: cmp a, y            ; 52
1B7F: nop                 ; AA
1B80: cmp a, y            ; 52
1B81: nop                 ; AA
1B82: ror a               ; 92
1B83: add a, a            ; 24
1B84: nop                 ; A9
1B85: jmp x, y            ; 94
1B86: nop                 ; AA
1B87: nop                 ; AA
1B88: cmp a, w            ; 54
1B89: adc a, x            ; 2A
1B8A: nop                 ; A9
1B8B: cmp a, y            ; 52
1B8C: jmp z, w            ; 95
1B8D: nop                 ; 00
1B8E: nop                 ; 00
1B8F: nop                 ; 00
1B90: shl y, $00          ; 80 00
1B92: nop                 ; 00
1B93: nop                 ; 00
1B94: add a, x            ; 20
1B95: load y, $5D88       ; 10 88 5D
1B98: nop                 ; EF
1B99: nop                 ; BD
1B9A: push x              ; 01
1B9B: nop                 ; 00
1B9C: nop                 ; 00
1B9D: nop                 ; FC
1B9E: nop                 ; FF
1B9F: inc w               ; 4A
1BA0: nop                 ; AA
1BA1: nop                 ; AA
1BA2: nop                 ; AA
1BA3: or a, z             ; 6A
1BA4: nop                 ; AA
1BA5: cmp a, y            ; 52
1BA6: inc z               ; 49
1BA7: inc z               ; 49
1BA8: nop                 ; AA
1BA9: inc w               ; 4A
1BAA: inc w               ; 4A
1BAB: cmp a, y            ; 52
1BAC: add x, $A5          ; 25 A5
1BAE: nop                 ; AA
1BAF: cmp a, y            ; 52
1BB0: jmp z, w            ; 95
1BB1: nop                 ; AA
1BB2: inc w               ; 4A
1BB3: cmp x, $55          ; 55 55
1BB5: push x              ; 01
1BB6: nop                 ; 00
1BB7: nop                 ; 00
1BB8: nop                 ; 00
1BB9: push a              ; 05
1BBA: nop                 ; 00
1BBB: mul a, w            ; 40
1BBC: nop                 ; 00
1BBD: nop                 ; 00
1BBE: add a, x            ; 20
1BBF: nop                 ; BA
1BC0: xor w, $F7          ; 7D F7
1BC2: push x              ; 01
1BC3: nop                 ; 00
1BC4: nop                 ; 00
1BC5: nop                 ; FC
1BC6: nop                 ; FF
1BC7: cmp x, $A5          ; 55 A5
1BC9: ror a               ; 92
1BCA: nop                 ; AA
1BCB: jmp x, y            ; 94
1BCC: nop                 ; AA
1BCD: cmp a, w            ; 54
1BCE: nop                 ; AA
1BCF: nop                 ; AA
1BD0: nop                 ; A4
1BD1: cmp a, w            ; 54
1BD2: jmp z, w            ; 95
1BD3: shr a, $54          ; 88 54
1BD5: cmp x, $92          ; 55 92
1BD7: jmp x, y            ; 94
1BD8: cmp a, y            ; 52
1BD9: inc z               ; 49
1BDA: cmp x, $4A          ; 55 4A
1BDC: inc z               ; 49
1BDD: push y              ; 02
1BDE: nop                 ; 00
1BDF: nop                 ; 00
1BE0: mul a, w            ; 40
1BE1: push y              ; 02
1BE2: nop                 ; 00
1BE3: nop                 ; 00
1BE4: push y              ; 02
1BE5: nop                 ; 00
1BE6: nop                 ; B0
1BE7: nop                 ; AE
1BE8: nop                 ; B7
1BE9: nop                 ; FB
1BEA: push x              ; 01
1BEB: nop                 ; 00
1BEC: nop                 ; 00
1BED: nop                 ; FC
1BEE: nop                 ; FF
1BEF: nop                 ; AA
1BF0: nop                 ; AA
1BF1: nop                 ; AA
1BF2: nop                 ; A4
1BF3: nop                 ; AA
1BF4: ror a               ; 92
1BF5: nop                 ; AA
1BF6: inc w               ; 4A
1BF7: ror a               ; 92
1BF8: adc a, x            ; 2A
1BF9: nop                 ; A5
1BFA: nop                 ; A4
1BFB: cmp a, y            ; 52
1BFC: ror a               ; 92
1BFD: cmp a, y            ; 52
1BFE: cmp x, $55          ; 55 55
1C00: cmp x, $55          ; 55 55
1C02: ror a               ; 92
1C03: cmp a, y            ; 52
1C04: nop                 ; AA
1C05: pop z               ; 0A
1C06: nop                 ; 00
1C07: mul a, w            ; 40
1C08: nop                 ; 00
1C09: push x              ; 01
1C0A: nop                 ; 00
1C0B: nop                 ; 00
1C0C: pop x               ; 08
1C0D: pop y               ; 09
1C0E: mul z, $DC          ; 44 DC
1C10: nop                 ; FE
1C11: nop                 ; DE
1C12: nop                 ; 00
1C13: nop                 ; 00
1C14: nop                 ; 00
1C15: nop                 ; FC
1C16: nop                 ; FF
1C17: nop                 ; A9
1C18: adc a, x            ; 2A
1C19: cmp x, $55          ; 55 55
1C1B: cmp x, $55          ; 55 55
1C1D: nop                 ; A5
1C1E: cmp a, w            ; 54
1C1F: add a, $49          ; 29 49
1C21: add a, $55          ; 29 55
1C23: add x, $A9          ; 25 A9
1C25: jmp x, y            ; 94
1C26: nop                 ; AA
1C27: nop                 ; AA
1C28: jmp x, y            ; 94
1C29: nop                 ; AA
1C2A: nop                 ; AA
1C2B: cmp a, w            ; 54
1C2C: cmp x, $05          ; 55 05
1C2E: nop                 ; 00
1C2F: nop                 ; 00
1C30: nop                 ; 00
1C31: push x              ; 01
1C32: nop                 ; 00
1C33: nop                 ; 00
1C34: mul a, w            ; 40
1C35: nop                 ; 00
1C36: mul a, w            ; 40
1C37: or a, z             ; 6A
1C38: nop                 ; EB
1C39: or a, w             ; 6B
1C3A: nop                 ; 00
1C3B: nop                 ; 00
1C3C: nop                 ; 00
1C3D: nop                 ; FC
1C3E: nop                 ; FF
1C3F: adc a, x            ; 2A
1C40: nop                 ; A9
1C41: nop                 ; AA
1C42: nop                 ; AA
1C43: nop                 ; AA
1C44: nop                 ; AA
1C45: adc a, x            ; 2A
1C46: add x, $A5          ; 25 A5
1C48: nop                 ; AA
1C49: nop                 ; AA
1C4A: adc a, x            ; 2A
1C4B: inc z               ; 49
1C4C: jmp z, w            ; 95
1C4D: nop                 ; AA
1C4E: add a, a            ; 24
1C4F: nop                 ; A5
1C50: nop                 ; AA
1C51: nop                 ; A4
1C52: inc w               ; 4A
1C53: cmp x, $95          ; 55 95
1C55: store $0000, x      ; 14 00 00
1C58: nop                 ; 00
1C59: nop                 ; 00
1C5A: nop                 ; 00
1C5B: nop                 ; 00
1C5C: nop                 ; 00
1C5D: nop                 ; 00
1C5E: load y, $BFDC       ; 10 DC BF
1C61: xor a, $00          ; 7E 00
1C63: nop                 ; 00
1C64: nop                 ; 00
1C65: nop                 ; FC
1C66: nop                 ; FF
1C67: cmp x, $55          ; 55 55
1C69: cmp x, $95          ; 55 95
1C6B: cmp a, y            ; 52
1C6C: jmp z, w            ; 95
1C6D: cmp a, w            ; 54
1C6E: cmp x, $95          ; 55 95
1C70: add a, a            ; 24
1C71: nop                 ; A5
1C72: nop                 ; A4
1C73: nop                 ; AA
1C74: cmp a, y            ; 52
1C75: cmp a, y            ; 52
1C76: cmp x, $29          ; 55 29
1C78: nop                 ; A5
1C79: adc a, x            ; 2A
1C7A: add a, $49          ; 29 49
1C7C: cmp a, y            ; 52
1C7D: cmp x, $00          ; 55 00
1C7F: nop                 ; 00
1C80: nop                 ; 00
1C81: nop                 ; 00
1C82: nop                 ; 00
1C83: nop                 ; 00
1C84: nop                 ; 00
1C85: push y              ; 02
1C86: nop                 ; 00
1C87: nop                 ; E4
1C88: nop                 ; F6
1C89: adc a, y            ; 2B
1C8A: nop                 ; 00
1C8B: nop                 ; 00
1C8C: nop                 ; 00
1C8D: nop                 ; FC
1C8E: nop                 ; FF
1C8F: nop                 ; A5
1C90: nop                 ; AA
1C91: nop                 ; AA
1C92: nop                 ; AA
1C93: nop                 ; AA
1C94: cmp a, y            ; 52
1C95: nop                 ; A5
1C96: cmp a, y            ; 52
1C97: cmp a, y            ; 52
1C98: cmp x, $29          ; 55 29
1C9A: jmp z, w            ; 95
1C9B: cmp a, w            ; 54
1C9C: nop                 ; AA
1C9D: adc a, x            ; 2A
1C9E: inc z               ; 49
1C9F: cmp x, $A9          ; 55 A9
1CA1: nop                 ; AA
1CA2: nop                 ; AA
1CA3: nop                 ; AA
1CA4: nop                 ; AA
1CA5: nop                 ; AA
1CA6: nop                 ; 00
1CA7: nop                 ; 00
1CA8: nop                 ; 00
1CA9: nop                 ; 00
1CAA: nop                 ; 00
1CAB: nop                 ; 00
1CAC: add a, z            ; 22
1CAD: add a, x            ; 20
1CAE: nop                 ; 00
1CAF: nop                 ; B4
1CB0: nop                 ; AF
1CB1: mul a, y            ; 3E
1CB2: nop                 ; 00
1CB3: nop                 ; 00
1CB4: nop                 ; 00
1CB5: nop                 ; FC
1CB6: nop                 ; FF
1CB7: cmp x, $55          ; 55 55
1CB9: cmp x, $55          ; 55 55
1CBB: cmp x, $AA          ; 55 AA
1CBD: adc a, x            ; 2A
1CBE: jmp z, w            ; 95
1CBF: adc a, x            ; 2A
1CC0: inc z               ; 49
1CC1: inc w               ; 4A
1CC2: nop                 ; A9
1CC3: ror a               ; 92
1CC4: inc w               ; 4A
1CC5: inc z               ; 49
1CC6: cmp x, $AA          ; 55 AA
1CC8: inc w               ; 4A
1CC9: cmp a, y            ; 52
1CCA: cmp x, $95          ; 55 95
1CCC: nop                 ; AA
1CCD: ror a               ; 92
1CCE: push y              ; 02
1CCF: nop                 ; 00
1CD0: nop                 ; 00
1CD1: nop                 ; 00
1CD2: push y              ; 02
1CD3: nop                 ; 00
1CD4: nop                 ; 00
1CD5: push w              ; 04
1CD6: nop                 ; 00
1CD7: nop                 ; F8
1CD8: nop                 ; FA
1CD9: set x, $00          ; 1B 00
1CDB: nop                 ; 00
1CDC: nop                 ; 00
1CDD: nop                 ; FC
1CDE: nop                 ; FF
1CDF: jmp x, y            ; 94
1CE0: jmp x, y            ; 94
1CE1: nop                 ; AA
1CE2: nop                 ; AA
1CE3: nop                 ; AA
1CE4: adc a, x            ; 2A
1CE5: nop                 ; A9
1CE6: cmp a, w            ; 54
1CE7: nop                 ; A5
1CE8: nop                 ; AA
1CE9: nop                 ; AA
1CEA: inc w               ; 4A
1CEB: nop                 ; AA
1CEC: cmp a, y            ; 52
1CED: nop                 ; AA
1CEE: nop                 ; A4
1CEF: inc w               ; 4A
1CF0: nop                 ; AA
1CF1: adc a, x            ; 2A
1CF2: inc z               ; 49
1CF3: cmp a, y            ; 52
1CF4: inc z               ; 49
1CF5: nop                 ; AA
1CF6: pop z               ; 0A
1CF7: nop                 ; 00
1CF8: nop                 ; 00
1CF9: nop                 ; 00
1CFA: nop                 ; 00
1CFB: nop                 ; 00
1CFC: shl y, $00          ; 80 00
1CFE: nop                 ; 00
1CFF: nop                 ; A8
1D00: nop                 ; DF
1D01: store $0000, z      ; 16 00 00
1D04: nop                 ; 00
1D05: nop                 ; FC
1D06: nop                 ; FF
1D07: nop                 ; AA
1D08: nop                 ; AA
1D09: ror a               ; 92
1D0A: cmp a, y            ; 52
1D0B: inc w               ; 4A
1D0C: cmp x, $55          ; 55 55
1D0E: nop                 ; A5
1D0F: jmp x, y            ; 94
1D10: add a, a            ; 24
1D11: add a, $55          ; 29 55
1D13: add x, $49          ; 25 49
1D15: add x, $95          ; 25 95
1D17: cmp a, w            ; 54
1D18: nop                 ; A9
1D19: inc w               ; 4A
1D1A: cmp x, $95          ; 55 95
1D1C: nop                 ; AA
1D1D: nop                 ; AA
1D1E: store $0000, x      ; 14 00 00
1D21: nop                 ; 00
1D22: nop                 ; 00
1D23: nop                 ; 00
1D24: load y, $0048       ; 10 48 00
1D27: nop                 ; FC
1D28: xor a, x            ; 76
1D29: load x, $0000       ; 0F 00 00
1D2C: nop                 ; 00
1D2D: nop                 ; FC
1D2E: nop                 ; FF
1D2F: cmp a, y            ; 52
1D30: cmp x, $55          ; 55 55
1D32: nop                 ; AA
1D33: nop                 ; AA
1D34: inc w               ; 4A
1D35: jmp z, w            ; 95
1D36: nop                 ; AA
1D37: cmp a, y            ; 52
1D38: cmp x, $A5          ; 55 A5
1D3A: add a, a            ; 24
1D3B: nop                 ; A9
1D3C: adc a, x            ; 2A
1D3D: nop                 ; A9
1D3E: cmp a, y            ; 52
1D3F: add x, $95          ; 25 95
1D41: cmp a, w            ; 54
1D42: cmp x, $A9          ; 55 A9
1D44: nop                 ; A4
1D45: inc w               ; 4A
1D46: cmp x, $00          ; 55 00
1D48: nop                 ; 00
1D49: nop                 ; 00
1D4A: nop                 ; 00
1D4B: nop                 ; 00
1D4C: nop                 ; 00
1D4D: push x              ; 01
1D4E: nop                 ; 00
1D4F: nop                 ; D0
1D50: nop                 ; DD
1D51: push a              ; 05
1D52: nop                 ; 00
1D53: nop                 ; 00
1D54: nop                 ; 00
1D55: nop                 ; FC
1D56: nop                 ; FF
1D57: cmp x, $55          ; 55 55
1D59: cmp x, $55          ; 55 55
1D5B: cmp x, $A9          ; 55 A9
1D5D: nop                 ; A4
1D5E: jmp x, y            ; 94
1D5F: adc a, x            ; 2A
1D60: inc z               ; 49
1D61: nop                 ; AA
1D62: nop                 ; AA
1D63: inc w               ; 4A
1D64: nop                 ; AA
1D65: inc w               ; 4A
1D66: adc a, x            ; 2A
1D67: jmp z, w            ; 95
1D68: cmp a, y            ; 52
1D69: cmp x, $52          ; 55 52
1D6B: add x, $95          ; 25 95
1D6D: cmp a, w            ; 54
1D6E: nop                 ; A5
1D6F: nop                 ; 00
1D70: nop                 ; 00
1D71: nop                 ; 00
1D72: nop                 ; 00
1D73: nop                 ; 00
1D74: nop                 ; 00
1D75: nop                 ; 00
1D76: push x              ; 01
1D77: or x, $77           ; 6C 77
1D79: push.f              ; 07
1D7A: nop                 ; 00
1D7B: nop                 ; 00
1D7C: nop                 ; 00
1D7D: nop                 ; FC
1D7E: nop                 ; FF
1D7F: cmp x, $AA          ; 55 AA
1D81: cmp a, w            ; 54
1D82: cmp x, $A9          ; 55 A9
1D84: nop                 ; AA
1D85: nop                 ; AA
1D86: cmp a, y            ; 52
1D87: inc w               ; 4A
1D88: cmp x, $49          ; 55 49
1D8A: cmp a, y            ; 52
1D8B: nop                 ; AA
1D8C: ror a               ; 92
1D8D: cmp a, w            ; 54
1D8E: inc z               ; 49
1D8F: nop                 ; A9
1D90: inc w               ; 4A
1D91: nop                 ; A5
1D92: inc w               ; 4A
1D93: nop                 ; AA
1D94: cmp a, y            ; 52
1D95: cmp x, $A9          ; 55 A9
1D97: push y              ; 02
1D98: nop                 ; 00
1D99: nop                 ; 00
1D9A: nop                 ; 00
1D9B: nop                 ; 00
1D9C: mul a, w            ; 40
1D9D: add a, a            ; 24
1D9E: nop                 ; 00
1D9F: nop                 ; D0
1DA0: nop                 ; DE
1DA1: push z              ; 03
1DA2: nop                 ; 00
1DA3: nop                 ; 00
1DA4: nop                 ; 00
1DA5: nop                 ; FC
1DA6: nop                 ; FF
1DA7: jmp z, w            ; 95
1DA8: cmp a, y            ; 52
1DA9: cmp x, $A5          ; 55 A5
1DAB: nop                 ; AA
1DAC: nop                 ; AA
1DAD: nop                 ; AA
1DAE: nop                 ; AA
1DAF: cmp a, y            ; 52
1DB0: ror a               ; 92
1DB1: nop                 ; AA
1DB2: inc w               ; 4A
1DB3: add a, $55          ; 29 55
1DB5: nop                 ; A5
1DB6: nop                 ; AA
1DB7: adc a, x            ; 2A
1DB8: cmp x, $AA          ; 55 AA
1DBA: nop                 ; AA
1DBB: nop                 ; AA
1DBC: jmp x, y            ; 94
1DBD: add a, a            ; 24
1DBE: jmp z, w            ; 95
1DBF: pop z               ; 0A
1DC0: nop                 ; 00
1DC1: nop                 ; 00
1DC2: nop                 ; 00
1DC3: nop                 ; 00
1DC4: nop                 ; 00
1DC5: nop                 ; 00
1DC6: push w              ; 04
1DC7: nop                 ; D4
1DC8: xor y, $01          ; 7B 01
1DCA: nop                 ; 00
1DCB: nop                 ; 00
1DCC: nop                 ; 00
1DCD: nop                 ; FC
1DCE: nop                 ; FF
1DCF: nop                 ; A4
1DD0: adc a, x            ; 2A
1DD1: add x, $55          ; 25 55
1DD3: adc a, x            ; 2A
1DD4: cmp x, $95          ; 55 95
1DD6: jmp x, y            ; 94
1DD7: nop                 ; AA
1DD8: nop                 ; AA
1DD9: add a, a            ; 24
1DDA: nop                 ; A9
1DDB: inc w               ; 4A
1DDC: inc z               ; 49
1DDD: cmp a, y            ; 52
1DDE: cmp a, y            ; 52
1DDF: inc w               ; 4A
1DE0: nop                 ; A9
1DE1: ror a               ; 92
1DE2: cmp a, w            ; 54
1DE3: jmp z, w            ; 95
1DE4: cmp a, y            ; 52
1DE5: cmp x, $55          ; 55 55
1DE7: store $0000, y      ; 15 00 00
1DEA: nop                 ; 00
1DEB: nop                 ; 00
1DEC: nop                 ; 00
1DED: load z, $D400       ; 11 00 D4
1DF0: nop                 ; D6
1DF1: push x              ; 01
1DF2: nop                 ; 00
1DF3: nop                 ; 00
1DF4: nop                 ; 00
1DF5: nop                 ; FC
1DF6: nop                 ; FF
1DF7: cmp x, $A5          ; 55 A5
1DF9: nop                 ; AA
1DFA: nop                 ; AA
1DFB: nop                 ; AA
1DFC: inc w               ; 4A
1DFD: nop                 ; A9
1DFE: cmp a, y            ; 52
1DFF: inc w               ; 4A
1E00: add x, $55          ; 25 55
1E02: jmp z, w            ; 95
1E03: cmp a, y            ; 52
1E04: nop                 ; AA
1E05: inc w               ; 4A
1E06: jmp z, w            ; 95
1E07: cmp a, y            ; 52
1E08: inc w               ; 4A
1E09: cmp x, $25          ; 55 25
1E0B: nop                 ; A9
1E0C: inc w               ; 4A
1E0D: cmp a, y            ; 52
1E0E: add x, $29          ; 25 29
1E10: nop                 ; 00
1E11: nop                 ; 00
1E12: nop                 ; 00
1E13: nop                 ; 00
1E14: nop                 ; 00
1E15: shl y, $00          ; 80 00
1E17: and y, $7F          ; 64 7F
1E19: push x              ; 01
1E1A: nop                 ; 00
1E1B: nop                 ; 00
1E1C: nop                 ; 00
1E1D: nop                 ; FC
1E1E: nop                 ; FF
1E1F: nop                 ; AA
1E20: cmp a, w            ; 54
1E21: cmp x, $49          ; 55 49
1E23: cmp x, $55          ; 55 55
1E25: cmp x, $55          ; 55 55
1E27: add a, $A9          ; 29 A9
1E29: ror a               ; 92
1E2A: cmp a, w            ; 54
1E2B: nop                 ; AA
1E2C: adc a, x            ; 2A
1E2D: nop                 ; A9
1E2E: nop                 ; A4
1E2F: nop                 ; AA
1E30: nop                 ; AA
1E31: cmp a, w            ; 54
1E32: cmp x, $A5          ; 55 A5
1E34: cmp a, w            ; 54
1E35: jmp z, w            ; 95
1E36: cmp a, w            ; 54
1E37: cmp x, $01          ; 55 01
1E39: nop                 ; 00
1E3A: nop                 ; 00
1E3B: nop                 ; 00
1E3C: nop                 ; 00
1E3D: push w              ; 04
1E3E: load y, $D5DC       ; 10 DC D5
1E41: nop                 ; 00
1E42: nop                 ; 00
1E43: nop                 ; 00
1E44: nop                 ; 00
1E45: nop                 ; FC
1E46: nop                 ; FF
1E47: nop                 ; A5
1E48: adc a, x            ; 2A
1E49: nop                 ; A9
1E4A: nop                 ; AA
1E4B: cmp a, y            ; 52
1E4C: add a, $A5          ; 29 A5
1E4E: nop                 ; AA
1E4F: nop                 ; AA
1E50: nop                 ; AA
1E51: cmp a, w            ; 54
1E52: nop                 ; A5
1E53: inc w               ; 4A
1E54: inc z               ; 49
1E55: jmp z, w            ; 95
1E56: adc a, x            ; 2A
1E57: inc z               ; 49
1E58: add a, $55          ; 29 55
1E5A: cmp x, $55          ; 55 55
1E5C: add x, $A9          ; 25 A9
1E5E: nop                 ; AA
1E5F: cmp a, y            ; 52
1E60: push x              ; 01
1E61: load y, $0000       ; 10 00 00
1E64: load y, $0220       ; 10 20 02
1E67: not w               ; 74
1E68: shl x, $00          ; 7F 00
1E6A: nop                 ; 00
1E6B: nop                 ; 00
1E6C: nop                 ; 00
1E6D: nop                 ; FC
1E6E: nop                 ; FF
1E6F: jmp z, w            ; 95
1E70: nop                 ; AA
1E71: adc a, x            ; 2A
1E72: cmp x, $2A          ; 55 2A
1E74: cmp x, $55          ; 55 55
1E76: inc w               ; 4A
1E77: nop                 ; A5
1E78: jmp x, y            ; 94
1E79: inc w               ; 4A
1E7A: jmp z, w            ; 95
1E7B: cmp a, y            ; 52
1E7C: nop                 ; AA
1E7D: cmp a, w            ; 54
1E7E: nop                 ; AA
1E7F: adc a, x            ; 2A
1E80: nop                 ; A5
1E81: inc w               ; 4A
1E82: cmp a, y            ; 52
1E83: adc a, x            ; 2A
1E84: cmp x, $4A          ; 55 4A
1E86: ror a               ; 92
1E87: jmp x, y            ; 94
1E88: pop z               ; 0A
1E89: nop                 ; 00
1E8A: nop                 ; 00
1E8B: nop                 ; 00
1E8C: mul a, w            ; 40
1E8D: nop                 ; 00
1E8E: nop                 ; 00
1E8F: nop                 ; F8
1E90: cmp y, $00          ; 56 00
1E92: nop                 ; 00
1E93: nop                 ; 00
1E94: nop                 ; 00
1E95: nop                 ; FC
1E96: nop                 ; FF
1E97: cmp a, w            ; 54
1E98: inc z               ; 49
1E99: nop                 ; A5
1E9A: nop                 ; AA
1E9B: inc w               ; 4A
1E9C: nop                 ; A5
1E9D: jmp x, y            ; 94
1E9E: cmp a, y            ; 52
1E9F: nop                 ; AA
1EA0: cmp a, y            ; 52
1EA1: add a, $A9          ; 29 A9
1EA3: jmp x, y            ; 94
1EA4: ror a               ; 92
1EA5: cmp a, y            ; 52
1EA6: inc z               ; 49
1EA7: cmp a, y            ; 52
1EA8: cmp x, $52          ; 55 52
1EAA: cmp x, $A9          ; 55 A9
1EAC: inc w               ; 4A
1EAD: nop                 ; A9
1EAE: nop                 ; AA
1EAF: nop                 ; AA
1EB0: pop z               ; 0A
1EB1: shl w, $00          ; 82 00
1EB3: nop                 ; 00
1EB4: nop                 ; 00
1EB5: shl z, $20          ; 81 20
1EB7: nop                 ; A8
1EB8: sub w, $00          ; 3B 00
1EBA: nop                 ; 00
1EBB: nop                 ; 00
1EBC: nop                 ; 00
1EBD: nop                 ; FC
1EBE: nop                 ; FF
1EBF: nop                 ; AA
1EC0: nop                 ; AA
1EC1: cmp a, w            ; 54
1EC2: inc z               ; 49
1EC3: nop                 ; A9
1EC4: nop                 ; AA
1EC5: cmp a, y            ; 52
1EC6: cmp x, $95          ; 55 95
1EC8: inc w               ; 4A
1EC9: nop                 ; AA
1ECA: inc w               ; 4A
1ECB: cmp x, $55          ; 55 55
1ECD: jmp z, w            ; 95
1ECE: nop                 ; AA
1ECF: inc w               ; 4A
1ED0: ror a               ; 92
1ED1: nop                 ; AA
1ED2: inc w               ; 4A
1ED3: jmp z, w            ; 95
1ED4: cmp a, y            ; 52
1ED5: add x, $A9          ; 25 A9
1ED7: inc w               ; 4A
1ED8: nop                 ; B2
1ED9: store $0002, y      ; 15 02 00
1EDC: cmp a, w            ; 54
1EDD: push w              ; 04
1EDE: push w              ; 04
1EDF: nop                 ; E0
1EE0: set w, $00          ; 1E 00
1EE2: nop                 ; 00
1EE3: nop                 ; 00
1EE4: nop                 ; 00
1EE5: nop                 ; FC
1EE6: nop                 ; FF
1EE7: nop                 ; AA
1EE8: adc a, x            ; 2A
1EE9: cmp x, $AA          ; 55 AA
1EEB: nop                 ; AA
1EEC: jmp x, y            ; 94
1EED: adc a, x            ; 2A
1EEE: jmp z, w            ; 95
1EEF: cmp a, y            ; 52
1EF0: cmp x, $A5          ; 55 A5
1EF2: cmp a, y            ; 52
1EF3: cmp a, y            ; 52
1EF4: adc a, x            ; 2A
1EF5: nop                 ; A5
1EF6: ror a               ; 92
1EF7: cmp a, w            ; 54
1EF8: cmp x, $25          ; 55 25
1EFA: cmp x, $A5          ; 55 A5
1EFC: jmp x, y            ; 94
1EFD: jmp x, y            ; 94
1EFE: inc w               ; 4A
1EFF: cmp a, y            ; 52
1F00: cmp x, $2A          ; 55 2A
1F02: load y, $2000       ; 10 00 20
1F05: push x              ; 01
1F06: nop                 ; 00
1F07: nop                 ; C0
1F08: pop w               ; 0B
1F09: nop                 ; 00
1F0A: nop                 ; 00
1F0B: nop                 ; 00
1F0C: nop                 ; 00
1F0D: nop                 ; FC
1F0E: nop                 ; FF
1F0F: cmp x, $55          ; 55 55
1F11: jmp z, w            ; 95
1F12: adc a, x            ; 2A
1F13: jmp z, w            ; 95
1F14: cmp a, y            ; 52
1F15: nop                 ; A9
1F16: cmp a, y            ; 52
1F17: cmp x, $29          ; 55 29
1F19: cmp x, $AA          ; 55 AA
1F1B: inc w               ; 4A
1F1C: nop                 ; A5
1F1D: cmp a, w            ; 54
1F1E: nop                 ; AA
1F1F: adc a, x            ; 2A
1F20: cmp x, $A9          ; 55 A9
1F22: cmp a, y            ; 52
1F23: nop                 ; AA
1F24: nop                 ; AA
1F25: cmp a, y            ; 52
1F26: nop                 ; A9
1F27: adc a, x            ; 2A
1F28: inc z               ; 49
1F29: nop                 ; A9
1F2A: nop                 ; 00
1F2B: nop                 ; 00
1F2C: nop                 ; EA
1F2D: push y              ; 02
1F2E: push x              ; 01
1F2F: shl z, $1E          ; 81 1E
1F31: nop                 ; 00
1F32: nop                 ; 00
1F33: nop                 ; 00
1F34: nop                 ; 00
1F35: nop                 ; FC
1F36: nop                 ; FF
1F37: cmp x, $A5          ; 55 A5
1F39: cmp a, y            ; 52
1F3A: nop                 ; A5
1F3B: nop                 ; A4
1F3C: adc a, x            ; 2A
1F3D: nop                 ; A5
1F3E: cmp a, w            ; 54
1F3F: inc w               ; 4A
1F40: nop                 ; AA
1F41: nop                 ; A4
1F42: inc w               ; 4A
1F43: cmp x, $A9          ; 55 A9
1F45: inc w               ; 4A
1F46: add x, $49          ; 25 49
1F48: inc z               ; 49
1F49: nop                 ; AA
1F4A: cmp a, w            ; 54
1F4B: cmp x, $55          ; 55 55
1F4D: jmp z, w            ; 95
1F4E: jmp x, y            ; 94
1F4F: nop                 ; AA
1F50: adc a, x            ; 2A
1F51: nop                 ; A5
1F52: mul x, $00          ; 42 00
1F54: xor a, z            ; 78
1F55: push x              ; 01
1F56: inc y               ; 48
1F57: nop                 ; 00
1F58: pop w               ; 0B
1F59: nop                 ; 00
1F5A: nop                 ; 00
1F5B: nop                 ; 00
1F5C: nop                 ; 00
1F5D: nop                 ; FC
1F5E: nop                 ; FF
1F5F: nop                 ; A4
1F60: nop                 ; AA
1F61: cmp a, w            ; 54
1F62: nop                 ; A9
1F63: nop                 ; AA
1F64: nop                 ; A4
1F65: adc a, x            ; 2A
1F66: jmp z, w            ; 95
1F67: cmp a, y            ; 52
1F68: jmp z, w            ; 95
1F69: adc a, x            ; 2A
1F6A: nop                 ; A9
1F6B: add a, a            ; 24
1F6C: cmp x, $52          ; 55 52
1F6E: nop                 ; A9
1F6F: nop                 ; AA
1F70: nop                 ; AA
1F71: inc w               ; 4A
1F72: jmp z, w            ; 95
1F73: inc w               ; 4A
1F74: ror a               ; 92
1F75: cmp a, w            ; 54
1F76: inc w               ; 4A
1F77: inc z               ; 49
1F78: nop                 ; A5
1F79: jmp x, y            ; 94
1F7A: push w              ; 04
1F7B: push y              ; 02
1F7C: nop                 ; F4
1F7D: pop z               ; 0A
1F7E: nop                 ; 00
1F7F: nop                 ; 00
1F80: push.a              ; 06
1F81: nop                 ; 00
1F82: nop                 ; 00
1F83: nop                 ; 00
1F84: nop                 ; 00
1F85: nop                 ; FC
1F86: nop                 ; FF
1F87: cmp x, $AA          ; 55 AA
1F89: inc w               ; 4A
1F8A: jmp z, w            ; 95
1F8B: ror a               ; 92
1F8C: adc a, x            ; 2A
1F8D: inc z               ; 49
1F8E: inc z               ; 49
1F8F: nop                 ; A9
1F90: nop                 ; A4
1F91: inc w               ; 4A
1F92: jmp z, w            ; 95
1F93: nop                 ; AA
1F94: ror a               ; 92
1F95: adc a, x            ; 2A
1F96: cmp x, $92          ; 55 92
1F98: jmp x, y            ; 94
1F99: nop                 ; AA
1F9A: nop                 ; AA
1F9B: cmp a, w            ; 54
1F9C: cmp x, $A5          ; 55 A5
1F9E: cmp a, y            ; 52
1F9F: adc a, x            ; 2A
1FA0: nop                 ; A9
1FA1: nop                 ; AA
1FA2: pop z               ; 0A
1FA3: pop x               ; 08
1FA4: nop                 ; F9
1FA5: push x              ; 01
1FA6: nop                 ; 00
1FA7: pop x               ; 08
1FA8: push w              ; 04
1FA9: nop                 ; 00
1FAA: nop                 ; 00
1FAB: nop                 ; 00
1FAC: nop                 ; 00
1FAD: nop                 ; FC
1FAE: nop                 ; FF
1FAF: nop                 ; AA
1FB0: adc a, x            ; 2A
1FB1: cmp x, $AA          ; 55 AA
1FB3: cmp a, w            ; 54
1FB4: nop                 ; AA
1FB5: nop                 ; AA
1FB6: cmp a, y            ; 52
1FB7: adc a, x            ; 2A
1FB8: cmp x, $A9          ; 55 A9
1FBA: nop                 ; A4
1FBB: ror a               ; 92
1FBC: nop                 ; AA
1FBD: nop                 ; AA
1FBE: inc w               ; 4A
1FBF: cmp x, $A5          ; 55 A5
1FC1: nop                 ; A4
1FC2: nop                 ; A4
1FC3: nop                 ; AA
1FC4: nop                 ; AA
1FC5: nop                 ; AA
1FC6: add a, a            ; 24
1FC7: nop                 ; A5
1FC8: adc a, x            ; 2A
1FC9: add x, $55          ; 25 55
1FCB: add a, x            ; 20
1FCC: nop                 ; C0
1FCD: push a              ; 05
1FCE: ror z               ; 90
1FCF: nop                 ; 00
1FD0: nop                 ; 00
1FD1: nop                 ; 00
1FD2: nop                 ; 00
1FD3: nop                 ; 00
1FD4: nop                 ; 00
1FD5: nop                 ; FC
1FD6: nop                 ; FF
1FD7: ror a               ; 92
1FD8: cmp a, y            ; 52
1FD9: cmp x, $29          ; 55 29
1FDB: nop                 ; A5
1FDC: cmp a, y            ; 52
1FDD: ror a               ; 92
1FDE: jmp x, y            ; 94
1FDF: ror a               ; 92
1FE0: adc a, x            ; 2A
1FE1: cmp x, $55          ; 55 55
1FE3: nop                 ; AA
1FE4: add a, a            ; 24
1FE5: inc z               ; 49
1FE6: cmp a, y            ; 52
1FE7: add x, $55          ; 25 55
1FE9: jmp z, w            ; 95
1FEA: nop                 ; AA
1FEB: ror a               ; 92
1FEC: add a, a            ; 24
1FED: jmp z, w            ; 95
1FEE: inc w               ; 4A
1FEF: nop                 ; A9
1FF0: cmp a, y            ; 52
1FF1: nop                 ; AA
1FF2: cmp a, w            ; 54
1FF3: inc y               ; 48
1FF4: cmp a, w            ; 54
1FF5: push x              ; 01
1FF6: nop                 ; 00
1FF7: nop                 ; 00
1FF8: nop                 ; 00
1FF9: nop                 ; 00
1FFA: nop                 ; 00
1FFB: nop                 ; 00
1FFC: nop                 ; 00
1FFD: nop                 ; FC
1FFE: nop                 ; FF
1FFF: nop                 ; AA
2000: jmp x, y            ; 94
2001: ror a               ; 92
2002: inc w               ; 4A
2003: jmp z, w            ; 95
2004: inc w               ; 4A
2005: cmp x, $AA          ; 55 AA
2007: nop                 ; A4
2008: nop                 ; A4
2009: inc w               ; 4A
200A: cmp a, y            ; 52
200B: nop                 ; A9
200C: nop                 ; AA
200D: nop                 ; AA
200E: nop                 ; AA
200F: cmp a, w            ; 54
2010: add a, $55          ; 29 55
2012: adc a, x            ; 2A
2013: cmp x, $55          ; 55 55
2015: nop                 ; A9
2016: adc a, x            ; 2A
2017: jmp z, w            ; 95
2018: jmp x, y            ; 94
2019: ror a               ; 92
201A: cmp a, y            ; 52
201B: clc                 ; A3
201C: load z, $0002       ; 11 02 00
201F: push y              ; 02
2020: nop                 ; 00
2021: nop                 ; 00
2022: nop                 ; 00
2023: nop                 ; 00
2024: nop                 ; 00
2025: nop                 ; FC
2026: nop                 ; FF
2027: cmp x, $55          ; 55 55
2029: nop                 ; AA
202A: nop                 ; AA
202B: cmp a, w            ; 54
202C: nop                 ; AA
202D: nop                 ; A4
202E: ror a               ; 92
202F: adc a, x            ; 2A
2030: cmp x, $52          ; 55 52
2032: jmp z, w            ; 95
2033: inc w               ; 4A
2034: nop                 ; AA
2035: cmp a, y            ; 52
2036: add x, $55          ; 25 55
2038: cmp x, $A9          ; 55 A9
203A: cmp a, y            ; 52
203B: cmp x, $55          ; 55 55
203D: cmp x, $52          ; 55 52
203F: cmp x, $55          ; 55 55
2041: cmp x, $95          ; 55 95
2043: shr x, $80          ; 84 80
2045: nop                 ; 00
2046: mul a, w            ; 40
2047: nop                 ; 00
2048: nop                 ; 00
2049: nop                 ; 00
204A: nop                 ; 00
204B: nop                 ; 00
204C: nop                 ; 00
204D: nop                 ; FC
204E: nop                 ; FF
204F: inc w               ; 4A
2050: inc w               ; 4A
2051: inc z               ; 49
2052: nop                 ; A9
2053: nop                 ; AA
2054: nop                 ; AA
2055: adc a, x            ; 2A
2056: cmp x, $92          ; 55 92
2058: ror a               ; 92
2059: adc a, x            ; 2A
205A: cmp x, $55          ; 55 55
205C: inc z               ; 49
205D: adc a, x            ; 2A
205E: nop                 ; A9
205F: ror a               ; 92
2060: jmp x, y            ; 94
2061: inc w               ; 4A
2062: cmp x, $29          ; 55 29
2064: add x, $A5          ; 25 A5
2066: nop                 ; AA
2067: nop                 ; A4
2068: inc w               ; 4A
2069: inc z               ; 49
206A: cmp a, y            ; 52
206B: store $000B, y      ; 15 0B 00
206E: nop                 ; 00
206F: nop                 ; 00
2070: nop                 ; 00
2071: nop                 ; 00
2072: nop                 ; 00
2073: nop                 ; 00
2074: nop                 ; 00
2075: nop                 ; FC
2076: nop                 ; FF
2077: nop                 ; AA
2078: cmp a, y            ; 52
2079: cmp x, $4A          ; 55 4A
207B: nop                 ; A9
207C: ror a               ; 92
207D: nop                 ; AA
207E: nop                 ; A4
207F: nop                 ; AA
2080: cmp a, w            ; 54
2081: cmp x, $49          ; 55 49
2083: nop                 ; AA
2084: nop                 ; AA
2085: inc w               ; 4A
2086: cmp x, $55          ; 55 55
2088: nop                 ; A5
2089: cmp a, y            ; 52
208A: nop                 ; A5
208B: nop                 ; AA
208C: cmp a, w            ; 54
208D: cmp x, $95          ; 55 95
208F: adc a, x            ; 2A
2090: add a, $55          ; 29 55
2092: inc z               ; 49
2093: add a, $24          ; 29 24
2095: nop                 ; 00
2096: nop                 ; 00
2097: nop                 ; 00
2098: nop                 ; 00
2099: nop                 ; 00
209A: nop                 ; 00
209B: nop                 ; 00
209C: nop                 ; 00
209D: nop                 ; FC
209E: nop                 ; FF
209F: nop                 ; A5
20A0: nop                 ; AA
20A1: nop                 ; AA
20A2: adc a, x            ; 2A
20A3: jmp z, w            ; 95
20A4: cmp a, w            ; 54
20A5: cmp x, $95          ; 55 95
20A7: add a, a            ; 24
20A8: inc z               ; 49
20A9: ror a               ; 92
20AA: nop                 ; AA
20AB: adc a, x            ; 2A
20AC: cmp x, $A9          ; 55 A9
20AE: jmp x, y            ; 94
20AF: cmp a, w            ; 54
20B0: nop                 ; AA
20B1: cmp a, w            ; 54
20B2: adc a, x            ; 2A
20B3: nop                 ; A5
20B4: nop                 ; AA
20B5: jmp x, y            ; 94
20B6: cmp a, w            ; 54
20B7: cmp x, $55          ; 55 55
20B9: add x, $55          ; 25 55
20BB: nop                 ; AA
20BC: ror z               ; 90
20BD: nop                 ; 00
20BE: nop                 ; 00
20BF: nop                 ; 00
20C0: nop                 ; 00
20C1: nop                 ; 00
20C2: nop                 ; 00
20C3: nop                 ; 00
20C4: nop                 ; 00
20C5: nop                 ; FC
20C6: nop                 ; FF
20C7: add a, $95          ; 29 95
20C9: nop                 ; AA
20CA: nop                 ; AA
20CB: cmp a, y            ; 52
20CC: cmp x, $52          ; 55 52
20CE: cmp x, $55          ; 55 55
20D0: nop                 ; A5
20D1: cmp a, w            ; 54
20D2: ror a               ; 92
20D3: nop                 ; A4
20D4: ror a               ; 92
20D5: nop                 ; AA
20D6: nop                 ; AA
20D7: inc w               ; 4A
20D8: add a, $55          ; 29 55
20DA: nop                 ; A9
20DB: nop                 ; AA
20DC: ror a               ; 92
20DD: cmp a, y            ; 52
20DE: nop                 ; A5
20DF: nop                 ; A4
20E0: nop                 ; A4
20E1: cmp a, w            ; 54
20E2: inc z               ; 49
20E3: nop                 ; A5
20E4: mul x, $00          ; 42 00
20E6: nop                 ; 00
20E7: push w              ; 04
20E8: nop                 ; 00
20E9: nop                 ; 00
20EA: nop                 ; 00
20EB: nop                 ; 00
20EC: nop                 ; 00
20ED: nop                 ; FC
20EE: nop                 ; FF
20EF: cmp x, $A9          ; 55 A9
20F1: jmp x, y            ; 94
20F2: inc w               ; 4A
20F3: cmp x, $55          ; 55 55
20F5: jmp z, w            ; 95
20F6: cmp a, y            ; 52
20F7: ror a               ; 92
20F8: jmp x, y            ; 94
20F9: inc w               ; 4A
20FA: cmp x, $A9          ; 55 A9
20FC: cmp a, w            ; 54
20FD: add x, $A5          ; 25 A5
20FF: nop                 ; AA
2100: inc w               ; 4A
2101: add x, $55          ; 25 55
2103: nop                 ; A9
2104: nop                 ; AA
2105: nop                 ; AA
2106: nop                 ; AA
2107: adc a, x            ; 2A
2108: cmp x, $55          ; 55 55
210A: add x, $49          ; 25 49
210C: pop z               ; 0A
210D: push y              ; 02
210E: nop                 ; 00
210F: nop                 ; 00
2110: nop                 ; 00
2111: nop                 ; 00
2112: nop                 ; 00
2113: nop                 ; 00
2114: nop                 ; 00
2115: nop                 ; FC
2116: nop                 ; FF
2117: nop                 ; A5
2118: nop                 ; AA
2119: nop                 ; AA
211A: cmp a, w            ; 54
211B: inc w               ; 4A
211C: ror a               ; 92
211D: nop                 ; AA
211E: inc w               ; 4A
211F: cmp x, $52          ; 55 52
2121: cmp a, y            ; 52
2122: nop                 ; A5
2123: inc w               ; 4A
2124: cmp x, $AA          ; 55 AA
2126: adc a, x            ; 2A
2127: add a, $55          ; 29 55
2129: nop                 ; A9
212A: inc w               ; 4A
212B: inc w               ; 4A
212C: nop                 ; AA
212D: inc w               ; 4A
212E: inc w               ; 4A
212F: cmp x, $49          ; 55 49
2131: add x, $55          ; 25 55
2133: cmp x, $09          ; 55 09
2135: add w, $00          ; 28 00
2137: nop                 ; 00
2138: nop                 ; 00
2139: nop                 ; 00
213A: nop                 ; 00
213B: nop                 ; 00
213C: nop                 ; 00
213D: nop                 ; FC
213E: nop                 ; FF
213F: cmp a, w            ; 54
2140: inc w               ; 4A
2141: cmp x, $A5          ; 55 A5
2143: cmp a, y            ; 52
2144: cmp x, $A5          ; 55 A5
2146: cmp a, w            ; 54
2147: inc z               ; 49
2148: jmp z, w            ; 95
2149: nop                 ; AA
214A: cmp a, w            ; 54
214B: adc a, x            ; 2A
214C: jmp z, w            ; 95
214D: nop                 ; AA
214E: cmp a, y            ; 52
214F: nop                 ; A5
2150: cmp a, y            ; 52
2151: cmp x, $A9          ; 55 A9
2153: nop                 ; AA
2154: nop                 ; AA
2155: cmp a, w            ; 54
2156: cmp x, $92          ; 55 92
2158: adc a, x            ; 2A
2159: nop                 ; A9
215A: ror a               ; 92
215B: add a, a            ; 24
215C: cmp x, $00          ; 55 00
215E: push x              ; 01
215F: nop                 ; 00
2160: nop                 ; 00
2161: nop                 ; 00
2162: nop                 ; 00
2163: nop                 ; 00
2164: nop                 ; 00
2165: nop                 ; FC
2166: nop                 ; FF
2167: inc w               ; 4A
2168: nop                 ; A9
2169: cmp a, y            ; 52
216A: cmp x, $95          ; 55 95
216C: nop                 ; A4
216D: cmp a, w            ; 54
216E: cmp x, $AA          ; 55 AA
2170: nop                 ; A4
2171: add a, a            ; 24
2172: jmp z, w            ; 95
2173: cmp a, y            ; 52
2174: nop                 ; A9
2175: ror a               ; 92
2176: cmp a, w            ; 54
2177: cmp x, $95          ; 55 95
2179: inc w               ; 4A
217A: nop                 ; AA
217B: nop                 ; AA
217C: ror a               ; 92
217D: cmp a, y            ; 52
217E: nop                 ; A9
217F: nop                 ; AA
2180: cmp a, y            ; 52
2181: cmp x, $AA          ; 55 AA
2183: nop                 ; AA
2184: cmp a, y            ; 52
2185: push x              ; 01
2186: nop                 ; 00
2187: nop                 ; 00
2188: nop                 ; 00
2189: nop                 ; 00
218A: nop                 ; 00
218B: nop                 ; 00
218C: nop                 ; 00
218D: nop                 ; FC
218E: nop                 ; FF
218F: cmp a, y            ; 52
2190: nop                 ; A5
2191: jmp x, y            ; 94
2192: jmp x, y            ; 94
2193: cmp a, w            ; 54
2194: jmp z, w            ; 95
2195: ror a               ; 92
2196: cmp a, y            ; 52
2197: add x, $29          ; 25 29
2199: inc z               ; 49
219A: nop                 ; A5
219B: nop                 ; AA
219C: inc w               ; 4A
219D: cmp x, $95          ; 55 95
219F: jmp x, y            ; 94
21A0: cmp a, w            ; 54
21A1: cmp a, y            ; 52
21A2: add x, $29          ; 25 29
21A4: cmp x, $55          ; 55 55
21A6: inc w               ; 4A
21A7: nop                 ; A9
21A8: jmp x, y            ; 94
21A9: jmp x, y            ; 94
21AA: inc w               ; 4A
21AB: inc z               ; 49
21AC: nop                 ; AA
21AD: cmp a, w            ; 54
21AE: add a, $00          ; 29 00
21B0: nop                 ; 00
21B1: nop                 ; 00
21B2: nop                 ; 00
21B3: nop                 ; 00
21B4: nop                 ; 00
21B5: nop                 ; FC
21B6: nop                 ; FF
21B7: nop                 ; AA
21B8: adc a, x            ; 2A
21B9: cmp x, $55          ; 55 55
21BB: add x, $A9          ; 25 A9
21BD: nop                 ; AA
21BE: inc w               ; 4A
21BF: cmp x, $A5          ; 55 A5
21C1: adc a, x            ; 2A
21C2: add a, $25          ; 29 25
21C4: cmp x, $AA          ; 55 AA
21C6: nop                 ; AA
21C7: nop                 ; AA
21C8: nop                 ; AA
21C9: nop                 ; AA
21CA: nop                 ; AA
21CB: nop                 ; AA
21CC: nop                 ; AA
21CD: inc w               ; 4A
21CE: cmp x, $4A          ; 55 4A
21D0: cmp x, $A5          ; 55 A5
21D2: adc a, x            ; 2A
21D3: jmp z, w            ; 95
21D4: add a, a            ; 24
21D5: add x, $A5          ; 25 A5
21D7: nop                 ; 00
21D8: nop                 ; 00
21D9: nop                 ; 00
21DA: nop                 ; 00
21DB: nop                 ; 00
21DC: nop                 ; 00
21DD: nop                 ; FC
21DE: nop                 ; FF
21DF: cmp x, $52          ; 55 52
21E1: nop                 ; A5
21E2: inc w               ; 4A
21E3: cmp x, $25          ; 55 25
21E5: inc z               ; 49
21E6: nop                 ; AA
21E7: cmp a, w            ; 54
21E8: store $5249, y      ; 15 49 52
21EB: nop                 ; A9
21EC: cmp a, y            ; 52
21ED: add x, $49          ; 25 49
21EF: nop                 ; A5
21F0: inc w               ; 4A
21F1: jmp z, w            ; 95
21F2: cmp a, y            ; 52
21F3: nop                 ; A5
21F4: cmp a, w            ; 54
21F5: nop                 ; AA
21F6: cmp a, y            ; 52
21F7: cmp x, $4A          ; 55 4A
21F9: nop                 ; AA
21FA: nop                 ; A4
21FB: nop                 ; A4
21FC: inc w               ; 4A
21FD: jmp z, w            ; 95
21FE: store $0001, x      ; 14 01 00
2201: nop                 ; 00
2202: nop                 ; 00
2203: nop                 ; 00
2204: nop                 ; 00
2205: nop                 ; FC
2206: nop                 ; FF
2207: jmp z, w            ; 95
2208: inc w               ; 4A
2209: jmp z, w            ; 95
220A: cmp a, w            ; 54
220B: cmp a, y            ; 52
220C: nop                 ; AA
220D: nop                 ; AA
220E: adc a, x            ; 2A
220F: add x, $A9          ; 25 A9
2211: nop                 ; A4
2212: inc w               ; 4A
2213: inc w               ; 4A
2214: nop                 ; AA
2215: nop                 ; AA
2216: nop                 ; AA
2217: cmp a, w            ; 54
2218: adc a, x            ; 2A
2219: nop                 ; A9
221A: jmp x, y            ; 94
221B: cmp a, w            ; 54
221C: nop                 ; A5
221D: cmp a, y            ; 52
221E: inc w               ; 4A
221F: nop                 ; A9
2220: cmp a, y            ; 52
2221: inc z               ; 49
2222: cmp x, $55          ; 55 55
2224: cmp a, y            ; 52
2225: cmp a, y            ; 52
2226: cmp a, y            ; 52
2227: push y              ; 02
2228: nop                 ; 00
2229: nop                 ; 00
222A: nop                 ; 00
222B: nop                 ; 00
222C: nop                 ; 00
222D: nop                 ; FC
222E: nop                 ; FF
222F: cmp a, y            ; 52
2230: add a, $A9          ; 29 A9
2232: inc w               ; 4A
2233: jmp z, w            ; 95
2234: ror a               ; 92
2235: add a, a            ; 24
2236: nop                 ; A5
2237: nop                 ; AA
2238: inc w               ; 4A
2239: jmp z, w            ; 95
223A: cmp a, w            ; 54
223B: cmp x, $29          ; 55 29
223D: nop                 ; A9
223E: nop                 ; AA
223F: nop                 ; AA
2240: cmp a, y            ; 52
2241: add x, $55          ; 25 55
2243: jmp z, w            ; 95
2244: nop                 ; AA
2245: nop                 ; AA
2246: adc a, x            ; 2A
2247: jmp z, w            ; 95
2248: nop                 ; AA
2249: adc a, x            ; 2A
224A: inc z               ; 49
224B: ror a               ; 92
224C: adc a, x            ; 2A
224D: nop                 ; A9
224E: inc w               ; 4A
224F: pop y               ; 09
2250: nop                 ; 00
2251: nop                 ; 00
2252: nop                 ; 00
2253: nop                 ; 00
2254: nop                 ; 00
2255: nop                 ; FC
2256: nop                 ; FF
2257: cmp a, w            ; 54
2258: cmp x, $25          ; 55 25
225A: add a, $A9          ; 29 A9
225C: cmp a, w            ; 54
225D: cmp x, $A9          ; 55 A9
225F: cmp a, w            ; 54
2260: adc a, x            ; 2A
2261: inc z               ; 49
2262: ror a               ; 92
2263: nop                 ; A4
2264: inc w               ; 4A
2265: add x, $49          ; 25 49
2267: jmp z, w            ; 95
2268: nop                 ; AA
2269: nop                 ; AA
226A: adc a, x            ; 2A
226B: nop                 ; A9
226C: cmp a, w            ; 54
226D: jmp z, w            ; 95
226E: nop                 ; AA
226F: cmp a, y            ; 52
2270: inc w               ; 4A
2271: cmp a, y            ; 52
2272: cmp x, $55          ; 55 55
2274: cmp a, y            ; 52
2275: add x, $29          ; 25 29
2277: add x, $00          ; 25 00
2279: nop                 ; 00
227A: nop                 ; 00
227B: nop                 ; 00
227C: nop                 ; 00
227D: nop                 ; FC
227E: nop                 ; FF
227F: jmp z, w            ; 95
2280: jmp x, y            ; 94
2281: cmp a, w            ; 54
2282: cmp x, $95          ; 55 95
2284: inc w               ; 4A
2285: ror a               ; 92
2286: jmp x, y            ; 94
2287: inc w               ; 4A
2288: nop                 ; A5
2289: cmp a, y            ; 52
228A: cmp x, $55          ; 55 55
228C: nop                 ; AA
228D: nop                 ; AA
228E: adc a, x            ; 2A
228F: nop                 ; A5
2290: nop                 ; AA
2291: jmp x, y            ; 94
2292: nop                 ; A4
2293: inc w               ; 4A
2294: jmp z, w            ; 95
2295: cmp a, w            ; 54
2296: nop                 ; A5
2297: nop                 ; AA
2298: cmp a, y            ; 52
2299: jmp z, w            ; 95
229A: add a, a            ; 24
229B: inc z               ; 49
229C: jmp z, w            ; 95
229D: jmp x, y            ; 94
229E: inc w               ; 4A
229F: load w, $0000       ; 12 00 00
22A2: nop                 ; 00
22A3: nop                 ; 00
22A4: nop                 ; 00
22A5: nop                 ; FC
22A6: nop                 ; FF
22A7: nop                 ; A9
22A8: cmp a, y            ; 52
22A9: cmp x, $52          ; 55 52
22AB: cmp a, y            ; 52
22AC: cmp a, y            ; 52
22AD: inc z               ; 49
22AE: nop                 ; A5
22AF: cmp a, w            ; 54
22B0: nop                 ; A9
22B1: inc w               ; 4A
22B2: ror a               ; 92
22B3: add a, a            ; 24
22B4: add a, $55          ; 29 55
22B6: cmp x, $55          ; 55 55
22B8: inc w               ; 4A
22B9: cmp x, $52          ; 55 52
22BB: cmp a, y            ; 52
22BC: nop                 ; A9
22BD: nop                 ; AA
22BE: jmp x, y            ; 94
22BF: nop                 ; A4
22C0: jmp x, y            ; 94
22C1: nop                 ; A4
22C2: cmp a, y            ; 52
22C3: cmp x, $52          ; 55 52
22C5: cmp a, y            ; 52
22C6: cmp a, y            ; 52
22C7: inc z               ; 49
22C8: nop                 ; 00
22C9: nop                 ; 00
22CA: nop                 ; 00
22CB: nop                 ; 00
22CC: nop                 ; 00
22CD: nop                 ; FC
22CE: nop                 ; FF
22CF: inc w               ; 4A
22D0: inc w               ; 4A
22D1: ror a               ; 92
22D2: inc w               ; 4A
22D3: nop                 ; A5
22D4: inc w               ; 4A
22D5: nop                 ; AA
22D6: jmp x, y            ; 94
22D7: cmp a, y            ; 52
22D8: adc a, x            ; 2A
22D9: nop                 ; A9
22DA: add a, a            ; 24
22DB: cmp x, $A5          ; 55 A5
22DD: add a, a            ; 24
22DE: nop                 ; A5
22DF: cmp a, w            ; 54
22E0: add a, $A5          ; 29 A5
22E2: adc a, x            ; 2A
22E3: cmp x, $4A          ; 55 4A
22E5: nop                 ; A5
22E6: nop                 ; AA
22E7: adc a, x            ; 2A
22E8: cmp x, $55          ; 55 55
22EA: inc w               ; 4A
22EB: ror a               ; 92
22EC: inc w               ; 4A
22ED: jmp z, w            ; 95
22EE: add a, a            ; 24
22EF: nop                 ; AA
22F0: push y              ; 02
22F1: nop                 ; 00
22F2: nop                 ; 00
22F3: nop                 ; 00
22F4: nop                 ; 00
22F5: nop                 ; FC
22F6: nop                 ; FF
22F7: cmp a, y            ; 52
22F8: nop                 ; A9
22F9: inc w               ; 4A
22FA: add a, $49          ; 29 49
22FC: ror a               ; 92
22FD: load w, $A529       ; 12 29 A5
2300: cmp a, y            ; 52
2301: jmp z, w            ; 95
2302: inc w               ; 4A
2303: inc z               ; 49
2304: cmp x, $55          ; 55 55
2306: cmp x, $55          ; 55 55
2308: cmp x, $A9          ; 55 A9
230A: mul z, $A5          ; 44 A5
230C: adc a, x            ; 2A
230D: jmp z, w            ; 95
230E: nop                 ; AA
230F: inc w               ; 4A
2310: add a, $49          ; 29 49
2312: add a, $A9          ; 29 A9
2314: jmp x, y            ; 94
2315: nop                 ; A4
2316: inc w               ; 4A
2317: ror w               ; 91
2318: pop x               ; 08
2319: nop                 ; 00
231A: nop                 ; 00
231B: nop                 ; 00
231C: nop                 ; 00
231D: nop                 ; FC
231E: nop                 ; FF
231F: cmp x, $4A          ; 55 4A
2321: cmp a, y            ; 52
2322: nop                 ; A5
2323: adc a, x            ; 2A
2324: nop                 ; A9
2325: nop                 ; A4
2326: inc w               ; 4A
2327: add a, $95          ; 29 95
2329: cmp a, y            ; 52
232A: cmp a, y            ; 52
232B: adc a, x            ; 2A
232C: inc z               ; 49
232D: cmp a, y            ; 52
232E: add a, $25          ; 29 25
2330: cmp x, $95          ; 55 95
2332: nop                 ; AA
2333: jmp x, y            ; 94
2334: cmp a, y            ; 52
2335: nop                 ; A9
2336: cmp a, y            ; 52
2337: cmp a, y            ; 52
2338: nop                 ; A5
2339: cmp a, y            ; 52
233A: inc w               ; 4A
233B: jmp z, w            ; 95
233C: cmp a, y            ; 52
233D: inc z               ; 49
233E: ror a               ; 92
233F: inc w               ; 4A
2340: load w, $0000       ; 12 00 00
2343: nop                 ; 00
2344: nop                 ; 00
2345: nop                 ; FC
2346: nop                 ; FF
2347: add x, $A5          ; 25 A5
2349: jmp x, y            ; 94
234A: jmp x, y            ; 94
234B: nop                 ; A4
234C: add a, a            ; 24
234D: cmp x, $52          ; 55 52
234F: inc w               ; 4A
2350: nop                 ; A9
2351: cmp a, w            ; 54
2352: inc z               ; 49
2353: cmp a, x            ; 51
2354: cmp x, $95          ; 55 95
2356: nop                 ; AA
2357: cmp a, w            ; 54
2358: inc z               ; 49
2359: cmp x, $29          ; 55 29
235B: cmp x, $AA          ; 55 AA
235D: nop                 ; AA
235E: nop                 ; AA
235F: adc a, x            ; 2A
2360: jmp z, w            ; 95
2361: jmp x, y            ; 94
2362: cmp a, y            ; 52
2363: add a, z            ; 22
2364: inc z               ; 49
2365: adc a, x            ; 2A
2366: add a, $29          ; 29 29
2368: mul w, $00          ; 45 00
236A: nop                 ; 00
236B: nop                 ; 00
236C: nop                 ; 00
236D: nop                 ; FC
236E: nop                 ; FF
236F: cmp a, w            ; 54
2370: jmp z, w            ; 95
2371: cmp a, y            ; 52
2372: adc a, x            ; 2A
2373: jmp z, w            ; 95
2374: inc w               ; 4A
2375: ror a               ; 92
2376: add a, a            ; 24
2377: nop                 ; A9
2378: inc w               ; 4A
2379: jmp z, w            ; 95
237A: adc a, x            ; 2A
237B: jmp z, w            ; 95
237C: add a, a            ; 24
237D: cmp x, $4A          ; 55 4A
237F: cmp x, $55          ; 55 55
2381: nop                 ; A5
2382: nop                 ; AA
2383: inc w               ; 4A
2384: jmp z, w            ; 95
2385: cmp a, w            ; 54
2386: adc a, x            ; 2A
2387: inc z               ; 49
2388: cmp a, y            ; 52
2389: nop                 ; A5
238A: jmp x, y            ; 94
238B: cmp a, w            ; 54
238C: adc a, x            ; 2A
238D: nop                 ; A5
238E: nop                 ; A4
238F: mul z, $92          ; 44 92
2391: nop                 ; 00
2392: nop                 ; 00
2393: nop                 ; 00
2394: nop                 ; 00
2395: nop                 ; FC
2396: nop                 ; FF
2397: inc z               ; 49
2398: cmp a, y            ; 52
2399: inc w               ; 4A
239A: inc z               ; 49
239B: inc z               ; 49
239C: cmp a, y            ; 52
239D: inc z               ; 49
239E: jmp z, w            ; 95
239F: ror a               ; 92
23A0: cmp a, w            ; 54
23A1: cmp a, y            ; 52
23A2: ror a               ; 92
23A3: nop                 ; A4
23A4: nop                 ; AA
23A5: nop                 ; A4
23A6: cmp a, y            ; 52
23A7: inc z               ; 49
23A8: cmp x, $2A          ; 55 2A
23AA: nop                 ; A5
23AB: cmp a, w            ; 54
23AC: nop                 ; A9
23AD: ror a               ; 92
23AE: cmp a, y            ; 52
23AF: cmp x, $49          ; 55 49
23B1: ror a               ; 92
23B2: cmp a, y            ; 52
23B3: nop                 ; A5
23B4: cmp a, y            ; 52
23B5: inc z               ; 49
23B6: ror a               ; 92
23B7: cmp a, y            ; 52
23B8: inc z               ; 49
23B9: push y              ; 02
23BA: nop                 ; 00
23BB: nop                 ; 00
23BC: nop                 ; 00
23BD: nop                 ; FC
23BE: nop                 ; FF
23BF: nop                 ; AA
23C0: jmp x, y            ; 94
23C1: ror a               ; 92
23C2: cmp a, y            ; 52
23C3: cmp a, y            ; 52
23C4: inc z               ; 49
23C5: nop                 ; AA
23C6: nop                 ; A4
23C7: cmp a, w            ; 54
23C8: ror a               ; 92
23C9: inc w               ; 4A
23CA: cmp x, $29          ; 55 29
23CC: inc z               ; 49
23CD: cmp x, $55          ; 55 55
23CF: adc a, x            ; 2A
23D0: inc z               ; 49
23D1: nop                 ; A9
23D2: adc a, x            ; 2A
23D3: add x, $A5          ; 25 A5
23D5: nop                 ; AA
23D6: inc w               ; 4A
23D7: add x, $95          ; 25 95
23D9: inc w               ; 4A
23DA: inc w               ; 4A
23DB: load w, $2A49       ; 12 49 2A
23DE: add x, $29          ; 25 29
23E0: ror a               ; 92
23E1: push w              ; 04
23E2: nop                 ; 00
23E3: nop                 ; 00
23E4: nop                 ; 00
23E5: nop                 ; FC
23E6: nop                 ; FF
23E7: ror a               ; 92
23E8: cmp a, y            ; 52
23E9: adc a, x            ; 2A
23EA: jmp z, w            ; 95
23EB: inc w               ; 4A
23EC: adc a, x            ; 2A
23ED: rol x               ; 89
23EE: ror a               ; 92
23EF: ror a               ; 92
23F0: nop                 ; AA
23F1: cmp a, w            ; 54
23F2: inc z               ; 49
23F3: inc w               ; 4A
23F4: adc a, x            ; 2A
23F5: inc z               ; 49
23F6: inc w               ; 4A
23F7: cmp x, $55          ; 55 55
23F9: cmp x, $AA          ; 55 AA
23FB: nop                 ; AA
23FC: adc a, x            ; 2A
23FD: nop                 ; A5
23FE: cmp a, w            ; 54
23FF: nop                 ; AA
2400: cmp a, y            ; 52
2401: ror a               ; 92
2402: add a, a            ; 24
2403: inc z               ; 49
2404: adc a, x            ; 2A
2405: inc z               ; 49
2406: inc z               ; 49
2407: mul z, $49          ; 44 49
2409: load w, $0000       ; 12 00 00
240C: nop                 ; 00
240D: nop                 ; FC
240E: nop                 ; FF
240F: cmp a, w            ; 54
2410: inc w               ; 4A
2411: inc z               ; 49
2412: inc z               ; 49
2413: ror a               ; 92
2414: mul z, $25          ; 44 25
2416: nop                 ; A9
2417: nop                 ; A4
2418: ror a               ; 92
2419: cmp a, y            ; 52
241A: nop                 ; AA
241B: cmp a, y            ; 52
241C: inc z               ; 49
241D: cmp x, $A9          ; 55 A9
241F: cmp a, y            ; 52
2420: cmp x, $4A          ; 55 4A
2422: inc z               ; 49
2423: nop                 ; A9
2424: nop                 ; AA
2425: jmp x, y            ; 94
2426: nop                 ; AA
2427: cmp a, y            ; 52
2428: inc w               ; 4A
2429: add a, $A9          ; 29 A9
242B: nop                 ; AA
242C: ror a               ; 92
242D: ror a               ; 92
242E: jmp x, y            ; 94
242F: cmp a, y            ; 52
2430: ror a               ; 92
2431: add a, a            ; 24
2432: nop                 ; 00
2433: nop                 ; 00
2434: nop                 ; 00
2435: nop                 ; FC
2436: nop                 ; FF
2437: nop                 ; A5
2438: ror a               ; 92
2439: add a, a            ; 24
243A: add x, $A9          ; 25 A9
243C: ror a               ; 92
243D: cmp a, w            ; 54
243E: inc w               ; 4A
243F: adc a, x            ; 2A
2440: nop                 ; A9
2441: inc w               ; 4A
2442: add x, $49          ; 25 49
2444: cmp a, y            ; 52
2445: ror a               ; 92
2446: adc a, x            ; 2A
2447: jmp z, w            ; 95
2448: nop                 ; A4
2449: nop                 ; AA
244A: nop                 ; AA
244B: inc w               ; 4A
244C: cmp a, y            ; 52
244D: cmp x, $49          ; 55 49
244F: jmp z, w            ; 95
2450: adc a, x            ; 2A
2451: nop                 ; A5
2452: mul z, $22          ; 44 22
2454: nop                 ; A4
2455: cmp a, w            ; 54
2456: cmp a, y            ; 52
2457: rol y               ; 8A
2458: add a, a            ; 24
2459: ror w               ; 91
245A: nop                 ; 00
245B: nop                 ; 00
245C: nop                 ; 00
245D: nop                 ; FC
245E: nop                 ; FF
245F: ror a               ; 92
2460: cmp a, w            ; 54
2461: nop                 ; AA
2462: nop                 ; A8
2463: add a, a            ; 24
2464: add a, $91          ; 29 91
2466: ror a               ; 92
2467: ror a               ; 92
2468: jmp x, y            ; 94
2469: jmp x, y            ; 94
246A: cmp a, w            ; 54
246B: jmp z, w            ; 95
246C: jmp x, y            ; 94
246D: cmp a, w            ; 54
246E: nop                 ; A5
246F: nop                 ; AA
2470: adc a, x            ; 2A
2471: nop                 ; A5
2472: nop                 ; AA
2473: cmp a, w            ; 54
2474: jmp z, w            ; 95
2475: inc w               ; 4A
2476: adc a, x            ; 2A
2477: nop                 ; A9
2478: nop                 ; A4
2479: store $4929, x      ; 14 29 49
247C: add a, $25          ; 29 25
247E: add x, $21          ; 25 21
2480: inc z               ; 49
2481: add a, a            ; 24
2482: push x              ; 01
2483: nop                 ; 00
2484: nop                 ; 00
2485: nop                 ; FC
2486: nop                 ; FF
2487: cmp a, w            ; 54
2488: ror a               ; 92
2489: ror a               ; 92
248A: inc w               ; 4A
248B: ror a               ; 92
248C: nop                 ; A4
248D: add a, a            ; 24
248E: inc z               ; 49
248F: inc w               ; 4A
2490: nop                 ; A5
2491: cmp a, y            ; 52
2492: add x, $A9          ; 25 A9
2494: cmp a, y            ; 52
2495: add x, $55          ; 25 55
2497: nop                 ; A9
2498: nop                 ; AA
2499: adc a, x            ; 2A
249A: inc z               ; 49
249B: jmp z, w            ; 95
249C: cmp a, w            ; 54
249D: cmp a, y            ; 52
249E: nop                 ; A5
249F: inc w               ; 4A
24A0: add a, $49          ; 29 49
24A2: ror a               ; 92
24A3: jmp x, y            ; 94
24A4: mul z, $48          ; 44 48
24A6: jmp x, y            ; 94
24A7: jmp x, y            ; 94
24A8: add a, a            ; 24
24A9: rol x               ; 89
24AA: push w              ; 04
24AB: nop                 ; 00
24AC: nop                 ; 00
24AD: nop                 ; FC
24AE: nop                 ; FF
24AF: add x, $25          ; 25 25
24B1: inc z               ; 49
24B2: ror a               ; 92
24B3: adc a, x            ; 2A
24B4: store $A495, y      ; 15 95 A4
24B7: add a, a            ; 24
24B8: inc z               ; 49
24B9: adc a, x            ; 2A
24BA: nop                 ; A9
24BB: inc w               ; 4A
24BC: inc w               ; 4A
24BD: cmp a, y            ; 52
24BE: add a, $25          ; 29 25
24C0: nop                 ; A5
24C1: cmp a, y            ; 52
24C2: cmp x, $52          ; 55 52
24C4: nop                 ; A5
24C5: adc a, x            ; 2A
24C6: cmp x, $52          ; 55 52
24C8: inc w               ; 4A
24C9: nop                 ; A5
24CA: add a, a            ; 24
24CB: mul w, $92          ; 45 92
24CD: ror a               ; 92
24CE: add a, z            ; 22
24CF: add x, $49          ; 25 49
24D1: add a, z            ; 22
24D2: pop y               ; 09
24D3: nop                 ; 00
24D4: nop                 ; 00
24D5: nop                 ; FC
24D6: nop                 ; FF
24D7: inc y               ; 48
24D8: nop                 ; A9
24D9: add a, a            ; 24
24DA: inc z               ; 49
24DB: mul z, $A2          ; 44 A2
24DD: inc y               ; 48
24DE: ror a               ; 92
24DF: cmp a, y            ; 52
24E0: adc a, x            ; 2A
24E1: inc z               ; 49
24E2: jmp z, w            ; 95
24E3: nop                 ; A4
24E4: add a, a            ; 24
24E5: jmp z, w            ; 95
24E6: inc w               ; 4A
24E7: cmp x, $29          ; 55 29
24E9: cmp x, $95          ; 55 95
24EB: nop                 ; AA
24EC: nop                 ; AA
24ED: cmp a, w            ; 54
24EE: inc z               ; 49
24EF: jmp z, w            ; 95
24F0: cmp a, y            ; 52
24F1: ror a               ; 92
24F2: ror a               ; 92
24F3: add w, $49          ; 28 49
24F5: nop                 ; AA
24F6: jmp x, y            ; 94
24F7: inc y               ; 48
24F8: ror a               ; 92
24F9: jmp x, y            ; 94
24FA: add a, a            ; 24
24FB: nop                 ; 00
24FC: nop                 ; 00
24FD: nop                 ; FC
24FE: nop                 ; FF
24FF: cmp a, y            ; 52
2500: load w, $54A9       ; 12 A9 54
2503: add a, $49          ; 29 49
2505: ror a               ; 92
2506: cmp a, w            ; 54
2507: jmp x, y            ; 94
2508: nop                 ; A4
2509: ror a               ; 92
250A: nop                 ; A4
250B: adc a, x            ; 2A
250C: nop                 ; A9
250D: cmp a, y            ; 52
250E: nop                 ; A9
250F: nop                 ; AA
2510: nop                 ; AA
2511: jmp x, y            ; 94
2512: nop                 ; A4
2513: inc w               ; 4A
2514: ror a               ; 92
2515: ror a               ; 92
2516: adc a, x            ; 2A
2517: inc z               ; 49
2518: adc a, x            ; 2A
2519: add a, $49          ; 29 49
251B: ror a               ; 92
251C: add a, a            ; 24
251D: pop y               ; 09
251E: nop                 ; A5
251F: ror a               ; 92
2520: add a, a            ; 24
2521: add a, y            ; 21
2522: inc z               ; 49
2523: nop                 ; 00
2524: nop                 ; 00
2525: nop                 ; FC
2526: nop                 ; FF
2527: rol y               ; 8A
2528: inc w               ; 4A
2529: mul w, $22          ; 45 22
252B: nop                 ; A5
252C: jmp x, y            ; 94
252D: inc w               ; 4A
252E: add a, z            ; 22
252F: inc z               ; 49
2530: inc z               ; 49
2531: nop                 ; AA
2532: adc a, x            ; 2A
2533: inc z               ; 49
2534: add x, $4A          ; 25 4A
2536: adc a, x            ; 2A
2537: add a, $55          ; 29 55
2539: nop                 ; A5
253A: nop                 ; AA
253B: cmp a, w            ; 54
253C: cmp x, $55          ; 55 55
253E: cmp a, y            ; 52
253F: nop                 ; AA
2540: nop                 ; A4
2541: inc w               ; 4A
2542: load w, $9249       ; 12 49 92
2545: nop                 ; A4
2546: inc y               ; 48
2547: inc w               ; 4A
2548: ror a               ; 92
2549: jmp x, y            ; 94
254A: add a, a            ; 24
254B: push x              ; 01
254C: nop                 ; 00
254D: nop                 ; FC
254E: nop                 ; FF
254F: nop                 ; A4
2550: nop                 ; A4
2551: ror z               ; 90
2552: jmp x, y            ; 94
2553: load y, $2125       ; 10 25 21
2556: inc z               ; 49
2557: add x, $95          ; 25 95
2559: add a, a            ; 24
255A: inc z               ; 49
255B: cmp x, $4A          ; 55 4A
255D: ror w               ; 91
255E: inc w               ; 4A
255F: nop                 ; A5
2560: ror a               ; 92
2561: nop                 ; AA
2562: adc a, x            ; 2A
2563: add x, $29          ; 25 29
2565: inc z               ; 49
2566: jmp z, w            ; 95
2567: ror a               ; 92
2568: inc w               ; 4A
2569: cmp a, y            ; 52
256A: inc z               ; 49
256B: ror a               ; 92
256C: add a, a            ; 24
256D: add a, $25          ; 29 25
256F: ror w               ; 91
2570: add a, a            ; 24
2571: add a, z            ; 22
2572: inc z               ; 49
2573: nop                 ; 00
2574: nop                 ; 00
2575: nop                 ; FC
2576: nop                 ; FF
2577: load w, $5509       ; 12 09 55
257A: cmp a, y            ; 52
257B: inc w               ; 4A
257C: ror z               ; 90
257D: jmp x, y            ; 94
257E: add a, a            ; 24
257F: ror a               ; 92
2580: nop                 ; A4
2581: ror a               ; 92
2582: cmp a, w            ; 54
2583: ror a               ; 92
2584: nop                 ; AA
2585: cmp a, w            ; 54
2586: cmp a, y            ; 52
2587: nop                 ; AA
2588: cmp a, w            ; 54
2589: add a, $49          ; 29 49
258B: nop                 ; A9
258C: inc w               ; 4A
258D: add x, $A9          ; 25 A9
258F: add a, a            ; 24
2590: add a, $89          ; 29 89
2592: add a, a            ; 24
2593: inc z               ; 49
2594: ror a               ; 92
2595: mul z, $92          ; 44 92
2597: add a, a            ; 24
2598: ror w               ; 91
2599: shr a, $20          ; 88 20
259B: push a              ; 05
259C: nop                 ; 00
259D: nop                 ; FC
259E: nop                 ; FF
259F: cmp a, w            ; 54
25A0: cmp a, y            ; 52
25A1: pop y               ; 09
25A2: rol x               ; 89
25A3: cmp a, y            ; 52
25A4: add x, $49          ; 25 49
25A6: ror a               ; 92
25A7: add w, $29          ; 28 29
25A9: nop                 ; A9
25AA: ror a               ; 92
25AB: cmp a, w            ; 54
25AC: inc z               ; 49
25AD: inc w               ; 4A
25AE: nop                 ; A9
25AF: adc a, x            ; 2A
25B0: cmp x, $4A          ; 55 4A
25B2: cmp x, $95          ; 55 95
25B4: cmp a, w            ; 54
25B5: nop                 ; A9
25B6: add a, a            ; 24
25B7: cmp x, $4A          ; 55 4A
25B9: cmp x, $4A          ; 55 4A
25BB: ror a               ; 92
25BC: mul z, $92          ; 44 92
25BE: add a, a            ; 24
25BF: jmp z, w            ; 95
25C0: add a, a            ; 24
25C1: add a, z            ; 22
25C2: inc w               ; 4A
25C3: load y, $FC00       ; 10 00 FC
25C6: nop                 ; FF
25C7: add a, z            ; 22
25C8: add a, $A4          ; 29 A4
25CA: add a, a            ; 24
25CB: shr x, $94          ; 84 94
25CD: add a, a            ; 24
25CE: inc z               ; 49
25CF: nop                 ; A5
25D0: mul z, $4A          ; 44 4A
25D2: inc w               ; 4A
25D3: add x, $A5          ; 25 A5
25D5: ror a               ; 92
25D6: inc w               ; 4A
25D7: inc z               ; 49
25D8: nop                 ; A5
25D9: nop                 ; AA
25DA: cmp a, y            ; 52
25DB: nop                 ; AA
25DC: ror a               ; 92
25DD: inc w               ; 4A
25DE: jmp z, w            ; 95
25DF: nop                 ; A4
25E0: cmp a, y            ; 52
25E1: ror a               ; 92
25E2: add w, $41          ; 28 41
25E4: load w, $9249       ; 12 49 92
25E7: dec a               ; 50
25E8: ror a               ; 92
25E9: jmp x, y            ; 94
25EA: add a, x            ; 20
25EB: mul w, $00          ; 45 00
25ED: nop                 ; FC
25EE: nop                 ; FF
25EF: rol x               ; 89
25F0: mul z, $29          ; 44 29
25F2: inc z               ; 49
25F3: add a, $21          ; 29 21
25F5: inc z               ; 49
25F6: cmp a, y            ; 52
25F7: inc y               ; 48
25F8: ror a               ; 92
25F9: ror a               ; 92
25FA: cmp a, y            ; 52
25FB: ror a               ; 92
25FC: jmp x, y            ; 94
25FD: cmp a, w            ; 54
25FE: cmp a, y            ; 52
25FF: nop                 ; AA
2600: jmp x, y            ; 94
2601: cmp a, y            ; 52
2602: inc w               ; 4A
2603: inc z               ; 49
2604: nop                 ; AA
2605: jmp x, y            ; 94
2606: nop                 ; A4
2607: ror a               ; 92
2608: add a, a            ; 24
2609: inc z               ; 49
260A: shr y, $94          ; 85 94
260C: inc y               ; 48
260D: add a, a            ; 24
260E: inc z               ; 49
260F: rol y               ; 8A
2610: add a, a            ; 24
2611: add a, y            ; 21
2612: inc w               ; 4A
2613: load y, $FC00       ; 10 00 FC
2616: nop                 ; FF
2617: adc a, x            ; 2A
2618: add a, $85          ; 29 85
261A: add a, a            ; 24
261B: nop                 ; A5
261C: jmp x, y            ; 94
261D: add a, a            ; 24
261E: pop y               ; 09
261F: add x, $29          ; 25 29
2621: add a, a            ; 24
2622: inc z               ; 49
2623: nop                 ; A9
2624: cmp a, y            ; 52
2625: add x, $49          ; 25 49
2627: add a, $55          ; 29 55
2629: inc w               ; 4A
262A: cmp x, $55          ; 55 55
262C: add x, $A5          ; 25 A5
262E: cmp a, y            ; 52
262F: inc w               ; 4A
2630: inc w               ; 4A
2631: add x, $29          ; 25 29
2633: pop y               ; 09
2634: add a, z            ; 22
2635: ror w               ; 91
2636: add a, a            ; 24
2637: cmp a, x            ; 51
2638: ror a               ; 92
2639: jmp x, y            ; 94
263A: add a, x            ; 20
263B: mul w, $01          ; 45 01
263D: nop                 ; FC
263E: nop                 ; FF
263F: shl z, $44          ; 81 44
2641: add w, $49          ; 28 49
2643: pop x               ; 08
2644: add a, z            ; 22
2645: inc z               ; 49
2646: cmp a, y            ; 52
2647: inc z               ; 49
2648: inc w               ; 4A
2649: inc z               ; 49
264A: adc a, x            ; 2A
264B: inc w               ; 4A
264C: inc w               ; 4A
264D: ror a               ; 92
264E: cmp a, w            ; 54
264F: inc w               ; 4A
2650: inc z               ; 49
2651: nop                 ; A9
2652: cmp a, y            ; 52
2653: inc w               ; 4A
2654: cmp a, y            ; 52
2655: cmp a, y            ; 52
2656: adc a, x            ; 2A
2657: nop                 ; A9
2658: cmp a, y            ; 52
2659: cmp a, y            ; 52
265A: cmp a, y            ; 52
265B: sec                 ; A2
265C: inc y               ; 48
265D: add a, a            ; 24
265E: inc z               ; 49
265F: rol y               ; 8A
2660: add a, a            ; 24
2661: add a, y            ; 21
2662: inc w               ; 4A
2663: load y, $FC04       ; 10 04 FC
2666: nop                 ; FF
2667: adc a, x            ; 2A
2668: add a, $45          ; 29 45
266A: ror a               ; 92
266B: sec                 ; A2
266C: shr a, $24          ; 88 24
266E: pop y               ; 09
266F: ror a               ; 92
2670: add a, x            ; 20
2671: add x, $91          ; 25 91
2673: ror a               ; 92
2674: add a, a            ; 24
2675: cmp x, $92          ; 55 92
2677: cmp a, y            ; 52
2678: nop                 ; AA
2679: adc a, x            ; 2A
267A: jmp z, w            ; 95
267B: cmp a, y            ; 52
267C: jmp z, w            ; 95
267D: inc w               ; 4A
267E: inc z               ; 49
267F: add x, $89          ; 25 89
2681: jmp x, y            ; 94
2682: mul z, $09          ; 44 09
2684: add a, z            ; 22
2685: ror w               ; 91
2686: add a, a            ; 24
2687: add a, y            ; 21
2688: ror a               ; 92
2689: jmp x, y            ; 94
268A: add a, x            ; 20
268B: mul w, $11          ; 45 11
268D: nop                 ; FC
268E: nop                 ; FF
268F: ror z               ; 90
2690: mul z, $91          ; 44 91
2692: add a, a            ; 24
2693: add w, $25          ; 28 25
2695: inc z               ; 49
2696: sec                 ; A2
2697: add a, a            ; 24
2698: jmp z, w            ; 95
2699: ror z               ; 90
269A: nop                 ; A4
269B: add a, a            ; 24
269C: nop                 ; A9
269D: ror a               ; 92
269E: inc w               ; 4A
269F: nop                 ; AA
26A0: inc w               ; 4A
26A1: inc w               ; 4A
26A2: inc z               ; 49
26A3: add a, $49          ; 29 49
26A5: cmp a, y            ; 52
26A6: ror a               ; 92
26A7: inc y               ; 48
26A8: adc a, x            ; 2A
26A9: add x, $29          ; 25 29
26AB: nop                 ; AA
26AC: inc y               ; 48
26AD: add a, a            ; 24
26AE: inc z               ; 49
26AF: jmp x, y            ; 94
26B0: add a, a            ; 24
26B1: add a, z            ; 22
26B2: pop z               ; 0A
26B3: load y, $FC04       ; 10 04 FC
26B6: nop                 ; FF
26B7: inc w               ; 4A
26B8: load w, $9244       ; 12 44 92
26BB: shl w, $90          ; 82 90
26BD: add a, a            ; 24
26BE: inc z               ; 49
26BF: ror a               ; 92
26C0: mul z, $4A          ; 44 4A
26C2: inc w               ; 4A
26C3: cmp a, y            ; 52
26C4: add x, $49          ; 25 49
26C6: add a, a            ; 24
26C7: inc z               ; 49
26C8: cmp a, y            ; 52
26C9: add a, $55          ; 29 55
26CB: inc w               ; 4A
26CC: cmp x, $49          ; 55 49
26CE: cmp x, $2A          ; 55 2A
26D0: cmp a, x            ; 51
26D1: ror a               ; 92
26D2: mul z, $21          ; 44 21
26D4: push a              ; 05
26D5: ror w               ; 91
26D6: add a, a            ; 24
26D7: inc z               ; 49
26D8: ror a               ; 92
26D9: shr a, $A0          ; 88 A0
26DB: mul x, $52          ; 42 52
26DD: nop                 ; FC
26DE: nop                 ; FF
26DF: ror a               ; 92
26E0: nop                 ; A4
26E1: ror a               ; 92
26E2: add a, a            ; 24
26E3: add a, $25          ; 29 25
26E5: pop y               ; 09
26E6: ror a               ; 92
26E7: add a, a            ; 24
26E8: ror w               ; 91
26E9: ror a               ; 92
26EA: ror a               ; 92
26EB: jmp x, y            ; 94
26EC: jmp x, y            ; 94
26ED: cmp a, w            ; 54
26EE: nop                 ; A9
26EF: cmp a, y            ; 52
26F0: add a, $A5          ; 29 A5
26F2: cmp a, y            ; 52
26F3: nop                 ; A5
26F4: add a, a            ; 24
26F5: jmp z, w            ; 95
26F6: add a, a            ; 24
26F7: mul w, $0A          ; 45 0A
26F9: inc z               ; 49
26FA: add a, $4A          ; 29 4A
26FC: dec a               ; 50
26FD: push w              ; 04
26FE: inc z               ; 49
26FF: ror a               ; 92
2700: add a, a            ; 24
2701: add a, z            ; 22
2702: pop z               ; 0A
2703: jmp x, y            ; 94
2704: shl y, $FC          ; 80 FC
2706: nop                 ; FF
2707: inc y               ; 48
2708: ror a               ; 92
2709: inc y               ; 48
270A: ror a               ; 92
270B: mul z, $94          ; 44 94
270D: nop                 ; A4
270E: inc y               ; 48
270F: ror a               ; 92
2710: add a, a            ; 24
2711: add a, a            ; 24
2712: inc y               ; 48
2713: add a, z            ; 22
2714: nop                 ; A9
2715: ror a               ; 92
2716: mul x, $4A          ; 42 4A
2718: inc w               ; 4A
2719: add a, $49          ; 29 49
271B: adc a, x            ; 2A
271C: inc z               ; 49
271D: cmp a, y            ; 52
271E: ror a               ; 92
271F: cmp a, w            ; 54
2720: nop                 ; A9
2721: add a, a            ; 24
2722: ror a               ; 92
2723: add a, a            ; 24
2724: push a              ; 05
2725: cmp a, x            ; 51
2726: add a, a            ; 24
2727: inc z               ; 49
2728: ror a               ; 92
2729: jmp x, y            ; 94
272A: int $00             ; A0 00
272C: pop z               ; 0A
272D: nop                 ; FE
272E: nop                 ; FF
272F: ror a               ; 92
2730: add a, a            ; 24
2731: ror a               ; 92
2732: add a, a            ; 24
2733: load z, $0821       ; 11 21 08
2736: ror a               ; 92
2737: add a, a            ; 24
2738: inc z               ; 49
2739: rol x               ; 89
273A: ror a               ; 92
273B: jmp x, y            ; 94
273C: mul z, $4A          ; 44 4A
273E: adc a, x            ; 2A
273F: add a, $55          ; 29 55
2741: inc w               ; 4A
2742: adc a, x            ; 2A
2743: inc z               ; 49
2744: nop                 ; AA
2745: jmp x, y            ; 94
2746: nop                 ; AA
2747: add a, z            ; 22
2748: add a, z            ; 22
2749: nop                 ; A9
274A: add a, a            ; 24
274B: inc z               ; 49
274C: nop                 ; A9
274D: push w              ; 04
274E: inc z               ; 49
274F: ror a               ; 92
2750: add a, a            ; 24
2751: add a, y            ; 21
2752: pop z               ; 0A
2753: cmp x, $A0          ; 55 A0
2755: nop                 ; FC
2756: nop                 ; FF
2757: inc y               ; 48
2758: ror a               ; 92
2759: inc y               ; 48
275A: ror a               ; 92
275B: mul z, $94          ; 44 94
275D: sec                 ; A2
275E: inc y               ; 48
275F: ror a               ; 92
2760: add a, a            ; 24
2761: cmp a, y            ; 52
2762: inc w               ; 4A
2763: cmp a, y            ; 52
2764: ror a               ; 92
2765: add a, a            ; 24
2766: inc z               ; 49
2767: ror a               ; 92
2768: nop                 ; A4
2769: cmp a, y            ; 52
276A: nop                 ; A5
276B: cmp a, y            ; 52
276C: inc z               ; 49
276D: inc z               ; 49
276E: add a, z            ; 22
276F: inc w               ; 4A
2770: inc z               ; 49
2771: mul x, $92          ; 42 92
2773: add a, a            ; 24
2774: add a, a            ; 24
2775: cmp a, y            ; 52
2776: add a, a            ; 24
2777: inc z               ; 49
2778: ror a               ; 92
2779: jmp x, y            ; 94
277A: add a, x            ; 20
277B: nop                 ; 00
277C: pop y               ; 09
277D: nop                 ; FC
277E: nop                 ; FF
277F: ror a               ; 92
2780: mul z, $12          ; 44 12
2782: push w              ; 04
2783: add a, $21          ; 29 21
2785: pop x               ; 08
2786: shl w, $24          ; 82 24
2788: rol x               ; 89
2789: shr x, $90          ; 84 90
278B: push w              ; 04
278C: add a, $A9          ; 29 A9
278E: jmp x, y            ; 94
278F: nop                 ; A4
2790: load w, $4929       ; 12 29 49
2793: adc a, x            ; 2A
2794: add x, $52          ; 25 52
2796: inc z               ; 49
2797: ror w               ; 91
2798: jmp x, y            ; 94
2799: jmp x, y            ; 94
279A: add a, a            ; 24
279B: inc z               ; 49
279C: rol x               ; 89
279D: push w              ; 04
279E: inc z               ; 49
279F: ror a               ; 92
27A0: add a, a            ; 24
27A1: add a, y            ; 21
27A2: rol y               ; 8A
27A3: inc w               ; 4A
27A4: mul a, w            ; 40
27A5: nop                 ; FE
27A6: nop                 ; FF
27A7: inc y               ; 48
27A8: load w, $5149       ; 12 49 51
27AB: shr x, $94          ; 84 94
27AD: sec                 ; A2
27AE: add w, $92          ; 28 92
27B0: add a, a            ; 24
27B1: cmp a, y            ; 52
27B2: inc w               ; 4A
27B3: cmp a, y            ; 52
27B4: nop                 ; A5
27B5: mul z, $52          ; 44 52
27B7: ror a               ; 92
27B8: cmp a, w            ; 54
27B9: nop                 ; A5
27BA: jmp x, y            ; 94
27BB: nop                 ; A4
27BC: cmp a, w            ; 54
27BD: add x, $95          ; 25 95
27BF: cmp a, w            ; 54
27C0: cmp a, y            ; 52
27C1: cmp a, y            ; 52
27C2: ror a               ; 92
27C3: add a, a            ; 24
27C4: add a, z            ; 22
27C5: cmp a, x            ; 51
27C6: add a, a            ; 24
27C7: inc z               ; 49
27C8: shl w, $84          ; 82 84
27CA: add a, x            ; 20
27CB: add a, x            ; 20
27CC: load w, $FFFC       ; 12 FC FF
27CF: load w, $1244       ; 12 44 12
27D2: push w              ; 04
27D3: add a, $21          ; 29 21
27D5: pop x               ; 08
27D6: shl w, $04          ; 82 04
27D8: rol x               ; 89
27D9: store $9491, x      ; 14 91 94
27DC: load y, $2529       ; 10 29 25
27DF: inc z               ; 49
27E0: ror a               ; 92
27E1: store $92A5, x      ; 14 A5 92
27E4: ror a               ; 92
27E5: jmp x, y            ; 94
27E6: add a, a            ; 24
27E7: rol x               ; 89
27E8: shr x, $84          ; 84 84
27EA: add a, a            ; 24
27EB: rol x               ; 89
27EC: inc y               ; 48
27ED: store $9249, x      ; 14 49 92
27F0: add w, $29          ; 28 29
27F2: rol y               ; 8A
27F3: rol y               ; 8A
27F4: push w              ; 04
27F5: nop                 ; FD
27F6: nop                 ; FF
27F7: inc y               ; 48
27F8: load z, $5149       ; 11 49 51
27FB: shl y, $84          ; 80 84
27FD: sec                 ; A2
27FE: add w, $52          ; 28 52
2800: add a, a            ; 24
2801: mul x, $44          ; 42 44
2803: add a, z            ; 22
2804: inc w               ; 4A
2805: ror a               ; 92
2806: jmp x, y            ; 94
2807: add a, a            ; 24
2808: add x, $A9          ; 25 A9
280A: jmp x, y            ; 94
280B: cmp a, w            ; 54
280C: inc w               ; 4A
280D: cmp a, y            ; 52
280E: cmp a, y            ; 52
280F: cmp a, y            ; 52
2810: cmp a, y            ; 52
2811: cmp a, y            ; 52
2812: ror a               ; 92
2813: add a, a            ; 24
2814: add x, $41          ; 25 41
2816: add a, a            ; 24
2817: pop y               ; 09
2818: shl w, $80          ; 82 80
281A: add a, x            ; 20
281B: add a, x            ; 20
281C: add a, x            ; 20
281D: nop                 ; FC
281E: nop                 ; FF
281F: load w, $1244       ; 12 44 12
2822: shr x, $2A          ; 84 2A
2824: add a, $08          ; 29 08
2826: shl w, $04          ; 82 04
2828: rol x               ; 89
2829: jmp x, y            ; 94
282A: ror a               ; 92
282B: shr a, $52          ; 88 52
282D: inc z               ; 49
282E: add a, z            ; 22
282F: inc z               ; 49
2830: nop                 ; A9
2831: ror a               ; 92
2832: cmp a, y            ; 52
2833: rol y               ; 8A
2834: cmp a, y            ; 52
2835: add x, $89          ; 25 89
2837: rol y               ; 8A
2838: jmp x, y            ; 94
2839: jmp x, y            ; 94
283A: add a, a            ; 24
283B: inc z               ; 49
283C: inc y               ; 48
283D: store $A241, x      ; 14 41 A2
2840: add w, $2A          ; 28 2A
2842: rol y               ; 8A
2843: pop z               ; 0A
2844: pop y               ; 09
2845: nop                 ; FD
2846: nop                 ; FF
2847: inc y               ; 48
2848: load z, $5141       ; 11 41 51
284B: shl y, $80          ; 80 80
284D: sec                 ; A2
284E: add w, $52          ; 28 52
2850: add a, a            ; 24
2851: mul x, $48          ; 42 48
2853: cmp a, y            ; 52
2854: shr x, $24          ; 84 24
2856: inc z               ; 49
2857: add x, $4A          ; 25 4A
2859: inc w               ; 4A
285A: inc w               ; 4A
285B: nop                 ; A9
285C: add a, a            ; 24
285D: inc z               ; 49
285E: cmp a, y            ; 52
285F: add a, a            ; 24
2860: mul a, a            ; 41
2861: mul x, $92          ; 42 92
2863: add a, a            ; 24
2864: add x, $A1          ; 25 A1
2866: store $8209, x      ; 14 09 82
2869: shl y, $20          ; 80 20
286B: add a, x            ; 20
286C: mul z, $FC          ; 44 FC
286E: nop                 ; FF
286F: load w, $1444       ; 12 44 14
2872: push w              ; 04
2873: adc a, x            ; 2A
2874: adc a, x            ; 2A
2875: pop x               ; 08
2876: shl w, $04          ; 82 04
2878: rol x               ; 89
2879: jmp x, y            ; 94
287A: ror a               ; 92
287B: add a, a            ; 24
287C: add a, $92          ; 29 92
287E: jmp x, y            ; 94
287F: ror z               ; 90
2880: add a, z            ; 22
2881: nop                 ; A9
2882: add a, a            ; 24
2883: add x, $49          ; 25 49
2885: ror a               ; 92
2886: add a, a            ; 24
2887: nop                 ; A9
2888: jmp x, y            ; 94
2889: jmp x, y            ; 94
288A: add a, a            ; 24
288B: rol x               ; 89
288C: inc y               ; 48
288D: pop z               ; 0A
288E: mul a, a            ; 41
288F: sec                 ; A2
2890: add w, $2A          ; 28 2A
2892: rol y               ; 8A
2893: mul z, $01          ; 44 01
2895: nop                 ; FC
2896: nop                 ; FF
2897: inc y               ; 48
2898: load z, $5141       ; 11 41 51
289B: shl z, $80          ; 81 80
289D: sec                 ; A2
289E: add w, $50          ; 28 50
28A0: add a, a            ; 24
28A1: mul x, $48          ; 42 48
28A3: ror a               ; 92
28A4: nop                 ; A4
28A5: add a, a            ; 24
28A6: cmp a, x            ; 51
28A7: inc w               ; 4A
28A8: jmp x, y            ; 94
28A9: add a, a            ; 24
28AA: nop                 ; A9
28AB: jmp x, y            ; 94
28AC: adc a, x            ; 2A
28AD: inc z               ; 49
28AE: ror a               ; 92
28AF: shr x, $52          ; 84 52
28B1: add a, z            ; 22
28B2: ror a               ; 92
28B3: add a, a            ; 24
28B4: add a, z            ; 22
28B5: resume              ; A1
28B6: store $8209, x      ; 14 09 82
28B9: shl y, $20          ; 80 20
28BB: load w, $FD28       ; 12 28 FD
28BE: nop                 ; FF
28BF: load w, $1444       ; 12 44 14
28C2: push w              ; 04
28C3: add w, $2A          ; 28 2A
28C5: pop x               ; 08
28C6: mul x, $05          ; 42 05
28C8: rol x               ; 89
28C9: ror z               ; 90
28CA: ror a               ; 92
28CB: add a, a            ; 24
28CC: pop y               ; 09
28CD: inc z               ; 49
28CE: rol y               ; 8A
28CF: add a, a            ; 24
28D0: nop                 ; A5
28D1: ror a               ; 92
28D2: inc w               ; 4A
28D3: sec                 ; A2
28D4: mul z, $2A          ; 44 2A
28D6: inc z               ; 49
28D7: cmp a, y            ; 52
28D8: shr x, $88          ; 84 88
28DA: add a, a            ; 24
28DB: rol x               ; 89
28DC: pop x               ; 08
28DD: pop z               ; 0A
28DE: mul a, a            ; 41
28DF: sec                 ; A2
28E0: add w, $2A          ; 28 2A
28E2: rol x               ; 89
28E3: mul a, w            ; 40
28E4: push y              ; 02
28E5: nop                 ; FC
28E6: nop                 ; FF
28E7: inc y               ; 48
28E8: load z, $5141       ; 11 41 51
28EB: shr y, $80          ; 85 80
28ED: sec                 ; A2
28EE: pop x               ; 08
28EF: dec a               ; 50
28F0: add a, x            ; 20
28F1: pop z               ; 0A
28F2: inc y               ; 48
28F3: ror a               ; 92
28F4: nop                 ; A4
28F5: add a, a            ; 24
28F6: cmp a, x            ; 51
28F7: ror a               ; 92
28F8: load y, $9249       ; 10 49 92
28FB: adc a, x            ; 2A
28FC: add a, $91          ; 29 91
28FE: add a, a            ; 24
28FF: pop y               ; 09
2900: add a, $52          ; 29 52
2902: ror a               ; 92
2903: add a, a            ; 24
2904: nop                 ; A5
2905: add a, x            ; 20
2906: store $8209, x      ; 14 09 82
2909: nop                 ; 00
290A: mul z, $04          ; 44 04
290C: ror w               ; 91
290D: nop                 ; FC
290E: nop                 ; FF
290F: nop                 ; 00
2910: store $6C66, a      ; 18 66 6C
2913: store $3846, a      ; 18 46 38
2916: store $0C30, a      ; 18 30 0C
2919: sub a, z            ; 36
291A: nop                 ; 00
291B: nop                 ; 00
291C: nop                 ; 00
291D: nop                 ; 00
291E: mul a, w            ; 40
291F: sub a, $18          ; 3C 18
2921: sub a, $3C          ; 3C 3C
2923: sub x, $7E          ; 38 7E
2925: sub a, $7E          ; 3C 7E
2927: sub a, $3C          ; 3C 3C
2929: nop                 ; 00
292A: nop                 ; 00
292B: and a, y            ; 60
292C: nop                 ; 00
292D: pop a               ; 0C
292E: sub a, $3C          ; 3C 3C
2930: sub a, $3E          ; 3C 3E
2932: sub a, $3E          ; 3C 3E
2934: xor a, $7E          ; 7E 7E
2936: sub a, $66          ; 3C 66
2938: sub a, $60          ; 3C 60
293A: and w, $06          ; 66 06
293C: and x, $66          ; 63 66
293E: sub a, $3E          ; 3C 3E
2940: sub a, $3E          ; 3C 3E
2942: sub a, $7E          ; 3C 7E
2944: and w, $66          ; 66 66
2946: and x, $66          ; 63 66
2948: and w, $7E          ; 66 7E
294A: sub a, $02          ; 3C 02
294C: sub a, $10          ; 3C 10
294E: nop                 ; 00
294F: store $0600, a      ; 18 00 06
2952: nop                 ; 00
2953: and a, y            ; 60
2954: nop                 ; 00
2955: or a, $00           ; 70 00
2957: push.a              ; 06
2958: store $0660, a      ; 18 60 06
295B: sub x, $00          ; 38 00
295D: nop                 ; 00
295E: nop                 ; 00
295F: nop                 ; 00
2960: nop                 ; 00
2961: nop                 ; 00
2962: nop                 ; 00
2963: store $0000, a      ; 18 00 00
2966: nop                 ; 00
2967: nop                 ; 00
2968: nop                 ; 00
2969: nop                 ; 00
296A: nop                 ; 00
296B: nop                 ; 00
296C: nop                 ; 00
296D: nop                 ; 00
296E: nop                 ; 00
296F: nop                 ; 00
2970: store $FE66, a      ; 18 66 FE
2973: xor z, $66          ; 7C 66
2975: or x, $18           ; 6C 18
2977: store $1C18, a      ; 18 18 1C
297A: load y, $0000       ; 10 00 00
297D: nop                 ; 00
297E: and a, y            ; 60
297F: and w, $1C          ; 66 1C
2981: and w, $66          ; 66 66
2983: sub a, $06          ; 3C 06
2985: and w, $60          ; 66 60
2987: and w, $66          ; 66 66
2989: store $3018, a      ; 18 18 30
298C: nop                 ; 00
298D: store $4262, a      ; 18 62 42
2990: and w, $66          ; 66 66
2992: and w, $66          ; 66 66
2994: push.a              ; 06
2995: push.a              ; 06
2996: and w, $66          ; 66 66
2998: store $3660, a      ; 18 60 36
299B: push.a              ; 06
299C: xor a, y            ; 77
299D: and w, $66          ; 66 66
299F: and w, $66          ; 66 66
29A1: and w, $66          ; 66 66
29A3: store $6666, a      ; 18 66 66
29A6: and x, $66          ; 63 66
29A8: and w, $60          ; 66 60
29AA: pop a               ; 0C
29AB: push.a              ; 06
29AC: adc y, $38          ; 30 38
29AE: nop                 ; 00
29AF: adc y, $00          ; 30 00
29B1: push.a              ; 06
29B2: nop                 ; 00
29B3: and a, y            ; 60
29B4: nop                 ; 00
29B5: store $0600, a      ; 18 00 06
29B8: nop                 ; 00
29B9: nop                 ; 00
29BA: push.a              ; 06
29BB: adc y, $00          ; 30 00
29BD: nop                 ; 00
29BE: nop                 ; 00
29BF: nop                 ; 00
29C0: nop                 ; 00
29C1: nop                 ; 00
29C2: nop                 ; 00
29C3: store $0000, a      ; 18 00 00
29C6: nop                 ; 00
29C7: nop                 ; 00
29C8: nop                 ; 00
29C9: nop                 ; 00
29CA: nop                 ; 00
29CB: nop                 ; 00
29CC: nop                 ; 00
29CD: nop                 ; 00
29CE: nop                 ; 00
29CF: nop                 ; 00
29D0: store $6C66, a      ; 18 66 6C
29D3: push.a              ; 06
29D4: adc y, $6C          ; 30 6C
29D6: store $300C, a      ; 18 0C 30
29D9: shl x, $10          ; 7F 10
29DB: nop                 ; 00
29DC: nop                 ; 00
29DD: nop                 ; 00
29DE: adc y, $66          ; 30 66
29E0: store $6060, a      ; 18 60 60
29E3: sub a, z            ; 36
29E4: mul a, y            ; 3E
29E5: push.a              ; 06
29E6: adc y, $66          ; 30 66
29E8: and w, $18          ; 66 18
29EA: store $7E18, a      ; 18 18 7E
29ED: adc y, $60          ; 30 60
29EF: jmp $6666, w        ; 99 66 66
29F2: push.a              ; 06
29F3: and w, $06          ; 66 06
29F5: push.a              ; 06
29F6: push.a              ; 06
29F7: and w, $18          ; 66 18
29F9: and a, y            ; 60
29FA: set w, $06          ; 1E 06
29FC: shl x, $6E          ; 7F 6E
29FE: and w, $66          ; 66 66
2A00: and w, $66          ; 66 66
2A02: push.a              ; 06
2A03: store $6666, a      ; 18 66 66
2A06: and x, $3C          ; 63 3C
2A08: and w, $30          ; 66 30
2A0A: pop a               ; 0C
2A0B: pop a               ; 0C
2A0C: adc y, $6C          ; 30 6C
2A0E: nop                 ; 00
2A0F: nop                 ; 00
2A10: sub a, $3E          ; 3C 3E
2A12: sub a, $7C          ; 3C 7C
2A14: sub a, $3C          ; 3C 3C
2A16: xor z, $3E          ; 7C 3E
2A18: set y, $70          ; 1C 70
2A1A: and w, $30          ; 66 30
2A1C: sub a, w            ; 37
2A1D: mul a, y            ; 3E
2A1E: sub a, $3E          ; 3C 3E
2A20: xor z, $76          ; 7C 76
2A22: xor z, $3C          ; 7C 3C
2A24: and w, $66          ; 66 66
2A26: or a, w             ; 6B
2A27: and w, $66          ; 66 66
2A29: xor a, $00          ; 7E 00
2A2B: nop                 ; 00
2A2C: nop                 ; 00
2A2D: nop                 ; 00
2A2E: nop                 ; 00
2A2F: nop                 ; 00
2A30: store $6C00, a      ; 18 00 6C
2A33: sub a, $18          ; 3C 18
2A35: sub x, $00          ; 38 00
2A37: pop a               ; 0C
2A38: adc y, $1C          ; 30 1C
2A3A: xor z, $00          ; 7C 00
2A3C: xor a, $00          ; 7E 00
2A3E: store $1866, a      ; 18 66 18
2A41: sub x, $38          ; 38 38
2A43: sub a, z            ; 36
2A44: and a, y            ; 60
2A45: mul a, y            ; 3E
2A46: store $7C3C, a      ; 18 3C 7C
2A49: nop                 ; 00
2A4A: nop                 ; 00
2A4B: pop a               ; 0C
2A4C: nop                 ; 00
2A4D: and a, y            ; 60
2A4E: sub x, $A5          ; 38 A5
2A50: xor a, $3E          ; 7E 3E
2A52: push.a              ; 06
2A53: and w, $1E          ; 66 1E
2A55: set w, $76          ; 1E 76
2A57: xor a, $18          ; 7E 18
2A59: and a, y            ; 60
2A5A: pop.f               ; 0E
2A5B: push.a              ; 06
2A5C: or a, w             ; 6B
2A5D: xor a, $66          ; 7E 66
2A5F: mul a, y            ; 3E
2A60: and w, $3E          ; 66 3E
2A62: sub a, $18          ; 3C 18
2A64: and w, $66          ; 66 66
2A66: or a, w             ; 6B
2A67: store $183C, a      ; 18 3C 18
2A6A: pop a               ; 0C
2A6B: store $4430, a      ; 18 30 44
2A6E: nop                 ; 00
2A6F: nop                 ; 00
2A70: and a, y            ; 60
2A71: and w, $66          ; 66 66
2A73: and w, $66          ; 66 66
2A75: store $6666, a      ; 18 66 66
2A78: store $3660, a      ; 18 60 36
2A7B: adc y, $7F          ; 30 7F
2A7D: and w, $66          ; 66 66
2A7F: and w, $66          ; 66 66
2A81: pop.f               ; 0E
2A82: push.a              ; 06
2A83: store $6666, a      ; 18 66 66
2A86: or a, w             ; 6B
2A87: sub a, $66          ; 3C 66
2A89: adc y, $00          ; 30 00
2A8B: nop                 ; 00
2A8C: nop                 ; 00
2A8D: nop                 ; 00
2A8E: nop                 ; 00
2A8F: nop                 ; 00
2A90: store $6C00, a      ; 18 00 6C
2A93: and a, y            ; 60
2A94: pop a               ; 0C
2A95: nop                 ; EC
2A96: nop                 ; 00
2A97: pop a               ; 0C
2A98: adc y, $36          ; 30 36
2A9A: load y, $0018       ; 10 18 00
2A9D: nop                 ; 00
2A9E: pop a               ; 0C
2A9F: and w, $18          ; 66 18
2AA1: pop a               ; 0C
2AA2: and a, y            ; 60
2AA3: xor a, $60          ; 7E 60
2AA5: and w, $18          ; 66 18
2AA7: and w, $60          ; 66 60
2AA9: store $1818, a      ; 18 18 18
2AAC: xor a, $30          ; 7E 30
2AAE: store $66A5, a      ; 18 A5 66
2AB1: and w, $06          ; 66 06
2AB3: and w, $06          ; 66 06
2AB5: push.a              ; 06
2AB6: and w, $66          ; 66 66
2AB8: store $1E60, a      ; 18 60 1E
2ABB: push.a              ; 06
2ABC: and x, $76          ; 63 76
2ABE: and w, $06          ; 66 06
2AC0: and w, $1E          ; 66 1E
2AC2: and a, y            ; 60
2AC3: store $6666, a      ; 18 66 66
2AC6: shl x, $3C          ; 7F 3C
2AC8: store $0C0C, a      ; 18 0C 0C
2ACB: adc y, $30          ; 30 30
2ACD: nop                 ; 00
2ACE: nop                 ; 00
2ACF: nop                 ; 00
2AD0: xor z, $66          ; 7C 66
2AD2: push.a              ; 06
2AD3: and w, $3E          ; 66 3E
2AD5: store $6666, a      ; 18 66 66
2AD8: store $1E60, a      ; 18 60 1E
2ADB: adc y, $6B          ; 30 6B
2ADD: and w, $66          ; 66 66
2ADF: and w, $66          ; 66 66
2AE1: push.a              ; 06
2AE2: sub a, $18          ; 3C 18
2AE4: and w, $66          ; 66 66
2AE6: shl x, $18          ; 7F 18
2AE8: and w, $18          ; 66 18
2AEA: nop                 ; 00
2AEB: nop                 ; 00
2AEC: nop                 ; 00
2AED: nop                 ; 00
2AEE: nop                 ; 00
2AEF: nop                 ; 00
2AF0: nop                 ; 00
2AF1: nop                 ; 00
2AF2: nop                 ; FE
2AF3: mul a, y            ; 3E
2AF4: and w, $66          ; 66 66
2AF6: nop                 ; 00
2AF7: store $0018, a      ; 18 18 00
2AFA: load y, $0018       ; 10 18 00
2AFD: store $6606, a      ; 18 06 66
2B00: store $6606, a      ; 18 06 66
2B03: adc y, $66          ; 30 66
2B05: and w, $18          ; 66 18
2B07: and w, $66          ; 66 66
2B09: store $3018, a      ; 18 18 30
2B0C: nop                 ; 00
2B0D: store $7900, a      ; 18 00 79
2B10: and w, $66          ; 66 66
2B12: and w, $66          ; 66 66
2B14: push.a              ; 06
2B15: push.a              ; 06
2B16: and w, $66          ; 66 66
2B18: store $3666, a      ; 18 66 36
2B1B: push.a              ; 06
2B1C: and x, $66          ; 63 66
2B1E: and w, $06          ; 66 06
2B20: and w, $36          ; 66 36
2B22: and w, $18          ; 66 18
2B24: and w, $3C          ; 66 3C
2B26: xor a, y            ; 77
2B27: and w, $18          ; 66 18
2B29: push.a              ; 06
2B2A: pop a               ; 0C
2B2B: and a, y            ; 60
2B2C: adc y, $00          ; 30 00
2B2E: nop                 ; 00
2B2F: nop                 ; 00
2B30: and w, $66          ; 66 66
2B32: and w, $66          ; 66 66
2B34: push.a              ; 06
2B35: store $667C, a      ; 18 7C 66
2B38: store $3660, a      ; 18 60 36
2B3B: adc y, $6B          ; 30 6B
2B3D: and w, $66          ; 66 66
2B3F: and w, $66          ; 66 66
2B41: push.a              ; 06
2B42: and a, y            ; 60
2B43: store $3C66, a      ; 18 66 3C
2B46: mul a, y            ; 3E
2B47: sub a, $7C          ; 3C 7C
2B49: pop a               ; 0C
2B4A: nop                 ; 00
2B4B: nop                 ; 00
2B4C: nop                 ; 00
2B4D: nop                 ; 00
2B4E: nop                 ; 00
2B4F: nop                 ; 00
2B50: store $6C00, a      ; 18 00 6C
2B53: store $FC62, a      ; 18 62 FC
2B56: nop                 ; 00
2B57: adc y, $0C          ; 30 0C
2B59: nop                 ; 00
2B5A: nop                 ; 00
2B5B: pop a               ; 0C
2B5C: nop                 ; 00
2B5D: store $3C02, a      ; 18 02 3C
2B60: xor a, $7E          ; 7E 7E
2B62: sub a, $78          ; 3C 78
2B64: sub a, $3C          ; 3C 3C
2B66: store $3C3C, a      ; 18 3C 3C
2B69: nop                 ; 00
2B6A: pop x               ; 08
2B6B: and a, y            ; 60
2B6C: nop                 ; 00
2B6D: pop a               ; 0C
2B6E: store $6602, a      ; 18 02 66
2B71: mul a, y            ; 3E
2B72: sub a, $3E          ; 3C 3E
2B74: xor a, $06          ; 7E 06
2B76: sub a, $66          ; 3C 66
2B78: sub a, $3C          ; 3C 3C
2B7A: and w, $7E          ; 66 7E
2B7C: and x, $66          ; 63 66
2B7E: sub a, $06          ; 3C 06
2B80: sub a, $66          ; 3C 66
2B82: sub a, $18          ; 3C 18
2B84: sub a, $18          ; 3C 18
2B86: and x, $66          ; 63 66
2B88: store $3C7E, a      ; 18 7E 3C
2B8B: mul a, w            ; 40
2B8C: sub a, $00          ; 3C 00
2B8E: nop                 ; 00
2B8F: nop                 ; 00
2B90: xor z, $3E          ; 7C 3E
2B92: sub a, $7C          ; 3C 7C
2B94: xor z, $18          ; 7C 18
2B96: and a, y            ; 60
2B97: and w, $3C          ; 66 3C
2B99: and w, $66          ; 66 66
2B9B: xor a, z            ; 78
2B9C: or a, w             ; 6B
2B9D: and w, $3C          ; 66 3C
2B9F: mul a, y            ; 3E
2BA0: xor z, $06          ; 7C 06
2BA2: mul a, y            ; 3E
2BA3: adc y, $7C          ; 30 7C
2BA5: store $6636, a      ; 18 36 66
2BA8: and a, y            ; 60
2BA9: xor a, $00          ; 7E 00
2BAB: nop                 ; 00
2BAC: nop                 ; 00
2BAD: nop                 ; 00
2BAE: nop                 ; 00
2BAF: nop                 ; 00
2BB0: nop                 ; 00
2BB1: nop                 ; 00
2BB2: nop                 ; 00
2BB3: nop                 ; 00
2BB4: nop                 ; 00
2BB5: nop                 ; 00
2BB6: nop                 ; 00
2BB7: nop                 ; 00
2BB8: nop                 ; 00
2BB9: nop                 ; 00
2BBA: nop                 ; 00
2BBB: nop                 ; 00
2BBC: nop                 ; 00
2BBD: nop                 ; 00
2BBE: nop                 ; 00
2BBF: nop                 ; 00
2BC0: nop                 ; 00
2BC1: nop                 ; 00
2BC2: nop                 ; 00
2BC3: nop                 ; 00
2BC4: nop                 ; 00
2BC5: nop                 ; 00
2BC6: nop                 ; 00
2BC7: nop                 ; 00
2BC8: nop                 ; 00
2BC9: nop                 ; 00
2BCA: nop                 ; 00
2BCB: nop                 ; 00
2BCC: nop                 ; 00
2BCD: nop                 ; 00
2BCE: nop                 ; 00
2BCF: sub a, $00          ; 3C 00
2BD1: nop                 ; 00
2BD2: nop                 ; 00
2BD3: nop                 ; 00
2BD4: nop                 ; 00
2BD5: nop                 ; 00
2BD6: nop                 ; 00
2BD7: nop                 ; 00
2BD8: nop                 ; 00
2BD9: nop                 ; 00
2BDA: nop                 ; 00
2BDB: nop                 ; 00
2BDC: nop                 ; 00
2BDD: nop                 ; 00
2BDE: nop                 ; 00
2BDF: nop                 ; 00
2BE0: and a, y            ; 60
2BE1: nop                 ; 00
2BE2: nop                 ; 00
2BE3: nop                 ; 00
2BE4: nop                 ; 00
2BE5: nop                 ; 00
2BE6: nop                 ; 00
2BE7: nop                 ; 00
2BE8: nop                 ; 00
2BE9: nop                 ; 00
2BEA: nop                 ; 00
2BEB: nop                 ; 00
2BEC: nop                 ; 00
2BED: nop                 ; 00
2BEE: nop                 ; FF
2BEF: nop                 ; 00
2BF0: nop                 ; 00
2BF1: nop                 ; 00
2BF2: nop                 ; 00
2BF3: nop                 ; 00
2BF4: nop                 ; 00
2BF5: nop                 ; 00
2BF6: sub a, $00          ; 3C 00
2BF8: nop                 ; 00
2BF9: sub a, $00          ; 3C 00
2BFB: nop                 ; 00
2BFC: nop                 ; 00
2BFD: nop                 ; 00
2BFE: nop                 ; 00
2BFF: push.a              ; 06
2C00: and a, y            ; 60
2C01: nop                 ; 00
2C02: nop                 ; 00
2C03: nop                 ; 00
2C04: nop                 ; 00
2C05: nop                 ; 00
2C06: nop                 ; 00
2C07: nop                 ; 00
2C08: sub a, $00          ; 3C 00
2C0A: nop                 ; 00
2C0B: nop                 ; 00
2C0C: nop                 ; 00
2C0D: nop                 ; 00
2C0E: nop                 ; 00
