0000: store $1300, x      ; 10 00 13
0003: nop                 ; 00
0004: return              ; 16
0005: nop                 ; 00
0006: nop                 ; 00
0007: nop                 ; 00
0008: nop                 ; 00
0009: nop                 ; 00
000A: nop                 ; 00
000B: nop                 ; 00
000C: nop                 ; 00
000D: nop                 ; 00
000E: nop                 ; 00
000F: nop                 ; 00
0010: jmp $0128           ; E9 28 01
0013: push z              ; 03
0014: pop z               ; 08
0015: resume              ; F7 00
0017: resume              ; F7 14
0019: store $1B40, x      ; 10 40 1B
001C: nop                 ; 00
001D: store $4012, a      ; 14 12 40
0020: set a, $80          ; 1B 80
0022: store $4013, a      ; 14 13 40
0025: set a, $00          ; 1B 00
0027: store $4014, a      ; 14 14 40
002A: set a, $28          ; 1B 28
002C: store $4015, a      ; 14 15 40
002F: int $01             ; F6 01
0031: set a, $FF          ; 1B FF
0033: call $0120          ; 15 20 01
0036: return              ; 16
0037: store $4010, a      ; 14 10 40
003A: set a, $00          ; 1B 00
003C: store $4012, a      ; 14 12 40
003F: set a, $A8          ; 1B A8
0041: store $4013, a      ; 14 13 40
0044: set a, $00          ; 1B 00
0046: store $4014, a      ; 14 14 40
0049: set a, $28          ; 1B 28
004B: store $4015, a      ; 14 15 40
004E: int $01             ; F6 01
0050: set a, $FF          ; 1B FF
0052: call $0120          ; 15 20 01
0055: return              ; 16
0056: store $4010, a      ; 14 10 40
0059: set a, $00          ; 1B 00
005B: store $4012, a      ; 14 12 40
005E: set a, $D0          ; 1B D0
0060: store $4013, a      ; 14 13 40
0063: set a, $00          ; 1B 00
0065: store $4014, a      ; 14 14 40
0068: set a, $28          ; 1B 28
006A: store $4015, a      ; 14 15 40
006D: int $01             ; F6 01
006F: set a, $FF          ; 1B FF
0071: call $0120          ; 15 20 01
0074: return              ; 16
0075: store $4010, a      ; 14 10 40
0078: set a, $00          ; 1B 00
007A: store $4012, a      ; 14 12 40
007D: set a, $F8          ; 1B F8
007F: store $4013, a      ; 14 13 40
0082: set a, $00          ; 1B 00
0084: store $4014, a      ; 14 14 40
0087: set a, $28          ; 1B 28
0089: store $4015, a      ; 14 15 40
008C: int $01             ; F6 01
008E: set a, $FF          ; 1B FF
0090: call $0120          ; 15 20 01
0093: return              ; 16
0094: set a, $00          ; 1B 00
0096: store $4012, a      ; 14 12 40
0099: set a, $80          ; 1B 80
009B: store $4013, a      ; 14 13 40
009E: store $4014, x      ; 10 14 40
00A1: store $4015, y      ; 11 15 40
00A4: store $4016, z      ; 12 16 40
00A7: store $4017, w      ; 13 17 40
00AA: int $03             ; F6 03
00AC: set a, $FF          ; 1B FF
00AE: call $0120          ; 15 20 01
00B1: set a, $FF          ; 1B FF
00B3: call $0120          ; 15 20 01
00B6: return              ; 16
00B7: set a, $00          ; 1B 00
00B9: store $4012, a      ; 14 12 40
00BC: set a, $A8          ; 1B A8
00BE: store $4013, a      ; 14 13 40
00C1: store $4014, x      ; 10 14 40
00C4: store $4015, y      ; 11 15 40
00C7: store $4016, z      ; 12 16 40
00CA: store $4017, w      ; 13 17 40
00CD: int $03             ; F6 03
00CF: set a, $FF          ; 1B FF
00D1: call $0120          ; 15 20 01
00D4: set a, $FF          ; 1B FF
00D6: call $0120          ; 15 20 01
00D9: return              ; 16
00DA: set a, $00          ; 1B 00
00DC: store $4012, a      ; 14 12 40
00DF: set a, $D0          ; 1B D0
00E1: store $4013, a      ; 14 13 40
00E4: store $4014, x      ; 10 14 40
00E7: store $4015, y      ; 11 15 40
00EA: store $4016, z      ; 12 16 40
00ED: store $4017, w      ; 13 17 40
00F0: int $03             ; F6 03
00F2: set a, $FF          ; 1B FF
00F4: call $0120          ; 15 20 01
00F7: set a, $FF          ; 1B FF
00F9: call $0120          ; 15 20 01
00FC: return              ; 16
00FD: set a, $00          ; 1B 00
00FF: store $4012, a      ; 14 12 40
0102: set a, $F8          ; 1B F8
0104: store $4013, a      ; 14 13 40
0107: store $4014, x      ; 10 14 40
010A: store $4015, y      ; 11 15 40
010D: store $4016, z      ; 12 16 40
0110: store $4017, w      ; 13 17 40
0113: int $03             ; F6 03
0115: set a, $FF          ; 1B FF
0117: call $0120          ; 15 20 01
011A: set a, $FF          ; 1B FF
011C: call $0120          ; 15 20 01
011F: return              ; 16
0120: jmp.z $0127         ; F5 27 01
0123: dec a               ; 70
0124: jmp $0120           ; E9 20 01
0127: return              ; 16
0128: set a, $04          ; 1B 04
012A: store $5000, a      ; 14 00 50
012D: push a              ; 05
012E: set a, $55          ; 1B 55
0130: store $4010, a      ; 14 10 40
0133: set a, $00          ; 1B 00
0135: store $4012, a      ; 14 12 40
0138: set a, $80          ; 1B 80
013A: store $4013, a      ; 14 13 40
013D: set a, $00          ; 1B 00
013F: store $4014, a      ; 14 14 40
0142: set a, $28          ; 1B 28
0144: store $4015, a      ; 14 15 40
0147: int $01             ; F6 01
0149: push a              ; 05
014A: set a, $C8          ; 1B C8
014C: jmp.z $0153         ; F5 53 01
014F: dec a               ; 70
0150: jmp $014C           ; E9 4C 01
0153: pop a               ; 0A
0154: pop a               ; 0A
0155: nop                 ; 00
0156: inc x               ; 67
0157: jmp $0155           ; E9 55 01
015A: nop                 ; 00
015B: nop                 ; 00
015C: nop                 ; 00
015D: nop                 ; 00
015E: nop                 ; 00
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
016A: nop                 ; 00
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
0180: nop                 ; FC
0181: nop                 ; FF
0182: nop                 ; 00
0183: nop                 ; 00
0184: nop                 ; 00
0185: nop                 ; 00
0186: nop                 ; 00
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
01A8: nop                 ; FC
01A9: nop                 ; FF
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
01B5: push y              ; 02
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
01D0: nop                 ; FC
01D1: nop                 ; FF
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
01F5: nop                 ; 00
01F6: nop                 ; 00
01F7: nop                 ; 00
01F8: nop                 ; FC
01F9: nop                 ; FF
01FA: nop                 ; 00
01FB: nop                 ; 00
01FC: nop                 ; 00
01FD: nop                 ; 00
01FE: nop                 ; 00
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
0220: nop                 ; FC
0221: nop                 ; FF
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
0245: nop                 ; 00
0246: nop                 ; 00
0247: nop                 ; 00
0248: nop                 ; FC
0249: nop                 ; FF
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
026D: nop                 ; 00
026E: nop                 ; 00
026F: nop                 ; 00
0270: nop                 ; FC
0271: nop                 ; FF
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
0295: nop                 ; 00
0296: nop                 ; 00
0297: nop                 ; 00
0298: nop                 ; FC
0299: nop                 ; FF
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
02BD: nop                 ; 00
02BE: nop                 ; 00
02BF: nop                 ; 00
02C0: nop                 ; FC
02C1: nop                 ; FF
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
02E5: nop                 ; 00
02E6: nop                 ; 00
02E7: nop                 ; 00
02E8: nop                 ; FC
02E9: nop                 ; FF
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
030D: nop                 ; 00
030E: nop                 ; 00
030F: nop                 ; 00
0310: nop                 ; FC
0311: nop                 ; FF
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
0335: nop                 ; 00
0336: nop                 ; 00
0337: nop                 ; 00
0338: nop                 ; FC
0339: nop                 ; FF
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
035D: nop                 ; 00
035E: nop                 ; 00
035F: nop                 ; 00
0360: nop                 ; FC
0361: nop                 ; FF
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
0385: nop                 ; 00
0386: nop                 ; 00
0387: nop                 ; 00
0388: nop                 ; FC
0389: nop                 ; FF
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
03AD: nop                 ; 00
03AE: nop                 ; 00
03AF: nop                 ; 00
03B0: nop                 ; FC
03B1: nop                 ; FF
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
03D5: nop                 ; 00
03D6: nop                 ; 00
03D7: nop                 ; 00
03D8: nop                 ; FC
03D9: nop                 ; FF
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
03FD: nop                 ; 00
03FE: nop                 ; 00
03FF: nop                 ; 00
0400: nop                 ; FC
0401: nop                 ; FF
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
0425: nop                 ; 00
0426: nop                 ; 00
0427: nop                 ; 00
0428: nop                 ; FC
0429: nop                 ; FF
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
044D: nop                 ; 00
044E: nop                 ; 00
044F: nop                 ; 00
0450: nop                 ; FC
0451: nop                 ; FF
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
0475: nop                 ; 00
0476: nop                 ; 00
0477: nop                 ; 00
0478: nop                 ; FC
0479: nop                 ; FF
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
049D: nop                 ; 00
049E: nop                 ; 00
049F: nop                 ; 00
04A0: nop                 ; FC
04A1: nop                 ; FF
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
04C5: nop                 ; 00
04C6: nop                 ; 00
04C7: nop                 ; 00
04C8: nop                 ; FC
04C9: nop                 ; FF
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
04ED: nop                 ; 00
04EE: nop                 ; 00
04EF: nop                 ; 00
04F0: nop                 ; FC
04F1: nop                 ; FF
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
0515: nop                 ; 00
0516: nop                 ; 00
0517: nop                 ; 00
0518: nop                 ; FC
0519: nop                 ; FF
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
053D: nop                 ; 00
053E: nop                 ; 00
053F: nop                 ; 00
0540: nop                 ; FC
0541: nop                 ; FF
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
0565: nop                 ; 00
0566: nop                 ; 00
0567: nop                 ; 00
0568: nop                 ; FC
0569: nop                 ; FF
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
058D: nop                 ; 00
058E: nop                 ; 00
058F: nop                 ; 00
0590: nop                 ; FC
0591: nop                 ; FF
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
05B5: nop                 ; 00
05B6: nop                 ; 00
05B7: nop                 ; 00
05B8: nop                 ; FC
05B9: nop                 ; FF
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
05DD: nop                 ; 00
05DE: nop                 ; 00
05DF: nop                 ; 00
05E0: nop                 ; FC
05E1: nop                 ; FF
05E2: nop                 ; 00
05E3: nop                 ; 00
05E4: nop                 ; 00
05E5: nop                 ; 00
05E6: nop                 ; 00
05E7: nop                 ; 00
05E8: nop                 ; 00
05E9: nop                 ; 00
05EA: store $0000, x      ; 10 00 00
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
0608: nop                 ; FC
0609: nop                 ; FF
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
062D: nop                 ; 00
062E: nop                 ; 00
062F: nop                 ; 00
0630: nop                 ; FC
0631: nop                 ; FF
0632: nop                 ; 00
0633: nop                 ; 00
0634: nop                 ; 00
0635: nop                 ; 00
0636: nop                 ; 00
0637: nop                 ; 00
0638: nop                 ; 00
0639: nop                 ; 00
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
0655: nop                 ; 00
0656: nop                 ; 00
0657: nop                 ; 00
0658: nop                 ; FC
0659: nop                 ; FF
065A: nop                 ; 00
065B: nop                 ; 00
065C: nop                 ; 00
065D: nop                 ; 00
065E: nop                 ; 00
065F: nop                 ; 00
0660: nop                 ; 00
0661: nop                 ; 00
0662: push x              ; 01
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
067D: nop                 ; 00
067E: nop                 ; 00
067F: nop                 ; 00
0680: nop                 ; FC
0681: nop                 ; FF
0682: nop                 ; 00
0683: nop                 ; 00
0684: nop                 ; 00
0685: nop                 ; 00
0686: nop                 ; 00
0687: nop                 ; 00
0688: nop                 ; 00
0689: add x, a            ; 20
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
06A5: nop                 ; 00
06A6: nop                 ; 00
06A7: nop                 ; 00
06A8: nop                 ; FC
06A9: nop                 ; FF
06AA: nop                 ; 00
06AB: nop                 ; 00
06AC: nop                 ; 00
06AD: jmp.lt $02B7        ; F4 B7 02
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
06CD: nop                 ; 00
06CE: nop                 ; 00
06CF: nop                 ; 00
06D0: nop                 ; FC
06D1: nop                 ; FF
06D2: nop                 ; 00
06D3: nop                 ; 00
06D4: cmp w, x            ; 80
06D5: not w               ; BA
06D6: shr w               ; DD
06D7: nop                 ; FA
06D8: mul z, w            ; 5B
06D9: sub z, z            ; 41
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
06F5: nop                 ; 00
06F6: nop                 ; 00
06F7: nop                 ; 00
06F8: nop                 ; FC
06F9: nop                 ; FF
06FA: nop                 ; 00
06FB: nop                 ; 00
06FC: rol y               ; E0
06FD: nop                 ; FF
06FE: store $F7ED, z      ; 12 ED F7
0701: xor x, z            ; BE
0702: add z, a            ; 2A
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
071D: nop                 ; 00
071E: nop                 ; 00
071F: nop                 ; 00
0720: nop                 ; FC
0721: nop                 ; FF
0722: nop                 ; 00
0723: nop                 ; 00
0724: nop                 ; 00
0725: mul w, z            ; 5F
0726: nop                 ; 00
0727: jmp $AB5A, a        ; F0 5A AB
072A: mul y, z            ; 55
072B: and y, w            ; 95
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
0745: nop                 ; 00
0746: nop                 ; 00
0747: nop                 ; 00
0748: nop                 ; FC
0749: nop                 ; FF
074A: nop                 ; 00
074B: nop                 ; 00
074C: nop                 ; 00
074D: jmp $2FFF, a        ; F0 FF 2F
0750: nop                 ; 00
0751: nop                 ; 00
0752: nop                 ; 00
0753: mul x, a            ; 52
0754: or z, w             ; AD
0755: pop a               ; 0A
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
076D: nop                 ; 00
076E: nop                 ; 00
076F: nop                 ; 00
0770: nop                 ; FC
0771: nop                 ; FF
0772: sub z, y            ; 40
0773: nop                 ; 00
0774: nop                 ; 00
0775: sub z, y            ; 40
0776: add w, a            ; 2F
0777: nop                 ; 00
0778: nop                 ; 00
0779: nop                 ; 00
077A: nop                 ; 00
077B: nop                 ; 00
077C: and a, y            ; A0
077D: jmp x, y            ; EA
077E: mul y, z            ; 55
077F: push x              ; 01
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
0795: nop                 ; 00
0796: nop                 ; 00
0797: nop                 ; 00
0798: nop                 ; FC
0799: nop                 ; FF
079A: store $0805, x      ; 10 05 08
079D: nop                 ; 00
079E: ror a               ; E8
079F: push a              ; 05
07A0: cmp w, z            ; 82
07A1: add y, w            ; 24
07A2: sub w, a            ; 48
07A3: nop                 ; 00
07A4: nop                 ; 00
07A5: nop                 ; 00
07A6: and a, y            ; A0
07A7: cmp z, w            ; 7E
07A8: push a              ; 05
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
07BD: nop                 ; 00
07BE: nop                 ; 00
07BF: nop                 ; 00
07C0: nop                 ; FC
07C1: nop                 ; FF
07C2: sub z, w            ; 42
07C3: nop                 ; 00
07C4: nop                 ; 00
07C5: nop                 ; 00
07C6: mul x, z            ; 50
07C7: xor x, w            ; BF
07C8: store $B580, x      ; 10 80 B5
07CB: mul y, a            ; 57
07CC: push a              ; 05
07CD: nop                 ; 00
07CE: nop                 ; 00
07CF: cmp w, y            ; 81
07D0: or y, z             ; A8
07D1: pop a               ; 0A
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
07E5: nop                 ; 00
07E6: nop                 ; 00
07E7: nop                 ; 00
07E8: nop                 ; FC
07E9: nop                 ; FF
07EA: xor a, x            ; D0
07EB: push y              ; 02
07EC: nop                 ; 00
07ED: nop                 ; 00
07EE: nop                 ; 00
07EF: jmp x, y            ; EA
07F0: cmp a, z            ; 87
07F1: cmp y, a            ; 7A
07F2: dec w               ; 6F
07F3: nop                 ; FD
07F4: nop                 ; FF
07F5: add z, a            ; 2A
07F6: sub z, y            ; 40
07F7: mul w, z            ; 5F
07F8: or y, a             ; AA
07F9: nop                 ; 00
07FA: add x, a            ; 20
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
080D: nop                 ; 00
080E: nop                 ; 00
080F: nop                 ; 00
0810: nop                 ; FC
0811: nop                 ; FF
0812: ror x               ; E4
0813: push y              ; 02
0814: store $0004, x      ; 10 04 00
0817: jmp $AFFE           ; E9 FE AF
081A: xor x, y            ; BD
081B: set x, $A9          ; 17 A9
081D: or z, x             ; AB
081E: or w, x             ; AF
081F: and a, y            ; A0
0820: add y, a            ; 25
0821: or y, w             ; A9
0822: sub a, y            ; 4A
0823: mul y, z            ; 55
0824: mul y, z            ; 55
0825: push x              ; 01
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
0835: nop                 ; 00
0836: nop                 ; 00
0837: nop                 ; 00
0838: nop                 ; FC
0839: nop                 ; FF
083A: xor z, z            ; C8
083B: push a              ; 05
083C: sub z, y            ; 40
083D: cmp w, x            ; 80
083E: push w              ; 04
083F: cmp w, x            ; 80
0840: mul y, z            ; 55
0841: jmp.z $E96B         ; F5 6B E9
0844: mul y, w            ; 56
0845: sub a, y            ; 4A
0846: mul z, y            ; 59
0847: mul w, x            ; 5D
0848: mul y, z            ; 55
0849: push y              ; 02
084A: mul x, w            ; 51
084B: push y              ; 02
084C: add x, a            ; 20
084D: push y              ; 02
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
085D: nop                 ; 00
085E: nop                 ; 00
085F: nop                 ; 00
0860: nop                 ; FC
0861: nop                 ; FF
0862: add x, a            ; 20
0863: nop                 ; 00
0864: nop                 ; 00
0865: add x, a            ; 20
0866: add x, a            ; 20
0867: add y, w            ; 24
0868: sub a, y            ; 4A
0869: mul w, z            ; 5F
086A: or z, w             ; AD
086B: or z, w             ; AD
086C: sub a, y            ; 4A
086D: inc z               ; 69
086E: jmp $0557, w        ; EF 57 05
0871: or y, w             ; A9
0872: sub a, w            ; 4C
0873: or y, w             ; A9
0874: pop a               ; 0A
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
0885: nop                 ; 00
0886: nop                 ; 00
0887: nop                 ; 00
0888: nop                 ; FC
0889: nop                 ; FF
088A: sub z, y            ; 40
088B: add y, x            ; 21
088C: nop                 ; 00
088D: pop z               ; 08
088E: cmp w, x            ; 80
088F: sub w, a            ; 48
0890: store $7BF5, x      ; 10 F5 7B
0893: not a               ; BB
0894: mul y, x            ; 53
0895: nop                 ; FF
0896: sub a, y            ; 4A
0897: or x, w             ; A5
0898: xor a, a            ; D4
0899: sub x, y            ; 36
089A: add y, x            ; 21
089B: mul y, z            ; 55
089C: add y, a            ; 25
089D: or y, z             ; A8
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
08AD: nop                 ; 00
08AE: nop                 ; 00
08AF: nop                 ; 00
08B0: nop                 ; FC
08B1: nop                 ; FF
08B2: add x, a            ; 20
08B3: nop                 ; 00
08B4: add x, a            ; 20
08B5: jmp x, y            ; EA
08B6: pop a               ; 0A
08B7: push y              ; 02
08B8: sub z, z            ; 41
08B9: mul z, z            ; 5A
08BA: rol x               ; DF
08BB: dec y               ; 6D
08BC: nop                 ; FD
08BD: add w, z            ; 2D
08BE: or x, z             ; A4
08BF: mul y, z            ; 55
08C0: not a               ; BB
08C1: cmpbit x            ; 8A 94
08C3: add y, w            ; 24
08C4: and x, a            ; 92
08C5: cmp w, z            ; 82
08C6: pop a               ; 0A
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
08D5: nop                 ; 00
08D6: nop                 ; 00
08D7: nop                 ; 00
08D8: nop                 ; FC
08D9: nop                 ; FF
08DA: cmp w, x            ; 80
08DB: nop                 ; 00
08DC: nop                 ; 00
08DD: mul z, x            ; 58
08DE: mul y, z            ; 55
08DF: mul x, z            ; 50
08E0: cmp a, w            ; 88
08E1: xor a, x            ; D0
08E2: or a, z             ; B5
08E3: shl y               ; D6
08E4: load x, $BB50       ; 0B 50 BB
08E7: or a, w             ; B6
08E8: or y, a             ; AA
08E9: sub x, x            ; 35
08EA: add y, y            ; 22
08EB: or y, w             ; A9
08EC: add y, w            ; 24
08ED: add z, z            ; 28
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
08FD: nop                 ; 00
08FE: nop                 ; 00
08FF: nop                 ; 00
0900: nop                 ; FC
0901: nop                 ; FF
0902: nop                 ; 00
0903: nop                 ; 00
0904: cmp w, x            ; 80
0905: xor a, a            ; D4
0906: push y              ; 02
0907: push a              ; 05
0908: push y              ; 02
0909: push y              ; 02
090A: or y, a             ; AA
090B: sub y, y            ; 3B
090C: nop                 ; 00
090D: push x              ; 01
090E: and a, y            ; A0
090F: shr x               ; DA
0910: mul y, w            ; 56
0911: mul y, z            ; 55
0912: cmp a, w            ; 88
0913: nop                 ; 00
0914: and x, z            ; 90
0915: nop                 ; 00
0916: cmp w, a            ; 84
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
0925: nop                 ; 00
0926: nop                 ; 00
0927: nop                 ; 00
0928: nop                 ; FC
0929: nop                 ; FF
092A: nop                 ; 00
092B: nop                 ; 00
092C: push w              ; 04
092D: inc y               ; 68
092E: mul w, z            ; 5F
092F: nop                 ; 00
0930: and a, y            ; A0
0931: or y, z             ; A8
0932: sub a, y            ; 4A
0933: sub a, y            ; 4A
0934: inc z               ; 69
0935: or z, w             ; AD
0936: mul w, w            ; 60
0937: cmp a, x            ; 85
0938: or z, w             ; AD
0939: cmpbit x            ; 8A 22
093B: nop                 ; 00
093C: nop                 ; 00
093D: nop                 ; 00
093E: store $0000, y      ; 11 00 00
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
094D: nop                 ; 00
094E: nop                 ; 00
094F: nop                 ; 00
0950: nop                 ; FC
0951: nop                 ; FF
0952: nop                 ; 00
0953: nop                 ; 00
0954: add y, x            ; 21
0955: shr a               ; DE
0956: cmp x, a            ; 75
0957: or y, w             ; A9
0958: pop a               ; 0A
0959: push y              ; 02
095A: add x, a            ; 20
095B: add y, x            ; 21
095C: or y, a             ; AA
095D: mul x, a            ; 52
095E: or z, x             ; AB
095F: and y, z            ; 94
0960: and z, x            ; 97
0961: add x, a            ; 20
0962: and x, z            ; 90
0963: nop                 ; 00
0964: nop                 ; 00
0965: and x, a            ; 92
0966: push w              ; 04
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
0975: nop                 ; 00
0976: nop                 ; 00
0977: nop                 ; 00
0978: nop                 ; FC
0979: nop                 ; FF
097A: nop                 ; 00
097B: add x, a            ; 20
097C: sub z, y            ; 40
097D: or w, y             ; B0
097E: shr a               ; DE
097F: push w              ; 04
0980: and a, y            ; A0
0981: or y, a             ; AA
0982: pop a               ; 0A
0983: sub a, y            ; 4A
0984: mul y, z            ; 55
0985: or z, w             ; AD
0986: or x, a             ; A6
0987: add z, a            ; 2A
0988: mul y, y            ; 54
0989: sub a, y            ; 4A
098A: add y, a            ; 25
098B: push a              ; 05
098C: cmp w, x            ; 80
098D: or x, z             ; A4
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
099D: nop                 ; 00
099E: nop                 ; 00
099F: nop                 ; 00
09A0: nop                 ; FC
09A1: nop                 ; FF
09A2: nop                 ; 00
09A3: nop                 ; 00
09A4: push w              ; 04
09A5: shr w               ; DD
09A6: inc a               ; 6B
09A7: shl x               ; D5
09A8: mul y, a            ; 57
09A9: mul y, z            ; 55
09AA: and a, w            ; A2
09AB: nop                 ; 00
09AC: or z, w             ; AD
09AD: inc w               ; 6A
09AE: add z, w            ; 29
09AF: and y, w            ; 95
09B0: sub a, y            ; 4A
09B1: add z, w            ; 29
09B2: and x, a            ; 92
09B3: or y, z             ; A8
09B4: add z, a            ; 2A
09B5: store $0000, z      ; 12 00 00
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
09C5: nop                 ; 00
09C6: nop                 ; 00
09C7: nop                 ; 00
09C8: nop                 ; FC
09C9: nop                 ; FF
09CA: nop                 ; 00
09CB: cmp w, x            ; 80
09CC: add x, a            ; 20
09CD: or a, y             ; B4
09CE: shr a               ; DE
09CF: add z, a            ; 2A
09D0: nop                 ; FF
09D1: xor x, w            ; BF
09D2: pop a               ; 0A
09D3: mul y, z            ; 55
09D4: or y, a             ; AA
09D5: or a, w             ; B6
09D6: cmp w, z            ; 82
09D7: or y, a             ; AA
09D8: and x, a            ; 92
09D9: cmp w, a            ; 84
09DA: add y, w            ; 24
09DB: push y              ; 02
09DC: cmp w, x            ; 80
09DD: push w              ; 04
09DE: sub z, y            ; 40
09DF: push y              ; 02
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
09ED: nop                 ; 00
09EE: nop                 ; 00
09EF: nop                 ; 00
09F0: nop                 ; FC
09F1: nop                 ; FF
09F2: nop                 ; 00
09F3: nop                 ; 00
09F4: store $7BD5, x      ; 10 D5 7B
09F7: xor a, z            ; D2
09F8: nop                 ; FF
09F9: nop                 ; FF
09FA: mul y, z            ; 55
09FB: add x, a            ; 20
09FC: or y, w             ; A9
09FD: sub a, a            ; 4D
09FE: inc z               ; 69
09FF: nop                 ; FD
0A00: sub a, a            ; 4D
0A01: mul x, a            ; 52
0A02: and x, a            ; 92
0A03: mul y, y            ; 54
0A04: mul z, w            ; 5B
0A05: sub z, w            ; 42
0A06: call $0029          ; 15 29 00
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
0A15: nop                 ; 00
0A16: nop                 ; 00
0A17: nop                 ; 00
0A18: nop                 ; FC
0A19: nop                 ; FF
0A1A: nop                 ; 00
0A1B: nop                 ; 00
0A1C: sub z, w            ; 42
0A1D: not y               ; B8
0A1E: or z, a             ; AE
0A1F: or z, w             ; AD
0A20: nop                 ; FF
0A21: nop                 ; FF
0A22: jmp $524A, w        ; EF 4A 52
0A25: mul y, x            ; 53
0A26: or y, a             ; AA
0A27: mul y, w            ; 56
0A28: not a               ; BB
0A29: and y, z            ; 94
0A2A: sub w, x            ; 44
0A2B: cmp w, z            ; 82
0A2C: or x, z             ; A4
0A2D: store $84A8, a      ; 14 A8 84
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
0A3D: nop                 ; 00
0A3E: nop                 ; 00
0A3F: nop                 ; 00
0A40: nop                 ; FC
0A41: nop                 ; FF
0A42: nop                 ; 00
0A43: sub w, a            ; 48
0A44: pop z               ; 08
0A45: jmp $F55B, y        ; ED 5B F5
0A48: nop                 ; FF
0A49: nop                 ; FF
0A4A: nop                 ; FF
0A4B: or x, y             ; A3
0A4C: mul y, z            ; 55
0A4D: sub a, a            ; 4D
0A4E: mul w, x            ; 5D
0A4F: nop                 ; FB
0A50: mul y, w            ; 56
0A51: add y, x            ; 21
0A52: add z, w            ; 29
0A53: or y, w             ; A9
0A54: sub a, y            ; 4A
0A55: mul y, z            ; 55
0A56: add w, x            ; 2B
0A57: xor a, z            ; D2
0A58: push y              ; 02
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
0A65: nop                 ; 00
0A66: nop                 ; 00
0A67: nop                 ; 00
0A68: nop                 ; FC
0A69: nop                 ; FF
0A6A: nop                 ; 00
0A6B: nop                 ; 00
0A6C: mul x, w            ; 51
0A6D: cmp x, y            ; 72
0A6E: resume              ; F7 DE
0A70: nop                 ; FF
0A71: nop                 ; FF
0A72: nop                 ; FF
0A73: and z, x            ; 97
0A74: and z, x            ; 97
0A75: mul x, z            ; 50
0A76: inc a               ; 6B
0A77: or z, w             ; AD
0A78: or z, w             ; AD
0A79: and y, z            ; 94
0A7A: sub a, y            ; 4A
0A7B: add y, y            ; 22
0A7C: add z, w            ; 29
0A7D: sub a, x            ; 49
0A7E: and x, a            ; 92
0A7F: add y, a            ; 25
0A80: load z, $0000       ; 0D 00 00
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
0A8D: nop                 ; 00
0A8E: nop                 ; 00
0A8F: nop                 ; 00
0A90: nop                 ; FC
0A91: nop                 ; FF
0A92: sub z, y            ; 40
0A93: store $AAA4, z      ; 12 A4 AA
0A96: mul w, x            ; 5D
0A97: nop                 ; FB
0A98: nop                 ; FF
0A99: nop                 ; FF
0A9A: nop                 ; FF
0A9B: and a, z            ; A1
0A9C: mul w, z            ; 5F
0A9D: jmp x, y            ; EA
0A9E: or y, a             ; AA
0A9F: or a, w             ; B6
0AA0: store $AEEA, z      ; 12 EA AE
0AA3: and y, z            ; 94
0AA4: inc w               ; 6A
0AA5: or x, w             ; A5
0AA6: nop                 ; FA
0AA7: cmpbit x            ; 8A 54
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
0AB5: nop                 ; 00
0AB6: nop                 ; 00
0AB7: nop                 ; 00
0AB8: nop                 ; FC
0AB9: nop                 ; FF
0ABA: pop z               ; 08
0ABB: and a, y            ; A0
0ABC: and x, a            ; 92
0ABD: jmp x, y            ; EA
0ABE: resume              ; F7 FF
0AC0: nop                 ; FF
0AC1: nop                 ; FF
0AC2: nop                 ; FF
0AC3: sub a, y            ; 4A
0AC4: cmp z, y            ; 7C
0AC5: cmp a, x            ; 85
0AC6: or z, w             ; AD
0AC7: shl x               ; D5
0AC8: or x, z             ; A4
0AC9: mul y, z            ; 55
0ACA: shr y               ; DB
0ACB: or x, w             ; A5
0ACC: shr a               ; DE
0ACD: shr y               ; DB
0ACE: or z, a             ; AE
0ACF: sub x, z            ; 37
0AD0: add z, w            ; 29
0AD1: push x              ; 01
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
0ADD: nop                 ; 00
0ADE: nop                 ; 00
0ADF: nop                 ; 00
0AE0: nop                 ; FC
0AE1: nop                 ; FF
0AE2: add x, a            ; 20
0AE3: call $BD6C          ; 15 6C BD
0AE6: nop                 ; FE
0AE7: nop                 ; FF
0AE8: nop                 ; FF
0AE9: nop                 ; FF
0AEA: add w, a            ; 2F
0AEB: add x, a            ; 20
0AEC: jmp.z $EB51         ; F5 51 EB
0AEF: dec w               ; 6F
0AF0: inc a               ; 6B
0AF1: shr y               ; DB
0AF2: or y, a             ; AA
0AF3: xor x, w            ; BF
0AF4: cmp z, x            ; 7B
0AF5: dec y               ; 6D
0AF6: cmp z, x            ; 7B
0AF7: sub a, x            ; 49
0AF8: mul y, y            ; 54
0AF9: push a              ; 05
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
0B05: nop                 ; 00
0B06: nop                 ; 00
0B07: nop                 ; 00
0B08: nop                 ; FC
0B09: nop                 ; FF
0B0A: sub w, x            ; 44
0B0B: and a, y            ; A0
0B0C: mul x, a            ; 52
0B0D: jmp z, w            ; EB
0B0E: shr w               ; DD
0B0F: nop                 ; FF
0B10: nop                 ; FF
0B11: nop                 ; FF
0B12: mul y, a            ; 57
0B13: sub w, y            ; 45
0B14: xor a, a            ; D4
0B15: cmp a, z            ; 87
0B16: int $BA             ; F6 BA
0B18: shr x               ; DA
0B19: or a, w             ; B6
0B1A: or z, w             ; AD
0B1B: inc w               ; 6A
0B1C: sub z, y            ; 40
0B1D: nop                 ; FD
0B1E: or z, a             ; AE
0B1F: store $14A5, a      ; 14 A5 14
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
0B2D: nop                 ; 00
0B2E: nop                 ; 00
0B2F: nop                 ; 00
0B30: nop                 ; FC
0B31: nop                 ; FF
0B32: store $ED55, y      ; 11 55 ED
0B35: nop                 ; FD
0B36: nop                 ; FF
0B37: nop                 ; FF
0B38: nop                 ; FF
0B39: nop                 ; FF
0B3A: pop w               ; 09
0B3B: store $11A1, y      ; 11 A1 11
0B3E: shr y               ; DB
0B3F: shl z               ; D7
0B40: mul y, w            ; 56
0B41: sub a, z            ; 4B
0B42: jmp.z $00BF         ; F5 BF 00
0B45: xor a, a            ; D4
0B46: cmp z, x            ; 7B
0B47: mul y, z            ; 55
0B48: or y, z             ; A8
0B49: store $0000, z      ; 12 00 00
0B4C: nop                 ; 00
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
0B58: nop                 ; FC
0B59: nop                 ; FF
0B5A: sub w, x            ; 44
0B5B: or y, a             ; AA
0B5C: mul z, z            ; 5A
0B5D: nop                 ; FF
0B5E: nop                 ; FF
0B5F: nop                 ; FF
0B60: nop                 ; FF
0B61: nop                 ; FF
0B62: mul y, w            ; 56
0B63: sub w, x            ; 44
0B64: pop z               ; 08
0B65: sub w, x            ; 44
0B66: cmp z, y            ; 7C
0B67: or z, w             ; AD
0B68: nop                 ; FD
0B69: cmp y, y            ; 77
0B6A: jmp $016B, w        ; EF 6B 01
0B6D: cmp w, x            ; 80
0B6E: shl y               ; D6
0B6F: and x, a            ; 92
0B70: mul x, a            ; 52
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
0B7D: nop                 ; 00
0B7E: nop                 ; 00
0B7F: nop                 ; 00
0B80: nop                 ; FC
0B81: nop                 ; FF
0B82: mul x, w            ; 51
0B83: mul y, z            ; 55
0B84: jmp z, w            ; EB
0B85: nop                 ; FF
0B86: nop                 ; FF
0B87: nop                 ; FF
0B88: nop                 ; FF
0B89: cmp z, a            ; 7F
0B8A: or y, w             ; A9
0B8B: store $12A5, z      ; 12 A5 12
0B8E: mul x, a            ; 52
0B8F: cmp x, a            ; 75
0B90: not x               ; B7
0B91: jmp $FFBD, z        ; EE BD FF
0B94: push x              ; 01
0B95: nop                 ; 00
0B96: sub y, x            ; 3A
0B97: add y, a            ; 25
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
0BA5: nop                 ; 00
0BA6: nop                 ; 00
0BA7: nop                 ; 00
0BA8: nop                 ; FC
0BA9: nop                 ; FF
0BAA: mul y, z            ; 55
0BAB: shl x               ; D5
0BAC: nop                 ; FE
0BAD: nop                 ; FF
0BAE: nop                 ; FF
0BAF: nop                 ; FF
0BB0: nop                 ; FF
0BB1: mul w, z            ; 5F
0BB2: cmp x, a            ; 75
0BB3: sub z, z            ; 41
0BB4: nop                 ; 00
0BB5: nop                 ; 00
0BB6: or y, z             ; A8
0BB7: shr w               ; DD
0BB8: jmp $F75B, z        ; EE 5B F7
0BBB: cmp z, z            ; 7D
0BBC: push z              ; 03
0BBD: nop                 ; 00
0BBE: or x, z             ; A4
0BBF: mul y, y            ; 54
0BC0: push a              ; 05
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
0BCD: nop                 ; 00
0BCE: nop                 ; 00
0BCF: nop                 ; 00
0BD0: nop                 ; FC
0BD1: nop                 ; FF
0BD2: or y, a             ; AA
0BD3: cmp y, a            ; 7A
0BD4: nop                 ; FF
0BD5: nop                 ; FF
0BD6: nop                 ; FF
0BD7: nop                 ; FF
0BD8: nop                 ; FF
0BD9: xor x, w            ; BF
0BDA: jmp.neq $4515       ; F2 15 45
0BDD: cmp a, w            ; 88
0BDE: jmp $BBF6, a        ; F0 F6 BB
0BE1: jmp $D75D, y        ; ED 5D D7
0BE4: push y              ; 02
0BE5: nop                 ; 00
0BE6: sub w, a            ; 48
0BE7: mul y, z            ; 55
0BE8: mul x, z            ; 50
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
0BF5: nop                 ; 00
0BF6: nop                 ; 00
0BF7: nop                 ; 00
0BF8: nop                 ; FC
0BF9: nop                 ; FF
0BFA: or y, a             ; AA
0BFB: shl y               ; D6
0BFC: resume              ; F7 FF
0BFE: nop                 ; FF
0BFF: nop                 ; FF
0C00: nop                 ; FF
0C01: mul y, a            ; 57
0C02: jmp.z $0051         ; F5 51 00
0C05: nop                 ; 00
0C06: cmp w, x            ; 80
0C07: rol x               ; DF
0C08: cmp z, w            ; 7E
0C09: cmp y, y            ; 77
0C0A: resume              ; F7 BA
0C0C: pop y               ; 07
0C0D: nop                 ; 00
0C0E: mul x, z            ; 50
0C0F: and x, a            ; 92
0C10: or x, w             ; A5
0C11: or z, w             ; AD
0C12: store $0000, z      ; 12 00 00
0C15: nop                 ; 00
0C16: nop                 ; 00
0C17: nop                 ; 00
0C18: nop                 ; 00
0C19: nop                 ; 00
0C1A: nop                 ; 00
0C1B: nop                 ; 00
0C1C: nop                 ; 00
0C1D: nop                 ; 00
0C1E: nop                 ; 00
0C1F: nop                 ; 00
0C20: nop                 ; FC
0C21: nop                 ; FF
0C22: xor x, y            ; BD
0C23: nop                 ; FB
0C24: nop                 ; FF
0C25: nop                 ; FF
0C26: nop                 ; FF
0C27: nop                 ; FF
0C28: nop                 ; FF
0C29: or z, w             ; AD
0C2A: jmp.lt $4905        ; F4 05 49
0C2D: add x, a            ; 20
0C2E: mul w, a            ; 61
0C2F: cmp z, x            ; 7B
0C30: shl z               ; D7
0C31: shr x               ; DA
0C32: or z, w             ; AD
0C33: jmp $000A, y        ; ED 0A 00
0C36: or y, z             ; A8
0C37: mul y, z            ; 55
0C38: add y, y            ; 22
0C39: mul x, a            ; 52
0C3A: sub a, y            ; 4A
0C3B: call $0000          ; 15 00 00
0C3E: nop                 ; 00
0C3F: nop                 ; 00
0C40: nop                 ; 00
0C41: nop                 ; 00
0C42: nop                 ; 00
0C43: nop                 ; 00
0C44: nop                 ; 00
0C45: nop                 ; 00
0C46: nop                 ; 00
0C47: nop                 ; 00
0C48: nop                 ; FC
0C49: nop                 ; FF
0C4A: jmp z, w            ; EB
0C4B: jmp $FFFE, z        ; EE FE FF
0C4E: nop                 ; FF
0C4F: nop                 ; FF
0C50: cmp z, a            ; 7F
0C51: mul y, z            ; 55
0C52: jmp.z $8029         ; F5 29 80
0C55: push y              ; 02
0C56: push w              ; 04
0C57: shr a               ; DE
0C58: or a, z             ; B5
0C59: cmp z, a            ; 7F
0C5A: mul z, w            ; 5B
0C5B: not x               ; B7
0C5C: pop y               ; 07
0C5D: nop                 ; 00
0C5E: mul w, w            ; 60
0C5F: or z, x             ; AB
0C60: xor z, a            ; CA
0C61: or y, a             ; AA
0C62: mul x, a            ; 52
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
0C6D: nop                 ; 00
0C6E: nop                 ; 00
0C6F: nop                 ; 00
0C70: nop                 ; FC
0C71: nop                 ; FF
0C72: xor x, y            ; BD
0C73: nop                 ; FF
0C74: nop                 ; FF
0C75: nop                 ; FF
0C76: nop                 ; FF
0C77: nop                 ; FF
0C78: xor x, w            ; BF
0C79: add z, a            ; 2A
0C7A: nop                 ; F9
0C7B: store $9004, z      ; 12 04 90
0C7E: nop                 ; 00
0C7F: cmp x, a            ; 75
0C80: jmp $6DEA, w        ; EF EA 6D
0C83: sub a, x            ; 49
0C84: pop z               ; 08
0C85: nop                 ; 00
0C86: or w, y             ; B0
0C87: or z, w             ; AD
0C88: push w              ; 04
0C89: or x, w             ; A5
0C8A: push w              ; 04
0C8B: push a              ; 05
0C8C: nop                 ; 00
0C8D: nop                 ; 00
0C8E: nop                 ; 00
0C8F: nop                 ; 00
0C90: nop                 ; 00
0C91: nop                 ; 00
0C92: nop                 ; 00
0C93: nop                 ; 00
0C94: nop                 ; 00
0C95: nop                 ; 00
0C96: nop                 ; 00
0C97: nop                 ; 00
0C98: nop                 ; FC
0C99: nop                 ; FF
0C9A: jmp z, w            ; EB
0C9B: nop                 ; FF
0C9C: nop                 ; FF
0C9D: nop                 ; FF
0C9E: nop                 ; FF
0C9F: nop                 ; FF
0CA0: or w, x             ; AF
0CA1: sub a, y            ; 4A
0CA2: jmp.neq $20A5       ; F2 A5 20
0CA5: push a              ; 05
0CA6: add y, y            ; 22
0CA7: xor a, a            ; D4
0CA8: or y, a             ; AA
0CA9: xor x, w            ; BF
0CAA: or a, w             ; B6
0CAB: store $0215, z      ; 12 15 02
0CAE: mul w, w            ; 60
0CAF: xor x, w            ; BF
0CB0: or y, a             ; AA
0CB1: and y, z            ; 94
0CB2: set w, $00          ; 1A 00
0CB4: pop z               ; 08
0CB5: nop                 ; 00
0CB6: nop                 ; 00
0CB7: nop                 ; 00
0CB8: nop                 ; 00
0CB9: nop                 ; 00
0CBA: nop                 ; 00
0CBB: nop                 ; 00
0CBC: nop                 ; 00
0CBD: nop                 ; 00
0CBE: nop                 ; 00
0CBF: nop                 ; 00
0CC0: nop                 ; FC
0CC1: nop                 ; FF
0CC2: nop                 ; FD
0CC3: nop                 ; FD
0CC4: nop                 ; FF
0CC5: nop                 ; FF
0CC6: nop                 ; FF
0CC7: nop                 ; FF
0CC8: or y, x             ; A7
0CC9: and x, a            ; 92
0CCA: jmp.lt $0048        ; F4 48 00
0CCD: add x, a            ; 20
0CCE: pop z               ; 08
0CCF: inc y               ; 68
0CD0: rol x               ; DF
0CD1: inc w               ; 6A
0CD2: or z, x             ; AB
0CD3: xor z, z            ; C8
0CD4: set w, $00          ; 1A 00
0CD6: and a, y            ; A0
0CD7: or x, w             ; A5
0CD8: add x, a            ; 20
0CD9: mul y, z            ; 55
0CDA: add z, w            ; 29
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
0CE5: nop                 ; 00
0CE6: nop                 ; 00
0CE7: nop                 ; 00
0CE8: nop                 ; FC
0CE9: nop                 ; FF
0CEA: xor x, w            ; BF
0CEB: nop                 ; FF
0CEC: nop                 ; FF
0CED: nop                 ; FF
0CEE: nop                 ; FF
0CEF: nop                 ; FF
0CF0: load a, $F224       ; 0F 24 F2
0CF3: and y, x            ; 93
0CF4: pop a               ; 0A
0CF5: sub w, x            ; 44
0CF6: push y              ; 02
0CF7: xor y, x            ; C1
0CF8: not a               ; BB
0CF9: shr y               ; DB
0CFA: not w               ; BA
0CFB: cmp x, y            ; 72
0CFC: add w, a            ; 2F
0CFD: nop                 ; 00
0CFE: xor x, a            ; C0
0CFF: sub a, y            ; 4A
0D00: mul z, z            ; 5A
0D01: add w, w            ; 2E
0D02: or x, w             ; A5
0D03: mul y, z            ; 55
0D04: nop                 ; 00
0D05: nop                 ; 00
0D06: nop                 ; 00
0D07: nop                 ; 00
0D08: nop                 ; 00
0D09: nop                 ; 00
0D0A: nop                 ; 00
0D0B: nop                 ; 00
0D0C: nop                 ; 00
0D0D: nop                 ; 00
0D0E: nop                 ; 00
0D0F: nop                 ; 00
0D10: nop                 ; FC
0D11: nop                 ; FF
0D12: jmp.z $FFFF         ; F5 FF FF
0D15: nop                 ; FF
0D16: nop                 ; FF
0D17: mul w, z            ; 5F
0D18: or x, w             ; A5
0D19: and x, a            ; 92
0D1A: nop                 ; F8
0D1B: pop z               ; 08
0D1C: sub z, z            ; 41
0D1D: push y              ; 02
0D1E: store $ED48, y      ; 11 48 ED
0D21: or a, w             ; B6
0D22: dec y               ; 6D
0D23: sub a, a            ; 4D
0D24: sub x, x            ; 35
0D25: nop                 ; 00
0D26: nop                 ; 00
0D27: inc z               ; 69
0D28: jmp z, w            ; EB
0D29: not w               ; BA
0D2A: sub a, y            ; 4A
0D2B: pop a               ; 0A
0D2C: nop                 ; 00
0D2D: nop                 ; 00
0D2E: nop                 ; 00
0D2F: nop                 ; 00
0D30: nop                 ; 00
0D31: nop                 ; 00
0D32: nop                 ; 00
0D33: nop                 ; 00
0D34: nop                 ; 00
0D35: nop                 ; 00
0D36: nop                 ; 00
0D37: nop                 ; 00
0D38: nop                 ; FC
0D39: nop                 ; FF
0D3A: jmp $FFFF, w        ; EF FF FF
0D3D: nop                 ; FF
0D3E: nop                 ; FF
0D3F: resume              ; F7 0B
0D41: add y, w            ; 24
0D42: jmp.neq $14A2       ; F2 A2 14
0D45: add z, z            ; 28
0D46: sub z, y            ; 40
0D47: store $6D5A, x      ; 10 5A 6D
0D4A: mul y, z            ; 55
0D4B: mul z, w            ; 5B
0D4C: mul w, z            ; 5F
0D4D: nop                 ; 00
0D4E: cmp w, x            ; 80
0D4F: shr x               ; DA
0D50: xor x, y            ; BD
0D51: dec y               ; 6D
0D52: or y, w             ; A9
0D53: or y, a             ; AA
0D54: nop                 ; 00
0D55: nop                 ; 00
0D56: nop                 ; 00
0D57: nop                 ; 00
0D58: nop                 ; 00
0D59: nop                 ; 00
0D5A: nop                 ; 00
0D5B: nop                 ; 00
0D5C: nop                 ; 00
0D5D: nop                 ; 00
0D5E: nop                 ; 00
0D5F: nop                 ; 00
0D60: nop                 ; FC
0D61: nop                 ; FF
0D62: xor x, y            ; BD
0D63: nop                 ; FD
0D64: nop                 ; FF
0D65: jmp $5AAD, w        ; EF AD 5A
0D68: or y, a             ; AA
0D69: and x, a            ; 92
0D6A: jmp.lt $400A        ; F4 0A 40
0D6D: nop                 ; 00
0D6E: push w              ; 04
0D6F: sub z, z            ; 41
0D70: jmp.z $D7F7         ; F5 F7 D7
0D73: or a, w             ; B6
0D74: mul y, z            ; 55
0D75: nop                 ; 00
0D76: nop                 ; 00
0D77: dec w               ; 6F
0D78: or z, x             ; AB
0D79: not w               ; BA
0D7A: add z, a            ; 2A
0D7B: mul x, w            ; 51
0D7C: nop                 ; 00
0D7D: nop                 ; 00
0D7E: nop                 ; 00
0D7F: nop                 ; 00
0D80: nop                 ; 00
0D81: nop                 ; 00
0D82: nop                 ; 00
0D83: nop                 ; 00
0D84: nop                 ; 00
0D85: nop                 ; 00
0D86: nop                 ; 00
0D87: nop                 ; 00
0D88: nop                 ; FC
0D89: nop                 ; FF
0D8A: resume              ; F7 B7
0D8C: cmp z, z            ; 7D
0D8D: cmp z, x            ; 7B
0D8E: nop                 ; FB
0D8F: or w, x             ; AF
0D90: push a              ; 05
0D91: nop                 ; 00
0D92: jmp.eq $9251        ; F1 51 92
0D95: push w              ; 04
0D96: add y, x            ; 21
0D97: push w              ; 04
0D98: store $5ABD, a      ; 14 BD 5A
0D9B: mul y, z            ; 55
0D9C: mul w, z            ; 5F
0D9D: nop                 ; 00
0D9E: nop                 ; 00
0D9F: shr x               ; DA
0DA0: inc a               ; 6B
0DA1: ror w               ; E7
0DA2: or x, z             ; A4
0DA3: or y, a             ; AA
0DA4: push y              ; 02
0DA5: nop                 ; 00
0DA6: nop                 ; 00
0DA7: nop                 ; 00
0DA8: nop                 ; 00
0DA9: nop                 ; 00
0DAA: nop                 ; 00
0DAB: nop                 ; 00
0DAC: nop                 ; 00
0DAD: nop                 ; 00
0DAE: nop                 ; 00
0DAF: nop                 ; 00
0DB0: nop                 ; FC
0DB1: nop                 ; FF
0DB2: shr w               ; DD
0DB3: nop                 ; FE
0DB4: jmp $ADAF, w        ; EF AF AD
0DB7: mul y, y            ; 54
0DB8: and x, a            ; 92
0DB9: sub a, y            ; 4A
0DBA: nop                 ; FC
0DBB: push w              ; 04
0DBC: pop z               ; 08
0DBD: add y, y            ; 22
0DBE: pop z               ; 08
0DBF: add x, a            ; 20
0DC0: xor a, y            ; D1
0DC1: shl z               ; D7
0DC2: or z, w             ; AD
0DC3: nop                 ; FA
0DC4: or a, z             ; B5
0DC5: nop                 ; 00
0DC6: nop                 ; 00
0DC7: cmp z, z            ; 7D
0DC8: or z, w             ; AD
0DC9: shl x               ; D5
0DCA: or y, a             ; AA
0DCB: add y, w            ; 24
0DCC: push x              ; 01
0DCD: nop                 ; 00
0DCE: nop                 ; 00
0DCF: nop                 ; 00
0DD0: nop                 ; 00
0DD1: nop                 ; 00
0DD2: nop                 ; 00
0DD3: nop                 ; 00
0DD4: nop                 ; 00
0DD5: nop                 ; 00
0DD6: nop                 ; 00
0DD7: nop                 ; 00
0DD8: nop                 ; FC
0DD9: nop                 ; FF
0DDA: not x               ; B7
0DDB: mul z, w            ; 5B
0DDC: nop                 ; FB
0DDD: shr x               ; DA
0DDE: mul y, w            ; 56
0DDF: or z, x             ; AB
0DE0: push a              ; 05
0DE1: store $11F1, x      ; 10 F1 11
0DE4: or y, a             ; AA
0DE5: cmp a, w            ; 88
0DE6: cmp w, z            ; 82
0DE7: pop a               ; 0A
0DE8: store $AB7E, z      ; 12 7E AB
0DEB: mul y, w            ; 56
0DEC: or w, x             ; AF
0DED: push x              ; 01
0DEE: nop                 ; 00
0DEF: xor a, a            ; D4
0DF0: dec w               ; 6F
0DF1: xor x, y            ; BD
0DF2: add z, a            ; 2A
0DF3: mul y, z            ; 55
0DF4: nop                 ; 00
0DF5: nop                 ; 00
0DF6: nop                 ; 00
0DF7: nop                 ; 00
0DF8: nop                 ; 00
0DF9: nop                 ; 00
0DFA: nop                 ; 00
0DFB: nop                 ; 00
0DFC: nop                 ; 00
0DFD: nop                 ; 00
0DFE: nop                 ; 00
0DFF: nop                 ; 00
0E00: nop                 ; FC
0E01: nop                 ; FF
0E02: shr w               ; DD
0E03: jmp $6FAD, z        ; EE AD 6F
0E06: or y, w             ; A9
0E07: mul y, y            ; 54
0E08: add y, y            ; 22
0E09: cmp w, y            ; 81
0E0A: jmp.lt $0544        ; F4 44 05
0E0D: add y, y            ; 22
0E0E: add z, z            ; 28
0E0F: add x, a            ; 20
0E10: ror a               ; E8
0E11: nop                 ; FB
0E12: shl x               ; D5
0E13: nop                 ; FB
0E14: mul x, a            ; 52
0E15: nop                 ; 00
0E16: nop                 ; 00
0E17: cmp x, w            ; 74
0E18: or z, w             ; AD
0E19: push y              ; 02
0E1A: sub a, x            ; 49
0E1B: mul y, z            ; 55
0E1C: nop                 ; 00
0E1D: nop                 ; 00
0E1E: nop                 ; 00
0E1F: nop                 ; 00
0E20: nop                 ; 00
0E21: nop                 ; 00
0E22: nop                 ; 00
0E23: nop                 ; 00
0E24: nop                 ; 00
0E25: nop                 ; 00
0E26: nop                 ; 00
0E27: nop                 ; 00
0E28: nop                 ; FC
0E29: nop                 ; FF
0E2A: inc w               ; 6A
0E2B: mul z, w            ; 5B
0E2C: nop                 ; FB
0E2D: shr x               ; DA
0E2E: sub a, y            ; 4A
0E2F: mul y, z            ; 55
0E30: pop w               ; 09
0E31: store $1170, z      ; 12 70 11
0E34: or y, a             ; AA
0E35: and y, z            ; 94
0E36: push y              ; 02
0E37: sub a, x            ; 49
0E38: push x              ; 01
0E39: or z, w             ; AD
0E3A: not w               ; BA
0E3B: mul y, w            ; 56
0E3C: load a, $0000       ; 0F 00 00
0E3F: xor a, x            ; D0
0E40: set x, $54          ; 17 54
0E42: mul y, y            ; 54
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
0E4D: nop                 ; 00
0E4E: nop                 ; 00
0E4F: nop                 ; 00
0E50: nop                 ; FC
0E51: nop                 ; FF
0E52: shr y               ; DB
0E53: jmp x, y            ; EA
0E54: or z, w             ; AD
0E55: dec y               ; 6D
0E56: and y, x            ; 93
0E57: and x, z            ; 90
0E58: push w              ; 04
0E59: nop                 ; 00
0E5A: call $8284          ; 15 84 82
0E5D: mul a, x            ; 62
0E5E: or y, z             ; A8
0E5F: push w              ; 04
0E60: xor y, w            ; C4
0E61: mul z, z            ; 5A
0E62: jmp $01DB, w        ; EF DB 01
0E65: nop                 ; 00
0E66: nop                 ; 00
0E67: inc y               ; 68
0E68: sub a, x            ; 49
0E69: and x, w            ; 91
0E6A: or y, z             ; A8
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
0E75: nop                 ; 00
0E76: nop                 ; 00
0E77: nop                 ; 00
0E78: nop                 ; FC
0E79: nop                 ; FF
0E7A: or y, a             ; AA
0E7B: mul w, x            ; 5D
0E7C: mul z, w            ; 5B
0E7D: mul z, w            ; 5B
0E7E: add w, z            ; 2D
0E7F: sub w, y            ; 45
0E80: or y, a             ; AA
0E81: sub w, x            ; 44
0E82: cmp w, x            ; 80
0E83: store $D429, x      ; 10 29 D4
0E86: store $1151, w      ; 13 51 11
0E89: shl y               ; D6
0E8A: not a               ; BB
0E8B: cmp x, w            ; 74
0E8C: nop                 ; 00
0E8D: nop                 ; 00
0E8E: nop                 ; 00
0E8F: mul x, z            ; 50
0E90: or y, a             ; AA
0E91: mul y, w            ; 56
0E92: add y, y            ; 22
0E93: call $0000          ; 15 00 00
0E96: nop                 ; 00
0E97: nop                 ; 00
0E98: nop                 ; 00
0E99: nop                 ; 00
0E9A: nop                 ; 00
0E9B: nop                 ; 00
0E9C: nop                 ; 00
0E9D: nop                 ; 00
0E9E: nop                 ; 00
0E9F: nop                 ; 00
0EA0: nop                 ; FC
0EA1: nop                 ; FF
0EA2: or a, z             ; B5
0EA3: mul y, w            ; 56
0EA4: mul y, z            ; 55
0EA5: mul y, z            ; 55
0EA6: and y, w            ; 95
0EA7: store $0001, x      ; 10 01 00
0EAA: sub w, a            ; 48
0EAB: sub w, x            ; 44
0EAC: and a, w            ; A2
0EAD: jmp x, y            ; EA
0EAE: sub a, z            ; 4B
0EAF: push w              ; 04
0EB0: cmp w, a            ; 84
0EB1: cmp y, a            ; 7A
0EB2: dec y               ; 6D
0EB3: load x, $4000       ; 0B 00 40
0EB6: nop                 ; 00
0EB7: or w, y             ; B0
0EB8: or y, a             ; AA
0EB9: and y, w            ; 95
0EBA: sub a, y            ; 4A
0EBB: call $0000          ; 15 00 00
0EBE: nop                 ; 00
0EBF: nop                 ; 00
0EC0: nop                 ; 00
0EC1: nop                 ; 00
0EC2: nop                 ; 00
0EC3: nop                 ; 00
0EC4: nop                 ; 00
0EC5: nop                 ; 00
0EC6: nop                 ; 00
0EC7: nop                 ; 00
0EC8: nop                 ; FC
0EC9: nop                 ; FF
0ECA: or z, w             ; AD
0ECB: shl x               ; D5
0ECC: or y, a             ; AA
0ECD: or y, a             ; AA
0ECE: inc w               ; 6A
0ECF: sub w, x            ; 44
0ED0: mul y, y            ; 54
0ED1: store $9102, y      ; 11 02 91
0ED4: and y, z            ; 94
0ED5: xor a, a            ; D4
0ED6: mul y, a            ; 57
0ED7: mul y, z            ; 55
0ED8: add z, w            ; 29
0ED9: xor a, a            ; D4
0EDA: nop                 ; FF
0EDB: push x              ; 01
0EDC: nop                 ; 00
0EDD: push y              ; 02
0EDE: nop                 ; 00
0EDF: and a, y            ; A0
0EE0: mul y, z            ; 55
0EE1: xor x, y            ; BD
0EE2: store $0025, x      ; 10 25 00
0EE5: nop                 ; 00
0EE6: nop                 ; 00
0EE7: nop                 ; 00
0EE8: nop                 ; 00
0EE9: nop                 ; 00
0EEA: nop                 ; 00
0EEB: nop                 ; 00
0EEC: nop                 ; 00
0EED: nop                 ; 00
0EEE: nop                 ; 00
0EEF: nop                 ; 00
0EF0: nop                 ; FC
0EF1: nop                 ; FF
0EF2: mul y, z            ; 55
0EF3: or z, w             ; AD
0EF4: or y, a             ; AA
0EF5: or y, a             ; AA
0EF6: or y, a             ; AA
0EF7: push y              ; 02
0EF8: push x              ; 01
0EF9: sub w, x            ; 44
0EFA: store $5244, y      ; 11 44 52
0EFD: jmp.z $54AF         ; F5 AF 54
0F00: cmp w, z            ; 82
0F01: mul x, z            ; 50
0F02: xor x, y            ; BD
0F03: nop                 ; 00
0F04: store $0000, x      ; 10 00 00
0F07: and a, y            ; A0
0F08: not w               ; BA
0F09: add w, x            ; 2B
0F0A: sub a, y            ; 4A
0F0B: store $0000, z      ; 12 00 00
0F0E: nop                 ; 00
0F0F: nop                 ; 00
0F10: nop                 ; 00
0F11: nop                 ; 00
0F12: nop                 ; 00
0F13: nop                 ; 00
0F14: nop                 ; 00
0F15: nop                 ; 00
0F16: nop                 ; 00
0F17: nop                 ; 00
0F18: nop                 ; FC
0F19: nop                 ; FF
0F1A: or y, a             ; AA
0F1B: inc w               ; 6A
0F1C: mul y, z            ; 55
0F1D: mul y, z            ; 55
0F1E: add y, a            ; 25
0F1F: add y, x            ; 21
0F20: mul y, y            ; 54
0F21: pop w               ; 09
0F22: cmp w, a            ; 84
0F23: add z, z            ; 28
0F24: sub a, x            ; 49
0F25: jmp x, y            ; EA
0F26: mul w, z            ; 5F
0F27: mul y, x            ; 53
0F28: add z, w            ; 29
0F29: xor y, y            ; C2
0F2A: nop                 ; FE
0F2B: pop y               ; 07
0F2C: nop                 ; 00
0F2D: nop                 ; 00
0F2E: nop                 ; 00
0F2F: sub z, y            ; 40
0F30: shl z               ; D7
0F31: shl y               ; D6
0F32: and x, a            ; 92
0F33: nop                 ; 00
0F34: nop                 ; 00
0F35: push w              ; 04
0F36: nop                 ; 00
0F37: nop                 ; 00
0F38: nop                 ; 00
0F39: nop                 ; 00
0F3A: nop                 ; 00
0F3B: nop                 ; 00
0F3C: nop                 ; 00
0F3D: nop                 ; 00
0F3E: nop                 ; 00
0F3F: nop                 ; 00
0F40: nop                 ; FC
0F41: nop                 ; FF
0F42: inc w               ; 6A
0F43: and y, w            ; 95
0F44: or y, a             ; AA
0F45: or y, a             ; AA
0F46: or y, a             ; AA
0F47: pop a               ; 0A
0F48: mul x, z            ; 50
0F49: add y, w            ; 24
0F4A: mul x, w            ; 51
0F4B: sub z, w            ; 42
0F4C: mul y, z            ; 55
0F4D: jmp.z $ACFF         ; F5 FF AC
0F50: sub a, y            ; 4A
0F51: sub a, x            ; 49
0F52: nop                 ; FD
0F53: sub w, y            ; 45
0F54: push w              ; 04
0F55: nop                 ; 00
0F56: pop z               ; 08
0F57: xor x, a            ; C0
0F58: or a, z             ; B5
0F59: cmp y, a            ; 7A
0F5A: add y, w            ; 24
0F5B: or x, z             ; A4
0F5C: or y, a             ; AA
0F5D: push a              ; 05
0F5E: nop                 ; 00
0F5F: nop                 ; 00
0F60: nop                 ; 00
0F61: nop                 ; 00
0F62: nop                 ; 00
0F63: nop                 ; 00
0F64: nop                 ; 00
0F65: nop                 ; 00
0F66: nop                 ; 00
0F67: nop                 ; 00
0F68: nop                 ; FC
0F69: nop                 ; FF
0F6A: and y, w            ; 95
0F6B: inc w               ; 6A
0F6C: mul y, z            ; 55
0F6D: sub a, x            ; 49
0F6E: and x, a            ; 92
0F6F: push w              ; 04
0F70: push y              ; 02
0F71: push x              ; 01
0F72: cmp w, a            ; 84
0F73: mul y, y            ; 54
0F74: mul y, z            ; 55
0F75: jmp $57FF, y        ; ED FF 57
0F78: mul y, z            ; 55
0F79: and x, a            ; 92
0F7A: jmp x, y            ; EA
0F7B: add x, w            ; 1F
0F7C: nop                 ; 00
0F7D: store $8000, x      ; 10 00 80
0F80: or z, a             ; AE
0F81: or z, w             ; AD
0F82: sub a, x            ; 49
0F83: mul x, w            ; 51
0F84: add z, w            ; 29
0F85: store $0000, a      ; 14 00 00
0F88: nop                 ; 00
0F89: nop                 ; 00
0F8A: nop                 ; 00
0F8B: nop                 ; 00
0F8C: nop                 ; 00
0F8D: nop                 ; 00
0F8E: nop                 ; 00
0F8F: nop                 ; 00
0F90: nop                 ; FC
0F91: nop                 ; FF
0F92: inc w               ; 6A
0F93: and y, w            ; 95
0F94: or y, a             ; AA
0F95: or y, a             ; AA
0F96: or y, a             ; AA
0F97: sub a, y            ; 4A
0F98: sub z, y            ; 40
0F99: add x, a            ; 20
0F9A: mul x, z            ; 50
0F9B: add z, a            ; 2A
0F9C: mul y, z            ; 55
0F9D: nop                 ; FB
0F9E: nop                 ; FF
0F9F: not a               ; BB
0FA0: or y, a             ; AA
0FA1: push w              ; 04
0FA2: jmp.lt $002F        ; F4 2F 00
0FA5: cmp w, z            ; 82
0FA6: nop                 ; 00
0FA7: nop                 ; 00
0FA8: jmp z, w            ; EB
0FA9: shl y               ; D6
0FAA: and x, a            ; 92
0FAB: sub w, x            ; 44
0FAC: sub a, y            ; 4A
0FAD: call $0000          ; 15 00 00
0FB0: nop                 ; 00
0FB1: nop                 ; 00
0FB2: nop                 ; 00
0FB3: nop                 ; 00
0FB4: nop                 ; 00
0FB5: nop                 ; 00
0FB6: nop                 ; 00
0FB7: nop                 ; 00
0FB8: nop                 ; FC
0FB9: nop                 ; FF
0FBA: and y, w            ; 95
0FBB: or y, a             ; AA
0FBC: or y, a             ; AA
0FBD: add y, w            ; 24
0FBE: sub a, x            ; 49
0FBF: and y, w            ; 95
0FC0: set w, $08          ; 1A 08
0FC2: cmp a, x            ; 85
0FC3: xor z, a            ; CA
0FC4: or y, a             ; AA
0FC5: int $FF             ; F6 FF
0FC7: jmp $ADAB, w        ; EF AB AD
0FCA: cmp a, w            ; 88
0FCB: nop                 ; FF
0FCC: add x, a            ; 20
0FCD: nop                 ; 00
0FCE: nop                 ; 00
0FCF: nop                 ; 00
0FD0: and w, z            ; 9D
0FD1: or a, z             ; B5
0FD2: sub a, y            ; 4A
0FD3: store $0029, z      ; 12 29 00
0FD6: nop                 ; 00
0FD7: nop                 ; 00
0FD8: nop                 ; 00
0FD9: nop                 ; 00
0FDA: nop                 ; 00
0FDB: nop                 ; 00
0FDC: nop                 ; 00
0FDD: nop                 ; 00
0FDE: nop                 ; 00
0FDF: nop                 ; 00
0FE0: nop                 ; FC
0FE1: nop                 ; FF
0FE2: or y, a             ; AA
0FE3: or y, a             ; AA
0FE4: sub a, y            ; 4A
0FE5: mul y, z            ; 55
0FE6: mul y, z            ; 55
0FE7: mul x, a            ; 52
0FE8: or x, w             ; A5
0FE9: sub w, x            ; 44
0FEA: mul x, z            ; 50
0FEB: add z, w            ; 29
0FEC: jmp.z $FFFD         ; F5 FD FF
0FEF: nop                 ; FF
0FF0: nop                 ; FE
0FF1: add w, a            ; 2F
0FF2: or y, a             ; AA
0FF3: xor x, z            ; BE
0FF4: push x              ; 01
0FF5: nop                 ; 00
0FF6: nop                 ; 00
0FF7: nop                 ; 00
0FF8: shl y               ; D6
0FF9: dec z               ; 6E
0FFA: call $A549          ; 15 49 A5
0FFD: nop                 ; 00
0FFE: nop                 ; 00
0FFF: nop                 ; 00
1000: nop                 ; 00
1001: nop                 ; 00
1002: nop                 ; 00
1003: nop                 ; 00
1004: nop                 ; 00
1005: nop                 ; 00
1006: nop                 ; 00
1007: nop                 ; 00
1008: nop                 ; FC
1009: nop                 ; FF
100A: or y, a             ; AA
100B: mul x, a            ; 52
100C: add z, a            ; 2A
100D: mul y, z            ; 55
100E: or x, w             ; A5
100F: or y, a             ; AA
1010: mul y, y            ; 54
1011: store $D525, y      ; 11 25 D5
1014: mul z, z            ; 5A
1015: nop                 ; FF
1016: nop                 ; FF
1017: nop                 ; FF
1018: nop                 ; FF
1019: and a, x            ; 9F
101A: store $877D, x      ; 10 7D 87
101D: nop                 ; 00
101E: sub z, y            ; 40
101F: nop                 ; 00
1020: mul z, a            ; 5C
1021: or a, z             ; B5
1022: mul a, z            ; 64
1023: store $6A54, z      ; 12 54 6A
1026: push x              ; 01
1027: nop                 ; 00
1028: nop                 ; 00
1029: nop                 ; 00
102A: nop                 ; 00
102B: nop                 ; 00
102C: nop                 ; 00
102D: nop                 ; 00
102E: nop                 ; 00
102F: nop                 ; 00
1030: nop                 ; FC
1031: nop                 ; FF
1032: and x, a            ; 92
1033: mul y, y            ; 54
1034: or y, w             ; A9
1035: and x, a            ; 92
1036: mul y, y            ; 54
1037: and y, w            ; 95
1038: or y, a             ; AA
1039: sub a, y            ; 4A
103A: sub a, y            ; 4A
103B: mul y, z            ; 55
103C: jmp $FFFF, w        ; EF FF FF
103F: nop                 ; FF
1040: nop                 ; FF
1041: cmp z, a            ; 7F
1042: and a, w            ; A2
1043: nop                 ; FC
1044: push a              ; 05
1045: nop                 ; 00
1046: push x              ; 01
1047: nop                 ; 00
1048: or a, w             ; B6
1049: cmpbit w            ; 8D 92
104B: sub w, x            ; 44
104C: sub z, y            ; 40
104D: add y, x            ; 21
104E: push x              ; 01
104F: nop                 ; 00
1050: nop                 ; 00
1051: nop                 ; 00
1052: nop                 ; 00
1053: nop                 ; 00
1054: nop                 ; 00
1055: nop                 ; 00
1056: nop                 ; 00
1057: nop                 ; 00
1058: nop                 ; FC
1059: nop                 ; FF
105A: mul y, z            ; 55
105B: and y, w            ; 95
105C: or y, a             ; AA
105D: or y, a             ; AA
105E: add z, a            ; 2A
105F: or y, w             ; A9
1060: or y, a             ; AA
1061: add z, a            ; 2A
1062: mul x, w            ; 51
1063: shl x               ; D5
1064: not w               ; BA
1065: nop                 ; FF
1066: nop                 ; FF
1067: nop                 ; FF
1068: nop                 ; FF
1069: nop                 ; FF
106A: pop w               ; 09
106B: jmp.eq $042F        ; F1 2F 04
106E: nop                 ; 00
106F: nop                 ; 00
1070: dec x               ; 6C
1071: add w, x            ; 2B
1072: mul y, y            ; 54
1073: and x, w            ; 91
1074: pop z               ; 08
1075: cmpbit x            ; 8A 00
1077: nop                 ; 00
1078: nop                 ; 00
1079: nop                 ; 00
107A: nop                 ; 00
107B: nop                 ; 00
107C: nop                 ; 00
107D: nop                 ; 00
107E: nop                 ; 00
107F: nop                 ; 00
1080: nop                 ; FC
1081: nop                 ; FF
1082: add y, w            ; 24
1083: or y, w             ; A9
1084: or y, a             ; AA
1085: add z, a            ; 2A
1086: mul y, z            ; 55
1087: mul y, z            ; 55
1088: mul y, z            ; 55
1089: shl x               ; D5
108A: or y, a             ; AA
108B: cmp y, a            ; 7A
108C: nop                 ; FF
108D: nop                 ; FF
108E: nop                 ; FF
108F: nop                 ; FF
1090: nop                 ; FF
1091: nop                 ; FF
1092: sub w, y            ; 45
1093: ror x               ; E4
1094: set x, $00          ; 17 00
1096: nop                 ; 00
1097: nop                 ; 00
1098: or y, z             ; A8
1099: and y, a            ; 96
109A: add y, y            ; 22
109B: mul y, z            ; 55
109C: nop                 ; 00
109D: or y, w             ; A9
109E: push y              ; 02
109F: nop                 ; 00
10A0: nop                 ; 00
10A1: nop                 ; 00
10A2: nop                 ; 00
10A3: nop                 ; 00
10A4: nop                 ; 00
10A5: nop                 ; 00
10A6: nop                 ; 00
10A7: nop                 ; 00
10A8: nop                 ; FC
10A9: nop                 ; FF
10AA: mul y, z            ; 55
10AB: sub a, y            ; 4A
10AC: mul x, a            ; 52
10AD: or y, a             ; AA
10AE: mul x, a            ; 52
10AF: mul y, z            ; 55
10B0: mul y, z            ; 55
10B1: or a, z             ; B5
10B2: or y, a             ; AA
10B3: shl y               ; D6
10B4: nop                 ; FF
10B5: nop                 ; FF
10B6: nop                 ; FF
10B7: nop                 ; FF
10B8: nop                 ; FF
10B9: nop                 ; FF
10BA: cmp w, w            ; 83
10BB: cmp a, w            ; 88
10BC: xor x, w            ; BF
10BD: store $0000, x      ; 10 00 00
10C0: xor a, x            ; D0
10C1: not w               ; BA
10C2: sub w, a            ; 48
10C3: cmp a, x            ; 85
10C4: nop                 ; 00
10C5: add y, y            ; 22
10C6: push x              ; 01
10C7: nop                 ; 00
10C8: nop                 ; 00
10C9: nop                 ; 00
10CA: nop                 ; 00
10CB: nop                 ; 00
10CC: nop                 ; 00
10CD: nop                 ; 00
10CE: nop                 ; 00
10CF: nop                 ; 00
10D0: nop                 ; FC
10D1: nop                 ; FF
10D2: sub a, x            ; 49
10D3: or y, w             ; A9
10D4: or y, a             ; AA
10D5: or y, a             ; AA
10D6: or y, a             ; AA
10D7: or y, a             ; AA
10D8: or y, a             ; AA
10D9: shl y               ; D6
10DA: mul y, w            ; 56
10DB: nop                 ; FB
10DC: nop                 ; FF
10DD: nop                 ; FF
10DE: nop                 ; FF
10DF: nop                 ; FF
10E0: nop                 ; FF
10E1: nop                 ; FF
10E2: push a              ; 05
10E3: sub z, w            ; 42
10E4: nop                 ; FF
10E5: push x              ; 01
10E6: sub z, y            ; 40
10E7: nop                 ; 00
10E8: mul x, a            ; 52
10E9: call $2952          ; 15 52 29
10EC: nop                 ; 00
10ED: cmp a, w            ; 88
10EE: nop                 ; 00
10EF: nop                 ; 00
10F0: nop                 ; 00
10F1: nop                 ; 00
10F2: nop                 ; 00
10F3: nop                 ; 00
10F4: nop                 ; 00
10F5: nop                 ; 00
10F6: nop                 ; 00
10F7: nop                 ; 00
10F8: nop                 ; FC
10F9: nop                 ; FF
10FA: add z, a            ; 2A
10FB: add y, a            ; 25
10FC: and y, w            ; 95
10FD: or y, a             ; AA
10FE: or y, a             ; AA
10FF: or y, a             ; AA
1100: or y, a             ; AA
1101: or a, z             ; B5
1102: nop                 ; FD
1103: shr a               ; DE
1104: nop                 ; FF
1105: nop                 ; FF
1106: nop                 ; FF
1107: nop                 ; FF
1108: nop                 ; FF
1109: nop                 ; FF
110A: add y, x            ; 21
110B: push w              ; 04
110C: cmp z, y            ; 7C
110D: pop y               ; 07
110E: nop                 ; 00
110F: nop                 ; 00
1110: and a, y            ; A0
1111: jmp z, w            ; EB
1112: sub w, x            ; 44
1113: or y, a             ; AA
1114: push x              ; 01
1115: add y, a            ; 25
1116: push a              ; 05
1117: nop                 ; 00
1118: nop                 ; 00
1119: nop                 ; 00
111A: nop                 ; 00
111B: nop                 ; 00
111C: nop                 ; 00
111D: nop                 ; 00
111E: nop                 ; 00
111F: nop                 ; 00
1120: nop                 ; FC
1121: nop                 ; FF
1122: mul x, a            ; 52
1123: mul y, z            ; 55
1124: or y, w             ; A9
1125: or y, a             ; AA
1126: sub a, y            ; 4A
1127: mul y, z            ; 55
1128: or a, z             ; B5
1129: shl y               ; D6
112A: mul y, w            ; 56
112B: resume              ; F7 FF
112D: nop                 ; FF
112E: nop                 ; FF
112F: nop                 ; FF
1130: nop                 ; FF
1131: mul w, z            ; 5F
1132: cmp w, a            ; 84
1133: and x, z            ; 90
1134: nop                 ; FA
1135: load z, $0000       ; 0D 00 00
1138: or w, y             ; B0
1139: sub y, x            ; 3A
113A: and x, a            ; 92
113B: cmp y, a            ; 7A
113C: push z              ; 03
113D: and x, z            ; 90
113E: push y              ; 02
113F: nop                 ; 00
1140: nop                 ; 00
1141: nop                 ; 00
1142: nop                 ; 00
1143: nop                 ; 00
1144: nop                 ; 00
1145: nop                 ; 00
1146: nop                 ; 00
1147: nop                 ; 00
1148: nop                 ; FC
1149: nop                 ; FF
114A: and y, w            ; 95
114B: and x, a            ; 92
114C: or y, a             ; AA
114D: sub a, y            ; 4A
114E: mul y, z            ; 55
114F: mul y, z            ; 55
1150: dec y               ; 6D
1151: not a               ; BB
1152: nop                 ; FD
1153: nop                 ; FF
1154: nop                 ; FF
1155: nop                 ; FF
1156: nop                 ; FF
1157: nop                 ; FF
1158: nop                 ; FF
1159: add w, a            ; 2F
115A: push x              ; 01
115B: add a, z            ; 32
115C: rol y               ; E0
115D: sub x, z            ; 37
115E: nop                 ; 00
115F: nop                 ; 00
1160: and a, y            ; A0
1161: sub a, z            ; 4B
1162: sub a, x            ; 49
1163: shl z               ; D7
1164: load w, $054A       ; 0E 4A 05
1167: nop                 ; 00
1168: nop                 ; 00
1169: nop                 ; 00
116A: nop                 ; 00
116B: nop                 ; 00
116C: nop                 ; 00
116D: nop                 ; 00
116E: nop                 ; 00
116F: nop                 ; 00
1170: nop                 ; FC
1171: nop                 ; FF
1172: mul y, y            ; 54
1173: or y, a             ; AA
1174: mul x, a            ; 52
1175: or y, a             ; AA
1176: or y, a             ; AA
1177: or y, a             ; AA
1178: shl x               ; D5
1179: jmp $FFFE, z        ; EE FE FF
117C: nop                 ; FF
117D: nop                 ; FF
117E: nop                 ; FF
117F: nop                 ; FF
1180: nop                 ; FF
1181: and z, x            ; 97
1182: store $E811, x      ; 10 11 E8
1185: mul w, z            ; 5F
1186: nop                 ; 00
1187: nop                 ; 00
1188: or y, a             ; AA
1189: add z, x            ; 26
118A: or x, z             ; A4
118B: nop                 ; FD
118C: call $07B4          ; 15 B4 07
118F: nop                 ; 00
1190: nop                 ; 00
1191: nop                 ; 00
1192: nop                 ; 00
1193: nop                 ; 00
1194: nop                 ; 00
1195: nop                 ; 00
1196: nop                 ; 00
1197: nop                 ; 00
1198: nop                 ; FC
1199: nop                 ; FF
119A: sub a, y            ; 4A
119B: or x, w             ; A5
119C: mul y, y            ; 54
119D: mul y, z            ; 55
119E: mul y, z            ; 55
119F: mul y, z            ; 55
11A0: not a               ; BB
11A1: or a, z             ; B5
11A2: shr y               ; DB
11A3: nop                 ; FF
11A4: nop                 ; FF
11A5: nop                 ; FF
11A6: nop                 ; FF
11A7: nop                 ; FF
11A8: nop                 ; FF
11A9: add y, a            ; 25
11AA: push y              ; 02
11AB: cmp w, a            ; 84
11AC: nop                 ; 00
11AD: nop                 ; FF
11AE: push x              ; 01
11AF: cmp w, x            ; 80
11B0: shl y               ; D6
11B1: cmp a, a            ; 89
11B2: mul z, z            ; 5A
11B3: mul z, w            ; 5B
11B4: sub x, z            ; 37
11B5: jmp $000A, x        ; EC 0A 00
11B8: nop                 ; 00
11B9: nop                 ; 00
11BA: nop                 ; 00
11BB: nop                 ; 00
11BC: nop                 ; 00
11BD: nop                 ; 00
11BE: nop                 ; 00
11BF: nop                 ; 00
11C0: nop                 ; FC
11C1: nop                 ; FF
11C2: mul y, z            ; 55
11C3: add z, w            ; 29
11C4: mul y, z            ; 55
11C5: mul y, z            ; 55
11C6: mul y, z            ; 55
11C7: or a, z             ; B5
11C8: shl y               ; D6
11C9: shr a               ; DE
11CA: nop                 ; FF
11CB: nop                 ; FF
11CC: nop                 ; FF
11CD: nop                 ; FF
11CE: nop                 ; FF
11CF: nop                 ; FF
11D0: nop                 ; FF
11D1: mul y, z            ; 55
11D2: cmp w, y            ; 81
11D3: nop                 ; 00
11D4: sub z, y            ; 40
11D5: xor x, w            ; BF
11D6: push y              ; 02
11D7: mul w, w            ; 60
11D8: sub y, w            ; 3D
11D9: mul x, a            ; 52
11DA: jmp x, y            ; EA
11DB: jmp $B4AD, y        ; ED AD B4
11DE: pop x               ; 06
11DF: nop                 ; 00
11E0: nop                 ; 00
11E1: nop                 ; 00
11E2: nop                 ; 00
11E3: nop                 ; 00
11E4: nop                 ; 00
11E5: nop                 ; 00
11E6: nop                 ; 00
11E7: nop                 ; 00
11E8: nop                 ; FC
11E9: nop                 ; FF
11EA: mul x, a            ; 52
11EB: or y, a             ; AA
11EC: sub a, y            ; 4A
11ED: mul y, z            ; 55
11EE: mul y, z            ; 55
11EF: dec y               ; 6D
11F0: not a               ; BB
11F1: jmp.z $FFFE         ; F5 FE FF
11F4: nop                 ; FF
11F5: nop                 ; FF
11F6: nop                 ; FF
11F7: nop                 ; FF
11F8: cmp z, a            ; 7F
11F9: xor y, x            ; C1
11FA: pop z               ; 08
11FB: add y, a            ; 25
11FC: push y              ; 02
11FD: nop                 ; FC
11FE: pop y               ; 07
11FF: mul y, y            ; 54
1200: xor w, x            ; CB
1201: or x, z             ; A4
1202: cmp x, a            ; 75
1203: cmp z, a            ; 7F
1204: mul z, w            ; 5B
1205: or z, w             ; AD
1206: load z, $0000       ; 0D 00 00
1209: nop                 ; 00
120A: nop                 ; 00
120B: nop                 ; 00
120C: nop                 ; 00
120D: nop                 ; 00
120E: nop                 ; 00
120F: nop                 ; 00
1210: nop                 ; FC
1211: nop                 ; FF
1212: or y, a             ; AA
1213: sub a, y            ; 4A
1214: mul y, z            ; 55
1215: mul y, z            ; 55
1216: or a, z             ; B5
1217: or y, a             ; AA
1218: jmp $FFBE, y        ; ED BE FF
121B: nop                 ; FF
121C: nop                 ; FF
121D: nop                 ; FF
121E: nop                 ; FF
121F: nop                 ; FF
1220: xor x, w            ; BF
1221: jmp.lt $0003        ; F4 03 00
1224: nop                 ; 00
1225: nop                 ; FA
1226: sub a, a            ; 4D
1227: jmp x, y            ; EA
1228: mul y, z            ; 55
1229: shr x               ; DA
122A: shr x               ; DA
122B: shl x               ; D5
122C: dec w               ; 6F
122D: or a, z             ; B5
122E: pop a               ; 0A
122F: nop                 ; 00
1230: nop                 ; 00
1231: nop                 ; 00
1232: nop                 ; 00
1233: nop                 ; 00
1234: nop                 ; 00
1235: nop                 ; 00
1236: nop                 ; 00
1237: nop                 ; 00
1238: nop                 ; FC
1239: nop                 ; FF
123A: and y, z            ; 94
123B: or y, a             ; AA
123C: mul y, y            ; 54
123D: mul y, z            ; 55
123E: or z, w             ; AD
123F: dec y               ; 6D
1240: not a               ; BB
1241: resume              ; F7 FF
1243: nop                 ; FF
1244: nop                 ; FF
1245: nop                 ; FF
1246: nop                 ; FF
1247: nop                 ; FE
1248: mul w, z            ; 5F
1249: xor y, x            ; C1
124A: set x, $85          ; 17 85
124C: nop                 ; 00
124D: rol y               ; E0
124E: mul z, w            ; 5B
124F: mul x, w            ; 51
1250: mul y, z            ; 55
1251: or a, z             ; B5
1252: cmp y, y            ; 77
1253: nop                 ; FF
1254: nop                 ; FA
1255: jmp $001E, z        ; EE 1E 00
1258: nop                 ; 00
1259: nop                 ; 00
125A: nop                 ; 00
125B: nop                 ; 00
125C: nop                 ; 00
125D: nop                 ; 00
125E: nop                 ; 00
125F: nop                 ; 00
1260: nop                 ; FC
1261: nop                 ; FF
1262: mul y, z            ; 55
1263: or y, w             ; A9
1264: or y, a             ; AA
1265: or y, a             ; AA
1266: or a, z             ; B5
1267: or a, w             ; B6
1268: jmp $FFFE, y        ; ED FE FF
126B: nop                 ; FF
126C: nop                 ; FF
126D: nop                 ; FF
126E: or w, x             ; AF
126F: jmp z, w            ; EB
1270: add w, a            ; 2F
1271: jmp.lt $2003        ; F4 03 20
1274: pop z               ; 08
1275: xor a, x            ; D0
1276: dec w               ; 6F
1277: xor x, y            ; BD
1278: cmp w, x            ; 80
1279: shr a               ; DE
127A: shr x               ; DA
127B: mul y, z            ; 55
127C: or w, x             ; AF
127D: or a, z             ; B5
127E: push x              ; 01
127F: nop                 ; 00
1280: nop                 ; 00
1281: nop                 ; 00
1282: nop                 ; 00
1283: nop                 ; 00
1284: nop                 ; 00
1285: nop                 ; 00
1286: nop                 ; 00
1287: nop                 ; 00
1288: nop                 ; FC
1289: nop                 ; FF
128A: mul x, a            ; 52
128B: and y, w            ; 95
128C: or y, a             ; AA
128D: or y, a             ; AA
128E: shl y               ; D6
128F: dec y               ; 6D
1290: not a               ; BB
1291: nop                 ; FD
1292: nop                 ; FF
1293: nop                 ; FF
1294: nop                 ; FF
1295: nop                 ; FF
1296: nop                 ; FB
1297: mul z, z            ; 5A
1298: sub a, z            ; 4B
1299: xor y, x            ; C1
129A: push a              ; 05
129B: call $0000          ; 15 00 00
129E: rol x               ; DF
129F: mul y, a            ; 57
12A0: push y              ; 02
12A1: or a, y             ; B4
12A2: cmp y, y            ; 77
12A3: nop                 ; FF
12A4: nop                 ; FD
12A5: mul z, w            ; 5B
12A6: call $0000          ; 15 00 00
12A9: nop                 ; 00
12AA: nop                 ; 00
12AB: nop                 ; 00
12AC: nop                 ; 00
12AD: nop                 ; 00
12AE: nop                 ; 00
12AF: nop                 ; 00
12B0: nop                 ; FC
12B1: nop                 ; FF
12B2: or y, a             ; AA
12B3: or y, a             ; AA
12B4: or y, a             ; AA
12B5: inc w               ; 6A
12B6: dec y               ; 6D
12B7: not a               ; BB
12B8: jmp $FFFF, y        ; ED FF FF
12BB: nop                 ; FF
12BC: nop                 ; FF
12BD: cmp z, a            ; 7F
12BE: add w, z            ; 2D
12BF: mul y, z            ; 55
12C0: add y, a            ; 25
12C1: ror a               ; E8
12C2: sub z, a            ; 43
12C3: add a, x            ; 30
12C4: cmp w, x            ; 80
12C5: sub z, y            ; 40
12C6: cmp x, a            ; 75
12C7: add w, z            ; 2D
12C8: nop                 ; 00
12C9: shr x               ; DA
12CA: jmp x, y            ; EA
12CB: cmp z, a            ; 7F
12CC: mul y, a            ; 57
12CD: mul y, a            ; 57
12CE: push w              ; 04
12CF: nop                 ; 00
12D0: nop                 ; 00
12D1: nop                 ; 00
12D2: nop                 ; 00
12D3: nop                 ; 00
12D4: nop                 ; 00
12D5: nop                 ; 00
12D6: nop                 ; 00
12D7: nop                 ; 00
12D8: nop                 ; FC
12D9: nop                 ; FF
12DA: add z, a            ; 2A
12DB: mul y, z            ; 55
12DC: mul y, z            ; 55
12DD: mul y, z            ; 55
12DE: shr y               ; DB
12DF: dec z               ; 6E
12E0: not a               ; BB
12E1: nop                 ; FF
12E2: nop                 ; FF
12E3: nop                 ; FF
12E4: nop                 ; FF
12E5: rol x               ; DF
12E6: shr y               ; DB
12E7: mul y, z            ; 55
12E8: pop z               ; 08
12E9: xor x, a            ; C0
12EA: load x, $1092       ; 0B 92 10
12ED: nop                 ; 00
12EE: shr w               ; DD
12EF: sub y, y            ; 3B
12F0: add x, a            ; 20
12F1: xor a, x            ; D0
12F2: or w, x             ; AF
12F3: nop                 ; FF
12F4: nop                 ; FD
12F5: pop a               ; 0A
12F6: add a, y            ; 31
12F7: nop                 ; 00
12F8: nop                 ; 00
12F9: nop                 ; 00
12FA: nop                 ; 00
12FB: nop                 ; 00
12FC: nop                 ; 00
12FD: nop                 ; 00
12FE: nop                 ; 00
12FF: nop                 ; 00
1300: nop                 ; FC
1301: nop                 ; FF
1302: or y, a             ; AA
1303: or y, a             ; AA
1304: or y, a             ; AA
1305: shr x               ; DA
1306: inc w               ; 6A
1307: not a               ; BB
1308: jmp $FFFF, y        ; ED FF FF
130B: nop                 ; FF
130C: nop                 ; FF
130D: cmp y, y            ; 77
130E: mul y, z            ; 55
130F: pop a               ; 0A
1310: sub z, z            ; 41
1311: jmp.neq $0100       ; F2 00 01
1314: nop                 ; 00
1315: nop                 ; 00
1316: cmp x, w            ; 74
1317: add w, z            ; 2D
1318: pop z               ; 08
1319: and a, y            ; A0
131A: nop                 ; FA
131B: nop                 ; FF
131C: jmp $1EA7, w        ; EF A7 1E
131F: nop                 ; 00
1320: nop                 ; 00
1321: nop                 ; 00
1322: nop                 ; 00
1323: nop                 ; 00
1324: nop                 ; 00
1325: nop                 ; 00
1326: nop                 ; 00
1327: nop                 ; 00
1328: nop                 ; FC
1329: nop                 ; FF
132A: or y, a             ; AA
132B: or y, a             ; AA
132C: or y, a             ; AA
132D: mul y, w            ; 56
132E: xor x, y            ; BD
132F: dec y               ; 6D
1330: nop                 ; FF
1331: nop                 ; FB
1332: nop                 ; FF
1333: nop                 ; FF
1334: dec w               ; 6F
1335: mul w, x            ; 5D
1336: or z, x             ; AB
1337: add y, a            ; 25
1338: push w              ; 04
1339: xor x, a            ; C0
133A: push a              ; 05
133B: sub w, x            ; 44
133C: xor a, x            ; D0
133D: push w              ; 04
133E: xor a, x            ; D0
133F: mul z, w            ; 5B
1340: nop                 ; 00
1341: cmp w, a            ; 84
1342: xor x, w            ; BF
1343: nop                 ; FF
1344: mul w, z            ; 5F
1345: and w, z            ; 9D
1346: inc w               ; 6A
1347: nop                 ; 00
1348: nop                 ; 00
1349: nop                 ; 00
134A: nop                 ; 00
134B: nop                 ; 00
134C: nop                 ; 00
134D: nop                 ; 00
134E: nop                 ; 00
134F: nop                 ; 00
1350: nop                 ; FC
1351: nop                 ; FF
1352: or y, a             ; AA
1353: or y, a             ; AA
1354: or y, a             ; AA
1355: inc w               ; 6A
1356: jmp z, w            ; EB
1357: or a, w             ; B6
1358: dec y               ; 6D
1359: nop                 ; FF
135A: nop                 ; FF
135B: nop                 ; FF
135C: xor x, w            ; BF
135D: cmp y, y            ; 77
135E: mul y, z            ; 55
135F: push y              ; 02
1360: nop                 ; 00
1361: add z, z            ; 28
1362: cmp w, x            ; 80
1363: nop                 ; 00
1364: mul x, a            ; 52
1365: nop                 ; 00
1366: mul w, w            ; 60
1367: add w, a            ; 2F
1368: nop                 ; 00
1369: nop                 ; 00
136A: nop                 ; FD
136B: resume              ; F7 FB
136D: cmp y, y            ; 77
136E: add x, y            ; 1D
136F: nop                 ; 00
1370: nop                 ; 00
1371: nop                 ; 00
1372: nop                 ; 00
1373: nop                 ; 00
1374: nop                 ; 00
1375: nop                 ; 00
1376: nop                 ; 00
1377: nop                 ; 00
1378: nop                 ; FC
1379: nop                 ; FF
137A: mul y, z            ; 55
137B: mul y, z            ; 55
137C: shl x               ; D5
137D: or y, a             ; AA
137E: or z, w             ; AD
137F: jmp $FFFF, y        ; ED FF FF
1382: nop                 ; FF
1383: nop                 ; FF
1384: jmp $AAAA, w        ; EF AA AA
1387: cmpbit x            ; 8A 90
1389: sub z, y            ; 40
138A: nop                 ; 00
138B: store $0350, z      ; 12 50 03
138E: cmp w, x            ; 80
138F: nop                 ; FA
1390: push y              ; 02
1391: nop                 ; 00
1392: cmp y, x            ; 76
1393: nop                 ; FF
1394: or z, a             ; AE
1395: mul w, x            ; 5D
1396: cmp y, y            ; 77
1397: nop                 ; 00
1398: nop                 ; 00
1399: nop                 ; 00
139A: nop                 ; 00
139B: nop                 ; 00
139C: nop                 ; 00
139D: nop                 ; 00
139E: nop                 ; 00
139F: nop                 ; 00
13A0: nop                 ; FC
13A1: nop                 ; FF
13A2: or y, a             ; AA
13A3: or y, a             ; AA
13A4: or y, a             ; AA
13A5: or a, w             ; B6
13A6: cmp y, x            ; 76
13A7: not x               ; B7
13A8: int $FF             ; F6 FF
13AA: nop                 ; FF
13AB: xor x, w            ; BF
13AC: or a, z             ; B5
13AD: or y, a             ; AA
13AE: add z, a            ; 2A
13AF: push x              ; 01
13B0: nop                 ; 00
13B1: nop                 ; 00
13B2: nop                 ; 00
13B3: sub z, z            ; 41
13B4: inc y               ; 68
13B5: push a              ; 05
13B6: nop                 ; 00
13B7: or w, x             ; AF
13B8: pop w               ; 09
13B9: nop                 ; 00
13BA: nop                 ; FC
13BB: mul w, z            ; 5F
13BC: nop                 ; FB
13BD: int $2A             ; F6 2A
13BF: nop                 ; 00
13C0: nop                 ; 00
13C1: nop                 ; 00
13C2: nop                 ; 00
13C3: nop                 ; 00
13C4: nop                 ; 00
13C5: nop                 ; 00
13C6: nop                 ; 00
13C7: nop                 ; 00
13C8: nop                 ; FC
13C9: nop                 ; FF
13CA: or y, a             ; AA
13CB: or y, a             ; AA
13CC: or y, a             ; AA
13CD: inc w               ; 6A
13CE: shr y               ; DB
13CF: jmp $DDBF, y        ; ED BF DD
13D2: nop                 ; FF
13D3: cmp y, x            ; 76
13D4: or w, x             ; AF
13D5: or y, a             ; AA
13D6: or y, a             ; AA
13D7: push w              ; 04
13D8: push y              ; 02
13D9: nop                 ; 00
13DA: nop                 ; 00
13DB: pop z               ; 08
13DC: mul x, z            ; 50
13DD: and y, w            ; 95
13DE: nop                 ; 00
13DF: cmp y, z            ; 78
13E0: and z, x            ; 97
13E1: add x, a            ; 20
13E2: cmp y, z            ; 78
13E3: nop                 ; FD
13E4: not x               ; B7
13E5: xor x, w            ; BF
13E6: shr y               ; DB
13E7: nop                 ; 00
13E8: nop                 ; 00
13E9: nop                 ; 00
13EA: nop                 ; 00
13EB: nop                 ; 00
13EC: nop                 ; 00
13ED: nop                 ; 00
13EE: nop                 ; 00
13EF: nop                 ; 00
13F0: nop                 ; FC
13F1: nop                 ; FF
13F2: mul y, z            ; 55
13F3: mul y, z            ; 55
13F4: dec y               ; 6D
13F5: shr y               ; DB
13F6: mul y, w            ; 56
13F7: not x               ; B7
13F8: nop                 ; FA
13F9: nop                 ; FF
13FA: or a, w             ; B6
13FB: rol x               ; DF
13FC: mul y, z            ; 55
13FD: mul y, z            ; 55
13FE: add y, a            ; 25
13FF: add y, a            ; 25
1400: nop                 ; 00
1401: nop                 ; 00
1402: cmp w, x            ; 80
1403: mul x, a            ; 52
1404: shr x               ; DA
1405: call $EA00          ; 15 00 EA
1408: load a, $D800       ; 0F 00 D8
140B: shl z               ; D7
140C: shr a               ; DE
140D: shl x               ; D5
140E: dec z               ; 6E
140F: nop                 ; 00
1410: nop                 ; 00
1411: nop                 ; 00
1412: nop                 ; 00
1413: nop                 ; 00
1414: nop                 ; 00
1415: nop                 ; 00
1416: nop                 ; 00
1417: nop                 ; 00
1418: nop                 ; FC
1419: nop                 ; FF
141A: mul y, z            ; 55
141B: mul y, z            ; 55
141C: or z, x             ; AB
141D: or y, a             ; AA
141E: jmp $DFED, y        ; ED ED DF
1421: resume              ; F7 EF
1423: cmp x, a            ; 75
1424: mul y, a            ; 57
1425: and y, w            ; 95
1426: sub a, y            ; 4A
1427: cmp a, a            ; 89
1428: add x, a            ; 20
1429: pop z               ; 08
142A: nop                 ; 00
142B: store $5568, x      ; 10 68 55
142E: push y              ; 02
142F: xor a, x            ; D0
1430: cmp z, a            ; 7F
1431: nop                 ; 00
1432: jmp.lt $75BA        ; F4 BA 75
1435: nop                 ; FF
1436: or a, x             ; B3
1437: nop                 ; 00
1438: nop                 ; 00
1439: nop                 ; 00
143A: nop                 ; 00
143B: nop                 ; 00
143C: nop                 ; 00
143D: nop                 ; 00
143E: nop                 ; 00
143F: nop                 ; 00
1440: nop                 ; FC
1441: nop                 ; FF
1442: or y, a             ; AA
1443: inc w               ; 6A
1444: shl x               ; D5
1445: or a, w             ; B6
1446: mul z, z            ; 5A
1447: xor x, y            ; BD
1448: cmp y, a            ; 7A
1449: shr w               ; DD
144A: not w               ; BA
144B: shr a               ; DE
144C: mul y, z            ; 55
144D: add y, y            ; 22
144E: mul y, y            ; 54
144F: add y, a            ; 25
1450: push y              ; 02
1451: sub z, y            ; 40
1452: nop                 ; 00
1453: sub a, x            ; 49
1454: mul z, x            ; 58
1455: mul y, a            ; 57
1456: nop                 ; 00
1457: rol y               ; E0
1458: xor x, w            ; BF
1459: and x, z            ; 90
145A: nop                 ; FF
145B: shr y               ; DB
145C: nop                 ; FF
145D: or z, w             ; AD
145E: shr a               ; DE
145F: nop                 ; 00
1460: nop                 ; 00
1461: nop                 ; 00
1462: nop                 ; 00
1463: nop                 ; 00
1464: nop                 ; 00
1465: nop                 ; 00
1466: nop                 ; 00
1467: nop                 ; 00
1468: nop                 ; FC
1469: nop                 ; FF
146A: mul y, z            ; 55
146B: or z, w             ; AD
146C: mul z, z            ; 5A
146D: shl x               ; D5
146E: dec z               ; 6E
146F: jmp z, w            ; EB
1470: shl z               ; D7
1471: xor x, w            ; BF
1472: jmp $5AB5, w        ; EF B5 5A
1475: sub a, x            ; 49
1476: sub z, z            ; 41
1477: sub a, y            ; 4A
1478: and a, y            ; A0
1479: push y              ; 02
147A: nop                 ; 00
147B: push y              ; 02
147C: ror a               ; E8
147D: mul w, x            ; 5D
147E: store $7F00, w      ; 13 00 7F
1481: push z              ; 03
1482: xor x, y            ; BD
1483: int $AF             ; F6 AF
1485: nop                 ; FB
1486: inc a               ; 6B
1487: push x              ; 01
1488: nop                 ; 00
1489: nop                 ; 00
148A: nop                 ; 00
148B: nop                 ; 00
148C: nop                 ; 00
148D: nop                 ; 00
148E: nop                 ; 00
148F: nop                 ; 00
1490: nop                 ; FC
1491: nop                 ; FF
1492: or y, a             ; AA
1493: or y, a             ; AA
1494: mul y, z            ; 55
1495: mul z, w            ; 5B
1496: or z, x             ; AB
1497: or z, w             ; AD
1498: cmp y, a            ; 7A
1499: jmp.z $AB5A         ; F5 5A AB
149C: mul y, w            ; 56
149D: add y, a            ; 25
149E: add z, a            ; 2A
149F: push x              ; 01
14A0: pop z               ; 08
14A1: nop                 ; 00
14A2: and x, a            ; 92
14A3: nop                 ; 00
14A4: not z               ; B9
14A5: mul y, w            ; 56
14A6: push x              ; 01
14A7: cmp w, x            ; 80
14A8: nop                 ; FE
14A9: jmp $EBFF, y        ; ED FF EB
14AC: resume              ; F7 AE
14AE: or z, w             ; AD
14AF: push x              ; 01
14B0: nop                 ; 00
14B1: nop                 ; 00
14B2: nop                 ; 00
14B3: nop                 ; 00
14B4: nop                 ; 00
14B5: nop                 ; 00
14B6: nop                 ; 00
14B7: nop                 ; 00
14B8: nop                 ; FC
14B9: nop                 ; FF
14BA: inc w               ; 6A
14BB: or a, z             ; B5
14BC: shl y               ; D6
14BD: inc w               ; 6A
14BE: jmp.z $D776         ; F5 76 D7
14C1: or w, x             ; AF
14C2: or a, w             ; B6
14C3: or y, a             ; AA
14C4: or a, z             ; B5
14C5: cmpbit x            ; 8A 40
14C7: mul y, y            ; 54
14C8: sub z, a            ; 43
14C9: and x, w            ; 91
14CA: push w              ; 04
14CB: add x, a            ; 20
14CC: or y, z             ; A8
14CD: cmp x, a            ; 75
14CE: sub a, a            ; 4D
14CF: nop                 ; 00
14D0: nop                 ; F8
14D1: rol x               ; DF
14D2: xor x, w            ; BF
14D3: jmp $7DDF, z        ; EE DF 7D
14D6: not a               ; BB
14D7: push y              ; 02
14D8: nop                 ; 00
14D9: nop                 ; 00
14DA: nop                 ; 00
14DB: nop                 ; 00
14DC: nop                 ; 00
14DD: nop                 ; 00
14DE: nop                 ; 00
14DF: nop                 ; 00
14E0: nop                 ; FC
14E1: nop                 ; FF
14E2: mul y, z            ; 55
14E3: mul y, z            ; 55
14E4: or z, w             ; AD
14E5: mul y, w            ; 56
14E6: mul z, w            ; 5B
14E7: shr y               ; DB
14E8: not w               ; BA
14E9: shr x               ; DA
14EA: shl x               ; D5
14EB: mul z, z            ; 5A
14EC: mul y, z            ; 55
14ED: add y, a            ; 25
14EE: store $1555, z      ; 12 55 15
14F1: sub w, x            ; 44
14F2: add x, a            ; 20
14F3: push a              ; 05
14F4: jmp x, y            ; EA
14F5: mul w, y            ; 5E
14F6: add y, a            ; 25
14F7: nop                 ; 00
14F8: nop                 ; FA
14F9: nop                 ; FF
14FA: nop                 ; FF
14FB: nop                 ; FB
14FC: cmp z, a            ; 7F
14FD: resume              ; F7 AF
14FF: nop                 ; 00
1500: nop                 ; 00
1501: nop                 ; 00
1502: nop                 ; 00
1503: nop                 ; 00
1504: nop                 ; 00
1505: nop                 ; 00
1506: nop                 ; 00
1507: nop                 ; 00
1508: nop                 ; FC
1509: nop                 ; FF
150A: or y, a             ; AA
150B: shl y               ; D6
150C: inc w               ; 6A
150D: or a, z             ; B5
150E: or z, w             ; AD
150F: or y, a             ; AA
1510: jmp $AD6B, z        ; EE 6B AD
1513: mul y, w            ; 56
1514: mul y, z            ; 55
1515: call $4AA4          ; 15 A4 4A
1518: push y              ; 02
1519: pop w               ; 09
151A: pop w               ; 09
151B: store $F5B8, x      ; 10 B8 F5
151E: sub x, z            ; 37
151F: push x              ; 01
1520: rol y               ; E0
1521: nop                 ; FF
1522: nop                 ; FE
1523: xor x, z            ; BE
1524: rol x               ; DF
1525: xor x, z            ; BE
1526: not w               ; BA
1527: push y              ; 02
1528: nop                 ; 00
1529: nop                 ; 00
152A: nop                 ; 00
152B: nop                 ; 00
152C: nop                 ; 00
152D: nop                 ; 00
152E: nop                 ; 00
152F: nop                 ; 00
1530: nop                 ; FC
1531: nop                 ; FF
1532: shr x               ; DA
1533: or y, a             ; AA
1534: mul z, z            ; 5A
1535: or z, x             ; AB
1536: or a, w             ; B6
1537: dec y               ; 6D
1538: or z, x             ; AB
1539: or a, w             ; B6
153A: or y, a             ; AA
153B: or y, a             ; AA
153C: or y, a             ; AA
153D: or y, a             ; AA
153E: or y, a             ; AA
153F: mul y, y            ; 54
1540: push x              ; 01
1541: sub z, y            ; 40
1542: add x, a            ; 20
1543: nop                 ; 00
1544: or y, z             ; A8
1545: mul w, y            ; 5E
1546: and w, z            ; 9D
1547: nop                 ; 00
1548: and a, y            ; A0
1549: resume              ; F7 FF
154B: rol x               ; DF
154C: jmp $2FEB, w        ; EF EB 2F
154F: nop                 ; 00
1550: mul y, y            ; 54
1551: push x              ; 01
1552: nop                 ; 00
1553: nop                 ; 00
1554: nop                 ; 00
1555: nop                 ; 00
1556: nop                 ; 00
1557: nop                 ; 00
1558: nop                 ; FC
1559: nop                 ; FF
155A: or y, a             ; AA
155B: inc w               ; 6A
155C: or z, x             ; AB
155D: shr x               ; DA
155E: inc w               ; 6A
155F: shl x               ; D5
1560: int $5A             ; F6 5A
1562: inc a               ; 6B
1563: mul y, z            ; 55
1564: mul y, z            ; 55
1565: mul y, z            ; 55
1566: mul y, z            ; 55
1567: or x, w             ; A5
1568: push w              ; 04
1569: nop                 ; 00
156A: push w              ; 04
156B: sub w, y            ; 45
156C: rol y               ; E0
156D: jmp z, w            ; EB
156E: jmp.z $4008         ; F5 08 40
1571: nop                 ; FF
1572: jmp $BFBF, w        ; EF BF BF
1575: shr a               ; DE
1576: or y, a             ; AA
1577: pop a               ; 0A
1578: or y, z             ; A8
1579: pop a               ; 0A
157A: nop                 ; 00
157B: nop                 ; 00
157C: nop                 ; 00
157D: nop                 ; 00
157E: nop                 ; 00
157F: nop                 ; 00
1580: nop                 ; FC
1581: nop                 ; FF
1582: or y, a             ; AA
1583: or z, w             ; AD
1584: inc w               ; 6A
1585: or z, x             ; AB
1586: or y, a             ; AA
1587: or a, w             ; B6
1588: mul z, z            ; 5A
1589: inc a               ; 6B
158A: or z, w             ; AD
158B: or y, a             ; AA
158C: or y, a             ; AA
158D: add z, a            ; 2A
158E: sub a, x            ; 49
158F: add z, w            ; 29
1590: cmp w, y            ; 81
1591: cmp w, x            ; 80
1592: add x, a            ; 20
1593: store $BE92, x      ; 10 92 BE
1596: mul y, z            ; 55
1597: push z              ; 03
1598: nop                 ; 00
1599: nop                 ; FF
159A: nop                 ; FF
159B: nop                 ; FF
159C: cmp x, a            ; 75
159D: cmp y, a            ; 7A
159E: sub a, z            ; 4B
159F: store $02F4, a      ; 14 F4 02
15A2: nop                 ; 00
15A3: nop                 ; 00
15A4: nop                 ; 00
15A5: nop                 ; 00
15A6: nop                 ; 00
15A7: nop                 ; 00
15A8: nop                 ; FC
15A9: nop                 ; FF
15AA: or z, x             ; AB
15AB: inc w               ; 6A
15AC: mul z, w            ; 5B
15AD: dec y               ; 6D
15AE: or z, w             ; AD
15AF: mul y, z            ; 55
15B0: mul y, a            ; 57
15B1: or z, w             ; AD
15B2: or y, a             ; AA
15B3: or y, a             ; AA
15B4: add z, a            ; 2A
15B5: or y, w             ; A9
15B6: or y, a             ; AA
15B7: or y, a             ; AA
15B8: pop a               ; 0A
15B9: nop                 ; 00
15BA: push w              ; 04
15BB: nop                 ; 00
15BC: or x, z             ; A4
15BD: inc w               ; 6A
15BE: rol x               ; DF
15BF: store $B800, z      ; 12 00 B8
15C2: nop                 ; FF
15C3: cmp z, a            ; 7F
15C4: rol x               ; DF
15C5: shr x               ; DA
15C6: and z, x            ; 97
15C7: inc a               ; 6B
15C8: nop                 ; F8
15C9: call $0000          ; 15 00 00
15CC: nop                 ; 00
15CD: nop                 ; 00
15CE: nop                 ; 00
15CF: nop                 ; 00
15D0: nop                 ; FC
15D1: nop                 ; FF
15D2: mul y, z            ; 55
15D3: mul y, z            ; 55
15D4: or z, w             ; AD
15D5: mul y, z            ; 55
15D6: or z, x             ; AB
15D7: shr x               ; DA
15D8: inc w               ; 6A
15D9: mul y, z            ; 55
15DA: mul y, z            ; 55
15DB: mul y, z            ; 55
15DC: or x, w             ; A5
15DD: sub a, y            ; 4A
15DE: and y, w            ; 95
15DF: sub a, y            ; 4A
15E0: push a              ; 05
15E1: sub z, y            ; 40
15E2: push y              ; 02
15E3: sub z, w            ; 42
15E4: add x, z            ; 1E
15E5: not a               ; BB
15E6: cmp x, a            ; 75
15E7: load x, $FC00       ; 0B 00 FC
15EA: nop                 ; FB
15EB: nop                 ; FF
15EC: inc w               ; 6A
15ED: dec y               ; 6D
15EE: shr w               ; DD
15EF: or a, w             ; B6
15F0: jmp.lt $0007        ; F4 07 00
15F3: nop                 ; 00
15F4: nop                 ; 00
15F5: nop                 ; 00
15F6: nop                 ; 00
15F7: nop                 ; 00
15F8: nop                 ; FC
15F9: nop                 ; FF
15FA: shr x               ; DA
15FB: shr x               ; DA
15FC: inc w               ; 6A
15FD: mul y, z            ; 55
15FE: shl x               ; D5
15FF: or y, a             ; AA
1600: mul y, z            ; 55
1601: mul y, z            ; 55
1602: mul y, z            ; 55
1603: mul y, z            ; 55
1604: mul y, z            ; 55
1605: mul y, z            ; 55
1606: or x, w             ; A5
1607: mul y, y            ; 54
1608: pop w               ; 09
1609: nop                 ; 00
160A: nop                 ; 00
160B: pop z               ; 08
160C: dec a               ; 70
160D: or y, a             ; AA
160E: rol x               ; DF
160F: mul x, x            ; 4E
1610: push x              ; 01
1611: rol y               ; E0
1612: nop                 ; FF
1613: xor x, w            ; BF
1614: shr w               ; DD
1615: nop                 ; FB
1616: resume              ; F7 57
1618: xor a, y            ; D1
1619: add x, w            ; 1F
161A: nop                 ; 00
161B: nop                 ; 00
161C: nop                 ; 00
161D: nop                 ; 00
161E: nop                 ; 00
161F: nop                 ; 00
1620: nop                 ; FC
1621: nop                 ; FF
1622: or y, a             ; AA
1623: mul y, w            ; 56
1624: or z, x             ; AB
1625: or a, w             ; B6
1626: or a, w             ; B6
1627: or a, w             ; B6
1628: or y, a             ; AA
1629: mul y, w            ; 56
162A: mul y, z            ; 55
162B: mul y, z            ; 55
162C: add z, a            ; 2A
162D: mul y, z            ; 55
162E: or y, a             ; AA
162F: mul x, a            ; 52
1630: pop a               ; 0A
1631: nop                 ; 00
1632: cmp w, x            ; 80
1633: nop                 ; 00
1634: jmp $76ED, z        ; EE ED 76
1637: add w, x            ; 2B
1638: nop                 ; 00
1639: sub z, y            ; 40
163A: xor x, w            ; BF
163B: resume              ; F7 76
163D: xor x, w            ; BF
163E: mul w, x            ; 5D
163F: jmp $07A5, y        ; ED A5 07
1642: nop                 ; 00
1643: nop                 ; 00
1644: nop                 ; 00
1645: nop                 ; 00
1646: nop                 ; 00
1647: nop                 ; 00
1648: nop                 ; FC
1649: nop                 ; FF
164A: or y, a             ; AA
164B: or y, a             ; AA
164C: or y, a             ; AA
164D: or y, a             ; AA
164E: mul y, z            ; 55
164F: or z, x             ; AB
1650: mul z, z            ; 5A
1651: or y, w             ; A9
1652: or y, a             ; AA
1653: sub a, y            ; 4A
1654: or x, w             ; A5
1655: mul x, a            ; 52
1656: and y, w            ; 95
1657: sub a, y            ; 4A
1658: call $0080          ; 15 80 00
165B: sub z, y            ; 40
165C: and w, y            ; 9C
165D: not x               ; B7
165E: shr w               ; DD
165F: dec y               ; 6D
1660: push x              ; 01
1661: nop                 ; 00
1662: or x, z             ; A4
1663: store $FFD9, a      ; 14 D9 FF
1666: resume              ; F7 BF
1668: mul x, x            ; 4E
1669: add w, w            ; 2E
166A: nop                 ; 00
166B: nop                 ; 00
166C: nop                 ; 00
166D: nop                 ; 00
166E: nop                 ; 00
166F: nop                 ; 00
1670: nop                 ; FC
1671: nop                 ; FF
1672: mul y, w            ; 56
1673: mul y, z            ; 55
1674: mul y, z            ; 55
1675: mul y, z            ; 55
1676: shl x               ; D5
1677: or y, a             ; AA
1678: or y, a             ; AA
1679: mul y, w            ; 56
167A: mul y, z            ; 55
167B: mul x, a            ; 52
167C: or y, w             ; A9
167D: mul y, y            ; 54
167E: mul y, z            ; 55
167F: or y, a             ; AA
1680: store $0000, a      ; 14 00 00
1683: store $B670, x      ; 10 70 B6
1686: cmp y, x            ; 76
1687: or w, x             ; AF
1688: push x              ; 01
1689: nop                 ; 00
168A: store $F442, z      ; 12 42 F4
168D: nop                 ; FF
168E: mul w, z            ; 5F
168F: mul y, z            ; 55
1690: and w, x            ; 9B
1691: push y              ; 02
1692: nop                 ; 00
1693: nop                 ; 00
1694: nop                 ; 00
1695: nop                 ; 00
1696: nop                 ; 00
1697: nop                 ; 00
1698: nop                 ; FC
1699: nop                 ; FF
169A: or y, a             ; AA
169B: or a, z             ; B5
169C: or y, a             ; AA
169D: inc w               ; 6A
169E: or z, w             ; AD
169F: mul z, z            ; 5A
16A0: mul y, z            ; 55
16A1: or y, w             ; A9
16A2: or y, a             ; AA
16A3: add z, a            ; 2A
16A4: mul y, z            ; 55
16A5: and y, w            ; 95
16A6: mul x, a            ; 52
16A7: mul y, z            ; 55
16A8: add y, a            ; 25
16A9: nop                 ; 00
16AA: nop                 ; 00
16AB: nop                 ; 00
16AC: xor w, y            ; CC
16AD: jmp $B95E           ; E9 5E B9
16B0: pop a               ; 0A
16B1: nop                 ; 00
16B2: push w              ; 04
16B3: store $FFE1, x      ; 10 E1 FF
16B6: nop                 ; FF
16B7: nop                 ; FF
16B8: inc w               ; 6A
16B9: pop z               ; 08
16BA: nop                 ; 00
16BB: nop                 ; 00
16BC: nop                 ; 00
16BD: nop                 ; 00
16BE: nop                 ; 00
16BF: nop                 ; 00
16C0: nop                 ; FC
16C1: nop                 ; FF
16C2: mul z, z            ; 5A
16C3: mul y, z            ; 55
16C4: mul y, z            ; 55
16C5: mul y, z            ; 55
16C6: mul y, z            ; 55
16C7: or x, w             ; A5
16C8: or y, a             ; AA
16C9: mul y, w            ; 56
16CA: or x, w             ; A5
16CB: mul y, y            ; 54
16CC: add y, a            ; 25
16CD: or x, w             ; A5
16CE: or y, a             ; AA
16CF: and x, a            ; 92
16D0: add z, a            ; 2A
16D1: nop                 ; 00
16D2: nop                 ; 00
16D3: cmp w, x            ; 80
16D4: shr z               ; DC
16D5: or y, x             ; A7
16D6: jmp z, w            ; EB
16D7: or w, x             ; AF
16D8: push a              ; 05
16D9: nop                 ; 00
16DA: sub z, y            ; 40
16DB: or y, a             ; AA
16DC: ror x               ; E4
16DD: nop                 ; FF
16DE: nop                 ; FF
16DF: or y, a             ; AA
16E0: xor x, w            ; BF
16E1: store $0000, a      ; 14 00 00
16E4: nop                 ; 00
16E5: nop                 ; 00
16E6: nop                 ; 00
16E7: nop                 ; 00
16E8: nop                 ; FC
16E9: nop                 ; FF
16EA: mul y, z            ; 55
16EB: mul y, z            ; 55
16EC: or z, x             ; AB
16ED: or y, a             ; AA
16EE: or y, a             ; AA
16EF: mul z, z            ; 5A
16F0: mul y, z            ; 55
16F1: or y, w             ; A9
16F2: and y, z            ; 94
16F3: and x, a            ; 92
16F4: mul y, y            ; 54
16F5: or y, w             ; A9
16F6: mul y, y            ; 54
16F7: mul y, z            ; 55
16F8: mul y, z            ; 55
16F9: push x              ; 01
16FA: cmp w, z            ; 82
16FB: nop                 ; 00
16FC: dec a               ; 70
16FD: shr a               ; DE
16FE: cmp y, a            ; 7A
16FF: jmp.z $0016         ; F5 16 00
1702: and y, z            ; 94
1703: sub w, a            ; 48
1704: cmp a, a            ; 89
1705: nop                 ; FF
1706: nop                 ; FF
1707: nop                 ; FF
1708: jmp x, y            ; EA
1709: push x              ; 01
170A: nop                 ; 00
170B: nop                 ; 00
170C: nop                 ; 00
170D: nop                 ; 00
170E: nop                 ; 00
170F: nop                 ; 00
1710: nop                 ; FC
1711: nop                 ; FF
1712: or y, a             ; AA
1713: or y, a             ; AA
1714: mul y, y            ; 54
1715: mul y, z            ; 55
1716: mul y, z            ; 55
1717: or x, w             ; A5
1718: or y, a             ; AA
1719: mul y, w            ; 56
171A: mul y, z            ; 55
171B: mul y, z            ; 55
171C: mul y, z            ; 55
171D: mul y, z            ; 55
171E: or x, w             ; A5
171F: add z, a            ; 2A
1720: or y, w             ; A9
1721: nop                 ; 00
1722: add x, a            ; 20
1723: nop                 ; 00
1724: rol y               ; E0
1725: shl a               ; D9
1726: or z, a             ; AE
1727: xor x, y            ; BD
1728: return              ; 16
1729: nop                 ; 00
172A: nop                 ; 00
172B: or x, w             ; A5
172C: and a, w            ; A2
172D: nop                 ; FF
172E: nop                 ; FF
172F: or z, x             ; AB
1730: not w               ; BA
1731: push y              ; 02
1732: nop                 ; 00
1733: nop                 ; 00
1734: nop                 ; 00
1735: nop                 ; 00
1736: nop                 ; 00
1737: nop                 ; 00
1738: nop                 ; FC
1739: nop                 ; FF
173A: mul y, z            ; 55
173B: mul y, z            ; 55
173C: or z, x             ; AB
173D: or y, a             ; AA
173E: or y, a             ; AA
173F: mul z, z            ; 5A
1740: mul y, z            ; 55
1741: add z, w            ; 29
1742: or x, w             ; A5
1743: add y, w            ; 24
1744: sub a, x            ; 49
1745: sub a, y            ; 4A
1746: add z, a            ; 2A
1747: or y, w             ; A9
1748: sub a, y            ; 4A
1749: load x, $0400       ; 0B 00 04
174C: nop                 ; 00
174D: and z, x            ; 97
174E: cmp z, x            ; 7B
174F: ror w               ; E7
1750: pop x               ; 06
1751: nop                 ; 00
1752: mul x, z            ; 50
1753: add z, z            ; 28
1754: load z, $FFFF       ; 0D FF FF
1757: xor x, z            ; BE
1758: resume              ; F7 0F
175A: nop                 ; 00
175B: nop                 ; 00
175C: nop                 ; 00
175D: nop                 ; 00
175E: nop                 ; 00
175F: nop                 ; 00
1760: nop                 ; FC
1761: nop                 ; FF
1762: or y, a             ; AA
1763: or y, a             ; AA
1764: or y, a             ; AA
1765: or y, a             ; AA
1766: or y, a             ; AA
1767: or y, a             ; AA
1768: or y, a             ; AA
1769: sub a, y            ; 4A
176A: mul y, z            ; 55
176B: mul y, z            ; 55
176C: mul y, z            ; 55
176D: or y, w             ; A9
176E: or y, a             ; AA
176F: sub a, y            ; 4A
1770: mul x, a            ; 52
1771: push w              ; 04
1772: nop                 ; 00
1773: nop                 ; 00
1774: push w              ; 04
1775: xor w, a            ; CF
1776: or y, a             ; AA
1777: xor x, y            ; BD
1778: push y              ; 02
1779: nop                 ; 00
177A: nop                 ; 00
177B: sub w, y            ; 45
177C: mul x, w            ; 51
177D: nop                 ; FF
177E: mul w, x            ; 5D
177F: jmp z, w            ; EB
1780: not w               ; BA
1781: add x, w            ; 1F
1782: ror a               ; E8
1783: nop                 ; 00
1784: nop                 ; 00
1785: nop                 ; 00
1786: nop                 ; 00
1787: nop                 ; 00
1788: nop                 ; FC
1789: nop                 ; FF
178A: mul y, z            ; 55
178B: mul y, z            ; 55
178C: mul y, z            ; 55
178D: mul y, z            ; 55
178E: mul y, z            ; 55
178F: mul y, z            ; 55
1790: mul y, z            ; 55
1791: or y, a             ; AA
1792: mul y, y            ; 54
1793: or y, a             ; AA
1794: add y, w            ; 24
1795: mul y, z            ; 55
1796: sub a, x            ; 49
1797: mul y, z            ; 55
1798: mul y, z            ; 55
1799: add w, x            ; 2B
179A: nop                 ; 00
179B: nop                 ; 00
179C: nop                 ; 00
179D: not y               ; B8
179E: jmp $57D7, z        ; EE D7 57
17A1: nop                 ; 00
17A2: sub z, y            ; 40
17A3: mul x, z            ; 50
17A4: return              ; 16
17A5: nop                 ; FC
17A6: nop                 ; FF
17A7: xor x, z            ; BE
17A8: resume              ; F7 B5
17AA: or y, a             ; AA
17AB: push x              ; 01
17AC: nop                 ; 00
17AD: nop                 ; 00
17AE: nop                 ; 00
17AF: nop                 ; 00
17B0: nop                 ; FC
17B1: nop                 ; FF
17B2: or y, a             ; AA
17B3: or y, a             ; AA
17B4: mul z, z            ; 5A
17B5: mul y, z            ; 55
17B6: mul y, z            ; 55
17B7: mul y, z            ; 55
17B8: sub a, x            ; 49
17B9: or y, w             ; A9
17BA: and x, a            ; 92
17BB: and x, a            ; 92
17BC: or y, a             ; AA
17BD: and x, a            ; 92
17BE: add z, a            ; 2A
17BF: mul y, z            ; 55
17C0: or x, w             ; A5
17C1: mul y, y            ; 54
17C2: nop                 ; 00
17C3: sub z, y            ; 40
17C4: sub z, y            ; 40
17C5: xor x, a            ; C0
17C6: not a               ; BB
17C7: int $02             ; F6 02
17C9: nop                 ; 00
17CA: nop                 ; 00
17CB: cmp w, y            ; 81
17CC: or y, z             ; A8
17CD: nop                 ; FE
17CE: dec w               ; 6F
17CF: jmp z, w            ; EB
17D0: rol x               ; DF
17D1: cmp z, a            ; 7F
17D2: nop                 ; FB
17D3: push x              ; 01
17D4: nop                 ; 00
17D5: nop                 ; 00
17D6: nop                 ; 00
17D7: nop                 ; 00
17D8: nop                 ; FC
17D9: nop                 ; FF
17DA: mul y, z            ; 55
17DB: mul y, z            ; 55
17DC: mul y, z            ; 55
17DD: mul y, z            ; 55
17DE: mul y, z            ; 55
17DF: mul y, z            ; 55
17E0: or y, a             ; AA
17E1: add z, a            ; 2A
17E2: mul y, z            ; 55
17E3: mul y, z            ; 55
17E4: and y, w            ; 95
17E5: mul y, y            ; 54
17E6: or x, w             ; A5
17E7: mul x, a            ; 52
17E8: add z, w            ; 29
17E9: mul y, z            ; 55
17EA: push x              ; 01
17EB: nop                 ; 00
17EC: nop                 ; 00
17ED: cmp w, a            ; 84
17EE: or y, a             ; AA
17EF: shr w               ; DD
17F0: return              ; 16
17F1: nop                 ; 00
17F2: nop                 ; 00
17F3: add z, a            ; 2A
17F4: add y, a            ; 25
17F5: nop                 ; F8
17F6: rol x               ; DF
17F7: nop                 ; FF
17F8: nop                 ; FF
17F9: or z, a             ; AE
17FA: mul y, w            ; 56
17FB: pop y               ; 07
17FC: nop                 ; 00
17FD: nop                 ; 00
17FE: nop                 ; 00
17FF: nop                 ; 00
1800: nop                 ; FC
1801: nop                 ; FF
1802: or y, a             ; AA
1803: or y, a             ; AA
1804: or y, a             ; AA
1805: or y, a             ; AA
1806: or y, a             ; AA
1807: and x, a            ; 92
1808: and x, a            ; 92
1809: mul x, a            ; 52
180A: mul y, z            ; 55
180B: mul y, z            ; 55
180C: mul x, a            ; 52
180D: add y, a            ; 25
180E: mul y, z            ; 55
180F: sub a, y            ; 4A
1810: and y, w            ; 95
1811: and x, a            ; 92
1812: nop                 ; 00
1813: nop                 ; 00
1814: nop                 ; 00
1815: sub z, y            ; 40
1816: nop                 ; FB
1817: mul y, w            ; 56
1818: push z              ; 03
1819: nop                 ; 00
181A: nop                 ; 00
181B: cmp w, x            ; 80
181C: mul y, y            ; 54
181D: or y, w             ; A9
181E: mul x, a            ; 52
181F: nop                 ; 00
1820: and a, y            ; A0
1821: resume              ; F7 FA
1823: pop y               ; 07
1824: nop                 ; 00
1825: nop                 ; 00
1826: nop                 ; 00
1827: nop                 ; 00
1828: nop                 ; FC
1829: nop                 ; FF
182A: or y, a             ; AA
182B: or y, a             ; AA
182C: mul y, w            ; 56
182D: mul y, z            ; 55
182E: mul y, z            ; 55
182F: mul y, z            ; 55
1830: mul y, z            ; 55
1831: or y, a             ; AA
1832: add y, w            ; 24
1833: sub a, x            ; 49
1834: mul y, z            ; 55
1835: or y, a             ; AA
1836: mul x, a            ; 52
1837: mul y, z            ; 55
1838: or y, a             ; AA
1839: or y, a             ; AA
183A: pop x               ; 06
183B: nop                 ; 00
183C: nop                 ; 00
183D: nop                 ; 00
183E: or z, y             ; AC
183F: cmp z, w            ; 7E
1840: store $0000, w      ; 13 00 00
1843: add z, z            ; 28
1844: sub a, x            ; 49
1845: push y              ; 02
1846: nop                 ; 00
1847: nop                 ; 00
1848: rol y               ; E0
1849: or w, x             ; AF
184A: nop                 ; FD
184B: load z, $0000       ; 0D 00 00
184E: nop                 ; 00
184F: nop                 ; 00
1850: nop                 ; FC
1851: nop                 ; FF
1852: mul y, z            ; 55
1853: mul y, z            ; 55
1854: mul y, z            ; 55
1855: mul y, z            ; 55
1856: and y, w            ; 95
1857: add y, w            ; 24
1858: or x, w             ; A5
1859: sub a, y            ; 4A
185A: mul y, z            ; 55
185B: mul y, z            ; 55
185C: or x, w             ; A5
185D: mul x, a            ; 52
185E: sub a, y            ; 4A
185F: or y, w             ; A9
1860: mul x, a            ; 52
1861: mul x, a            ; 52
1862: pop w               ; 09
1863: nop                 ; 00
1864: nop                 ; 00
1865: add x, a            ; 20
1866: or a, y             ; B4
1867: shr y               ; DB
1868: push a              ; 05
1869: nop                 ; 00
186A: nop                 ; 00
186B: nop                 ; 00
186C: or x, z             ; A4
186D: nop                 ; 00
186E: nop                 ; 00
186F: sub a, x            ; 49
1870: sub z, w            ; 42
1871: or a, z             ; B5
1872: mul y, w            ; 56
1873: load a, $0000       ; 0F 00 00
1876: nop                 ; 00
1877: nop                 ; 00
1878: nop                 ; FC
1879: nop                 ; FF
187A: mul y, z            ; 55
187B: mul y, z            ; 55
187C: mul y, z            ; 55
187D: mul y, z            ; 55
187E: mul y, z            ; 55
187F: mul y, z            ; 55
1880: add z, w            ; 29
1881: add z, w            ; 29
1882: mul y, z            ; 55
1883: mul y, z            ; 55
1884: add z, w            ; 29
1885: and y, w            ; 95
1886: add z, a            ; 2A
1887: and y, w            ; 95
1888: sub a, y            ; 4A
1889: add z, w            ; 29
188A: sub x, x            ; 35
188B: nop                 ; 00
188C: nop                 ; 00
188D: nop                 ; 00
188E: and a, y            ; A0
188F: cmp y, x            ; 76
1890: load x, $0000       ; 0B 00 00
1893: sub z, y            ; 40
1894: and x, w            ; 91
1895: pop a               ; 0A
1896: nop                 ; 00
1897: cmp w, x            ; 80
1898: cmp w, a            ; 84
1899: shr y               ; DB
189A: nop                 ; FF
189B: sub y, y            ; 3B
189C: nop                 ; 00
189D: nop                 ; 00
189E: nop                 ; 00
189F: nop                 ; 00
18A0: nop                 ; FC
18A1: nop                 ; FF
18A2: mul y, z            ; 55
18A3: mul y, z            ; 55
18A4: mul y, z            ; 55
18A5: mul y, z            ; 55
18A6: or y, w             ; A9
18A7: sub a, y            ; 4A
18A8: sub a, y            ; 4A
18A9: mul y, z            ; 55
18AA: sub a, x            ; 49
18AB: add z, a            ; 2A
18AC: mul y, z            ; 55
18AD: or x, w             ; A5
18AE: mul y, y            ; 54
18AF: or x, w             ; A5
18B0: mul y, y            ; 54
18B1: or x, w             ; A5
18B2: and x, a            ; 92
18B3: nop                 ; 00
18B4: nop                 ; 00
18B5: nop                 ; 00
18B6: xor y, x            ; C1
18B7: mul z, z            ; 5A
18B8: push x              ; 01
18B9: nop                 ; 00
18BA: nop                 ; 00
18BB: nop                 ; 00
18BC: sub z, y            ; 40
18BD: push y              ; 02
18BE: add z, w            ; 29
18BF: add z, a            ; 2A
18C0: cmp w, z            ; 82
18C1: dec z               ; 6E
18C2: jmp z, w            ; EB
18C3: add w, w            ; 2E
18C4: nop                 ; 00
18C5: nop                 ; 00
18C6: nop                 ; 00
18C7: nop                 ; 00
18C8: nop                 ; FC
18C9: nop                 ; FF
18CA: mul y, z            ; 55
18CB: mul y, z            ; 55
18CC: mul y, z            ; 55
18CD: mul y, z            ; 55
18CE: add y, a            ; 25
18CF: or y, w             ; A9
18D0: or y, a             ; AA
18D1: or x, z             ; A4
18D2: or y, a             ; AA
18D3: mul x, a            ; 52
18D4: and y, w            ; 95
18D5: mul y, y            ; 54
18D6: or x, w             ; A5
18D7: mul y, y            ; 54
18D8: mul y, z            ; 55
18D9: sub a, y            ; 4A
18DA: or y, a             ; AA
18DB: nop                 ; 00
18DC: nop                 ; 00
18DD: nop                 ; 00
18DE: nop                 ; 00
18DF: inc w               ; 6A
18E0: store $0000, w      ; 13 00 00
18E3: nop                 ; 00
18E4: and y, w            ; 95
18E5: nop                 ; 00
18E6: cmp w, x            ; 80
18E7: cmp w, x            ; 80
18E8: store $BED5, a      ; 14 D5 BE
18EB: dec w               ; 6F
18EC: nop                 ; 00
18ED: nop                 ; 00
18EE: nop                 ; 00
18EF: nop                 ; 00
18F0: nop                 ; FC
18F1: nop                 ; FF
18F2: or y, a             ; AA
18F3: or y, a             ; AA
18F4: or y, a             ; AA
18F5: or y, a             ; AA
18F6: or y, a             ; AA
18F7: add z, a            ; 2A
18F8: add z, w            ; 29
18F9: and y, w            ; 95
18FA: or y, a             ; AA
18FB: sub a, y            ; 4A
18FC: or y, w             ; A9
18FD: sub a, y            ; 4A
18FE: add z, w            ; 29
18FF: and y, w            ; 95
1900: and x, a            ; 92
1901: or y, a             ; AA
1902: mul x, a            ; 52
1903: push x              ; 01
1904: nop                 ; 00
1905: nop                 ; 00
1906: nop                 ; 00
1907: cmp y, a            ; 7A
1908: push x              ; 01
1909: nop                 ; 00
190A: nop                 ; 00
190B: nop                 ; 00
190C: nop                 ; 00
190D: nop                 ; 00
190E: add z, z            ; 28
190F: or y, a             ; AA
1910: push y              ; 02
1911: nop                 ; FD
1912: shl z               ; D7
1913: xor x, y            ; BD
1914: nop                 ; 00
1915: nop                 ; 00
1916: nop                 ; 00
1917: nop                 ; 00
1918: nop                 ; FC
1919: nop                 ; FF
191A: mul y, z            ; 55
191B: mul y, z            ; 55
191C: mul y, z            ; 55
191D: mul y, z            ; 55
191E: and y, w            ; 95
191F: or x, z             ; A4
1920: sub a, y            ; 4A
1921: or y, w             ; A9
1922: add y, w            ; 24
1923: add z, w            ; 29
1924: or x, w             ; A5
1925: mul x, a            ; 52
1926: or y, a             ; AA
1927: mul x, a            ; 52
1928: mul y, z            ; 55
1929: or y, w             ; A9
192A: and y, z            ; 94
192B: pop a               ; 0A
192C: nop                 ; 00
192D: nop                 ; 00
192E: nop                 ; 00
192F: sub z, y            ; 40
1930: load x, $0000       ; 0B 00 00
1933: nop                 ; 00
1934: sub w, a            ; 48
1935: nop                 ; 00
1936: cmp w, x            ; 80
1937: add y, y            ; 22
1938: add z, z            ; 28
1939: inc w               ; 6A
193A: xor x, w            ; BF
193B: dec w               ; 6F
193C: nop                 ; 00
193D: nop                 ; 00
193E: nop                 ; 00
193F: nop                 ; 00
1940: nop                 ; FC
1941: nop                 ; FF
1942: mul y, z            ; 55
1943: mul y, z            ; 55
1944: mul y, z            ; 55
1945: mul y, z            ; 55
1946: or y, w             ; A9
1947: sub a, y            ; 4A
1948: mul x, a            ; 52
1949: sub a, y            ; 4A
194A: mul y, z            ; 55
194B: and y, w            ; 95
194C: mul y, y            ; 54
194D: or y, a             ; AA
194E: mul x, a            ; 52
194F: mul y, z            ; 55
1950: or y, a             ; AA
1951: sub a, y            ; 4A
1952: or x, w             ; A5
1953: or y, a             ; AA
1954: nop                 ; 00
1955: nop                 ; 00
1956: nop                 ; 00
1957: and a, y            ; A0
1958: push x              ; 01
1959: nop                 ; 00
195A: nop                 ; 00
195B: nop                 ; 00
195C: add x, a            ; 20
195D: nop                 ; 00
195E: mul x, w            ; 51
195F: cmp a, w            ; 88
1960: pop a               ; 0A
1961: xor x, x            ; BC
1962: jmp $00B6, y        ; ED B6 00
1965: nop                 ; 00
1966: nop                 ; 00
1967: nop                 ; 00
1968: nop                 ; FC
1969: nop                 ; FF
196A: mul y, z            ; 55
196B: mul y, z            ; 55
196C: mul y, z            ; 55
196D: and y, w            ; 95
196E: sub a, y            ; 4A
196F: or y, w             ; A9
1970: or y, a             ; AA
1971: mul x, a            ; 52
1972: and x, a            ; 92
1973: or x, z             ; A4
1974: mul x, a            ; 52
1975: and y, w            ; 95
1976: add z, a            ; 2A
1977: sub a, x            ; 49
1978: sub a, x            ; 49
1979: add z, a            ; 2A
197A: add z, w            ; 29
197B: sub a, x            ; 49
197C: or z, w             ; AD
197D: nop                 ; 00
197E: nop                 ; 00
197F: nop                 ; 00
1980: push x              ; 01
1981: nop                 ; 00
1982: nop                 ; 00
1983: nop                 ; 00
1984: cmp w, x            ; 80
1985: nop                 ; 00
1986: cmp w, x            ; 80
1987: mul x, a            ; 52
1988: mul x, a            ; 52
1989: ror a               ; E8
198A: nop                 ; FF
198B: nop                 ; FD
198C: push x              ; 01
198D: nop                 ; 00
198E: nop                 ; 00
198F: nop                 ; 00
1990: nop                 ; FC
1991: nop                 ; FF
1992: mul y, z            ; 55
1993: mul y, z            ; 55
1994: mul y, z            ; 55
1995: or y, w             ; A9
1996: add z, a            ; 2A
1997: and y, w            ; 95
1998: add y, w            ; 24
1999: and y, w            ; 95
199A: or y, a             ; AA
199B: add z, a            ; 2A
199C: and y, w            ; 95
199D: mul x, a            ; 52
199E: sub a, y            ; 4A
199F: mul y, z            ; 55
19A0: mul y, z            ; 55
19A1: mul y, z            ; 55
19A2: mul y, z            ; 55
19A3: mul y, z            ; 55
19A4: add y, a            ; 25
19A5: push y              ; 02
19A6: nop                 ; 00
19A7: nop                 ; 00
19A8: nop                 ; 00
19A9: nop                 ; 00
19AA: nop                 ; 00
19AB: nop                 ; 00
19AC: nop                 ; 00
19AD: nop                 ; 00
19AE: nop                 ; 00
19AF: cmp w, a            ; 84
19B0: sub w, a            ; 48
19B1: not y               ; B8
19B2: or a, z             ; B5
19B3: dec w               ; 6F
19B4: push z              ; 03
19B5: nop                 ; 00
19B6: nop                 ; 00
19B7: nop                 ; 00
19B8: nop                 ; FC
19B9: nop                 ; FF
19BA: mul y, z            ; 55
19BB: mul y, z            ; 55
19BC: mul y, z            ; 55
19BD: mul y, z            ; 55
19BE: mul x, a            ; 52
19BF: or x, w             ; A5
19C0: or y, a             ; AA
19C1: mul x, a            ; 52
19C2: or x, w             ; A5
19C3: or x, z             ; A4
19C4: mul y, y            ; 54
19C5: mul y, z            ; 55
19C6: or y, w             ; A9
19C7: add z, a            ; 2A
19C8: mul y, z            ; 55
19C9: sub a, x            ; 49
19CA: and y, w            ; 95
19CB: add y, w            ; 24
19CC: or y, w             ; A9
19CD: push w              ; 04
19CE: nop                 ; 00
19CF: nop                 ; 00
19D0: pop z               ; 08
19D1: nop                 ; 00
19D2: nop                 ; 00
19D3: nop                 ; 00
19D4: nop                 ; 00
19D5: pop z               ; 08
19D6: sub z, y            ; 40
19D7: add z, w            ; 29
19D8: store $FF61, z      ; 12 61 FF
19DB: nop                 ; FB
19DC: pop x               ; 06
19DD: nop                 ; 00
19DE: nop                 ; 00
19DF: nop                 ; 00
19E0: nop                 ; FC
19E1: nop                 ; FF
19E2: mul y, z            ; 55
19E3: mul y, z            ; 55
19E4: mul y, z            ; 55
19E5: mul y, z            ; 55
19E6: mul y, z            ; 55
19E7: add z, a            ; 2A
19E8: sub a, x            ; 49
19E9: sub a, y            ; 4A
19EA: sub a, y            ; 4A
19EB: and y, w            ; 95
19EC: mul x, a            ; 52
19ED: sub a, y            ; 4A
19EE: and y, w            ; 95
19EF: or x, z             ; A4
19F0: and x, a            ; 92
19F1: add z, a            ; 2A
19F2: or y, w             ; A9
19F3: or y, a             ; AA
19F4: sub a, y            ; 4A
19F5: push a              ; 05
19F6: nop                 ; 00
19F7: nop                 ; 00
19F8: nop                 ; 00
19F9: nop                 ; 00
19FA: nop                 ; 00
19FB: nop                 ; 00
19FC: nop                 ; 00
19FD: nop                 ; 00
19FE: nop                 ; 00
19FF: or x, z             ; A4
1A00: or x, z             ; A4
1A01: jmp $EF6D, a        ; F0 6D EF
1A04: load x, $0000       ; 0B 00 00
1A07: nop                 ; 00
1A08: nop                 ; FC
1A09: nop                 ; FF
1A0A: or y, a             ; AA
1A0B: or y, a             ; AA
1A0C: or y, a             ; AA
1A0D: or y, a             ; AA
1A0E: or y, a             ; AA
1A0F: mul x, a            ; 52
1A10: mul y, z            ; 55
1A11: or y, w             ; A9
1A12: mul x, a            ; 52
1A13: mul x, a            ; 52
1A14: and y, z            ; 94
1A15: mul x, a            ; 52
1A16: or x, w             ; A5
1A17: or y, a             ; AA
1A18: mul y, y            ; 54
1A19: or y, a             ; AA
1A1A: sub a, y            ; 4A
1A1B: and x, a            ; 92
1A1C: add z, a            ; 2A
1A1D: add z, w            ; 29
1A1E: nop                 ; 00
1A1F: nop                 ; 00
1A20: nop                 ; 00
1A21: nop                 ; 00
1A22: nop                 ; 00
1A23: nop                 ; 00
1A24: nop                 ; 00
1A25: cmp w, x            ; 80
1A26: nop                 ; 00
1A27: pop z               ; 08
1A28: pop w               ; 09
1A29: sub z, w            ; 42
1A2A: rol x               ; DF
1A2B: not a               ; BB
1A2C: add x, z            ; 1E
1A2D: nop                 ; 00
1A2E: nop                 ; 00
1A2F: nop                 ; 00
1A30: nop                 ; FC
1A31: nop                 ; FF
1A32: mul y, z            ; 55
1A33: mul y, z            ; 55
1A34: mul y, z            ; 55
1A35: mul y, z            ; 55
1A36: or x, w             ; A5
1A37: sub a, y            ; 4A
1A38: and x, a            ; 92
1A39: sub a, y            ; 4A
1A3A: add z, a            ; 2A
1A3B: and y, w            ; 95
1A3C: mul x, a            ; 52
1A3D: mul y, z            ; 55
1A3E: or y, a             ; AA
1A3F: sub a, y            ; 4A
1A40: mul y, z            ; 55
1A41: sub a, x            ; 49
1A42: mul y, z            ; 55
1A43: mul y, z            ; 55
1A44: or y, a             ; AA
1A45: and x, a            ; 92
1A46: nop                 ; 00
1A47: nop                 ; 00
1A48: add x, a            ; 20
1A49: nop                 ; 00
1A4A: nop                 ; 00
1A4B: nop                 ; 00
1A4C: nop                 ; 00
1A4D: nop                 ; 00
1A4E: cmp w, x            ; 80
1A4F: or x, z             ; A4
1A50: or x, z             ; A4
1A51: jmp $EEF5, a        ; F0 F5 EE
1A54: load z, $0000       ; 0D 00 00
1A57: nop                 ; 00
1A58: nop                 ; FC
1A59: nop                 ; FF
1A5A: mul y, z            ; 55
1A5B: mul y, z            ; 55
1A5C: mul y, z            ; 55
1A5D: or y, a             ; AA
1A5E: and y, z            ; 94
1A5F: mul y, y            ; 54
1A60: mul y, z            ; 55
1A61: or y, w             ; A9
1A62: or x, z             ; A4
1A63: or x, z             ; A4
1A64: and y, z            ; 94
1A65: mul y, y            ; 54
1A66: mul y, z            ; 55
1A67: mul x, a            ; 52
1A68: sub a, y            ; 4A
1A69: mul y, z            ; 55
1A6A: mul x, a            ; 52
1A6B: or x, w             ; A5
1A6C: mul x, a            ; 52
1A6D: add y, a            ; 25
1A6E: push x              ; 01
1A6F: nop                 ; 00
1A70: nop                 ; 00
1A71: nop                 ; 00
1A72: nop                 ; 00
1A73: nop                 ; 00
1A74: nop                 ; 00
1A75: store $0008, x      ; 10 08 00
1A78: store $BFB1, y      ; 11 B1 BF
1A7B: mul y, a            ; 57
1A7C: cmp z, x            ; 7B
1A7D: nop                 ; 00
1A7E: nop                 ; 00
1A7F: nop                 ; 00
1A80: nop                 ; FC
1A81: nop                 ; FF
1A82: mul y, z            ; 55
1A83: mul y, z            ; 55
1A84: mul y, z            ; 55
1A85: mul y, z            ; 55
1A86: mul y, z            ; 55
1A87: and y, w            ; 95
1A88: add y, w            ; 24
1A89: and y, w            ; 95
1A8A: sub a, y            ; 4A
1A8B: call $4921          ; 15 21 49
1A8E: sub a, x            ; 49
1A8F: and y, w            ; 95
1A90: mul x, a            ; 52
1A91: mul y, z            ; 55
1A92: and y, w            ; 95
1A93: and y, z            ; 94
1A94: and y, z            ; 94
1A95: and y, z            ; 94
1A96: push w              ; 04
1A97: nop                 ; 00
1A98: nop                 ; 00
1A99: push x              ; 01
1A9A: nop                 ; 00
1A9B: cmp w, x            ; 80
1A9C: nop                 ; 00
1A9D: nop                 ; 00
1A9E: nop                 ; 00
1A9F: or y, z             ; A8
1AA0: sub w, x            ; 44
1AA1: nop                 ; F8
1AA2: int $ED             ; F6 ED
1AA4: add z, a            ; 2A
1AA5: nop                 ; 00
1AA6: nop                 ; 00
1AA7: nop                 ; 00
1AA8: nop                 ; FC
1AA9: nop                 ; FF
1AAA: mul y, z            ; 55
1AAB: mul y, z            ; 55
1AAC: sub a, x            ; 49
1AAD: sub a, x            ; 49
1AAE: mul y, z            ; 55
1AAF: or x, w             ; A5
1AB0: or y, a             ; AA
1AB1: or x, z             ; A4
1AB2: mul x, a            ; 52
1AB3: mul x, a            ; 52
1AB4: sub a, y            ; 4A
1AB5: add z, a            ; 2A
1AB6: mul y, z            ; 55
1AB7: or y, w             ; A9
1AB8: or y, a             ; AA
1AB9: add y, w            ; 24
1ABA: or y, w             ; A9
1ABB: mul x, a            ; 52
1ABC: mul y, z            ; 55
1ABD: mul y, z            ; 55
1ABE: pop w               ; 09
1ABF: nop                 ; 00
1AC0: nop                 ; 00
1AC1: nop                 ; 00
1AC2: nop                 ; 00
1AC3: nop                 ; 00
1AC4: nop                 ; 00
1AC5: cmp w, x            ; 80
1AC6: nop                 ; 00
1AC7: push x              ; 01
1AC8: store $6FA8, y      ; 11 A8 6F
1ACB: not x               ; B7
1ACC: int $00             ; F6 00
1ACE: nop                 ; 00
1ACF: nop                 ; 00
1AD0: nop                 ; FC
1AD1: nop                 ; FF
1AD2: mul y, z            ; 55
1AD3: mul y, z            ; 55
1AD4: mul y, z            ; 55
1AD5: mul y, z            ; 55
1AD6: or x, w             ; A5
1AD7: mul y, y            ; 54
1AD8: and x, a            ; 92
1AD9: add z, a            ; 2A
1ADA: and y, w            ; 95
1ADB: or y, a             ; AA
1ADC: and x, a            ; 92
1ADD: mul x, a            ; 52
1ADE: mul y, z            ; 55
1ADF: mul y, z            ; 55
1AE0: sub a, y            ; 4A
1AE1: mul y, z            ; 55
1AE2: mul y, z            ; 55
1AE3: mul y, z            ; 55
1AE4: mul x, a            ; 52
1AE5: mul y, z            ; 55
1AE6: add z, a            ; 2A
1AE7: nop                 ; 00
1AE8: nop                 ; 00
1AE9: pop z               ; 08
1AEA: nop                 ; 00
1AEB: nop                 ; 00
1AEC: nop                 ; 00
1AED: nop                 ; 00
1AEE: cmp w, x            ; 80
1AEF: sub z, y            ; 40
1AF0: cmp w, a            ; 84
1AF1: nop                 ; FC
1AF2: nop                 ; FA
1AF3: shl a               ; D9
1AF4: mul y, z            ; 55
1AF5: push x              ; 01
1AF6: nop                 ; 00
1AF7: nop                 ; 00
1AF8: nop                 ; FC
1AF9: nop                 ; FF
1AFA: or y, a             ; AA
1AFB: or y, a             ; AA
1AFC: or y, a             ; AA
1AFD: or y, a             ; AA
1AFE: mul y, y            ; 54
1AFF: mul y, z            ; 55
1B00: mul y, z            ; 55
1B01: sub a, x            ; 49
1B02: or y, w             ; A9
1B03: and x, a            ; 92
1B04: or x, z             ; A4
1B05: add y, w            ; 24
1B06: sub a, x            ; 49
1B07: sub a, y            ; 4A
1B08: mul y, z            ; 55
1B09: or y, a             ; AA
1B0A: sub a, y            ; 4A
1B0B: sub a, y            ; 4A
1B0C: and y, w            ; 95
1B0D: or x, z             ; A4
1B0E: and x, a            ; 92
1B0F: nop                 ; 00
1B10: nop                 ; 00
1B11: nop                 ; 00
1B12: nop                 ; 00
1B13: nop                 ; 00
1B14: nop                 ; 00
1B15: nop                 ; 00
1B16: nop                 ; 00
1B17: push w              ; 04
1B18: store $6FD4, y      ; 11 D4 6F
1B1B: not x               ; B7
1B1C: int $00             ; F6 00
1B1E: nop                 ; 00
1B1F: nop                 ; 00
1B20: nop                 ; FC
1B21: nop                 ; FF
1B22: mul y, z            ; 55
1B23: or y, a             ; AA
1B24: or y, a             ; AA
1B25: or y, a             ; AA
1B26: add z, a            ; 2A
1B27: and y, w            ; 95
1B28: add y, w            ; 24
1B29: mul y, z            ; 55
1B2A: add z, a            ; 2A
1B2B: mul y, z            ; 55
1B2C: call $5492          ; 15 92 54
1B2F: mul y, z            ; 55
1B30: or y, w             ; A9
1B31: and x, a            ; 92
1B32: mul y, y            ; 54
1B33: mul y, z            ; 55
1B34: sub a, x            ; 49
1B35: and y, w            ; 95
1B36: sub a, y            ; 4A
1B37: nop                 ; 00
1B38: nop                 ; 00
1B39: nop                 ; 00
1B3A: nop                 ; 00
1B3B: nop                 ; 00
1B3C: nop                 ; 00
1B3D: nop                 ; 00
1B3E: store $0480, y      ; 11 80 04
1B41: inc w               ; 6A
1B42: nop                 ; FB
1B43: shr w               ; DD
1B44: nop                 ; FA
1B45: nop                 ; 00
1B46: nop                 ; 00
1B47: nop                 ; 00
1B48: nop                 ; FC
1B49: nop                 ; FF
1B4A: mul x, a            ; 52
1B4B: mul y, z            ; 55
1B4C: mul y, z            ; 55
1B4D: and y, w            ; 95
1B4E: or y, a             ; AA
1B4F: mul x, a            ; 52
1B50: mul y, z            ; 55
1B51: sub a, x            ; 49
1B52: or x, w             ; A5
1B53: add y, w            ; 24
1B54: sub a, x            ; 49
1B55: sub a, x            ; 49
1B56: add y, a            ; 25
1B57: add z, w            ; 29
1B58: and y, w            ; 95
1B59: or y, a             ; AA
1B5A: mul x, a            ; 52
1B5B: add z, w            ; 29
1B5C: mul y, z            ; 55
1B5D: mul x, a            ; 52
1B5E: mul y, z            ; 55
1B5F: push a              ; 05
1B60: nop                 ; 00
1B61: sub z, y            ; 40
1B62: nop                 ; 00
1B63: nop                 ; 00
1B64: nop                 ; 00
1B65: nop                 ; 00
1B66: nop                 ; 00
1B67: pop z               ; 08
1B68: sub w, a            ; 48
1B69: or y, z             ; A8
1B6A: dec w               ; 6F
1B6B: cmp x, a            ; 75
1B6C: jmp z, w            ; EB
1B6D: push z              ; 03
1B6E: nop                 ; 00
1B6F: nop                 ; 00
1B70: nop                 ; FC
1B71: nop                 ; FF
1B72: or y, a             ; AA
1B73: and x, a            ; 92
1B74: or y, a             ; AA
1B75: mul y, y            ; 54
1B76: or x, w             ; A5
1B77: or y, a             ; AA
1B78: and x, a            ; 92
1B79: mul y, y            ; 54
1B7A: mul x, a            ; 52
1B7B: mul y, z            ; 55
1B7C: mul y, z            ; 55
1B7D: add y, w            ; 24
1B7E: or y, w             ; A9
1B7F: or y, a             ; AA
1B80: mul x, a            ; 52
1B81: or y, a             ; AA
1B82: sub a, y            ; 4A
1B83: mul y, z            ; 55
1B84: and y, w            ; 95
1B85: or y, a             ; AA
1B86: and y, z            ; 94
1B87: store $0000, z      ; 12 00 00
1B8A: nop                 ; 00
1B8B: pop z               ; 08
1B8C: nop                 ; 00
1B8D: nop                 ; 00
1B8E: nop                 ; 00
1B8F: push x              ; 01
1B90: nop                 ; 00
1B91: and a, y            ; A0
1B92: xor x, z            ; BE
1B93: shr a               ; DE
1B94: nop                 ; FE
1B95: push x              ; 01
1B96: nop                 ; 00
1B97: nop                 ; 00
1B98: nop                 ; FC
1B99: nop                 ; FF
1B9A: or y, a             ; AA
1B9B: or y, a             ; AA
1B9C: mul y, y            ; 54
1B9D: mul y, z            ; 55
1B9E: mul y, z            ; 55
1B9F: add z, w            ; 29
1BA0: mul y, z            ; 55
1BA1: and y, w            ; 95
1BA2: sub a, y            ; 4A
1BA3: sub a, y            ; 4A
1BA4: sub a, x            ; 49
1BA5: sub a, x            ; 49
1BA6: sub a, y            ; 4A
1BA7: sub a, y            ; 4A
1BA8: mul y, z            ; 55
1BA9: sub a, x            ; 49
1BAA: add z, a            ; 2A
1BAB: or x, w             ; A5
1BAC: mul x, a            ; 52
1BAD: and y, w            ; 95
1BAE: or y, a             ; AA
1BAF: add y, w            ; 24
1BB0: nop                 ; 00
1BB1: nop                 ; 00
1BB2: nop                 ; 00
1BB3: nop                 ; 00
1BB4: nop                 ; 00
1BB5: nop                 ; 00
1BB6: pop z               ; 08
1BB7: nop                 ; 00
1BB8: push y              ; 02
1BB9: nop                 ; 00
1BBA: cmp y, y            ; 77
1BBB: not a               ; BB
1BBC: nop                 ; FB
1BBD: push z              ; 03
1BBE: nop                 ; 00
1BBF: nop                 ; 00
1BC0: nop                 ; FC
1BC1: nop                 ; FF
1BC2: mul y, y            ; 54
1BC3: mul y, z            ; 55
1BC4: mul y, z            ; 55
1BC5: mul y, z            ; 55
1BC6: and y, w            ; 95
1BC7: sub a, y            ; 4A
1BC8: and y, w            ; 95
1BC9: mul x, a            ; 52
1BCA: or y, a             ; AA
1BCB: mul x, a            ; 52
1BCC: or y, a             ; AA
1BCD: and x, a            ; 92
1BCE: add y, w            ; 24
1BCF: or y, w             ; A9
1BD0: and y, z            ; 94
1BD1: or y, a             ; AA
1BD2: or y, a             ; AA
1BD3: mul y, y            ; 54
1BD4: add z, a            ; 2A
1BD5: or y, w             ; A9
1BD6: mul x, a            ; 52
1BD7: and y, w            ; 95
1BD8: nop                 ; 00
1BD9: nop                 ; 00
1BDA: nop                 ; 00
1BDB: cmp w, x            ; 80
1BDC: nop                 ; 00
1BDD: nop                 ; 00
1BDE: nop                 ; 00
1BDF: add x, a            ; 20
1BE0: store $5D88, x      ; 10 88 5D
1BE3: jmp $01BD, w        ; EF BD 01
1BE6: nop                 ; 00
1BE7: nop                 ; 00
1BE8: nop                 ; FC
1BE9: nop                 ; FF
1BEA: sub a, y            ; 4A
1BEB: or y, a             ; AA
1BEC: or y, a             ; AA
1BED: or y, a             ; AA
1BEE: inc w               ; 6A
1BEF: or y, a             ; AA
1BF0: mul x, a            ; 52
1BF1: sub a, x            ; 49
1BF2: sub a, x            ; 49
1BF3: or y, a             ; AA
1BF4: sub a, y            ; 4A
1BF5: sub a, y            ; 4A
1BF6: mul x, a            ; 52
1BF7: add y, a            ; 25
1BF8: or x, w             ; A5
1BF9: or y, a             ; AA
1BFA: mul x, a            ; 52
1BFB: and y, w            ; 95
1BFC: or y, a             ; AA
1BFD: sub a, y            ; 4A
1BFE: mul y, z            ; 55
1BFF: mul y, z            ; 55
1C00: push x              ; 01
1C01: nop                 ; 00
1C02: nop                 ; 00
1C03: nop                 ; 00
1C04: push a              ; 05
1C05: nop                 ; 00
1C06: sub z, y            ; 40
1C07: nop                 ; 00
1C08: nop                 ; 00
1C09: add x, a            ; 20
1C0A: not w               ; BA
1C0B: cmp z, z            ; 7D
1C0C: resume              ; F7 01
1C0E: nop                 ; 00
1C0F: nop                 ; 00
1C10: nop                 ; FC
1C11: nop                 ; FF
1C12: mul y, z            ; 55
1C13: or x, w             ; A5
1C14: and x, a            ; 92
1C15: or y, a             ; AA
1C16: and y, z            ; 94
1C17: or y, a             ; AA
1C18: mul y, y            ; 54
1C19: or y, a             ; AA
1C1A: or y, a             ; AA
1C1B: or x, z             ; A4
1C1C: mul y, y            ; 54
1C1D: and y, w            ; 95
1C1E: cmp a, w            ; 88
1C1F: mul y, y            ; 54
1C20: mul y, z            ; 55
1C21: and x, a            ; 92
1C22: and y, z            ; 94
1C23: mul x, a            ; 52
1C24: sub a, x            ; 49
1C25: mul y, z            ; 55
1C26: sub a, y            ; 4A
1C27: sub a, x            ; 49
1C28: push y              ; 02
1C29: nop                 ; 00
1C2A: nop                 ; 00
1C2B: sub z, y            ; 40
1C2C: push y              ; 02
1C2D: nop                 ; 00
1C2E: nop                 ; 00
1C2F: push y              ; 02
1C30: nop                 ; 00
1C31: or w, y             ; B0
1C32: or z, a             ; AE
1C33: not x               ; B7
1C34: nop                 ; FB
1C35: push x              ; 01
1C36: nop                 ; 00
1C37: nop                 ; 00
1C38: nop                 ; FC
1C39: nop                 ; FF
1C3A: or y, a             ; AA
1C3B: or y, a             ; AA
1C3C: or y, a             ; AA
1C3D: or x, z             ; A4
1C3E: or y, a             ; AA
1C3F: and x, a            ; 92
1C40: or y, a             ; AA
1C41: sub a, y            ; 4A
1C42: and x, a            ; 92
1C43: add z, a            ; 2A
1C44: or x, w             ; A5
1C45: or x, z             ; A4
1C46: mul x, a            ; 52
1C47: and x, a            ; 92
1C48: mul x, a            ; 52
1C49: mul y, z            ; 55
1C4A: mul y, z            ; 55
1C4B: mul y, z            ; 55
1C4C: mul y, z            ; 55
1C4D: and x, a            ; 92
1C4E: mul x, a            ; 52
1C4F: or y, a             ; AA
1C50: pop a               ; 0A
1C51: nop                 ; 00
1C52: sub z, y            ; 40
1C53: nop                 ; 00
1C54: push x              ; 01
1C55: nop                 ; 00
1C56: nop                 ; 00
1C57: pop z               ; 08
1C58: pop w               ; 09
1C59: sub w, x            ; 44
1C5A: shr z               ; DC
1C5B: nop                 ; FE
1C5C: shr a               ; DE
1C5D: nop                 ; 00
1C5E: nop                 ; 00
1C5F: nop                 ; 00
1C60: nop                 ; FC
1C61: nop                 ; FF
1C62: or y, w             ; A9
1C63: add z, a            ; 2A
1C64: mul y, z            ; 55
1C65: mul y, z            ; 55
1C66: mul y, z            ; 55
1C67: mul y, z            ; 55
1C68: or x, w             ; A5
1C69: mul y, y            ; 54
1C6A: add z, w            ; 29
1C6B: sub a, x            ; 49
1C6C: add z, w            ; 29
1C6D: mul y, z            ; 55
1C6E: add y, a            ; 25
1C6F: or y, w             ; A9
1C70: and y, z            ; 94
1C71: or y, a             ; AA
1C72: or y, a             ; AA
1C73: and y, z            ; 94
1C74: or y, a             ; AA
1C75: or y, a             ; AA
1C76: mul y, y            ; 54
1C77: mul y, z            ; 55
1C78: push a              ; 05
1C79: nop                 ; 00
1C7A: nop                 ; 00
1C7B: nop                 ; 00
1C7C: push x              ; 01
1C7D: nop                 ; 00
1C7E: nop                 ; 00
1C7F: sub z, y            ; 40
1C80: nop                 ; 00
1C81: sub z, y            ; 40
1C82: inc w               ; 6A
1C83: jmp z, w            ; EB
1C84: inc a               ; 6B
1C85: nop                 ; 00
1C86: nop                 ; 00
1C87: nop                 ; 00
1C88: nop                 ; FC
1C89: nop                 ; FF
1C8A: add z, a            ; 2A
1C8B: or y, w             ; A9
1C8C: or y, a             ; AA
1C8D: or y, a             ; AA
1C8E: or y, a             ; AA
1C8F: or y, a             ; AA
1C90: add z, a            ; 2A
1C91: add y, a            ; 25
1C92: or x, w             ; A5
1C93: or y, a             ; AA
1C94: or y, a             ; AA
1C95: add z, a            ; 2A
1C96: sub a, x            ; 49
1C97: and y, w            ; 95
1C98: or y, a             ; AA
1C99: add y, w            ; 24
1C9A: or x, w             ; A5
1C9B: or y, a             ; AA
1C9C: or x, z             ; A4
1C9D: sub a, y            ; 4A
1C9E: mul y, z            ; 55
1C9F: and y, w            ; 95
1CA0: store $0000, a      ; 14 00 00
1CA3: nop                 ; 00
1CA4: nop                 ; 00
1CA5: nop                 ; 00
1CA6: nop                 ; 00
1CA7: nop                 ; 00
1CA8: nop                 ; 00
1CA9: store $BFDC, x      ; 10 DC BF
1CAC: cmp z, w            ; 7E
1CAD: nop                 ; 00
1CAE: nop                 ; 00
1CAF: nop                 ; 00
1CB0: nop                 ; FC
1CB1: nop                 ; FF
1CB2: mul y, z            ; 55
1CB3: mul y, z            ; 55
1CB4: mul y, z            ; 55
1CB5: and y, w            ; 95
1CB6: mul x, a            ; 52
1CB7: and y, w            ; 95
1CB8: mul y, y            ; 54
1CB9: mul y, z            ; 55
1CBA: and y, w            ; 95
1CBB: add y, w            ; 24
1CBC: or x, w             ; A5
1CBD: or x, z             ; A4
1CBE: or y, a             ; AA
1CBF: mul x, a            ; 52
1CC0: mul x, a            ; 52
1CC1: mul y, z            ; 55
1CC2: add z, w            ; 29
1CC3: or x, w             ; A5
1CC4: add z, a            ; 2A
1CC5: add z, w            ; 29
1CC6: sub a, x            ; 49
1CC7: mul x, a            ; 52
1CC8: mul y, z            ; 55
1CC9: nop                 ; 00
1CCA: nop                 ; 00
1CCB: nop                 ; 00
1CCC: nop                 ; 00
1CCD: nop                 ; 00
1CCE: nop                 ; 00
1CCF: nop                 ; 00
1CD0: push y              ; 02
1CD1: nop                 ; 00
1CD2: ror x               ; E4
1CD3: int $2B             ; F6 2B
1CD5: nop                 ; 00
1CD6: nop                 ; 00
1CD7: nop                 ; 00
1CD8: nop                 ; FC
1CD9: nop                 ; FF
1CDA: or x, w             ; A5
1CDB: or y, a             ; AA
1CDC: or y, a             ; AA
1CDD: or y, a             ; AA
1CDE: or y, a             ; AA
1CDF: mul x, a            ; 52
1CE0: or x, w             ; A5
1CE1: mul x, a            ; 52
1CE2: mul x, a            ; 52
1CE3: mul y, z            ; 55
1CE4: add z, w            ; 29
1CE5: and y, w            ; 95
1CE6: mul y, y            ; 54
1CE7: or y, a             ; AA
1CE8: add z, a            ; 2A
1CE9: sub a, x            ; 49
1CEA: mul y, z            ; 55
1CEB: or y, w             ; A9
1CEC: or y, a             ; AA
1CED: or y, a             ; AA
1CEE: or y, a             ; AA
1CEF: or y, a             ; AA
1CF0: or y, a             ; AA
1CF1: nop                 ; 00
1CF2: nop                 ; 00
1CF3: nop                 ; 00
1CF4: nop                 ; 00
1CF5: nop                 ; 00
1CF6: nop                 ; 00
1CF7: add y, y            ; 22
1CF8: add x, a            ; 20
1CF9: nop                 ; 00
1CFA: or a, y             ; B4
1CFB: or w, x             ; AF
1CFC: sub y, a            ; 3E
1CFD: nop                 ; 00
1CFE: nop                 ; 00
1CFF: nop                 ; 00
1D00: nop                 ; FC
1D01: nop                 ; FF
1D02: mul y, z            ; 55
1D03: mul y, z            ; 55
1D04: mul y, z            ; 55
1D05: mul y, z            ; 55
1D06: mul y, z            ; 55
1D07: or y, a             ; AA
1D08: add z, a            ; 2A
1D09: and y, w            ; 95
1D0A: add z, a            ; 2A
1D0B: sub a, x            ; 49
1D0C: sub a, y            ; 4A
1D0D: or y, w             ; A9
1D0E: and x, a            ; 92
1D0F: sub a, y            ; 4A
1D10: sub a, x            ; 49
1D11: mul y, z            ; 55
1D12: or y, a             ; AA
1D13: sub a, y            ; 4A
1D14: mul x, a            ; 52
1D15: mul y, z            ; 55
1D16: and y, w            ; 95
1D17: or y, a             ; AA
1D18: and x, a            ; 92
1D19: push y              ; 02
1D1A: nop                 ; 00
1D1B: nop                 ; 00
1D1C: nop                 ; 00
1D1D: push y              ; 02
1D1E: nop                 ; 00
1D1F: nop                 ; 00
1D20: push w              ; 04
1D21: nop                 ; 00
1D22: nop                 ; F8
1D23: nop                 ; FA
1D24: set a, $00          ; 1B 00
1D26: nop                 ; 00
1D27: nop                 ; 00
1D28: nop                 ; FC
1D29: nop                 ; FF
1D2A: and y, z            ; 94
1D2B: and y, z            ; 94
1D2C: or y, a             ; AA
1D2D: or y, a             ; AA
1D2E: or y, a             ; AA
1D2F: add z, a            ; 2A
1D30: or y, w             ; A9
1D31: mul y, y            ; 54
1D32: or x, w             ; A5
1D33: or y, a             ; AA
1D34: or y, a             ; AA
1D35: sub a, y            ; 4A
1D36: or y, a             ; AA
1D37: mul x, a            ; 52
1D38: or y, a             ; AA
1D39: or x, z             ; A4
1D3A: sub a, y            ; 4A
1D3B: or y, a             ; AA
1D3C: add z, a            ; 2A
1D3D: sub a, x            ; 49
1D3E: mul x, a            ; 52
1D3F: sub a, x            ; 49
1D40: or y, a             ; AA
1D41: pop a               ; 0A
1D42: nop                 ; 00
1D43: nop                 ; 00
1D44: nop                 ; 00
1D45: nop                 ; 00
1D46: nop                 ; 00
1D47: cmp w, x            ; 80
1D48: nop                 ; 00
1D49: nop                 ; 00
1D4A: or y, z             ; A8
1D4B: rol x               ; DF
1D4C: return              ; 16
1D4D: nop                 ; 00
1D4E: nop                 ; 00
1D4F: nop                 ; 00
1D50: nop                 ; FC
1D51: nop                 ; FF
1D52: or y, a             ; AA
1D53: or y, a             ; AA
1D54: and x, a            ; 92
1D55: mul x, a            ; 52
1D56: sub a, y            ; 4A
1D57: mul y, z            ; 55
1D58: mul y, z            ; 55
1D59: or x, w             ; A5
1D5A: and y, z            ; 94
1D5B: add y, w            ; 24
1D5C: add z, w            ; 29
1D5D: mul y, z            ; 55
1D5E: add y, a            ; 25
1D5F: sub a, x            ; 49
1D60: add y, a            ; 25
1D61: and y, w            ; 95
1D62: mul y, y            ; 54
1D63: or y, w             ; A9
1D64: sub a, y            ; 4A
1D65: mul y, z            ; 55
1D66: and y, w            ; 95
1D67: or y, a             ; AA
1D68: or y, a             ; AA
1D69: store $0000, a      ; 14 00 00
1D6C: nop                 ; 00
1D6D: nop                 ; 00
1D6E: nop                 ; 00
1D6F: store $0048, x      ; 10 48 00
1D72: nop                 ; FC
1D73: cmp y, x            ; 76
1D74: load a, $0000       ; 0F 00 00
1D77: nop                 ; 00
1D78: nop                 ; FC
1D79: nop                 ; FF
1D7A: mul x, a            ; 52
1D7B: mul y, z            ; 55
1D7C: mul y, z            ; 55
1D7D: or y, a             ; AA
1D7E: or y, a             ; AA
1D7F: sub a, y            ; 4A
1D80: and y, w            ; 95
1D81: or y, a             ; AA
1D82: mul x, a            ; 52
1D83: mul y, z            ; 55
1D84: or x, w             ; A5
1D85: add y, w            ; 24
1D86: or y, w             ; A9
1D87: add z, a            ; 2A
1D88: or y, w             ; A9
1D89: mul x, a            ; 52
1D8A: add y, a            ; 25
1D8B: and y, w            ; 95
1D8C: mul y, y            ; 54
1D8D: mul y, z            ; 55
1D8E: or y, w             ; A9
1D8F: or x, z             ; A4
1D90: sub a, y            ; 4A
1D91: mul y, z            ; 55
1D92: nop                 ; 00
1D93: nop                 ; 00
1D94: nop                 ; 00
1D95: nop                 ; 00
1D96: nop                 ; 00
1D97: nop                 ; 00
1D98: push x              ; 01
1D99: nop                 ; 00
1D9A: xor a, x            ; D0
1D9B: shr w               ; DD
1D9C: push a              ; 05
1D9D: nop                 ; 00
1D9E: nop                 ; 00
1D9F: nop                 ; 00
1DA0: nop                 ; FC
1DA1: nop                 ; FF
1DA2: mul y, z            ; 55
1DA3: mul y, z            ; 55
1DA4: mul y, z            ; 55
1DA5: mul y, z            ; 55
1DA6: mul y, z            ; 55
1DA7: or y, w             ; A9
1DA8: or x, z             ; A4
1DA9: and y, z            ; 94
1DAA: add z, a            ; 2A
1DAB: sub a, x            ; 49
1DAC: or y, a             ; AA
1DAD: or y, a             ; AA
1DAE: sub a, y            ; 4A
1DAF: or y, a             ; AA
1DB0: sub a, y            ; 4A
1DB1: add z, a            ; 2A
1DB2: and y, w            ; 95
1DB3: mul x, a            ; 52
1DB4: mul y, z            ; 55
1DB5: mul x, a            ; 52
1DB6: add y, a            ; 25
1DB7: and y, w            ; 95
1DB8: mul y, y            ; 54
1DB9: or x, w             ; A5
1DBA: nop                 ; 00
1DBB: nop                 ; 00
1DBC: nop                 ; 00
1DBD: nop                 ; 00
1DBE: nop                 ; 00
1DBF: nop                 ; 00
1DC0: nop                 ; 00
1DC1: push x              ; 01
1DC2: dec x               ; 6C
1DC3: cmp y, y            ; 77
1DC4: pop y               ; 07
1DC5: nop                 ; 00
1DC6: nop                 ; 00
1DC7: nop                 ; 00
1DC8: nop                 ; FC
1DC9: nop                 ; FF
1DCA: mul y, z            ; 55
1DCB: or y, a             ; AA
1DCC: mul y, y            ; 54
1DCD: mul y, z            ; 55
1DCE: or y, w             ; A9
1DCF: or y, a             ; AA
1DD0: or y, a             ; AA
1DD1: mul x, a            ; 52
1DD2: sub a, y            ; 4A
1DD3: mul y, z            ; 55
1DD4: sub a, x            ; 49
1DD5: mul x, a            ; 52
1DD6: or y, a             ; AA
1DD7: and x, a            ; 92
1DD8: mul y, y            ; 54
1DD9: sub a, x            ; 49
1DDA: or y, w             ; A9
1DDB: sub a, y            ; 4A
1DDC: or x, w             ; A5
1DDD: sub a, y            ; 4A
1DDE: or y, a             ; AA
1DDF: mul x, a            ; 52
1DE0: mul y, z            ; 55
1DE1: or y, w             ; A9
1DE2: push y              ; 02
1DE3: nop                 ; 00
1DE4: nop                 ; 00
1DE5: nop                 ; 00
1DE6: nop                 ; 00
1DE7: sub z, y            ; 40
1DE8: add y, w            ; 24
1DE9: nop                 ; 00
1DEA: xor a, x            ; D0
1DEB: shr a               ; DE
1DEC: push z              ; 03
1DED: nop                 ; 00
1DEE: nop                 ; 00
1DEF: nop                 ; 00
1DF0: nop                 ; FC
1DF1: nop                 ; FF
1DF2: and y, w            ; 95
1DF3: mul x, a            ; 52
1DF4: mul y, z            ; 55
1DF5: or x, w             ; A5
1DF6: or y, a             ; AA
1DF7: or y, a             ; AA
1DF8: or y, a             ; AA
1DF9: or y, a             ; AA
1DFA: mul x, a            ; 52
1DFB: and x, a            ; 92
1DFC: or y, a             ; AA
1DFD: sub a, y            ; 4A
1DFE: add z, w            ; 29
1DFF: mul y, z            ; 55
1E00: or x, w             ; A5
1E01: or y, a             ; AA
1E02: add z, a            ; 2A
1E03: mul y, z            ; 55
1E04: or y, a             ; AA
1E05: or y, a             ; AA
1E06: or y, a             ; AA
1E07: and y, z            ; 94
1E08: add y, w            ; 24
1E09: and y, w            ; 95
1E0A: pop a               ; 0A
1E0B: nop                 ; 00
1E0C: nop                 ; 00
1E0D: nop                 ; 00
1E0E: nop                 ; 00
1E0F: nop                 ; 00
1E10: nop                 ; 00
1E11: push w              ; 04
1E12: xor a, a            ; D4
1E13: cmp z, x            ; 7B
1E14: push x              ; 01
1E15: nop                 ; 00
1E16: nop                 ; 00
1E17: nop                 ; 00
1E18: nop                 ; FC
1E19: nop                 ; FF
1E1A: or x, z             ; A4
1E1B: add z, a            ; 2A
1E1C: add y, a            ; 25
1E1D: mul y, z            ; 55
1E1E: add z, a            ; 2A
1E1F: mul y, z            ; 55
1E20: and y, w            ; 95
1E21: and y, z            ; 94
1E22: or y, a             ; AA
1E23: or y, a             ; AA
1E24: add y, w            ; 24
1E25: or y, w             ; A9
1E26: sub a, y            ; 4A
1E27: sub a, x            ; 49
1E28: mul x, a            ; 52
1E29: mul x, a            ; 52
1E2A: sub a, y            ; 4A
1E2B: or y, w             ; A9
1E2C: and x, a            ; 92
1E2D: mul y, y            ; 54
1E2E: and y, w            ; 95
1E2F: mul x, a            ; 52
1E30: mul y, z            ; 55
1E31: mul y, z            ; 55
1E32: call $0000          ; 15 00 00
1E35: nop                 ; 00
1E36: nop                 ; 00
1E37: nop                 ; 00
1E38: store $D400, y      ; 11 00 D4
1E3B: shl y               ; D6
1E3C: push x              ; 01
1E3D: nop                 ; 00
1E3E: nop                 ; 00
1E3F: nop                 ; 00
1E40: nop                 ; FC
1E41: nop                 ; FF
1E42: mul y, z            ; 55
1E43: or x, w             ; A5
1E44: or y, a             ; AA
1E45: or y, a             ; AA
1E46: or y, a             ; AA
1E47: sub a, y            ; 4A
1E48: or y, w             ; A9
1E49: mul x, a            ; 52
1E4A: sub a, y            ; 4A
1E4B: add y, a            ; 25
1E4C: mul y, z            ; 55
1E4D: and y, w            ; 95
1E4E: mul x, a            ; 52
1E4F: or y, a             ; AA
1E50: sub a, y            ; 4A
1E51: and y, w            ; 95
1E52: mul x, a            ; 52
1E53: sub a, y            ; 4A
1E54: mul y, z            ; 55
1E55: add y, a            ; 25
1E56: or y, w             ; A9
1E57: sub a, y            ; 4A
1E58: mul x, a            ; 52
1E59: add y, a            ; 25
1E5A: add z, w            ; 29
1E5B: nop                 ; 00
1E5C: nop                 ; 00
1E5D: nop                 ; 00
1E5E: nop                 ; 00
1E5F: nop                 ; 00
1E60: cmp w, x            ; 80
1E61: nop                 ; 00
1E62: mul a, z            ; 64
1E63: cmp z, a            ; 7F
1E64: push x              ; 01
1E65: nop                 ; 00
1E66: nop                 ; 00
1E67: nop                 ; 00
1E68: nop                 ; FC
1E69: nop                 ; FF
1E6A: or y, a             ; AA
1E6B: mul y, y            ; 54
1E6C: mul y, z            ; 55
1E6D: sub a, x            ; 49
1E6E: mul y, z            ; 55
1E6F: mul y, z            ; 55
1E70: mul y, z            ; 55
1E71: mul y, z            ; 55
1E72: add z, w            ; 29
1E73: or y, w             ; A9
1E74: and x, a            ; 92
1E75: mul y, y            ; 54
1E76: or y, a             ; AA
1E77: add z, a            ; 2A
1E78: or y, w             ; A9
1E79: or x, z             ; A4
1E7A: or y, a             ; AA
1E7B: or y, a             ; AA
1E7C: mul y, y            ; 54
1E7D: mul y, z            ; 55
1E7E: or x, w             ; A5
1E7F: mul y, y            ; 54
1E80: and y, w            ; 95
1E81: mul y, y            ; 54
1E82: mul y, z            ; 55
1E83: push x              ; 01
1E84: nop                 ; 00
1E85: nop                 ; 00
1E86: nop                 ; 00
1E87: nop                 ; 00
1E88: push w              ; 04
1E89: store $D5DC, x      ; 10 DC D5
1E8C: nop                 ; 00
1E8D: nop                 ; 00
1E8E: nop                 ; 00
1E8F: nop                 ; 00
1E90: nop                 ; FC
1E91: nop                 ; FF
1E92: or x, w             ; A5
1E93: add z, a            ; 2A
1E94: or y, w             ; A9
1E95: or y, a             ; AA
1E96: mul x, a            ; 52
1E97: add z, w            ; 29
1E98: or x, w             ; A5
1E99: or y, a             ; AA
1E9A: or y, a             ; AA
1E9B: or y, a             ; AA
1E9C: mul y, y            ; 54
1E9D: or x, w             ; A5
1E9E: sub a, y            ; 4A
1E9F: sub a, x            ; 49
1EA0: and y, w            ; 95
1EA1: add z, a            ; 2A
1EA2: sub a, x            ; 49
1EA3: add z, w            ; 29
1EA4: mul y, z            ; 55
1EA5: mul y, z            ; 55
1EA6: mul y, z            ; 55
1EA7: add y, a            ; 25
1EA8: or y, w             ; A9
1EA9: or y, a             ; AA
1EAA: mul x, a            ; 52
1EAB: push x              ; 01
1EAC: store $0000, x      ; 10 00 00
1EAF: store $0220, x      ; 10 20 02
1EB2: cmp x, w            ; 74
1EB3: cmp z, a            ; 7F
1EB4: nop                 ; 00
1EB5: nop                 ; 00
1EB6: nop                 ; 00
1EB7: nop                 ; 00
1EB8: nop                 ; FC
1EB9: nop                 ; FF
1EBA: and y, w            ; 95
1EBB: or y, a             ; AA
1EBC: add z, a            ; 2A
1EBD: mul y, z            ; 55
1EBE: add z, a            ; 2A
1EBF: mul y, z            ; 55
1EC0: mul y, z            ; 55
1EC1: sub a, y            ; 4A
1EC2: or x, w             ; A5
1EC3: and y, z            ; 94
1EC4: sub a, y            ; 4A
1EC5: and y, w            ; 95
1EC6: mul x, a            ; 52
1EC7: or y, a             ; AA
1EC8: mul y, y            ; 54
1EC9: or y, a             ; AA
1ECA: add z, a            ; 2A
1ECB: or x, w             ; A5
1ECC: sub a, y            ; 4A
1ECD: mul x, a            ; 52
1ECE: add z, a            ; 2A
1ECF: mul y, z            ; 55
1ED0: sub a, y            ; 4A
1ED1: and x, a            ; 92
1ED2: and y, z            ; 94
1ED3: pop a               ; 0A
1ED4: nop                 ; 00
1ED5: nop                 ; 00
1ED6: nop                 ; 00
1ED7: sub z, y            ; 40
1ED8: nop                 ; 00
1ED9: nop                 ; 00
1EDA: nop                 ; F8
1EDB: mul y, w            ; 56
1EDC: nop                 ; 00
1EDD: nop                 ; 00
1EDE: nop                 ; 00
1EDF: nop                 ; 00
1EE0: nop                 ; FC
1EE1: nop                 ; FF
1EE2: mul y, y            ; 54
1EE3: sub a, x            ; 49
1EE4: or x, w             ; A5
1EE5: or y, a             ; AA
1EE6: sub a, y            ; 4A
1EE7: or x, w             ; A5
1EE8: and y, z            ; 94
1EE9: mul x, a            ; 52
1EEA: or y, a             ; AA
1EEB: mul x, a            ; 52
1EEC: add z, w            ; 29
1EED: or y, w             ; A9
1EEE: and y, z            ; 94
1EEF: and x, a            ; 92
1EF0: mul x, a            ; 52
1EF1: sub a, x            ; 49
1EF2: mul x, a            ; 52
1EF3: mul y, z            ; 55
1EF4: mul x, a            ; 52
1EF5: mul y, z            ; 55
1EF6: or y, w             ; A9
1EF7: sub a, y            ; 4A
1EF8: or y, w             ; A9
1EF9: or y, a             ; AA
1EFA: or y, a             ; AA
1EFB: pop a               ; 0A
1EFC: cmp w, z            ; 82
1EFD: nop                 ; 00
1EFE: nop                 ; 00
1EFF: nop                 ; 00
1F00: cmp w, y            ; 81
1F01: add x, a            ; 20
1F02: or y, z             ; A8
1F03: sub y, y            ; 3B
1F04: nop                 ; 00
1F05: nop                 ; 00
1F06: nop                 ; 00
1F07: nop                 ; 00
1F08: nop                 ; FC
1F09: nop                 ; FF
1F0A: or y, a             ; AA
1F0B: or y, a             ; AA
1F0C: mul y, y            ; 54
1F0D: sub a, x            ; 49
1F0E: or y, w             ; A9
1F0F: or y, a             ; AA
1F10: mul x, a            ; 52
1F11: mul y, z            ; 55
1F12: and y, w            ; 95
1F13: sub a, y            ; 4A
1F14: or y, a             ; AA
1F15: sub a, y            ; 4A
1F16: mul y, z            ; 55
1F17: mul y, z            ; 55
1F18: and y, w            ; 95
1F19: or y, a             ; AA
1F1A: sub a, y            ; 4A
1F1B: and x, a            ; 92
1F1C: or y, a             ; AA
1F1D: sub a, y            ; 4A
1F1E: and y, w            ; 95
1F1F: mul x, a            ; 52
1F20: add y, a            ; 25
1F21: or y, w             ; A9
1F22: sub a, y            ; 4A
1F23: or w, a             ; B2
1F24: call $0002          ; 15 02 00
1F27: mul y, y            ; 54
1F28: push w              ; 04
1F29: push w              ; 04
1F2A: rol y               ; E0
1F2B: add x, z            ; 1E
1F2C: nop                 ; 00
1F2D: nop                 ; 00
1F2E: nop                 ; 00
1F2F: nop                 ; 00
1F30: nop                 ; FC
1F31: nop                 ; FF
1F32: or y, a             ; AA
1F33: add z, a            ; 2A
1F34: mul y, z            ; 55
1F35: or y, a             ; AA
1F36: or y, a             ; AA
1F37: and y, z            ; 94
1F38: add z, a            ; 2A
1F39: and y, w            ; 95
1F3A: mul x, a            ; 52
1F3B: mul y, z            ; 55
1F3C: or x, w             ; A5
1F3D: mul x, a            ; 52
1F3E: mul x, a            ; 52
1F3F: add z, a            ; 2A
1F40: or x, w             ; A5
1F41: and x, a            ; 92
1F42: mul y, y            ; 54
1F43: mul y, z            ; 55
1F44: add y, a            ; 25
1F45: mul y, z            ; 55
1F46: or x, w             ; A5
1F47: and y, z            ; 94
1F48: and y, z            ; 94
1F49: sub a, y            ; 4A
1F4A: mul x, a            ; 52
1F4B: mul y, z            ; 55
1F4C: add z, a            ; 2A
1F4D: store $2000, x      ; 10 00 20
1F50: push x              ; 01
1F51: nop                 ; 00
1F52: xor x, a            ; C0
1F53: load x, $0000       ; 0B 00 00
1F56: nop                 ; 00
1F57: nop                 ; 00
1F58: nop                 ; FC
1F59: nop                 ; FF
1F5A: mul y, z            ; 55
1F5B: mul y, z            ; 55
1F5C: and y, w            ; 95
1F5D: add z, a            ; 2A
1F5E: and y, w            ; 95
1F5F: mul x, a            ; 52
1F60: or y, w             ; A9
1F61: mul x, a            ; 52
1F62: mul y, z            ; 55
1F63: add z, w            ; 29
1F64: mul y, z            ; 55
1F65: or y, a             ; AA
1F66: sub a, y            ; 4A
1F67: or x, w             ; A5
1F68: mul y, y            ; 54
1F69: or y, a             ; AA
1F6A: add z, a            ; 2A
1F6B: mul y, z            ; 55
1F6C: or y, w             ; A9
1F6D: mul x, a            ; 52
1F6E: or y, a             ; AA
1F6F: or y, a             ; AA
1F70: mul x, a            ; 52
1F71: or y, w             ; A9
1F72: add z, a            ; 2A
1F73: sub a, x            ; 49
1F74: or y, w             ; A9
1F75: nop                 ; 00
1F76: nop                 ; 00
1F77: jmp x, y            ; EA
1F78: push y              ; 02
1F79: push x              ; 01
1F7A: cmp w, y            ; 81
1F7B: add x, z            ; 1E
1F7C: nop                 ; 00
1F7D: nop                 ; 00
1F7E: nop                 ; 00
1F7F: nop                 ; 00
1F80: nop                 ; FC
1F81: nop                 ; FF
1F82: mul y, z            ; 55
1F83: or x, w             ; A5
1F84: mul x, a            ; 52
1F85: or x, w             ; A5
1F86: or x, z             ; A4
1F87: add z, a            ; 2A
1F88: or x, w             ; A5
1F89: mul y, y            ; 54
1F8A: sub a, y            ; 4A
1F8B: or y, a             ; AA
1F8C: or x, z             ; A4
1F8D: sub a, y            ; 4A
1F8E: mul y, z            ; 55
1F8F: or y, w             ; A9
1F90: sub a, y            ; 4A
1F91: add y, a            ; 25
1F92: sub a, x            ; 49
1F93: sub a, x            ; 49
1F94: or y, a             ; AA
1F95: mul y, y            ; 54
1F96: mul y, z            ; 55
1F97: mul y, z            ; 55
1F98: and y, w            ; 95
1F99: and y, z            ; 94
1F9A: or y, a             ; AA
1F9B: add z, a            ; 2A
1F9C: or x, w             ; A5
1F9D: sub z, w            ; 42
1F9E: nop                 ; 00
1F9F: cmp y, z            ; 78
1FA0: push x              ; 01
1FA1: sub w, a            ; 48
1FA2: nop                 ; 00
1FA3: load x, $0000       ; 0B 00 00
1FA6: nop                 ; 00
1FA7: nop                 ; 00
1FA8: nop                 ; FC
1FA9: nop                 ; FF
1FAA: or x, z             ; A4
1FAB: or y, a             ; AA
1FAC: mul y, y            ; 54
1FAD: or y, w             ; A9
1FAE: or y, a             ; AA
1FAF: or x, z             ; A4
1FB0: add z, a            ; 2A
1FB1: and y, w            ; 95
1FB2: mul x, a            ; 52
1FB3: and y, w            ; 95
1FB4: add z, a            ; 2A
1FB5: or y, w             ; A9
1FB6: add y, w            ; 24
1FB7: mul y, z            ; 55
1FB8: mul x, a            ; 52
1FB9: or y, w             ; A9
1FBA: or y, a             ; AA
1FBB: or y, a             ; AA
1FBC: sub a, y            ; 4A
1FBD: and y, w            ; 95
1FBE: sub a, y            ; 4A
1FBF: and x, a            ; 92
1FC0: mul y, y            ; 54
1FC1: sub a, y            ; 4A
1FC2: sub a, x            ; 49
1FC3: or x, w             ; A5
1FC4: and y, z            ; 94
1FC5: push w              ; 04
1FC6: push y              ; 02
1FC7: jmp.lt $000A        ; F4 0A 00
1FCA: nop                 ; 00
1FCB: pop x               ; 06
1FCC: nop                 ; 00
1FCD: nop                 ; 00
1FCE: nop                 ; 00
1FCF: nop                 ; 00
1FD0: nop                 ; FC
1FD1: nop                 ; FF
1FD2: mul y, z            ; 55
1FD3: or y, a             ; AA
1FD4: sub a, y            ; 4A
1FD5: and y, w            ; 95
1FD6: and x, a            ; 92
1FD7: add z, a            ; 2A
1FD8: sub a, x            ; 49
1FD9: sub a, x            ; 49
1FDA: or y, w             ; A9
1FDB: or x, z             ; A4
1FDC: sub a, y            ; 4A
1FDD: and y, w            ; 95
1FDE: or y, a             ; AA
1FDF: and x, a            ; 92
1FE0: add z, a            ; 2A
1FE1: mul y, z            ; 55
1FE2: and x, a            ; 92
1FE3: and y, z            ; 94
1FE4: or y, a             ; AA
1FE5: or y, a             ; AA
1FE6: mul y, y            ; 54
1FE7: mul y, z            ; 55
1FE8: or x, w             ; A5
1FE9: mul x, a            ; 52
1FEA: add z, a            ; 2A
1FEB: or y, w             ; A9
1FEC: or y, a             ; AA
1FED: pop a               ; 0A
1FEE: pop z               ; 08
1FEF: nop                 ; F9
1FF0: push x              ; 01
1FF1: nop                 ; 00
1FF2: pop z               ; 08
1FF3: push w              ; 04
1FF4: nop                 ; 00
1FF5: nop                 ; 00
1FF6: nop                 ; 00
1FF7: nop                 ; 00
1FF8: nop                 ; FC
1FF9: nop                 ; FF
1FFA: or y, a             ; AA
1FFB: add z, a            ; 2A
1FFC: mul y, z            ; 55
1FFD: or y, a             ; AA
1FFE: mul y, y            ; 54
1FFF: or y, a             ; AA
2000: or y, a             ; AA
2001: mul x, a            ; 52
2002: add z, a            ; 2A
2003: mul y, z            ; 55
2004: or y, w             ; A9
2005: or x, z             ; A4
2006: and x, a            ; 92
2007: or y, a             ; AA
2008: or y, a             ; AA
2009: sub a, y            ; 4A
200A: mul y, z            ; 55
200B: or x, w             ; A5
200C: or x, z             ; A4
200D: or x, z             ; A4
200E: or y, a             ; AA
200F: or y, a             ; AA
2010: or y, a             ; AA
2011: add y, w            ; 24
2012: or x, w             ; A5
2013: add z, a            ; 2A
2014: add y, a            ; 25
2015: mul y, z            ; 55
2016: add x, a            ; 20
2017: xor x, a            ; C0
2018: push a              ; 05
2019: and x, z            ; 90
201A: nop                 ; 00
201B: nop                 ; 00
201C: nop                 ; 00
201D: nop                 ; 00
201E: nop                 ; 00
201F: nop                 ; 00
2020: nop                 ; FC
2021: nop                 ; FF
2022: and x, a            ; 92
2023: mul x, a            ; 52
2024: mul y, z            ; 55
2025: add z, w            ; 29
2026: or x, w             ; A5
2027: mul x, a            ; 52
2028: and x, a            ; 92
2029: and y, z            ; 94
202A: and x, a            ; 92
202B: add z, a            ; 2A
202C: mul y, z            ; 55
202D: mul y, z            ; 55
202E: or y, a             ; AA
202F: add y, w            ; 24
2030: sub a, x            ; 49
2031: mul x, a            ; 52
2032: add y, a            ; 25
2033: mul y, z            ; 55
2034: and y, w            ; 95
2035: or y, a             ; AA
2036: and x, a            ; 92
2037: add y, w            ; 24
2038: and y, w            ; 95
2039: sub a, y            ; 4A
203A: or y, w             ; A9
203B: mul x, a            ; 52
203C: or y, a             ; AA
203D: mul y, y            ; 54
203E: sub w, a            ; 48
203F: mul y, y            ; 54
2040: push x              ; 01
2041: nop                 ; 00
2042: nop                 ; 00
2043: nop                 ; 00
2044: nop                 ; 00
2045: nop                 ; 00
2046: nop                 ; 00
2047: nop                 ; 00
2048: nop                 ; FC
2049: nop                 ; FF
204A: or y, a             ; AA
204B: and y, z            ; 94
204C: and x, a            ; 92
204D: sub a, y            ; 4A
204E: and y, w            ; 95
204F: sub a, y            ; 4A
2050: mul y, z            ; 55
2051: or y, a             ; AA
2052: or x, z             ; A4
2053: or x, z             ; A4
2054: sub a, y            ; 4A
2055: mul x, a            ; 52
2056: or y, w             ; A9
2057: or y, a             ; AA
2058: or y, a             ; AA
2059: or y, a             ; AA
205A: mul y, y            ; 54
205B: add z, w            ; 29
205C: mul y, z            ; 55
205D: add z, a            ; 2A
205E: mul y, z            ; 55
205F: mul y, z            ; 55
2060: or y, w             ; A9
2061: add z, a            ; 2A
2062: and y, w            ; 95
2063: and y, z            ; 94
2064: and x, a            ; 92
2065: mul x, a            ; 52
2066: or x, y             ; A3
2067: store $0002, y      ; 11 02 00
206A: push y              ; 02
206B: nop                 ; 00
206C: nop                 ; 00
206D: nop                 ; 00
206E: nop                 ; 00
206F: nop                 ; 00
2070: nop                 ; FC
2071: nop                 ; FF
2072: mul y, z            ; 55
2073: mul y, z            ; 55
2074: or y, a             ; AA
2075: or y, a             ; AA
2076: mul y, y            ; 54
2077: or y, a             ; AA
2078: or x, z             ; A4
2079: and x, a            ; 92
207A: add z, a            ; 2A
207B: mul y, z            ; 55
207C: mul x, a            ; 52
207D: and y, w            ; 95
207E: sub a, y            ; 4A
207F: or y, a             ; AA
2080: mul x, a            ; 52
2081: add y, a            ; 25
2082: mul y, z            ; 55
2083: mul y, z            ; 55
2084: or y, w             ; A9
2085: mul x, a            ; 52
2086: mul y, z            ; 55
2087: mul y, z            ; 55
2088: mul y, z            ; 55
2089: mul x, a            ; 52
208A: mul y, z            ; 55
208B: mul y, z            ; 55
208C: mul y, z            ; 55
208D: and y, w            ; 95
208E: cmp w, a            ; 84
208F: cmp w, x            ; 80
2090: nop                 ; 00
2091: sub z, y            ; 40
2092: nop                 ; 00
2093: nop                 ; 00
2094: nop                 ; 00
2095: nop                 ; 00
2096: nop                 ; 00
2097: nop                 ; 00
2098: nop                 ; FC
2099: nop                 ; FF
209A: sub a, y            ; 4A
209B: sub a, y            ; 4A
209C: sub a, x            ; 49
209D: or y, w             ; A9
209E: or y, a             ; AA
209F: or y, a             ; AA
20A0: add z, a            ; 2A
20A1: mul y, z            ; 55
20A2: and x, a            ; 92
20A3: and x, a            ; 92
20A4: add z, a            ; 2A
20A5: mul y, z            ; 55
20A6: mul y, z            ; 55
20A7: sub a, x            ; 49
20A8: add z, a            ; 2A
20A9: or y, w             ; A9
20AA: and x, a            ; 92
20AB: and y, z            ; 94
20AC: sub a, y            ; 4A
20AD: mul y, z            ; 55
20AE: add z, w            ; 29
20AF: add y, a            ; 25
20B0: or x, w             ; A5
20B1: or y, a             ; AA
20B2: or x, z             ; A4
20B3: sub a, y            ; 4A
20B4: sub a, x            ; 49
20B5: mul x, a            ; 52
20B6: call $000B          ; 15 0B 00
20B9: nop                 ; 00
20BA: nop                 ; 00
20BB: nop                 ; 00
20BC: nop                 ; 00
20BD: nop                 ; 00
20BE: nop                 ; 00
20BF: nop                 ; 00
20C0: nop                 ; FC
20C1: nop                 ; FF
20C2: or y, a             ; AA
20C3: mul x, a            ; 52
20C4: mul y, z            ; 55
20C5: sub a, y            ; 4A
20C6: or y, w             ; A9
20C7: and x, a            ; 92
20C8: or y, a             ; AA
20C9: or x, z             ; A4
20CA: or y, a             ; AA
20CB: mul y, y            ; 54
20CC: mul y, z            ; 55
20CD: sub a, x            ; 49
20CE: or y, a             ; AA
20CF: or y, a             ; AA
20D0: sub a, y            ; 4A
20D1: mul y, z            ; 55
20D2: mul y, z            ; 55
20D3: or x, w             ; A5
20D4: mul x, a            ; 52
20D5: or x, w             ; A5
20D6: or y, a             ; AA
20D7: mul y, y            ; 54
20D8: mul y, z            ; 55
20D9: and y, w            ; 95
20DA: add z, a            ; 2A
20DB: add z, w            ; 29
20DC: mul y, z            ; 55
20DD: sub a, x            ; 49
20DE: add z, w            ; 29
20DF: add y, w            ; 24
20E0: nop                 ; 00
20E1: nop                 ; 00
20E2: nop                 ; 00
20E3: nop                 ; 00
20E4: nop                 ; 00
20E5: nop                 ; 00
20E6: nop                 ; 00
20E7: nop                 ; 00
20E8: nop                 ; FC
20E9: nop                 ; FF
20EA: or x, w             ; A5
20EB: or y, a             ; AA
20EC: or y, a             ; AA
20ED: add z, a            ; 2A
20EE: and y, w            ; 95
20EF: mul y, y            ; 54
20F0: mul y, z            ; 55
20F1: and y, w            ; 95
20F2: add y, w            ; 24
20F3: sub a, x            ; 49
20F4: and x, a            ; 92
20F5: or y, a             ; AA
20F6: add z, a            ; 2A
20F7: mul y, z            ; 55
20F8: or y, w             ; A9
20F9: and y, z            ; 94
20FA: mul y, y            ; 54
20FB: or y, a             ; AA
20FC: mul y, y            ; 54
20FD: add z, a            ; 2A
20FE: or x, w             ; A5
20FF: or y, a             ; AA
2100: and y, z            ; 94
2101: mul y, y            ; 54
2102: mul y, z            ; 55
2103: mul y, z            ; 55
2104: add y, a            ; 25
2105: mul y, z            ; 55
2106: or y, a             ; AA
2107: and x, z            ; 90
2108: nop                 ; 00
2109: nop                 ; 00
210A: nop                 ; 00
210B: nop                 ; 00
210C: nop                 ; 00
210D: nop                 ; 00
210E: nop                 ; 00
210F: nop                 ; 00
2110: nop                 ; FC
2111: nop                 ; FF
2112: add z, w            ; 29
2113: and y, w            ; 95
2114: or y, a             ; AA
2115: or y, a             ; AA
2116: mul x, a            ; 52
2117: mul y, z            ; 55
2118: mul x, a            ; 52
2119: mul y, z            ; 55
211A: mul y, z            ; 55
211B: or x, w             ; A5
211C: mul y, y            ; 54
211D: and x, a            ; 92
211E: or x, z             ; A4
211F: and x, a            ; 92
2120: or y, a             ; AA
2121: or y, a             ; AA
2122: sub a, y            ; 4A
2123: add z, w            ; 29
2124: mul y, z            ; 55
2125: or y, w             ; A9
2126: or y, a             ; AA
2127: and x, a            ; 92
2128: mul x, a            ; 52
2129: or x, w             ; A5
212A: or x, z             ; A4
212B: or x, z             ; A4
212C: mul y, y            ; 54
212D: sub a, x            ; 49
212E: or x, w             ; A5
212F: sub z, w            ; 42
2130: nop                 ; 00
2131: nop                 ; 00
2132: push w              ; 04
2133: nop                 ; 00
2134: nop                 ; 00
2135: nop                 ; 00
2136: nop                 ; 00
2137: nop                 ; 00
2138: nop                 ; FC
2139: nop                 ; FF
213A: mul y, z            ; 55
213B: or y, w             ; A9
213C: and y, z            ; 94
213D: sub a, y            ; 4A
213E: mul y, z            ; 55
213F: mul y, z            ; 55
2140: and y, w            ; 95
2141: mul x, a            ; 52
2142: and x, a            ; 92
2143: and y, z            ; 94
2144: sub a, y            ; 4A
2145: mul y, z            ; 55
2146: or y, w             ; A9
2147: mul y, y            ; 54
2148: add y, a            ; 25
2149: or x, w             ; A5
214A: or y, a             ; AA
214B: sub a, y            ; 4A
214C: add y, a            ; 25
214D: mul y, z            ; 55
214E: or y, w             ; A9
214F: or y, a             ; AA
2150: or y, a             ; AA
2151: or y, a             ; AA
2152: add z, a            ; 2A
2153: mul y, z            ; 55
2154: mul y, z            ; 55
2155: add y, a            ; 25
2156: sub a, x            ; 49
2157: pop a               ; 0A
2158: push y              ; 02
2159: nop                 ; 00
215A: nop                 ; 00
215B: nop                 ; 00
215C: nop                 ; 00
215D: nop                 ; 00
215E: nop                 ; 00
215F: nop                 ; 00
2160: nop                 ; FC
2161: nop                 ; FF
2162: or x, w             ; A5
2163: or y, a             ; AA
2164: or y, a             ; AA
2165: mul y, y            ; 54
2166: sub a, y            ; 4A
2167: and x, a            ; 92
2168: or y, a             ; AA
2169: sub a, y            ; 4A
216A: mul y, z            ; 55
216B: mul x, a            ; 52
216C: mul x, a            ; 52
216D: or x, w             ; A5
216E: sub a, y            ; 4A
216F: mul y, z            ; 55
2170: or y, a             ; AA
2171: add z, a            ; 2A
2172: add z, w            ; 29
2173: mul y, z            ; 55
2174: or y, w             ; A9
2175: sub a, y            ; 4A
2176: sub a, y            ; 4A
2177: or y, a             ; AA
2178: sub a, y            ; 4A
2179: sub a, y            ; 4A
217A: mul y, z            ; 55
217B: sub a, x            ; 49
217C: add y, a            ; 25
217D: mul y, z            ; 55
217E: mul y, z            ; 55
217F: pop w               ; 09
2180: add z, z            ; 28
2181: nop                 ; 00
2182: nop                 ; 00
2183: nop                 ; 00
2184: nop                 ; 00
2185: nop                 ; 00
2186: nop                 ; 00
2187: nop                 ; 00
2188: nop                 ; FC
2189: nop                 ; FF
218A: mul y, y            ; 54
218B: sub a, y            ; 4A
218C: mul y, z            ; 55
218D: or x, w             ; A5
218E: mul x, a            ; 52
218F: mul y, z            ; 55
2190: or x, w             ; A5
2191: mul y, y            ; 54
2192: sub a, x            ; 49
2193: and y, w            ; 95
2194: or y, a             ; AA
2195: mul y, y            ; 54
2196: add z, a            ; 2A
2197: and y, w            ; 95
2198: or y, a             ; AA
2199: mul x, a            ; 52
219A: or x, w             ; A5
219B: mul x, a            ; 52
219C: mul y, z            ; 55
219D: or y, w             ; A9
219E: or y, a             ; AA
219F: or y, a             ; AA
21A0: mul y, y            ; 54
21A1: mul y, z            ; 55
21A2: and x, a            ; 92
21A3: add z, a            ; 2A
21A4: or y, w             ; A9
21A5: and x, a            ; 92
21A6: add y, w            ; 24
21A7: mul y, z            ; 55
21A8: nop                 ; 00
21A9: push x              ; 01
21AA: nop                 ; 00
21AB: nop                 ; 00
21AC: nop                 ; 00
21AD: nop                 ; 00
21AE: nop                 ; 00
21AF: nop                 ; 00
21B0: nop                 ; FC
21B1: nop                 ; FF
21B2: sub a, y            ; 4A
21B3: or y, w             ; A9
21B4: mul x, a            ; 52
21B5: mul y, z            ; 55
21B6: and y, w            ; 95
21B7: or x, z             ; A4
21B8: mul y, y            ; 54
21B9: mul y, z            ; 55
21BA: or y, a             ; AA
21BB: or x, z             ; A4
21BC: add y, w            ; 24
21BD: and y, w            ; 95
21BE: mul x, a            ; 52
21BF: or y, w             ; A9
21C0: and x, a            ; 92
21C1: mul y, y            ; 54
21C2: mul y, z            ; 55
21C3: and y, w            ; 95
21C4: sub a, y            ; 4A
21C5: or y, a             ; AA
21C6: or y, a             ; AA
21C7: and x, a            ; 92
21C8: mul x, a            ; 52
21C9: or y, w             ; A9
21CA: or y, a             ; AA
21CB: mul x, a            ; 52
21CC: mul y, z            ; 55
21CD: or y, a             ; AA
21CE: or y, a             ; AA
21CF: mul x, a            ; 52
21D0: push x              ; 01
21D1: nop                 ; 00
21D2: nop                 ; 00
21D3: nop                 ; 00
21D4: nop                 ; 00
21D5: nop                 ; 00
21D6: nop                 ; 00
21D7: nop                 ; 00
21D8: nop                 ; FC
21D9: nop                 ; FF
21DA: mul x, a            ; 52
21DB: or x, w             ; A5
21DC: and y, z            ; 94
21DD: and y, z            ; 94
21DE: mul y, y            ; 54
21DF: and y, w            ; 95
21E0: and x, a            ; 92
21E1: mul x, a            ; 52
21E2: add y, a            ; 25
21E3: add z, w            ; 29
21E4: sub a, x            ; 49
21E5: or x, w             ; A5
21E6: or y, a             ; AA
21E7: sub a, y            ; 4A
21E8: mul y, z            ; 55
21E9: and y, w            ; 95
21EA: and y, z            ; 94
21EB: mul y, y            ; 54
21EC: mul x, a            ; 52
21ED: add y, a            ; 25
21EE: add z, w            ; 29
21EF: mul y, z            ; 55
21F0: mul y, z            ; 55
21F1: sub a, y            ; 4A
21F2: or y, w             ; A9
21F3: and y, z            ; 94
21F4: and y, z            ; 94
21F5: sub a, y            ; 4A
21F6: sub a, x            ; 49
21F7: or y, a             ; AA
21F8: mul y, y            ; 54
21F9: add z, w            ; 29
21FA: nop                 ; 00
21FB: nop                 ; 00
21FC: nop                 ; 00
21FD: nop                 ; 00
21FE: nop                 ; 00
21FF: nop                 ; 00
2200: nop                 ; FC
2201: nop                 ; FF
2202: or y, a             ; AA
2203: add z, a            ; 2A
2204: mul y, z            ; 55
2205: mul y, z            ; 55
2206: add y, a            ; 25
2207: or y, w             ; A9
2208: or y, a             ; AA
2209: sub a, y            ; 4A
220A: mul y, z            ; 55
220B: or x, w             ; A5
220C: add z, a            ; 2A
220D: add z, w            ; 29
220E: add y, a            ; 25
220F: mul y, z            ; 55
2210: or y, a             ; AA
2211: or y, a             ; AA
2212: or y, a             ; AA
2213: or y, a             ; AA
2214: or y, a             ; AA
2215: or y, a             ; AA
2216: or y, a             ; AA
2217: or y, a             ; AA
2218: sub a, y            ; 4A
2219: mul y, z            ; 55
221A: sub a, y            ; 4A
221B: mul y, z            ; 55
221C: or x, w             ; A5
221D: add z, a            ; 2A
221E: and y, w            ; 95
221F: add y, w            ; 24
2220: add y, a            ; 25
2221: or x, w             ; A5
2222: nop                 ; 00
2223: nop                 ; 00
2224: nop                 ; 00
2225: nop                 ; 00
2226: nop                 ; 00
2227: nop                 ; 00
2228: nop                 ; FC
2229: nop                 ; FF
222A: mul y, z            ; 55
222B: mul x, a            ; 52
222C: or x, w             ; A5
222D: sub a, y            ; 4A
222E: mul y, z            ; 55
222F: add y, a            ; 25
2230: sub a, x            ; 49
2231: or y, a             ; AA
2232: mul y, y            ; 54
2233: call $5249          ; 15 49 52
2236: or y, w             ; A9
2237: mul x, a            ; 52
2238: add y, a            ; 25
2239: sub a, x            ; 49
223A: or x, w             ; A5
223B: sub a, y            ; 4A
223C: and y, w            ; 95
223D: mul x, a            ; 52
223E: or x, w             ; A5
223F: mul y, y            ; 54
2240: or y, a             ; AA
2241: mul x, a            ; 52
2242: mul y, z            ; 55
2243: sub a, y            ; 4A
2244: or y, a             ; AA
2245: or x, z             ; A4
2246: or x, z             ; A4
2247: sub a, y            ; 4A
2248: and y, w            ; 95
2249: store $0001, a      ; 14 01 00
224C: nop                 ; 00
224D: nop                 ; 00
224E: nop                 ; 00
224F: nop                 ; 00
2250: nop                 ; FC
2251: nop                 ; FF
2252: and y, w            ; 95
2253: sub a, y            ; 4A
2254: and y, w            ; 95
2255: mul y, y            ; 54
2256: mul x, a            ; 52
2257: or y, a             ; AA
2258: or y, a             ; AA
2259: add z, a            ; 2A
225A: add y, a            ; 25
225B: or y, w             ; A9
225C: or x, z             ; A4
225D: sub a, y            ; 4A
225E: sub a, y            ; 4A
225F: or y, a             ; AA
2260: or y, a             ; AA
2261: or y, a             ; AA
2262: mul y, y            ; 54
2263: add z, a            ; 2A
2264: or y, w             ; A9
2265: and y, z            ; 94
2266: mul y, y            ; 54
2267: or x, w             ; A5
2268: mul x, a            ; 52
2269: sub a, y            ; 4A
226A: or y, w             ; A9
226B: mul x, a            ; 52
226C: sub a, x            ; 49
226D: mul y, z            ; 55
226E: mul y, z            ; 55
226F: mul x, a            ; 52
2270: mul x, a            ; 52
2271: mul x, a            ; 52
2272: push y              ; 02
2273: nop                 ; 00
2274: nop                 ; 00
2275: nop                 ; 00
2276: nop                 ; 00
2277: nop                 ; 00
2278: nop                 ; FC
2279: nop                 ; FF
227A: mul x, a            ; 52
227B: add z, w            ; 29
227C: or y, w             ; A9
227D: sub a, y            ; 4A
227E: and y, w            ; 95
227F: and x, a            ; 92
2280: add y, w            ; 24
2281: or x, w             ; A5
2282: or y, a             ; AA
2283: sub a, y            ; 4A
2284: and y, w            ; 95
2285: mul y, y            ; 54
2286: mul y, z            ; 55
2287: add z, w            ; 29
2288: or y, w             ; A9
2289: or y, a             ; AA
228A: or y, a             ; AA
228B: mul x, a            ; 52
228C: add y, a            ; 25
228D: mul y, z            ; 55
228E: and y, w            ; 95
228F: or y, a             ; AA
2290: or y, a             ; AA
2291: add z, a            ; 2A
2292: and y, w            ; 95
2293: or y, a             ; AA
2294: add z, a            ; 2A
2295: sub a, x            ; 49
2296: and x, a            ; 92
2297: add z, a            ; 2A
2298: or y, w             ; A9
2299: sub a, y            ; 4A
229A: pop w               ; 09
229B: nop                 ; 00
229C: nop                 ; 00
229D: nop                 ; 00
229E: nop                 ; 00
229F: nop                 ; 00
22A0: nop                 ; FC
22A1: nop                 ; FF
22A2: mul y, y            ; 54
22A3: mul y, z            ; 55
22A4: add y, a            ; 25
22A5: add z, w            ; 29
22A6: or y, w             ; A9
22A7: mul y, y            ; 54
22A8: mul y, z            ; 55
22A9: or y, w             ; A9
22AA: mul y, y            ; 54
22AB: add z, a            ; 2A
22AC: sub a, x            ; 49
22AD: and x, a            ; 92
22AE: or x, z             ; A4
22AF: sub a, y            ; 4A
22B0: add y, a            ; 25
22B1: sub a, x            ; 49
22B2: and y, w            ; 95
22B3: or y, a             ; AA
22B4: or y, a             ; AA
22B5: add z, a            ; 2A
22B6: or y, w             ; A9
22B7: mul y, y            ; 54
22B8: and y, w            ; 95
22B9: or y, a             ; AA
22BA: mul x, a            ; 52
22BB: sub a, y            ; 4A
22BC: mul x, a            ; 52
22BD: mul y, z            ; 55
22BE: mul y, z            ; 55
22BF: mul x, a            ; 52
22C0: add y, a            ; 25
22C1: add z, w            ; 29
22C2: add y, a            ; 25
22C3: nop                 ; 00
22C4: nop                 ; 00
22C5: nop                 ; 00
22C6: nop                 ; 00
22C7: nop                 ; 00
22C8: nop                 ; FC
22C9: nop                 ; FF
22CA: and y, w            ; 95
22CB: and y, z            ; 94
22CC: mul y, y            ; 54
22CD: mul y, z            ; 55
22CE: and y, w            ; 95
22CF: sub a, y            ; 4A
22D0: and x, a            ; 92
22D1: and y, z            ; 94
22D2: sub a, y            ; 4A
22D3: or x, w             ; A5
22D4: mul x, a            ; 52
22D5: mul y, z            ; 55
22D6: mul y, z            ; 55
22D7: or y, a             ; AA
22D8: or y, a             ; AA
22D9: add z, a            ; 2A
22DA: or x, w             ; A5
22DB: or y, a             ; AA
22DC: and y, z            ; 94
22DD: or x, z             ; A4
22DE: sub a, y            ; 4A
22DF: and y, w            ; 95
22E0: mul y, y            ; 54
22E1: or x, w             ; A5
22E2: or y, a             ; AA
22E3: mul x, a            ; 52
22E4: and y, w            ; 95
22E5: add y, w            ; 24
22E6: sub a, x            ; 49
22E7: and y, w            ; 95
22E8: and y, z            ; 94
22E9: sub a, y            ; 4A
22EA: store $0000, z      ; 12 00 00
22ED: nop                 ; 00
22EE: nop                 ; 00
22EF: nop                 ; 00
22F0: nop                 ; FC
22F1: nop                 ; FF
22F2: or y, w             ; A9
22F3: mul x, a            ; 52
22F4: mul y, z            ; 55
22F5: mul x, a            ; 52
22F6: mul x, a            ; 52
22F7: mul x, a            ; 52
22F8: sub a, x            ; 49
22F9: or x, w             ; A5
22FA: mul y, y            ; 54
22FB: or y, w             ; A9
22FC: sub a, y            ; 4A
22FD: and x, a            ; 92
22FE: add y, w            ; 24
22FF: add z, w            ; 29
2300: mul y, z            ; 55
2301: mul y, z            ; 55
2302: mul y, z            ; 55
2303: sub a, y            ; 4A
2304: mul y, z            ; 55
2305: mul x, a            ; 52
2306: mul x, a            ; 52
2307: or y, w             ; A9
2308: or y, a             ; AA
2309: and y, z            ; 94
230A: or x, z             ; A4
230B: and y, z            ; 94
230C: or x, z             ; A4
230D: mul x, a            ; 52
230E: mul y, z            ; 55
230F: mul x, a            ; 52
2310: mul x, a            ; 52
2311: mul x, a            ; 52
2312: sub a, x            ; 49
2313: nop                 ; 00
2314: nop                 ; 00
2315: nop                 ; 00
2316: nop                 ; 00
2317: nop                 ; 00
2318: nop                 ; FC
2319: nop                 ; FF
231A: sub a, y            ; 4A
231B: sub a, y            ; 4A
231C: and x, a            ; 92
231D: sub a, y            ; 4A
231E: or x, w             ; A5
231F: sub a, y            ; 4A
2320: or y, a             ; AA
2321: and y, z            ; 94
2322: mul x, a            ; 52
2323: add z, a            ; 2A
2324: or y, w             ; A9
2325: add y, w            ; 24
2326: mul y, z            ; 55
2327: or x, w             ; A5
2328: add y, w            ; 24
2329: or x, w             ; A5
232A: mul y, y            ; 54
232B: add z, w            ; 29
232C: or x, w             ; A5
232D: add z, a            ; 2A
232E: mul y, z            ; 55
232F: sub a, y            ; 4A
2330: or x, w             ; A5
2331: or y, a             ; AA
2332: add z, a            ; 2A
2333: mul y, z            ; 55
2334: mul y, z            ; 55
2335: sub a, y            ; 4A
2336: and x, a            ; 92
2337: sub a, y            ; 4A
2338: and y, w            ; 95
2339: add y, w            ; 24
233A: or y, a             ; AA
233B: push y              ; 02
233C: nop                 ; 00
233D: nop                 ; 00
233E: nop                 ; 00
233F: nop                 ; 00
2340: nop                 ; FC
2341: nop                 ; FF
2342: mul x, a            ; 52
2343: or y, w             ; A9
2344: sub a, y            ; 4A
2345: add z, w            ; 29
2346: sub a, x            ; 49
2347: and x, a            ; 92
2348: store $A529, z      ; 12 29 A5
234B: mul x, a            ; 52
234C: and y, w            ; 95
234D: sub a, y            ; 4A
234E: sub a, x            ; 49
234F: mul y, z            ; 55
2350: mul y, z            ; 55
2351: mul y, z            ; 55
2352: mul y, z            ; 55
2353: mul y, z            ; 55
2354: or y, w             ; A9
2355: sub w, x            ; 44
2356: or x, w             ; A5
2357: add z, a            ; 2A
2358: and y, w            ; 95
2359: or y, a             ; AA
235A: sub a, y            ; 4A
235B: add z, w            ; 29
235C: sub a, x            ; 49
235D: add z, w            ; 29
235E: or y, w             ; A9
235F: and y, z            ; 94
2360: or x, z             ; A4
2361: sub a, y            ; 4A
2362: and x, w            ; 91
2363: pop z               ; 08
2364: nop                 ; 00
2365: nop                 ; 00
2366: nop                 ; 00
2367: nop                 ; 00
2368: nop                 ; FC
2369: nop                 ; FF
236A: mul y, z            ; 55
236B: sub a, y            ; 4A
236C: mul x, a            ; 52
236D: or x, w             ; A5
236E: add z, a            ; 2A
236F: or y, w             ; A9
2370: or x, z             ; A4
2371: sub a, y            ; 4A
2372: add z, w            ; 29
2373: and y, w            ; 95
2374: mul x, a            ; 52
2375: mul x, a            ; 52
2376: add z, a            ; 2A
2377: sub a, x            ; 49
2378: mul x, a            ; 52
2379: add z, w            ; 29
237A: add y, a            ; 25
237B: mul y, z            ; 55
237C: and y, w            ; 95
237D: or y, a             ; AA
237E: and y, z            ; 94
237F: mul x, a            ; 52
2380: or y, w             ; A9
2381: mul x, a            ; 52
2382: mul x, a            ; 52
2383: or x, w             ; A5
2384: mul x, a            ; 52
2385: sub a, y            ; 4A
2386: and y, w            ; 95
2387: mul x, a            ; 52
2388: sub a, x            ; 49
2389: and x, a            ; 92
238A: sub a, y            ; 4A
238B: store $0000, z      ; 12 00 00
238E: nop                 ; 00
238F: nop                 ; 00
2390: nop                 ; FC
2391: nop                 ; FF
2392: add y, a            ; 25
2393: or x, w             ; A5
2394: and y, z            ; 94
2395: and y, z            ; 94
2396: or x, z             ; A4
2397: add y, w            ; 24
2398: mul y, z            ; 55
2399: mul x, a            ; 52
239A: sub a, y            ; 4A
239B: or y, w             ; A9
239C: mul y, y            ; 54
239D: sub a, x            ; 49
239E: mul x, w            ; 51
239F: mul y, z            ; 55
23A0: and y, w            ; 95
23A1: or y, a             ; AA
23A2: mul y, y            ; 54
23A3: sub a, x            ; 49
23A4: mul y, z            ; 55
23A5: add z, w            ; 29
23A6: mul y, z            ; 55
23A7: or y, a             ; AA
23A8: or y, a             ; AA
23A9: or y, a             ; AA
23AA: add z, a            ; 2A
23AB: and y, w            ; 95
23AC: and y, z            ; 94
23AD: mul x, a            ; 52
23AE: add y, y            ; 22
23AF: sub a, x            ; 49
23B0: add z, a            ; 2A
23B1: add z, w            ; 29
23B2: add z, w            ; 29
23B3: sub w, y            ; 45
23B4: nop                 ; 00
23B5: nop                 ; 00
23B6: nop                 ; 00
23B7: nop                 ; 00
23B8: nop                 ; FC
23B9: nop                 ; FF
23BA: mul y, y            ; 54
23BB: and y, w            ; 95
23BC: mul x, a            ; 52
23BD: add z, a            ; 2A
23BE: and y, w            ; 95
23BF: sub a, y            ; 4A
23C0: and x, a            ; 92
23C1: add y, w            ; 24
23C2: or y, w             ; A9
23C3: sub a, y            ; 4A
23C4: and y, w            ; 95
23C5: add z, a            ; 2A
23C6: and y, w            ; 95
23C7: add y, w            ; 24
23C8: mul y, z            ; 55
23C9: sub a, y            ; 4A
23CA: mul y, z            ; 55
23CB: mul y, z            ; 55
23CC: or x, w             ; A5
23CD: or y, a             ; AA
23CE: sub a, y            ; 4A
23CF: and y, w            ; 95
23D0: mul y, y            ; 54
23D1: add z, a            ; 2A
23D2: sub a, x            ; 49
23D3: mul x, a            ; 52
23D4: or x, w             ; A5
23D5: and y, z            ; 94
23D6: mul y, y            ; 54
23D7: add z, a            ; 2A
23D8: or x, w             ; A5
23D9: or x, z             ; A4
23DA: sub w, x            ; 44
23DB: and x, a            ; 92
23DC: nop                 ; 00
23DD: nop                 ; 00
23DE: nop                 ; 00
23DF: nop                 ; 00
23E0: nop                 ; FC
23E1: nop                 ; FF
23E2: sub a, x            ; 49
23E3: mul x, a            ; 52
23E4: sub a, y            ; 4A
23E5: sub a, x            ; 49
23E6: sub a, x            ; 49
23E7: mul x, a            ; 52
23E8: sub a, x            ; 49
23E9: and y, w            ; 95
23EA: and x, a            ; 92
23EB: mul y, y            ; 54
23EC: mul x, a            ; 52
23ED: and x, a            ; 92
23EE: or x, z             ; A4
23EF: or y, a             ; AA
23F0: or x, z             ; A4
23F1: mul x, a            ; 52
23F2: sub a, x            ; 49
23F3: mul y, z            ; 55
23F4: add z, a            ; 2A
23F5: or x, w             ; A5
23F6: mul y, y            ; 54
23F7: or y, w             ; A9
23F8: and x, a            ; 92
23F9: mul x, a            ; 52
23FA: mul y, z            ; 55
23FB: sub a, x            ; 49
23FC: and x, a            ; 92
23FD: mul x, a            ; 52
23FE: or x, w             ; A5
23FF: mul x, a            ; 52
2400: sub a, x            ; 49
2401: and x, a            ; 92
2402: mul x, a            ; 52
2403: sub a, x            ; 49
2404: push y              ; 02
2405: nop                 ; 00
2406: nop                 ; 00
2407: nop                 ; 00
2408: nop                 ; FC
2409: nop                 ; FF
240A: or y, a             ; AA
240B: and y, z            ; 94
240C: and x, a            ; 92
240D: mul x, a            ; 52
240E: mul x, a            ; 52
240F: sub a, x            ; 49
2410: or y, a             ; AA
2411: or x, z             ; A4
2412: mul y, y            ; 54
2413: and x, a            ; 92
2414: sub a, y            ; 4A
2415: mul y, z            ; 55
2416: add z, w            ; 29
2417: sub a, x            ; 49
2418: mul y, z            ; 55
2419: mul y, z            ; 55
241A: add z, a            ; 2A
241B: sub a, x            ; 49
241C: or y, w             ; A9
241D: add z, a            ; 2A
241E: add y, a            ; 25
241F: or x, w             ; A5
2420: or y, a             ; AA
2421: sub a, y            ; 4A
2422: add y, a            ; 25
2423: and y, w            ; 95
2424: sub a, y            ; 4A
2425: sub a, y            ; 4A
2426: store $2A49, z      ; 12 49 2A
2429: add y, a            ; 25
242A: add z, w            ; 29
242B: and x, a            ; 92
242C: push w              ; 04
242D: nop                 ; 00
242E: nop                 ; 00
242F: nop                 ; 00
2430: nop                 ; FC
2431: nop                 ; FF
2432: and x, a            ; 92
2433: mul x, a            ; 52
2434: add z, a            ; 2A
2435: and y, w            ; 95
2436: sub a, y            ; 4A
2437: add z, a            ; 2A
2438: cmp a, a            ; 89
2439: and x, a            ; 92
243A: and x, a            ; 92
243B: or y, a             ; AA
243C: mul y, y            ; 54
243D: sub a, x            ; 49
243E: sub a, y            ; 4A
243F: add z, a            ; 2A
2440: sub a, x            ; 49
2441: sub a, y            ; 4A
2442: mul y, z            ; 55
2443: mul y, z            ; 55
2444: mul y, z            ; 55
2445: or y, a             ; AA
2446: or y, a             ; AA
2447: add z, a            ; 2A
2448: or x, w             ; A5
2449: mul y, y            ; 54
244A: or y, a             ; AA
244B: mul x, a            ; 52
244C: and x, a            ; 92
244D: add y, w            ; 24
244E: sub a, x            ; 49
244F: add z, a            ; 2A
2450: sub a, x            ; 49
2451: sub a, x            ; 49
2452: sub w, x            ; 44
2453: sub a, x            ; 49
2454: store $0000, z      ; 12 00 00
2457: nop                 ; 00
2458: nop                 ; FC
2459: nop                 ; FF
245A: mul y, y            ; 54
245B: sub a, y            ; 4A
245C: sub a, x            ; 49
245D: sub a, x            ; 49
245E: and x, a            ; 92
245F: sub w, x            ; 44
2460: add y, a            ; 25
2461: or y, w             ; A9
2462: or x, z             ; A4
2463: and x, a            ; 92
2464: mul x, a            ; 52
2465: or y, a             ; AA
2466: mul x, a            ; 52
2467: sub a, x            ; 49
2468: mul y, z            ; 55
2469: or y, w             ; A9
246A: mul x, a            ; 52
246B: mul y, z            ; 55
246C: sub a, y            ; 4A
246D: sub a, x            ; 49
246E: or y, w             ; A9
246F: or y, a             ; AA
2470: and y, z            ; 94
2471: or y, a             ; AA
2472: mul x, a            ; 52
2473: sub a, y            ; 4A
2474: add z, w            ; 29
2475: or y, w             ; A9
2476: or y, a             ; AA
2477: and x, a            ; 92
2478: and x, a            ; 92
2479: and y, z            ; 94
247A: mul x, a            ; 52
247B: and x, a            ; 92
247C: add y, w            ; 24
247D: nop                 ; 00
247E: nop                 ; 00
247F: nop                 ; 00
2480: nop                 ; FC
2481: nop                 ; FF
2482: or x, w             ; A5
2483: and x, a            ; 92
2484: add y, w            ; 24
2485: add y, a            ; 25
2486: or y, w             ; A9
2487: and x, a            ; 92
2488: mul y, y            ; 54
2489: sub a, y            ; 4A
248A: add z, a            ; 2A
248B: or y, w             ; A9
248C: sub a, y            ; 4A
248D: add y, a            ; 25
248E: sub a, x            ; 49
248F: mul x, a            ; 52
2490: and x, a            ; 92
2491: add z, a            ; 2A
2492: and y, w            ; 95
2493: or x, z             ; A4
2494: or y, a             ; AA
2495: or y, a             ; AA
2496: sub a, y            ; 4A
2497: mul x, a            ; 52
2498: mul y, z            ; 55
2499: sub a, x            ; 49
249A: and y, w            ; 95
249B: add z, a            ; 2A
249C: or x, w             ; A5
249D: sub w, x            ; 44
249E: add y, y            ; 22
249F: or x, z             ; A4
24A0: mul y, y            ; 54
24A1: mul x, a            ; 52
24A2: cmpbit x            ; 8A 24
24A4: and x, w            ; 91
24A5: nop                 ; 00
24A6: nop                 ; 00
24A7: nop                 ; 00
24A8: nop                 ; FC
24A9: nop                 ; FF
24AA: and x, a            ; 92
24AB: mul y, y            ; 54
24AC: or y, a             ; AA
24AD: or y, z             ; A8
24AE: add y, w            ; 24
24AF: add z, w            ; 29
24B0: and x, w            ; 91
24B1: and x, a            ; 92
24B2: and x, a            ; 92
24B3: and y, z            ; 94
24B4: and y, z            ; 94
24B5: mul y, y            ; 54
24B6: and y, w            ; 95
24B7: and y, z            ; 94
24B8: mul y, y            ; 54
24B9: or x, w             ; A5
24BA: or y, a             ; AA
24BB: add z, a            ; 2A
24BC: or x, w             ; A5
24BD: or y, a             ; AA
24BE: mul y, y            ; 54
24BF: and y, w            ; 95
24C0: sub a, y            ; 4A
24C1: add z, a            ; 2A
24C2: or y, w             ; A9
24C3: or x, z             ; A4
24C4: store $4929, a      ; 14 29 49
24C7: add z, w            ; 29
24C8: add y, a            ; 25
24C9: add y, a            ; 25
24CA: add y, x            ; 21
24CB: sub a, x            ; 49
24CC: add y, w            ; 24
24CD: push x              ; 01
24CE: nop                 ; 00
24CF: nop                 ; 00
24D0: nop                 ; FC
24D1: nop                 ; FF
24D2: mul y, y            ; 54
24D3: and x, a            ; 92
24D4: and x, a            ; 92
24D5: sub a, y            ; 4A
24D6: and x, a            ; 92
24D7: or x, z             ; A4
24D8: add y, w            ; 24
24D9: sub a, x            ; 49
24DA: sub a, y            ; 4A
24DB: or x, w             ; A5
24DC: mul x, a            ; 52
24DD: add y, a            ; 25
24DE: or y, w             ; A9
24DF: mul x, a            ; 52
24E0: add y, a            ; 25
24E1: mul y, z            ; 55
24E2: or y, w             ; A9
24E3: or y, a             ; AA
24E4: add z, a            ; 2A
24E5: sub a, x            ; 49
24E6: and y, w            ; 95
24E7: mul y, y            ; 54
24E8: mul x, a            ; 52
24E9: or x, w             ; A5
24EA: sub a, y            ; 4A
24EB: add z, w            ; 29
24EC: sub a, x            ; 49
24ED: and x, a            ; 92
24EE: and y, z            ; 94
24EF: sub w, x            ; 44
24F0: sub w, a            ; 48
24F1: and y, z            ; 94
24F2: and y, z            ; 94
24F3: add y, w            ; 24
24F4: cmp a, a            ; 89
24F5: push w              ; 04
24F6: nop                 ; 00
24F7: nop                 ; 00
24F8: nop                 ; FC
24F9: nop                 ; FF
24FA: add y, a            ; 25
24FB: add y, a            ; 25
24FC: sub a, x            ; 49
24FD: and x, a            ; 92
24FE: add z, a            ; 2A
24FF: call $A495          ; 15 95 A4
2502: add y, w            ; 24
2503: sub a, x            ; 49
2504: add z, a            ; 2A
2505: or y, w             ; A9
2506: sub a, y            ; 4A
2507: sub a, y            ; 4A
2508: mul x, a            ; 52
2509: add z, w            ; 29
250A: add y, a            ; 25
250B: or x, w             ; A5
250C: mul x, a            ; 52
250D: mul y, z            ; 55
250E: mul x, a            ; 52
250F: or x, w             ; A5
2510: add z, a            ; 2A
2511: mul y, z            ; 55
2512: mul x, a            ; 52
2513: sub a, y            ; 4A
2514: or x, w             ; A5
2515: add y, w            ; 24
2516: sub w, y            ; 45
2517: and x, a            ; 92
2518: and x, a            ; 92
2519: add y, y            ; 22
251A: add y, a            ; 25
251B: sub a, x            ; 49
251C: add y, y            ; 22
251D: pop w               ; 09
251E: nop                 ; 00
251F: nop                 ; 00
2520: nop                 ; FC
2521: nop                 ; FF
2522: sub w, a            ; 48
2523: or y, w             ; A9
2524: add y, w            ; 24
2525: sub a, x            ; 49
2526: sub w, x            ; 44
2527: and a, w            ; A2
2528: sub w, a            ; 48
2529: and x, a            ; 92
252A: mul x, a            ; 52
252B: add z, a            ; 2A
252C: sub a, x            ; 49
252D: and y, w            ; 95
252E: or x, z             ; A4
252F: add y, w            ; 24
2530: and y, w            ; 95
2531: sub a, y            ; 4A
2532: mul y, z            ; 55
2533: add z, w            ; 29
2534: mul y, z            ; 55
2535: and y, w            ; 95
2536: or y, a             ; AA
2537: or y, a             ; AA
2538: mul y, y            ; 54
2539: sub a, x            ; 49
253A: and y, w            ; 95
253B: mul x, a            ; 52
253C: and x, a            ; 92
253D: and x, a            ; 92
253E: add z, z            ; 28
253F: sub a, x            ; 49
2540: or y, a             ; AA
2541: and y, z            ; 94
2542: sub w, a            ; 48
2543: and x, a            ; 92
2544: and y, z            ; 94
2545: add y, w            ; 24
2546: nop                 ; 00
2547: nop                 ; 00
2548: nop                 ; FC
2549: nop                 ; FF
254A: mul x, a            ; 52
254B: store $54A9, z      ; 12 A9 54
254E: add z, w            ; 29
254F: sub a, x            ; 49
2550: and x, a            ; 92
2551: mul y, y            ; 54
2552: and y, z            ; 94
2553: or x, z             ; A4
2554: and x, a            ; 92
2555: or x, z             ; A4
2556: add z, a            ; 2A
2557: or y, w             ; A9
2558: mul x, a            ; 52
2559: or y, w             ; A9
255A: or y, a             ; AA
255B: or y, a             ; AA
255C: and y, z            ; 94
255D: or x, z             ; A4
255E: sub a, y            ; 4A
255F: and x, a            ; 92
2560: and x, a            ; 92
2561: add z, a            ; 2A
2562: sub a, x            ; 49
2563: add z, a            ; 2A
2564: add z, w            ; 29
2565: sub a, x            ; 49
2566: and x, a            ; 92
2567: add y, w            ; 24
2568: pop w               ; 09
2569: or x, w             ; A5
256A: and x, a            ; 92
256B: add y, w            ; 24
256C: add y, x            ; 21
256D: sub a, x            ; 49
256E: nop                 ; 00
256F: nop                 ; 00
2570: nop                 ; FC
2571: nop                 ; FF
2572: cmpbit x            ; 8A 4A
2574: sub w, y            ; 45
2575: add y, y            ; 22
2576: or x, w             ; A5
2577: and y, z            ; 94
2578: sub a, y            ; 4A
2579: add y, y            ; 22
257A: sub a, x            ; 49
257B: sub a, x            ; 49
257C: or y, a             ; AA
257D: add z, a            ; 2A
257E: sub a, x            ; 49
257F: add y, a            ; 25
2580: sub a, y            ; 4A
2581: add z, a            ; 2A
2582: add z, w            ; 29
2583: mul y, z            ; 55
2584: or x, w             ; A5
2585: or y, a             ; AA
2586: mul y, y            ; 54
2587: mul y, z            ; 55
2588: mul y, z            ; 55
2589: mul x, a            ; 52
258A: or y, a             ; AA
258B: or x, z             ; A4
258C: sub a, y            ; 4A
258D: store $9249, z      ; 12 49 92
2590: or x, z             ; A4
2591: sub w, a            ; 48
2592: sub a, y            ; 4A
2593: and x, a            ; 92
2594: and y, z            ; 94
2595: add y, w            ; 24
2596: push x              ; 01
2597: nop                 ; 00
2598: nop                 ; FC
2599: nop                 ; FF
259A: or x, z             ; A4
259B: or x, z             ; A4
259C: and x, z            ; 90
259D: and y, z            ; 94
259E: store $2125, x      ; 10 25 21
25A1: sub a, x            ; 49
25A2: add y, a            ; 25
25A3: and y, w            ; 95
25A4: add y, w            ; 24
25A5: sub a, x            ; 49
25A6: mul y, z            ; 55
25A7: sub a, y            ; 4A
25A8: and x, w            ; 91
25A9: sub a, y            ; 4A
25AA: or x, w             ; A5
25AB: and x, a            ; 92
25AC: or y, a             ; AA
25AD: add z, a            ; 2A
25AE: add y, a            ; 25
25AF: add z, w            ; 29
25B0: sub a, x            ; 49
25B1: and y, w            ; 95
25B2: and x, a            ; 92
25B3: sub a, y            ; 4A
25B4: mul x, a            ; 52
25B5: sub a, x            ; 49
25B6: and x, a            ; 92
25B7: add y, w            ; 24
25B8: add z, w            ; 29
25B9: add y, a            ; 25
25BA: and x, w            ; 91
25BB: add y, w            ; 24
25BC: add y, y            ; 22
25BD: sub a, x            ; 49
25BE: nop                 ; 00
25BF: nop                 ; 00
25C0: nop                 ; FC
25C1: nop                 ; FF
25C2: store $5509, z      ; 12 09 55
25C5: mul x, a            ; 52
25C6: sub a, y            ; 4A
25C7: and x, z            ; 90
25C8: and y, z            ; 94
25C9: add y, w            ; 24
25CA: and x, a            ; 92
25CB: or x, z             ; A4
25CC: and x, a            ; 92
25CD: mul y, y            ; 54
25CE: and x, a            ; 92
25CF: or y, a             ; AA
25D0: mul y, y            ; 54
25D1: mul x, a            ; 52
25D2: or y, a             ; AA
25D3: mul y, y            ; 54
25D4: add z, w            ; 29
25D5: sub a, x            ; 49
25D6: or y, w             ; A9
25D7: sub a, y            ; 4A
25D8: add y, a            ; 25
25D9: or y, w             ; A9
25DA: add y, w            ; 24
25DB: add z, w            ; 29
25DC: cmp a, a            ; 89
25DD: add y, w            ; 24
25DE: sub a, x            ; 49
25DF: and x, a            ; 92
25E0: sub w, x            ; 44
25E1: and x, a            ; 92
25E2: add y, w            ; 24
25E3: and x, w            ; 91
25E4: cmp a, w            ; 88
25E5: add x, a            ; 20
25E6: push a              ; 05
25E7: nop                 ; 00
25E8: nop                 ; FC
25E9: nop                 ; FF
25EA: mul y, y            ; 54
25EB: mul x, a            ; 52
25EC: pop w               ; 09
25ED: cmp a, a            ; 89
25EE: mul x, a            ; 52
25EF: add y, a            ; 25
25F0: sub a, x            ; 49
25F1: and x, a            ; 92
25F2: add z, z            ; 28
25F3: add z, w            ; 29
25F4: or y, w             ; A9
25F5: and x, a            ; 92
25F6: mul y, y            ; 54
25F7: sub a, x            ; 49
25F8: sub a, y            ; 4A
25F9: or y, w             ; A9
25FA: add z, a            ; 2A
25FB: mul y, z            ; 55
25FC: sub a, y            ; 4A
25FD: mul y, z            ; 55
25FE: and y, w            ; 95
25FF: mul y, y            ; 54
2600: or y, w             ; A9
2601: add y, w            ; 24
2602: mul y, z            ; 55
2603: sub a, y            ; 4A
2604: mul y, z            ; 55
2605: sub a, y            ; 4A
2606: and x, a            ; 92
2607: sub w, x            ; 44
2608: and x, a            ; 92
2609: add y, w            ; 24
260A: and y, w            ; 95
260B: add y, w            ; 24
260C: add y, y            ; 22
260D: sub a, y            ; 4A
260E: store $FC00, x      ; 10 00 FC
2611: nop                 ; FF
2612: add y, y            ; 22
2613: add z, w            ; 29
2614: or x, z             ; A4
2615: add y, w            ; 24
2616: cmp w, a            ; 84
2617: and y, z            ; 94
2618: add y, w            ; 24
2619: sub a, x            ; 49
261A: or x, w             ; A5
261B: sub w, x            ; 44
261C: sub a, y            ; 4A
261D: sub a, y            ; 4A
261E: add y, a            ; 25
261F: or x, w             ; A5
2620: and x, a            ; 92
2621: sub a, y            ; 4A
2622: sub a, x            ; 49
2623: or x, w             ; A5
2624: or y, a             ; AA
2625: mul x, a            ; 52
2626: or y, a             ; AA
2627: and x, a            ; 92
2628: sub a, y            ; 4A
2629: and y, w            ; 95
262A: or x, z             ; A4
262B: mul x, a            ; 52
262C: and x, a            ; 92
262D: add z, z            ; 28
262E: sub z, z            ; 41
262F: store $9249, z      ; 12 49 92
2632: mul x, z            ; 50
2633: and x, a            ; 92
2634: and y, z            ; 94
2635: add x, a            ; 20
2636: sub w, y            ; 45
2637: nop                 ; 00
2638: nop                 ; FC
2639: nop                 ; FF
263A: cmp a, a            ; 89
263B: sub w, x            ; 44
263C: add z, w            ; 29
263D: sub a, x            ; 49
263E: add z, w            ; 29
263F: add y, x            ; 21
2640: sub a, x            ; 49
2641: mul x, a            ; 52
2642: sub w, a            ; 48
2643: and x, a            ; 92
2644: and x, a            ; 92
2645: mul x, a            ; 52
2646: and x, a            ; 92
2647: and y, z            ; 94
2648: mul y, y            ; 54
2649: mul x, a            ; 52
264A: or y, a             ; AA
264B: and y, z            ; 94
264C: mul x, a            ; 52
264D: sub a, y            ; 4A
264E: sub a, x            ; 49
264F: or y, a             ; AA
2650: and y, z            ; 94
2651: or x, z             ; A4
2652: and x, a            ; 92
2653: add y, w            ; 24
2654: sub a, x            ; 49
2655: cmp a, x            ; 85
2656: and y, z            ; 94
2657: sub w, a            ; 48
2658: add y, w            ; 24
2659: sub a, x            ; 49
265A: cmpbit x            ; 8A 24
265C: add y, x            ; 21
265D: sub a, y            ; 4A
265E: store $FC00, x      ; 10 00 FC
2661: nop                 ; FF
2662: add z, a            ; 2A
2663: add z, w            ; 29
2664: cmp a, x            ; 85
2665: add y, w            ; 24
2666: or x, w             ; A5
2667: and y, z            ; 94
2668: add y, w            ; 24
2669: pop w               ; 09
266A: add y, a            ; 25
266B: add z, w            ; 29
266C: add y, w            ; 24
266D: sub a, x            ; 49
266E: or y, w             ; A9
266F: mul x, a            ; 52
2670: add y, a            ; 25
2671: sub a, x            ; 49
2672: add z, w            ; 29
2673: mul y, z            ; 55
2674: sub a, y            ; 4A
2675: mul y, z            ; 55
2676: mul y, z            ; 55
2677: add y, a            ; 25
2678: or x, w             ; A5
2679: mul x, a            ; 52
267A: sub a, y            ; 4A
267B: sub a, y            ; 4A
267C: add y, a            ; 25
267D: add z, w            ; 29
267E: pop w               ; 09
267F: add y, y            ; 22
2680: and x, w            ; 91
2681: add y, w            ; 24
2682: mul x, w            ; 51
2683: and x, a            ; 92
2684: and y, z            ; 94
2685: add x, a            ; 20
2686: sub w, y            ; 45
2687: push x              ; 01
2688: nop                 ; FC
2689: nop                 ; FF
268A: cmp w, y            ; 81
268B: sub w, x            ; 44
268C: add z, z            ; 28
268D: sub a, x            ; 49
268E: pop z               ; 08
268F: add y, y            ; 22
2690: sub a, x            ; 49
2691: mul x, a            ; 52
2692: sub a, x            ; 49
2693: sub a, y            ; 4A
2694: sub a, x            ; 49
2695: add z, a            ; 2A
2696: sub a, y            ; 4A
2697: sub a, y            ; 4A
2698: and x, a            ; 92
2699: mul y, y            ; 54
269A: sub a, y            ; 4A
269B: sub a, x            ; 49
269C: or y, w             ; A9
269D: mul x, a            ; 52
269E: sub a, y            ; 4A
269F: mul x, a            ; 52
26A0: mul x, a            ; 52
26A1: add z, a            ; 2A
26A2: or y, w             ; A9
26A3: mul x, a            ; 52
26A4: mul x, a            ; 52
26A5: mul x, a            ; 52
26A6: and a, w            ; A2
26A7: sub w, a            ; 48
26A8: add y, w            ; 24
26A9: sub a, x            ; 49
26AA: cmpbit x            ; 8A 24
26AC: add y, x            ; 21
26AD: sub a, y            ; 4A
26AE: store $FC04, x      ; 10 04 FC
26B1: nop                 ; FF
26B2: add z, a            ; 2A
26B3: add z, w            ; 29
26B4: sub w, y            ; 45
26B5: and x, a            ; 92
26B6: and a, w            ; A2
26B7: cmp a, w            ; 88
26B8: add y, w            ; 24
26B9: pop w               ; 09
26BA: and x, a            ; 92
26BB: add x, a            ; 20
26BC: add y, a            ; 25
26BD: and x, w            ; 91
26BE: and x, a            ; 92
26BF: add y, w            ; 24
26C0: mul y, z            ; 55
26C1: and x, a            ; 92
26C2: mul x, a            ; 52
26C3: or y, a             ; AA
26C4: add z, a            ; 2A
26C5: and y, w            ; 95
26C6: mul x, a            ; 52
26C7: and y, w            ; 95
26C8: sub a, y            ; 4A
26C9: sub a, x            ; 49
26CA: add y, a            ; 25
26CB: cmp a, a            ; 89
26CC: and y, z            ; 94
26CD: sub w, x            ; 44
26CE: pop w               ; 09
26CF: add y, y            ; 22
26D0: and x, w            ; 91
26D1: add y, w            ; 24
26D2: add y, x            ; 21
26D3: and x, a            ; 92
26D4: and y, z            ; 94
26D5: add x, a            ; 20
26D6: sub w, y            ; 45
26D7: store $FFFC, y      ; 11 FC FF
26DA: and x, z            ; 90
26DB: sub w, x            ; 44
26DC: and x, w            ; 91
26DD: add y, w            ; 24
26DE: add z, z            ; 28
26DF: add y, a            ; 25
26E0: sub a, x            ; 49
26E1: and a, w            ; A2
26E2: add y, w            ; 24
26E3: and y, w            ; 95
26E4: and x, z            ; 90
26E5: or x, z             ; A4
26E6: add y, w            ; 24
26E7: or y, w             ; A9
26E8: and x, a            ; 92
26E9: sub a, y            ; 4A
26EA: or y, a             ; AA
26EB: sub a, y            ; 4A
26EC: sub a, y            ; 4A
26ED: sub a, x            ; 49
26EE: add z, w            ; 29
26EF: sub a, x            ; 49
26F0: mul x, a            ; 52
26F1: and x, a            ; 92
26F2: sub w, a            ; 48
26F3: add z, a            ; 2A
26F4: add y, a            ; 25
26F5: add z, w            ; 29
26F6: or y, a             ; AA
26F7: sub w, a            ; 48
26F8: add y, w            ; 24
26F9: sub a, x            ; 49
26FA: and y, z            ; 94
26FB: add y, w            ; 24
26FC: add y, y            ; 22
26FD: pop a               ; 0A
26FE: store $FC04, x      ; 10 04 FC
2701: nop                 ; FF
2702: sub a, y            ; 4A
2703: store $9244, z      ; 12 44 92
2706: cmp w, z            ; 82
2707: and x, z            ; 90
2708: add y, w            ; 24
2709: sub a, x            ; 49
270A: and x, a            ; 92
270B: sub w, x            ; 44
270C: sub a, y            ; 4A
270D: sub a, y            ; 4A
270E: mul x, a            ; 52
270F: add y, a            ; 25
2710: sub a, x            ; 49
2711: add y, w            ; 24
2712: sub a, x            ; 49
2713: mul x, a            ; 52
2714: add z, w            ; 29
2715: mul y, z            ; 55
2716: sub a, y            ; 4A
2717: mul y, z            ; 55
2718: sub a, x            ; 49
2719: mul y, z            ; 55
271A: add z, a            ; 2A
271B: mul x, w            ; 51
271C: and x, a            ; 92
271D: sub w, x            ; 44
271E: add y, x            ; 21
271F: push a              ; 05
2720: and x, w            ; 91
2721: add y, w            ; 24
2722: sub a, x            ; 49
2723: and x, a            ; 92
2724: cmp a, w            ; 88
2725: and a, y            ; A0
2726: sub z, w            ; 42
2727: mul x, a            ; 52
2728: nop                 ; FC
2729: nop                 ; FF
272A: and x, a            ; 92
272B: or x, z             ; A4
272C: and x, a            ; 92
272D: add y, w            ; 24
272E: add z, w            ; 29
272F: add y, a            ; 25
2730: pop w               ; 09
2731: and x, a            ; 92
2732: add y, w            ; 24
2733: and x, w            ; 91
2734: and x, a            ; 92
2735: and x, a            ; 92
2736: and y, z            ; 94
2737: and y, z            ; 94
2738: mul y, y            ; 54
2739: or y, w             ; A9
273A: mul x, a            ; 52
273B: add z, w            ; 29
273C: or x, w             ; A5
273D: mul x, a            ; 52
273E: or x, w             ; A5
273F: add y, w            ; 24
2740: and y, w            ; 95
2741: add y, w            ; 24
2742: sub w, y            ; 45
2743: pop a               ; 0A
2744: sub a, x            ; 49
2745: add z, w            ; 29
2746: sub a, y            ; 4A
2747: mul x, z            ; 50
2748: push w              ; 04
2749: sub a, x            ; 49
274A: and x, a            ; 92
274B: add y, w            ; 24
274C: add y, y            ; 22
274D: pop a               ; 0A
274E: and y, z            ; 94
274F: cmp w, x            ; 80
2750: nop                 ; FC
2751: nop                 ; FF
2752: sub w, a            ; 48
2753: and x, a            ; 92
2754: sub w, a            ; 48
2755: and x, a            ; 92
2756: sub w, x            ; 44
2757: and y, z            ; 94
2758: or x, z             ; A4
2759: sub w, a            ; 48
275A: and x, a            ; 92
275B: add y, w            ; 24
275C: add y, w            ; 24
275D: sub w, a            ; 48
275E: add y, y            ; 22
275F: or y, w             ; A9
2760: and x, a            ; 92
2761: sub z, w            ; 42
2762: sub a, y            ; 4A
2763: sub a, y            ; 4A
2764: add z, w            ; 29
2765: sub a, x            ; 49
2766: add z, a            ; 2A
2767: sub a, x            ; 49
2768: mul x, a            ; 52
2769: and x, a            ; 92
276A: mul y, y            ; 54
276B: or y, w             ; A9
276C: add y, w            ; 24
276D: and x, a            ; 92
276E: add y, w            ; 24
276F: push a              ; 05
2770: mul x, w            ; 51
2771: add y, w            ; 24
2772: sub a, x            ; 49
2773: and x, a            ; 92
2774: and y, z            ; 94
2775: and a, y            ; A0
2776: nop                 ; 00
2777: pop a               ; 0A
2778: nop                 ; FE
2779: nop                 ; FF
277A: and x, a            ; 92
277B: add y, w            ; 24
277C: and x, a            ; 92
277D: add y, w            ; 24
277E: store $0821, y      ; 11 21 08
2781: and x, a            ; 92
2782: add y, w            ; 24
2783: sub a, x            ; 49
2784: cmp a, a            ; 89
2785: and x, a            ; 92
2786: and y, z            ; 94
2787: sub w, x            ; 44
2788: sub a, y            ; 4A
2789: add z, a            ; 2A
278A: add z, w            ; 29
278B: mul y, z            ; 55
278C: sub a, y            ; 4A
278D: add z, a            ; 2A
278E: sub a, x            ; 49
278F: or y, a             ; AA
2790: and y, z            ; 94
2791: or y, a             ; AA
2792: add y, y            ; 22
2793: add y, y            ; 22
2794: or y, w             ; A9
2795: add y, w            ; 24
2796: sub a, x            ; 49
2797: or y, w             ; A9
2798: push w              ; 04
2799: sub a, x            ; 49
279A: and x, a            ; 92
279B: add y, w            ; 24
279C: add y, x            ; 21
279D: pop a               ; 0A
279E: mul y, z            ; 55
279F: and a, y            ; A0
27A0: nop                 ; FC
27A1: nop                 ; FF
27A2: sub w, a            ; 48
27A3: and x, a            ; 92
27A4: sub w, a            ; 48
27A5: and x, a            ; 92
27A6: sub w, x            ; 44
27A7: and y, z            ; 94
27A8: and a, w            ; A2
27A9: sub w, a            ; 48
27AA: and x, a            ; 92
27AB: add y, w            ; 24
27AC: mul x, a            ; 52
27AD: sub a, y            ; 4A
27AE: mul x, a            ; 52
27AF: and x, a            ; 92
27B0: add y, w            ; 24
27B1: sub a, x            ; 49
27B2: and x, a            ; 92
27B3: or x, z             ; A4
27B4: mul x, a            ; 52
27B5: or x, w             ; A5
27B6: mul x, a            ; 52
27B7: sub a, x            ; 49
27B8: sub a, x            ; 49
27B9: add y, y            ; 22
27BA: sub a, y            ; 4A
27BB: sub a, x            ; 49
27BC: sub z, w            ; 42
27BD: and x, a            ; 92
27BE: add y, w            ; 24
27BF: add y, w            ; 24
27C0: mul x, a            ; 52
27C1: add y, w            ; 24
27C2: sub a, x            ; 49
27C3: and x, a            ; 92
27C4: and y, z            ; 94
27C5: add x, a            ; 20
27C6: nop                 ; 00
27C7: pop w               ; 09
27C8: nop                 ; FC
27C9: nop                 ; FF
27CA: and x, a            ; 92
27CB: sub w, x            ; 44
27CC: store $2904, z      ; 12 04 29
27CF: add y, x            ; 21
27D0: pop z               ; 08
27D1: cmp w, z            ; 82
27D2: add y, w            ; 24
27D3: cmp a, a            ; 89
27D4: cmp w, a            ; 84
27D5: and x, z            ; 90
27D6: push w              ; 04
27D7: add z, w            ; 29
27D8: or y, w             ; A9
27D9: and y, z            ; 94
27DA: or x, z             ; A4
27DB: store $4929, z      ; 12 29 49
27DE: add z, a            ; 2A
27DF: add y, a            ; 25
27E0: mul x, a            ; 52
27E1: sub a, x            ; 49
27E2: and x, w            ; 91
27E3: and y, z            ; 94
27E4: and y, z            ; 94
27E5: add y, w            ; 24
27E6: sub a, x            ; 49
27E7: cmp a, a            ; 89
27E8: push w              ; 04
27E9: sub a, x            ; 49
27EA: and x, a            ; 92
27EB: add y, w            ; 24
27EC: add y, x            ; 21
27ED: cmpbit x            ; 8A 4A
27EF: sub z, y            ; 40
27F0: nop                 ; FE
27F1: nop                 ; FF
27F2: sub w, a            ; 48
27F3: store $5149, z      ; 12 49 51
27F6: cmp w, a            ; 84
27F7: and y, z            ; 94
27F8: and a, w            ; A2
27F9: add z, z            ; 28
27FA: and x, a            ; 92
27FB: add y, w            ; 24
27FC: mul x, a            ; 52
27FD: sub a, y            ; 4A
27FE: mul x, a            ; 52
27FF: or x, w             ; A5
2800: sub w, x            ; 44
2801: mul x, a            ; 52
2802: and x, a            ; 92
2803: mul y, y            ; 54
2804: or x, w             ; A5
2805: and y, z            ; 94
2806: or x, z             ; A4
2807: mul y, y            ; 54
2808: add y, a            ; 25
2809: and y, w            ; 95
280A: mul y, y            ; 54
280B: mul x, a            ; 52
280C: mul x, a            ; 52
280D: and x, a            ; 92
280E: add y, w            ; 24
280F: add y, y            ; 22
2810: mul x, w            ; 51
2811: add y, w            ; 24
2812: sub a, x            ; 49
2813: cmp w, z            ; 82
2814: cmp w, a            ; 84
2815: add x, a            ; 20
2816: add x, a            ; 20
2817: store $FFFC, z      ; 12 FC FF
281A: store $1244, z      ; 12 44 12
281D: push w              ; 04
281E: add z, w            ; 29
281F: add y, x            ; 21
2820: pop z               ; 08
2821: cmp w, z            ; 82
2822: push w              ; 04
2823: cmp a, a            ; 89
2824: store $9491, a      ; 14 91 94
2827: store $2529, x      ; 10 29 25
282A: sub a, x            ; 49
282B: and x, a            ; 92
282C: store $92A5, a      ; 14 A5 92
282F: and x, a            ; 92
2830: and y, z            ; 94
2831: add y, w            ; 24
2832: cmp a, a            ; 89
2833: cmp w, a            ; 84
2834: cmp w, a            ; 84
2835: add y, w            ; 24
2836: cmp a, a            ; 89
2837: sub w, a            ; 48
2838: store $9249, a      ; 14 49 92
283B: add z, z            ; 28
283C: add z, w            ; 29
283D: cmpbit x            ; 8A 8A
283F: push w              ; 04
2840: nop                 ; FD
2841: nop                 ; FF
2842: sub w, a            ; 48
2843: store $5149, y      ; 11 49 51
2846: cmp w, x            ; 80
2847: cmp w, a            ; 84
2848: and a, w            ; A2
2849: add z, z            ; 28
284A: mul x, a            ; 52
284B: add y, w            ; 24
284C: sub z, w            ; 42
284D: sub w, x            ; 44
284E: add y, y            ; 22
284F: sub a, y            ; 4A
2850: and x, a            ; 92
2851: and y, z            ; 94
2852: add y, w            ; 24
2853: add y, a            ; 25
2854: or y, w             ; A9
2855: and y, z            ; 94
2856: mul y, y            ; 54
2857: sub a, y            ; 4A
2858: mul x, a            ; 52
2859: mul x, a            ; 52
285A: mul x, a            ; 52
285B: mul x, a            ; 52
285C: mul x, a            ; 52
285D: and x, a            ; 92
285E: add y, w            ; 24
285F: add y, a            ; 25
2860: sub z, z            ; 41
2861: add y, w            ; 24
2862: pop w               ; 09
2863: cmp w, z            ; 82
2864: cmp w, x            ; 80
2865: add x, a            ; 20
2866: add x, a            ; 20
2867: add x, a            ; 20
2868: nop                 ; FC
2869: nop                 ; FF
286A: store $1244, z      ; 12 44 12
286D: cmp w, a            ; 84
286E: add z, a            ; 2A
286F: add z, w            ; 29
2870: pop z               ; 08
2871: cmp w, z            ; 82
2872: push w              ; 04
2873: cmp a, a            ; 89
2874: and y, z            ; 94
2875: and x, a            ; 92
2876: cmp a, w            ; 88
2877: mul x, a            ; 52
2878: sub a, x            ; 49
2879: add y, y            ; 22
287A: sub a, x            ; 49
287B: or y, w             ; A9
287C: and x, a            ; 92
287D: mul x, a            ; 52
287E: cmpbit x            ; 8A 52
2880: add y, a            ; 25
2881: cmp a, a            ; 89
2882: cmpbit x            ; 8A 94
2884: and y, z            ; 94
2885: add y, w            ; 24
2886: sub a, x            ; 49
2887: sub w, a            ; 48
2888: store $A241, a      ; 14 41 A2
288B: add z, z            ; 28
288C: add z, a            ; 2A
288D: cmpbit x            ; 8A 0A
288F: pop w               ; 09
2890: nop                 ; FD
2891: nop                 ; FF
2892: sub w, a            ; 48
2893: store $5141, y      ; 11 41 51
2896: cmp w, x            ; 80
2897: cmp w, x            ; 80
2898: and a, w            ; A2
2899: add z, z            ; 28
289A: mul x, a            ; 52
289B: add y, w            ; 24
289C: sub z, w            ; 42
289D: sub w, a            ; 48
289E: mul x, a            ; 52
289F: cmp w, a            ; 84
28A0: add y, w            ; 24
28A1: sub a, x            ; 49
28A2: add y, a            ; 25
28A3: sub a, y            ; 4A
28A4: sub a, y            ; 4A
28A5: sub a, y            ; 4A
28A6: or y, w             ; A9
28A7: add y, w            ; 24
28A8: sub a, x            ; 49
28A9: mul x, a            ; 52
28AA: add y, w            ; 24
28AB: sub z, z            ; 41
28AC: sub z, w            ; 42
28AD: and x, a            ; 92
28AE: add y, w            ; 24
28AF: add y, a            ; 25
28B0: and a, z            ; A1
28B1: store $8209, a      ; 14 09 82
28B4: cmp w, x            ; 80
28B5: add x, a            ; 20
28B6: add x, a            ; 20
28B7: sub w, x            ; 44
28B8: nop                 ; FC
28B9: nop                 ; FF
28BA: store $1444, z      ; 12 44 14
28BD: push w              ; 04
28BE: add z, a            ; 2A
28BF: add z, a            ; 2A
28C0: pop z               ; 08
28C1: cmp w, z            ; 82
28C2: push w              ; 04
28C3: cmp a, a            ; 89
28C4: and y, z            ; 94
28C5: and x, a            ; 92
28C6: add y, w            ; 24
28C7: add z, w            ; 29
28C8: and x, a            ; 92
28C9: and y, z            ; 94
28CA: and x, z            ; 90
28CB: add y, y            ; 22
28CC: or y, w             ; A9
28CD: add y, w            ; 24
28CE: add y, a            ; 25
28CF: sub a, x            ; 49
28D0: and x, a            ; 92
28D1: add y, w            ; 24
28D2: or y, w             ; A9
28D3: and y, z            ; 94
28D4: and y, z            ; 94
28D5: add y, w            ; 24
28D6: cmp a, a            ; 89
28D7: sub w, a            ; 48
28D8: pop a               ; 0A
28D9: sub z, z            ; 41
28DA: and a, w            ; A2
28DB: add z, z            ; 28
28DC: add z, a            ; 2A
28DD: cmpbit x            ; 8A 44
28DF: push x              ; 01
28E0: nop                 ; FC
28E1: nop                 ; FF
28E2: sub w, a            ; 48
28E3: store $5141, y      ; 11 41 51
28E6: cmp w, y            ; 81
28E7: cmp w, x            ; 80
28E8: and a, w            ; A2
28E9: add z, z            ; 28
28EA: mul x, z            ; 50
28EB: add y, w            ; 24
28EC: sub z, w            ; 42
28ED: sub w, a            ; 48
28EE: and x, a            ; 92
28EF: or x, z             ; A4
28F0: add y, w            ; 24
28F1: mul x, w            ; 51
28F2: sub a, y            ; 4A
28F3: and y, z            ; 94
28F4: add y, w            ; 24
28F5: or y, w             ; A9
28F6: and y, z            ; 94
28F7: add z, a            ; 2A
28F8: sub a, x            ; 49
28F9: and x, a            ; 92
28FA: cmp w, a            ; 84
28FB: mul x, a            ; 52
28FC: add y, y            ; 22
28FD: and x, a            ; 92
28FE: add y, w            ; 24
28FF: add y, y            ; 22
2900: and a, z            ; A1
2901: store $8209, a      ; 14 09 82
2904: cmp w, x            ; 80
2905: add x, a            ; 20
2906: store $FD28, z      ; 12 28 FD
2909: nop                 ; FF
290A: store $1444, z      ; 12 44 14
290D: push w              ; 04
290E: add z, z            ; 28
290F: add z, a            ; 2A
2910: pop z               ; 08
2911: sub z, w            ; 42
2912: push a              ; 05
2913: cmp a, a            ; 89
2914: and x, z            ; 90
2915: and x, a            ; 92
2916: add y, w            ; 24
2917: pop w               ; 09
2918: sub a, x            ; 49
2919: cmpbit x            ; 8A 24
291B: or x, w             ; A5
291C: and x, a            ; 92
291D: sub a, y            ; 4A
291E: and a, w            ; A2
291F: sub w, x            ; 44
2920: add z, a            ; 2A
2921: sub a, x            ; 49
2922: mul x, a            ; 52
2923: cmp w, a            ; 84
2924: cmp a, w            ; 88
2925: add y, w            ; 24
2926: cmp a, a            ; 89
2927: pop z               ; 08
2928: pop a               ; 0A
2929: sub z, z            ; 41
292A: and a, w            ; A2
292B: add z, z            ; 28
292C: add z, a            ; 2A
292D: cmp a, a            ; 89
292E: sub z, y            ; 40
292F: push y              ; 02
2930: nop                 ; FC
2931: nop                 ; FF
2932: sub w, a            ; 48
2933: store $5141, y      ; 11 41 51
2936: cmp a, x            ; 85
2937: cmp w, x            ; 80
2938: and a, w            ; A2
2939: pop z               ; 08
293A: mul x, z            ; 50
293B: add x, a            ; 20
293C: pop a               ; 0A
293D: sub w, a            ; 48
293E: and x, a            ; 92
293F: or x, z             ; A4
2940: add y, w            ; 24
2941: mul x, w            ; 51
2942: and x, a            ; 92
2943: store $9249, x      ; 10 49 92
2946: add z, a            ; 2A
2947: add z, w            ; 29
2948: and x, w            ; 91
2949: add y, w            ; 24
294A: pop w               ; 09
294B: add z, w            ; 29
294C: mul x, a            ; 52
294D: and x, a            ; 92
294E: add y, w            ; 24
294F: or x, w             ; A5
2950: add x, a            ; 20
2951: store $8209, a      ; 14 09 82
2954: nop                 ; 00
2955: sub w, x            ; 44
2956: push w              ; 04
2957: and x, w            ; 91
2958: nop                 ; FC
2959: nop                 ; FF
