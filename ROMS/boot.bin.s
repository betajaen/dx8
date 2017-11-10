0000: store $1300, x      ; 10 00 13
0003: nop                 ; 00
0004: add z, z            ; 28
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
0010: jmp $00F4           ; E9 F4 00
0013: push z              ; 03
0014: load z, $4001       ; 0D 01 40
0017: store $5004, z      ; 12 04 50
001A: load z, $4001       ; 0D 01 40
001D: store $5005, z      ; 12 05 50
0020: load z, $4001       ; 0D 01 40
0023: store $5006, z      ; 12 06 50
0026: pop z               ; 08
0027: resume              ; F7 00
0029: resume              ; F7 14
002B: store $1B40, x      ; 10 40 1B
002E: nop                 ; 00
002F: store $4012, a      ; 14 12 40
0032: set a, $80          ; 1B 80
0034: store $4013, a      ; 14 13 40
0037: set a, $00          ; 1B 00
0039: store $4014, a      ; 14 14 40
003C: set a, $28          ; 1B 28
003E: store $4015, a      ; 14 15 40
0041: int $01             ; F6 01
0043: set a, $FF          ; 1B FF
0045: call $00EC          ; 15 EC 00
0048: return              ; 16
0049: store $4010, a      ; 14 10 40
004C: set a, $00          ; 1B 00
004E: store $4012, a      ; 14 12 40
0051: set a, $A8          ; 1B A8
0053: store $4013, a      ; 14 13 40
0056: set a, $00          ; 1B 00
0058: store $4014, a      ; 14 14 40
005B: set a, $28          ; 1B 28
005D: store $4015, a      ; 14 15 40
0060: int $01             ; F6 01
0062: set a, $FF          ; 1B FF
0064: call $00EC          ; 15 EC 00
0067: return              ; 16
0068: store $4010, a      ; 14 10 40
006B: set a, $00          ; 1B 00
006D: store $4012, a      ; 14 12 40
0070: set a, $D0          ; 1B D0
0072: store $4013, a      ; 14 13 40
0075: set a, $00          ; 1B 00
0077: store $4014, a      ; 14 14 40
007A: set a, $28          ; 1B 28
007C: store $4015, a      ; 14 15 40
007F: int $01             ; F6 01
0081: set a, $FF          ; 1B FF
0083: call $00EC          ; 15 EC 00
0086: return              ; 16
0087: store $4010, a      ; 14 10 40
008A: set a, $00          ; 1B 00
008C: store $4012, a      ; 14 12 40
008F: set a, $F8          ; 1B F8
0091: store $4013, a      ; 14 13 40
0094: set a, $00          ; 1B 00
0096: store $4014, a      ; 14 14 40
0099: set a, $28          ; 1B 28
009B: store $4015, a      ; 14 15 40
009E: int $01             ; F6 01
00A0: set a, $FF          ; 1B FF
00A2: call $00EC          ; 15 EC 00
00A5: return              ; 16
00A6: set a, $00          ; 1B 00
00A8: store $4012, a      ; 14 12 40
00AB: set a, $80          ; 1B 80
00AD: store $4013, a      ; 14 13 40
00B0: store $4014, x      ; 10 14 40
00B3: store $4015, y      ; 11 15 40
00B6: store $4016, z      ; 12 16 40
00B9: store $4017, w      ; 13 17 40
00BC: int $03             ; F6 03
00BE: set a, $FF          ; 1B FF
00C0: call $00EC          ; 15 EC 00
00C3: set a, $FF          ; 1B FF
00C5: call $00EC          ; 15 EC 00
00C8: return              ; 16
00C9: set a, $00          ; 1B 00
00CB: store $4012, a      ; 14 12 40
00CE: set a, $A8          ; 1B A8
00D0: store $4013, a      ; 14 13 40
00D3: store $4014, x      ; 10 14 40
00D6: store $4015, y      ; 11 15 40
00D9: store $4016, z      ; 12 16 40
00DC: store $4017, w      ; 13 17 40
00DF: int $03             ; F6 03
00E1: set a, $FF          ; 1B FF
00E3: call $00EC          ; 15 EC 00
00E6: set a, $FF          ; 1B FF
00E8: call $00EC          ; 15 EC 00
00EB: return              ; 16
00EC: jmp.z $00F3         ; F5 F3 00
00EF: dec a               ; 70
00F0: jmp $00EC           ; E9 EC 00
00F3: return              ; 16
00F4: set a, $03          ; 1B 03
00F6: store $5000, a      ; 14 00 50
00F9: set x, $09          ; 17 09
00FB: set y, $01          ; 18 01
00FD: set z, $00          ; 19 00
00FF: set w, $28          ; 1A 28
0101: call $00A6          ; 15 A6 00
0104: nop                 ; 00
0105: inc x               ; 67
0106: jmp $0104           ; E9 04 01
0109: nop                 ; 00
010A: nop                 ; 00
010B: nop                 ; 00
010C: nop                 ; 00
010D: nop                 ; 00
010E: nop                 ; 00
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
012F: nop                 ; FC
0130: nop                 ; FF
0131: nop                 ; 00
0132: nop                 ; 00
0133: nop                 ; 00
0134: nop                 ; 00
0135: nop                 ; 00
0136: nop                 ; 00
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
0157: nop                 ; FC
0158: nop                 ; FF
0159: nop                 ; 00
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
0164: push y              ; 02
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
017F: nop                 ; FC
0180: nop                 ; FF
0181: nop                 ; 00
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
01A7: nop                 ; FC
01A8: nop                 ; FF
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
01CD: nop                 ; 00
01CE: nop                 ; 00
01CF: nop                 ; FC
01D0: nop                 ; FF
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
01F5: nop                 ; 00
01F6: nop                 ; 00
01F7: nop                 ; FC
01F8: nop                 ; FF
01F9: nop                 ; 00
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
021F: nop                 ; FC
0220: nop                 ; FF
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
0245: nop                 ; 00
0246: nop                 ; 00
0247: nop                 ; FC
0248: nop                 ; FF
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
026D: nop                 ; 00
026E: nop                 ; 00
026F: nop                 ; FC
0270: nop                 ; FF
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
0295: nop                 ; 00
0296: nop                 ; 00
0297: nop                 ; FC
0298: nop                 ; FF
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
02BD: nop                 ; 00
02BE: nop                 ; 00
02BF: nop                 ; FC
02C0: nop                 ; FF
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
02E5: nop                 ; 00
02E6: nop                 ; 00
02E7: nop                 ; FC
02E8: nop                 ; FF
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
030D: nop                 ; 00
030E: nop                 ; 00
030F: nop                 ; FC
0310: nop                 ; FF
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
0335: nop                 ; 00
0336: nop                 ; 00
0337: nop                 ; FC
0338: nop                 ; FF
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
035D: nop                 ; 00
035E: nop                 ; 00
035F: nop                 ; FC
0360: nop                 ; FF
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
0385: nop                 ; 00
0386: nop                 ; 00
0387: nop                 ; FC
0388: nop                 ; FF
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
03AD: nop                 ; 00
03AE: nop                 ; 00
03AF: nop                 ; FC
03B0: nop                 ; FF
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
03D5: nop                 ; 00
03D6: nop                 ; 00
03D7: nop                 ; FC
03D8: nop                 ; FF
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
03FD: nop                 ; 00
03FE: nop                 ; 00
03FF: nop                 ; FC
0400: nop                 ; FF
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
0425: nop                 ; 00
0426: nop                 ; 00
0427: nop                 ; FC
0428: nop                 ; FF
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
044D: nop                 ; 00
044E: nop                 ; 00
044F: nop                 ; FC
0450: nop                 ; FF
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
0475: nop                 ; 00
0476: nop                 ; 00
0477: nop                 ; FC
0478: nop                 ; FF
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
049D: nop                 ; 00
049E: nop                 ; 00
049F: nop                 ; FC
04A0: nop                 ; FF
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
04C5: nop                 ; 00
04C6: nop                 ; 00
04C7: nop                 ; FC
04C8: nop                 ; FF
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
04ED: nop                 ; 00
04EE: nop                 ; 00
04EF: nop                 ; FC
04F0: nop                 ; FF
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
0515: nop                 ; 00
0516: nop                 ; 00
0517: nop                 ; FC
0518: nop                 ; FF
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
053D: nop                 ; 00
053E: nop                 ; 00
053F: nop                 ; FC
0540: nop                 ; FF
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
0565: nop                 ; 00
0566: nop                 ; 00
0567: nop                 ; FC
0568: nop                 ; FF
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
058D: nop                 ; 00
058E: nop                 ; 00
058F: nop                 ; FC
0590: nop                 ; FF
0591: nop                 ; 00
0592: nop                 ; 00
0593: nop                 ; 00
0594: nop                 ; 00
0595: nop                 ; 00
0596: nop                 ; 00
0597: nop                 ; 00
0598: nop                 ; 00
0599: store $0000, x      ; 10 00 00
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
05B7: nop                 ; FC
05B8: nop                 ; FF
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
05DD: nop                 ; 00
05DE: nop                 ; 00
05DF: nop                 ; FC
05E0: nop                 ; FF
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
0605: nop                 ; 00
0606: nop                 ; 00
0607: nop                 ; FC
0608: nop                 ; FF
0609: nop                 ; 00
060A: nop                 ; 00
060B: nop                 ; 00
060C: nop                 ; 00
060D: nop                 ; 00
060E: nop                 ; 00
060F: nop                 ; 00
0610: nop                 ; 00
0611: push x              ; 01
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
062F: nop                 ; FC
0630: nop                 ; FF
0631: nop                 ; 00
0632: nop                 ; 00
0633: nop                 ; 00
0634: nop                 ; 00
0635: nop                 ; 00
0636: nop                 ; 00
0637: nop                 ; 00
0638: add x, a            ; 20
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
0657: nop                 ; FC
0658: nop                 ; FF
0659: nop                 ; 00
065A: nop                 ; 00
065B: nop                 ; 00
065C: jmp.lt $02B7        ; F4 B7 02
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
067D: nop                 ; 00
067E: nop                 ; 00
067F: nop                 ; FC
0680: nop                 ; FF
0681: nop                 ; 00
0682: nop                 ; 00
0683: cmp w, x            ; 80
0684: not w               ; BA
0685: shr w               ; DD
0686: nop                 ; FA
0687: mul z, w            ; 5B
0688: sub z, z            ; 41
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
06A5: nop                 ; 00
06A6: nop                 ; 00
06A7: nop                 ; FC
06A8: nop                 ; FF
06A9: nop                 ; 00
06AA: nop                 ; 00
06AB: rol y               ; E0
06AC: nop                 ; FF
06AD: store $F7ED, z      ; 12 ED F7
06B0: xor x, z            ; BE
06B1: add z, a            ; 2A
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
06CF: nop                 ; FC
06D0: nop                 ; FF
06D1: nop                 ; 00
06D2: nop                 ; 00
06D3: nop                 ; 00
06D4: mul w, z            ; 5F
06D5: nop                 ; 00
06D6: jmp $AB5A, a        ; F0 5A AB
06D9: mul y, z            ; 55
06DA: and y, w            ; 95
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
06F7: nop                 ; FC
06F8: nop                 ; FF
06F9: nop                 ; 00
06FA: nop                 ; 00
06FB: nop                 ; 00
06FC: jmp $2FFF, a        ; F0 FF 2F
06FF: nop                 ; 00
0700: nop                 ; 00
0701: nop                 ; 00
0702: mul x, a            ; 52
0703: or z, w             ; AD
0704: pop a               ; 0A
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
071F: nop                 ; FC
0720: nop                 ; FF
0721: sub z, y            ; 40
0722: nop                 ; 00
0723: nop                 ; 00
0724: sub z, y            ; 40
0725: add w, a            ; 2F
0726: nop                 ; 00
0727: nop                 ; 00
0728: nop                 ; 00
0729: nop                 ; 00
072A: nop                 ; 00
072B: and a, y            ; A0
072C: jmp x, y            ; EA
072D: mul y, z            ; 55
072E: push x              ; 01
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
0747: nop                 ; FC
0748: nop                 ; FF
0749: store $0805, x      ; 10 05 08
074C: nop                 ; 00
074D: ror a               ; E8
074E: push a              ; 05
074F: cmp w, z            ; 82
0750: add y, w            ; 24
0751: sub w, a            ; 48
0752: nop                 ; 00
0753: nop                 ; 00
0754: nop                 ; 00
0755: and a, y            ; A0
0756: cmp z, w            ; 7E
0757: push a              ; 05
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
076F: nop                 ; FC
0770: nop                 ; FF
0771: sub z, w            ; 42
0772: nop                 ; 00
0773: nop                 ; 00
0774: nop                 ; 00
0775: mul x, z            ; 50
0776: xor x, w            ; BF
0777: store $B580, x      ; 10 80 B5
077A: mul y, a            ; 57
077B: push a              ; 05
077C: nop                 ; 00
077D: nop                 ; 00
077E: cmp w, y            ; 81
077F: or y, z             ; A8
0780: pop a               ; 0A
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
0797: nop                 ; FC
0798: nop                 ; FF
0799: xor a, x            ; D0
079A: push y              ; 02
079B: nop                 ; 00
079C: nop                 ; 00
079D: nop                 ; 00
079E: jmp x, y            ; EA
079F: cmp a, z            ; 87
07A0: cmp y, a            ; 7A
07A1: dec w               ; 6F
07A2: nop                 ; FD
07A3: nop                 ; FF
07A4: add z, a            ; 2A
07A5: sub z, y            ; 40
07A6: mul w, z            ; 5F
07A7: or y, a             ; AA
07A8: nop                 ; 00
07A9: add x, a            ; 20
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
07BF: nop                 ; FC
07C0: nop                 ; FF
07C1: ror x               ; E4
07C2: push y              ; 02
07C3: store $0004, x      ; 10 04 00
07C6: jmp $AFFE           ; E9 FE AF
07C9: xor x, y            ; BD
07CA: set x, $A9          ; 17 A9
07CC: or z, x             ; AB
07CD: or w, x             ; AF
07CE: and a, y            ; A0
07CF: add y, a            ; 25
07D0: or y, w             ; A9
07D1: sub a, y            ; 4A
07D2: mul y, z            ; 55
07D3: mul y, z            ; 55
07D4: push x              ; 01
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
07E7: nop                 ; FC
07E8: nop                 ; FF
07E9: xor z, z            ; C8
07EA: push a              ; 05
07EB: sub z, y            ; 40
07EC: cmp w, x            ; 80
07ED: push w              ; 04
07EE: cmp w, x            ; 80
07EF: mul y, z            ; 55
07F0: jmp.z $E96B         ; F5 6B E9
07F3: mul y, w            ; 56
07F4: sub a, y            ; 4A
07F5: mul z, y            ; 59
07F6: mul w, x            ; 5D
07F7: mul y, z            ; 55
07F8: push y              ; 02
07F9: mul x, w            ; 51
07FA: push y              ; 02
07FB: add x, a            ; 20
07FC: push y              ; 02
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
080F: nop                 ; FC
0810: nop                 ; FF
0811: add x, a            ; 20
0812: nop                 ; 00
0813: nop                 ; 00
0814: add x, a            ; 20
0815: add x, a            ; 20
0816: add y, w            ; 24
0817: sub a, y            ; 4A
0818: mul w, z            ; 5F
0819: or z, w             ; AD
081A: or z, w             ; AD
081B: sub a, y            ; 4A
081C: inc z               ; 69
081D: jmp $0557, w        ; EF 57 05
0820: or y, w             ; A9
0821: sub a, w            ; 4C
0822: or y, w             ; A9
0823: pop a               ; 0A
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
0835: nop                 ; 00
0836: nop                 ; 00
0837: nop                 ; FC
0838: nop                 ; FF
0839: sub z, y            ; 40
083A: add y, x            ; 21
083B: nop                 ; 00
083C: pop z               ; 08
083D: cmp w, x            ; 80
083E: sub w, a            ; 48
083F: store $7BF5, x      ; 10 F5 7B
0842: not a               ; BB
0843: mul y, x            ; 53
0844: nop                 ; FF
0845: sub a, y            ; 4A
0846: or x, w             ; A5
0847: xor a, a            ; D4
0848: sub x, y            ; 36
0849: add y, x            ; 21
084A: mul y, z            ; 55
084B: add y, a            ; 25
084C: or y, z             ; A8
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
085D: nop                 ; 00
085E: nop                 ; 00
085F: nop                 ; FC
0860: nop                 ; FF
0861: add x, a            ; 20
0862: nop                 ; 00
0863: add x, a            ; 20
0864: jmp x, y            ; EA
0865: pop a               ; 0A
0866: push y              ; 02
0867: sub z, z            ; 41
0868: mul z, z            ; 5A
0869: rol x               ; DF
086A: dec y               ; 6D
086B: nop                 ; FD
086C: add w, z            ; 2D
086D: or x, z             ; A4
086E: mul y, z            ; 55
086F: not a               ; BB
0870: cmpbit x            ; 8A 94
0872: add y, w            ; 24
0873: and x, a            ; 92
0874: cmp w, z            ; 82
0875: pop a               ; 0A
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
0887: nop                 ; FC
0888: nop                 ; FF
0889: cmp w, x            ; 80
088A: nop                 ; 00
088B: nop                 ; 00
088C: mul z, x            ; 58
088D: mul y, z            ; 55
088E: mul x, z            ; 50
088F: cmp a, w            ; 88
0890: xor a, x            ; D0
0891: or a, z             ; B5
0892: shl y               ; D6
0893: load x, $BB50       ; 0B 50 BB
0896: or a, w             ; B6
0897: or y, a             ; AA
0898: sub x, x            ; 35
0899: add y, y            ; 22
089A: or y, w             ; A9
089B: add y, w            ; 24
089C: add z, z            ; 28
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
08AD: nop                 ; 00
08AE: nop                 ; 00
08AF: nop                 ; FC
08B0: nop                 ; FF
08B1: nop                 ; 00
08B2: nop                 ; 00
08B3: cmp w, x            ; 80
08B4: xor a, a            ; D4
08B5: push y              ; 02
08B6: push a              ; 05
08B7: push y              ; 02
08B8: push y              ; 02
08B9: or y, a             ; AA
08BA: sub y, y            ; 3B
08BB: nop                 ; 00
08BC: push x              ; 01
08BD: and a, y            ; A0
08BE: shr x               ; DA
08BF: mul y, w            ; 56
08C0: mul y, z            ; 55
08C1: cmp a, w            ; 88
08C2: nop                 ; 00
08C3: and x, z            ; 90
08C4: nop                 ; 00
08C5: cmp w, a            ; 84
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
08D5: nop                 ; 00
08D6: nop                 ; 00
08D7: nop                 ; FC
08D8: nop                 ; FF
08D9: nop                 ; 00
08DA: nop                 ; 00
08DB: push w              ; 04
08DC: inc y               ; 68
08DD: mul w, z            ; 5F
08DE: nop                 ; 00
08DF: and a, y            ; A0
08E0: or y, z             ; A8
08E1: sub a, y            ; 4A
08E2: sub a, y            ; 4A
08E3: inc z               ; 69
08E4: or z, w             ; AD
08E5: mul w, w            ; 60
08E6: cmp a, x            ; 85
08E7: or z, w             ; AD
08E8: cmpbit x            ; 8A 22
08EA: nop                 ; 00
08EB: nop                 ; 00
08EC: nop                 ; 00
08ED: store $0000, y      ; 11 00 00
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
08FF: nop                 ; FC
0900: nop                 ; FF
0901: nop                 ; 00
0902: nop                 ; 00
0903: add y, x            ; 21
0904: shr a               ; DE
0905: cmp x, a            ; 75
0906: or y, w             ; A9
0907: pop a               ; 0A
0908: push y              ; 02
0909: add x, a            ; 20
090A: add y, x            ; 21
090B: or y, a             ; AA
090C: mul x, a            ; 52
090D: or z, x             ; AB
090E: and y, z            ; 94
090F: and z, x            ; 97
0910: add x, a            ; 20
0911: and x, z            ; 90
0912: nop                 ; 00
0913: nop                 ; 00
0914: and x, a            ; 92
0915: push w              ; 04
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
0925: nop                 ; 00
0926: nop                 ; 00
0927: nop                 ; FC
0928: nop                 ; FF
0929: nop                 ; 00
092A: add x, a            ; 20
092B: sub z, y            ; 40
092C: or w, y             ; B0
092D: shr a               ; DE
092E: push w              ; 04
092F: and a, y            ; A0
0930: or y, a             ; AA
0931: pop a               ; 0A
0932: sub a, y            ; 4A
0933: mul y, z            ; 55
0934: or z, w             ; AD
0935: or x, a             ; A6
0936: add z, a            ; 2A
0937: mul y, y            ; 54
0938: sub a, y            ; 4A
0939: add y, a            ; 25
093A: push a              ; 05
093B: cmp w, x            ; 80
093C: or x, z             ; A4
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
094D: nop                 ; 00
094E: nop                 ; 00
094F: nop                 ; FC
0950: nop                 ; FF
0951: nop                 ; 00
0952: nop                 ; 00
0953: push w              ; 04
0954: shr w               ; DD
0955: inc a               ; 6B
0956: shl x               ; D5
0957: mul y, a            ; 57
0958: mul y, z            ; 55
0959: and a, w            ; A2
095A: nop                 ; 00
095B: or z, w             ; AD
095C: inc w               ; 6A
095D: add z, w            ; 29
095E: and y, w            ; 95
095F: sub a, y            ; 4A
0960: add z, w            ; 29
0961: and x, a            ; 92
0962: or y, z             ; A8
0963: add z, a            ; 2A
0964: store $0000, z      ; 12 00 00
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
0977: nop                 ; FC
0978: nop                 ; FF
0979: nop                 ; 00
097A: cmp w, x            ; 80
097B: add x, a            ; 20
097C: or a, y             ; B4
097D: shr a               ; DE
097E: add z, a            ; 2A
097F: nop                 ; FF
0980: xor x, w            ; BF
0981: pop a               ; 0A
0982: mul y, z            ; 55
0983: or y, a             ; AA
0984: or a, w             ; B6
0985: cmp w, z            ; 82
0986: or y, a             ; AA
0987: and x, a            ; 92
0988: cmp w, a            ; 84
0989: add y, w            ; 24
098A: push y              ; 02
098B: cmp w, x            ; 80
098C: push w              ; 04
098D: sub z, y            ; 40
098E: push y              ; 02
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
099F: nop                 ; FC
09A0: nop                 ; FF
09A1: nop                 ; 00
09A2: nop                 ; 00
09A3: store $7BD5, x      ; 10 D5 7B
09A6: xor a, z            ; D2
09A7: nop                 ; FF
09A8: nop                 ; FF
09A9: mul y, z            ; 55
09AA: add x, a            ; 20
09AB: or y, w             ; A9
09AC: sub a, a            ; 4D
09AD: inc z               ; 69
09AE: nop                 ; FD
09AF: sub a, a            ; 4D
09B0: mul x, a            ; 52
09B1: and x, a            ; 92
09B2: mul y, y            ; 54
09B3: mul z, w            ; 5B
09B4: sub z, w            ; 42
09B5: call $0029          ; 15 29 00
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
09C7: nop                 ; FC
09C8: nop                 ; FF
09C9: nop                 ; 00
09CA: nop                 ; 00
09CB: sub z, w            ; 42
09CC: not y               ; B8
09CD: or z, a             ; AE
09CE: or z, w             ; AD
09CF: nop                 ; FF
09D0: nop                 ; FF
09D1: jmp $524A, w        ; EF 4A 52
09D4: mul y, x            ; 53
09D5: or y, a             ; AA
09D6: mul y, w            ; 56
09D7: not a               ; BB
09D8: and y, z            ; 94
09D9: sub w, x            ; 44
09DA: cmp w, z            ; 82
09DB: or x, z             ; A4
09DC: store $84A8, a      ; 14 A8 84
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
09ED: nop                 ; 00
09EE: nop                 ; 00
09EF: nop                 ; FC
09F0: nop                 ; FF
09F1: nop                 ; 00
09F2: sub w, a            ; 48
09F3: pop z               ; 08
09F4: jmp $F55B, y        ; ED 5B F5
09F7: nop                 ; FF
09F8: nop                 ; FF
09F9: nop                 ; FF
09FA: or x, y             ; A3
09FB: mul y, z            ; 55
09FC: sub a, a            ; 4D
09FD: mul w, x            ; 5D
09FE: nop                 ; FB
09FF: mul y, w            ; 56
0A00: add y, x            ; 21
0A01: add z, w            ; 29
0A02: or y, w             ; A9
0A03: sub a, y            ; 4A
0A04: mul y, z            ; 55
0A05: add w, x            ; 2B
0A06: xor a, z            ; D2
0A07: push y              ; 02
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
0A15: nop                 ; 00
0A16: nop                 ; 00
0A17: nop                 ; FC
0A18: nop                 ; FF
0A19: nop                 ; 00
0A1A: nop                 ; 00
0A1B: mul x, w            ; 51
0A1C: cmp x, y            ; 72
0A1D: resume              ; F7 DE
0A1F: nop                 ; FF
0A20: nop                 ; FF
0A21: nop                 ; FF
0A22: and z, x            ; 97
0A23: and z, x            ; 97
0A24: mul x, z            ; 50
0A25: inc a               ; 6B
0A26: or z, w             ; AD
0A27: or z, w             ; AD
0A28: and y, z            ; 94
0A29: sub a, y            ; 4A
0A2A: add y, y            ; 22
0A2B: add z, w            ; 29
0A2C: sub a, x            ; 49
0A2D: and x, a            ; 92
0A2E: add y, a            ; 25
0A2F: load z, $0000       ; 0D 00 00
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
0A3F: nop                 ; FC
0A40: nop                 ; FF
0A41: sub z, y            ; 40
0A42: store $AAA4, z      ; 12 A4 AA
0A45: mul w, x            ; 5D
0A46: nop                 ; FB
0A47: nop                 ; FF
0A48: nop                 ; FF
0A49: nop                 ; FF
0A4A: and a, z            ; A1
0A4B: mul w, z            ; 5F
0A4C: jmp x, y            ; EA
0A4D: or y, a             ; AA
0A4E: or a, w             ; B6
0A4F: store $AEEA, z      ; 12 EA AE
0A52: and y, z            ; 94
0A53: inc w               ; 6A
0A54: or x, w             ; A5
0A55: nop                 ; FA
0A56: cmpbit x            ; 8A 54
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
0A65: nop                 ; 00
0A66: nop                 ; 00
0A67: nop                 ; FC
0A68: nop                 ; FF
0A69: pop z               ; 08
0A6A: and a, y            ; A0
0A6B: and x, a            ; 92
0A6C: jmp x, y            ; EA
0A6D: resume              ; F7 FF
0A6F: nop                 ; FF
0A70: nop                 ; FF
0A71: nop                 ; FF
0A72: sub a, y            ; 4A
0A73: cmp z, y            ; 7C
0A74: cmp a, x            ; 85
0A75: or z, w             ; AD
0A76: shl x               ; D5
0A77: or x, z             ; A4
0A78: mul y, z            ; 55
0A79: shr y               ; DB
0A7A: or x, w             ; A5
0A7B: shr a               ; DE
0A7C: shr y               ; DB
0A7D: or z, a             ; AE
0A7E: sub x, z            ; 37
0A7F: add z, w            ; 29
0A80: push x              ; 01
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
0A8D: nop                 ; 00
0A8E: nop                 ; 00
0A8F: nop                 ; FC
0A90: nop                 ; FF
0A91: add x, a            ; 20
0A92: call $BD6C          ; 15 6C BD
0A95: nop                 ; FE
0A96: nop                 ; FF
0A97: nop                 ; FF
0A98: nop                 ; FF
0A99: add w, a            ; 2F
0A9A: add x, a            ; 20
0A9B: jmp.z $EB51         ; F5 51 EB
0A9E: dec w               ; 6F
0A9F: inc a               ; 6B
0AA0: shr y               ; DB
0AA1: or y, a             ; AA
0AA2: xor x, w            ; BF
0AA3: cmp z, x            ; 7B
0AA4: dec y               ; 6D
0AA5: cmp z, x            ; 7B
0AA6: sub a, x            ; 49
0AA7: mul y, y            ; 54
0AA8: push a              ; 05
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
0AB7: nop                 ; FC
0AB8: nop                 ; FF
0AB9: sub w, x            ; 44
0ABA: and a, y            ; A0
0ABB: mul x, a            ; 52
0ABC: jmp z, w            ; EB
0ABD: shr w               ; DD
0ABE: nop                 ; FF
0ABF: nop                 ; FF
0AC0: nop                 ; FF
0AC1: mul y, a            ; 57
0AC2: sub w, y            ; 45
0AC3: xor a, a            ; D4
0AC4: cmp a, z            ; 87
0AC5: int $BA             ; F6 BA
0AC7: shr x               ; DA
0AC8: or a, w             ; B6
0AC9: or z, w             ; AD
0ACA: inc w               ; 6A
0ACB: sub z, y            ; 40
0ACC: nop                 ; FD
0ACD: or z, a             ; AE
0ACE: store $14A5, a      ; 14 A5 14
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
0ADD: nop                 ; 00
0ADE: nop                 ; 00
0ADF: nop                 ; FC
0AE0: nop                 ; FF
0AE1: store $ED55, y      ; 11 55 ED
0AE4: nop                 ; FD
0AE5: nop                 ; FF
0AE6: nop                 ; FF
0AE7: nop                 ; FF
0AE8: nop                 ; FF
0AE9: pop w               ; 09
0AEA: store $11A1, y      ; 11 A1 11
0AED: shr y               ; DB
0AEE: shl z               ; D7
0AEF: mul y, w            ; 56
0AF0: sub a, z            ; 4B
0AF1: jmp.z $00BF         ; F5 BF 00
0AF4: xor a, a            ; D4
0AF5: cmp z, x            ; 7B
0AF6: mul y, z            ; 55
0AF7: or y, z             ; A8
0AF8: store $0000, z      ; 12 00 00
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
0B07: nop                 ; FC
0B08: nop                 ; FF
0B09: sub w, x            ; 44
0B0A: or y, a             ; AA
0B0B: mul z, z            ; 5A
0B0C: nop                 ; FF
0B0D: nop                 ; FF
0B0E: nop                 ; FF
0B0F: nop                 ; FF
0B10: nop                 ; FF
0B11: mul y, w            ; 56
0B12: sub w, x            ; 44
0B13: pop z               ; 08
0B14: sub w, x            ; 44
0B15: cmp z, y            ; 7C
0B16: or z, w             ; AD
0B17: nop                 ; FD
0B18: cmp y, y            ; 77
0B19: jmp $016B, w        ; EF 6B 01
0B1C: cmp w, x            ; 80
0B1D: shl y               ; D6
0B1E: and x, a            ; 92
0B1F: mul x, a            ; 52
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
0B2D: nop                 ; 00
0B2E: nop                 ; 00
0B2F: nop                 ; FC
0B30: nop                 ; FF
0B31: mul x, w            ; 51
0B32: mul y, z            ; 55
0B33: jmp z, w            ; EB
0B34: nop                 ; FF
0B35: nop                 ; FF
0B36: nop                 ; FF
0B37: nop                 ; FF
0B38: cmp z, a            ; 7F
0B39: or y, w             ; A9
0B3A: store $12A5, z      ; 12 A5 12
0B3D: mul x, a            ; 52
0B3E: cmp x, a            ; 75
0B3F: not x               ; B7
0B40: jmp $FFBD, z        ; EE BD FF
0B43: push x              ; 01
0B44: nop                 ; 00
0B45: sub y, x            ; 3A
0B46: add y, a            ; 25
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
0B55: nop                 ; 00
0B56: nop                 ; 00
0B57: nop                 ; FC
0B58: nop                 ; FF
0B59: mul y, z            ; 55
0B5A: shl x               ; D5
0B5B: nop                 ; FE
0B5C: nop                 ; FF
0B5D: nop                 ; FF
0B5E: nop                 ; FF
0B5F: nop                 ; FF
0B60: mul w, z            ; 5F
0B61: cmp x, a            ; 75
0B62: sub z, z            ; 41
0B63: nop                 ; 00
0B64: nop                 ; 00
0B65: or y, z             ; A8
0B66: shr w               ; DD
0B67: jmp $F75B, z        ; EE 5B F7
0B6A: cmp z, z            ; 7D
0B6B: push z              ; 03
0B6C: nop                 ; 00
0B6D: or x, z             ; A4
0B6E: mul y, y            ; 54
0B6F: push a              ; 05
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
0B7D: nop                 ; 00
0B7E: nop                 ; 00
0B7F: nop                 ; FC
0B80: nop                 ; FF
0B81: or y, a             ; AA
0B82: cmp y, a            ; 7A
0B83: nop                 ; FF
0B84: nop                 ; FF
0B85: nop                 ; FF
0B86: nop                 ; FF
0B87: nop                 ; FF
0B88: xor x, w            ; BF
0B89: jmp.neq $4515       ; F2 15 45
0B8C: cmp a, w            ; 88
0B8D: jmp $BBF6, a        ; F0 F6 BB
0B90: jmp $D75D, y        ; ED 5D D7
0B93: push y              ; 02
0B94: nop                 ; 00
0B95: sub w, a            ; 48
0B96: mul y, z            ; 55
0B97: mul x, z            ; 50
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
0BA7: nop                 ; FC
0BA8: nop                 ; FF
0BA9: or y, a             ; AA
0BAA: shl y               ; D6
0BAB: resume              ; F7 FF
0BAD: nop                 ; FF
0BAE: nop                 ; FF
0BAF: nop                 ; FF
0BB0: mul y, a            ; 57
0BB1: jmp.z $0051         ; F5 51 00
0BB4: nop                 ; 00
0BB5: cmp w, x            ; 80
0BB6: rol x               ; DF
0BB7: cmp z, w            ; 7E
0BB8: cmp y, y            ; 77
0BB9: resume              ; F7 BA
0BBB: pop y               ; 07
0BBC: nop                 ; 00
0BBD: mul x, z            ; 50
0BBE: and x, a            ; 92
0BBF: or x, w             ; A5
0BC0: or z, w             ; AD
0BC1: store $0000, z      ; 12 00 00
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
0BCF: nop                 ; FC
0BD0: nop                 ; FF
0BD1: xor x, y            ; BD
0BD2: nop                 ; FB
0BD3: nop                 ; FF
0BD4: nop                 ; FF
0BD5: nop                 ; FF
0BD6: nop                 ; FF
0BD7: nop                 ; FF
0BD8: or z, w             ; AD
0BD9: jmp.lt $4905        ; F4 05 49
0BDC: add x, a            ; 20
0BDD: mul w, a            ; 61
0BDE: cmp z, x            ; 7B
0BDF: shl z               ; D7
0BE0: shr x               ; DA
0BE1: or z, w             ; AD
0BE2: jmp $000A, y        ; ED 0A 00
0BE5: or y, z             ; A8
0BE6: mul y, z            ; 55
0BE7: add y, y            ; 22
0BE8: mul x, a            ; 52
0BE9: sub a, y            ; 4A
0BEA: call $0000          ; 15 00 00
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
0BF7: nop                 ; FC
0BF8: nop                 ; FF
0BF9: jmp z, w            ; EB
0BFA: jmp $FFFE, z        ; EE FE FF
0BFD: nop                 ; FF
0BFE: nop                 ; FF
0BFF: cmp z, a            ; 7F
0C00: mul y, z            ; 55
0C01: jmp.z $8029         ; F5 29 80
0C04: push y              ; 02
0C05: push w              ; 04
0C06: shr a               ; DE
0C07: or a, z             ; B5
0C08: cmp z, a            ; 7F
0C09: mul z, w            ; 5B
0C0A: not x               ; B7
0C0B: pop y               ; 07
0C0C: nop                 ; 00
0C0D: mul w, w            ; 60
0C0E: or z, x             ; AB
0C0F: xor z, a            ; CA
0C10: or y, a             ; AA
0C11: mul x, a            ; 52
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
0C1D: nop                 ; 00
0C1E: nop                 ; 00
0C1F: nop                 ; FC
0C20: nop                 ; FF
0C21: xor x, y            ; BD
0C22: nop                 ; FF
0C23: nop                 ; FF
0C24: nop                 ; FF
0C25: nop                 ; FF
0C26: nop                 ; FF
0C27: xor x, w            ; BF
0C28: add z, a            ; 2A
0C29: nop                 ; F9
0C2A: store $9004, z      ; 12 04 90
0C2D: nop                 ; 00
0C2E: cmp x, a            ; 75
0C2F: jmp $6DEA, w        ; EF EA 6D
0C32: sub a, x            ; 49
0C33: pop z               ; 08
0C34: nop                 ; 00
0C35: or w, y             ; B0
0C36: or z, w             ; AD
0C37: push w              ; 04
0C38: or x, w             ; A5
0C39: push w              ; 04
0C3A: push a              ; 05
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
0C45: nop                 ; 00
0C46: nop                 ; 00
0C47: nop                 ; FC
0C48: nop                 ; FF
0C49: jmp z, w            ; EB
0C4A: nop                 ; FF
0C4B: nop                 ; FF
0C4C: nop                 ; FF
0C4D: nop                 ; FF
0C4E: nop                 ; FF
0C4F: or w, x             ; AF
0C50: sub a, y            ; 4A
0C51: jmp.neq $20A5       ; F2 A5 20
0C54: push a              ; 05
0C55: add y, y            ; 22
0C56: xor a, a            ; D4
0C57: or y, a             ; AA
0C58: xor x, w            ; BF
0C59: or a, w             ; B6
0C5A: store $0215, z      ; 12 15 02
0C5D: mul w, w            ; 60
0C5E: xor x, w            ; BF
0C5F: or y, a             ; AA
0C60: and y, z            ; 94
0C61: set w, $00          ; 1A 00
0C63: pop z               ; 08
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
0C6F: nop                 ; FC
0C70: nop                 ; FF
0C71: nop                 ; FD
0C72: nop                 ; FD
0C73: nop                 ; FF
0C74: nop                 ; FF
0C75: nop                 ; FF
0C76: nop                 ; FF
0C77: or y, x             ; A7
0C78: and x, a            ; 92
0C79: jmp.lt $0048        ; F4 48 00
0C7C: add x, a            ; 20
0C7D: pop z               ; 08
0C7E: inc y               ; 68
0C7F: rol x               ; DF
0C80: inc w               ; 6A
0C81: or z, x             ; AB
0C82: xor z, z            ; C8
0C83: set w, $00          ; 1A 00
0C85: and a, y            ; A0
0C86: or x, w             ; A5
0C87: add x, a            ; 20
0C88: mul y, z            ; 55
0C89: add z, w            ; 29
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
0C95: nop                 ; 00
0C96: nop                 ; 00
0C97: nop                 ; FC
0C98: nop                 ; FF
0C99: xor x, w            ; BF
0C9A: nop                 ; FF
0C9B: nop                 ; FF
0C9C: nop                 ; FF
0C9D: nop                 ; FF
0C9E: nop                 ; FF
0C9F: load a, $F224       ; 0F 24 F2
0CA2: and y, x            ; 93
0CA3: pop a               ; 0A
0CA4: sub w, x            ; 44
0CA5: push y              ; 02
0CA6: xor y, x            ; C1
0CA7: not a               ; BB
0CA8: shr y               ; DB
0CA9: not w               ; BA
0CAA: cmp x, y            ; 72
0CAB: add w, a            ; 2F
0CAC: nop                 ; 00
0CAD: xor x, a            ; C0
0CAE: sub a, y            ; 4A
0CAF: mul z, z            ; 5A
0CB0: add w, w            ; 2E
0CB1: or x, w             ; A5
0CB2: mul y, z            ; 55
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
0CBD: nop                 ; 00
0CBE: nop                 ; 00
0CBF: nop                 ; FC
0CC0: nop                 ; FF
0CC1: jmp.z $FFFF         ; F5 FF FF
0CC4: nop                 ; FF
0CC5: nop                 ; FF
0CC6: mul w, z            ; 5F
0CC7: or x, w             ; A5
0CC8: and x, a            ; 92
0CC9: nop                 ; F8
0CCA: pop z               ; 08
0CCB: sub z, z            ; 41
0CCC: push y              ; 02
0CCD: store $ED48, y      ; 11 48 ED
0CD0: or a, w             ; B6
0CD1: dec y               ; 6D
0CD2: sub a, a            ; 4D
0CD3: sub x, x            ; 35
0CD4: nop                 ; 00
0CD5: nop                 ; 00
0CD6: inc z               ; 69
0CD7: jmp z, w            ; EB
0CD8: not w               ; BA
0CD9: sub a, y            ; 4A
0CDA: pop a               ; 0A
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
0CE7: nop                 ; FC
0CE8: nop                 ; FF
0CE9: jmp $FFFF, w        ; EF FF FF
0CEC: nop                 ; FF
0CED: nop                 ; FF
0CEE: resume              ; F7 0B
0CF0: add y, w            ; 24
0CF1: jmp.neq $14A2       ; F2 A2 14
0CF4: add z, z            ; 28
0CF5: sub z, y            ; 40
0CF6: store $6D5A, x      ; 10 5A 6D
0CF9: mul y, z            ; 55
0CFA: mul z, w            ; 5B
0CFB: mul w, z            ; 5F
0CFC: nop                 ; 00
0CFD: cmp w, x            ; 80
0CFE: shr x               ; DA
0CFF: xor x, y            ; BD
0D00: dec y               ; 6D
0D01: or y, w             ; A9
0D02: or y, a             ; AA
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
0D0D: nop                 ; 00
0D0E: nop                 ; 00
0D0F: nop                 ; FC
0D10: nop                 ; FF
0D11: xor x, y            ; BD
0D12: nop                 ; FD
0D13: nop                 ; FF
0D14: jmp $5AAD, w        ; EF AD 5A
0D17: or y, a             ; AA
0D18: and x, a            ; 92
0D19: jmp.lt $400A        ; F4 0A 40
0D1C: nop                 ; 00
0D1D: push w              ; 04
0D1E: sub z, z            ; 41
0D1F: jmp.z $D7F7         ; F5 F7 D7
0D22: or a, w             ; B6
0D23: mul y, z            ; 55
0D24: nop                 ; 00
0D25: nop                 ; 00
0D26: dec w               ; 6F
0D27: or z, x             ; AB
0D28: not w               ; BA
0D29: add z, a            ; 2A
0D2A: mul x, w            ; 51
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
0D35: nop                 ; 00
0D36: nop                 ; 00
0D37: nop                 ; FC
0D38: nop                 ; FF
0D39: resume              ; F7 B7
0D3B: cmp z, z            ; 7D
0D3C: cmp z, x            ; 7B
0D3D: nop                 ; FB
0D3E: or w, x             ; AF
0D3F: push a              ; 05
0D40: nop                 ; 00
0D41: jmp.eq $9251        ; F1 51 92
0D44: push w              ; 04
0D45: add y, x            ; 21
0D46: push w              ; 04
0D47: store $5ABD, a      ; 14 BD 5A
0D4A: mul y, z            ; 55
0D4B: mul w, z            ; 5F
0D4C: nop                 ; 00
0D4D: nop                 ; 00
0D4E: shr x               ; DA
0D4F: inc a               ; 6B
0D50: ror w               ; E7
0D51: or x, z             ; A4
0D52: or y, a             ; AA
0D53: push y              ; 02
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
0D5F: nop                 ; FC
0D60: nop                 ; FF
0D61: shr w               ; DD
0D62: nop                 ; FE
0D63: jmp $ADAF, w        ; EF AF AD
0D66: mul y, y            ; 54
0D67: and x, a            ; 92
0D68: sub a, y            ; 4A
0D69: nop                 ; FC
0D6A: push w              ; 04
0D6B: pop z               ; 08
0D6C: add y, y            ; 22
0D6D: pop z               ; 08
0D6E: add x, a            ; 20
0D6F: xor a, y            ; D1
0D70: shl z               ; D7
0D71: or z, w             ; AD
0D72: nop                 ; FA
0D73: or a, z             ; B5
0D74: nop                 ; 00
0D75: nop                 ; 00
0D76: cmp z, z            ; 7D
0D77: or z, w             ; AD
0D78: shl x               ; D5
0D79: or y, a             ; AA
0D7A: add y, w            ; 24
0D7B: push x              ; 01
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
0D87: nop                 ; FC
0D88: nop                 ; FF
0D89: not x               ; B7
0D8A: mul z, w            ; 5B
0D8B: nop                 ; FB
0D8C: shr x               ; DA
0D8D: mul y, w            ; 56
0D8E: or z, x             ; AB
0D8F: push a              ; 05
0D90: store $11F1, x      ; 10 F1 11
0D93: or y, a             ; AA
0D94: cmp a, w            ; 88
0D95: cmp w, z            ; 82
0D96: pop a               ; 0A
0D97: store $AB7E, z      ; 12 7E AB
0D9A: mul y, w            ; 56
0D9B: or w, x             ; AF
0D9C: push x              ; 01
0D9D: nop                 ; 00
0D9E: xor a, a            ; D4
0D9F: dec w               ; 6F
0DA0: xor x, y            ; BD
0DA1: add z, a            ; 2A
0DA2: mul y, z            ; 55
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
0DAD: nop                 ; 00
0DAE: nop                 ; 00
0DAF: nop                 ; FC
0DB0: nop                 ; FF
0DB1: shr w               ; DD
0DB2: jmp $6FAD, z        ; EE AD 6F
0DB5: or y, w             ; A9
0DB6: mul y, y            ; 54
0DB7: add y, y            ; 22
0DB8: cmp w, y            ; 81
0DB9: jmp.lt $0544        ; F4 44 05
0DBC: add y, y            ; 22
0DBD: add z, z            ; 28
0DBE: add x, a            ; 20
0DBF: ror a               ; E8
0DC0: nop                 ; FB
0DC1: shl x               ; D5
0DC2: nop                 ; FB
0DC3: mul x, a            ; 52
0DC4: nop                 ; 00
0DC5: nop                 ; 00
0DC6: cmp x, w            ; 74
0DC7: or z, w             ; AD
0DC8: push y              ; 02
0DC9: sub a, x            ; 49
0DCA: mul y, z            ; 55
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
0DD5: nop                 ; 00
0DD6: nop                 ; 00
0DD7: nop                 ; FC
0DD8: nop                 ; FF
0DD9: inc w               ; 6A
0DDA: mul z, w            ; 5B
0DDB: nop                 ; FB
0DDC: shr x               ; DA
0DDD: sub a, y            ; 4A
0DDE: mul y, z            ; 55
0DDF: pop w               ; 09
0DE0: store $1170, z      ; 12 70 11
0DE3: or y, a             ; AA
0DE4: and y, z            ; 94
0DE5: push y              ; 02
0DE6: sub a, x            ; 49
0DE7: push x              ; 01
0DE8: or z, w             ; AD
0DE9: not w               ; BA
0DEA: mul y, w            ; 56
0DEB: load a, $0000       ; 0F 00 00
0DEE: xor a, x            ; D0
0DEF: set x, $54          ; 17 54
0DF1: mul y, y            ; 54
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
0DFD: nop                 ; 00
0DFE: nop                 ; 00
0DFF: nop                 ; FC
0E00: nop                 ; FF
0E01: shr y               ; DB
0E02: jmp x, y            ; EA
0E03: or z, w             ; AD
0E04: dec y               ; 6D
0E05: and y, x            ; 93
0E06: and x, z            ; 90
0E07: push w              ; 04
0E08: nop                 ; 00
0E09: call $8284          ; 15 84 82
0E0C: mul a, x            ; 62
0E0D: or y, z             ; A8
0E0E: push w              ; 04
0E0F: xor y, w            ; C4
0E10: mul z, z            ; 5A
0E11: jmp $01DB, w        ; EF DB 01
0E14: nop                 ; 00
0E15: nop                 ; 00
0E16: inc y               ; 68
0E17: sub a, x            ; 49
0E18: and x, w            ; 91
0E19: or y, z             ; A8
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
0E25: nop                 ; 00
0E26: nop                 ; 00
0E27: nop                 ; FC
0E28: nop                 ; FF
0E29: or y, a             ; AA
0E2A: mul w, x            ; 5D
0E2B: mul z, w            ; 5B
0E2C: mul z, w            ; 5B
0E2D: add w, z            ; 2D
0E2E: sub w, y            ; 45
0E2F: or y, a             ; AA
0E30: sub w, x            ; 44
0E31: cmp w, x            ; 80
0E32: store $D429, x      ; 10 29 D4
0E35: store $1151, w      ; 13 51 11
0E38: shl y               ; D6
0E39: not a               ; BB
0E3A: cmp x, w            ; 74
0E3B: nop                 ; 00
0E3C: nop                 ; 00
0E3D: nop                 ; 00
0E3E: mul x, z            ; 50
0E3F: or y, a             ; AA
0E40: mul y, w            ; 56
0E41: add y, y            ; 22
0E42: call $0000          ; 15 00 00
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
0E4F: nop                 ; FC
0E50: nop                 ; FF
0E51: or a, z             ; B5
0E52: mul y, w            ; 56
0E53: mul y, z            ; 55
0E54: mul y, z            ; 55
0E55: and y, w            ; 95
0E56: store $0001, x      ; 10 01 00
0E59: sub w, a            ; 48
0E5A: sub w, x            ; 44
0E5B: and a, w            ; A2
0E5C: jmp x, y            ; EA
0E5D: sub a, z            ; 4B
0E5E: push w              ; 04
0E5F: cmp w, a            ; 84
0E60: cmp y, a            ; 7A
0E61: dec y               ; 6D
0E62: load x, $4000       ; 0B 00 40
0E65: nop                 ; 00
0E66: or w, y             ; B0
0E67: or y, a             ; AA
0E68: and y, w            ; 95
0E69: sub a, y            ; 4A
0E6A: call $0000          ; 15 00 00
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
0E77: nop                 ; FC
0E78: nop                 ; FF
0E79: or z, w             ; AD
0E7A: shl x               ; D5
0E7B: or y, a             ; AA
0E7C: or y, a             ; AA
0E7D: inc w               ; 6A
0E7E: sub w, x            ; 44
0E7F: mul y, y            ; 54
0E80: store $9102, y      ; 11 02 91
0E83: and y, z            ; 94
0E84: xor a, a            ; D4
0E85: mul y, a            ; 57
0E86: mul y, z            ; 55
0E87: add z, w            ; 29
0E88: xor a, a            ; D4
0E89: nop                 ; FF
0E8A: push x              ; 01
0E8B: nop                 ; 00
0E8C: push y              ; 02
0E8D: nop                 ; 00
0E8E: and a, y            ; A0
0E8F: mul y, z            ; 55
0E90: xor x, y            ; BD
0E91: store $0025, x      ; 10 25 00
0E94: nop                 ; 00
0E95: nop                 ; 00
0E96: nop                 ; 00
0E97: nop                 ; 00
0E98: nop                 ; 00
0E99: nop                 ; 00
0E9A: nop                 ; 00
0E9B: nop                 ; 00
0E9C: nop                 ; 00
0E9D: nop                 ; 00
0E9E: nop                 ; 00
0E9F: nop                 ; FC
0EA0: nop                 ; FF
0EA1: mul y, z            ; 55
0EA2: or z, w             ; AD
0EA3: or y, a             ; AA
0EA4: or y, a             ; AA
0EA5: or y, a             ; AA
0EA6: push y              ; 02
0EA7: push x              ; 01
0EA8: sub w, x            ; 44
0EA9: store $5244, y      ; 11 44 52
0EAC: jmp.z $54AF         ; F5 AF 54
0EAF: cmp w, z            ; 82
0EB0: mul x, z            ; 50
0EB1: xor x, y            ; BD
0EB2: nop                 ; 00
0EB3: store $0000, x      ; 10 00 00
0EB6: and a, y            ; A0
0EB7: not w               ; BA
0EB8: add w, x            ; 2B
0EB9: sub a, y            ; 4A
0EBA: store $0000, z      ; 12 00 00
0EBD: nop                 ; 00
0EBE: nop                 ; 00
0EBF: nop                 ; 00
0EC0: nop                 ; 00
0EC1: nop                 ; 00
0EC2: nop                 ; 00
0EC3: nop                 ; 00
0EC4: nop                 ; 00
0EC5: nop                 ; 00
0EC6: nop                 ; 00
0EC7: nop                 ; FC
0EC8: nop                 ; FF
0EC9: or y, a             ; AA
0ECA: inc w               ; 6A
0ECB: mul y, z            ; 55
0ECC: mul y, z            ; 55
0ECD: add y, a            ; 25
0ECE: add y, x            ; 21
0ECF: mul y, y            ; 54
0ED0: pop w               ; 09
0ED1: cmp w, a            ; 84
0ED2: add z, z            ; 28
0ED3: sub a, x            ; 49
0ED4: jmp x, y            ; EA
0ED5: mul w, z            ; 5F
0ED6: mul y, x            ; 53
0ED7: add z, w            ; 29
0ED8: xor y, y            ; C2
0ED9: nop                 ; FE
0EDA: pop y               ; 07
0EDB: nop                 ; 00
0EDC: nop                 ; 00
0EDD: nop                 ; 00
0EDE: sub z, y            ; 40
0EDF: shl z               ; D7
0EE0: shl y               ; D6
0EE1: and x, a            ; 92
0EE2: nop                 ; 00
0EE3: nop                 ; 00
0EE4: push w              ; 04
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
0EEF: nop                 ; FC
0EF0: nop                 ; FF
0EF1: inc w               ; 6A
0EF2: and y, w            ; 95
0EF3: or y, a             ; AA
0EF4: or y, a             ; AA
0EF5: or y, a             ; AA
0EF6: pop a               ; 0A
0EF7: mul x, z            ; 50
0EF8: add y, w            ; 24
0EF9: mul x, w            ; 51
0EFA: sub z, w            ; 42
0EFB: mul y, z            ; 55
0EFC: jmp.z $ACFF         ; F5 FF AC
0EFF: sub a, y            ; 4A
0F00: sub a, x            ; 49
0F01: nop                 ; FD
0F02: sub w, y            ; 45
0F03: push w              ; 04
0F04: nop                 ; 00
0F05: pop z               ; 08
0F06: xor x, a            ; C0
0F07: or a, z             ; B5
0F08: cmp y, a            ; 7A
0F09: add y, w            ; 24
0F0A: or x, z             ; A4
0F0B: or y, a             ; AA
0F0C: push a              ; 05
0F0D: nop                 ; 00
0F0E: nop                 ; 00
0F0F: nop                 ; 00
0F10: nop                 ; 00
0F11: nop                 ; 00
0F12: nop                 ; 00
0F13: nop                 ; 00
0F14: nop                 ; 00
0F15: nop                 ; 00
0F16: nop                 ; 00
0F17: nop                 ; FC
0F18: nop                 ; FF
0F19: and y, w            ; 95
0F1A: inc w               ; 6A
0F1B: mul y, z            ; 55
0F1C: sub a, x            ; 49
0F1D: and x, a            ; 92
0F1E: push w              ; 04
0F1F: push y              ; 02
0F20: push x              ; 01
0F21: cmp w, a            ; 84
0F22: mul y, y            ; 54
0F23: mul y, z            ; 55
0F24: jmp $57FF, y        ; ED FF 57
0F27: mul y, z            ; 55
0F28: and x, a            ; 92
0F29: jmp x, y            ; EA
0F2A: add x, w            ; 1F
0F2B: nop                 ; 00
0F2C: store $8000, x      ; 10 00 80
0F2F: or z, a             ; AE
0F30: or z, w             ; AD
0F31: sub a, x            ; 49
0F32: mul x, w            ; 51
0F33: add z, w            ; 29
0F34: store $0000, a      ; 14 00 00
0F37: nop                 ; 00
0F38: nop                 ; 00
0F39: nop                 ; 00
0F3A: nop                 ; 00
0F3B: nop                 ; 00
0F3C: nop                 ; 00
0F3D: nop                 ; 00
0F3E: nop                 ; 00
0F3F: nop                 ; FC
0F40: nop                 ; FF
0F41: inc w               ; 6A
0F42: and y, w            ; 95
0F43: or y, a             ; AA
0F44: or y, a             ; AA
0F45: or y, a             ; AA
0F46: sub a, y            ; 4A
0F47: sub z, y            ; 40
0F48: add x, a            ; 20
0F49: mul x, z            ; 50
0F4A: add z, a            ; 2A
0F4B: mul y, z            ; 55
0F4C: nop                 ; FB
0F4D: nop                 ; FF
0F4E: not a               ; BB
0F4F: or y, a             ; AA
0F50: push w              ; 04
0F51: jmp.lt $002F        ; F4 2F 00
0F54: cmp w, z            ; 82
0F55: nop                 ; 00
0F56: nop                 ; 00
0F57: jmp z, w            ; EB
0F58: shl y               ; D6
0F59: and x, a            ; 92
0F5A: sub w, x            ; 44
0F5B: sub a, y            ; 4A
0F5C: call $0000          ; 15 00 00
0F5F: nop                 ; 00
0F60: nop                 ; 00
0F61: nop                 ; 00
0F62: nop                 ; 00
0F63: nop                 ; 00
0F64: nop                 ; 00
0F65: nop                 ; 00
0F66: nop                 ; 00
0F67: nop                 ; FC
0F68: nop                 ; FF
0F69: and y, w            ; 95
0F6A: or y, a             ; AA
0F6B: or y, a             ; AA
0F6C: add y, w            ; 24
0F6D: sub a, x            ; 49
0F6E: and y, w            ; 95
0F6F: set w, $08          ; 1A 08
0F71: cmp a, x            ; 85
0F72: xor z, a            ; CA
0F73: or y, a             ; AA
0F74: int $FF             ; F6 FF
0F76: jmp $ADAB, w        ; EF AB AD
0F79: cmp a, w            ; 88
0F7A: nop                 ; FF
0F7B: add x, a            ; 20
0F7C: nop                 ; 00
0F7D: nop                 ; 00
0F7E: nop                 ; 00
0F7F: and w, z            ; 9D
0F80: or a, z             ; B5
0F81: sub a, y            ; 4A
0F82: store $0029, z      ; 12 29 00
0F85: nop                 ; 00
0F86: nop                 ; 00
0F87: nop                 ; 00
0F88: nop                 ; 00
0F89: nop                 ; 00
0F8A: nop                 ; 00
0F8B: nop                 ; 00
0F8C: nop                 ; 00
0F8D: nop                 ; 00
0F8E: nop                 ; 00
0F8F: nop                 ; FC
0F90: nop                 ; FF
0F91: or y, a             ; AA
0F92: or y, a             ; AA
0F93: sub a, y            ; 4A
0F94: mul y, z            ; 55
0F95: mul y, z            ; 55
0F96: mul x, a            ; 52
0F97: or x, w             ; A5
0F98: sub w, x            ; 44
0F99: mul x, z            ; 50
0F9A: add z, w            ; 29
0F9B: jmp.z $FFFD         ; F5 FD FF
0F9E: nop                 ; FF
0F9F: nop                 ; FE
0FA0: add w, a            ; 2F
0FA1: or y, a             ; AA
0FA2: xor x, z            ; BE
0FA3: push x              ; 01
0FA4: nop                 ; 00
0FA5: nop                 ; 00
0FA6: nop                 ; 00
0FA7: shl y               ; D6
0FA8: dec z               ; 6E
0FA9: call $A549          ; 15 49 A5
0FAC: nop                 ; 00
0FAD: nop                 ; 00
0FAE: nop                 ; 00
0FAF: nop                 ; 00
0FB0: nop                 ; 00
0FB1: nop                 ; 00
0FB2: nop                 ; 00
0FB3: nop                 ; 00
0FB4: nop                 ; 00
0FB5: nop                 ; 00
0FB6: nop                 ; 00
0FB7: nop                 ; FC
0FB8: nop                 ; FF
0FB9: or y, a             ; AA
0FBA: mul x, a            ; 52
0FBB: add z, a            ; 2A
0FBC: mul y, z            ; 55
0FBD: or x, w             ; A5
0FBE: or y, a             ; AA
0FBF: mul y, y            ; 54
0FC0: store $D525, y      ; 11 25 D5
0FC3: mul z, z            ; 5A
0FC4: nop                 ; FF
0FC5: nop                 ; FF
0FC6: nop                 ; FF
0FC7: nop                 ; FF
0FC8: and a, x            ; 9F
0FC9: store $877D, x      ; 10 7D 87
0FCC: nop                 ; 00
0FCD: sub z, y            ; 40
0FCE: nop                 ; 00
0FCF: mul z, a            ; 5C
0FD0: or a, z             ; B5
0FD1: mul a, z            ; 64
0FD2: store $6A54, z      ; 12 54 6A
0FD5: push x              ; 01
0FD6: nop                 ; 00
0FD7: nop                 ; 00
0FD8: nop                 ; 00
0FD9: nop                 ; 00
0FDA: nop                 ; 00
0FDB: nop                 ; 00
0FDC: nop                 ; 00
0FDD: nop                 ; 00
0FDE: nop                 ; 00
0FDF: nop                 ; FC
0FE0: nop                 ; FF
0FE1: and x, a            ; 92
0FE2: mul y, y            ; 54
0FE3: or y, w             ; A9
0FE4: and x, a            ; 92
0FE5: mul y, y            ; 54
0FE6: and y, w            ; 95
0FE7: or y, a             ; AA
0FE8: sub a, y            ; 4A
0FE9: sub a, y            ; 4A
0FEA: mul y, z            ; 55
0FEB: jmp $FFFF, w        ; EF FF FF
0FEE: nop                 ; FF
0FEF: nop                 ; FF
0FF0: cmp z, a            ; 7F
0FF1: and a, w            ; A2
0FF2: nop                 ; FC
0FF3: push a              ; 05
0FF4: nop                 ; 00
0FF5: push x              ; 01
0FF6: nop                 ; 00
0FF7: or a, w             ; B6
0FF8: cmpbit w            ; 8D 92
0FFA: sub w, x            ; 44
0FFB: sub z, y            ; 40
0FFC: add y, x            ; 21
0FFD: push x              ; 01
0FFE: nop                 ; 00
0FFF: nop                 ; 00
1000: nop                 ; 00
1001: nop                 ; 00
1002: nop                 ; 00
1003: nop                 ; 00
1004: nop                 ; 00
1005: nop                 ; 00
1006: nop                 ; 00
1007: nop                 ; FC
1008: nop                 ; FF
1009: mul y, z            ; 55
100A: and y, w            ; 95
100B: or y, a             ; AA
100C: or y, a             ; AA
100D: add z, a            ; 2A
100E: or y, w             ; A9
100F: or y, a             ; AA
1010: add z, a            ; 2A
1011: mul x, w            ; 51
1012: shl x               ; D5
1013: not w               ; BA
1014: nop                 ; FF
1015: nop                 ; FF
1016: nop                 ; FF
1017: nop                 ; FF
1018: nop                 ; FF
1019: pop w               ; 09
101A: jmp.eq $042F        ; F1 2F 04
101D: nop                 ; 00
101E: nop                 ; 00
101F: dec x               ; 6C
1020: add w, x            ; 2B
1021: mul y, y            ; 54
1022: and x, w            ; 91
1023: pop z               ; 08
1024: cmpbit x            ; 8A 00
1026: nop                 ; 00
1027: nop                 ; 00
1028: nop                 ; 00
1029: nop                 ; 00
102A: nop                 ; 00
102B: nop                 ; 00
102C: nop                 ; 00
102D: nop                 ; 00
102E: nop                 ; 00
102F: nop                 ; FC
1030: nop                 ; FF
1031: add y, w            ; 24
1032: or y, w             ; A9
1033: or y, a             ; AA
1034: add z, a            ; 2A
1035: mul y, z            ; 55
1036: mul y, z            ; 55
1037: mul y, z            ; 55
1038: shl x               ; D5
1039: or y, a             ; AA
103A: cmp y, a            ; 7A
103B: nop                 ; FF
103C: nop                 ; FF
103D: nop                 ; FF
103E: nop                 ; FF
103F: nop                 ; FF
1040: nop                 ; FF
1041: sub w, y            ; 45
1042: ror x               ; E4
1043: set x, $00          ; 17 00
1045: nop                 ; 00
1046: nop                 ; 00
1047: or y, z             ; A8
1048: and y, a            ; 96
1049: add y, y            ; 22
104A: mul y, z            ; 55
104B: nop                 ; 00
104C: or y, w             ; A9
104D: push y              ; 02
104E: nop                 ; 00
104F: nop                 ; 00
1050: nop                 ; 00
1051: nop                 ; 00
1052: nop                 ; 00
1053: nop                 ; 00
1054: nop                 ; 00
1055: nop                 ; 00
1056: nop                 ; 00
1057: nop                 ; FC
1058: nop                 ; FF
1059: mul y, z            ; 55
105A: sub a, y            ; 4A
105B: mul x, a            ; 52
105C: or y, a             ; AA
105D: mul x, a            ; 52
105E: mul y, z            ; 55
105F: mul y, z            ; 55
1060: or a, z             ; B5
1061: or y, a             ; AA
1062: shl y               ; D6
1063: nop                 ; FF
1064: nop                 ; FF
1065: nop                 ; FF
1066: nop                 ; FF
1067: nop                 ; FF
1068: nop                 ; FF
1069: cmp w, w            ; 83
106A: cmp a, w            ; 88
106B: xor x, w            ; BF
106C: store $0000, x      ; 10 00 00
106F: xor a, x            ; D0
1070: not w               ; BA
1071: sub w, a            ; 48
1072: cmp a, x            ; 85
1073: nop                 ; 00
1074: add y, y            ; 22
1075: push x              ; 01
1076: nop                 ; 00
1077: nop                 ; 00
1078: nop                 ; 00
1079: nop                 ; 00
107A: nop                 ; 00
107B: nop                 ; 00
107C: nop                 ; 00
107D: nop                 ; 00
107E: nop                 ; 00
107F: nop                 ; FC
1080: nop                 ; FF
1081: sub a, x            ; 49
1082: or y, w             ; A9
1083: or y, a             ; AA
1084: or y, a             ; AA
1085: or y, a             ; AA
1086: or y, a             ; AA
1087: or y, a             ; AA
1088: shl y               ; D6
1089: mul y, w            ; 56
108A: nop                 ; FB
108B: nop                 ; FF
108C: nop                 ; FF
108D: nop                 ; FF
108E: nop                 ; FF
108F: nop                 ; FF
1090: nop                 ; FF
1091: push a              ; 05
1092: sub z, w            ; 42
1093: nop                 ; FF
1094: push x              ; 01
1095: sub z, y            ; 40
1096: nop                 ; 00
1097: mul x, a            ; 52
1098: call $2952          ; 15 52 29
109B: nop                 ; 00
109C: cmp a, w            ; 88
109D: nop                 ; 00
109E: nop                 ; 00
109F: nop                 ; 00
10A0: nop                 ; 00
10A1: nop                 ; 00
10A2: nop                 ; 00
10A3: nop                 ; 00
10A4: nop                 ; 00
10A5: nop                 ; 00
10A6: nop                 ; 00
10A7: nop                 ; FC
10A8: nop                 ; FF
10A9: add z, a            ; 2A
10AA: add y, a            ; 25
10AB: and y, w            ; 95
10AC: or y, a             ; AA
10AD: or y, a             ; AA
10AE: or y, a             ; AA
10AF: or y, a             ; AA
10B0: or a, z             ; B5
10B1: nop                 ; FD
10B2: shr a               ; DE
10B3: nop                 ; FF
10B4: nop                 ; FF
10B5: nop                 ; FF
10B6: nop                 ; FF
10B7: nop                 ; FF
10B8: nop                 ; FF
10B9: add y, x            ; 21
10BA: push w              ; 04
10BB: cmp z, y            ; 7C
10BC: pop y               ; 07
10BD: nop                 ; 00
10BE: nop                 ; 00
10BF: and a, y            ; A0
10C0: jmp z, w            ; EB
10C1: sub w, x            ; 44
10C2: or y, a             ; AA
10C3: push x              ; 01
10C4: add y, a            ; 25
10C5: push a              ; 05
10C6: nop                 ; 00
10C7: nop                 ; 00
10C8: nop                 ; 00
10C9: nop                 ; 00
10CA: nop                 ; 00
10CB: nop                 ; 00
10CC: nop                 ; 00
10CD: nop                 ; 00
10CE: nop                 ; 00
10CF: nop                 ; FC
10D0: nop                 ; FF
10D1: mul x, a            ; 52
10D2: mul y, z            ; 55
10D3: or y, w             ; A9
10D4: or y, a             ; AA
10D5: sub a, y            ; 4A
10D6: mul y, z            ; 55
10D7: or a, z             ; B5
10D8: shl y               ; D6
10D9: mul y, w            ; 56
10DA: resume              ; F7 FF
10DC: nop                 ; FF
10DD: nop                 ; FF
10DE: nop                 ; FF
10DF: nop                 ; FF
10E0: mul w, z            ; 5F
10E1: cmp w, a            ; 84
10E2: and x, z            ; 90
10E3: nop                 ; FA
10E4: load z, $0000       ; 0D 00 00
10E7: or w, y             ; B0
10E8: sub y, x            ; 3A
10E9: and x, a            ; 92
10EA: cmp y, a            ; 7A
10EB: push z              ; 03
10EC: and x, z            ; 90
10ED: push y              ; 02
10EE: nop                 ; 00
10EF: nop                 ; 00
10F0: nop                 ; 00
10F1: nop                 ; 00
10F2: nop                 ; 00
10F3: nop                 ; 00
10F4: nop                 ; 00
10F5: nop                 ; 00
10F6: nop                 ; 00
10F7: nop                 ; FC
10F8: nop                 ; FF
10F9: and y, w            ; 95
10FA: and x, a            ; 92
10FB: or y, a             ; AA
10FC: sub a, y            ; 4A
10FD: mul y, z            ; 55
10FE: mul y, z            ; 55
10FF: dec y               ; 6D
1100: not a               ; BB
1101: nop                 ; FD
1102: nop                 ; FF
1103: nop                 ; FF
1104: nop                 ; FF
1105: nop                 ; FF
1106: nop                 ; FF
1107: nop                 ; FF
1108: add w, a            ; 2F
1109: push x              ; 01
110A: add a, z            ; 32
110B: rol y               ; E0
110C: sub x, z            ; 37
110D: nop                 ; 00
110E: nop                 ; 00
110F: and a, y            ; A0
1110: sub a, z            ; 4B
1111: sub a, x            ; 49
1112: shl z               ; D7
1113: load w, $054A       ; 0E 4A 05
1116: nop                 ; 00
1117: nop                 ; 00
1118: nop                 ; 00
1119: nop                 ; 00
111A: nop                 ; 00
111B: nop                 ; 00
111C: nop                 ; 00
111D: nop                 ; 00
111E: nop                 ; 00
111F: nop                 ; FC
1120: nop                 ; FF
1121: mul y, y            ; 54
1122: or y, a             ; AA
1123: mul x, a            ; 52
1124: or y, a             ; AA
1125: or y, a             ; AA
1126: or y, a             ; AA
1127: shl x               ; D5
1128: jmp $FFFE, z        ; EE FE FF
112B: nop                 ; FF
112C: nop                 ; FF
112D: nop                 ; FF
112E: nop                 ; FF
112F: nop                 ; FF
1130: and z, x            ; 97
1131: store $E811, x      ; 10 11 E8
1134: mul w, z            ; 5F
1135: nop                 ; 00
1136: nop                 ; 00
1137: or y, a             ; AA
1138: add z, x            ; 26
1139: or x, z             ; A4
113A: nop                 ; FD
113B: call $07B4          ; 15 B4 07
113E: nop                 ; 00
113F: nop                 ; 00
1140: nop                 ; 00
1141: nop                 ; 00
1142: nop                 ; 00
1143: nop                 ; 00
1144: nop                 ; 00
1145: nop                 ; 00
1146: nop                 ; 00
1147: nop                 ; FC
1148: nop                 ; FF
1149: sub a, y            ; 4A
114A: or x, w             ; A5
114B: mul y, y            ; 54
114C: mul y, z            ; 55
114D: mul y, z            ; 55
114E: mul y, z            ; 55
114F: not a               ; BB
1150: or a, z             ; B5
1151: shr y               ; DB
1152: nop                 ; FF
1153: nop                 ; FF
1154: nop                 ; FF
1155: nop                 ; FF
1156: nop                 ; FF
1157: nop                 ; FF
1158: add y, a            ; 25
1159: push y              ; 02
115A: cmp w, a            ; 84
115B: nop                 ; 00
115C: nop                 ; FF
115D: push x              ; 01
115E: cmp w, x            ; 80
115F: shl y               ; D6
1160: cmp a, a            ; 89
1161: mul z, z            ; 5A
1162: mul z, w            ; 5B
1163: sub x, z            ; 37
1164: jmp $000A, x        ; EC 0A 00
1167: nop                 ; 00
1168: nop                 ; 00
1169: nop                 ; 00
116A: nop                 ; 00
116B: nop                 ; 00
116C: nop                 ; 00
116D: nop                 ; 00
116E: nop                 ; 00
116F: nop                 ; FC
1170: nop                 ; FF
1171: mul y, z            ; 55
1172: add z, w            ; 29
1173: mul y, z            ; 55
1174: mul y, z            ; 55
1175: mul y, z            ; 55
1176: or a, z             ; B5
1177: shl y               ; D6
1178: shr a               ; DE
1179: nop                 ; FF
117A: nop                 ; FF
117B: nop                 ; FF
117C: nop                 ; FF
117D: nop                 ; FF
117E: nop                 ; FF
117F: nop                 ; FF
1180: mul y, z            ; 55
1181: cmp w, y            ; 81
1182: nop                 ; 00
1183: sub z, y            ; 40
1184: xor x, w            ; BF
1185: push y              ; 02
1186: mul w, w            ; 60
1187: sub y, w            ; 3D
1188: mul x, a            ; 52
1189: jmp x, y            ; EA
118A: jmp $B4AD, y        ; ED AD B4
118D: pop x               ; 06
118E: nop                 ; 00
118F: nop                 ; 00
1190: nop                 ; 00
1191: nop                 ; 00
1192: nop                 ; 00
1193: nop                 ; 00
1194: nop                 ; 00
1195: nop                 ; 00
1196: nop                 ; 00
1197: nop                 ; FC
1198: nop                 ; FF
1199: mul x, a            ; 52
119A: or y, a             ; AA
119B: sub a, y            ; 4A
119C: mul y, z            ; 55
119D: mul y, z            ; 55
119E: dec y               ; 6D
119F: not a               ; BB
11A0: jmp.z $FFFE         ; F5 FE FF
11A3: nop                 ; FF
11A4: nop                 ; FF
11A5: nop                 ; FF
11A6: nop                 ; FF
11A7: cmp z, a            ; 7F
11A8: xor y, x            ; C1
11A9: pop z               ; 08
11AA: add y, a            ; 25
11AB: push y              ; 02
11AC: nop                 ; FC
11AD: pop y               ; 07
11AE: mul y, y            ; 54
11AF: xor w, x            ; CB
11B0: or x, z             ; A4
11B1: cmp x, a            ; 75
11B2: cmp z, a            ; 7F
11B3: mul z, w            ; 5B
11B4: or z, w             ; AD
11B5: load z, $0000       ; 0D 00 00
11B8: nop                 ; 00
11B9: nop                 ; 00
11BA: nop                 ; 00
11BB: nop                 ; 00
11BC: nop                 ; 00
11BD: nop                 ; 00
11BE: nop                 ; 00
11BF: nop                 ; FC
11C0: nop                 ; FF
11C1: or y, a             ; AA
11C2: sub a, y            ; 4A
11C3: mul y, z            ; 55
11C4: mul y, z            ; 55
11C5: or a, z             ; B5
11C6: or y, a             ; AA
11C7: jmp $FFBE, y        ; ED BE FF
11CA: nop                 ; FF
11CB: nop                 ; FF
11CC: nop                 ; FF
11CD: nop                 ; FF
11CE: nop                 ; FF
11CF: xor x, w            ; BF
11D0: jmp.lt $0003        ; F4 03 00
11D3: nop                 ; 00
11D4: nop                 ; FA
11D5: sub a, a            ; 4D
11D6: jmp x, y            ; EA
11D7: mul y, z            ; 55
11D8: shr x               ; DA
11D9: shr x               ; DA
11DA: shl x               ; D5
11DB: dec w               ; 6F
11DC: or a, z             ; B5
11DD: pop a               ; 0A
11DE: nop                 ; 00
11DF: nop                 ; 00
11E0: nop                 ; 00
11E1: nop                 ; 00
11E2: nop                 ; 00
11E3: nop                 ; 00
11E4: nop                 ; 00
11E5: nop                 ; 00
11E6: nop                 ; 00
11E7: nop                 ; FC
11E8: nop                 ; FF
11E9: and y, z            ; 94
11EA: or y, a             ; AA
11EB: mul y, y            ; 54
11EC: mul y, z            ; 55
11ED: or z, w             ; AD
11EE: dec y               ; 6D
11EF: not a               ; BB
11F0: resume              ; F7 FF
11F2: nop                 ; FF
11F3: nop                 ; FF
11F4: nop                 ; FF
11F5: nop                 ; FF
11F6: nop                 ; FE
11F7: mul w, z            ; 5F
11F8: xor y, x            ; C1
11F9: set x, $85          ; 17 85
11FB: nop                 ; 00
11FC: rol y               ; E0
11FD: mul z, w            ; 5B
11FE: mul x, w            ; 51
11FF: mul y, z            ; 55
1200: or a, z             ; B5
1201: cmp y, y            ; 77
1202: nop                 ; FF
1203: nop                 ; FA
1204: jmp $001E, z        ; EE 1E 00
1207: nop                 ; 00
1208: nop                 ; 00
1209: nop                 ; 00
120A: nop                 ; 00
120B: nop                 ; 00
120C: nop                 ; 00
120D: nop                 ; 00
120E: nop                 ; 00
120F: nop                 ; FC
1210: nop                 ; FF
1211: mul y, z            ; 55
1212: or y, w             ; A9
1213: or y, a             ; AA
1214: or y, a             ; AA
1215: or a, z             ; B5
1216: or a, w             ; B6
1217: jmp $FFFE, y        ; ED FE FF
121A: nop                 ; FF
121B: nop                 ; FF
121C: nop                 ; FF
121D: or w, x             ; AF
121E: jmp z, w            ; EB
121F: add w, a            ; 2F
1220: jmp.lt $2003        ; F4 03 20
1223: pop z               ; 08
1224: xor a, x            ; D0
1225: dec w               ; 6F
1226: xor x, y            ; BD
1227: cmp w, x            ; 80
1228: shr a               ; DE
1229: shr x               ; DA
122A: mul y, z            ; 55
122B: or w, x             ; AF
122C: or a, z             ; B5
122D: push x              ; 01
122E: nop                 ; 00
122F: nop                 ; 00
1230: nop                 ; 00
1231: nop                 ; 00
1232: nop                 ; 00
1233: nop                 ; 00
1234: nop                 ; 00
1235: nop                 ; 00
1236: nop                 ; 00
1237: nop                 ; FC
1238: nop                 ; FF
1239: mul x, a            ; 52
123A: and y, w            ; 95
123B: or y, a             ; AA
123C: or y, a             ; AA
123D: shl y               ; D6
123E: dec y               ; 6D
123F: not a               ; BB
1240: nop                 ; FD
1241: nop                 ; FF
1242: nop                 ; FF
1243: nop                 ; FF
1244: nop                 ; FF
1245: nop                 ; FB
1246: mul z, z            ; 5A
1247: sub a, z            ; 4B
1248: xor y, x            ; C1
1249: push a              ; 05
124A: call $0000          ; 15 00 00
124D: rol x               ; DF
124E: mul y, a            ; 57
124F: push y              ; 02
1250: or a, y             ; B4
1251: cmp y, y            ; 77
1252: nop                 ; FF
1253: nop                 ; FD
1254: mul z, w            ; 5B
1255: call $0000          ; 15 00 00
1258: nop                 ; 00
1259: nop                 ; 00
125A: nop                 ; 00
125B: nop                 ; 00
125C: nop                 ; 00
125D: nop                 ; 00
125E: nop                 ; 00
125F: nop                 ; FC
1260: nop                 ; FF
1261: or y, a             ; AA
1262: or y, a             ; AA
1263: or y, a             ; AA
1264: inc w               ; 6A
1265: dec y               ; 6D
1266: not a               ; BB
1267: jmp $FFFF, y        ; ED FF FF
126A: nop                 ; FF
126B: nop                 ; FF
126C: cmp z, a            ; 7F
126D: add w, z            ; 2D
126E: mul y, z            ; 55
126F: add y, a            ; 25
1270: ror a               ; E8
1271: sub z, a            ; 43
1272: add a, x            ; 30
1273: cmp w, x            ; 80
1274: sub z, y            ; 40
1275: cmp x, a            ; 75
1276: add w, z            ; 2D
1277: nop                 ; 00
1278: shr x               ; DA
1279: jmp x, y            ; EA
127A: cmp z, a            ; 7F
127B: mul y, a            ; 57
127C: mul y, a            ; 57
127D: push w              ; 04
127E: nop                 ; 00
127F: nop                 ; 00
1280: nop                 ; 00
1281: nop                 ; 00
1282: nop                 ; 00
1283: nop                 ; 00
1284: nop                 ; 00
1285: nop                 ; 00
1286: nop                 ; 00
1287: nop                 ; FC
1288: nop                 ; FF
1289: add z, a            ; 2A
128A: mul y, z            ; 55
128B: mul y, z            ; 55
128C: mul y, z            ; 55
128D: shr y               ; DB
128E: dec z               ; 6E
128F: not a               ; BB
1290: nop                 ; FF
1291: nop                 ; FF
1292: nop                 ; FF
1293: nop                 ; FF
1294: rol x               ; DF
1295: shr y               ; DB
1296: mul y, z            ; 55
1297: pop z               ; 08
1298: xor x, a            ; C0
1299: load x, $1092       ; 0B 92 10
129C: nop                 ; 00
129D: shr w               ; DD
129E: sub y, y            ; 3B
129F: add x, a            ; 20
12A0: xor a, x            ; D0
12A1: or w, x             ; AF
12A2: nop                 ; FF
12A3: nop                 ; FD
12A4: pop a               ; 0A
12A5: add a, y            ; 31
12A6: nop                 ; 00
12A7: nop                 ; 00
12A8: nop                 ; 00
12A9: nop                 ; 00
12AA: nop                 ; 00
12AB: nop                 ; 00
12AC: nop                 ; 00
12AD: nop                 ; 00
12AE: nop                 ; 00
12AF: nop                 ; FC
12B0: nop                 ; FF
12B1: or y, a             ; AA
12B2: or y, a             ; AA
12B3: or y, a             ; AA
12B4: shr x               ; DA
12B5: inc w               ; 6A
12B6: not a               ; BB
12B7: jmp $FFFF, y        ; ED FF FF
12BA: nop                 ; FF
12BB: nop                 ; FF
12BC: cmp y, y            ; 77
12BD: mul y, z            ; 55
12BE: pop a               ; 0A
12BF: sub z, z            ; 41
12C0: jmp.neq $0100       ; F2 00 01
12C3: nop                 ; 00
12C4: nop                 ; 00
12C5: cmp x, w            ; 74
12C6: add w, z            ; 2D
12C7: pop z               ; 08
12C8: and a, y            ; A0
12C9: nop                 ; FA
12CA: nop                 ; FF
12CB: jmp $1EA7, w        ; EF A7 1E
12CE: nop                 ; 00
12CF: nop                 ; 00
12D0: nop                 ; 00
12D1: nop                 ; 00
12D2: nop                 ; 00
12D3: nop                 ; 00
12D4: nop                 ; 00
12D5: nop                 ; 00
12D6: nop                 ; 00
12D7: nop                 ; FC
12D8: nop                 ; FF
12D9: or y, a             ; AA
12DA: or y, a             ; AA
12DB: or y, a             ; AA
12DC: mul y, w            ; 56
12DD: xor x, y            ; BD
12DE: dec y               ; 6D
12DF: nop                 ; FF
12E0: nop                 ; FB
12E1: nop                 ; FF
12E2: nop                 ; FF
12E3: dec w               ; 6F
12E4: mul w, x            ; 5D
12E5: or z, x             ; AB
12E6: add y, a            ; 25
12E7: push w              ; 04
12E8: xor x, a            ; C0
12E9: push a              ; 05
12EA: sub w, x            ; 44
12EB: xor a, x            ; D0
12EC: push w              ; 04
12ED: xor a, x            ; D0
12EE: mul z, w            ; 5B
12EF: nop                 ; 00
12F0: cmp w, a            ; 84
12F1: xor x, w            ; BF
12F2: nop                 ; FF
12F3: mul w, z            ; 5F
12F4: and w, z            ; 9D
12F5: inc w               ; 6A
12F6: nop                 ; 00
12F7: nop                 ; 00
12F8: nop                 ; 00
12F9: nop                 ; 00
12FA: nop                 ; 00
12FB: nop                 ; 00
12FC: nop                 ; 00
12FD: nop                 ; 00
12FE: nop                 ; 00
12FF: nop                 ; FC
1300: nop                 ; FF
1301: or y, a             ; AA
1302: or y, a             ; AA
1303: or y, a             ; AA
1304: inc w               ; 6A
1305: jmp z, w            ; EB
1306: or a, w             ; B6
1307: dec y               ; 6D
1308: nop                 ; FF
1309: nop                 ; FF
130A: nop                 ; FF
130B: xor x, w            ; BF
130C: cmp y, y            ; 77
130D: mul y, z            ; 55
130E: push y              ; 02
130F: nop                 ; 00
1310: add z, z            ; 28
1311: cmp w, x            ; 80
1312: nop                 ; 00
1313: mul x, a            ; 52
1314: nop                 ; 00
1315: mul w, w            ; 60
1316: add w, a            ; 2F
1317: nop                 ; 00
1318: nop                 ; 00
1319: nop                 ; FD
131A: resume              ; F7 FB
131C: cmp y, y            ; 77
131D: add x, y            ; 1D
131E: nop                 ; 00
131F: nop                 ; 00
1320: nop                 ; 00
1321: nop                 ; 00
1322: nop                 ; 00
1323: nop                 ; 00
1324: nop                 ; 00
1325: nop                 ; 00
1326: nop                 ; 00
1327: nop                 ; FC
1328: nop                 ; FF
1329: mul y, z            ; 55
132A: mul y, z            ; 55
132B: shl x               ; D5
132C: or y, a             ; AA
132D: or z, w             ; AD
132E: jmp $FFFF, y        ; ED FF FF
1331: nop                 ; FF
1332: nop                 ; FF
1333: jmp $AAAA, w        ; EF AA AA
1336: cmpbit x            ; 8A 90
1338: sub z, y            ; 40
1339: nop                 ; 00
133A: store $0350, z      ; 12 50 03
133D: cmp w, x            ; 80
133E: nop                 ; FA
133F: push y              ; 02
1340: nop                 ; 00
1341: cmp y, x            ; 76
1342: nop                 ; FF
1343: or z, a             ; AE
1344: mul w, x            ; 5D
1345: cmp y, y            ; 77
1346: nop                 ; 00
1347: nop                 ; 00
1348: nop                 ; 00
1349: nop                 ; 00
134A: nop                 ; 00
134B: nop                 ; 00
134C: nop                 ; 00
134D: nop                 ; 00
134E: nop                 ; 00
134F: nop                 ; FC
1350: nop                 ; FF
1351: or y, a             ; AA
1352: or y, a             ; AA
1353: or y, a             ; AA
1354: or a, w             ; B6
1355: cmp y, x            ; 76
1356: not x               ; B7
1357: int $FF             ; F6 FF
1359: nop                 ; FF
135A: xor x, w            ; BF
135B: or a, z             ; B5
135C: or y, a             ; AA
135D: add z, a            ; 2A
135E: push x              ; 01
135F: nop                 ; 00
1360: nop                 ; 00
1361: nop                 ; 00
1362: sub z, z            ; 41
1363: inc y               ; 68
1364: push a              ; 05
1365: nop                 ; 00
1366: or w, x             ; AF
1367: pop w               ; 09
1368: nop                 ; 00
1369: nop                 ; FC
136A: mul w, z            ; 5F
136B: nop                 ; FB
136C: int $2A             ; F6 2A
136E: nop                 ; 00
136F: nop                 ; 00
1370: nop                 ; 00
1371: nop                 ; 00
1372: nop                 ; 00
1373: nop                 ; 00
1374: nop                 ; 00
1375: nop                 ; 00
1376: nop                 ; 00
1377: nop                 ; FC
1378: nop                 ; FF
1379: or y, a             ; AA
137A: or y, a             ; AA
137B: or y, a             ; AA
137C: inc w               ; 6A
137D: shr y               ; DB
137E: jmp $DDBF, y        ; ED BF DD
1381: nop                 ; FF
1382: cmp y, x            ; 76
1383: or w, x             ; AF
1384: or y, a             ; AA
1385: or y, a             ; AA
1386: push w              ; 04
1387: push y              ; 02
1388: nop                 ; 00
1389: nop                 ; 00
138A: pop z               ; 08
138B: mul x, z            ; 50
138C: and y, w            ; 95
138D: nop                 ; 00
138E: cmp y, z            ; 78
138F: and z, x            ; 97
1390: add x, a            ; 20
1391: cmp y, z            ; 78
1392: nop                 ; FD
1393: not x               ; B7
1394: xor x, w            ; BF
1395: shr y               ; DB
1396: nop                 ; 00
1397: nop                 ; 00
1398: nop                 ; 00
1399: nop                 ; 00
139A: nop                 ; 00
139B: nop                 ; 00
139C: nop                 ; 00
139D: nop                 ; 00
139E: nop                 ; 00
139F: nop                 ; FC
13A0: nop                 ; FF
13A1: mul y, z            ; 55
13A2: mul y, z            ; 55
13A3: dec y               ; 6D
13A4: shr y               ; DB
13A5: mul y, w            ; 56
13A6: not x               ; B7
13A7: nop                 ; FA
13A8: nop                 ; FF
13A9: or a, w             ; B6
13AA: rol x               ; DF
13AB: mul y, z            ; 55
13AC: mul y, z            ; 55
13AD: add y, a            ; 25
13AE: add y, a            ; 25
13AF: nop                 ; 00
13B0: nop                 ; 00
13B1: cmp w, x            ; 80
13B2: mul x, a            ; 52
13B3: shr x               ; DA
13B4: call $EA00          ; 15 00 EA
13B7: load a, $D800       ; 0F 00 D8
13BA: shl z               ; D7
13BB: shr a               ; DE
13BC: shl x               ; D5
13BD: dec z               ; 6E
13BE: nop                 ; 00
13BF: nop                 ; 00
13C0: nop                 ; 00
13C1: nop                 ; 00
13C2: nop                 ; 00
13C3: nop                 ; 00
13C4: nop                 ; 00
13C5: nop                 ; 00
13C6: nop                 ; 00
13C7: nop                 ; FC
13C8: nop                 ; FF
13C9: mul y, z            ; 55
13CA: mul y, z            ; 55
13CB: or z, x             ; AB
13CC: or y, a             ; AA
13CD: jmp $DFED, y        ; ED ED DF
13D0: resume              ; F7 EF
13D2: cmp x, a            ; 75
13D3: mul y, a            ; 57
13D4: and y, w            ; 95
13D5: sub a, y            ; 4A
13D6: cmp a, a            ; 89
13D7: add x, a            ; 20
13D8: pop z               ; 08
13D9: nop                 ; 00
13DA: store $5568, x      ; 10 68 55
13DD: push y              ; 02
13DE: xor a, x            ; D0
13DF: cmp z, a            ; 7F
13E0: nop                 ; 00
13E1: jmp.lt $75BA        ; F4 BA 75
13E4: nop                 ; FF
13E5: or a, x             ; B3
13E6: nop                 ; 00
13E7: nop                 ; 00
13E8: nop                 ; 00
13E9: nop                 ; 00
13EA: nop                 ; 00
13EB: nop                 ; 00
13EC: nop                 ; 00
13ED: nop                 ; 00
13EE: nop                 ; 00
13EF: nop                 ; FC
13F0: nop                 ; FF
13F1: or y, a             ; AA
13F2: inc w               ; 6A
13F3: shl x               ; D5
13F4: or a, w             ; B6
13F5: mul z, z            ; 5A
13F6: xor x, y            ; BD
13F7: cmp y, a            ; 7A
13F8: shr w               ; DD
13F9: not w               ; BA
13FA: shr a               ; DE
13FB: mul y, z            ; 55
13FC: add y, y            ; 22
13FD: mul y, y            ; 54
13FE: add y, a            ; 25
13FF: push y              ; 02
1400: sub z, y            ; 40
1401: nop                 ; 00
1402: sub a, x            ; 49
1403: mul z, x            ; 58
1404: mul y, a            ; 57
1405: nop                 ; 00
1406: rol y               ; E0
1407: xor x, w            ; BF
1408: and x, z            ; 90
1409: nop                 ; FF
140A: shr y               ; DB
140B: nop                 ; FF
140C: or z, w             ; AD
140D: shr a               ; DE
140E: nop                 ; 00
140F: nop                 ; 00
1410: nop                 ; 00
1411: nop                 ; 00
1412: nop                 ; 00
1413: nop                 ; 00
1414: nop                 ; 00
1415: nop                 ; 00
1416: nop                 ; 00
1417: nop                 ; FC
1418: nop                 ; FF
1419: mul y, z            ; 55
141A: or z, w             ; AD
141B: mul z, z            ; 5A
141C: shl x               ; D5
141D: dec z               ; 6E
141E: jmp z, w            ; EB
141F: shl z               ; D7
1420: xor x, w            ; BF
1421: jmp $5AB5, w        ; EF B5 5A
1424: sub a, x            ; 49
1425: sub z, z            ; 41
1426: sub a, y            ; 4A
1427: and a, y            ; A0
1428: push y              ; 02
1429: nop                 ; 00
142A: push y              ; 02
142B: ror a               ; E8
142C: mul w, x            ; 5D
142D: store $7F00, w      ; 13 00 7F
1430: push z              ; 03
1431: xor x, y            ; BD
1432: int $AF             ; F6 AF
1434: nop                 ; FB
1435: inc a               ; 6B
1436: push x              ; 01
1437: nop                 ; 00
1438: nop                 ; 00
1439: nop                 ; 00
143A: nop                 ; 00
143B: nop                 ; 00
143C: nop                 ; 00
143D: nop                 ; 00
143E: nop                 ; 00
143F: nop                 ; FC
1440: nop                 ; FF
1441: or y, a             ; AA
1442: or y, a             ; AA
1443: mul y, z            ; 55
1444: mul z, w            ; 5B
1445: or z, x             ; AB
1446: or z, w             ; AD
1447: cmp y, a            ; 7A
1448: jmp.z $AB5A         ; F5 5A AB
144B: mul y, w            ; 56
144C: add y, a            ; 25
144D: add z, a            ; 2A
144E: push x              ; 01
144F: pop z               ; 08
1450: nop                 ; 00
1451: and x, a            ; 92
1452: nop                 ; 00
1453: not z               ; B9
1454: mul y, w            ; 56
1455: push x              ; 01
1456: cmp w, x            ; 80
1457: nop                 ; FE
1458: jmp $EBFF, y        ; ED FF EB
145B: resume              ; F7 AE
145D: or z, w             ; AD
145E: push x              ; 01
145F: nop                 ; 00
1460: nop                 ; 00
1461: nop                 ; 00
1462: nop                 ; 00
1463: nop                 ; 00
1464: nop                 ; 00
1465: nop                 ; 00
1466: nop                 ; 00
1467: nop                 ; FC
1468: nop                 ; FF
1469: inc w               ; 6A
146A: or a, z             ; B5
146B: shl y               ; D6
146C: inc w               ; 6A
146D: jmp.z $D776         ; F5 76 D7
1470: or w, x             ; AF
1471: or a, w             ; B6
1472: or y, a             ; AA
1473: or a, z             ; B5
1474: cmpbit x            ; 8A 40
1476: mul y, y            ; 54
1477: sub z, a            ; 43
1478: and x, w            ; 91
1479: push w              ; 04
147A: add x, a            ; 20
147B: or y, z             ; A8
147C: cmp x, a            ; 75
147D: sub a, a            ; 4D
147E: nop                 ; 00
147F: nop                 ; F8
1480: rol x               ; DF
1481: xor x, w            ; BF
1482: jmp $7DDF, z        ; EE DF 7D
1485: not a               ; BB
1486: push y              ; 02
1487: nop                 ; 00
1488: nop                 ; 00
1489: nop                 ; 00
148A: nop                 ; 00
148B: nop                 ; 00
148C: nop                 ; 00
148D: nop                 ; 00
148E: nop                 ; 00
148F: nop                 ; FC
1490: nop                 ; FF
1491: mul y, z            ; 55
1492: mul y, z            ; 55
1493: or z, w             ; AD
1494: mul y, w            ; 56
1495: mul z, w            ; 5B
1496: shr y               ; DB
1497: not w               ; BA
1498: shr x               ; DA
1499: shl x               ; D5
149A: mul z, z            ; 5A
149B: mul y, z            ; 55
149C: add y, a            ; 25
149D: store $1555, z      ; 12 55 15
14A0: sub w, x            ; 44
14A1: add x, a            ; 20
14A2: push a              ; 05
14A3: jmp x, y            ; EA
14A4: mul w, y            ; 5E
14A5: add y, a            ; 25
14A6: nop                 ; 00
14A7: nop                 ; FA
14A8: nop                 ; FF
14A9: nop                 ; FF
14AA: nop                 ; FB
14AB: cmp z, a            ; 7F
14AC: resume              ; F7 AF
14AE: nop                 ; 00
14AF: nop                 ; 00
14B0: nop                 ; 00
14B1: nop                 ; 00
14B2: nop                 ; 00
14B3: nop                 ; 00
14B4: nop                 ; 00
14B5: nop                 ; 00
14B6: nop                 ; 00
14B7: nop                 ; FC
14B8: nop                 ; FF
14B9: or y, a             ; AA
14BA: shl y               ; D6
14BB: inc w               ; 6A
14BC: or a, z             ; B5
14BD: or z, w             ; AD
14BE: or y, a             ; AA
14BF: jmp $AD6B, z        ; EE 6B AD
14C2: mul y, w            ; 56
14C3: mul y, z            ; 55
14C4: call $4AA4          ; 15 A4 4A
14C7: push y              ; 02
14C8: pop w               ; 09
14C9: pop w               ; 09
14CA: store $F5B8, x      ; 10 B8 F5
14CD: sub x, z            ; 37
14CE: push x              ; 01
14CF: rol y               ; E0
14D0: nop                 ; FF
14D1: nop                 ; FE
14D2: xor x, z            ; BE
14D3: rol x               ; DF
14D4: xor x, z            ; BE
14D5: not w               ; BA
14D6: push y              ; 02
14D7: nop                 ; 00
14D8: nop                 ; 00
14D9: nop                 ; 00
14DA: nop                 ; 00
14DB: nop                 ; 00
14DC: nop                 ; 00
14DD: nop                 ; 00
14DE: nop                 ; 00
14DF: nop                 ; FC
14E0: nop                 ; FF
14E1: shr x               ; DA
14E2: or y, a             ; AA
14E3: mul z, z            ; 5A
14E4: or z, x             ; AB
14E5: or a, w             ; B6
14E6: dec y               ; 6D
14E7: or z, x             ; AB
14E8: or a, w             ; B6
14E9: or y, a             ; AA
14EA: or y, a             ; AA
14EB: or y, a             ; AA
14EC: or y, a             ; AA
14ED: or y, a             ; AA
14EE: mul y, y            ; 54
14EF: push x              ; 01
14F0: sub z, y            ; 40
14F1: add x, a            ; 20
14F2: nop                 ; 00
14F3: or y, z             ; A8
14F4: mul w, y            ; 5E
14F5: and w, z            ; 9D
14F6: nop                 ; 00
14F7: and a, y            ; A0
14F8: resume              ; F7 FF
14FA: rol x               ; DF
14FB: jmp $2FEB, w        ; EF EB 2F
14FE: nop                 ; 00
14FF: mul y, y            ; 54
1500: push x              ; 01
1501: nop                 ; 00
1502: nop                 ; 00
1503: nop                 ; 00
1504: nop                 ; 00
1505: nop                 ; 00
1506: nop                 ; 00
1507: nop                 ; FC
1508: nop                 ; FF
1509: or y, a             ; AA
150A: inc w               ; 6A
150B: or z, x             ; AB
150C: shr x               ; DA
150D: inc w               ; 6A
150E: shl x               ; D5
150F: int $5A             ; F6 5A
1511: inc a               ; 6B
1512: mul y, z            ; 55
1513: mul y, z            ; 55
1514: mul y, z            ; 55
1515: mul y, z            ; 55
1516: or x, w             ; A5
1517: push w              ; 04
1518: nop                 ; 00
1519: push w              ; 04
151A: sub w, y            ; 45
151B: rol y               ; E0
151C: jmp z, w            ; EB
151D: jmp.z $4008         ; F5 08 40
1520: nop                 ; FF
1521: jmp $BFBF, w        ; EF BF BF
1524: shr a               ; DE
1525: or y, a             ; AA
1526: pop a               ; 0A
1527: or y, z             ; A8
1528: pop a               ; 0A
1529: nop                 ; 00
152A: nop                 ; 00
152B: nop                 ; 00
152C: nop                 ; 00
152D: nop                 ; 00
152E: nop                 ; 00
152F: nop                 ; FC
1530: nop                 ; FF
1531: or y, a             ; AA
1532: or z, w             ; AD
1533: inc w               ; 6A
1534: or z, x             ; AB
1535: or y, a             ; AA
1536: or a, w             ; B6
1537: mul z, z            ; 5A
1538: inc a               ; 6B
1539: or z, w             ; AD
153A: or y, a             ; AA
153B: or y, a             ; AA
153C: add z, a            ; 2A
153D: sub a, x            ; 49
153E: add z, w            ; 29
153F: cmp w, y            ; 81
1540: cmp w, x            ; 80
1541: add x, a            ; 20
1542: store $BE92, x      ; 10 92 BE
1545: mul y, z            ; 55
1546: push z              ; 03
1547: nop                 ; 00
1548: nop                 ; FF
1549: nop                 ; FF
154A: nop                 ; FF
154B: cmp x, a            ; 75
154C: cmp y, a            ; 7A
154D: sub a, z            ; 4B
154E: store $02F4, a      ; 14 F4 02
1551: nop                 ; 00
1552: nop                 ; 00
1553: nop                 ; 00
1554: nop                 ; 00
1555: nop                 ; 00
1556: nop                 ; 00
1557: nop                 ; FC
1558: nop                 ; FF
1559: or z, x             ; AB
155A: inc w               ; 6A
155B: mul z, w            ; 5B
155C: dec y               ; 6D
155D: or z, w             ; AD
155E: mul y, z            ; 55
155F: mul y, a            ; 57
1560: or z, w             ; AD
1561: or y, a             ; AA
1562: or y, a             ; AA
1563: add z, a            ; 2A
1564: or y, w             ; A9
1565: or y, a             ; AA
1566: or y, a             ; AA
1567: pop a               ; 0A
1568: nop                 ; 00
1569: push w              ; 04
156A: nop                 ; 00
156B: or x, z             ; A4
156C: inc w               ; 6A
156D: rol x               ; DF
156E: store $B800, z      ; 12 00 B8
1571: nop                 ; FF
1572: cmp z, a            ; 7F
1573: rol x               ; DF
1574: shr x               ; DA
1575: and z, x            ; 97
1576: inc a               ; 6B
1577: nop                 ; F8
1578: call $0000          ; 15 00 00
157B: nop                 ; 00
157C: nop                 ; 00
157D: nop                 ; 00
157E: nop                 ; 00
157F: nop                 ; FC
1580: nop                 ; FF
1581: mul y, z            ; 55
1582: mul y, z            ; 55
1583: or z, w             ; AD
1584: mul y, z            ; 55
1585: or z, x             ; AB
1586: shr x               ; DA
1587: inc w               ; 6A
1588: mul y, z            ; 55
1589: mul y, z            ; 55
158A: mul y, z            ; 55
158B: or x, w             ; A5
158C: sub a, y            ; 4A
158D: and y, w            ; 95
158E: sub a, y            ; 4A
158F: push a              ; 05
1590: sub z, y            ; 40
1591: push y              ; 02
1592: sub z, w            ; 42
1593: add x, z            ; 1E
1594: not a               ; BB
1595: cmp x, a            ; 75
1596: load x, $FC00       ; 0B 00 FC
1599: nop                 ; FB
159A: nop                 ; FF
159B: inc w               ; 6A
159C: dec y               ; 6D
159D: shr w               ; DD
159E: or a, w             ; B6
159F: jmp.lt $0007        ; F4 07 00
15A2: nop                 ; 00
15A3: nop                 ; 00
15A4: nop                 ; 00
15A5: nop                 ; 00
15A6: nop                 ; 00
15A7: nop                 ; FC
15A8: nop                 ; FF
15A9: shr x               ; DA
15AA: shr x               ; DA
15AB: inc w               ; 6A
15AC: mul y, z            ; 55
15AD: shl x               ; D5
15AE: or y, a             ; AA
15AF: mul y, z            ; 55
15B0: mul y, z            ; 55
15B1: mul y, z            ; 55
15B2: mul y, z            ; 55
15B3: mul y, z            ; 55
15B4: mul y, z            ; 55
15B5: or x, w             ; A5
15B6: mul y, y            ; 54
15B7: pop w               ; 09
15B8: nop                 ; 00
15B9: nop                 ; 00
15BA: pop z               ; 08
15BB: dec a               ; 70
15BC: or y, a             ; AA
15BD: rol x               ; DF
15BE: mul x, x            ; 4E
15BF: push x              ; 01
15C0: rol y               ; E0
15C1: nop                 ; FF
15C2: xor x, w            ; BF
15C3: shr w               ; DD
15C4: nop                 ; FB
15C5: resume              ; F7 57
15C7: xor a, y            ; D1
15C8: add x, w            ; 1F
15C9: nop                 ; 00
15CA: nop                 ; 00
15CB: nop                 ; 00
15CC: nop                 ; 00
15CD: nop                 ; 00
15CE: nop                 ; 00
15CF: nop                 ; FC
15D0: nop                 ; FF
15D1: or y, a             ; AA
15D2: mul y, w            ; 56
15D3: or z, x             ; AB
15D4: or a, w             ; B6
15D5: or a, w             ; B6
15D6: or a, w             ; B6
15D7: or y, a             ; AA
15D8: mul y, w            ; 56
15D9: mul y, z            ; 55
15DA: mul y, z            ; 55
15DB: add z, a            ; 2A
15DC: mul y, z            ; 55
15DD: or y, a             ; AA
15DE: mul x, a            ; 52
15DF: pop a               ; 0A
15E0: nop                 ; 00
15E1: cmp w, x            ; 80
15E2: nop                 ; 00
15E3: jmp $76ED, z        ; EE ED 76
15E6: add w, x            ; 2B
15E7: nop                 ; 00
15E8: sub z, y            ; 40
15E9: xor x, w            ; BF
15EA: resume              ; F7 76
15EC: xor x, w            ; BF
15ED: mul w, x            ; 5D
15EE: jmp $07A5, y        ; ED A5 07
15F1: nop                 ; 00
15F2: nop                 ; 00
15F3: nop                 ; 00
15F4: nop                 ; 00
15F5: nop                 ; 00
15F6: nop                 ; 00
15F7: nop                 ; FC
15F8: nop                 ; FF
15F9: or y, a             ; AA
15FA: or y, a             ; AA
15FB: or y, a             ; AA
15FC: or y, a             ; AA
15FD: mul y, z            ; 55
15FE: or z, x             ; AB
15FF: mul z, z            ; 5A
1600: or y, w             ; A9
1601: or y, a             ; AA
1602: sub a, y            ; 4A
1603: or x, w             ; A5
1604: mul x, a            ; 52
1605: and y, w            ; 95
1606: sub a, y            ; 4A
1607: call $0080          ; 15 80 00
160A: sub z, y            ; 40
160B: and w, y            ; 9C
160C: not x               ; B7
160D: shr w               ; DD
160E: dec y               ; 6D
160F: push x              ; 01
1610: nop                 ; 00
1611: or x, z             ; A4
1612: store $FFD9, a      ; 14 D9 FF
1615: resume              ; F7 BF
1617: mul x, x            ; 4E
1618: add w, w            ; 2E
1619: nop                 ; 00
161A: nop                 ; 00
161B: nop                 ; 00
161C: nop                 ; 00
161D: nop                 ; 00
161E: nop                 ; 00
161F: nop                 ; FC
1620: nop                 ; FF
1621: mul y, w            ; 56
1622: mul y, z            ; 55
1623: mul y, z            ; 55
1624: mul y, z            ; 55
1625: shl x               ; D5
1626: or y, a             ; AA
1627: or y, a             ; AA
1628: mul y, w            ; 56
1629: mul y, z            ; 55
162A: mul x, a            ; 52
162B: or y, w             ; A9
162C: mul y, y            ; 54
162D: mul y, z            ; 55
162E: or y, a             ; AA
162F: store $0000, a      ; 14 00 00
1632: store $B670, x      ; 10 70 B6
1635: cmp y, x            ; 76
1636: or w, x             ; AF
1637: push x              ; 01
1638: nop                 ; 00
1639: store $F442, z      ; 12 42 F4
163C: nop                 ; FF
163D: mul w, z            ; 5F
163E: mul y, z            ; 55
163F: and w, x            ; 9B
1640: push y              ; 02
1641: nop                 ; 00
1642: nop                 ; 00
1643: nop                 ; 00
1644: nop                 ; 00
1645: nop                 ; 00
1646: nop                 ; 00
1647: nop                 ; FC
1648: nop                 ; FF
1649: or y, a             ; AA
164A: or a, z             ; B5
164B: or y, a             ; AA
164C: inc w               ; 6A
164D: or z, w             ; AD
164E: mul z, z            ; 5A
164F: mul y, z            ; 55
1650: or y, w             ; A9
1651: or y, a             ; AA
1652: add z, a            ; 2A
1653: mul y, z            ; 55
1654: and y, w            ; 95
1655: mul x, a            ; 52
1656: mul y, z            ; 55
1657: add y, a            ; 25
1658: nop                 ; 00
1659: nop                 ; 00
165A: nop                 ; 00
165B: xor w, y            ; CC
165C: jmp $B95E           ; E9 5E B9
165F: pop a               ; 0A
1660: nop                 ; 00
1661: push w              ; 04
1662: store $FFE1, x      ; 10 E1 FF
1665: nop                 ; FF
1666: nop                 ; FF
1667: inc w               ; 6A
1668: pop z               ; 08
1669: nop                 ; 00
166A: nop                 ; 00
166B: nop                 ; 00
166C: nop                 ; 00
166D: nop                 ; 00
166E: nop                 ; 00
166F: nop                 ; FC
1670: nop                 ; FF
1671: mul z, z            ; 5A
1672: mul y, z            ; 55
1673: mul y, z            ; 55
1674: mul y, z            ; 55
1675: mul y, z            ; 55
1676: or x, w             ; A5
1677: or y, a             ; AA
1678: mul y, w            ; 56
1679: or x, w             ; A5
167A: mul y, y            ; 54
167B: add y, a            ; 25
167C: or x, w             ; A5
167D: or y, a             ; AA
167E: and x, a            ; 92
167F: add z, a            ; 2A
1680: nop                 ; 00
1681: nop                 ; 00
1682: cmp w, x            ; 80
1683: shr z               ; DC
1684: or y, x             ; A7
1685: jmp z, w            ; EB
1686: or w, x             ; AF
1687: push a              ; 05
1688: nop                 ; 00
1689: sub z, y            ; 40
168A: or y, a             ; AA
168B: ror x               ; E4
168C: nop                 ; FF
168D: nop                 ; FF
168E: or y, a             ; AA
168F: xor x, w            ; BF
1690: store $0000, a      ; 14 00 00
1693: nop                 ; 00
1694: nop                 ; 00
1695: nop                 ; 00
1696: nop                 ; 00
1697: nop                 ; FC
1698: nop                 ; FF
1699: mul y, z            ; 55
169A: mul y, z            ; 55
169B: or z, x             ; AB
169C: or y, a             ; AA
169D: or y, a             ; AA
169E: mul z, z            ; 5A
169F: mul y, z            ; 55
16A0: or y, w             ; A9
16A1: and y, z            ; 94
16A2: and x, a            ; 92
16A3: mul y, y            ; 54
16A4: or y, w             ; A9
16A5: mul y, y            ; 54
16A6: mul y, z            ; 55
16A7: mul y, z            ; 55
16A8: push x              ; 01
16A9: cmp w, z            ; 82
16AA: nop                 ; 00
16AB: dec a               ; 70
16AC: shr a               ; DE
16AD: cmp y, a            ; 7A
16AE: jmp.z $0016         ; F5 16 00
16B1: and y, z            ; 94
16B2: sub w, a            ; 48
16B3: cmp a, a            ; 89
16B4: nop                 ; FF
16B5: nop                 ; FF
16B6: nop                 ; FF
16B7: jmp x, y            ; EA
16B8: push x              ; 01
16B9: nop                 ; 00
16BA: nop                 ; 00
16BB: nop                 ; 00
16BC: nop                 ; 00
16BD: nop                 ; 00
16BE: nop                 ; 00
16BF: nop                 ; FC
16C0: nop                 ; FF
16C1: or y, a             ; AA
16C2: or y, a             ; AA
16C3: mul y, y            ; 54
16C4: mul y, z            ; 55
16C5: mul y, z            ; 55
16C6: or x, w             ; A5
16C7: or y, a             ; AA
16C8: mul y, w            ; 56
16C9: mul y, z            ; 55
16CA: mul y, z            ; 55
16CB: mul y, z            ; 55
16CC: mul y, z            ; 55
16CD: or x, w             ; A5
16CE: add z, a            ; 2A
16CF: or y, w             ; A9
16D0: nop                 ; 00
16D1: add x, a            ; 20
16D2: nop                 ; 00
16D3: rol y               ; E0
16D4: shl a               ; D9
16D5: or z, a             ; AE
16D6: xor x, y            ; BD
16D7: return              ; 16
16D8: nop                 ; 00
16D9: nop                 ; 00
16DA: or x, w             ; A5
16DB: and a, w            ; A2
16DC: nop                 ; FF
16DD: nop                 ; FF
16DE: or z, x             ; AB
16DF: not w               ; BA
16E0: push y              ; 02
16E1: nop                 ; 00
16E2: nop                 ; 00
16E3: nop                 ; 00
16E4: nop                 ; 00
16E5: nop                 ; 00
16E6: nop                 ; 00
16E7: nop                 ; FC
16E8: nop                 ; FF
16E9: mul y, z            ; 55
16EA: mul y, z            ; 55
16EB: or z, x             ; AB
16EC: or y, a             ; AA
16ED: or y, a             ; AA
16EE: mul z, z            ; 5A
16EF: mul y, z            ; 55
16F0: add z, w            ; 29
16F1: or x, w             ; A5
16F2: add y, w            ; 24
16F3: sub a, x            ; 49
16F4: sub a, y            ; 4A
16F5: add z, a            ; 2A
16F6: or y, w             ; A9
16F7: sub a, y            ; 4A
16F8: load x, $0400       ; 0B 00 04
16FB: nop                 ; 00
16FC: and z, x            ; 97
16FD: cmp z, x            ; 7B
16FE: ror w               ; E7
16FF: pop x               ; 06
1700: nop                 ; 00
1701: mul x, z            ; 50
1702: add z, z            ; 28
1703: load z, $FFFF       ; 0D FF FF
1706: xor x, z            ; BE
1707: resume              ; F7 0F
1709: nop                 ; 00
170A: nop                 ; 00
170B: nop                 ; 00
170C: nop                 ; 00
170D: nop                 ; 00
170E: nop                 ; 00
170F: nop                 ; FC
1710: nop                 ; FF
1711: or y, a             ; AA
1712: or y, a             ; AA
1713: or y, a             ; AA
1714: or y, a             ; AA
1715: or y, a             ; AA
1716: or y, a             ; AA
1717: or y, a             ; AA
1718: sub a, y            ; 4A
1719: mul y, z            ; 55
171A: mul y, z            ; 55
171B: mul y, z            ; 55
171C: or y, w             ; A9
171D: or y, a             ; AA
171E: sub a, y            ; 4A
171F: mul x, a            ; 52
1720: push w              ; 04
1721: nop                 ; 00
1722: nop                 ; 00
1723: push w              ; 04
1724: xor w, a            ; CF
1725: or y, a             ; AA
1726: xor x, y            ; BD
1727: push y              ; 02
1728: nop                 ; 00
1729: nop                 ; 00
172A: sub w, y            ; 45
172B: mul x, w            ; 51
172C: nop                 ; FF
172D: mul w, x            ; 5D
172E: jmp z, w            ; EB
172F: not w               ; BA
1730: add x, w            ; 1F
1731: ror a               ; E8
1732: nop                 ; 00
1733: nop                 ; 00
1734: nop                 ; 00
1735: nop                 ; 00
1736: nop                 ; 00
1737: nop                 ; FC
1738: nop                 ; FF
1739: mul y, z            ; 55
173A: mul y, z            ; 55
173B: mul y, z            ; 55
173C: mul y, z            ; 55
173D: mul y, z            ; 55
173E: mul y, z            ; 55
173F: mul y, z            ; 55
1740: or y, a             ; AA
1741: mul y, y            ; 54
1742: or y, a             ; AA
1743: add y, w            ; 24
1744: mul y, z            ; 55
1745: sub a, x            ; 49
1746: mul y, z            ; 55
1747: mul y, z            ; 55
1748: add w, x            ; 2B
1749: nop                 ; 00
174A: nop                 ; 00
174B: nop                 ; 00
174C: not y               ; B8
174D: jmp $57D7, z        ; EE D7 57
1750: nop                 ; 00
1751: sub z, y            ; 40
1752: mul x, z            ; 50
1753: return              ; 16
1754: nop                 ; FC
1755: nop                 ; FF
1756: xor x, z            ; BE
1757: resume              ; F7 B5
1759: or y, a             ; AA
175A: push x              ; 01
175B: nop                 ; 00
175C: nop                 ; 00
175D: nop                 ; 00
175E: nop                 ; 00
175F: nop                 ; FC
1760: nop                 ; FF
1761: or y, a             ; AA
1762: or y, a             ; AA
1763: mul z, z            ; 5A
1764: mul y, z            ; 55
1765: mul y, z            ; 55
1766: mul y, z            ; 55
1767: sub a, x            ; 49
1768: or y, w             ; A9
1769: and x, a            ; 92
176A: and x, a            ; 92
176B: or y, a             ; AA
176C: and x, a            ; 92
176D: add z, a            ; 2A
176E: mul y, z            ; 55
176F: or x, w             ; A5
1770: mul y, y            ; 54
1771: nop                 ; 00
1772: sub z, y            ; 40
1773: sub z, y            ; 40
1774: xor x, a            ; C0
1775: not a               ; BB
1776: int $02             ; F6 02
1778: nop                 ; 00
1779: nop                 ; 00
177A: cmp w, y            ; 81
177B: or y, z             ; A8
177C: nop                 ; FE
177D: dec w               ; 6F
177E: jmp z, w            ; EB
177F: rol x               ; DF
1780: cmp z, a            ; 7F
1781: nop                 ; FB
1782: push x              ; 01
1783: nop                 ; 00
1784: nop                 ; 00
1785: nop                 ; 00
1786: nop                 ; 00
1787: nop                 ; FC
1788: nop                 ; FF
1789: mul y, z            ; 55
178A: mul y, z            ; 55
178B: mul y, z            ; 55
178C: mul y, z            ; 55
178D: mul y, z            ; 55
178E: mul y, z            ; 55
178F: or y, a             ; AA
1790: add z, a            ; 2A
1791: mul y, z            ; 55
1792: mul y, z            ; 55
1793: and y, w            ; 95
1794: mul y, y            ; 54
1795: or x, w             ; A5
1796: mul x, a            ; 52
1797: add z, w            ; 29
1798: mul y, z            ; 55
1799: push x              ; 01
179A: nop                 ; 00
179B: nop                 ; 00
179C: cmp w, a            ; 84
179D: or y, a             ; AA
179E: shr w               ; DD
179F: return              ; 16
17A0: nop                 ; 00
17A1: nop                 ; 00
17A2: add z, a            ; 2A
17A3: add y, a            ; 25
17A4: nop                 ; F8
17A5: rol x               ; DF
17A6: nop                 ; FF
17A7: nop                 ; FF
17A8: or z, a             ; AE
17A9: mul y, w            ; 56
17AA: pop y               ; 07
17AB: nop                 ; 00
17AC: nop                 ; 00
17AD: nop                 ; 00
17AE: nop                 ; 00
17AF: nop                 ; FC
17B0: nop                 ; FF
17B1: or y, a             ; AA
17B2: or y, a             ; AA
17B3: or y, a             ; AA
17B4: or y, a             ; AA
17B5: or y, a             ; AA
17B6: and x, a            ; 92
17B7: and x, a            ; 92
17B8: mul x, a            ; 52
17B9: mul y, z            ; 55
17BA: mul y, z            ; 55
17BB: mul x, a            ; 52
17BC: add y, a            ; 25
17BD: mul y, z            ; 55
17BE: sub a, y            ; 4A
17BF: and y, w            ; 95
17C0: and x, a            ; 92
17C1: nop                 ; 00
17C2: nop                 ; 00
17C3: nop                 ; 00
17C4: sub z, y            ; 40
17C5: nop                 ; FB
17C6: mul y, w            ; 56
17C7: push z              ; 03
17C8: nop                 ; 00
17C9: nop                 ; 00
17CA: cmp w, x            ; 80
17CB: mul y, y            ; 54
17CC: or y, w             ; A9
17CD: mul x, a            ; 52
17CE: nop                 ; 00
17CF: and a, y            ; A0
17D0: resume              ; F7 FA
17D2: pop y               ; 07
17D3: nop                 ; 00
17D4: nop                 ; 00
17D5: nop                 ; 00
17D6: nop                 ; 00
17D7: nop                 ; FC
17D8: nop                 ; FF
17D9: or y, a             ; AA
17DA: or y, a             ; AA
17DB: mul y, w            ; 56
17DC: mul y, z            ; 55
17DD: mul y, z            ; 55
17DE: mul y, z            ; 55
17DF: mul y, z            ; 55
17E0: or y, a             ; AA
17E1: add y, w            ; 24
17E2: sub a, x            ; 49
17E3: mul y, z            ; 55
17E4: or y, a             ; AA
17E5: mul x, a            ; 52
17E6: mul y, z            ; 55
17E7: or y, a             ; AA
17E8: or y, a             ; AA
17E9: pop x               ; 06
17EA: nop                 ; 00
17EB: nop                 ; 00
17EC: nop                 ; 00
17ED: or z, y             ; AC
17EE: cmp z, w            ; 7E
17EF: store $0000, w      ; 13 00 00
17F2: add z, z            ; 28
17F3: sub a, x            ; 49
17F4: push y              ; 02
17F5: nop                 ; 00
17F6: nop                 ; 00
17F7: rol y               ; E0
17F8: or w, x             ; AF
17F9: nop                 ; FD
17FA: load z, $0000       ; 0D 00 00
17FD: nop                 ; 00
17FE: nop                 ; 00
17FF: nop                 ; FC
1800: nop                 ; FF
1801: mul y, z            ; 55
1802: mul y, z            ; 55
1803: mul y, z            ; 55
1804: mul y, z            ; 55
1805: and y, w            ; 95
1806: add y, w            ; 24
1807: or x, w             ; A5
1808: sub a, y            ; 4A
1809: mul y, z            ; 55
180A: mul y, z            ; 55
180B: or x, w             ; A5
180C: mul x, a            ; 52
180D: sub a, y            ; 4A
180E: or y, w             ; A9
180F: mul x, a            ; 52
1810: mul x, a            ; 52
1811: pop w               ; 09
1812: nop                 ; 00
1813: nop                 ; 00
1814: add x, a            ; 20
1815: or a, y             ; B4
1816: shr y               ; DB
1817: push a              ; 05
1818: nop                 ; 00
1819: nop                 ; 00
181A: nop                 ; 00
181B: or x, z             ; A4
181C: nop                 ; 00
181D: nop                 ; 00
181E: sub a, x            ; 49
181F: sub z, w            ; 42
1820: or a, z             ; B5
1821: mul y, w            ; 56
1822: load a, $0000       ; 0F 00 00
1825: nop                 ; 00
1826: nop                 ; 00
1827: nop                 ; FC
1828: nop                 ; FF
1829: mul y, z            ; 55
182A: mul y, z            ; 55
182B: mul y, z            ; 55
182C: mul y, z            ; 55
182D: mul y, z            ; 55
182E: mul y, z            ; 55
182F: add z, w            ; 29
1830: add z, w            ; 29
1831: mul y, z            ; 55
1832: mul y, z            ; 55
1833: add z, w            ; 29
1834: and y, w            ; 95
1835: add z, a            ; 2A
1836: and y, w            ; 95
1837: sub a, y            ; 4A
1838: add z, w            ; 29
1839: sub x, x            ; 35
183A: nop                 ; 00
183B: nop                 ; 00
183C: nop                 ; 00
183D: and a, y            ; A0
183E: cmp y, x            ; 76
183F: load x, $0000       ; 0B 00 00
1842: sub z, y            ; 40
1843: and x, w            ; 91
1844: pop a               ; 0A
1845: nop                 ; 00
1846: cmp w, x            ; 80
1847: cmp w, a            ; 84
1848: shr y               ; DB
1849: nop                 ; FF
184A: sub y, y            ; 3B
184B: nop                 ; 00
184C: nop                 ; 00
184D: nop                 ; 00
184E: nop                 ; 00
184F: nop                 ; FC
1850: nop                 ; FF
1851: mul y, z            ; 55
1852: mul y, z            ; 55
1853: mul y, z            ; 55
1854: mul y, z            ; 55
1855: or y, w             ; A9
1856: sub a, y            ; 4A
1857: sub a, y            ; 4A
1858: mul y, z            ; 55
1859: sub a, x            ; 49
185A: add z, a            ; 2A
185B: mul y, z            ; 55
185C: or x, w             ; A5
185D: mul y, y            ; 54
185E: or x, w             ; A5
185F: mul y, y            ; 54
1860: or x, w             ; A5
1861: and x, a            ; 92
1862: nop                 ; 00
1863: nop                 ; 00
1864: nop                 ; 00
1865: xor y, x            ; C1
1866: mul z, z            ; 5A
1867: push x              ; 01
1868: nop                 ; 00
1869: nop                 ; 00
186A: nop                 ; 00
186B: sub z, y            ; 40
186C: push y              ; 02
186D: add z, w            ; 29
186E: add z, a            ; 2A
186F: cmp w, z            ; 82
1870: dec z               ; 6E
1871: jmp z, w            ; EB
1872: add w, w            ; 2E
1873: nop                 ; 00
1874: nop                 ; 00
1875: nop                 ; 00
1876: nop                 ; 00
1877: nop                 ; FC
1878: nop                 ; FF
1879: mul y, z            ; 55
187A: mul y, z            ; 55
187B: mul y, z            ; 55
187C: mul y, z            ; 55
187D: add y, a            ; 25
187E: or y, w             ; A9
187F: or y, a             ; AA
1880: or x, z             ; A4
1881: or y, a             ; AA
1882: mul x, a            ; 52
1883: and y, w            ; 95
1884: mul y, y            ; 54
1885: or x, w             ; A5
1886: mul y, y            ; 54
1887: mul y, z            ; 55
1888: sub a, y            ; 4A
1889: or y, a             ; AA
188A: nop                 ; 00
188B: nop                 ; 00
188C: nop                 ; 00
188D: nop                 ; 00
188E: inc w               ; 6A
188F: store $0000, w      ; 13 00 00
1892: nop                 ; 00
1893: and y, w            ; 95
1894: nop                 ; 00
1895: cmp w, x            ; 80
1896: cmp w, x            ; 80
1897: store $BED5, a      ; 14 D5 BE
189A: dec w               ; 6F
189B: nop                 ; 00
189C: nop                 ; 00
189D: nop                 ; 00
189E: nop                 ; 00
189F: nop                 ; FC
18A0: nop                 ; FF
18A1: or y, a             ; AA
18A2: or y, a             ; AA
18A3: or y, a             ; AA
18A4: or y, a             ; AA
18A5: or y, a             ; AA
18A6: add z, a            ; 2A
18A7: add z, w            ; 29
18A8: and y, w            ; 95
18A9: or y, a             ; AA
18AA: sub a, y            ; 4A
18AB: or y, w             ; A9
18AC: sub a, y            ; 4A
18AD: add z, w            ; 29
18AE: and y, w            ; 95
18AF: and x, a            ; 92
18B0: or y, a             ; AA
18B1: mul x, a            ; 52
18B2: push x              ; 01
18B3: nop                 ; 00
18B4: nop                 ; 00
18B5: nop                 ; 00
18B6: cmp y, a            ; 7A
18B7: push x              ; 01
18B8: nop                 ; 00
18B9: nop                 ; 00
18BA: nop                 ; 00
18BB: nop                 ; 00
18BC: nop                 ; 00
18BD: add z, z            ; 28
18BE: or y, a             ; AA
18BF: push y              ; 02
18C0: nop                 ; FD
18C1: shl z               ; D7
18C2: xor x, y            ; BD
18C3: nop                 ; 00
18C4: nop                 ; 00
18C5: nop                 ; 00
18C6: nop                 ; 00
18C7: nop                 ; FC
18C8: nop                 ; FF
18C9: mul y, z            ; 55
18CA: mul y, z            ; 55
18CB: mul y, z            ; 55
18CC: mul y, z            ; 55
18CD: and y, w            ; 95
18CE: or x, z             ; A4
18CF: sub a, y            ; 4A
18D0: or y, w             ; A9
18D1: add y, w            ; 24
18D2: add z, w            ; 29
18D3: or x, w             ; A5
18D4: mul x, a            ; 52
18D5: or y, a             ; AA
18D6: mul x, a            ; 52
18D7: mul y, z            ; 55
18D8: or y, w             ; A9
18D9: and y, z            ; 94
18DA: pop a               ; 0A
18DB: nop                 ; 00
18DC: nop                 ; 00
18DD: nop                 ; 00
18DE: sub z, y            ; 40
18DF: load x, $0000       ; 0B 00 00
18E2: nop                 ; 00
18E3: sub w, a            ; 48
18E4: nop                 ; 00
18E5: cmp w, x            ; 80
18E6: add y, y            ; 22
18E7: add z, z            ; 28
18E8: inc w               ; 6A
18E9: xor x, w            ; BF
18EA: dec w               ; 6F
18EB: nop                 ; 00
18EC: nop                 ; 00
18ED: nop                 ; 00
18EE: nop                 ; 00
18EF: nop                 ; FC
18F0: nop                 ; FF
18F1: mul y, z            ; 55
18F2: mul y, z            ; 55
18F3: mul y, z            ; 55
18F4: mul y, z            ; 55
18F5: or y, w             ; A9
18F6: sub a, y            ; 4A
18F7: mul x, a            ; 52
18F8: sub a, y            ; 4A
18F9: mul y, z            ; 55
18FA: and y, w            ; 95
18FB: mul y, y            ; 54
18FC: or y, a             ; AA
18FD: mul x, a            ; 52
18FE: mul y, z            ; 55
18FF: or y, a             ; AA
1900: sub a, y            ; 4A
1901: or x, w             ; A5
1902: or y, a             ; AA
1903: nop                 ; 00
1904: nop                 ; 00
1905: nop                 ; 00
1906: and a, y            ; A0
1907: push x              ; 01
1908: nop                 ; 00
1909: nop                 ; 00
190A: nop                 ; 00
190B: add x, a            ; 20
190C: nop                 ; 00
190D: mul x, w            ; 51
190E: cmp a, w            ; 88
190F: pop a               ; 0A
1910: xor x, x            ; BC
1911: jmp $00B6, y        ; ED B6 00
1914: nop                 ; 00
1915: nop                 ; 00
1916: nop                 ; 00
1917: nop                 ; FC
1918: nop                 ; FF
1919: mul y, z            ; 55
191A: mul y, z            ; 55
191B: mul y, z            ; 55
191C: and y, w            ; 95
191D: sub a, y            ; 4A
191E: or y, w             ; A9
191F: or y, a             ; AA
1920: mul x, a            ; 52
1921: and x, a            ; 92
1922: or x, z             ; A4
1923: mul x, a            ; 52
1924: and y, w            ; 95
1925: add z, a            ; 2A
1926: sub a, x            ; 49
1927: sub a, x            ; 49
1928: add z, a            ; 2A
1929: add z, w            ; 29
192A: sub a, x            ; 49
192B: or z, w             ; AD
192C: nop                 ; 00
192D: nop                 ; 00
192E: nop                 ; 00
192F: push x              ; 01
1930: nop                 ; 00
1931: nop                 ; 00
1932: nop                 ; 00
1933: cmp w, x            ; 80
1934: nop                 ; 00
1935: cmp w, x            ; 80
1936: mul x, a            ; 52
1937: mul x, a            ; 52
1938: ror a               ; E8
1939: nop                 ; FF
193A: nop                 ; FD
193B: push x              ; 01
193C: nop                 ; 00
193D: nop                 ; 00
193E: nop                 ; 00
193F: nop                 ; FC
1940: nop                 ; FF
1941: mul y, z            ; 55
1942: mul y, z            ; 55
1943: mul y, z            ; 55
1944: or y, w             ; A9
1945: add z, a            ; 2A
1946: and y, w            ; 95
1947: add y, w            ; 24
1948: and y, w            ; 95
1949: or y, a             ; AA
194A: add z, a            ; 2A
194B: and y, w            ; 95
194C: mul x, a            ; 52
194D: sub a, y            ; 4A
194E: mul y, z            ; 55
194F: mul y, z            ; 55
1950: mul y, z            ; 55
1951: mul y, z            ; 55
1952: mul y, z            ; 55
1953: add y, a            ; 25
1954: push y              ; 02
1955: nop                 ; 00
1956: nop                 ; 00
1957: nop                 ; 00
1958: nop                 ; 00
1959: nop                 ; 00
195A: nop                 ; 00
195B: nop                 ; 00
195C: nop                 ; 00
195D: nop                 ; 00
195E: cmp w, a            ; 84
195F: sub w, a            ; 48
1960: not y               ; B8
1961: or a, z             ; B5
1962: dec w               ; 6F
1963: push z              ; 03
1964: nop                 ; 00
1965: nop                 ; 00
1966: nop                 ; 00
1967: nop                 ; FC
1968: nop                 ; FF
1969: mul y, z            ; 55
196A: mul y, z            ; 55
196B: mul y, z            ; 55
196C: mul y, z            ; 55
196D: mul x, a            ; 52
196E: or x, w             ; A5
196F: or y, a             ; AA
1970: mul x, a            ; 52
1971: or x, w             ; A5
1972: or x, z             ; A4
1973: mul y, y            ; 54
1974: mul y, z            ; 55
1975: or y, w             ; A9
1976: add z, a            ; 2A
1977: mul y, z            ; 55
1978: sub a, x            ; 49
1979: and y, w            ; 95
197A: add y, w            ; 24
197B: or y, w             ; A9
197C: push w              ; 04
197D: nop                 ; 00
197E: nop                 ; 00
197F: pop z               ; 08
1980: nop                 ; 00
1981: nop                 ; 00
1982: nop                 ; 00
1983: nop                 ; 00
1984: pop z               ; 08
1985: sub z, y            ; 40
1986: add z, w            ; 29
1987: store $FF61, z      ; 12 61 FF
198A: nop                 ; FB
198B: pop x               ; 06
198C: nop                 ; 00
198D: nop                 ; 00
198E: nop                 ; 00
198F: nop                 ; FC
1990: nop                 ; FF
1991: mul y, z            ; 55
1992: mul y, z            ; 55
1993: mul y, z            ; 55
1994: mul y, z            ; 55
1995: mul y, z            ; 55
1996: add z, a            ; 2A
1997: sub a, x            ; 49
1998: sub a, y            ; 4A
1999: sub a, y            ; 4A
199A: and y, w            ; 95
199B: mul x, a            ; 52
199C: sub a, y            ; 4A
199D: and y, w            ; 95
199E: or x, z             ; A4
199F: and x, a            ; 92
19A0: add z, a            ; 2A
19A1: or y, w             ; A9
19A2: or y, a             ; AA
19A3: sub a, y            ; 4A
19A4: push a              ; 05
19A5: nop                 ; 00
19A6: nop                 ; 00
19A7: nop                 ; 00
19A8: nop                 ; 00
19A9: nop                 ; 00
19AA: nop                 ; 00
19AB: nop                 ; 00
19AC: nop                 ; 00
19AD: nop                 ; 00
19AE: or x, z             ; A4
19AF: or x, z             ; A4
19B0: jmp $EF6D, a        ; F0 6D EF
19B3: load x, $0000       ; 0B 00 00
19B6: nop                 ; 00
19B7: nop                 ; FC
19B8: nop                 ; FF
19B9: or y, a             ; AA
19BA: or y, a             ; AA
19BB: or y, a             ; AA
19BC: or y, a             ; AA
19BD: or y, a             ; AA
19BE: mul x, a            ; 52
19BF: mul y, z            ; 55
19C0: or y, w             ; A9
19C1: mul x, a            ; 52
19C2: mul x, a            ; 52
19C3: and y, z            ; 94
19C4: mul x, a            ; 52
19C5: or x, w             ; A5
19C6: or y, a             ; AA
19C7: mul y, y            ; 54
19C8: or y, a             ; AA
19C9: sub a, y            ; 4A
19CA: and x, a            ; 92
19CB: add z, a            ; 2A
19CC: add z, w            ; 29
19CD: nop                 ; 00
19CE: nop                 ; 00
19CF: nop                 ; 00
19D0: nop                 ; 00
19D1: nop                 ; 00
19D2: nop                 ; 00
19D3: nop                 ; 00
19D4: cmp w, x            ; 80
19D5: nop                 ; 00
19D6: pop z               ; 08
19D7: pop w               ; 09
19D8: sub z, w            ; 42
19D9: rol x               ; DF
19DA: not a               ; BB
19DB: add x, z            ; 1E
19DC: nop                 ; 00
19DD: nop                 ; 00
19DE: nop                 ; 00
19DF: nop                 ; FC
19E0: nop                 ; FF
19E1: mul y, z            ; 55
19E2: mul y, z            ; 55
19E3: mul y, z            ; 55
19E4: mul y, z            ; 55
19E5: or x, w             ; A5
19E6: sub a, y            ; 4A
19E7: and x, a            ; 92
19E8: sub a, y            ; 4A
19E9: add z, a            ; 2A
19EA: and y, w            ; 95
19EB: mul x, a            ; 52
19EC: mul y, z            ; 55
19ED: or y, a             ; AA
19EE: sub a, y            ; 4A
19EF: mul y, z            ; 55
19F0: sub a, x            ; 49
19F1: mul y, z            ; 55
19F2: mul y, z            ; 55
19F3: or y, a             ; AA
19F4: and x, a            ; 92
19F5: nop                 ; 00
19F6: nop                 ; 00
19F7: add x, a            ; 20
19F8: nop                 ; 00
19F9: nop                 ; 00
19FA: nop                 ; 00
19FB: nop                 ; 00
19FC: nop                 ; 00
19FD: cmp w, x            ; 80
19FE: or x, z             ; A4
19FF: or x, z             ; A4
1A00: jmp $EEF5, a        ; F0 F5 EE
1A03: load z, $0000       ; 0D 00 00
1A06: nop                 ; 00
1A07: nop                 ; FC
1A08: nop                 ; FF
1A09: mul y, z            ; 55
1A0A: mul y, z            ; 55
1A0B: mul y, z            ; 55
1A0C: or y, a             ; AA
1A0D: and y, z            ; 94
1A0E: mul y, y            ; 54
1A0F: mul y, z            ; 55
1A10: or y, w             ; A9
1A11: or x, z             ; A4
1A12: or x, z             ; A4
1A13: and y, z            ; 94
1A14: mul y, y            ; 54
1A15: mul y, z            ; 55
1A16: mul x, a            ; 52
1A17: sub a, y            ; 4A
1A18: mul y, z            ; 55
1A19: mul x, a            ; 52
1A1A: or x, w             ; A5
1A1B: mul x, a            ; 52
1A1C: add y, a            ; 25
1A1D: push x              ; 01
1A1E: nop                 ; 00
1A1F: nop                 ; 00
1A20: nop                 ; 00
1A21: nop                 ; 00
1A22: nop                 ; 00
1A23: nop                 ; 00
1A24: store $0008, x      ; 10 08 00
1A27: store $BFB1, y      ; 11 B1 BF
1A2A: mul y, a            ; 57
1A2B: cmp z, x            ; 7B
1A2C: nop                 ; 00
1A2D: nop                 ; 00
1A2E: nop                 ; 00
1A2F: nop                 ; FC
1A30: nop                 ; FF
1A31: mul y, z            ; 55
1A32: mul y, z            ; 55
1A33: mul y, z            ; 55
1A34: mul y, z            ; 55
1A35: mul y, z            ; 55
1A36: and y, w            ; 95
1A37: add y, w            ; 24
1A38: and y, w            ; 95
1A39: sub a, y            ; 4A
1A3A: call $4921          ; 15 21 49
1A3D: sub a, x            ; 49
1A3E: and y, w            ; 95
1A3F: mul x, a            ; 52
1A40: mul y, z            ; 55
1A41: and y, w            ; 95
1A42: and y, z            ; 94
1A43: and y, z            ; 94
1A44: and y, z            ; 94
1A45: push w              ; 04
1A46: nop                 ; 00
1A47: nop                 ; 00
1A48: push x              ; 01
1A49: nop                 ; 00
1A4A: cmp w, x            ; 80
1A4B: nop                 ; 00
1A4C: nop                 ; 00
1A4D: nop                 ; 00
1A4E: or y, z             ; A8
1A4F: sub w, x            ; 44
1A50: nop                 ; F8
1A51: int $ED             ; F6 ED
1A53: add z, a            ; 2A
1A54: nop                 ; 00
1A55: nop                 ; 00
1A56: nop                 ; 00
1A57: nop                 ; FC
1A58: nop                 ; FF
1A59: mul y, z            ; 55
1A5A: mul y, z            ; 55
1A5B: sub a, x            ; 49
1A5C: sub a, x            ; 49
1A5D: mul y, z            ; 55
1A5E: or x, w             ; A5
1A5F: or y, a             ; AA
1A60: or x, z             ; A4
1A61: mul x, a            ; 52
1A62: mul x, a            ; 52
1A63: sub a, y            ; 4A
1A64: add z, a            ; 2A
1A65: mul y, z            ; 55
1A66: or y, w             ; A9
1A67: or y, a             ; AA
1A68: add y, w            ; 24
1A69: or y, w             ; A9
1A6A: mul x, a            ; 52
1A6B: mul y, z            ; 55
1A6C: mul y, z            ; 55
1A6D: pop w               ; 09
1A6E: nop                 ; 00
1A6F: nop                 ; 00
1A70: nop                 ; 00
1A71: nop                 ; 00
1A72: nop                 ; 00
1A73: nop                 ; 00
1A74: cmp w, x            ; 80
1A75: nop                 ; 00
1A76: push x              ; 01
1A77: store $6FA8, y      ; 11 A8 6F
1A7A: not x               ; B7
1A7B: int $00             ; F6 00
1A7D: nop                 ; 00
1A7E: nop                 ; 00
1A7F: nop                 ; FC
1A80: nop                 ; FF
1A81: mul y, z            ; 55
1A82: mul y, z            ; 55
1A83: mul y, z            ; 55
1A84: mul y, z            ; 55
1A85: or x, w             ; A5
1A86: mul y, y            ; 54
1A87: and x, a            ; 92
1A88: add z, a            ; 2A
1A89: and y, w            ; 95
1A8A: or y, a             ; AA
1A8B: and x, a            ; 92
1A8C: mul x, a            ; 52
1A8D: mul y, z            ; 55
1A8E: mul y, z            ; 55
1A8F: sub a, y            ; 4A
1A90: mul y, z            ; 55
1A91: mul y, z            ; 55
1A92: mul y, z            ; 55
1A93: mul x, a            ; 52
1A94: mul y, z            ; 55
1A95: add z, a            ; 2A
1A96: nop                 ; 00
1A97: nop                 ; 00
1A98: pop z               ; 08
1A99: nop                 ; 00
1A9A: nop                 ; 00
1A9B: nop                 ; 00
1A9C: nop                 ; 00
1A9D: cmp w, x            ; 80
1A9E: sub z, y            ; 40
1A9F: cmp w, a            ; 84
1AA0: nop                 ; FC
1AA1: nop                 ; FA
1AA2: shl a               ; D9
1AA3: mul y, z            ; 55
1AA4: push x              ; 01
1AA5: nop                 ; 00
1AA6: nop                 ; 00
1AA7: nop                 ; FC
1AA8: nop                 ; FF
1AA9: or y, a             ; AA
1AAA: or y, a             ; AA
1AAB: or y, a             ; AA
1AAC: or y, a             ; AA
1AAD: mul y, y            ; 54
1AAE: mul y, z            ; 55
1AAF: mul y, z            ; 55
1AB0: sub a, x            ; 49
1AB1: or y, w             ; A9
1AB2: and x, a            ; 92
1AB3: or x, z             ; A4
1AB4: add y, w            ; 24
1AB5: sub a, x            ; 49
1AB6: sub a, y            ; 4A
1AB7: mul y, z            ; 55
1AB8: or y, a             ; AA
1AB9: sub a, y            ; 4A
1ABA: sub a, y            ; 4A
1ABB: and y, w            ; 95
1ABC: or x, z             ; A4
1ABD: and x, a            ; 92
1ABE: nop                 ; 00
1ABF: nop                 ; 00
1AC0: nop                 ; 00
1AC1: nop                 ; 00
1AC2: nop                 ; 00
1AC3: nop                 ; 00
1AC4: nop                 ; 00
1AC5: nop                 ; 00
1AC6: push w              ; 04
1AC7: store $6FD4, y      ; 11 D4 6F
1ACA: not x               ; B7
1ACB: int $00             ; F6 00
1ACD: nop                 ; 00
1ACE: nop                 ; 00
1ACF: nop                 ; FC
1AD0: nop                 ; FF
1AD1: mul y, z            ; 55
1AD2: or y, a             ; AA
1AD3: or y, a             ; AA
1AD4: or y, a             ; AA
1AD5: add z, a            ; 2A
1AD6: and y, w            ; 95
1AD7: add y, w            ; 24
1AD8: mul y, z            ; 55
1AD9: add z, a            ; 2A
1ADA: mul y, z            ; 55
1ADB: call $5492          ; 15 92 54
1ADE: mul y, z            ; 55
1ADF: or y, w             ; A9
1AE0: and x, a            ; 92
1AE1: mul y, y            ; 54
1AE2: mul y, z            ; 55
1AE3: sub a, x            ; 49
1AE4: and y, w            ; 95
1AE5: sub a, y            ; 4A
1AE6: nop                 ; 00
1AE7: nop                 ; 00
1AE8: nop                 ; 00
1AE9: nop                 ; 00
1AEA: nop                 ; 00
1AEB: nop                 ; 00
1AEC: nop                 ; 00
1AED: store $0480, y      ; 11 80 04
1AF0: inc w               ; 6A
1AF1: nop                 ; FB
1AF2: shr w               ; DD
1AF3: nop                 ; FA
1AF4: nop                 ; 00
1AF5: nop                 ; 00
1AF6: nop                 ; 00
1AF7: nop                 ; FC
1AF8: nop                 ; FF
1AF9: mul x, a            ; 52
1AFA: mul y, z            ; 55
1AFB: mul y, z            ; 55
1AFC: and y, w            ; 95
1AFD: or y, a             ; AA
1AFE: mul x, a            ; 52
1AFF: mul y, z            ; 55
1B00: sub a, x            ; 49
1B01: or x, w             ; A5
1B02: add y, w            ; 24
1B03: sub a, x            ; 49
1B04: sub a, x            ; 49
1B05: add y, a            ; 25
1B06: add z, w            ; 29
1B07: and y, w            ; 95
1B08: or y, a             ; AA
1B09: mul x, a            ; 52
1B0A: add z, w            ; 29
1B0B: mul y, z            ; 55
1B0C: mul x, a            ; 52
1B0D: mul y, z            ; 55
1B0E: push a              ; 05
1B0F: nop                 ; 00
1B10: sub z, y            ; 40
1B11: nop                 ; 00
1B12: nop                 ; 00
1B13: nop                 ; 00
1B14: nop                 ; 00
1B15: nop                 ; 00
1B16: pop z               ; 08
1B17: sub w, a            ; 48
1B18: or y, z             ; A8
1B19: dec w               ; 6F
1B1A: cmp x, a            ; 75
1B1B: jmp z, w            ; EB
1B1C: push z              ; 03
1B1D: nop                 ; 00
1B1E: nop                 ; 00
1B1F: nop                 ; FC
1B20: nop                 ; FF
1B21: or y, a             ; AA
1B22: and x, a            ; 92
1B23: or y, a             ; AA
1B24: mul y, y            ; 54
1B25: or x, w             ; A5
1B26: or y, a             ; AA
1B27: and x, a            ; 92
1B28: mul y, y            ; 54
1B29: mul x, a            ; 52
1B2A: mul y, z            ; 55
1B2B: mul y, z            ; 55
1B2C: add y, w            ; 24
1B2D: or y, w             ; A9
1B2E: or y, a             ; AA
1B2F: mul x, a            ; 52
1B30: or y, a             ; AA
1B31: sub a, y            ; 4A
1B32: mul y, z            ; 55
1B33: and y, w            ; 95
1B34: or y, a             ; AA
1B35: and y, z            ; 94
1B36: store $0000, z      ; 12 00 00
1B39: nop                 ; 00
1B3A: pop z               ; 08
1B3B: nop                 ; 00
1B3C: nop                 ; 00
1B3D: nop                 ; 00
1B3E: push x              ; 01
1B3F: nop                 ; 00
1B40: and a, y            ; A0
1B41: xor x, z            ; BE
1B42: shr a               ; DE
1B43: nop                 ; FE
1B44: push x              ; 01
1B45: nop                 ; 00
1B46: nop                 ; 00
1B47: nop                 ; FC
1B48: nop                 ; FF
1B49: or y, a             ; AA
1B4A: or y, a             ; AA
1B4B: mul y, y            ; 54
1B4C: mul y, z            ; 55
1B4D: mul y, z            ; 55
1B4E: add z, w            ; 29
1B4F: mul y, z            ; 55
1B50: and y, w            ; 95
1B51: sub a, y            ; 4A
1B52: sub a, y            ; 4A
1B53: sub a, x            ; 49
1B54: sub a, x            ; 49
1B55: sub a, y            ; 4A
1B56: sub a, y            ; 4A
1B57: mul y, z            ; 55
1B58: sub a, x            ; 49
1B59: add z, a            ; 2A
1B5A: or x, w             ; A5
1B5B: mul x, a            ; 52
1B5C: and y, w            ; 95
1B5D: or y, a             ; AA
1B5E: add y, w            ; 24
1B5F: nop                 ; 00
1B60: nop                 ; 00
1B61: nop                 ; 00
1B62: nop                 ; 00
1B63: nop                 ; 00
1B64: nop                 ; 00
1B65: pop z               ; 08
1B66: nop                 ; 00
1B67: push y              ; 02
1B68: nop                 ; 00
1B69: cmp y, y            ; 77
1B6A: not a               ; BB
1B6B: nop                 ; FB
1B6C: push z              ; 03
1B6D: nop                 ; 00
1B6E: nop                 ; 00
1B6F: nop                 ; FC
1B70: nop                 ; FF
1B71: mul y, y            ; 54
1B72: mul y, z            ; 55
1B73: mul y, z            ; 55
1B74: mul y, z            ; 55
1B75: and y, w            ; 95
1B76: sub a, y            ; 4A
1B77: and y, w            ; 95
1B78: mul x, a            ; 52
1B79: or y, a             ; AA
1B7A: mul x, a            ; 52
1B7B: or y, a             ; AA
1B7C: and x, a            ; 92
1B7D: add y, w            ; 24
1B7E: or y, w             ; A9
1B7F: and y, z            ; 94
1B80: or y, a             ; AA
1B81: or y, a             ; AA
1B82: mul y, y            ; 54
1B83: add z, a            ; 2A
1B84: or y, w             ; A9
1B85: mul x, a            ; 52
1B86: and y, w            ; 95
1B87: nop                 ; 00
1B88: nop                 ; 00
1B89: nop                 ; 00
1B8A: cmp w, x            ; 80
1B8B: nop                 ; 00
1B8C: nop                 ; 00
1B8D: nop                 ; 00
1B8E: add x, a            ; 20
1B8F: store $5D88, x      ; 10 88 5D
1B92: jmp $01BD, w        ; EF BD 01
1B95: nop                 ; 00
1B96: nop                 ; 00
1B97: nop                 ; FC
1B98: nop                 ; FF
1B99: sub a, y            ; 4A
1B9A: or y, a             ; AA
1B9B: or y, a             ; AA
1B9C: or y, a             ; AA
1B9D: inc w               ; 6A
1B9E: or y, a             ; AA
1B9F: mul x, a            ; 52
1BA0: sub a, x            ; 49
1BA1: sub a, x            ; 49
1BA2: or y, a             ; AA
1BA3: sub a, y            ; 4A
1BA4: sub a, y            ; 4A
1BA5: mul x, a            ; 52
1BA6: add y, a            ; 25
1BA7: or x, w             ; A5
1BA8: or y, a             ; AA
1BA9: mul x, a            ; 52
1BAA: and y, w            ; 95
1BAB: or y, a             ; AA
1BAC: sub a, y            ; 4A
1BAD: mul y, z            ; 55
1BAE: mul y, z            ; 55
1BAF: push x              ; 01
1BB0: nop                 ; 00
1BB1: nop                 ; 00
1BB2: nop                 ; 00
1BB3: push a              ; 05
1BB4: nop                 ; 00
1BB5: sub z, y            ; 40
1BB6: nop                 ; 00
1BB7: nop                 ; 00
1BB8: add x, a            ; 20
1BB9: not w               ; BA
1BBA: cmp z, z            ; 7D
1BBB: resume              ; F7 01
1BBD: nop                 ; 00
1BBE: nop                 ; 00
1BBF: nop                 ; FC
1BC0: nop                 ; FF
1BC1: mul y, z            ; 55
1BC2: or x, w             ; A5
1BC3: and x, a            ; 92
1BC4: or y, a             ; AA
1BC5: and y, z            ; 94
1BC6: or y, a             ; AA
1BC7: mul y, y            ; 54
1BC8: or y, a             ; AA
1BC9: or y, a             ; AA
1BCA: or x, z             ; A4
1BCB: mul y, y            ; 54
1BCC: and y, w            ; 95
1BCD: cmp a, w            ; 88
1BCE: mul y, y            ; 54
1BCF: mul y, z            ; 55
1BD0: and x, a            ; 92
1BD1: and y, z            ; 94
1BD2: mul x, a            ; 52
1BD3: sub a, x            ; 49
1BD4: mul y, z            ; 55
1BD5: sub a, y            ; 4A
1BD6: sub a, x            ; 49
1BD7: push y              ; 02
1BD8: nop                 ; 00
1BD9: nop                 ; 00
1BDA: sub z, y            ; 40
1BDB: push y              ; 02
1BDC: nop                 ; 00
1BDD: nop                 ; 00
1BDE: push y              ; 02
1BDF: nop                 ; 00
1BE0: or w, y             ; B0
1BE1: or z, a             ; AE
1BE2: not x               ; B7
1BE3: nop                 ; FB
1BE4: push x              ; 01
1BE5: nop                 ; 00
1BE6: nop                 ; 00
1BE7: nop                 ; FC
1BE8: nop                 ; FF
1BE9: or y, a             ; AA
1BEA: or y, a             ; AA
1BEB: or y, a             ; AA
1BEC: or x, z             ; A4
1BED: or y, a             ; AA
1BEE: and x, a            ; 92
1BEF: or y, a             ; AA
1BF0: sub a, y            ; 4A
1BF1: and x, a            ; 92
1BF2: add z, a            ; 2A
1BF3: or x, w             ; A5
1BF4: or x, z             ; A4
1BF5: mul x, a            ; 52
1BF6: and x, a            ; 92
1BF7: mul x, a            ; 52
1BF8: mul y, z            ; 55
1BF9: mul y, z            ; 55
1BFA: mul y, z            ; 55
1BFB: mul y, z            ; 55
1BFC: and x, a            ; 92
1BFD: mul x, a            ; 52
1BFE: or y, a             ; AA
1BFF: pop a               ; 0A
1C00: nop                 ; 00
1C01: sub z, y            ; 40
1C02: nop                 ; 00
1C03: push x              ; 01
1C04: nop                 ; 00
1C05: nop                 ; 00
1C06: pop z               ; 08
1C07: pop w               ; 09
1C08: sub w, x            ; 44
1C09: shr z               ; DC
1C0A: nop                 ; FE
1C0B: shr a               ; DE
1C0C: nop                 ; 00
1C0D: nop                 ; 00
1C0E: nop                 ; 00
1C0F: nop                 ; FC
1C10: nop                 ; FF
1C11: or y, w             ; A9
1C12: add z, a            ; 2A
1C13: mul y, z            ; 55
1C14: mul y, z            ; 55
1C15: mul y, z            ; 55
1C16: mul y, z            ; 55
1C17: or x, w             ; A5
1C18: mul y, y            ; 54
1C19: add z, w            ; 29
1C1A: sub a, x            ; 49
1C1B: add z, w            ; 29
1C1C: mul y, z            ; 55
1C1D: add y, a            ; 25
1C1E: or y, w             ; A9
1C1F: and y, z            ; 94
1C20: or y, a             ; AA
1C21: or y, a             ; AA
1C22: and y, z            ; 94
1C23: or y, a             ; AA
1C24: or y, a             ; AA
1C25: mul y, y            ; 54
1C26: mul y, z            ; 55
1C27: push a              ; 05
1C28: nop                 ; 00
1C29: nop                 ; 00
1C2A: nop                 ; 00
1C2B: push x              ; 01
1C2C: nop                 ; 00
1C2D: nop                 ; 00
1C2E: sub z, y            ; 40
1C2F: nop                 ; 00
1C30: sub z, y            ; 40
1C31: inc w               ; 6A
1C32: jmp z, w            ; EB
1C33: inc a               ; 6B
1C34: nop                 ; 00
1C35: nop                 ; 00
1C36: nop                 ; 00
1C37: nop                 ; FC
1C38: nop                 ; FF
1C39: add z, a            ; 2A
1C3A: or y, w             ; A9
1C3B: or y, a             ; AA
1C3C: or y, a             ; AA
1C3D: or y, a             ; AA
1C3E: or y, a             ; AA
1C3F: add z, a            ; 2A
1C40: add y, a            ; 25
1C41: or x, w             ; A5
1C42: or y, a             ; AA
1C43: or y, a             ; AA
1C44: add z, a            ; 2A
1C45: sub a, x            ; 49
1C46: and y, w            ; 95
1C47: or y, a             ; AA
1C48: add y, w            ; 24
1C49: or x, w             ; A5
1C4A: or y, a             ; AA
1C4B: or x, z             ; A4
1C4C: sub a, y            ; 4A
1C4D: mul y, z            ; 55
1C4E: and y, w            ; 95
1C4F: store $0000, a      ; 14 00 00
1C52: nop                 ; 00
1C53: nop                 ; 00
1C54: nop                 ; 00
1C55: nop                 ; 00
1C56: nop                 ; 00
1C57: nop                 ; 00
1C58: store $BFDC, x      ; 10 DC BF
1C5B: cmp z, w            ; 7E
1C5C: nop                 ; 00
1C5D: nop                 ; 00
1C5E: nop                 ; 00
1C5F: nop                 ; FC
1C60: nop                 ; FF
1C61: mul y, z            ; 55
1C62: mul y, z            ; 55
1C63: mul y, z            ; 55
1C64: and y, w            ; 95
1C65: mul x, a            ; 52
1C66: and y, w            ; 95
1C67: mul y, y            ; 54
1C68: mul y, z            ; 55
1C69: and y, w            ; 95
1C6A: add y, w            ; 24
1C6B: or x, w             ; A5
1C6C: or x, z             ; A4
1C6D: or y, a             ; AA
1C6E: mul x, a            ; 52
1C6F: mul x, a            ; 52
1C70: mul y, z            ; 55
1C71: add z, w            ; 29
1C72: or x, w             ; A5
1C73: add z, a            ; 2A
1C74: add z, w            ; 29
1C75: sub a, x            ; 49
1C76: mul x, a            ; 52
1C77: mul y, z            ; 55
1C78: nop                 ; 00
1C79: nop                 ; 00
1C7A: nop                 ; 00
1C7B: nop                 ; 00
1C7C: nop                 ; 00
1C7D: nop                 ; 00
1C7E: nop                 ; 00
1C7F: push y              ; 02
1C80: nop                 ; 00
1C81: ror x               ; E4
1C82: int $2B             ; F6 2B
1C84: nop                 ; 00
1C85: nop                 ; 00
1C86: nop                 ; 00
1C87: nop                 ; FC
1C88: nop                 ; FF
1C89: or x, w             ; A5
1C8A: or y, a             ; AA
1C8B: or y, a             ; AA
1C8C: or y, a             ; AA
1C8D: or y, a             ; AA
1C8E: mul x, a            ; 52
1C8F: or x, w             ; A5
1C90: mul x, a            ; 52
1C91: mul x, a            ; 52
1C92: mul y, z            ; 55
1C93: add z, w            ; 29
1C94: and y, w            ; 95
1C95: mul y, y            ; 54
1C96: or y, a             ; AA
1C97: add z, a            ; 2A
1C98: sub a, x            ; 49
1C99: mul y, z            ; 55
1C9A: or y, w             ; A9
1C9B: or y, a             ; AA
1C9C: or y, a             ; AA
1C9D: or y, a             ; AA
1C9E: or y, a             ; AA
1C9F: or y, a             ; AA
1CA0: nop                 ; 00
1CA1: nop                 ; 00
1CA2: nop                 ; 00
1CA3: nop                 ; 00
1CA4: nop                 ; 00
1CA5: nop                 ; 00
1CA6: add y, y            ; 22
1CA7: add x, a            ; 20
1CA8: nop                 ; 00
1CA9: or a, y             ; B4
1CAA: or w, x             ; AF
1CAB: sub y, a            ; 3E
1CAC: nop                 ; 00
1CAD: nop                 ; 00
1CAE: nop                 ; 00
1CAF: nop                 ; FC
1CB0: nop                 ; FF
1CB1: mul y, z            ; 55
1CB2: mul y, z            ; 55
1CB3: mul y, z            ; 55
1CB4: mul y, z            ; 55
1CB5: mul y, z            ; 55
1CB6: or y, a             ; AA
1CB7: add z, a            ; 2A
1CB8: and y, w            ; 95
1CB9: add z, a            ; 2A
1CBA: sub a, x            ; 49
1CBB: sub a, y            ; 4A
1CBC: or y, w             ; A9
1CBD: and x, a            ; 92
1CBE: sub a, y            ; 4A
1CBF: sub a, x            ; 49
1CC0: mul y, z            ; 55
1CC1: or y, a             ; AA
1CC2: sub a, y            ; 4A
1CC3: mul x, a            ; 52
1CC4: mul y, z            ; 55
1CC5: and y, w            ; 95
1CC6: or y, a             ; AA
1CC7: and x, a            ; 92
1CC8: push y              ; 02
1CC9: nop                 ; 00
1CCA: nop                 ; 00
1CCB: nop                 ; 00
1CCC: push y              ; 02
1CCD: nop                 ; 00
1CCE: nop                 ; 00
1CCF: push w              ; 04
1CD0: nop                 ; 00
1CD1: nop                 ; F8
1CD2: nop                 ; FA
1CD3: set a, $00          ; 1B 00
1CD5: nop                 ; 00
1CD6: nop                 ; 00
1CD7: nop                 ; FC
1CD8: nop                 ; FF
1CD9: and y, z            ; 94
1CDA: and y, z            ; 94
1CDB: or y, a             ; AA
1CDC: or y, a             ; AA
1CDD: or y, a             ; AA
1CDE: add z, a            ; 2A
1CDF: or y, w             ; A9
1CE0: mul y, y            ; 54
1CE1: or x, w             ; A5
1CE2: or y, a             ; AA
1CE3: or y, a             ; AA
1CE4: sub a, y            ; 4A
1CE5: or y, a             ; AA
1CE6: mul x, a            ; 52
1CE7: or y, a             ; AA
1CE8: or x, z             ; A4
1CE9: sub a, y            ; 4A
1CEA: or y, a             ; AA
1CEB: add z, a            ; 2A
1CEC: sub a, x            ; 49
1CED: mul x, a            ; 52
1CEE: sub a, x            ; 49
1CEF: or y, a             ; AA
1CF0: pop a               ; 0A
1CF1: nop                 ; 00
1CF2: nop                 ; 00
1CF3: nop                 ; 00
1CF4: nop                 ; 00
1CF5: nop                 ; 00
1CF6: cmp w, x            ; 80
1CF7: nop                 ; 00
1CF8: nop                 ; 00
1CF9: or y, z             ; A8
1CFA: rol x               ; DF
1CFB: return              ; 16
1CFC: nop                 ; 00
1CFD: nop                 ; 00
1CFE: nop                 ; 00
1CFF: nop                 ; FC
1D00: nop                 ; FF
1D01: or y, a             ; AA
1D02: or y, a             ; AA
1D03: and x, a            ; 92
1D04: mul x, a            ; 52
1D05: sub a, y            ; 4A
1D06: mul y, z            ; 55
1D07: mul y, z            ; 55
1D08: or x, w             ; A5
1D09: and y, z            ; 94
1D0A: add y, w            ; 24
1D0B: add z, w            ; 29
1D0C: mul y, z            ; 55
1D0D: add y, a            ; 25
1D0E: sub a, x            ; 49
1D0F: add y, a            ; 25
1D10: and y, w            ; 95
1D11: mul y, y            ; 54
1D12: or y, w             ; A9
1D13: sub a, y            ; 4A
1D14: mul y, z            ; 55
1D15: and y, w            ; 95
1D16: or y, a             ; AA
1D17: or y, a             ; AA
1D18: store $0000, a      ; 14 00 00
1D1B: nop                 ; 00
1D1C: nop                 ; 00
1D1D: nop                 ; 00
1D1E: store $0048, x      ; 10 48 00
1D21: nop                 ; FC
1D22: cmp y, x            ; 76
1D23: load a, $0000       ; 0F 00 00
1D26: nop                 ; 00
1D27: nop                 ; FC
1D28: nop                 ; FF
1D29: mul x, a            ; 52
1D2A: mul y, z            ; 55
1D2B: mul y, z            ; 55
1D2C: or y, a             ; AA
1D2D: or y, a             ; AA
1D2E: sub a, y            ; 4A
1D2F: and y, w            ; 95
1D30: or y, a             ; AA
1D31: mul x, a            ; 52
1D32: mul y, z            ; 55
1D33: or x, w             ; A5
1D34: add y, w            ; 24
1D35: or y, w             ; A9
1D36: add z, a            ; 2A
1D37: or y, w             ; A9
1D38: mul x, a            ; 52
1D39: add y, a            ; 25
1D3A: and y, w            ; 95
1D3B: mul y, y            ; 54
1D3C: mul y, z            ; 55
1D3D: or y, w             ; A9
1D3E: or x, z             ; A4
1D3F: sub a, y            ; 4A
1D40: mul y, z            ; 55
1D41: nop                 ; 00
1D42: nop                 ; 00
1D43: nop                 ; 00
1D44: nop                 ; 00
1D45: nop                 ; 00
1D46: nop                 ; 00
1D47: push x              ; 01
1D48: nop                 ; 00
1D49: xor a, x            ; D0
1D4A: shr w               ; DD
1D4B: push a              ; 05
1D4C: nop                 ; 00
1D4D: nop                 ; 00
1D4E: nop                 ; 00
1D4F: nop                 ; FC
1D50: nop                 ; FF
1D51: mul y, z            ; 55
1D52: mul y, z            ; 55
1D53: mul y, z            ; 55
1D54: mul y, z            ; 55
1D55: mul y, z            ; 55
1D56: or y, w             ; A9
1D57: or x, z             ; A4
1D58: and y, z            ; 94
1D59: add z, a            ; 2A
1D5A: sub a, x            ; 49
1D5B: or y, a             ; AA
1D5C: or y, a             ; AA
1D5D: sub a, y            ; 4A
1D5E: or y, a             ; AA
1D5F: sub a, y            ; 4A
1D60: add z, a            ; 2A
1D61: and y, w            ; 95
1D62: mul x, a            ; 52
1D63: mul y, z            ; 55
1D64: mul x, a            ; 52
1D65: add y, a            ; 25
1D66: and y, w            ; 95
1D67: mul y, y            ; 54
1D68: or x, w             ; A5
1D69: nop                 ; 00
1D6A: nop                 ; 00
1D6B: nop                 ; 00
1D6C: nop                 ; 00
1D6D: nop                 ; 00
1D6E: nop                 ; 00
1D6F: nop                 ; 00
1D70: push x              ; 01
1D71: dec x               ; 6C
1D72: cmp y, y            ; 77
1D73: pop y               ; 07
1D74: nop                 ; 00
1D75: nop                 ; 00
1D76: nop                 ; 00
1D77: nop                 ; FC
1D78: nop                 ; FF
1D79: mul y, z            ; 55
1D7A: or y, a             ; AA
1D7B: mul y, y            ; 54
1D7C: mul y, z            ; 55
1D7D: or y, w             ; A9
1D7E: or y, a             ; AA
1D7F: or y, a             ; AA
1D80: mul x, a            ; 52
1D81: sub a, y            ; 4A
1D82: mul y, z            ; 55
1D83: sub a, x            ; 49
1D84: mul x, a            ; 52
1D85: or y, a             ; AA
1D86: and x, a            ; 92
1D87: mul y, y            ; 54
1D88: sub a, x            ; 49
1D89: or y, w             ; A9
1D8A: sub a, y            ; 4A
1D8B: or x, w             ; A5
1D8C: sub a, y            ; 4A
1D8D: or y, a             ; AA
1D8E: mul x, a            ; 52
1D8F: mul y, z            ; 55
1D90: or y, w             ; A9
1D91: push y              ; 02
1D92: nop                 ; 00
1D93: nop                 ; 00
1D94: nop                 ; 00
1D95: nop                 ; 00
1D96: sub z, y            ; 40
1D97: add y, w            ; 24
1D98: nop                 ; 00
1D99: xor a, x            ; D0
1D9A: shr a               ; DE
1D9B: push z              ; 03
1D9C: nop                 ; 00
1D9D: nop                 ; 00
1D9E: nop                 ; 00
1D9F: nop                 ; FC
1DA0: nop                 ; FF
1DA1: and y, w            ; 95
1DA2: mul x, a            ; 52
1DA3: mul y, z            ; 55
1DA4: or x, w             ; A5
1DA5: or y, a             ; AA
1DA6: or y, a             ; AA
1DA7: or y, a             ; AA
1DA8: or y, a             ; AA
1DA9: mul x, a            ; 52
1DAA: and x, a            ; 92
1DAB: or y, a             ; AA
1DAC: sub a, y            ; 4A
1DAD: add z, w            ; 29
1DAE: mul y, z            ; 55
1DAF: or x, w             ; A5
1DB0: or y, a             ; AA
1DB1: add z, a            ; 2A
1DB2: mul y, z            ; 55
1DB3: or y, a             ; AA
1DB4: or y, a             ; AA
1DB5: or y, a             ; AA
1DB6: and y, z            ; 94
1DB7: add y, w            ; 24
1DB8: and y, w            ; 95
1DB9: pop a               ; 0A
1DBA: nop                 ; 00
1DBB: nop                 ; 00
1DBC: nop                 ; 00
1DBD: nop                 ; 00
1DBE: nop                 ; 00
1DBF: nop                 ; 00
1DC0: push w              ; 04
1DC1: xor a, a            ; D4
1DC2: cmp z, x            ; 7B
1DC3: push x              ; 01
1DC4: nop                 ; 00
1DC5: nop                 ; 00
1DC6: nop                 ; 00
1DC7: nop                 ; FC
1DC8: nop                 ; FF
1DC9: or x, z             ; A4
1DCA: add z, a            ; 2A
1DCB: add y, a            ; 25
1DCC: mul y, z            ; 55
1DCD: add z, a            ; 2A
1DCE: mul y, z            ; 55
1DCF: and y, w            ; 95
1DD0: and y, z            ; 94
1DD1: or y, a             ; AA
1DD2: or y, a             ; AA
1DD3: add y, w            ; 24
1DD4: or y, w             ; A9
1DD5: sub a, y            ; 4A
1DD6: sub a, x            ; 49
1DD7: mul x, a            ; 52
1DD8: mul x, a            ; 52
1DD9: sub a, y            ; 4A
1DDA: or y, w             ; A9
1DDB: and x, a            ; 92
1DDC: mul y, y            ; 54
1DDD: and y, w            ; 95
1DDE: mul x, a            ; 52
1DDF: mul y, z            ; 55
1DE0: mul y, z            ; 55
1DE1: call $0000          ; 15 00 00
1DE4: nop                 ; 00
1DE5: nop                 ; 00
1DE6: nop                 ; 00
1DE7: store $D400, y      ; 11 00 D4
1DEA: shl y               ; D6
1DEB: push x              ; 01
1DEC: nop                 ; 00
1DED: nop                 ; 00
1DEE: nop                 ; 00
1DEF: nop                 ; FC
1DF0: nop                 ; FF
1DF1: mul y, z            ; 55
1DF2: or x, w             ; A5
1DF3: or y, a             ; AA
1DF4: or y, a             ; AA
1DF5: or y, a             ; AA
1DF6: sub a, y            ; 4A
1DF7: or y, w             ; A9
1DF8: mul x, a            ; 52
1DF9: sub a, y            ; 4A
1DFA: add y, a            ; 25
1DFB: mul y, z            ; 55
1DFC: and y, w            ; 95
1DFD: mul x, a            ; 52
1DFE: or y, a             ; AA
1DFF: sub a, y            ; 4A
1E00: and y, w            ; 95
1E01: mul x, a            ; 52
1E02: sub a, y            ; 4A
1E03: mul y, z            ; 55
1E04: add y, a            ; 25
1E05: or y, w             ; A9
1E06: sub a, y            ; 4A
1E07: mul x, a            ; 52
1E08: add y, a            ; 25
1E09: add z, w            ; 29
1E0A: nop                 ; 00
1E0B: nop                 ; 00
1E0C: nop                 ; 00
1E0D: nop                 ; 00
1E0E: nop                 ; 00
1E0F: cmp w, x            ; 80
1E10: nop                 ; 00
1E11: mul a, z            ; 64
1E12: cmp z, a            ; 7F
1E13: push x              ; 01
1E14: nop                 ; 00
1E15: nop                 ; 00
1E16: nop                 ; 00
1E17: nop                 ; FC
1E18: nop                 ; FF
1E19: or y, a             ; AA
1E1A: mul y, y            ; 54
1E1B: mul y, z            ; 55
1E1C: sub a, x            ; 49
1E1D: mul y, z            ; 55
1E1E: mul y, z            ; 55
1E1F: mul y, z            ; 55
1E20: mul y, z            ; 55
1E21: add z, w            ; 29
1E22: or y, w             ; A9
1E23: and x, a            ; 92
1E24: mul y, y            ; 54
1E25: or y, a             ; AA
1E26: add z, a            ; 2A
1E27: or y, w             ; A9
1E28: or x, z             ; A4
1E29: or y, a             ; AA
1E2A: or y, a             ; AA
1E2B: mul y, y            ; 54
1E2C: mul y, z            ; 55
1E2D: or x, w             ; A5
1E2E: mul y, y            ; 54
1E2F: and y, w            ; 95
1E30: mul y, y            ; 54
1E31: mul y, z            ; 55
1E32: push x              ; 01
1E33: nop                 ; 00
1E34: nop                 ; 00
1E35: nop                 ; 00
1E36: nop                 ; 00
1E37: push w              ; 04
1E38: store $D5DC, x      ; 10 DC D5
1E3B: nop                 ; 00
1E3C: nop                 ; 00
1E3D: nop                 ; 00
1E3E: nop                 ; 00
1E3F: nop                 ; FC
1E40: nop                 ; FF
1E41: or x, w             ; A5
1E42: add z, a            ; 2A
1E43: or y, w             ; A9
1E44: or y, a             ; AA
1E45: mul x, a            ; 52
1E46: add z, w            ; 29
1E47: or x, w             ; A5
1E48: or y, a             ; AA
1E49: or y, a             ; AA
1E4A: or y, a             ; AA
1E4B: mul y, y            ; 54
1E4C: or x, w             ; A5
1E4D: sub a, y            ; 4A
1E4E: sub a, x            ; 49
1E4F: and y, w            ; 95
1E50: add z, a            ; 2A
1E51: sub a, x            ; 49
1E52: add z, w            ; 29
1E53: mul y, z            ; 55
1E54: mul y, z            ; 55
1E55: mul y, z            ; 55
1E56: add y, a            ; 25
1E57: or y, w             ; A9
1E58: or y, a             ; AA
1E59: mul x, a            ; 52
1E5A: push x              ; 01
1E5B: store $0000, x      ; 10 00 00
1E5E: store $0220, x      ; 10 20 02
1E61: cmp x, w            ; 74
1E62: cmp z, a            ; 7F
1E63: nop                 ; 00
1E64: nop                 ; 00
1E65: nop                 ; 00
1E66: nop                 ; 00
1E67: nop                 ; FC
1E68: nop                 ; FF
1E69: and y, w            ; 95
1E6A: or y, a             ; AA
1E6B: add z, a            ; 2A
1E6C: mul y, z            ; 55
1E6D: add z, a            ; 2A
1E6E: mul y, z            ; 55
1E6F: mul y, z            ; 55
1E70: sub a, y            ; 4A
1E71: or x, w             ; A5
1E72: and y, z            ; 94
1E73: sub a, y            ; 4A
1E74: and y, w            ; 95
1E75: mul x, a            ; 52
1E76: or y, a             ; AA
1E77: mul y, y            ; 54
1E78: or y, a             ; AA
1E79: add z, a            ; 2A
1E7A: or x, w             ; A5
1E7B: sub a, y            ; 4A
1E7C: mul x, a            ; 52
1E7D: add z, a            ; 2A
1E7E: mul y, z            ; 55
1E7F: sub a, y            ; 4A
1E80: and x, a            ; 92
1E81: and y, z            ; 94
1E82: pop a               ; 0A
1E83: nop                 ; 00
1E84: nop                 ; 00
1E85: nop                 ; 00
1E86: sub z, y            ; 40
1E87: nop                 ; 00
1E88: nop                 ; 00
1E89: nop                 ; F8
1E8A: mul y, w            ; 56
1E8B: nop                 ; 00
1E8C: nop                 ; 00
1E8D: nop                 ; 00
1E8E: nop                 ; 00
1E8F: nop                 ; FC
1E90: nop                 ; FF
1E91: mul y, y            ; 54
1E92: sub a, x            ; 49
1E93: or x, w             ; A5
1E94: or y, a             ; AA
1E95: sub a, y            ; 4A
1E96: or x, w             ; A5
1E97: and y, z            ; 94
1E98: mul x, a            ; 52
1E99: or y, a             ; AA
1E9A: mul x, a            ; 52
1E9B: add z, w            ; 29
1E9C: or y, w             ; A9
1E9D: and y, z            ; 94
1E9E: and x, a            ; 92
1E9F: mul x, a            ; 52
1EA0: sub a, x            ; 49
1EA1: mul x, a            ; 52
1EA2: mul y, z            ; 55
1EA3: mul x, a            ; 52
1EA4: mul y, z            ; 55
1EA5: or y, w             ; A9
1EA6: sub a, y            ; 4A
1EA7: or y, w             ; A9
1EA8: or y, a             ; AA
1EA9: or y, a             ; AA
1EAA: pop a               ; 0A
1EAB: cmp w, z            ; 82
1EAC: nop                 ; 00
1EAD: nop                 ; 00
1EAE: nop                 ; 00
1EAF: cmp w, y            ; 81
1EB0: add x, a            ; 20
1EB1: or y, z             ; A8
1EB2: sub y, y            ; 3B
1EB3: nop                 ; 00
1EB4: nop                 ; 00
1EB5: nop                 ; 00
1EB6: nop                 ; 00
1EB7: nop                 ; FC
1EB8: nop                 ; FF
1EB9: or y, a             ; AA
1EBA: or y, a             ; AA
1EBB: mul y, y            ; 54
1EBC: sub a, x            ; 49
1EBD: or y, w             ; A9
1EBE: or y, a             ; AA
1EBF: mul x, a            ; 52
1EC0: mul y, z            ; 55
1EC1: and y, w            ; 95
1EC2: sub a, y            ; 4A
1EC3: or y, a             ; AA
1EC4: sub a, y            ; 4A
1EC5: mul y, z            ; 55
1EC6: mul y, z            ; 55
1EC7: and y, w            ; 95
1EC8: or y, a             ; AA
1EC9: sub a, y            ; 4A
1ECA: and x, a            ; 92
1ECB: or y, a             ; AA
1ECC: sub a, y            ; 4A
1ECD: and y, w            ; 95
1ECE: mul x, a            ; 52
1ECF: add y, a            ; 25
1ED0: or y, w             ; A9
1ED1: sub a, y            ; 4A
1ED2: or w, a             ; B2
1ED3: call $0002          ; 15 02 00
1ED6: mul y, y            ; 54
1ED7: push w              ; 04
1ED8: push w              ; 04
1ED9: rol y               ; E0
1EDA: add x, z            ; 1E
1EDB: nop                 ; 00
1EDC: nop                 ; 00
1EDD: nop                 ; 00
1EDE: nop                 ; 00
1EDF: nop                 ; FC
1EE0: nop                 ; FF
1EE1: or y, a             ; AA
1EE2: add z, a            ; 2A
1EE3: mul y, z            ; 55
1EE4: or y, a             ; AA
1EE5: or y, a             ; AA
1EE6: and y, z            ; 94
1EE7: add z, a            ; 2A
1EE8: and y, w            ; 95
1EE9: mul x, a            ; 52
1EEA: mul y, z            ; 55
1EEB: or x, w             ; A5
1EEC: mul x, a            ; 52
1EED: mul x, a            ; 52
1EEE: add z, a            ; 2A
1EEF: or x, w             ; A5
1EF0: and x, a            ; 92
1EF1: mul y, y            ; 54
1EF2: mul y, z            ; 55
1EF3: add y, a            ; 25
1EF4: mul y, z            ; 55
1EF5: or x, w             ; A5
1EF6: and y, z            ; 94
1EF7: and y, z            ; 94
1EF8: sub a, y            ; 4A
1EF9: mul x, a            ; 52
1EFA: mul y, z            ; 55
1EFB: add z, a            ; 2A
1EFC: store $2000, x      ; 10 00 20
1EFF: push x              ; 01
1F00: nop                 ; 00
1F01: xor x, a            ; C0
1F02: load x, $0000       ; 0B 00 00
1F05: nop                 ; 00
1F06: nop                 ; 00
1F07: nop                 ; FC
1F08: nop                 ; FF
1F09: mul y, z            ; 55
1F0A: mul y, z            ; 55
1F0B: and y, w            ; 95
1F0C: add z, a            ; 2A
1F0D: and y, w            ; 95
1F0E: mul x, a            ; 52
1F0F: or y, w             ; A9
1F10: mul x, a            ; 52
1F11: mul y, z            ; 55
1F12: add z, w            ; 29
1F13: mul y, z            ; 55
1F14: or y, a             ; AA
1F15: sub a, y            ; 4A
1F16: or x, w             ; A5
1F17: mul y, y            ; 54
1F18: or y, a             ; AA
1F19: add z, a            ; 2A
1F1A: mul y, z            ; 55
1F1B: or y, w             ; A9
1F1C: mul x, a            ; 52
1F1D: or y, a             ; AA
1F1E: or y, a             ; AA
1F1F: mul x, a            ; 52
1F20: or y, w             ; A9
1F21: add z, a            ; 2A
1F22: sub a, x            ; 49
1F23: or y, w             ; A9
1F24: nop                 ; 00
1F25: nop                 ; 00
1F26: jmp x, y            ; EA
1F27: push y              ; 02
1F28: push x              ; 01
1F29: cmp w, y            ; 81
1F2A: add x, z            ; 1E
1F2B: nop                 ; 00
1F2C: nop                 ; 00
1F2D: nop                 ; 00
1F2E: nop                 ; 00
1F2F: nop                 ; FC
1F30: nop                 ; FF
1F31: mul y, z            ; 55
1F32: or x, w             ; A5
1F33: mul x, a            ; 52
1F34: or x, w             ; A5
1F35: or x, z             ; A4
1F36: add z, a            ; 2A
1F37: or x, w             ; A5
1F38: mul y, y            ; 54
1F39: sub a, y            ; 4A
1F3A: or y, a             ; AA
1F3B: or x, z             ; A4
1F3C: sub a, y            ; 4A
1F3D: mul y, z            ; 55
1F3E: or y, w             ; A9
1F3F: sub a, y            ; 4A
1F40: add y, a            ; 25
1F41: sub a, x            ; 49
1F42: sub a, x            ; 49
1F43: or y, a             ; AA
1F44: mul y, y            ; 54
1F45: mul y, z            ; 55
1F46: mul y, z            ; 55
1F47: and y, w            ; 95
1F48: and y, z            ; 94
1F49: or y, a             ; AA
1F4A: add z, a            ; 2A
1F4B: or x, w             ; A5
1F4C: sub z, w            ; 42
1F4D: nop                 ; 00
1F4E: cmp y, z            ; 78
1F4F: push x              ; 01
1F50: sub w, a            ; 48
1F51: nop                 ; 00
1F52: load x, $0000       ; 0B 00 00
1F55: nop                 ; 00
1F56: nop                 ; 00
1F57: nop                 ; FC
1F58: nop                 ; FF
1F59: or x, z             ; A4
1F5A: or y, a             ; AA
1F5B: mul y, y            ; 54
1F5C: or y, w             ; A9
1F5D: or y, a             ; AA
1F5E: or x, z             ; A4
1F5F: add z, a            ; 2A
1F60: and y, w            ; 95
1F61: mul x, a            ; 52
1F62: and y, w            ; 95
1F63: add z, a            ; 2A
1F64: or y, w             ; A9
1F65: add y, w            ; 24
1F66: mul y, z            ; 55
1F67: mul x, a            ; 52
1F68: or y, w             ; A9
1F69: or y, a             ; AA
1F6A: or y, a             ; AA
1F6B: sub a, y            ; 4A
1F6C: and y, w            ; 95
1F6D: sub a, y            ; 4A
1F6E: and x, a            ; 92
1F6F: mul y, y            ; 54
1F70: sub a, y            ; 4A
1F71: sub a, x            ; 49
1F72: or x, w             ; A5
1F73: and y, z            ; 94
1F74: push w              ; 04
1F75: push y              ; 02
1F76: jmp.lt $000A        ; F4 0A 00
1F79: nop                 ; 00
1F7A: pop x               ; 06
1F7B: nop                 ; 00
1F7C: nop                 ; 00
1F7D: nop                 ; 00
1F7E: nop                 ; 00
1F7F: nop                 ; FC
1F80: nop                 ; FF
1F81: mul y, z            ; 55
1F82: or y, a             ; AA
1F83: sub a, y            ; 4A
1F84: and y, w            ; 95
1F85: and x, a            ; 92
1F86: add z, a            ; 2A
1F87: sub a, x            ; 49
1F88: sub a, x            ; 49
1F89: or y, w             ; A9
1F8A: or x, z             ; A4
1F8B: sub a, y            ; 4A
1F8C: and y, w            ; 95
1F8D: or y, a             ; AA
1F8E: and x, a            ; 92
1F8F: add z, a            ; 2A
1F90: mul y, z            ; 55
1F91: and x, a            ; 92
1F92: and y, z            ; 94
1F93: or y, a             ; AA
1F94: or y, a             ; AA
1F95: mul y, y            ; 54
1F96: mul y, z            ; 55
1F97: or x, w             ; A5
1F98: mul x, a            ; 52
1F99: add z, a            ; 2A
1F9A: or y, w             ; A9
1F9B: or y, a             ; AA
1F9C: pop a               ; 0A
1F9D: pop z               ; 08
1F9E: nop                 ; F9
1F9F: push x              ; 01
1FA0: nop                 ; 00
1FA1: pop z               ; 08
1FA2: push w              ; 04
1FA3: nop                 ; 00
1FA4: nop                 ; 00
1FA5: nop                 ; 00
1FA6: nop                 ; 00
1FA7: nop                 ; FC
1FA8: nop                 ; FF
1FA9: or y, a             ; AA
1FAA: add z, a            ; 2A
1FAB: mul y, z            ; 55
1FAC: or y, a             ; AA
1FAD: mul y, y            ; 54
1FAE: or y, a             ; AA
1FAF: or y, a             ; AA
1FB0: mul x, a            ; 52
1FB1: add z, a            ; 2A
1FB2: mul y, z            ; 55
1FB3: or y, w             ; A9
1FB4: or x, z             ; A4
1FB5: and x, a            ; 92
1FB6: or y, a             ; AA
1FB7: or y, a             ; AA
1FB8: sub a, y            ; 4A
1FB9: mul y, z            ; 55
1FBA: or x, w             ; A5
1FBB: or x, z             ; A4
1FBC: or x, z             ; A4
1FBD: or y, a             ; AA
1FBE: or y, a             ; AA
1FBF: or y, a             ; AA
1FC0: add y, w            ; 24
1FC1: or x, w             ; A5
1FC2: add z, a            ; 2A
1FC3: add y, a            ; 25
1FC4: mul y, z            ; 55
1FC5: add x, a            ; 20
1FC6: xor x, a            ; C0
1FC7: push a              ; 05
1FC8: and x, z            ; 90
1FC9: nop                 ; 00
1FCA: nop                 ; 00
1FCB: nop                 ; 00
1FCC: nop                 ; 00
1FCD: nop                 ; 00
1FCE: nop                 ; 00
1FCF: nop                 ; FC
1FD0: nop                 ; FF
1FD1: and x, a            ; 92
1FD2: mul x, a            ; 52
1FD3: mul y, z            ; 55
1FD4: add z, w            ; 29
1FD5: or x, w             ; A5
1FD6: mul x, a            ; 52
1FD7: and x, a            ; 92
1FD8: and y, z            ; 94
1FD9: and x, a            ; 92
1FDA: add z, a            ; 2A
1FDB: mul y, z            ; 55
1FDC: mul y, z            ; 55
1FDD: or y, a             ; AA
1FDE: add y, w            ; 24
1FDF: sub a, x            ; 49
1FE0: mul x, a            ; 52
1FE1: add y, a            ; 25
1FE2: mul y, z            ; 55
1FE3: and y, w            ; 95
1FE4: or y, a             ; AA
1FE5: and x, a            ; 92
1FE6: add y, w            ; 24
1FE7: and y, w            ; 95
1FE8: sub a, y            ; 4A
1FE9: or y, w             ; A9
1FEA: mul x, a            ; 52
1FEB: or y, a             ; AA
1FEC: mul y, y            ; 54
1FED: sub w, a            ; 48
1FEE: mul y, y            ; 54
1FEF: push x              ; 01
1FF0: nop                 ; 00
1FF1: nop                 ; 00
1FF2: nop                 ; 00
1FF3: nop                 ; 00
1FF4: nop                 ; 00
1FF5: nop                 ; 00
1FF6: nop                 ; 00
1FF7: nop                 ; FC
1FF8: nop                 ; FF
1FF9: or y, a             ; AA
1FFA: and y, z            ; 94
1FFB: and x, a            ; 92
1FFC: sub a, y            ; 4A
1FFD: and y, w            ; 95
1FFE: sub a, y            ; 4A
1FFF: mul y, z            ; 55
2000: or y, a             ; AA
2001: or x, z             ; A4
2002: or x, z             ; A4
2003: sub a, y            ; 4A
2004: mul x, a            ; 52
2005: or y, w             ; A9
2006: or y, a             ; AA
2007: or y, a             ; AA
2008: or y, a             ; AA
2009: mul y, y            ; 54
200A: add z, w            ; 29
200B: mul y, z            ; 55
200C: add z, a            ; 2A
200D: mul y, z            ; 55
200E: mul y, z            ; 55
200F: or y, w             ; A9
2010: add z, a            ; 2A
2011: and y, w            ; 95
2012: and y, z            ; 94
2013: and x, a            ; 92
2014: mul x, a            ; 52
2015: or x, y             ; A3
2016: store $0002, y      ; 11 02 00
2019: push y              ; 02
201A: nop                 ; 00
201B: nop                 ; 00
201C: nop                 ; 00
201D: nop                 ; 00
201E: nop                 ; 00
201F: nop                 ; FC
2020: nop                 ; FF
2021: mul y, z            ; 55
2022: mul y, z            ; 55
2023: or y, a             ; AA
2024: or y, a             ; AA
2025: mul y, y            ; 54
2026: or y, a             ; AA
2027: or x, z             ; A4
2028: and x, a            ; 92
2029: add z, a            ; 2A
202A: mul y, z            ; 55
202B: mul x, a            ; 52
202C: and y, w            ; 95
202D: sub a, y            ; 4A
202E: or y, a             ; AA
202F: mul x, a            ; 52
2030: add y, a            ; 25
2031: mul y, z            ; 55
2032: mul y, z            ; 55
2033: or y, w             ; A9
2034: mul x, a            ; 52
2035: mul y, z            ; 55
2036: mul y, z            ; 55
2037: mul y, z            ; 55
2038: mul x, a            ; 52
2039: mul y, z            ; 55
203A: mul y, z            ; 55
203B: mul y, z            ; 55
203C: and y, w            ; 95
203D: cmp w, a            ; 84
203E: cmp w, x            ; 80
203F: nop                 ; 00
2040: sub z, y            ; 40
2041: nop                 ; 00
2042: nop                 ; 00
2043: nop                 ; 00
2044: nop                 ; 00
2045: nop                 ; 00
2046: nop                 ; 00
2047: nop                 ; FC
2048: nop                 ; FF
2049: sub a, y            ; 4A
204A: sub a, y            ; 4A
204B: sub a, x            ; 49
204C: or y, w             ; A9
204D: or y, a             ; AA
204E: or y, a             ; AA
204F: add z, a            ; 2A
2050: mul y, z            ; 55
2051: and x, a            ; 92
2052: and x, a            ; 92
2053: add z, a            ; 2A
2054: mul y, z            ; 55
2055: mul y, z            ; 55
2056: sub a, x            ; 49
2057: add z, a            ; 2A
2058: or y, w             ; A9
2059: and x, a            ; 92
205A: and y, z            ; 94
205B: sub a, y            ; 4A
205C: mul y, z            ; 55
205D: add z, w            ; 29
205E: add y, a            ; 25
205F: or x, w             ; A5
2060: or y, a             ; AA
2061: or x, z             ; A4
2062: sub a, y            ; 4A
2063: sub a, x            ; 49
2064: mul x, a            ; 52
2065: call $000B          ; 15 0B 00
2068: nop                 ; 00
2069: nop                 ; 00
206A: nop                 ; 00
206B: nop                 ; 00
206C: nop                 ; 00
206D: nop                 ; 00
206E: nop                 ; 00
206F: nop                 ; FC
2070: nop                 ; FF
2071: or y, a             ; AA
2072: mul x, a            ; 52
2073: mul y, z            ; 55
2074: sub a, y            ; 4A
2075: or y, w             ; A9
2076: and x, a            ; 92
2077: or y, a             ; AA
2078: or x, z             ; A4
2079: or y, a             ; AA
207A: mul y, y            ; 54
207B: mul y, z            ; 55
207C: sub a, x            ; 49
207D: or y, a             ; AA
207E: or y, a             ; AA
207F: sub a, y            ; 4A
2080: mul y, z            ; 55
2081: mul y, z            ; 55
2082: or x, w             ; A5
2083: mul x, a            ; 52
2084: or x, w             ; A5
2085: or y, a             ; AA
2086: mul y, y            ; 54
2087: mul y, z            ; 55
2088: and y, w            ; 95
2089: add z, a            ; 2A
208A: add z, w            ; 29
208B: mul y, z            ; 55
208C: sub a, x            ; 49
208D: add z, w            ; 29
208E: add y, w            ; 24
208F: nop                 ; 00
2090: nop                 ; 00
2091: nop                 ; 00
2092: nop                 ; 00
2093: nop                 ; 00
2094: nop                 ; 00
2095: nop                 ; 00
2096: nop                 ; 00
2097: nop                 ; FC
2098: nop                 ; FF
2099: or x, w             ; A5
209A: or y, a             ; AA
209B: or y, a             ; AA
209C: add z, a            ; 2A
209D: and y, w            ; 95
209E: mul y, y            ; 54
209F: mul y, z            ; 55
20A0: and y, w            ; 95
20A1: add y, w            ; 24
20A2: sub a, x            ; 49
20A3: and x, a            ; 92
20A4: or y, a             ; AA
20A5: add z, a            ; 2A
20A6: mul y, z            ; 55
20A7: or y, w             ; A9
20A8: and y, z            ; 94
20A9: mul y, y            ; 54
20AA: or y, a             ; AA
20AB: mul y, y            ; 54
20AC: add z, a            ; 2A
20AD: or x, w             ; A5
20AE: or y, a             ; AA
20AF: and y, z            ; 94
20B0: mul y, y            ; 54
20B1: mul y, z            ; 55
20B2: mul y, z            ; 55
20B3: add y, a            ; 25
20B4: mul y, z            ; 55
20B5: or y, a             ; AA
20B6: and x, z            ; 90
20B7: nop                 ; 00
20B8: nop                 ; 00
20B9: nop                 ; 00
20BA: nop                 ; 00
20BB: nop                 ; 00
20BC: nop                 ; 00
20BD: nop                 ; 00
20BE: nop                 ; 00
20BF: nop                 ; FC
20C0: nop                 ; FF
20C1: add z, w            ; 29
20C2: and y, w            ; 95
20C3: or y, a             ; AA
20C4: or y, a             ; AA
20C5: mul x, a            ; 52
20C6: mul y, z            ; 55
20C7: mul x, a            ; 52
20C8: mul y, z            ; 55
20C9: mul y, z            ; 55
20CA: or x, w             ; A5
20CB: mul y, y            ; 54
20CC: and x, a            ; 92
20CD: or x, z             ; A4
20CE: and x, a            ; 92
20CF: or y, a             ; AA
20D0: or y, a             ; AA
20D1: sub a, y            ; 4A
20D2: add z, w            ; 29
20D3: mul y, z            ; 55
20D4: or y, w             ; A9
20D5: or y, a             ; AA
20D6: and x, a            ; 92
20D7: mul x, a            ; 52
20D8: or x, w             ; A5
20D9: or x, z             ; A4
20DA: or x, z             ; A4
20DB: mul y, y            ; 54
20DC: sub a, x            ; 49
20DD: or x, w             ; A5
20DE: sub z, w            ; 42
20DF: nop                 ; 00
20E0: nop                 ; 00
20E1: push w              ; 04
20E2: nop                 ; 00
20E3: nop                 ; 00
20E4: nop                 ; 00
20E5: nop                 ; 00
20E6: nop                 ; 00
20E7: nop                 ; FC
20E8: nop                 ; FF
20E9: mul y, z            ; 55
20EA: or y, w             ; A9
20EB: and y, z            ; 94
20EC: sub a, y            ; 4A
20ED: mul y, z            ; 55
20EE: mul y, z            ; 55
20EF: and y, w            ; 95
20F0: mul x, a            ; 52
20F1: and x, a            ; 92
20F2: and y, z            ; 94
20F3: sub a, y            ; 4A
20F4: mul y, z            ; 55
20F5: or y, w             ; A9
20F6: mul y, y            ; 54
20F7: add y, a            ; 25
20F8: or x, w             ; A5
20F9: or y, a             ; AA
20FA: sub a, y            ; 4A
20FB: add y, a            ; 25
20FC: mul y, z            ; 55
20FD: or y, w             ; A9
20FE: or y, a             ; AA
20FF: or y, a             ; AA
2100: or y, a             ; AA
2101: add z, a            ; 2A
2102: mul y, z            ; 55
2103: mul y, z            ; 55
2104: add y, a            ; 25
2105: sub a, x            ; 49
2106: pop a               ; 0A
2107: push y              ; 02
2108: nop                 ; 00
2109: nop                 ; 00
210A: nop                 ; 00
210B: nop                 ; 00
210C: nop                 ; 00
210D: nop                 ; 00
210E: nop                 ; 00
210F: nop                 ; FC
2110: nop                 ; FF
2111: or x, w             ; A5
2112: or y, a             ; AA
2113: or y, a             ; AA
2114: mul y, y            ; 54
2115: sub a, y            ; 4A
2116: and x, a            ; 92
2117: or y, a             ; AA
2118: sub a, y            ; 4A
2119: mul y, z            ; 55
211A: mul x, a            ; 52
211B: mul x, a            ; 52
211C: or x, w             ; A5
211D: sub a, y            ; 4A
211E: mul y, z            ; 55
211F: or y, a             ; AA
2120: add z, a            ; 2A
2121: add z, w            ; 29
2122: mul y, z            ; 55
2123: or y, w             ; A9
2124: sub a, y            ; 4A
2125: sub a, y            ; 4A
2126: or y, a             ; AA
2127: sub a, y            ; 4A
2128: sub a, y            ; 4A
2129: mul y, z            ; 55
212A: sub a, x            ; 49
212B: add y, a            ; 25
212C: mul y, z            ; 55
212D: mul y, z            ; 55
212E: pop w               ; 09
212F: add z, z            ; 28
2130: nop                 ; 00
2131: nop                 ; 00
2132: nop                 ; 00
2133: nop                 ; 00
2134: nop                 ; 00
2135: nop                 ; 00
2136: nop                 ; 00
2137: nop                 ; FC
2138: nop                 ; FF
2139: mul y, y            ; 54
213A: sub a, y            ; 4A
213B: mul y, z            ; 55
213C: or x, w             ; A5
213D: mul x, a            ; 52
213E: mul y, z            ; 55
213F: or x, w             ; A5
2140: mul y, y            ; 54
2141: sub a, x            ; 49
2142: and y, w            ; 95
2143: or y, a             ; AA
2144: mul y, y            ; 54
2145: add z, a            ; 2A
2146: and y, w            ; 95
2147: or y, a             ; AA
2148: mul x, a            ; 52
2149: or x, w             ; A5
214A: mul x, a            ; 52
214B: mul y, z            ; 55
214C: or y, w             ; A9
214D: or y, a             ; AA
214E: or y, a             ; AA
214F: mul y, y            ; 54
2150: mul y, z            ; 55
2151: and x, a            ; 92
2152: add z, a            ; 2A
2153: or y, w             ; A9
2154: and x, a            ; 92
2155: add y, w            ; 24
2156: mul y, z            ; 55
2157: nop                 ; 00
2158: push x              ; 01
2159: nop                 ; 00
215A: nop                 ; 00
215B: nop                 ; 00
215C: nop                 ; 00
215D: nop                 ; 00
215E: nop                 ; 00
215F: nop                 ; FC
2160: nop                 ; FF
2161: sub a, y            ; 4A
2162: or y, w             ; A9
2163: mul x, a            ; 52
2164: mul y, z            ; 55
2165: and y, w            ; 95
2166: or x, z             ; A4
2167: mul y, y            ; 54
2168: mul y, z            ; 55
2169: or y, a             ; AA
216A: or x, z             ; A4
216B: add y, w            ; 24
216C: and y, w            ; 95
216D: mul x, a            ; 52
216E: or y, w             ; A9
216F: and x, a            ; 92
2170: mul y, y            ; 54
2171: mul y, z            ; 55
2172: and y, w            ; 95
2173: sub a, y            ; 4A
2174: or y, a             ; AA
2175: or y, a             ; AA
2176: and x, a            ; 92
2177: mul x, a            ; 52
2178: or y, w             ; A9
2179: or y, a             ; AA
217A: mul x, a            ; 52
217B: mul y, z            ; 55
217C: or y, a             ; AA
217D: or y, a             ; AA
217E: mul x, a            ; 52
217F: push x              ; 01
2180: nop                 ; 00
2181: nop                 ; 00
2182: nop                 ; 00
2183: nop                 ; 00
2184: nop                 ; 00
2185: nop                 ; 00
2186: nop                 ; 00
2187: nop                 ; FC
2188: nop                 ; FF
2189: mul x, a            ; 52
218A: or x, w             ; A5
218B: and y, z            ; 94
218C: and y, z            ; 94
218D: mul y, y            ; 54
218E: and y, w            ; 95
218F: and x, a            ; 92
2190: mul x, a            ; 52
2191: add y, a            ; 25
2192: add z, w            ; 29
2193: sub a, x            ; 49
2194: or x, w             ; A5
2195: or y, a             ; AA
2196: sub a, y            ; 4A
2197: mul y, z            ; 55
2198: and y, w            ; 95
2199: and y, z            ; 94
219A: mul y, y            ; 54
219B: mul x, a            ; 52
219C: add y, a            ; 25
219D: add z, w            ; 29
219E: mul y, z            ; 55
219F: mul y, z            ; 55
21A0: sub a, y            ; 4A
21A1: or y, w             ; A9
21A2: and y, z            ; 94
21A3: and y, z            ; 94
21A4: sub a, y            ; 4A
21A5: sub a, x            ; 49
21A6: or y, a             ; AA
21A7: mul y, y            ; 54
21A8: add z, w            ; 29
21A9: nop                 ; 00
21AA: nop                 ; 00
21AB: nop                 ; 00
21AC: nop                 ; 00
21AD: nop                 ; 00
21AE: nop                 ; 00
21AF: nop                 ; FC
21B0: nop                 ; FF
21B1: or y, a             ; AA
21B2: add z, a            ; 2A
21B3: mul y, z            ; 55
21B4: mul y, z            ; 55
21B5: add y, a            ; 25
21B6: or y, w             ; A9
21B7: or y, a             ; AA
21B8: sub a, y            ; 4A
21B9: mul y, z            ; 55
21BA: or x, w             ; A5
21BB: add z, a            ; 2A
21BC: add z, w            ; 29
21BD: add y, a            ; 25
21BE: mul y, z            ; 55
21BF: or y, a             ; AA
21C0: or y, a             ; AA
21C1: or y, a             ; AA
21C2: or y, a             ; AA
21C3: or y, a             ; AA
21C4: or y, a             ; AA
21C5: or y, a             ; AA
21C6: or y, a             ; AA
21C7: sub a, y            ; 4A
21C8: mul y, z            ; 55
21C9: sub a, y            ; 4A
21CA: mul y, z            ; 55
21CB: or x, w             ; A5
21CC: add z, a            ; 2A
21CD: and y, w            ; 95
21CE: add y, w            ; 24
21CF: add y, a            ; 25
21D0: or x, w             ; A5
21D1: nop                 ; 00
21D2: nop                 ; 00
21D3: nop                 ; 00
21D4: nop                 ; 00
21D5: nop                 ; 00
21D6: nop                 ; 00
21D7: nop                 ; FC
21D8: nop                 ; FF
21D9: mul y, z            ; 55
21DA: mul x, a            ; 52
21DB: or x, w             ; A5
21DC: sub a, y            ; 4A
21DD: mul y, z            ; 55
21DE: add y, a            ; 25
21DF: sub a, x            ; 49
21E0: or y, a             ; AA
21E1: mul y, y            ; 54
21E2: call $5249          ; 15 49 52
21E5: or y, w             ; A9
21E6: mul x, a            ; 52
21E7: add y, a            ; 25
21E8: sub a, x            ; 49
21E9: or x, w             ; A5
21EA: sub a, y            ; 4A
21EB: and y, w            ; 95
21EC: mul x, a            ; 52
21ED: or x, w             ; A5
21EE: mul y, y            ; 54
21EF: or y, a             ; AA
21F0: mul x, a            ; 52
21F1: mul y, z            ; 55
21F2: sub a, y            ; 4A
21F3: or y, a             ; AA
21F4: or x, z             ; A4
21F5: or x, z             ; A4
21F6: sub a, y            ; 4A
21F7: and y, w            ; 95
21F8: store $0001, a      ; 14 01 00
21FB: nop                 ; 00
21FC: nop                 ; 00
21FD: nop                 ; 00
21FE: nop                 ; 00
21FF: nop                 ; FC
2200: nop                 ; FF
2201: and y, w            ; 95
2202: sub a, y            ; 4A
2203: and y, w            ; 95
2204: mul y, y            ; 54
2205: mul x, a            ; 52
2206: or y, a             ; AA
2207: or y, a             ; AA
2208: add z, a            ; 2A
2209: add y, a            ; 25
220A: or y, w             ; A9
220B: or x, z             ; A4
220C: sub a, y            ; 4A
220D: sub a, y            ; 4A
220E: or y, a             ; AA
220F: or y, a             ; AA
2210: or y, a             ; AA
2211: mul y, y            ; 54
2212: add z, a            ; 2A
2213: or y, w             ; A9
2214: and y, z            ; 94
2215: mul y, y            ; 54
2216: or x, w             ; A5
2217: mul x, a            ; 52
2218: sub a, y            ; 4A
2219: or y, w             ; A9
221A: mul x, a            ; 52
221B: sub a, x            ; 49
221C: mul y, z            ; 55
221D: mul y, z            ; 55
221E: mul x, a            ; 52
221F: mul x, a            ; 52
2220: mul x, a            ; 52
2221: push y              ; 02
2222: nop                 ; 00
2223: nop                 ; 00
2224: nop                 ; 00
2225: nop                 ; 00
2226: nop                 ; 00
2227: nop                 ; FC
2228: nop                 ; FF
2229: mul x, a            ; 52
222A: add z, w            ; 29
222B: or y, w             ; A9
222C: sub a, y            ; 4A
222D: and y, w            ; 95
222E: and x, a            ; 92
222F: add y, w            ; 24
2230: or x, w             ; A5
2231: or y, a             ; AA
2232: sub a, y            ; 4A
2233: and y, w            ; 95
2234: mul y, y            ; 54
2235: mul y, z            ; 55
2236: add z, w            ; 29
2237: or y, w             ; A9
2238: or y, a             ; AA
2239: or y, a             ; AA
223A: mul x, a            ; 52
223B: add y, a            ; 25
223C: mul y, z            ; 55
223D: and y, w            ; 95
223E: or y, a             ; AA
223F: or y, a             ; AA
2240: add z, a            ; 2A
2241: and y, w            ; 95
2242: or y, a             ; AA
2243: add z, a            ; 2A
2244: sub a, x            ; 49
2245: and x, a            ; 92
2246: add z, a            ; 2A
2247: or y, w             ; A9
2248: sub a, y            ; 4A
2249: pop w               ; 09
224A: nop                 ; 00
224B: nop                 ; 00
224C: nop                 ; 00
224D: nop                 ; 00
224E: nop                 ; 00
224F: nop                 ; FC
2250: nop                 ; FF
2251: mul y, y            ; 54
2252: mul y, z            ; 55
2253: add y, a            ; 25
2254: add z, w            ; 29
2255: or y, w             ; A9
2256: mul y, y            ; 54
2257: mul y, z            ; 55
2258: or y, w             ; A9
2259: mul y, y            ; 54
225A: add z, a            ; 2A
225B: sub a, x            ; 49
225C: and x, a            ; 92
225D: or x, z             ; A4
225E: sub a, y            ; 4A
225F: add y, a            ; 25
2260: sub a, x            ; 49
2261: and y, w            ; 95
2262: or y, a             ; AA
2263: or y, a             ; AA
2264: add z, a            ; 2A
2265: or y, w             ; A9
2266: mul y, y            ; 54
2267: and y, w            ; 95
2268: or y, a             ; AA
2269: mul x, a            ; 52
226A: sub a, y            ; 4A
226B: mul x, a            ; 52
226C: mul y, z            ; 55
226D: mul y, z            ; 55
226E: mul x, a            ; 52
226F: add y, a            ; 25
2270: add z, w            ; 29
2271: add y, a            ; 25
2272: nop                 ; 00
2273: nop                 ; 00
2274: nop                 ; 00
2275: nop                 ; 00
2276: nop                 ; 00
2277: nop                 ; FC
2278: nop                 ; FF
2279: and y, w            ; 95
227A: and y, z            ; 94
227B: mul y, y            ; 54
227C: mul y, z            ; 55
227D: and y, w            ; 95
227E: sub a, y            ; 4A
227F: and x, a            ; 92
2280: and y, z            ; 94
2281: sub a, y            ; 4A
2282: or x, w             ; A5
2283: mul x, a            ; 52
2284: mul y, z            ; 55
2285: mul y, z            ; 55
2286: or y, a             ; AA
2287: or y, a             ; AA
2288: add z, a            ; 2A
2289: or x, w             ; A5
228A: or y, a             ; AA
228B: and y, z            ; 94
228C: or x, z             ; A4
228D: sub a, y            ; 4A
228E: and y, w            ; 95
228F: mul y, y            ; 54
2290: or x, w             ; A5
2291: or y, a             ; AA
2292: mul x, a            ; 52
2293: and y, w            ; 95
2294: add y, w            ; 24
2295: sub a, x            ; 49
2296: and y, w            ; 95
2297: and y, z            ; 94
2298: sub a, y            ; 4A
2299: store $0000, z      ; 12 00 00
229C: nop                 ; 00
229D: nop                 ; 00
229E: nop                 ; 00
229F: nop                 ; FC
22A0: nop                 ; FF
22A1: or y, w             ; A9
22A2: mul x, a            ; 52
22A3: mul y, z            ; 55
22A4: mul x, a            ; 52
22A5: mul x, a            ; 52
22A6: mul x, a            ; 52
22A7: sub a, x            ; 49
22A8: or x, w             ; A5
22A9: mul y, y            ; 54
22AA: or y, w             ; A9
22AB: sub a, y            ; 4A
22AC: and x, a            ; 92
22AD: add y, w            ; 24
22AE: add z, w            ; 29
22AF: mul y, z            ; 55
22B0: mul y, z            ; 55
22B1: mul y, z            ; 55
22B2: sub a, y            ; 4A
22B3: mul y, z            ; 55
22B4: mul x, a            ; 52
22B5: mul x, a            ; 52
22B6: or y, w             ; A9
22B7: or y, a             ; AA
22B8: and y, z            ; 94
22B9: or x, z             ; A4
22BA: and y, z            ; 94
22BB: or x, z             ; A4
22BC: mul x, a            ; 52
22BD: mul y, z            ; 55
22BE: mul x, a            ; 52
22BF: mul x, a            ; 52
22C0: mul x, a            ; 52
22C1: sub a, x            ; 49
22C2: nop                 ; 00
22C3: nop                 ; 00
22C4: nop                 ; 00
22C5: nop                 ; 00
22C6: nop                 ; 00
22C7: nop                 ; FC
22C8: nop                 ; FF
22C9: sub a, y            ; 4A
22CA: sub a, y            ; 4A
22CB: and x, a            ; 92
22CC: sub a, y            ; 4A
22CD: or x, w             ; A5
22CE: sub a, y            ; 4A
22CF: or y, a             ; AA
22D0: and y, z            ; 94
22D1: mul x, a            ; 52
22D2: add z, a            ; 2A
22D3: or y, w             ; A9
22D4: add y, w            ; 24
22D5: mul y, z            ; 55
22D6: or x, w             ; A5
22D7: add y, w            ; 24
22D8: or x, w             ; A5
22D9: mul y, y            ; 54
22DA: add z, w            ; 29
22DB: or x, w             ; A5
22DC: add z, a            ; 2A
22DD: mul y, z            ; 55
22DE: sub a, y            ; 4A
22DF: or x, w             ; A5
22E0: or y, a             ; AA
22E1: add z, a            ; 2A
22E2: mul y, z            ; 55
22E3: mul y, z            ; 55
22E4: sub a, y            ; 4A
22E5: and x, a            ; 92
22E6: sub a, y            ; 4A
22E7: and y, w            ; 95
22E8: add y, w            ; 24
22E9: or y, a             ; AA
22EA: push y              ; 02
22EB: nop                 ; 00
22EC: nop                 ; 00
22ED: nop                 ; 00
22EE: nop                 ; 00
22EF: nop                 ; FC
22F0: nop                 ; FF
22F1: mul x, a            ; 52
22F2: or y, w             ; A9
22F3: sub a, y            ; 4A
22F4: add z, w            ; 29
22F5: sub a, x            ; 49
22F6: and x, a            ; 92
22F7: store $A529, z      ; 12 29 A5
22FA: mul x, a            ; 52
22FB: and y, w            ; 95
22FC: sub a, y            ; 4A
22FD: sub a, x            ; 49
22FE: mul y, z            ; 55
22FF: mul y, z            ; 55
2300: mul y, z            ; 55
2301: mul y, z            ; 55
2302: mul y, z            ; 55
2303: or y, w             ; A9
2304: sub w, x            ; 44
2305: or x, w             ; A5
2306: add z, a            ; 2A
2307: and y, w            ; 95
2308: or y, a             ; AA
2309: sub a, y            ; 4A
230A: add z, w            ; 29
230B: sub a, x            ; 49
230C: add z, w            ; 29
230D: or y, w             ; A9
230E: and y, z            ; 94
230F: or x, z             ; A4
2310: sub a, y            ; 4A
2311: and x, w            ; 91
2312: pop z               ; 08
2313: nop                 ; 00
2314: nop                 ; 00
2315: nop                 ; 00
2316: nop                 ; 00
2317: nop                 ; FC
2318: nop                 ; FF
2319: mul y, z            ; 55
231A: sub a, y            ; 4A
231B: mul x, a            ; 52
231C: or x, w             ; A5
231D: add z, a            ; 2A
231E: or y, w             ; A9
231F: or x, z             ; A4
2320: sub a, y            ; 4A
2321: add z, w            ; 29
2322: and y, w            ; 95
2323: mul x, a            ; 52
2324: mul x, a            ; 52
2325: add z, a            ; 2A
2326: sub a, x            ; 49
2327: mul x, a            ; 52
2328: add z, w            ; 29
2329: add y, a            ; 25
232A: mul y, z            ; 55
232B: and y, w            ; 95
232C: or y, a             ; AA
232D: and y, z            ; 94
232E: mul x, a            ; 52
232F: or y, w             ; A9
2330: mul x, a            ; 52
2331: mul x, a            ; 52
2332: or x, w             ; A5
2333: mul x, a            ; 52
2334: sub a, y            ; 4A
2335: and y, w            ; 95
2336: mul x, a            ; 52
2337: sub a, x            ; 49
2338: and x, a            ; 92
2339: sub a, y            ; 4A
233A: store $0000, z      ; 12 00 00
233D: nop                 ; 00
233E: nop                 ; 00
233F: nop                 ; FC
2340: nop                 ; FF
2341: add y, a            ; 25
2342: or x, w             ; A5
2343: and y, z            ; 94
2344: and y, z            ; 94
2345: or x, z             ; A4
2346: add y, w            ; 24
2347: mul y, z            ; 55
2348: mul x, a            ; 52
2349: sub a, y            ; 4A
234A: or y, w             ; A9
234B: mul y, y            ; 54
234C: sub a, x            ; 49
234D: mul x, w            ; 51
234E: mul y, z            ; 55
234F: and y, w            ; 95
2350: or y, a             ; AA
2351: mul y, y            ; 54
2352: sub a, x            ; 49
2353: mul y, z            ; 55
2354: add z, w            ; 29
2355: mul y, z            ; 55
2356: or y, a             ; AA
2357: or y, a             ; AA
2358: or y, a             ; AA
2359: add z, a            ; 2A
235A: and y, w            ; 95
235B: and y, z            ; 94
235C: mul x, a            ; 52
235D: add y, y            ; 22
235E: sub a, x            ; 49
235F: add z, a            ; 2A
2360: add z, w            ; 29
2361: add z, w            ; 29
2362: sub w, y            ; 45
2363: nop                 ; 00
2364: nop                 ; 00
2365: nop                 ; 00
2366: nop                 ; 00
2367: nop                 ; FC
2368: nop                 ; FF
2369: mul y, y            ; 54
236A: and y, w            ; 95
236B: mul x, a            ; 52
236C: add z, a            ; 2A
236D: and y, w            ; 95
236E: sub a, y            ; 4A
236F: and x, a            ; 92
2370: add y, w            ; 24
2371: or y, w             ; A9
2372: sub a, y            ; 4A
2373: and y, w            ; 95
2374: add z, a            ; 2A
2375: and y, w            ; 95
2376: add y, w            ; 24
2377: mul y, z            ; 55
2378: sub a, y            ; 4A
2379: mul y, z            ; 55
237A: mul y, z            ; 55
237B: or x, w             ; A5
237C: or y, a             ; AA
237D: sub a, y            ; 4A
237E: and y, w            ; 95
237F: mul y, y            ; 54
2380: add z, a            ; 2A
2381: sub a, x            ; 49
2382: mul x, a            ; 52
2383: or x, w             ; A5
2384: and y, z            ; 94
2385: mul y, y            ; 54
2386: add z, a            ; 2A
2387: or x, w             ; A5
2388: or x, z             ; A4
2389: sub w, x            ; 44
238A: and x, a            ; 92
238B: nop                 ; 00
238C: nop                 ; 00
238D: nop                 ; 00
238E: nop                 ; 00
238F: nop                 ; FC
2390: nop                 ; FF
2391: sub a, x            ; 49
2392: mul x, a            ; 52
2393: sub a, y            ; 4A
2394: sub a, x            ; 49
2395: sub a, x            ; 49
2396: mul x, a            ; 52
2397: sub a, x            ; 49
2398: and y, w            ; 95
2399: and x, a            ; 92
239A: mul y, y            ; 54
239B: mul x, a            ; 52
239C: and x, a            ; 92
239D: or x, z             ; A4
239E: or y, a             ; AA
239F: or x, z             ; A4
23A0: mul x, a            ; 52
23A1: sub a, x            ; 49
23A2: mul y, z            ; 55
23A3: add z, a            ; 2A
23A4: or x, w             ; A5
23A5: mul y, y            ; 54
23A6: or y, w             ; A9
23A7: and x, a            ; 92
23A8: mul x, a            ; 52
23A9: mul y, z            ; 55
23AA: sub a, x            ; 49
23AB: and x, a            ; 92
23AC: mul x, a            ; 52
23AD: or x, w             ; A5
23AE: mul x, a            ; 52
23AF: sub a, x            ; 49
23B0: and x, a            ; 92
23B1: mul x, a            ; 52
23B2: sub a, x            ; 49
23B3: push y              ; 02
23B4: nop                 ; 00
23B5: nop                 ; 00
23B6: nop                 ; 00
23B7: nop                 ; FC
23B8: nop                 ; FF
23B9: or y, a             ; AA
23BA: and y, z            ; 94
23BB: and x, a            ; 92
23BC: mul x, a            ; 52
23BD: mul x, a            ; 52
23BE: sub a, x            ; 49
23BF: or y, a             ; AA
23C0: or x, z             ; A4
23C1: mul y, y            ; 54
23C2: and x, a            ; 92
23C3: sub a, y            ; 4A
23C4: mul y, z            ; 55
23C5: add z, w            ; 29
23C6: sub a, x            ; 49
23C7: mul y, z            ; 55
23C8: mul y, z            ; 55
23C9: add z, a            ; 2A
23CA: sub a, x            ; 49
23CB: or y, w             ; A9
23CC: add z, a            ; 2A
23CD: add y, a            ; 25
23CE: or x, w             ; A5
23CF: or y, a             ; AA
23D0: sub a, y            ; 4A
23D1: add y, a            ; 25
23D2: and y, w            ; 95
23D3: sub a, y            ; 4A
23D4: sub a, y            ; 4A
23D5: store $2A49, z      ; 12 49 2A
23D8: add y, a            ; 25
23D9: add z, w            ; 29
23DA: and x, a            ; 92
23DB: push w              ; 04
23DC: nop                 ; 00
23DD: nop                 ; 00
23DE: nop                 ; 00
23DF: nop                 ; FC
23E0: nop                 ; FF
23E1: and x, a            ; 92
23E2: mul x, a            ; 52
23E3: add z, a            ; 2A
23E4: and y, w            ; 95
23E5: sub a, y            ; 4A
23E6: add z, a            ; 2A
23E7: cmp a, a            ; 89
23E8: and x, a            ; 92
23E9: and x, a            ; 92
23EA: or y, a             ; AA
23EB: mul y, y            ; 54
23EC: sub a, x            ; 49
23ED: sub a, y            ; 4A
23EE: add z, a            ; 2A
23EF: sub a, x            ; 49
23F0: sub a, y            ; 4A
23F1: mul y, z            ; 55
23F2: mul y, z            ; 55
23F3: mul y, z            ; 55
23F4: or y, a             ; AA
23F5: or y, a             ; AA
23F6: add z, a            ; 2A
23F7: or x, w             ; A5
23F8: mul y, y            ; 54
23F9: or y, a             ; AA
23FA: mul x, a            ; 52
23FB: and x, a            ; 92
23FC: add y, w            ; 24
23FD: sub a, x            ; 49
23FE: add z, a            ; 2A
23FF: sub a, x            ; 49
2400: sub a, x            ; 49
2401: sub w, x            ; 44
2402: sub a, x            ; 49
2403: store $0000, z      ; 12 00 00
2406: nop                 ; 00
2407: nop                 ; FC
2408: nop                 ; FF
2409: mul y, y            ; 54
240A: sub a, y            ; 4A
240B: sub a, x            ; 49
240C: sub a, x            ; 49
240D: and x, a            ; 92
240E: sub w, x            ; 44
240F: add y, a            ; 25
2410: or y, w             ; A9
2411: or x, z             ; A4
2412: and x, a            ; 92
2413: mul x, a            ; 52
2414: or y, a             ; AA
2415: mul x, a            ; 52
2416: sub a, x            ; 49
2417: mul y, z            ; 55
2418: or y, w             ; A9
2419: mul x, a            ; 52
241A: mul y, z            ; 55
241B: sub a, y            ; 4A
241C: sub a, x            ; 49
241D: or y, w             ; A9
241E: or y, a             ; AA
241F: and y, z            ; 94
2420: or y, a             ; AA
2421: mul x, a            ; 52
2422: sub a, y            ; 4A
2423: add z, w            ; 29
2424: or y, w             ; A9
2425: or y, a             ; AA
2426: and x, a            ; 92
2427: and x, a            ; 92
2428: and y, z            ; 94
2429: mul x, a            ; 52
242A: and x, a            ; 92
242B: add y, w            ; 24
242C: nop                 ; 00
242D: nop                 ; 00
242E: nop                 ; 00
242F: nop                 ; FC
2430: nop                 ; FF
2431: or x, w             ; A5
2432: and x, a            ; 92
2433: add y, w            ; 24
2434: add y, a            ; 25
2435: or y, w             ; A9
2436: and x, a            ; 92
2437: mul y, y            ; 54
2438: sub a, y            ; 4A
2439: add z, a            ; 2A
243A: or y, w             ; A9
243B: sub a, y            ; 4A
243C: add y, a            ; 25
243D: sub a, x            ; 49
243E: mul x, a            ; 52
243F: and x, a            ; 92
2440: add z, a            ; 2A
2441: and y, w            ; 95
2442: or x, z             ; A4
2443: or y, a             ; AA
2444: or y, a             ; AA
2445: sub a, y            ; 4A
2446: mul x, a            ; 52
2447: mul y, z            ; 55
2448: sub a, x            ; 49
2449: and y, w            ; 95
244A: add z, a            ; 2A
244B: or x, w             ; A5
244C: sub w, x            ; 44
244D: add y, y            ; 22
244E: or x, z             ; A4
244F: mul y, y            ; 54
2450: mul x, a            ; 52
2451: cmpbit x            ; 8A 24
2453: and x, w            ; 91
2454: nop                 ; 00
2455: nop                 ; 00
2456: nop                 ; 00
2457: nop                 ; FC
2458: nop                 ; FF
2459: and x, a            ; 92
245A: mul y, y            ; 54
245B: or y, a             ; AA
245C: or y, z             ; A8
245D: add y, w            ; 24
245E: add z, w            ; 29
245F: and x, w            ; 91
2460: and x, a            ; 92
2461: and x, a            ; 92
2462: and y, z            ; 94
2463: and y, z            ; 94
2464: mul y, y            ; 54
2465: and y, w            ; 95
2466: and y, z            ; 94
2467: mul y, y            ; 54
2468: or x, w             ; A5
2469: or y, a             ; AA
246A: add z, a            ; 2A
246B: or x, w             ; A5
246C: or y, a             ; AA
246D: mul y, y            ; 54
246E: and y, w            ; 95
246F: sub a, y            ; 4A
2470: add z, a            ; 2A
2471: or y, w             ; A9
2472: or x, z             ; A4
2473: store $4929, a      ; 14 29 49
2476: add z, w            ; 29
2477: add y, a            ; 25
2478: add y, a            ; 25
2479: add y, x            ; 21
247A: sub a, x            ; 49
247B: add y, w            ; 24
247C: push x              ; 01
247D: nop                 ; 00
247E: nop                 ; 00
247F: nop                 ; FC
2480: nop                 ; FF
2481: mul y, y            ; 54
2482: and x, a            ; 92
2483: and x, a            ; 92
2484: sub a, y            ; 4A
2485: and x, a            ; 92
2486: or x, z             ; A4
2487: add y, w            ; 24
2488: sub a, x            ; 49
2489: sub a, y            ; 4A
248A: or x, w             ; A5
248B: mul x, a            ; 52
248C: add y, a            ; 25
248D: or y, w             ; A9
248E: mul x, a            ; 52
248F: add y, a            ; 25
2490: mul y, z            ; 55
2491: or y, w             ; A9
2492: or y, a             ; AA
2493: add z, a            ; 2A
2494: sub a, x            ; 49
2495: and y, w            ; 95
2496: mul y, y            ; 54
2497: mul x, a            ; 52
2498: or x, w             ; A5
2499: sub a, y            ; 4A
249A: add z, w            ; 29
249B: sub a, x            ; 49
249C: and x, a            ; 92
249D: and y, z            ; 94
249E: sub w, x            ; 44
249F: sub w, a            ; 48
24A0: and y, z            ; 94
24A1: and y, z            ; 94
24A2: add y, w            ; 24
24A3: cmp a, a            ; 89
24A4: push w              ; 04
24A5: nop                 ; 00
24A6: nop                 ; 00
24A7: nop                 ; FC
24A8: nop                 ; FF
24A9: add y, a            ; 25
24AA: add y, a            ; 25
24AB: sub a, x            ; 49
24AC: and x, a            ; 92
24AD: add z, a            ; 2A
24AE: call $A495          ; 15 95 A4
24B1: add y, w            ; 24
24B2: sub a, x            ; 49
24B3: add z, a            ; 2A
24B4: or y, w             ; A9
24B5: sub a, y            ; 4A
24B6: sub a, y            ; 4A
24B7: mul x, a            ; 52
24B8: add z, w            ; 29
24B9: add y, a            ; 25
24BA: or x, w             ; A5
24BB: mul x, a            ; 52
24BC: mul y, z            ; 55
24BD: mul x, a            ; 52
24BE: or x, w             ; A5
24BF: add z, a            ; 2A
24C0: mul y, z            ; 55
24C1: mul x, a            ; 52
24C2: sub a, y            ; 4A
24C3: or x, w             ; A5
24C4: add y, w            ; 24
24C5: sub w, y            ; 45
24C6: and x, a            ; 92
24C7: and x, a            ; 92
24C8: add y, y            ; 22
24C9: add y, a            ; 25
24CA: sub a, x            ; 49
24CB: add y, y            ; 22
24CC: pop w               ; 09
24CD: nop                 ; 00
24CE: nop                 ; 00
24CF: nop                 ; FC
24D0: nop                 ; FF
24D1: sub w, a            ; 48
24D2: or y, w             ; A9
24D3: add y, w            ; 24
24D4: sub a, x            ; 49
24D5: sub w, x            ; 44
24D6: and a, w            ; A2
24D7: sub w, a            ; 48
24D8: and x, a            ; 92
24D9: mul x, a            ; 52
24DA: add z, a            ; 2A
24DB: sub a, x            ; 49
24DC: and y, w            ; 95
24DD: or x, z             ; A4
24DE: add y, w            ; 24
24DF: and y, w            ; 95
24E0: sub a, y            ; 4A
24E1: mul y, z            ; 55
24E2: add z, w            ; 29
24E3: mul y, z            ; 55
24E4: and y, w            ; 95
24E5: or y, a             ; AA
24E6: or y, a             ; AA
24E7: mul y, y            ; 54
24E8: sub a, x            ; 49
24E9: and y, w            ; 95
24EA: mul x, a            ; 52
24EB: and x, a            ; 92
24EC: and x, a            ; 92
24ED: add z, z            ; 28
24EE: sub a, x            ; 49
24EF: or y, a             ; AA
24F0: and y, z            ; 94
24F1: sub w, a            ; 48
24F2: and x, a            ; 92
24F3: and y, z            ; 94
24F4: add y, w            ; 24
24F5: nop                 ; 00
24F6: nop                 ; 00
24F7: nop                 ; FC
24F8: nop                 ; FF
24F9: mul x, a            ; 52
24FA: store $54A9, z      ; 12 A9 54
24FD: add z, w            ; 29
24FE: sub a, x            ; 49
24FF: and x, a            ; 92
2500: mul y, y            ; 54
2501: and y, z            ; 94
2502: or x, z             ; A4
2503: and x, a            ; 92
2504: or x, z             ; A4
2505: add z, a            ; 2A
2506: or y, w             ; A9
2507: mul x, a            ; 52
2508: or y, w             ; A9
2509: or y, a             ; AA
250A: or y, a             ; AA
250B: and y, z            ; 94
250C: or x, z             ; A4
250D: sub a, y            ; 4A
250E: and x, a            ; 92
250F: and x, a            ; 92
2510: add z, a            ; 2A
2511: sub a, x            ; 49
2512: add z, a            ; 2A
2513: add z, w            ; 29
2514: sub a, x            ; 49
2515: and x, a            ; 92
2516: add y, w            ; 24
2517: pop w               ; 09
2518: or x, w             ; A5
2519: and x, a            ; 92
251A: add y, w            ; 24
251B: add y, x            ; 21
251C: sub a, x            ; 49
251D: nop                 ; 00
251E: nop                 ; 00
251F: nop                 ; FC
2520: nop                 ; FF
2521: cmpbit x            ; 8A 4A
2523: sub w, y            ; 45
2524: add y, y            ; 22
2525: or x, w             ; A5
2526: and y, z            ; 94
2527: sub a, y            ; 4A
2528: add y, y            ; 22
2529: sub a, x            ; 49
252A: sub a, x            ; 49
252B: or y, a             ; AA
252C: add z, a            ; 2A
252D: sub a, x            ; 49
252E: add y, a            ; 25
252F: sub a, y            ; 4A
2530: add z, a            ; 2A
2531: add z, w            ; 29
2532: mul y, z            ; 55
2533: or x, w             ; A5
2534: or y, a             ; AA
2535: mul y, y            ; 54
2536: mul y, z            ; 55
2537: mul y, z            ; 55
2538: mul x, a            ; 52
2539: or y, a             ; AA
253A: or x, z             ; A4
253B: sub a, y            ; 4A
253C: store $9249, z      ; 12 49 92
253F: or x, z             ; A4
2540: sub w, a            ; 48
2541: sub a, y            ; 4A
2542: and x, a            ; 92
2543: and y, z            ; 94
2544: add y, w            ; 24
2545: push x              ; 01
2546: nop                 ; 00
2547: nop                 ; FC
2548: nop                 ; FF
2549: or x, z             ; A4
254A: or x, z             ; A4
254B: and x, z            ; 90
254C: and y, z            ; 94
254D: store $2125, x      ; 10 25 21
2550: sub a, x            ; 49
2551: add y, a            ; 25
2552: and y, w            ; 95
2553: add y, w            ; 24
2554: sub a, x            ; 49
2555: mul y, z            ; 55
2556: sub a, y            ; 4A
2557: and x, w            ; 91
2558: sub a, y            ; 4A
2559: or x, w             ; A5
255A: and x, a            ; 92
255B: or y, a             ; AA
255C: add z, a            ; 2A
255D: add y, a            ; 25
255E: add z, w            ; 29
255F: sub a, x            ; 49
2560: and y, w            ; 95
2561: and x, a            ; 92
2562: sub a, y            ; 4A
2563: mul x, a            ; 52
2564: sub a, x            ; 49
2565: and x, a            ; 92
2566: add y, w            ; 24
2567: add z, w            ; 29
2568: add y, a            ; 25
2569: and x, w            ; 91
256A: add y, w            ; 24
256B: add y, y            ; 22
256C: sub a, x            ; 49
256D: nop                 ; 00
256E: nop                 ; 00
256F: nop                 ; FC
2570: nop                 ; FF
2571: store $5509, z      ; 12 09 55
2574: mul x, a            ; 52
2575: sub a, y            ; 4A
2576: and x, z            ; 90
2577: and y, z            ; 94
2578: add y, w            ; 24
2579: and x, a            ; 92
257A: or x, z             ; A4
257B: and x, a            ; 92
257C: mul y, y            ; 54
257D: and x, a            ; 92
257E: or y, a             ; AA
257F: mul y, y            ; 54
2580: mul x, a            ; 52
2581: or y, a             ; AA
2582: mul y, y            ; 54
2583: add z, w            ; 29
2584: sub a, x            ; 49
2585: or y, w             ; A9
2586: sub a, y            ; 4A
2587: add y, a            ; 25
2588: or y, w             ; A9
2589: add y, w            ; 24
258A: add z, w            ; 29
258B: cmp a, a            ; 89
258C: add y, w            ; 24
258D: sub a, x            ; 49
258E: and x, a            ; 92
258F: sub w, x            ; 44
2590: and x, a            ; 92
2591: add y, w            ; 24
2592: and x, w            ; 91
2593: cmp a, w            ; 88
2594: add x, a            ; 20
2595: push a              ; 05
2596: nop                 ; 00
2597: nop                 ; FC
2598: nop                 ; FF
2599: mul y, y            ; 54
259A: mul x, a            ; 52
259B: pop w               ; 09
259C: cmp a, a            ; 89
259D: mul x, a            ; 52
259E: add y, a            ; 25
259F: sub a, x            ; 49
25A0: and x, a            ; 92
25A1: add z, z            ; 28
25A2: add z, w            ; 29
25A3: or y, w             ; A9
25A4: and x, a            ; 92
25A5: mul y, y            ; 54
25A6: sub a, x            ; 49
25A7: sub a, y            ; 4A
25A8: or y, w             ; A9
25A9: add z, a            ; 2A
25AA: mul y, z            ; 55
25AB: sub a, y            ; 4A
25AC: mul y, z            ; 55
25AD: and y, w            ; 95
25AE: mul y, y            ; 54
25AF: or y, w             ; A9
25B0: add y, w            ; 24
25B1: mul y, z            ; 55
25B2: sub a, y            ; 4A
25B3: mul y, z            ; 55
25B4: sub a, y            ; 4A
25B5: and x, a            ; 92
25B6: sub w, x            ; 44
25B7: and x, a            ; 92
25B8: add y, w            ; 24
25B9: and y, w            ; 95
25BA: add y, w            ; 24
25BB: add y, y            ; 22
25BC: sub a, y            ; 4A
25BD: store $FC00, x      ; 10 00 FC
25C0: nop                 ; FF
25C1: add y, y            ; 22
25C2: add z, w            ; 29
25C3: or x, z             ; A4
25C4: add y, w            ; 24
25C5: cmp w, a            ; 84
25C6: and y, z            ; 94
25C7: add y, w            ; 24
25C8: sub a, x            ; 49
25C9: or x, w             ; A5
25CA: sub w, x            ; 44
25CB: sub a, y            ; 4A
25CC: sub a, y            ; 4A
25CD: add y, a            ; 25
25CE: or x, w             ; A5
25CF: and x, a            ; 92
25D0: sub a, y            ; 4A
25D1: sub a, x            ; 49
25D2: or x, w             ; A5
25D3: or y, a             ; AA
25D4: mul x, a            ; 52
25D5: or y, a             ; AA
25D6: and x, a            ; 92
25D7: sub a, y            ; 4A
25D8: and y, w            ; 95
25D9: or x, z             ; A4
25DA: mul x, a            ; 52
25DB: and x, a            ; 92
25DC: add z, z            ; 28
25DD: sub z, z            ; 41
25DE: store $9249, z      ; 12 49 92
25E1: mul x, z            ; 50
25E2: and x, a            ; 92
25E3: and y, z            ; 94
25E4: add x, a            ; 20
25E5: sub w, y            ; 45
25E6: nop                 ; 00
25E7: nop                 ; FC
25E8: nop                 ; FF
25E9: cmp a, a            ; 89
25EA: sub w, x            ; 44
25EB: add z, w            ; 29
25EC: sub a, x            ; 49
25ED: add z, w            ; 29
25EE: add y, x            ; 21
25EF: sub a, x            ; 49
25F0: mul x, a            ; 52
25F1: sub w, a            ; 48
25F2: and x, a            ; 92
25F3: and x, a            ; 92
25F4: mul x, a            ; 52
25F5: and x, a            ; 92
25F6: and y, z            ; 94
25F7: mul y, y            ; 54
25F8: mul x, a            ; 52
25F9: or y, a             ; AA
25FA: and y, z            ; 94
25FB: mul x, a            ; 52
25FC: sub a, y            ; 4A
25FD: sub a, x            ; 49
25FE: or y, a             ; AA
25FF: and y, z            ; 94
2600: or x, z             ; A4
2601: and x, a            ; 92
2602: add y, w            ; 24
2603: sub a, x            ; 49
2604: cmp a, x            ; 85
2605: and y, z            ; 94
2606: sub w, a            ; 48
2607: add y, w            ; 24
2608: sub a, x            ; 49
2609: cmpbit x            ; 8A 24
260B: add y, x            ; 21
260C: sub a, y            ; 4A
260D: store $FC00, x      ; 10 00 FC
2610: nop                 ; FF
2611: add z, a            ; 2A
2612: add z, w            ; 29
2613: cmp a, x            ; 85
2614: add y, w            ; 24
2615: or x, w             ; A5
2616: and y, z            ; 94
2617: add y, w            ; 24
2618: pop w               ; 09
2619: add y, a            ; 25
261A: add z, w            ; 29
261B: add y, w            ; 24
261C: sub a, x            ; 49
261D: or y, w             ; A9
261E: mul x, a            ; 52
261F: add y, a            ; 25
2620: sub a, x            ; 49
2621: add z, w            ; 29
2622: mul y, z            ; 55
2623: sub a, y            ; 4A
2624: mul y, z            ; 55
2625: mul y, z            ; 55
2626: add y, a            ; 25
2627: or x, w             ; A5
2628: mul x, a            ; 52
2629: sub a, y            ; 4A
262A: sub a, y            ; 4A
262B: add y, a            ; 25
262C: add z, w            ; 29
262D: pop w               ; 09
262E: add y, y            ; 22
262F: and x, w            ; 91
2630: add y, w            ; 24
2631: mul x, w            ; 51
2632: and x, a            ; 92
2633: and y, z            ; 94
2634: add x, a            ; 20
2635: sub w, y            ; 45
2636: push x              ; 01
2637: nop                 ; FC
2638: nop                 ; FF
2639: cmp w, y            ; 81
263A: sub w, x            ; 44
263B: add z, z            ; 28
263C: sub a, x            ; 49
263D: pop z               ; 08
263E: add y, y            ; 22
263F: sub a, x            ; 49
2640: mul x, a            ; 52
2641: sub a, x            ; 49
2642: sub a, y            ; 4A
2643: sub a, x            ; 49
2644: add z, a            ; 2A
2645: sub a, y            ; 4A
2646: sub a, y            ; 4A
2647: and x, a            ; 92
2648: mul y, y            ; 54
2649: sub a, y            ; 4A
264A: sub a, x            ; 49
264B: or y, w             ; A9
264C: mul x, a            ; 52
264D: sub a, y            ; 4A
264E: mul x, a            ; 52
264F: mul x, a            ; 52
2650: add z, a            ; 2A
2651: or y, w             ; A9
2652: mul x, a            ; 52
2653: mul x, a            ; 52
2654: mul x, a            ; 52
2655: and a, w            ; A2
2656: sub w, a            ; 48
2657: add y, w            ; 24
2658: sub a, x            ; 49
2659: cmpbit x            ; 8A 24
265B: add y, x            ; 21
265C: sub a, y            ; 4A
265D: store $FC04, x      ; 10 04 FC
2660: nop                 ; FF
2661: add z, a            ; 2A
2662: add z, w            ; 29
2663: sub w, y            ; 45
2664: and x, a            ; 92
2665: and a, w            ; A2
2666: cmp a, w            ; 88
2667: add y, w            ; 24
2668: pop w               ; 09
2669: and x, a            ; 92
266A: add x, a            ; 20
266B: add y, a            ; 25
266C: and x, w            ; 91
266D: and x, a            ; 92
266E: add y, w            ; 24
266F: mul y, z            ; 55
2670: and x, a            ; 92
2671: mul x, a            ; 52
2672: or y, a             ; AA
2673: add z, a            ; 2A
2674: and y, w            ; 95
2675: mul x, a            ; 52
2676: and y, w            ; 95
2677: sub a, y            ; 4A
2678: sub a, x            ; 49
2679: add y, a            ; 25
267A: cmp a, a            ; 89
267B: and y, z            ; 94
267C: sub w, x            ; 44
267D: pop w               ; 09
267E: add y, y            ; 22
267F: and x, w            ; 91
2680: add y, w            ; 24
2681: add y, x            ; 21
2682: and x, a            ; 92
2683: and y, z            ; 94
2684: add x, a            ; 20
2685: sub w, y            ; 45
2686: store $FFFC, y      ; 11 FC FF
2689: and x, z            ; 90
268A: sub w, x            ; 44
268B: and x, w            ; 91
268C: add y, w            ; 24
268D: add z, z            ; 28
268E: add y, a            ; 25
268F: sub a, x            ; 49
2690: and a, w            ; A2
2691: add y, w            ; 24
2692: and y, w            ; 95
2693: and x, z            ; 90
2694: or x, z             ; A4
2695: add y, w            ; 24
2696: or y, w             ; A9
2697: and x, a            ; 92
2698: sub a, y            ; 4A
2699: or y, a             ; AA
269A: sub a, y            ; 4A
269B: sub a, y            ; 4A
269C: sub a, x            ; 49
269D: add z, w            ; 29
269E: sub a, x            ; 49
269F: mul x, a            ; 52
26A0: and x, a            ; 92
26A1: sub w, a            ; 48
26A2: add z, a            ; 2A
26A3: add y, a            ; 25
26A4: add z, w            ; 29
26A5: or y, a             ; AA
26A6: sub w, a            ; 48
26A7: add y, w            ; 24
26A8: sub a, x            ; 49
26A9: and y, z            ; 94
26AA: add y, w            ; 24
26AB: add y, y            ; 22
26AC: pop a               ; 0A
26AD: store $FC04, x      ; 10 04 FC
26B0: nop                 ; FF
26B1: sub a, y            ; 4A
26B2: store $9244, z      ; 12 44 92
26B5: cmp w, z            ; 82
26B6: and x, z            ; 90
26B7: add y, w            ; 24
26B8: sub a, x            ; 49
26B9: and x, a            ; 92
26BA: sub w, x            ; 44
26BB: sub a, y            ; 4A
26BC: sub a, y            ; 4A
26BD: mul x, a            ; 52
26BE: add y, a            ; 25
26BF: sub a, x            ; 49
26C0: add y, w            ; 24
26C1: sub a, x            ; 49
26C2: mul x, a            ; 52
26C3: add z, w            ; 29
26C4: mul y, z            ; 55
26C5: sub a, y            ; 4A
26C6: mul y, z            ; 55
26C7: sub a, x            ; 49
26C8: mul y, z            ; 55
26C9: add z, a            ; 2A
26CA: mul x, w            ; 51
26CB: and x, a            ; 92
26CC: sub w, x            ; 44
26CD: add y, x            ; 21
26CE: push a              ; 05
26CF: and x, w            ; 91
26D0: add y, w            ; 24
26D1: sub a, x            ; 49
26D2: and x, a            ; 92
26D3: cmp a, w            ; 88
26D4: and a, y            ; A0
26D5: sub z, w            ; 42
26D6: mul x, a            ; 52
26D7: nop                 ; FC
26D8: nop                 ; FF
26D9: and x, a            ; 92
26DA: or x, z             ; A4
26DB: and x, a            ; 92
26DC: add y, w            ; 24
26DD: add z, w            ; 29
26DE: add y, a            ; 25
26DF: pop w               ; 09
26E0: and x, a            ; 92
26E1: add y, w            ; 24
26E2: and x, w            ; 91
26E3: and x, a            ; 92
26E4: and x, a            ; 92
26E5: and y, z            ; 94
26E6: and y, z            ; 94
26E7: mul y, y            ; 54
26E8: or y, w             ; A9
26E9: mul x, a            ; 52
26EA: add z, w            ; 29
26EB: or x, w             ; A5
26EC: mul x, a            ; 52
26ED: or x, w             ; A5
26EE: add y, w            ; 24
26EF: and y, w            ; 95
26F0: add y, w            ; 24
26F1: sub w, y            ; 45
26F2: pop a               ; 0A
26F3: sub a, x            ; 49
26F4: add z, w            ; 29
26F5: sub a, y            ; 4A
26F6: mul x, z            ; 50
26F7: push w              ; 04
26F8: sub a, x            ; 49
26F9: and x, a            ; 92
26FA: add y, w            ; 24
26FB: add y, y            ; 22
26FC: pop a               ; 0A
26FD: and y, z            ; 94
26FE: cmp w, x            ; 80
26FF: nop                 ; FC
2700: nop                 ; FF
2701: sub w, a            ; 48
2702: and x, a            ; 92
2703: sub w, a            ; 48
2704: and x, a            ; 92
2705: sub w, x            ; 44
2706: and y, z            ; 94
2707: or x, z             ; A4
2708: sub w, a            ; 48
2709: and x, a            ; 92
270A: add y, w            ; 24
270B: add y, w            ; 24
270C: sub w, a            ; 48
270D: add y, y            ; 22
270E: or y, w             ; A9
270F: and x, a            ; 92
2710: sub z, w            ; 42
2711: sub a, y            ; 4A
2712: sub a, y            ; 4A
2713: add z, w            ; 29
2714: sub a, x            ; 49
2715: add z, a            ; 2A
2716: sub a, x            ; 49
2717: mul x, a            ; 52
2718: and x, a            ; 92
2719: mul y, y            ; 54
271A: or y, w             ; A9
271B: add y, w            ; 24
271C: and x, a            ; 92
271D: add y, w            ; 24
271E: push a              ; 05
271F: mul x, w            ; 51
2720: add y, w            ; 24
2721: sub a, x            ; 49
2722: and x, a            ; 92
2723: and y, z            ; 94
2724: and a, y            ; A0
2725: nop                 ; 00
2726: pop a               ; 0A
2727: nop                 ; FE
2728: nop                 ; FF
2729: and x, a            ; 92
272A: add y, w            ; 24
272B: and x, a            ; 92
272C: add y, w            ; 24
272D: store $0821, y      ; 11 21 08
2730: and x, a            ; 92
2731: add y, w            ; 24
2732: sub a, x            ; 49
2733: cmp a, a            ; 89
2734: and x, a            ; 92
2735: and y, z            ; 94
2736: sub w, x            ; 44
2737: sub a, y            ; 4A
2738: add z, a            ; 2A
2739: add z, w            ; 29
273A: mul y, z            ; 55
273B: sub a, y            ; 4A
273C: add z, a            ; 2A
273D: sub a, x            ; 49
273E: or y, a             ; AA
273F: and y, z            ; 94
2740: or y, a             ; AA
2741: add y, y            ; 22
2742: add y, y            ; 22
2743: or y, w             ; A9
2744: add y, w            ; 24
2745: sub a, x            ; 49
2746: or y, w             ; A9
2747: push w              ; 04
2748: sub a, x            ; 49
2749: and x, a            ; 92
274A: add y, w            ; 24
274B: add y, x            ; 21
274C: pop a               ; 0A
274D: mul y, z            ; 55
274E: and a, y            ; A0
274F: nop                 ; FC
2750: nop                 ; FF
2751: sub w, a            ; 48
2752: and x, a            ; 92
2753: sub w, a            ; 48
2754: and x, a            ; 92
2755: sub w, x            ; 44
2756: and y, z            ; 94
2757: and a, w            ; A2
2758: sub w, a            ; 48
2759: and x, a            ; 92
275A: add y, w            ; 24
275B: mul x, a            ; 52
275C: sub a, y            ; 4A
275D: mul x, a            ; 52
275E: and x, a            ; 92
275F: add y, w            ; 24
2760: sub a, x            ; 49
2761: and x, a            ; 92
2762: or x, z             ; A4
2763: mul x, a            ; 52
2764: or x, w             ; A5
2765: mul x, a            ; 52
2766: sub a, x            ; 49
2767: sub a, x            ; 49
2768: add y, y            ; 22
2769: sub a, y            ; 4A
276A: sub a, x            ; 49
276B: sub z, w            ; 42
276C: and x, a            ; 92
276D: add y, w            ; 24
276E: add y, w            ; 24
276F: mul x, a            ; 52
2770: add y, w            ; 24
2771: sub a, x            ; 49
2772: and x, a            ; 92
2773: and y, z            ; 94
2774: add x, a            ; 20
2775: nop                 ; 00
2776: pop w               ; 09
2777: nop                 ; FC
2778: nop                 ; FF
2779: and x, a            ; 92
277A: sub w, x            ; 44
277B: store $2904, z      ; 12 04 29
277E: add y, x            ; 21
277F: pop z               ; 08
2780: cmp w, z            ; 82
2781: add y, w            ; 24
2782: cmp a, a            ; 89
2783: cmp w, a            ; 84
2784: and x, z            ; 90
2785: push w              ; 04
2786: add z, w            ; 29
2787: or y, w             ; A9
2788: and y, z            ; 94
2789: or x, z             ; A4
278A: store $4929, z      ; 12 29 49
278D: add z, a            ; 2A
278E: add y, a            ; 25
278F: mul x, a            ; 52
2790: sub a, x            ; 49
2791: and x, w            ; 91
2792: and y, z            ; 94
2793: and y, z            ; 94
2794: add y, w            ; 24
2795: sub a, x            ; 49
2796: cmp a, a            ; 89
2797: push w              ; 04
2798: sub a, x            ; 49
2799: and x, a            ; 92
279A: add y, w            ; 24
279B: add y, x            ; 21
279C: cmpbit x            ; 8A 4A
279E: sub z, y            ; 40
279F: nop                 ; FE
27A0: nop                 ; FF
27A1: sub w, a            ; 48
27A2: store $5149, z      ; 12 49 51
27A5: cmp w, a            ; 84
27A6: and y, z            ; 94
27A7: and a, w            ; A2
27A8: add z, z            ; 28
27A9: and x, a            ; 92
27AA: add y, w            ; 24
27AB: mul x, a            ; 52
27AC: sub a, y            ; 4A
27AD: mul x, a            ; 52
27AE: or x, w             ; A5
27AF: sub w, x            ; 44
27B0: mul x, a            ; 52
27B1: and x, a            ; 92
27B2: mul y, y            ; 54
27B3: or x, w             ; A5
27B4: and y, z            ; 94
27B5: or x, z             ; A4
27B6: mul y, y            ; 54
27B7: add y, a            ; 25
27B8: and y, w            ; 95
27B9: mul y, y            ; 54
27BA: mul x, a            ; 52
27BB: mul x, a            ; 52
27BC: and x, a            ; 92
27BD: add y, w            ; 24
27BE: add y, y            ; 22
27BF: mul x, w            ; 51
27C0: add y, w            ; 24
27C1: sub a, x            ; 49
27C2: cmp w, z            ; 82
27C3: cmp w, a            ; 84
27C4: add x, a            ; 20
27C5: add x, a            ; 20
27C6: store $FFFC, z      ; 12 FC FF
27C9: store $1244, z      ; 12 44 12
27CC: push w              ; 04
27CD: add z, w            ; 29
27CE: add y, x            ; 21
27CF: pop z               ; 08
27D0: cmp w, z            ; 82
27D1: push w              ; 04
27D2: cmp a, a            ; 89
27D3: store $9491, a      ; 14 91 94
27D6: store $2529, x      ; 10 29 25
27D9: sub a, x            ; 49
27DA: and x, a            ; 92
27DB: store $92A5, a      ; 14 A5 92
27DE: and x, a            ; 92
27DF: and y, z            ; 94
27E0: add y, w            ; 24
27E1: cmp a, a            ; 89
27E2: cmp w, a            ; 84
27E3: cmp w, a            ; 84
27E4: add y, w            ; 24
27E5: cmp a, a            ; 89
27E6: sub w, a            ; 48
27E7: store $9249, a      ; 14 49 92
27EA: add z, z            ; 28
27EB: add z, w            ; 29
27EC: cmpbit x            ; 8A 8A
27EE: push w              ; 04
27EF: nop                 ; FD
27F0: nop                 ; FF
27F1: sub w, a            ; 48
27F2: store $5149, y      ; 11 49 51
27F5: cmp w, x            ; 80
27F6: cmp w, a            ; 84
27F7: and a, w            ; A2
27F8: add z, z            ; 28
27F9: mul x, a            ; 52
27FA: add y, w            ; 24
27FB: sub z, w            ; 42
27FC: sub w, x            ; 44
27FD: add y, y            ; 22
27FE: sub a, y            ; 4A
27FF: and x, a            ; 92
2800: and y, z            ; 94
2801: add y, w            ; 24
2802: add y, a            ; 25
2803: or y, w             ; A9
2804: and y, z            ; 94
2805: mul y, y            ; 54
2806: sub a, y            ; 4A
2807: mul x, a            ; 52
2808: mul x, a            ; 52
2809: mul x, a            ; 52
280A: mul x, a            ; 52
280B: mul x, a            ; 52
280C: and x, a            ; 92
280D: add y, w            ; 24
280E: add y, a            ; 25
280F: sub z, z            ; 41
2810: add y, w            ; 24
2811: pop w               ; 09
2812: cmp w, z            ; 82
2813: cmp w, x            ; 80
2814: add x, a            ; 20
2815: add x, a            ; 20
2816: add x, a            ; 20
2817: nop                 ; FC
2818: nop                 ; FF
2819: store $1244, z      ; 12 44 12
281C: cmp w, a            ; 84
281D: add z, a            ; 2A
281E: add z, w            ; 29
281F: pop z               ; 08
2820: cmp w, z            ; 82
2821: push w              ; 04
2822: cmp a, a            ; 89
2823: and y, z            ; 94
2824: and x, a            ; 92
2825: cmp a, w            ; 88
2826: mul x, a            ; 52
2827: sub a, x            ; 49
2828: add y, y            ; 22
2829: sub a, x            ; 49
282A: or y, w             ; A9
282B: and x, a            ; 92
282C: mul x, a            ; 52
282D: cmpbit x            ; 8A 52
282F: add y, a            ; 25
2830: cmp a, a            ; 89
2831: cmpbit x            ; 8A 94
2833: and y, z            ; 94
2834: add y, w            ; 24
2835: sub a, x            ; 49
2836: sub w, a            ; 48
2837: store $A241, a      ; 14 41 A2
283A: add z, z            ; 28
283B: add z, a            ; 2A
283C: cmpbit x            ; 8A 0A
283E: pop w               ; 09
283F: nop                 ; FD
2840: nop                 ; FF
2841: sub w, a            ; 48
2842: store $5141, y      ; 11 41 51
2845: cmp w, x            ; 80
2846: cmp w, x            ; 80
2847: and a, w            ; A2
2848: add z, z            ; 28
2849: mul x, a            ; 52
284A: add y, w            ; 24
284B: sub z, w            ; 42
284C: sub w, a            ; 48
284D: mul x, a            ; 52
284E: cmp w, a            ; 84
284F: add y, w            ; 24
2850: sub a, x            ; 49
2851: add y, a            ; 25
2852: sub a, y            ; 4A
2853: sub a, y            ; 4A
2854: sub a, y            ; 4A
2855: or y, w             ; A9
2856: add y, w            ; 24
2857: sub a, x            ; 49
2858: mul x, a            ; 52
2859: add y, w            ; 24
285A: sub z, z            ; 41
285B: sub z, w            ; 42
285C: and x, a            ; 92
285D: add y, w            ; 24
285E: add y, a            ; 25
285F: and a, z            ; A1
2860: store $8209, a      ; 14 09 82
2863: cmp w, x            ; 80
2864: add x, a            ; 20
2865: add x, a            ; 20
2866: sub w, x            ; 44
2867: nop                 ; FC
2868: nop                 ; FF
2869: store $1444, z      ; 12 44 14
286C: push w              ; 04
286D: add z, a            ; 2A
286E: add z, a            ; 2A
286F: pop z               ; 08
2870: cmp w, z            ; 82
2871: push w              ; 04
2872: cmp a, a            ; 89
2873: and y, z            ; 94
2874: and x, a            ; 92
2875: add y, w            ; 24
2876: add z, w            ; 29
2877: and x, a            ; 92
2878: and y, z            ; 94
2879: and x, z            ; 90
287A: add y, y            ; 22
287B: or y, w             ; A9
287C: add y, w            ; 24
287D: add y, a            ; 25
287E: sub a, x            ; 49
287F: and x, a            ; 92
2880: add y, w            ; 24
2881: or y, w             ; A9
2882: and y, z            ; 94
2883: and y, z            ; 94
2884: add y, w            ; 24
2885: cmp a, a            ; 89
2886: sub w, a            ; 48
2887: pop a               ; 0A
2888: sub z, z            ; 41
2889: and a, w            ; A2
288A: add z, z            ; 28
288B: add z, a            ; 2A
288C: cmpbit x            ; 8A 44
288E: push x              ; 01
288F: nop                 ; FC
2890: nop                 ; FF
2891: sub w, a            ; 48
2892: store $5141, y      ; 11 41 51
2895: cmp w, y            ; 81
2896: cmp w, x            ; 80
2897: and a, w            ; A2
2898: add z, z            ; 28
2899: mul x, z            ; 50
289A: add y, w            ; 24
289B: sub z, w            ; 42
289C: sub w, a            ; 48
289D: and x, a            ; 92
289E: or x, z             ; A4
289F: add y, w            ; 24
28A0: mul x, w            ; 51
28A1: sub a, y            ; 4A
28A2: and y, z            ; 94
28A3: add y, w            ; 24
28A4: or y, w             ; A9
28A5: and y, z            ; 94
28A6: add z, a            ; 2A
28A7: sub a, x            ; 49
28A8: and x, a            ; 92
28A9: cmp w, a            ; 84
28AA: mul x, a            ; 52
28AB: add y, y            ; 22
28AC: and x, a            ; 92
28AD: add y, w            ; 24
28AE: add y, y            ; 22
28AF: and a, z            ; A1
28B0: store $8209, a      ; 14 09 82
28B3: cmp w, x            ; 80
28B4: add x, a            ; 20
28B5: store $FD28, z      ; 12 28 FD
28B8: nop                 ; FF
28B9: store $1444, z      ; 12 44 14
28BC: push w              ; 04
28BD: add z, z            ; 28
28BE: add z, a            ; 2A
28BF: pop z               ; 08
28C0: sub z, w            ; 42
28C1: push a              ; 05
28C2: cmp a, a            ; 89
28C3: and x, z            ; 90
28C4: and x, a            ; 92
28C5: add y, w            ; 24
28C6: pop w               ; 09
28C7: sub a, x            ; 49
28C8: cmpbit x            ; 8A 24
28CA: or x, w             ; A5
28CB: and x, a            ; 92
28CC: sub a, y            ; 4A
28CD: and a, w            ; A2
28CE: sub w, x            ; 44
28CF: add z, a            ; 2A
28D0: sub a, x            ; 49
28D1: mul x, a            ; 52
28D2: cmp w, a            ; 84
28D3: cmp a, w            ; 88
28D4: add y, w            ; 24
28D5: cmp a, a            ; 89
28D6: pop z               ; 08
28D7: pop a               ; 0A
28D8: sub z, z            ; 41
28D9: and a, w            ; A2
28DA: add z, z            ; 28
28DB: add z, a            ; 2A
28DC: cmp a, a            ; 89
28DD: sub z, y            ; 40
28DE: push y              ; 02
28DF: nop                 ; FC
28E0: nop                 ; FF
28E1: sub w, a            ; 48
28E2: store $5141, y      ; 11 41 51
28E5: cmp a, x            ; 85
28E6: cmp w, x            ; 80
28E7: and a, w            ; A2
28E8: pop z               ; 08
28E9: mul x, z            ; 50
28EA: add x, a            ; 20
28EB: pop a               ; 0A
28EC: sub w, a            ; 48
28ED: and x, a            ; 92
28EE: or x, z             ; A4
28EF: add y, w            ; 24
28F0: mul x, w            ; 51
28F1: and x, a            ; 92
28F2: store $9249, x      ; 10 49 92
28F5: add z, a            ; 2A
28F6: add z, w            ; 29
28F7: and x, w            ; 91
28F8: add y, w            ; 24
28F9: pop w               ; 09
28FA: add z, w            ; 29
28FB: mul x, a            ; 52
28FC: and x, a            ; 92
28FD: add y, w            ; 24
28FE: or x, w             ; A5
28FF: add x, a            ; 20
2900: store $8209, a      ; 14 09 82
2903: nop                 ; 00
2904: sub w, x            ; 44
2905: push w              ; 04
2906: and x, w            ; 91
2907: nop                 ; FC
2908: nop                 ; FF
