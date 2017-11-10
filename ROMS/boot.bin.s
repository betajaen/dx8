0000: store $1300, x      ; 10 00 13
0003: nop                 ; 00
0004: call $0000          ; 15 00 00
0007: nop                 ; 00
0008: nop                 ; 00
0009: nop                 ; 00
000A: nop                 ; 00
000B: nop                 ; 00
000C: nop                 ; 00
000D: nop                 ; 00
000E: nop                 ; 00
000F: nop                 ; 00
0010: jmp $008F           ; E9 8F 00
0013: nop                 ; 00
0014: resume              ; F7 00
0016: resume              ; F7 14
0018: store $1B40, x      ; 10 40 1B
001B: nop                 ; 00
001C: store $4012, a      ; 14 12 40
001F: set a, $80          ; 1B 80
0021: store $4013, a      ; 14 13 40
0024: set a, $00          ; 1B 00
0026: store $4014, a      ; 14 14 40
0029: set a, $28          ; 1B 28
002B: store $4015, a      ; 14 15 40
002E: int $01             ; F6 01
0030: set a, $FF          ; 1B FF
0032: call $0087          ; 15 87 00
0035: return              ; 16
0036: store $4010, a      ; 14 10 40
0039: set a, $00          ; 1B 00
003B: store $4012, a      ; 14 12 40
003E: set a, $A8          ; 1B A8
0040: store $4013, a      ; 14 13 40
0043: set a, $00          ; 1B 00
0045: store $4014, a      ; 14 14 40
0048: set a, $28          ; 1B 28
004A: store $4015, a      ; 14 15 40
004D: int $01             ; F6 01
004F: set a, $FF          ; 1B FF
0051: call $0087          ; 15 87 00
0054: return              ; 16
0055: set a, $00          ; 1B 00
0057: store $4012, a      ; 14 12 40
005A: set a, $80          ; 1B 80
005C: store $4013, a      ; 14 13 40
005F: store $4014, x      ; 10 14 40
0062: store $4015, y      ; 11 15 40
0065: store $4016, z      ; 12 16 40
0068: store $4017, w      ; 13 17 40
006B: int $03             ; F6 03
006D: return              ; 16
006E: set a, $00          ; 1B 00
0070: store $4012, a      ; 14 12 40
0073: set a, $A8          ; 1B A8
0075: store $4013, a      ; 14 13 40
0078: store $4014, x      ; 10 14 40
007B: store $4015, y      ; 11 15 40
007E: store $4016, z      ; 12 16 40
0081: store $4017, w      ; 13 17 40
0084: int $03             ; F6 03
0086: return              ; 16
0087: jmp.z $008E         ; F5 8E 00
008A: dec a               ; 70
008B: jmp $0087           ; E9 87 00
008E: return              ; 16
008F: set a, $03          ; 1B 03
0091: store $5000, a      ; 14 00 50
0094: set a, $0F          ; 1B 0F
0096: jmp $0017           ; E9 17 00
0099: set a, $F0          ; 1B F0
009B: jmp $0036           ; E9 36 00
009E: nop                 ; 00
009F: inc x               ; 67
00A0: jmp $009E           ; E9 9E 00
00A3: nop                 ; 00
00A4: nop                 ; 00
00A5: nop                 ; 00
00A6: nop                 ; 00
00A7: nop                 ; 00
00A8: nop                 ; 00
00A9: nop                 ; 00
00AA: nop                 ; 00
00AB: nop                 ; 00
00AC: nop                 ; 00
00AD: nop                 ; 00
00AE: nop                 ; 00
00AF: nop                 ; 00
00B0: nop                 ; 00
00B1: nop                 ; 00
00B2: nop                 ; 00
00B3: nop                 ; 00
00B4: nop                 ; 00
00B5: nop                 ; 00
00B6: nop                 ; 00
00B7: nop                 ; 00
00B8: nop                 ; 00
00B9: nop                 ; 00
00BA: nop                 ; 00
00BB: nop                 ; 00
00BC: nop                 ; 00
00BD: nop                 ; 00
00BE: nop                 ; 00
00BF: nop                 ; 00
00C0: nop                 ; 00
00C1: nop                 ; 00
00C2: nop                 ; 00
00C3: nop                 ; 00
00C4: nop                 ; 00
00C5: nop                 ; 00
00C6: nop                 ; 00
00C7: nop                 ; 00
00C8: nop                 ; 00
00C9: nop                 ; FC
00CA: nop                 ; FF
00CB: nop                 ; 00
00CC: nop                 ; 00
00CD: nop                 ; 00
00CE: nop                 ; 00
00CF: nop                 ; 00
00D0: nop                 ; 00
00D1: nop                 ; 00
00D2: nop                 ; 00
00D3: nop                 ; 00
00D4: nop                 ; 00
00D5: nop                 ; 00
00D6: nop                 ; 00
00D7: nop                 ; 00
00D8: nop                 ; 00
00D9: nop                 ; 00
00DA: nop                 ; 00
00DB: nop                 ; 00
00DC: nop                 ; 00
00DD: nop                 ; 00
00DE: nop                 ; 00
00DF: nop                 ; 00
00E0: nop                 ; 00
00E1: nop                 ; 00
00E2: nop                 ; 00
00E3: nop                 ; 00
00E4: nop                 ; 00
00E5: nop                 ; 00
00E6: nop                 ; 00
00E7: nop                 ; 00
00E8: nop                 ; 00
00E9: nop                 ; 00
00EA: nop                 ; 00
00EB: nop                 ; 00
00EC: nop                 ; 00
00ED: nop                 ; 00
00EE: nop                 ; 00
00EF: nop                 ; 00
00F0: nop                 ; 00
00F1: nop                 ; FC
00F2: nop                 ; FF
00F3: nop                 ; 00
00F4: nop                 ; 00
00F5: nop                 ; 00
00F6: nop                 ; 00
00F7: nop                 ; 00
00F8: nop                 ; 00
00F9: nop                 ; 00
00FA: nop                 ; 00
00FB: nop                 ; 00
00FC: nop                 ; 00
00FD: nop                 ; 00
00FE: push y              ; 02
00FF: nop                 ; 00
0100: nop                 ; 00
0101: nop                 ; 00
0102: nop                 ; 00
0103: nop                 ; 00
0104: nop                 ; 00
0105: nop                 ; 00
0106: nop                 ; 00
0107: nop                 ; 00
0108: nop                 ; 00
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
0119: nop                 ; FC
011A: nop                 ; FF
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
0141: nop                 ; FC
0142: nop                 ; FF
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
0169: nop                 ; FC
016A: nop                 ; FF
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
0191: nop                 ; FC
0192: nop                 ; FF
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
01B9: nop                 ; FC
01BA: nop                 ; FF
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
01E1: nop                 ; FC
01E2: nop                 ; FF
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
0209: nop                 ; FC
020A: nop                 ; FF
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
0231: nop                 ; FC
0232: nop                 ; FF
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
0259: nop                 ; FC
025A: nop                 ; FF
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
0281: nop                 ; FC
0282: nop                 ; FF
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
02A9: nop                 ; FC
02AA: nop                 ; FF
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
02D1: nop                 ; FC
02D2: nop                 ; FF
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
02F9: nop                 ; FC
02FA: nop                 ; FF
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
0321: nop                 ; FC
0322: nop                 ; FF
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
0349: nop                 ; FC
034A: nop                 ; FF
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
0371: nop                 ; FC
0372: nop                 ; FF
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
0399: nop                 ; FC
039A: nop                 ; FF
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
03C1: nop                 ; FC
03C2: nop                 ; FF
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
03E9: nop                 ; FC
03EA: nop                 ; FF
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
0411: nop                 ; FC
0412: nop                 ; FF
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
0439: nop                 ; FC
043A: nop                 ; FF
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
0461: nop                 ; FC
0462: nop                 ; FF
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
0489: nop                 ; FC
048A: nop                 ; FF
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
04B1: nop                 ; FC
04B2: nop                 ; FF
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
04D9: nop                 ; FC
04DA: nop                 ; FF
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
0501: nop                 ; FC
0502: nop                 ; FF
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
0529: nop                 ; FC
052A: nop                 ; FF
052B: nop                 ; 00
052C: nop                 ; 00
052D: nop                 ; 00
052E: nop                 ; 00
052F: nop                 ; 00
0530: nop                 ; 00
0531: nop                 ; 00
0532: nop                 ; 00
0533: store $0000, x      ; 10 00 00
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
0551: nop                 ; FC
0552: nop                 ; FF
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
0579: nop                 ; FC
057A: nop                 ; FF
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
05A1: nop                 ; FC
05A2: nop                 ; FF
05A3: nop                 ; 00
05A4: nop                 ; 00
05A5: nop                 ; 00
05A6: nop                 ; 00
05A7: nop                 ; 00
05A8: nop                 ; 00
05A9: nop                 ; 00
05AA: nop                 ; 00
05AB: push x              ; 01
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
05C9: nop                 ; FC
05CA: nop                 ; FF
05CB: nop                 ; 00
05CC: nop                 ; 00
05CD: nop                 ; 00
05CE: nop                 ; 00
05CF: nop                 ; 00
05D0: nop                 ; 00
05D1: nop                 ; 00
05D2: add x, a            ; 20
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
05F1: nop                 ; FC
05F2: nop                 ; FF
05F3: nop                 ; 00
05F4: nop                 ; 00
05F5: nop                 ; 00
05F6: jmp.lt $02B7        ; F4 B7 02
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
0619: nop                 ; FC
061A: nop                 ; FF
061B: nop                 ; 00
061C: nop                 ; 00
061D: cmp w, x            ; 80
061E: not w               ; BA
061F: shr w               ; DD
0620: nop                 ; FA
0621: mul z, w            ; 5B
0622: sub z, z            ; 41
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
0641: nop                 ; FC
0642: nop                 ; FF
0643: nop                 ; 00
0644: nop                 ; 00
0645: rol y               ; E0
0646: nop                 ; FF
0647: store $F7ED, z      ; 12 ED F7
064A: xor x, z            ; BE
064B: add z, a            ; 2A
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
0669: nop                 ; FC
066A: nop                 ; FF
066B: nop                 ; 00
066C: nop                 ; 00
066D: nop                 ; 00
066E: mul w, z            ; 5F
066F: nop                 ; 00
0670: jmp $AB5A, a        ; F0 5A AB
0673: mul y, z            ; 55
0674: and y, w            ; 95
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
0691: nop                 ; FC
0692: nop                 ; FF
0693: nop                 ; 00
0694: nop                 ; 00
0695: nop                 ; 00
0696: jmp $2FFF, a        ; F0 FF 2F
0699: nop                 ; 00
069A: nop                 ; 00
069B: nop                 ; 00
069C: mul x, a            ; 52
069D: or z, w             ; AD
069E: pop a               ; 0A
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
06AD: nop                 ; 00
06AE: nop                 ; 00
06AF: nop                 ; 00
06B0: nop                 ; 00
06B1: nop                 ; 00
06B2: nop                 ; 00
06B3: nop                 ; 00
06B4: nop                 ; 00
06B5: nop                 ; 00
06B6: nop                 ; 00
06B7: nop                 ; 00
06B8: nop                 ; 00
06B9: nop                 ; FC
06BA: nop                 ; FF
06BB: sub z, y            ; 40
06BC: nop                 ; 00
06BD: nop                 ; 00
06BE: sub z, y            ; 40
06BF: add w, a            ; 2F
06C0: nop                 ; 00
06C1: nop                 ; 00
06C2: nop                 ; 00
06C3: nop                 ; 00
06C4: nop                 ; 00
06C5: and a, y            ; A0
06C6: jmp x, y            ; EA
06C7: mul y, z            ; 55
06C8: push x              ; 01
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
06D5: nop                 ; 00
06D6: nop                 ; 00
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
06E1: nop                 ; FC
06E2: nop                 ; FF
06E3: store $0805, x      ; 10 05 08
06E6: nop                 ; 00
06E7: ror a               ; E8
06E8: push a              ; 05
06E9: cmp w, z            ; 82
06EA: add y, w            ; 24
06EB: sub w, a            ; 48
06EC: nop                 ; 00
06ED: nop                 ; 00
06EE: nop                 ; 00
06EF: and a, y            ; A0
06F0: cmp z, w            ; 7E
06F1: push a              ; 05
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
0709: nop                 ; FC
070A: nop                 ; FF
070B: sub z, w            ; 42
070C: nop                 ; 00
070D: nop                 ; 00
070E: nop                 ; 00
070F: mul x, z            ; 50
0710: xor x, w            ; BF
0711: store $B580, x      ; 10 80 B5
0714: mul y, a            ; 57
0715: push a              ; 05
0716: nop                 ; 00
0717: nop                 ; 00
0718: cmp w, y            ; 81
0719: or y, z             ; A8
071A: pop a               ; 0A
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
0725: nop                 ; 00
0726: nop                 ; 00
0727: nop                 ; 00
0728: nop                 ; 00
0729: nop                 ; 00
072A: nop                 ; 00
072B: nop                 ; 00
072C: nop                 ; 00
072D: nop                 ; 00
072E: nop                 ; 00
072F: nop                 ; 00
0730: nop                 ; 00
0731: nop                 ; FC
0732: nop                 ; FF
0733: xor a, x            ; D0
0734: push y              ; 02
0735: nop                 ; 00
0736: nop                 ; 00
0737: nop                 ; 00
0738: jmp x, y            ; EA
0739: cmp a, z            ; 87
073A: cmp y, a            ; 7A
073B: dec w               ; 6F
073C: nop                 ; FD
073D: nop                 ; FF
073E: add z, a            ; 2A
073F: sub z, y            ; 40
0740: mul w, z            ; 5F
0741: or y, a             ; AA
0742: nop                 ; 00
0743: add x, a            ; 20
0744: nop                 ; 00
0745: nop                 ; 00
0746: nop                 ; 00
0747: nop                 ; 00
0748: nop                 ; 00
0749: nop                 ; 00
074A: nop                 ; 00
074B: nop                 ; 00
074C: nop                 ; 00
074D: nop                 ; 00
074E: nop                 ; 00
074F: nop                 ; 00
0750: nop                 ; 00
0751: nop                 ; 00
0752: nop                 ; 00
0753: nop                 ; 00
0754: nop                 ; 00
0755: nop                 ; 00
0756: nop                 ; 00
0757: nop                 ; 00
0758: nop                 ; 00
0759: nop                 ; FC
075A: nop                 ; FF
075B: ror x               ; E4
075C: push y              ; 02
075D: store $0004, x      ; 10 04 00
0760: jmp $AFFE           ; E9 FE AF
0763: xor x, y            ; BD
0764: set x, $A9          ; 17 A9
0766: or z, x             ; AB
0767: or w, x             ; AF
0768: and a, y            ; A0
0769: add y, a            ; 25
076A: or y, w             ; A9
076B: sub a, y            ; 4A
076C: mul y, z            ; 55
076D: mul y, z            ; 55
076E: push x              ; 01
076F: nop                 ; 00
0770: nop                 ; 00
0771: nop                 ; 00
0772: nop                 ; 00
0773: nop                 ; 00
0774: nop                 ; 00
0775: nop                 ; 00
0776: nop                 ; 00
0777: nop                 ; 00
0778: nop                 ; 00
0779: nop                 ; 00
077A: nop                 ; 00
077B: nop                 ; 00
077C: nop                 ; 00
077D: nop                 ; 00
077E: nop                 ; 00
077F: nop                 ; 00
0780: nop                 ; 00
0781: nop                 ; FC
0782: nop                 ; FF
0783: xor z, z            ; C8
0784: push a              ; 05
0785: sub z, y            ; 40
0786: cmp w, x            ; 80
0787: push w              ; 04
0788: cmp w, x            ; 80
0789: mul y, z            ; 55
078A: jmp.z $E96B         ; F5 6B E9
078D: mul y, w            ; 56
078E: sub a, y            ; 4A
078F: mul z, y            ; 59
0790: mul w, x            ; 5D
0791: mul y, z            ; 55
0792: push y              ; 02
0793: mul x, w            ; 51
0794: push y              ; 02
0795: add x, a            ; 20
0796: push y              ; 02
0797: nop                 ; 00
0798: nop                 ; 00
0799: nop                 ; 00
079A: nop                 ; 00
079B: nop                 ; 00
079C: nop                 ; 00
079D: nop                 ; 00
079E: nop                 ; 00
079F: nop                 ; 00
07A0: nop                 ; 00
07A1: nop                 ; 00
07A2: nop                 ; 00
07A3: nop                 ; 00
07A4: nop                 ; 00
07A5: nop                 ; 00
07A6: nop                 ; 00
07A7: nop                 ; 00
07A8: nop                 ; 00
07A9: nop                 ; FC
07AA: nop                 ; FF
07AB: add x, a            ; 20
07AC: nop                 ; 00
07AD: nop                 ; 00
07AE: add x, a            ; 20
07AF: add x, a            ; 20
07B0: add y, w            ; 24
07B1: sub a, y            ; 4A
07B2: mul w, z            ; 5F
07B3: or z, w             ; AD
07B4: or z, w             ; AD
07B5: sub a, y            ; 4A
07B6: inc z               ; 69
07B7: jmp $0557, w        ; EF 57 05
07BA: or y, w             ; A9
07BB: sub a, w            ; 4C
07BC: or y, w             ; A9
07BD: pop a               ; 0A
07BE: nop                 ; 00
07BF: nop                 ; 00
07C0: nop                 ; 00
07C1: nop                 ; 00
07C2: nop                 ; 00
07C3: nop                 ; 00
07C4: nop                 ; 00
07C5: nop                 ; 00
07C6: nop                 ; 00
07C7: nop                 ; 00
07C8: nop                 ; 00
07C9: nop                 ; 00
07CA: nop                 ; 00
07CB: nop                 ; 00
07CC: nop                 ; 00
07CD: nop                 ; 00
07CE: nop                 ; 00
07CF: nop                 ; 00
07D0: nop                 ; 00
07D1: nop                 ; FC
07D2: nop                 ; FF
07D3: sub z, y            ; 40
07D4: add y, x            ; 21
07D5: nop                 ; 00
07D6: pop z               ; 08
07D7: cmp w, x            ; 80
07D8: sub w, a            ; 48
07D9: store $7BF5, x      ; 10 F5 7B
07DC: not a               ; BB
07DD: mul y, x            ; 53
07DE: nop                 ; FF
07DF: sub a, y            ; 4A
07E0: or x, w             ; A5
07E1: xor a, a            ; D4
07E2: sub x, y            ; 36
07E3: add y, x            ; 21
07E4: mul y, z            ; 55
07E5: add y, a            ; 25
07E6: or y, z             ; A8
07E7: nop                 ; 00
07E8: nop                 ; 00
07E9: nop                 ; 00
07EA: nop                 ; 00
07EB: nop                 ; 00
07EC: nop                 ; 00
07ED: nop                 ; 00
07EE: nop                 ; 00
07EF: nop                 ; 00
07F0: nop                 ; 00
07F1: nop                 ; 00
07F2: nop                 ; 00
07F3: nop                 ; 00
07F4: nop                 ; 00
07F5: nop                 ; 00
07F6: nop                 ; 00
07F7: nop                 ; 00
07F8: nop                 ; 00
07F9: nop                 ; FC
07FA: nop                 ; FF
07FB: add x, a            ; 20
07FC: nop                 ; 00
07FD: add x, a            ; 20
07FE: jmp x, y            ; EA
07FF: pop a               ; 0A
0800: push y              ; 02
0801: sub z, z            ; 41
0802: mul z, z            ; 5A
0803: rol x               ; DF
0804: dec y               ; 6D
0805: nop                 ; FD
0806: add w, z            ; 2D
0807: or x, z             ; A4
0808: mul y, z            ; 55
0809: not a               ; BB
080A: cmpbit x            ; 8A 94
080C: add y, w            ; 24
080D: and x, a            ; 92
080E: cmp w, z            ; 82
080F: pop a               ; 0A
0810: nop                 ; 00
0811: nop                 ; 00
0812: nop                 ; 00
0813: nop                 ; 00
0814: nop                 ; 00
0815: nop                 ; 00
0816: nop                 ; 00
0817: nop                 ; 00
0818: nop                 ; 00
0819: nop                 ; 00
081A: nop                 ; 00
081B: nop                 ; 00
081C: nop                 ; 00
081D: nop                 ; 00
081E: nop                 ; 00
081F: nop                 ; 00
0820: nop                 ; 00
0821: nop                 ; FC
0822: nop                 ; FF
0823: cmp w, x            ; 80
0824: nop                 ; 00
0825: nop                 ; 00
0826: mul z, x            ; 58
0827: mul y, z            ; 55
0828: mul x, z            ; 50
0829: cmp a, w            ; 88
082A: xor a, x            ; D0
082B: or a, z             ; B5
082C: shl y               ; D6
082D: load x, $BB50       ; 0B 50 BB
0830: or a, w             ; B6
0831: or y, a             ; AA
0832: sub x, x            ; 35
0833: add y, y            ; 22
0834: or y, w             ; A9
0835: add y, w            ; 24
0836: add z, z            ; 28
0837: nop                 ; 00
0838: nop                 ; 00
0839: nop                 ; 00
083A: nop                 ; 00
083B: nop                 ; 00
083C: nop                 ; 00
083D: nop                 ; 00
083E: nop                 ; 00
083F: nop                 ; 00
0840: nop                 ; 00
0841: nop                 ; 00
0842: nop                 ; 00
0843: nop                 ; 00
0844: nop                 ; 00
0845: nop                 ; 00
0846: nop                 ; 00
0847: nop                 ; 00
0848: nop                 ; 00
0849: nop                 ; FC
084A: nop                 ; FF
084B: nop                 ; 00
084C: nop                 ; 00
084D: cmp w, x            ; 80
084E: xor a, a            ; D4
084F: push y              ; 02
0850: push a              ; 05
0851: push y              ; 02
0852: push y              ; 02
0853: or y, a             ; AA
0854: sub y, y            ; 3B
0855: nop                 ; 00
0856: push x              ; 01
0857: and a, y            ; A0
0858: shr x               ; DA
0859: mul y, w            ; 56
085A: mul y, z            ; 55
085B: cmp a, w            ; 88
085C: nop                 ; 00
085D: and x, z            ; 90
085E: nop                 ; 00
085F: cmp w, a            ; 84
0860: nop                 ; 00
0861: nop                 ; 00
0862: nop                 ; 00
0863: nop                 ; 00
0864: nop                 ; 00
0865: nop                 ; 00
0866: nop                 ; 00
0867: nop                 ; 00
0868: nop                 ; 00
0869: nop                 ; 00
086A: nop                 ; 00
086B: nop                 ; 00
086C: nop                 ; 00
086D: nop                 ; 00
086E: nop                 ; 00
086F: nop                 ; 00
0870: nop                 ; 00
0871: nop                 ; FC
0872: nop                 ; FF
0873: nop                 ; 00
0874: nop                 ; 00
0875: push w              ; 04
0876: inc y               ; 68
0877: mul w, z            ; 5F
0878: nop                 ; 00
0879: and a, y            ; A0
087A: or y, z             ; A8
087B: sub a, y            ; 4A
087C: sub a, y            ; 4A
087D: inc z               ; 69
087E: or z, w             ; AD
087F: mul w, w            ; 60
0880: cmp a, x            ; 85
0881: or z, w             ; AD
0882: cmpbit x            ; 8A 22
0884: nop                 ; 00
0885: nop                 ; 00
0886: nop                 ; 00
0887: store $0000, y      ; 11 00 00
088A: nop                 ; 00
088B: nop                 ; 00
088C: nop                 ; 00
088D: nop                 ; 00
088E: nop                 ; 00
088F: nop                 ; 00
0890: nop                 ; 00
0891: nop                 ; 00
0892: nop                 ; 00
0893: nop                 ; 00
0894: nop                 ; 00
0895: nop                 ; 00
0896: nop                 ; 00
0897: nop                 ; 00
0898: nop                 ; 00
0899: nop                 ; FC
089A: nop                 ; FF
089B: nop                 ; 00
089C: nop                 ; 00
089D: add y, x            ; 21
089E: shr a               ; DE
089F: cmp x, a            ; 75
08A0: or y, w             ; A9
08A1: pop a               ; 0A
08A2: push y              ; 02
08A3: add x, a            ; 20
08A4: add y, x            ; 21
08A5: or y, a             ; AA
08A6: mul x, a            ; 52
08A7: or z, x             ; AB
08A8: and y, z            ; 94
08A9: and z, x            ; 97
08AA: add x, a            ; 20
08AB: and x, z            ; 90
08AC: nop                 ; 00
08AD: nop                 ; 00
08AE: and x, a            ; 92
08AF: push w              ; 04
08B0: nop                 ; 00
08B1: nop                 ; 00
08B2: nop                 ; 00
08B3: nop                 ; 00
08B4: nop                 ; 00
08B5: nop                 ; 00
08B6: nop                 ; 00
08B7: nop                 ; 00
08B8: nop                 ; 00
08B9: nop                 ; 00
08BA: nop                 ; 00
08BB: nop                 ; 00
08BC: nop                 ; 00
08BD: nop                 ; 00
08BE: nop                 ; 00
08BF: nop                 ; 00
08C0: nop                 ; 00
08C1: nop                 ; FC
08C2: nop                 ; FF
08C3: nop                 ; 00
08C4: add x, a            ; 20
08C5: sub z, y            ; 40
08C6: or w, y             ; B0
08C7: shr a               ; DE
08C8: push w              ; 04
08C9: and a, y            ; A0
08CA: or y, a             ; AA
08CB: pop a               ; 0A
08CC: sub a, y            ; 4A
08CD: mul y, z            ; 55
08CE: or z, w             ; AD
08CF: or x, a             ; A6
08D0: add z, a            ; 2A
08D1: mul y, y            ; 54
08D2: sub a, y            ; 4A
08D3: add y, a            ; 25
08D4: push a              ; 05
08D5: cmp w, x            ; 80
08D6: or x, z             ; A4
08D7: nop                 ; 00
08D8: nop                 ; 00
08D9: nop                 ; 00
08DA: nop                 ; 00
08DB: nop                 ; 00
08DC: nop                 ; 00
08DD: nop                 ; 00
08DE: nop                 ; 00
08DF: nop                 ; 00
08E0: nop                 ; 00
08E1: nop                 ; 00
08E2: nop                 ; 00
08E3: nop                 ; 00
08E4: nop                 ; 00
08E5: nop                 ; 00
08E6: nop                 ; 00
08E7: nop                 ; 00
08E8: nop                 ; 00
08E9: nop                 ; FC
08EA: nop                 ; FF
08EB: nop                 ; 00
08EC: nop                 ; 00
08ED: push w              ; 04
08EE: shr w               ; DD
08EF: inc a               ; 6B
08F0: shl x               ; D5
08F1: mul y, a            ; 57
08F2: mul y, z            ; 55
08F3: and a, w            ; A2
08F4: nop                 ; 00
08F5: or z, w             ; AD
08F6: inc w               ; 6A
08F7: add z, w            ; 29
08F8: and y, w            ; 95
08F9: sub a, y            ; 4A
08FA: add z, w            ; 29
08FB: and x, a            ; 92
08FC: or y, z             ; A8
08FD: add z, a            ; 2A
08FE: store $0000, z      ; 12 00 00
0901: nop                 ; 00
0902: nop                 ; 00
0903: nop                 ; 00
0904: nop                 ; 00
0905: nop                 ; 00
0906: nop                 ; 00
0907: nop                 ; 00
0908: nop                 ; 00
0909: nop                 ; 00
090A: nop                 ; 00
090B: nop                 ; 00
090C: nop                 ; 00
090D: nop                 ; 00
090E: nop                 ; 00
090F: nop                 ; 00
0910: nop                 ; 00
0911: nop                 ; FC
0912: nop                 ; FF
0913: nop                 ; 00
0914: cmp w, x            ; 80
0915: add x, a            ; 20
0916: or a, y             ; B4
0917: shr a               ; DE
0918: add z, a            ; 2A
0919: nop                 ; FF
091A: xor x, w            ; BF
091B: pop a               ; 0A
091C: mul y, z            ; 55
091D: or y, a             ; AA
091E: or a, w             ; B6
091F: cmp w, z            ; 82
0920: or y, a             ; AA
0921: and x, a            ; 92
0922: cmp w, a            ; 84
0923: add y, w            ; 24
0924: push y              ; 02
0925: cmp w, x            ; 80
0926: push w              ; 04
0927: sub z, y            ; 40
0928: push y              ; 02
0929: nop                 ; 00
092A: nop                 ; 00
092B: nop                 ; 00
092C: nop                 ; 00
092D: nop                 ; 00
092E: nop                 ; 00
092F: nop                 ; 00
0930: nop                 ; 00
0931: nop                 ; 00
0932: nop                 ; 00
0933: nop                 ; 00
0934: nop                 ; 00
0935: nop                 ; 00
0936: nop                 ; 00
0937: nop                 ; 00
0938: nop                 ; 00
0939: nop                 ; FC
093A: nop                 ; FF
093B: nop                 ; 00
093C: nop                 ; 00
093D: store $7BD5, x      ; 10 D5 7B
0940: xor a, z            ; D2
0941: nop                 ; FF
0942: nop                 ; FF
0943: mul y, z            ; 55
0944: add x, a            ; 20
0945: or y, w             ; A9
0946: sub a, a            ; 4D
0947: inc z               ; 69
0948: nop                 ; FD
0949: sub a, a            ; 4D
094A: mul x, a            ; 52
094B: and x, a            ; 92
094C: mul y, y            ; 54
094D: mul z, w            ; 5B
094E: sub z, w            ; 42
094F: call $0029          ; 15 29 00
0952: nop                 ; 00
0953: nop                 ; 00
0954: nop                 ; 00
0955: nop                 ; 00
0956: nop                 ; 00
0957: nop                 ; 00
0958: nop                 ; 00
0959: nop                 ; 00
095A: nop                 ; 00
095B: nop                 ; 00
095C: nop                 ; 00
095D: nop                 ; 00
095E: nop                 ; 00
095F: nop                 ; 00
0960: nop                 ; 00
0961: nop                 ; FC
0962: nop                 ; FF
0963: nop                 ; 00
0964: nop                 ; 00
0965: sub z, w            ; 42
0966: not y               ; B8
0967: or z, a             ; AE
0968: or z, w             ; AD
0969: nop                 ; FF
096A: nop                 ; FF
096B: jmp $524A, w        ; EF 4A 52
096E: mul y, x            ; 53
096F: or y, a             ; AA
0970: mul y, w            ; 56
0971: not a               ; BB
0972: and y, z            ; 94
0973: sub w, x            ; 44
0974: cmp w, z            ; 82
0975: or x, z             ; A4
0976: store $84A8, a      ; 14 A8 84
0979: nop                 ; 00
097A: nop                 ; 00
097B: nop                 ; 00
097C: nop                 ; 00
097D: nop                 ; 00
097E: nop                 ; 00
097F: nop                 ; 00
0980: nop                 ; 00
0981: nop                 ; 00
0982: nop                 ; 00
0983: nop                 ; 00
0984: nop                 ; 00
0985: nop                 ; 00
0986: nop                 ; 00
0987: nop                 ; 00
0988: nop                 ; 00
0989: nop                 ; FC
098A: nop                 ; FF
098B: nop                 ; 00
098C: sub w, a            ; 48
098D: pop z               ; 08
098E: jmp $F55B, y        ; ED 5B F5
0991: nop                 ; FF
0992: nop                 ; FF
0993: nop                 ; FF
0994: or x, y             ; A3
0995: mul y, z            ; 55
0996: sub a, a            ; 4D
0997: mul w, x            ; 5D
0998: nop                 ; FB
0999: mul y, w            ; 56
099A: add y, x            ; 21
099B: add z, w            ; 29
099C: or y, w             ; A9
099D: sub a, y            ; 4A
099E: mul y, z            ; 55
099F: add w, x            ; 2B
09A0: xor a, z            ; D2
09A1: push y              ; 02
09A2: nop                 ; 00
09A3: nop                 ; 00
09A4: nop                 ; 00
09A5: nop                 ; 00
09A6: nop                 ; 00
09A7: nop                 ; 00
09A8: nop                 ; 00
09A9: nop                 ; 00
09AA: nop                 ; 00
09AB: nop                 ; 00
09AC: nop                 ; 00
09AD: nop                 ; 00
09AE: nop                 ; 00
09AF: nop                 ; 00
09B0: nop                 ; 00
09B1: nop                 ; FC
09B2: nop                 ; FF
09B3: nop                 ; 00
09B4: nop                 ; 00
09B5: mul x, w            ; 51
09B6: cmp x, y            ; 72
09B7: resume              ; F7 DE
09B9: nop                 ; FF
09BA: nop                 ; FF
09BB: nop                 ; FF
09BC: and z, x            ; 97
09BD: and z, x            ; 97
09BE: mul x, z            ; 50
09BF: inc a               ; 6B
09C0: or z, w             ; AD
09C1: or z, w             ; AD
09C2: and y, z            ; 94
09C3: sub a, y            ; 4A
09C4: add y, y            ; 22
09C5: add z, w            ; 29
09C6: sub a, x            ; 49
09C7: and x, a            ; 92
09C8: add y, a            ; 25
09C9: load z, $0000       ; 0D 00 00
09CC: nop                 ; 00
09CD: nop                 ; 00
09CE: nop                 ; 00
09CF: nop                 ; 00
09D0: nop                 ; 00
09D1: nop                 ; 00
09D2: nop                 ; 00
09D3: nop                 ; 00
09D4: nop                 ; 00
09D5: nop                 ; 00
09D6: nop                 ; 00
09D7: nop                 ; 00
09D8: nop                 ; 00
09D9: nop                 ; FC
09DA: nop                 ; FF
09DB: sub z, y            ; 40
09DC: store $AAA4, z      ; 12 A4 AA
09DF: mul w, x            ; 5D
09E0: nop                 ; FB
09E1: nop                 ; FF
09E2: nop                 ; FF
09E3: nop                 ; FF
09E4: and a, z            ; A1
09E5: mul w, z            ; 5F
09E6: jmp x, y            ; EA
09E7: or y, a             ; AA
09E8: or a, w             ; B6
09E9: store $AEEA, z      ; 12 EA AE
09EC: and y, z            ; 94
09ED: inc w               ; 6A
09EE: or x, w             ; A5
09EF: nop                 ; FA
09F0: cmpbit x            ; 8A 54
09F2: nop                 ; 00
09F3: nop                 ; 00
09F4: nop                 ; 00
09F5: nop                 ; 00
09F6: nop                 ; 00
09F7: nop                 ; 00
09F8: nop                 ; 00
09F9: nop                 ; 00
09FA: nop                 ; 00
09FB: nop                 ; 00
09FC: nop                 ; 00
09FD: nop                 ; 00
09FE: nop                 ; 00
09FF: nop                 ; 00
0A00: nop                 ; 00
0A01: nop                 ; FC
0A02: nop                 ; FF
0A03: pop z               ; 08
0A04: and a, y            ; A0
0A05: and x, a            ; 92
0A06: jmp x, y            ; EA
0A07: resume              ; F7 FF
0A09: nop                 ; FF
0A0A: nop                 ; FF
0A0B: nop                 ; FF
0A0C: sub a, y            ; 4A
0A0D: cmp z, y            ; 7C
0A0E: cmp a, x            ; 85
0A0F: or z, w             ; AD
0A10: shl x               ; D5
0A11: or x, z             ; A4
0A12: mul y, z            ; 55
0A13: shr y               ; DB
0A14: or x, w             ; A5
0A15: shr a               ; DE
0A16: shr y               ; DB
0A17: or z, a             ; AE
0A18: sub x, z            ; 37
0A19: add z, w            ; 29
0A1A: push x              ; 01
0A1B: nop                 ; 00
0A1C: nop                 ; 00
0A1D: nop                 ; 00
0A1E: nop                 ; 00
0A1F: nop                 ; 00
0A20: nop                 ; 00
0A21: nop                 ; 00
0A22: nop                 ; 00
0A23: nop                 ; 00
0A24: nop                 ; 00
0A25: nop                 ; 00
0A26: nop                 ; 00
0A27: nop                 ; 00
0A28: nop                 ; 00
0A29: nop                 ; FC
0A2A: nop                 ; FF
0A2B: add x, a            ; 20
0A2C: call $BD6C          ; 15 6C BD
0A2F: nop                 ; FE
0A30: nop                 ; FF
0A31: nop                 ; FF
0A32: nop                 ; FF
0A33: add w, a            ; 2F
0A34: add x, a            ; 20
0A35: jmp.z $EB51         ; F5 51 EB
0A38: dec w               ; 6F
0A39: inc a               ; 6B
0A3A: shr y               ; DB
0A3B: or y, a             ; AA
0A3C: xor x, w            ; BF
0A3D: cmp z, x            ; 7B
0A3E: dec y               ; 6D
0A3F: cmp z, x            ; 7B
0A40: sub a, x            ; 49
0A41: mul y, y            ; 54
0A42: push a              ; 05
0A43: nop                 ; 00
0A44: nop                 ; 00
0A45: nop                 ; 00
0A46: nop                 ; 00
0A47: nop                 ; 00
0A48: nop                 ; 00
0A49: nop                 ; 00
0A4A: nop                 ; 00
0A4B: nop                 ; 00
0A4C: nop                 ; 00
0A4D: nop                 ; 00
0A4E: nop                 ; 00
0A4F: nop                 ; 00
0A50: nop                 ; 00
0A51: nop                 ; FC
0A52: nop                 ; FF
0A53: sub w, x            ; 44
0A54: and a, y            ; A0
0A55: mul x, a            ; 52
0A56: jmp z, w            ; EB
0A57: shr w               ; DD
0A58: nop                 ; FF
0A59: nop                 ; FF
0A5A: nop                 ; FF
0A5B: mul y, a            ; 57
0A5C: sub w, y            ; 45
0A5D: xor a, a            ; D4
0A5E: cmp a, z            ; 87
0A5F: int $BA             ; F6 BA
0A61: shr x               ; DA
0A62: or a, w             ; B6
0A63: or z, w             ; AD
0A64: inc w               ; 6A
0A65: sub z, y            ; 40
0A66: nop                 ; FD
0A67: or z, a             ; AE
0A68: store $14A5, a      ; 14 A5 14
0A6B: nop                 ; 00
0A6C: nop                 ; 00
0A6D: nop                 ; 00
0A6E: nop                 ; 00
0A6F: nop                 ; 00
0A70: nop                 ; 00
0A71: nop                 ; 00
0A72: nop                 ; 00
0A73: nop                 ; 00
0A74: nop                 ; 00
0A75: nop                 ; 00
0A76: nop                 ; 00
0A77: nop                 ; 00
0A78: nop                 ; 00
0A79: nop                 ; FC
0A7A: nop                 ; FF
0A7B: store $ED55, y      ; 11 55 ED
0A7E: nop                 ; FD
0A7F: nop                 ; FF
0A80: nop                 ; FF
0A81: nop                 ; FF
0A82: nop                 ; FF
0A83: pop w               ; 09
0A84: store $11A1, y      ; 11 A1 11
0A87: shr y               ; DB
0A88: shl z               ; D7
0A89: mul y, w            ; 56
0A8A: sub a, z            ; 4B
0A8B: jmp.z $00BF         ; F5 BF 00
0A8E: xor a, a            ; D4
0A8F: cmp z, x            ; 7B
0A90: mul y, z            ; 55
0A91: or y, z             ; A8
0A92: store $0000, z      ; 12 00 00
0A95: nop                 ; 00
0A96: nop                 ; 00
0A97: nop                 ; 00
0A98: nop                 ; 00
0A99: nop                 ; 00
0A9A: nop                 ; 00
0A9B: nop                 ; 00
0A9C: nop                 ; 00
0A9D: nop                 ; 00
0A9E: nop                 ; 00
0A9F: nop                 ; 00
0AA0: nop                 ; 00
0AA1: nop                 ; FC
0AA2: nop                 ; FF
0AA3: sub w, x            ; 44
0AA4: or y, a             ; AA
0AA5: mul z, z            ; 5A
0AA6: nop                 ; FF
0AA7: nop                 ; FF
0AA8: nop                 ; FF
0AA9: nop                 ; FF
0AAA: nop                 ; FF
0AAB: mul y, w            ; 56
0AAC: sub w, x            ; 44
0AAD: pop z               ; 08
0AAE: sub w, x            ; 44
0AAF: cmp z, y            ; 7C
0AB0: or z, w             ; AD
0AB1: nop                 ; FD
0AB2: cmp y, y            ; 77
0AB3: jmp $016B, w        ; EF 6B 01
0AB6: cmp w, x            ; 80
0AB7: shl y               ; D6
0AB8: and x, a            ; 92
0AB9: mul x, a            ; 52
0ABA: nop                 ; 00
0ABB: nop                 ; 00
0ABC: nop                 ; 00
0ABD: nop                 ; 00
0ABE: nop                 ; 00
0ABF: nop                 ; 00
0AC0: nop                 ; 00
0AC1: nop                 ; 00
0AC2: nop                 ; 00
0AC3: nop                 ; 00
0AC4: nop                 ; 00
0AC5: nop                 ; 00
0AC6: nop                 ; 00
0AC7: nop                 ; 00
0AC8: nop                 ; 00
0AC9: nop                 ; FC
0ACA: nop                 ; FF
0ACB: mul x, w            ; 51
0ACC: mul y, z            ; 55
0ACD: jmp z, w            ; EB
0ACE: nop                 ; FF
0ACF: nop                 ; FF
0AD0: nop                 ; FF
0AD1: nop                 ; FF
0AD2: cmp z, a            ; 7F
0AD3: or y, w             ; A9
0AD4: store $12A5, z      ; 12 A5 12
0AD7: mul x, a            ; 52
0AD8: cmp x, a            ; 75
0AD9: not x               ; B7
0ADA: jmp $FFBD, z        ; EE BD FF
0ADD: push x              ; 01
0ADE: nop                 ; 00
0ADF: sub y, x            ; 3A
0AE0: add y, a            ; 25
0AE1: nop                 ; 00
0AE2: nop                 ; 00
0AE3: nop                 ; 00
0AE4: nop                 ; 00
0AE5: nop                 ; 00
0AE6: nop                 ; 00
0AE7: nop                 ; 00
0AE8: nop                 ; 00
0AE9: nop                 ; 00
0AEA: nop                 ; 00
0AEB: nop                 ; 00
0AEC: nop                 ; 00
0AED: nop                 ; 00
0AEE: nop                 ; 00
0AEF: nop                 ; 00
0AF0: nop                 ; 00
0AF1: nop                 ; FC
0AF2: nop                 ; FF
0AF3: mul y, z            ; 55
0AF4: shl x               ; D5
0AF5: nop                 ; FE
0AF6: nop                 ; FF
0AF7: nop                 ; FF
0AF8: nop                 ; FF
0AF9: nop                 ; FF
0AFA: mul w, z            ; 5F
0AFB: cmp x, a            ; 75
0AFC: sub z, z            ; 41
0AFD: nop                 ; 00
0AFE: nop                 ; 00
0AFF: or y, z             ; A8
0B00: shr w               ; DD
0B01: jmp $F75B, z        ; EE 5B F7
0B04: cmp z, z            ; 7D
0B05: push z              ; 03
0B06: nop                 ; 00
0B07: or x, z             ; A4
0B08: mul y, y            ; 54
0B09: push a              ; 05
0B0A: nop                 ; 00
0B0B: nop                 ; 00
0B0C: nop                 ; 00
0B0D: nop                 ; 00
0B0E: nop                 ; 00
0B0F: nop                 ; 00
0B10: nop                 ; 00
0B11: nop                 ; 00
0B12: nop                 ; 00
0B13: nop                 ; 00
0B14: nop                 ; 00
0B15: nop                 ; 00
0B16: nop                 ; 00
0B17: nop                 ; 00
0B18: nop                 ; 00
0B19: nop                 ; FC
0B1A: nop                 ; FF
0B1B: or y, a             ; AA
0B1C: cmp y, a            ; 7A
0B1D: nop                 ; FF
0B1E: nop                 ; FF
0B1F: nop                 ; FF
0B20: nop                 ; FF
0B21: nop                 ; FF
0B22: xor x, w            ; BF
0B23: jmp.neq $4515       ; F2 15 45
0B26: cmp a, w            ; 88
0B27: jmp $BBF6, a        ; F0 F6 BB
0B2A: jmp $D75D, y        ; ED 5D D7
0B2D: push y              ; 02
0B2E: nop                 ; 00
0B2F: sub w, a            ; 48
0B30: mul y, z            ; 55
0B31: mul x, z            ; 50
0B32: nop                 ; 00
0B33: nop                 ; 00
0B34: nop                 ; 00
0B35: nop                 ; 00
0B36: nop                 ; 00
0B37: nop                 ; 00
0B38: nop                 ; 00
0B39: nop                 ; 00
0B3A: nop                 ; 00
0B3B: nop                 ; 00
0B3C: nop                 ; 00
0B3D: nop                 ; 00
0B3E: nop                 ; 00
0B3F: nop                 ; 00
0B40: nop                 ; 00
0B41: nop                 ; FC
0B42: nop                 ; FF
0B43: or y, a             ; AA
0B44: shl y               ; D6
0B45: resume              ; F7 FF
0B47: nop                 ; FF
0B48: nop                 ; FF
0B49: nop                 ; FF
0B4A: mul y, a            ; 57
0B4B: jmp.z $0051         ; F5 51 00
0B4E: nop                 ; 00
0B4F: cmp w, x            ; 80
0B50: rol x               ; DF
0B51: cmp z, w            ; 7E
0B52: cmp y, y            ; 77
0B53: resume              ; F7 BA
0B55: pop y               ; 07
0B56: nop                 ; 00
0B57: mul x, z            ; 50
0B58: and x, a            ; 92
0B59: or x, w             ; A5
0B5A: or z, w             ; AD
0B5B: store $0000, z      ; 12 00 00
0B5E: nop                 ; 00
0B5F: nop                 ; 00
0B60: nop                 ; 00
0B61: nop                 ; 00
0B62: nop                 ; 00
0B63: nop                 ; 00
0B64: nop                 ; 00
0B65: nop                 ; 00
0B66: nop                 ; 00
0B67: nop                 ; 00
0B68: nop                 ; 00
0B69: nop                 ; FC
0B6A: nop                 ; FF
0B6B: xor x, y            ; BD
0B6C: nop                 ; FB
0B6D: nop                 ; FF
0B6E: nop                 ; FF
0B6F: nop                 ; FF
0B70: nop                 ; FF
0B71: nop                 ; FF
0B72: or z, w             ; AD
0B73: jmp.lt $4905        ; F4 05 49
0B76: add x, a            ; 20
0B77: mul w, a            ; 61
0B78: cmp z, x            ; 7B
0B79: shl z               ; D7
0B7A: shr x               ; DA
0B7B: or z, w             ; AD
0B7C: jmp $000A, y        ; ED 0A 00
0B7F: or y, z             ; A8
0B80: mul y, z            ; 55
0B81: add y, y            ; 22
0B82: mul x, a            ; 52
0B83: sub a, y            ; 4A
0B84: call $0000          ; 15 00 00
0B87: nop                 ; 00
0B88: nop                 ; 00
0B89: nop                 ; 00
0B8A: nop                 ; 00
0B8B: nop                 ; 00
0B8C: nop                 ; 00
0B8D: nop                 ; 00
0B8E: nop                 ; 00
0B8F: nop                 ; 00
0B90: nop                 ; 00
0B91: nop                 ; FC
0B92: nop                 ; FF
0B93: jmp z, w            ; EB
0B94: jmp $FFFE, z        ; EE FE FF
0B97: nop                 ; FF
0B98: nop                 ; FF
0B99: cmp z, a            ; 7F
0B9A: mul y, z            ; 55
0B9B: jmp.z $8029         ; F5 29 80
0B9E: push y              ; 02
0B9F: push w              ; 04
0BA0: shr a               ; DE
0BA1: or a, z             ; B5
0BA2: cmp z, a            ; 7F
0BA3: mul z, w            ; 5B
0BA4: not x               ; B7
0BA5: pop y               ; 07
0BA6: nop                 ; 00
0BA7: mul w, w            ; 60
0BA8: or z, x             ; AB
0BA9: xor z, a            ; CA
0BAA: or y, a             ; AA
0BAB: mul x, a            ; 52
0BAC: nop                 ; 00
0BAD: nop                 ; 00
0BAE: nop                 ; 00
0BAF: nop                 ; 00
0BB0: nop                 ; 00
0BB1: nop                 ; 00
0BB2: nop                 ; 00
0BB3: nop                 ; 00
0BB4: nop                 ; 00
0BB5: nop                 ; 00
0BB6: nop                 ; 00
0BB7: nop                 ; 00
0BB8: nop                 ; 00
0BB9: nop                 ; FC
0BBA: nop                 ; FF
0BBB: xor x, y            ; BD
0BBC: nop                 ; FF
0BBD: nop                 ; FF
0BBE: nop                 ; FF
0BBF: nop                 ; FF
0BC0: nop                 ; FF
0BC1: xor x, w            ; BF
0BC2: add z, a            ; 2A
0BC3: nop                 ; F9
0BC4: store $9004, z      ; 12 04 90
0BC7: nop                 ; 00
0BC8: cmp x, a            ; 75
0BC9: jmp $6DEA, w        ; EF EA 6D
0BCC: sub a, x            ; 49
0BCD: pop z               ; 08
0BCE: nop                 ; 00
0BCF: or w, y             ; B0
0BD0: or z, w             ; AD
0BD1: push w              ; 04
0BD2: or x, w             ; A5
0BD3: push w              ; 04
0BD4: push a              ; 05
0BD5: nop                 ; 00
0BD6: nop                 ; 00
0BD7: nop                 ; 00
0BD8: nop                 ; 00
0BD9: nop                 ; 00
0BDA: nop                 ; 00
0BDB: nop                 ; 00
0BDC: nop                 ; 00
0BDD: nop                 ; 00
0BDE: nop                 ; 00
0BDF: nop                 ; 00
0BE0: nop                 ; 00
0BE1: nop                 ; FC
0BE2: nop                 ; FF
0BE3: jmp z, w            ; EB
0BE4: nop                 ; FF
0BE5: nop                 ; FF
0BE6: nop                 ; FF
0BE7: nop                 ; FF
0BE8: nop                 ; FF
0BE9: or w, x             ; AF
0BEA: sub a, y            ; 4A
0BEB: jmp.neq $20A5       ; F2 A5 20
0BEE: push a              ; 05
0BEF: add y, y            ; 22
0BF0: xor a, a            ; D4
0BF1: or y, a             ; AA
0BF2: xor x, w            ; BF
0BF3: or a, w             ; B6
0BF4: store $0215, z      ; 12 15 02
0BF7: mul w, w            ; 60
0BF8: xor x, w            ; BF
0BF9: or y, a             ; AA
0BFA: and y, z            ; 94
0BFB: set w, $00          ; 1A 00
0BFD: pop z               ; 08
0BFE: nop                 ; 00
0BFF: nop                 ; 00
0C00: nop                 ; 00
0C01: nop                 ; 00
0C02: nop                 ; 00
0C03: nop                 ; 00
0C04: nop                 ; 00
0C05: nop                 ; 00
0C06: nop                 ; 00
0C07: nop                 ; 00
0C08: nop                 ; 00
0C09: nop                 ; FC
0C0A: nop                 ; FF
0C0B: nop                 ; FD
0C0C: nop                 ; FD
0C0D: nop                 ; FF
0C0E: nop                 ; FF
0C0F: nop                 ; FF
0C10: nop                 ; FF
0C11: or y, x             ; A7
0C12: and x, a            ; 92
0C13: jmp.lt $0048        ; F4 48 00
0C16: add x, a            ; 20
0C17: pop z               ; 08
0C18: inc y               ; 68
0C19: rol x               ; DF
0C1A: inc w               ; 6A
0C1B: or z, x             ; AB
0C1C: xor z, z            ; C8
0C1D: set w, $00          ; 1A 00
0C1F: and a, y            ; A0
0C20: or x, w             ; A5
0C21: add x, a            ; 20
0C22: mul y, z            ; 55
0C23: add z, w            ; 29
0C24: nop                 ; 00
0C25: nop                 ; 00
0C26: nop                 ; 00
0C27: nop                 ; 00
0C28: nop                 ; 00
0C29: nop                 ; 00
0C2A: nop                 ; 00
0C2B: nop                 ; 00
0C2C: nop                 ; 00
0C2D: nop                 ; 00
0C2E: nop                 ; 00
0C2F: nop                 ; 00
0C30: nop                 ; 00
0C31: nop                 ; FC
0C32: nop                 ; FF
0C33: xor x, w            ; BF
0C34: nop                 ; FF
0C35: nop                 ; FF
0C36: nop                 ; FF
0C37: nop                 ; FF
0C38: nop                 ; FF
0C39: load a, $F224       ; 0F 24 F2
0C3C: and y, x            ; 93
0C3D: pop a               ; 0A
0C3E: sub w, x            ; 44
0C3F: push y              ; 02
0C40: xor y, x            ; C1
0C41: not a               ; BB
0C42: shr y               ; DB
0C43: not w               ; BA
0C44: cmp x, y            ; 72
0C45: add w, a            ; 2F
0C46: nop                 ; 00
0C47: xor x, a            ; C0
0C48: sub a, y            ; 4A
0C49: mul z, z            ; 5A
0C4A: add w, w            ; 2E
0C4B: or x, w             ; A5
0C4C: mul y, z            ; 55
0C4D: nop                 ; 00
0C4E: nop                 ; 00
0C4F: nop                 ; 00
0C50: nop                 ; 00
0C51: nop                 ; 00
0C52: nop                 ; 00
0C53: nop                 ; 00
0C54: nop                 ; 00
0C55: nop                 ; 00
0C56: nop                 ; 00
0C57: nop                 ; 00
0C58: nop                 ; 00
0C59: nop                 ; FC
0C5A: nop                 ; FF
0C5B: jmp.z $FFFF         ; F5 FF FF
0C5E: nop                 ; FF
0C5F: nop                 ; FF
0C60: mul w, z            ; 5F
0C61: or x, w             ; A5
0C62: and x, a            ; 92
0C63: nop                 ; F8
0C64: pop z               ; 08
0C65: sub z, z            ; 41
0C66: push y              ; 02
0C67: store $ED48, y      ; 11 48 ED
0C6A: or a, w             ; B6
0C6B: dec y               ; 6D
0C6C: sub a, a            ; 4D
0C6D: sub x, x            ; 35
0C6E: nop                 ; 00
0C6F: nop                 ; 00
0C70: inc z               ; 69
0C71: jmp z, w            ; EB
0C72: not w               ; BA
0C73: sub a, y            ; 4A
0C74: pop a               ; 0A
0C75: nop                 ; 00
0C76: nop                 ; 00
0C77: nop                 ; 00
0C78: nop                 ; 00
0C79: nop                 ; 00
0C7A: nop                 ; 00
0C7B: nop                 ; 00
0C7C: nop                 ; 00
0C7D: nop                 ; 00
0C7E: nop                 ; 00
0C7F: nop                 ; 00
0C80: nop                 ; 00
0C81: nop                 ; FC
0C82: nop                 ; FF
0C83: jmp $FFFF, w        ; EF FF FF
0C86: nop                 ; FF
0C87: nop                 ; FF
0C88: resume              ; F7 0B
0C8A: add y, w            ; 24
0C8B: jmp.neq $14A2       ; F2 A2 14
0C8E: add z, z            ; 28
0C8F: sub z, y            ; 40
0C90: store $6D5A, x      ; 10 5A 6D
0C93: mul y, z            ; 55
0C94: mul z, w            ; 5B
0C95: mul w, z            ; 5F
0C96: nop                 ; 00
0C97: cmp w, x            ; 80
0C98: shr x               ; DA
0C99: xor x, y            ; BD
0C9A: dec y               ; 6D
0C9B: or y, w             ; A9
0C9C: or y, a             ; AA
0C9D: nop                 ; 00
0C9E: nop                 ; 00
0C9F: nop                 ; 00
0CA0: nop                 ; 00
0CA1: nop                 ; 00
0CA2: nop                 ; 00
0CA3: nop                 ; 00
0CA4: nop                 ; 00
0CA5: nop                 ; 00
0CA6: nop                 ; 00
0CA7: nop                 ; 00
0CA8: nop                 ; 00
0CA9: nop                 ; FC
0CAA: nop                 ; FF
0CAB: xor x, y            ; BD
0CAC: nop                 ; FD
0CAD: nop                 ; FF
0CAE: jmp $5AAD, w        ; EF AD 5A
0CB1: or y, a             ; AA
0CB2: and x, a            ; 92
0CB3: jmp.lt $400A        ; F4 0A 40
0CB6: nop                 ; 00
0CB7: push w              ; 04
0CB8: sub z, z            ; 41
0CB9: jmp.z $D7F7         ; F5 F7 D7
0CBC: or a, w             ; B6
0CBD: mul y, z            ; 55
0CBE: nop                 ; 00
0CBF: nop                 ; 00
0CC0: dec w               ; 6F
0CC1: or z, x             ; AB
0CC2: not w               ; BA
0CC3: add z, a            ; 2A
0CC4: mul x, w            ; 51
0CC5: nop                 ; 00
0CC6: nop                 ; 00
0CC7: nop                 ; 00
0CC8: nop                 ; 00
0CC9: nop                 ; 00
0CCA: nop                 ; 00
0CCB: nop                 ; 00
0CCC: nop                 ; 00
0CCD: nop                 ; 00
0CCE: nop                 ; 00
0CCF: nop                 ; 00
0CD0: nop                 ; 00
0CD1: nop                 ; FC
0CD2: nop                 ; FF
0CD3: resume              ; F7 B7
0CD5: cmp z, z            ; 7D
0CD6: cmp z, x            ; 7B
0CD7: nop                 ; FB
0CD8: or w, x             ; AF
0CD9: push a              ; 05
0CDA: nop                 ; 00
0CDB: jmp.eq $9251        ; F1 51 92
0CDE: push w              ; 04
0CDF: add y, x            ; 21
0CE0: push w              ; 04
0CE1: store $5ABD, a      ; 14 BD 5A
0CE4: mul y, z            ; 55
0CE5: mul w, z            ; 5F
0CE6: nop                 ; 00
0CE7: nop                 ; 00
0CE8: shr x               ; DA
0CE9: inc a               ; 6B
0CEA: ror w               ; E7
0CEB: or x, z             ; A4
0CEC: or y, a             ; AA
0CED: push y              ; 02
0CEE: nop                 ; 00
0CEF: nop                 ; 00
0CF0: nop                 ; 00
0CF1: nop                 ; 00
0CF2: nop                 ; 00
0CF3: nop                 ; 00
0CF4: nop                 ; 00
0CF5: nop                 ; 00
0CF6: nop                 ; 00
0CF7: nop                 ; 00
0CF8: nop                 ; 00
0CF9: nop                 ; FC
0CFA: nop                 ; FF
0CFB: shr w               ; DD
0CFC: nop                 ; FE
0CFD: jmp $ADAF, w        ; EF AF AD
0D00: mul y, y            ; 54
0D01: and x, a            ; 92
0D02: sub a, y            ; 4A
0D03: nop                 ; FC
0D04: push w              ; 04
0D05: pop z               ; 08
0D06: add y, y            ; 22
0D07: pop z               ; 08
0D08: add x, a            ; 20
0D09: xor a, y            ; D1
0D0A: shl z               ; D7
0D0B: or z, w             ; AD
0D0C: nop                 ; FA
0D0D: or a, z             ; B5
0D0E: nop                 ; 00
0D0F: nop                 ; 00
0D10: cmp z, z            ; 7D
0D11: or z, w             ; AD
0D12: shl x               ; D5
0D13: or y, a             ; AA
0D14: add y, w            ; 24
0D15: push x              ; 01
0D16: nop                 ; 00
0D17: nop                 ; 00
0D18: nop                 ; 00
0D19: nop                 ; 00
0D1A: nop                 ; 00
0D1B: nop                 ; 00
0D1C: nop                 ; 00
0D1D: nop                 ; 00
0D1E: nop                 ; 00
0D1F: nop                 ; 00
0D20: nop                 ; 00
0D21: nop                 ; FC
0D22: nop                 ; FF
0D23: not x               ; B7
0D24: mul z, w            ; 5B
0D25: nop                 ; FB
0D26: shr x               ; DA
0D27: mul y, w            ; 56
0D28: or z, x             ; AB
0D29: push a              ; 05
0D2A: store $11F1, x      ; 10 F1 11
0D2D: or y, a             ; AA
0D2E: cmp a, w            ; 88
0D2F: cmp w, z            ; 82
0D30: pop a               ; 0A
0D31: store $AB7E, z      ; 12 7E AB
0D34: mul y, w            ; 56
0D35: or w, x             ; AF
0D36: push x              ; 01
0D37: nop                 ; 00
0D38: xor a, a            ; D4
0D39: dec w               ; 6F
0D3A: xor x, y            ; BD
0D3B: add z, a            ; 2A
0D3C: mul y, z            ; 55
0D3D: nop                 ; 00
0D3E: nop                 ; 00
0D3F: nop                 ; 00
0D40: nop                 ; 00
0D41: nop                 ; 00
0D42: nop                 ; 00
0D43: nop                 ; 00
0D44: nop                 ; 00
0D45: nop                 ; 00
0D46: nop                 ; 00
0D47: nop                 ; 00
0D48: nop                 ; 00
0D49: nop                 ; FC
0D4A: nop                 ; FF
0D4B: shr w               ; DD
0D4C: jmp $6FAD, z        ; EE AD 6F
0D4F: or y, w             ; A9
0D50: mul y, y            ; 54
0D51: add y, y            ; 22
0D52: cmp w, y            ; 81
0D53: jmp.lt $0544        ; F4 44 05
0D56: add y, y            ; 22
0D57: add z, z            ; 28
0D58: add x, a            ; 20
0D59: ror a               ; E8
0D5A: nop                 ; FB
0D5B: shl x               ; D5
0D5C: nop                 ; FB
0D5D: mul x, a            ; 52
0D5E: nop                 ; 00
0D5F: nop                 ; 00
0D60: cmp x, w            ; 74
0D61: or z, w             ; AD
0D62: push y              ; 02
0D63: sub a, x            ; 49
0D64: mul y, z            ; 55
0D65: nop                 ; 00
0D66: nop                 ; 00
0D67: nop                 ; 00
0D68: nop                 ; 00
0D69: nop                 ; 00
0D6A: nop                 ; 00
0D6B: nop                 ; 00
0D6C: nop                 ; 00
0D6D: nop                 ; 00
0D6E: nop                 ; 00
0D6F: nop                 ; 00
0D70: nop                 ; 00
0D71: nop                 ; FC
0D72: nop                 ; FF
0D73: inc w               ; 6A
0D74: mul z, w            ; 5B
0D75: nop                 ; FB
0D76: shr x               ; DA
0D77: sub a, y            ; 4A
0D78: mul y, z            ; 55
0D79: pop w               ; 09
0D7A: store $1170, z      ; 12 70 11
0D7D: or y, a             ; AA
0D7E: and y, z            ; 94
0D7F: push y              ; 02
0D80: sub a, x            ; 49
0D81: push x              ; 01
0D82: or z, w             ; AD
0D83: not w               ; BA
0D84: mul y, w            ; 56
0D85: load a, $0000       ; 0F 00 00
0D88: xor a, x            ; D0
0D89: set x, $54          ; 17 54
0D8B: mul y, y            ; 54
0D8C: nop                 ; 00
0D8D: nop                 ; 00
0D8E: nop                 ; 00
0D8F: nop                 ; 00
0D90: nop                 ; 00
0D91: nop                 ; 00
0D92: nop                 ; 00
0D93: nop                 ; 00
0D94: nop                 ; 00
0D95: nop                 ; 00
0D96: nop                 ; 00
0D97: nop                 ; 00
0D98: nop                 ; 00
0D99: nop                 ; FC
0D9A: nop                 ; FF
0D9B: shr y               ; DB
0D9C: jmp x, y            ; EA
0D9D: or z, w             ; AD
0D9E: dec y               ; 6D
0D9F: and y, x            ; 93
0DA0: and x, z            ; 90
0DA1: push w              ; 04
0DA2: nop                 ; 00
0DA3: call $8284          ; 15 84 82
0DA6: mul a, x            ; 62
0DA7: or y, z             ; A8
0DA8: push w              ; 04
0DA9: xor y, w            ; C4
0DAA: mul z, z            ; 5A
0DAB: jmp $01DB, w        ; EF DB 01
0DAE: nop                 ; 00
0DAF: nop                 ; 00
0DB0: inc y               ; 68
0DB1: sub a, x            ; 49
0DB2: and x, w            ; 91
0DB3: or y, z             ; A8
0DB4: nop                 ; 00
0DB5: nop                 ; 00
0DB6: nop                 ; 00
0DB7: nop                 ; 00
0DB8: nop                 ; 00
0DB9: nop                 ; 00
0DBA: nop                 ; 00
0DBB: nop                 ; 00
0DBC: nop                 ; 00
0DBD: nop                 ; 00
0DBE: nop                 ; 00
0DBF: nop                 ; 00
0DC0: nop                 ; 00
0DC1: nop                 ; FC
0DC2: nop                 ; FF
0DC3: or y, a             ; AA
0DC4: mul w, x            ; 5D
0DC5: mul z, w            ; 5B
0DC6: mul z, w            ; 5B
0DC7: add w, z            ; 2D
0DC8: sub w, y            ; 45
0DC9: or y, a             ; AA
0DCA: sub w, x            ; 44
0DCB: cmp w, x            ; 80
0DCC: store $D429, x      ; 10 29 D4
0DCF: store $1151, w      ; 13 51 11
0DD2: shl y               ; D6
0DD3: not a               ; BB
0DD4: cmp x, w            ; 74
0DD5: nop                 ; 00
0DD6: nop                 ; 00
0DD7: nop                 ; 00
0DD8: mul x, z            ; 50
0DD9: or y, a             ; AA
0DDA: mul y, w            ; 56
0DDB: add y, y            ; 22
0DDC: call $0000          ; 15 00 00
0DDF: nop                 ; 00
0DE0: nop                 ; 00
0DE1: nop                 ; 00
0DE2: nop                 ; 00
0DE3: nop                 ; 00
0DE4: nop                 ; 00
0DE5: nop                 ; 00
0DE6: nop                 ; 00
0DE7: nop                 ; 00
0DE8: nop                 ; 00
0DE9: nop                 ; FC
0DEA: nop                 ; FF
0DEB: or a, z             ; B5
0DEC: mul y, w            ; 56
0DED: mul y, z            ; 55
0DEE: mul y, z            ; 55
0DEF: and y, w            ; 95
0DF0: store $0001, x      ; 10 01 00
0DF3: sub w, a            ; 48
0DF4: sub w, x            ; 44
0DF5: and a, w            ; A2
0DF6: jmp x, y            ; EA
0DF7: sub a, z            ; 4B
0DF8: push w              ; 04
0DF9: cmp w, a            ; 84
0DFA: cmp y, a            ; 7A
0DFB: dec y               ; 6D
0DFC: load x, $4000       ; 0B 00 40
0DFF: nop                 ; 00
0E00: or w, y             ; B0
0E01: or y, a             ; AA
0E02: and y, w            ; 95
0E03: sub a, y            ; 4A
0E04: call $0000          ; 15 00 00
0E07: nop                 ; 00
0E08: nop                 ; 00
0E09: nop                 ; 00
0E0A: nop                 ; 00
0E0B: nop                 ; 00
0E0C: nop                 ; 00
0E0D: nop                 ; 00
0E0E: nop                 ; 00
0E0F: nop                 ; 00
0E10: nop                 ; 00
0E11: nop                 ; FC
0E12: nop                 ; FF
0E13: or z, w             ; AD
0E14: shl x               ; D5
0E15: or y, a             ; AA
0E16: or y, a             ; AA
0E17: inc w               ; 6A
0E18: sub w, x            ; 44
0E19: mul y, y            ; 54
0E1A: store $9102, y      ; 11 02 91
0E1D: and y, z            ; 94
0E1E: xor a, a            ; D4
0E1F: mul y, a            ; 57
0E20: mul y, z            ; 55
0E21: add z, w            ; 29
0E22: xor a, a            ; D4
0E23: nop                 ; FF
0E24: push x              ; 01
0E25: nop                 ; 00
0E26: push y              ; 02
0E27: nop                 ; 00
0E28: and a, y            ; A0
0E29: mul y, z            ; 55
0E2A: xor x, y            ; BD
0E2B: store $0025, x      ; 10 25 00
0E2E: nop                 ; 00
0E2F: nop                 ; 00
0E30: nop                 ; 00
0E31: nop                 ; 00
0E32: nop                 ; 00
0E33: nop                 ; 00
0E34: nop                 ; 00
0E35: nop                 ; 00
0E36: nop                 ; 00
0E37: nop                 ; 00
0E38: nop                 ; 00
0E39: nop                 ; FC
0E3A: nop                 ; FF
0E3B: mul y, z            ; 55
0E3C: or z, w             ; AD
0E3D: or y, a             ; AA
0E3E: or y, a             ; AA
0E3F: or y, a             ; AA
0E40: push y              ; 02
0E41: push x              ; 01
0E42: sub w, x            ; 44
0E43: store $5244, y      ; 11 44 52
0E46: jmp.z $54AF         ; F5 AF 54
0E49: cmp w, z            ; 82
0E4A: mul x, z            ; 50
0E4B: xor x, y            ; BD
0E4C: nop                 ; 00
0E4D: store $0000, x      ; 10 00 00
0E50: and a, y            ; A0
0E51: not w               ; BA
0E52: add w, x            ; 2B
0E53: sub a, y            ; 4A
0E54: store $0000, z      ; 12 00 00
0E57: nop                 ; 00
0E58: nop                 ; 00
0E59: nop                 ; 00
0E5A: nop                 ; 00
0E5B: nop                 ; 00
0E5C: nop                 ; 00
0E5D: nop                 ; 00
0E5E: nop                 ; 00
0E5F: nop                 ; 00
0E60: nop                 ; 00
0E61: nop                 ; FC
0E62: nop                 ; FF
0E63: or y, a             ; AA
0E64: inc w               ; 6A
0E65: mul y, z            ; 55
0E66: mul y, z            ; 55
0E67: add y, a            ; 25
0E68: add y, x            ; 21
0E69: mul y, y            ; 54
0E6A: pop w               ; 09
0E6B: cmp w, a            ; 84
0E6C: add z, z            ; 28
0E6D: sub a, x            ; 49
0E6E: jmp x, y            ; EA
0E6F: mul w, z            ; 5F
0E70: mul y, x            ; 53
0E71: add z, w            ; 29
0E72: xor y, y            ; C2
0E73: nop                 ; FE
0E74: pop y               ; 07
0E75: nop                 ; 00
0E76: nop                 ; 00
0E77: nop                 ; 00
0E78: sub z, y            ; 40
0E79: shl z               ; D7
0E7A: shl y               ; D6
0E7B: and x, a            ; 92
0E7C: nop                 ; 00
0E7D: nop                 ; 00
0E7E: push w              ; 04
0E7F: nop                 ; 00
0E80: nop                 ; 00
0E81: nop                 ; 00
0E82: nop                 ; 00
0E83: nop                 ; 00
0E84: nop                 ; 00
0E85: nop                 ; 00
0E86: nop                 ; 00
0E87: nop                 ; 00
0E88: nop                 ; 00
0E89: nop                 ; FC
0E8A: nop                 ; FF
0E8B: inc w               ; 6A
0E8C: and y, w            ; 95
0E8D: or y, a             ; AA
0E8E: or y, a             ; AA
0E8F: or y, a             ; AA
0E90: pop a               ; 0A
0E91: mul x, z            ; 50
0E92: add y, w            ; 24
0E93: mul x, w            ; 51
0E94: sub z, w            ; 42
0E95: mul y, z            ; 55
0E96: jmp.z $ACFF         ; F5 FF AC
0E99: sub a, y            ; 4A
0E9A: sub a, x            ; 49
0E9B: nop                 ; FD
0E9C: sub w, y            ; 45
0E9D: push w              ; 04
0E9E: nop                 ; 00
0E9F: pop z               ; 08
0EA0: xor x, a            ; C0
0EA1: or a, z             ; B5
0EA2: cmp y, a            ; 7A
0EA3: add y, w            ; 24
0EA4: or x, z             ; A4
0EA5: or y, a             ; AA
0EA6: push a              ; 05
0EA7: nop                 ; 00
0EA8: nop                 ; 00
0EA9: nop                 ; 00
0EAA: nop                 ; 00
0EAB: nop                 ; 00
0EAC: nop                 ; 00
0EAD: nop                 ; 00
0EAE: nop                 ; 00
0EAF: nop                 ; 00
0EB0: nop                 ; 00
0EB1: nop                 ; FC
0EB2: nop                 ; FF
0EB3: and y, w            ; 95
0EB4: inc w               ; 6A
0EB5: mul y, z            ; 55
0EB6: sub a, x            ; 49
0EB7: and x, a            ; 92
0EB8: push w              ; 04
0EB9: push y              ; 02
0EBA: push x              ; 01
0EBB: cmp w, a            ; 84
0EBC: mul y, y            ; 54
0EBD: mul y, z            ; 55
0EBE: jmp $57FF, y        ; ED FF 57
0EC1: mul y, z            ; 55
0EC2: and x, a            ; 92
0EC3: jmp x, y            ; EA
0EC4: add x, w            ; 1F
0EC5: nop                 ; 00
0EC6: store $8000, x      ; 10 00 80
0EC9: or z, a             ; AE
0ECA: or z, w             ; AD
0ECB: sub a, x            ; 49
0ECC: mul x, w            ; 51
0ECD: add z, w            ; 29
0ECE: store $0000, a      ; 14 00 00
0ED1: nop                 ; 00
0ED2: nop                 ; 00
0ED3: nop                 ; 00
0ED4: nop                 ; 00
0ED5: nop                 ; 00
0ED6: nop                 ; 00
0ED7: nop                 ; 00
0ED8: nop                 ; 00
0ED9: nop                 ; FC
0EDA: nop                 ; FF
0EDB: inc w               ; 6A
0EDC: and y, w            ; 95
0EDD: or y, a             ; AA
0EDE: or y, a             ; AA
0EDF: or y, a             ; AA
0EE0: sub a, y            ; 4A
0EE1: sub z, y            ; 40
0EE2: add x, a            ; 20
0EE3: mul x, z            ; 50
0EE4: add z, a            ; 2A
0EE5: mul y, z            ; 55
0EE6: nop                 ; FB
0EE7: nop                 ; FF
0EE8: not a               ; BB
0EE9: or y, a             ; AA
0EEA: push w              ; 04
0EEB: jmp.lt $002F        ; F4 2F 00
0EEE: cmp w, z            ; 82
0EEF: nop                 ; 00
0EF0: nop                 ; 00
0EF1: jmp z, w            ; EB
0EF2: shl y               ; D6
0EF3: and x, a            ; 92
0EF4: sub w, x            ; 44
0EF5: sub a, y            ; 4A
0EF6: call $0000          ; 15 00 00
0EF9: nop                 ; 00
0EFA: nop                 ; 00
0EFB: nop                 ; 00
0EFC: nop                 ; 00
0EFD: nop                 ; 00
0EFE: nop                 ; 00
0EFF: nop                 ; 00
0F00: nop                 ; 00
0F01: nop                 ; FC
0F02: nop                 ; FF
0F03: and y, w            ; 95
0F04: or y, a             ; AA
0F05: or y, a             ; AA
0F06: add y, w            ; 24
0F07: sub a, x            ; 49
0F08: and y, w            ; 95
0F09: set w, $08          ; 1A 08
0F0B: cmp a, x            ; 85
0F0C: xor z, a            ; CA
0F0D: or y, a             ; AA
0F0E: int $FF             ; F6 FF
0F10: jmp $ADAB, w        ; EF AB AD
0F13: cmp a, w            ; 88
0F14: nop                 ; FF
0F15: add x, a            ; 20
0F16: nop                 ; 00
0F17: nop                 ; 00
0F18: nop                 ; 00
0F19: and w, z            ; 9D
0F1A: or a, z             ; B5
0F1B: sub a, y            ; 4A
0F1C: store $0029, z      ; 12 29 00
0F1F: nop                 ; 00
0F20: nop                 ; 00
0F21: nop                 ; 00
0F22: nop                 ; 00
0F23: nop                 ; 00
0F24: nop                 ; 00
0F25: nop                 ; 00
0F26: nop                 ; 00
0F27: nop                 ; 00
0F28: nop                 ; 00
0F29: nop                 ; FC
0F2A: nop                 ; FF
0F2B: or y, a             ; AA
0F2C: or y, a             ; AA
0F2D: sub a, y            ; 4A
0F2E: mul y, z            ; 55
0F2F: mul y, z            ; 55
0F30: mul x, a            ; 52
0F31: or x, w             ; A5
0F32: sub w, x            ; 44
0F33: mul x, z            ; 50
0F34: add z, w            ; 29
0F35: jmp.z $FFFD         ; F5 FD FF
0F38: nop                 ; FF
0F39: nop                 ; FE
0F3A: add w, a            ; 2F
0F3B: or y, a             ; AA
0F3C: xor x, z            ; BE
0F3D: push x              ; 01
0F3E: nop                 ; 00
0F3F: nop                 ; 00
0F40: nop                 ; 00
0F41: shl y               ; D6
0F42: dec z               ; 6E
0F43: call $A549          ; 15 49 A5
0F46: nop                 ; 00
0F47: nop                 ; 00
0F48: nop                 ; 00
0F49: nop                 ; 00
0F4A: nop                 ; 00
0F4B: nop                 ; 00
0F4C: nop                 ; 00
0F4D: nop                 ; 00
0F4E: nop                 ; 00
0F4F: nop                 ; 00
0F50: nop                 ; 00
0F51: nop                 ; FC
0F52: nop                 ; FF
0F53: or y, a             ; AA
0F54: mul x, a            ; 52
0F55: add z, a            ; 2A
0F56: mul y, z            ; 55
0F57: or x, w             ; A5
0F58: or y, a             ; AA
0F59: mul y, y            ; 54
0F5A: store $D525, y      ; 11 25 D5
0F5D: mul z, z            ; 5A
0F5E: nop                 ; FF
0F5F: nop                 ; FF
0F60: nop                 ; FF
0F61: nop                 ; FF
0F62: and a, x            ; 9F
0F63: store $877D, x      ; 10 7D 87
0F66: nop                 ; 00
0F67: sub z, y            ; 40
0F68: nop                 ; 00
0F69: mul z, a            ; 5C
0F6A: or a, z             ; B5
0F6B: mul a, z            ; 64
0F6C: store $6A54, z      ; 12 54 6A
0F6F: push x              ; 01
0F70: nop                 ; 00
0F71: nop                 ; 00
0F72: nop                 ; 00
0F73: nop                 ; 00
0F74: nop                 ; 00
0F75: nop                 ; 00
0F76: nop                 ; 00
0F77: nop                 ; 00
0F78: nop                 ; 00
0F79: nop                 ; FC
0F7A: nop                 ; FF
0F7B: and x, a            ; 92
0F7C: mul y, y            ; 54
0F7D: or y, w             ; A9
0F7E: and x, a            ; 92
0F7F: mul y, y            ; 54
0F80: and y, w            ; 95
0F81: or y, a             ; AA
0F82: sub a, y            ; 4A
0F83: sub a, y            ; 4A
0F84: mul y, z            ; 55
0F85: jmp $FFFF, w        ; EF FF FF
0F88: nop                 ; FF
0F89: nop                 ; FF
0F8A: cmp z, a            ; 7F
0F8B: and a, w            ; A2
0F8C: nop                 ; FC
0F8D: push a              ; 05
0F8E: nop                 ; 00
0F8F: push x              ; 01
0F90: nop                 ; 00
0F91: or a, w             ; B6
0F92: cmpbit w            ; 8D 92
0F94: sub w, x            ; 44
0F95: sub z, y            ; 40
0F96: add y, x            ; 21
0F97: push x              ; 01
0F98: nop                 ; 00
0F99: nop                 ; 00
0F9A: nop                 ; 00
0F9B: nop                 ; 00
0F9C: nop                 ; 00
0F9D: nop                 ; 00
0F9E: nop                 ; 00
0F9F: nop                 ; 00
0FA0: nop                 ; 00
0FA1: nop                 ; FC
0FA2: nop                 ; FF
0FA3: mul y, z            ; 55
0FA4: and y, w            ; 95
0FA5: or y, a             ; AA
0FA6: or y, a             ; AA
0FA7: add z, a            ; 2A
0FA8: or y, w             ; A9
0FA9: or y, a             ; AA
0FAA: add z, a            ; 2A
0FAB: mul x, w            ; 51
0FAC: shl x               ; D5
0FAD: not w               ; BA
0FAE: nop                 ; FF
0FAF: nop                 ; FF
0FB0: nop                 ; FF
0FB1: nop                 ; FF
0FB2: nop                 ; FF
0FB3: pop w               ; 09
0FB4: jmp.eq $042F        ; F1 2F 04
0FB7: nop                 ; 00
0FB8: nop                 ; 00
0FB9: dec x               ; 6C
0FBA: add w, x            ; 2B
0FBB: mul y, y            ; 54
0FBC: and x, w            ; 91
0FBD: pop z               ; 08
0FBE: cmpbit x            ; 8A 00
0FC0: nop                 ; 00
0FC1: nop                 ; 00
0FC2: nop                 ; 00
0FC3: nop                 ; 00
0FC4: nop                 ; 00
0FC5: nop                 ; 00
0FC6: nop                 ; 00
0FC7: nop                 ; 00
0FC8: nop                 ; 00
0FC9: nop                 ; FC
0FCA: nop                 ; FF
0FCB: add y, w            ; 24
0FCC: or y, w             ; A9
0FCD: or y, a             ; AA
0FCE: add z, a            ; 2A
0FCF: mul y, z            ; 55
0FD0: mul y, z            ; 55
0FD1: mul y, z            ; 55
0FD2: shl x               ; D5
0FD3: or y, a             ; AA
0FD4: cmp y, a            ; 7A
0FD5: nop                 ; FF
0FD6: nop                 ; FF
0FD7: nop                 ; FF
0FD8: nop                 ; FF
0FD9: nop                 ; FF
0FDA: nop                 ; FF
0FDB: sub w, y            ; 45
0FDC: ror x               ; E4
0FDD: set x, $00          ; 17 00
0FDF: nop                 ; 00
0FE0: nop                 ; 00
0FE1: or y, z             ; A8
0FE2: and y, a            ; 96
0FE3: add y, y            ; 22
0FE4: mul y, z            ; 55
0FE5: nop                 ; 00
0FE6: or y, w             ; A9
0FE7: push y              ; 02
0FE8: nop                 ; 00
0FE9: nop                 ; 00
0FEA: nop                 ; 00
0FEB: nop                 ; 00
0FEC: nop                 ; 00
0FED: nop                 ; 00
0FEE: nop                 ; 00
0FEF: nop                 ; 00
0FF0: nop                 ; 00
0FF1: nop                 ; FC
0FF2: nop                 ; FF
0FF3: mul y, z            ; 55
0FF4: sub a, y            ; 4A
0FF5: mul x, a            ; 52
0FF6: or y, a             ; AA
0FF7: mul x, a            ; 52
0FF8: mul y, z            ; 55
0FF9: mul y, z            ; 55
0FFA: or a, z             ; B5
0FFB: or y, a             ; AA
0FFC: shl y               ; D6
0FFD: nop                 ; FF
0FFE: nop                 ; FF
0FFF: nop                 ; FF
1000: nop                 ; FF
1001: nop                 ; FF
1002: nop                 ; FF
1003: cmp w, w            ; 83
1004: cmp a, w            ; 88
1005: xor x, w            ; BF
1006: store $0000, x      ; 10 00 00
1009: xor a, x            ; D0
100A: not w               ; BA
100B: sub w, a            ; 48
100C: cmp a, x            ; 85
100D: nop                 ; 00
100E: add y, y            ; 22
100F: push x              ; 01
1010: nop                 ; 00
1011: nop                 ; 00
1012: nop                 ; 00
1013: nop                 ; 00
1014: nop                 ; 00
1015: nop                 ; 00
1016: nop                 ; 00
1017: nop                 ; 00
1018: nop                 ; 00
1019: nop                 ; FC
101A: nop                 ; FF
101B: sub a, x            ; 49
101C: or y, w             ; A9
101D: or y, a             ; AA
101E: or y, a             ; AA
101F: or y, a             ; AA
1020: or y, a             ; AA
1021: or y, a             ; AA
1022: shl y               ; D6
1023: mul y, w            ; 56
1024: nop                 ; FB
1025: nop                 ; FF
1026: nop                 ; FF
1027: nop                 ; FF
1028: nop                 ; FF
1029: nop                 ; FF
102A: nop                 ; FF
102B: push a              ; 05
102C: sub z, w            ; 42
102D: nop                 ; FF
102E: push x              ; 01
102F: sub z, y            ; 40
1030: nop                 ; 00
1031: mul x, a            ; 52
1032: call $2952          ; 15 52 29
1035: nop                 ; 00
1036: cmp a, w            ; 88
1037: nop                 ; 00
1038: nop                 ; 00
1039: nop                 ; 00
103A: nop                 ; 00
103B: nop                 ; 00
103C: nop                 ; 00
103D: nop                 ; 00
103E: nop                 ; 00
103F: nop                 ; 00
1040: nop                 ; 00
1041: nop                 ; FC
1042: nop                 ; FF
1043: add z, a            ; 2A
1044: add y, a            ; 25
1045: and y, w            ; 95
1046: or y, a             ; AA
1047: or y, a             ; AA
1048: or y, a             ; AA
1049: or y, a             ; AA
104A: or a, z             ; B5
104B: nop                 ; FD
104C: shr a               ; DE
104D: nop                 ; FF
104E: nop                 ; FF
104F: nop                 ; FF
1050: nop                 ; FF
1051: nop                 ; FF
1052: nop                 ; FF
1053: add y, x            ; 21
1054: push w              ; 04
1055: cmp z, y            ; 7C
1056: pop y               ; 07
1057: nop                 ; 00
1058: nop                 ; 00
1059: and a, y            ; A0
105A: jmp z, w            ; EB
105B: sub w, x            ; 44
105C: or y, a             ; AA
105D: push x              ; 01
105E: add y, a            ; 25
105F: push a              ; 05
1060: nop                 ; 00
1061: nop                 ; 00
1062: nop                 ; 00
1063: nop                 ; 00
1064: nop                 ; 00
1065: nop                 ; 00
1066: nop                 ; 00
1067: nop                 ; 00
1068: nop                 ; 00
1069: nop                 ; FC
106A: nop                 ; FF
106B: mul x, a            ; 52
106C: mul y, z            ; 55
106D: or y, w             ; A9
106E: or y, a             ; AA
106F: sub a, y            ; 4A
1070: mul y, z            ; 55
1071: or a, z             ; B5
1072: shl y               ; D6
1073: mul y, w            ; 56
1074: resume              ; F7 FF
1076: nop                 ; FF
1077: nop                 ; FF
1078: nop                 ; FF
1079: nop                 ; FF
107A: mul w, z            ; 5F
107B: cmp w, a            ; 84
107C: and x, z            ; 90
107D: nop                 ; FA
107E: load z, $0000       ; 0D 00 00
1081: or w, y             ; B0
1082: sub y, x            ; 3A
1083: and x, a            ; 92
1084: cmp y, a            ; 7A
1085: push z              ; 03
1086: and x, z            ; 90
1087: push y              ; 02
1088: nop                 ; 00
1089: nop                 ; 00
108A: nop                 ; 00
108B: nop                 ; 00
108C: nop                 ; 00
108D: nop                 ; 00
108E: nop                 ; 00
108F: nop                 ; 00
1090: nop                 ; 00
1091: nop                 ; FC
1092: nop                 ; FF
1093: and y, w            ; 95
1094: and x, a            ; 92
1095: or y, a             ; AA
1096: sub a, y            ; 4A
1097: mul y, z            ; 55
1098: mul y, z            ; 55
1099: dec y               ; 6D
109A: not a               ; BB
109B: nop                 ; FD
109C: nop                 ; FF
109D: nop                 ; FF
109E: nop                 ; FF
109F: nop                 ; FF
10A0: nop                 ; FF
10A1: nop                 ; FF
10A2: add w, a            ; 2F
10A3: push x              ; 01
10A4: add a, z            ; 32
10A5: rol y               ; E0
10A6: sub x, z            ; 37
10A7: nop                 ; 00
10A8: nop                 ; 00
10A9: and a, y            ; A0
10AA: sub a, z            ; 4B
10AB: sub a, x            ; 49
10AC: shl z               ; D7
10AD: load w, $054A       ; 0E 4A 05
10B0: nop                 ; 00
10B1: nop                 ; 00
10B2: nop                 ; 00
10B3: nop                 ; 00
10B4: nop                 ; 00
10B5: nop                 ; 00
10B6: nop                 ; 00
10B7: nop                 ; 00
10B8: nop                 ; 00
10B9: nop                 ; FC
10BA: nop                 ; FF
10BB: mul y, y            ; 54
10BC: or y, a             ; AA
10BD: mul x, a            ; 52
10BE: or y, a             ; AA
10BF: or y, a             ; AA
10C0: or y, a             ; AA
10C1: shl x               ; D5
10C2: jmp $FFFE, z        ; EE FE FF
10C5: nop                 ; FF
10C6: nop                 ; FF
10C7: nop                 ; FF
10C8: nop                 ; FF
10C9: nop                 ; FF
10CA: and z, x            ; 97
10CB: store $E811, x      ; 10 11 E8
10CE: mul w, z            ; 5F
10CF: nop                 ; 00
10D0: nop                 ; 00
10D1: or y, a             ; AA
10D2: add z, x            ; 26
10D3: or x, z             ; A4
10D4: nop                 ; FD
10D5: call $07B4          ; 15 B4 07
10D8: nop                 ; 00
10D9: nop                 ; 00
10DA: nop                 ; 00
10DB: nop                 ; 00
10DC: nop                 ; 00
10DD: nop                 ; 00
10DE: nop                 ; 00
10DF: nop                 ; 00
10E0: nop                 ; 00
10E1: nop                 ; FC
10E2: nop                 ; FF
10E3: sub a, y            ; 4A
10E4: or x, w             ; A5
10E5: mul y, y            ; 54
10E6: mul y, z            ; 55
10E7: mul y, z            ; 55
10E8: mul y, z            ; 55
10E9: not a               ; BB
10EA: or a, z             ; B5
10EB: shr y               ; DB
10EC: nop                 ; FF
10ED: nop                 ; FF
10EE: nop                 ; FF
10EF: nop                 ; FF
10F0: nop                 ; FF
10F1: nop                 ; FF
10F2: add y, a            ; 25
10F3: push y              ; 02
10F4: cmp w, a            ; 84
10F5: nop                 ; 00
10F6: nop                 ; FF
10F7: push x              ; 01
10F8: cmp w, x            ; 80
10F9: shl y               ; D6
10FA: cmp a, a            ; 89
10FB: mul z, z            ; 5A
10FC: mul z, w            ; 5B
10FD: sub x, z            ; 37
10FE: jmp $000A, x        ; EC 0A 00
1101: nop                 ; 00
1102: nop                 ; 00
1103: nop                 ; 00
1104: nop                 ; 00
1105: nop                 ; 00
1106: nop                 ; 00
1107: nop                 ; 00
1108: nop                 ; 00
1109: nop                 ; FC
110A: nop                 ; FF
110B: mul y, z            ; 55
110C: add z, w            ; 29
110D: mul y, z            ; 55
110E: mul y, z            ; 55
110F: mul y, z            ; 55
1110: or a, z             ; B5
1111: shl y               ; D6
1112: shr a               ; DE
1113: nop                 ; FF
1114: nop                 ; FF
1115: nop                 ; FF
1116: nop                 ; FF
1117: nop                 ; FF
1118: nop                 ; FF
1119: nop                 ; FF
111A: mul y, z            ; 55
111B: cmp w, y            ; 81
111C: nop                 ; 00
111D: sub z, y            ; 40
111E: xor x, w            ; BF
111F: push y              ; 02
1120: mul w, w            ; 60
1121: sub y, w            ; 3D
1122: mul x, a            ; 52
1123: jmp x, y            ; EA
1124: jmp $B4AD, y        ; ED AD B4
1127: pop x               ; 06
1128: nop                 ; 00
1129: nop                 ; 00
112A: nop                 ; 00
112B: nop                 ; 00
112C: nop                 ; 00
112D: nop                 ; 00
112E: nop                 ; 00
112F: nop                 ; 00
1130: nop                 ; 00
1131: nop                 ; FC
1132: nop                 ; FF
1133: mul x, a            ; 52
1134: or y, a             ; AA
1135: sub a, y            ; 4A
1136: mul y, z            ; 55
1137: mul y, z            ; 55
1138: dec y               ; 6D
1139: not a               ; BB
113A: jmp.z $FFFE         ; F5 FE FF
113D: nop                 ; FF
113E: nop                 ; FF
113F: nop                 ; FF
1140: nop                 ; FF
1141: cmp z, a            ; 7F
1142: xor y, x            ; C1
1143: pop z               ; 08
1144: add y, a            ; 25
1145: push y              ; 02
1146: nop                 ; FC
1147: pop y               ; 07
1148: mul y, y            ; 54
1149: xor w, x            ; CB
114A: or x, z             ; A4
114B: cmp x, a            ; 75
114C: cmp z, a            ; 7F
114D: mul z, w            ; 5B
114E: or z, w             ; AD
114F: load z, $0000       ; 0D 00 00
1152: nop                 ; 00
1153: nop                 ; 00
1154: nop                 ; 00
1155: nop                 ; 00
1156: nop                 ; 00
1157: nop                 ; 00
1158: nop                 ; 00
1159: nop                 ; FC
115A: nop                 ; FF
115B: or y, a             ; AA
115C: sub a, y            ; 4A
115D: mul y, z            ; 55
115E: mul y, z            ; 55
115F: or a, z             ; B5
1160: or y, a             ; AA
1161: jmp $FFBE, y        ; ED BE FF
1164: nop                 ; FF
1165: nop                 ; FF
1166: nop                 ; FF
1167: nop                 ; FF
1168: nop                 ; FF
1169: xor x, w            ; BF
116A: jmp.lt $0003        ; F4 03 00
116D: nop                 ; 00
116E: nop                 ; FA
116F: sub a, a            ; 4D
1170: jmp x, y            ; EA
1171: mul y, z            ; 55
1172: shr x               ; DA
1173: shr x               ; DA
1174: shl x               ; D5
1175: dec w               ; 6F
1176: or a, z             ; B5
1177: pop a               ; 0A
1178: nop                 ; 00
1179: nop                 ; 00
117A: nop                 ; 00
117B: nop                 ; 00
117C: nop                 ; 00
117D: nop                 ; 00
117E: nop                 ; 00
117F: nop                 ; 00
1180: nop                 ; 00
1181: nop                 ; FC
1182: nop                 ; FF
1183: and y, z            ; 94
1184: or y, a             ; AA
1185: mul y, y            ; 54
1186: mul y, z            ; 55
1187: or z, w             ; AD
1188: dec y               ; 6D
1189: not a               ; BB
118A: resume              ; F7 FF
118C: nop                 ; FF
118D: nop                 ; FF
118E: nop                 ; FF
118F: nop                 ; FF
1190: nop                 ; FE
1191: mul w, z            ; 5F
1192: xor y, x            ; C1
1193: set x, $85          ; 17 85
1195: nop                 ; 00
1196: rol y               ; E0
1197: mul z, w            ; 5B
1198: mul x, w            ; 51
1199: mul y, z            ; 55
119A: or a, z             ; B5
119B: cmp y, y            ; 77
119C: nop                 ; FF
119D: nop                 ; FA
119E: jmp $001E, z        ; EE 1E 00
11A1: nop                 ; 00
11A2: nop                 ; 00
11A3: nop                 ; 00
11A4: nop                 ; 00
11A5: nop                 ; 00
11A6: nop                 ; 00
11A7: nop                 ; 00
11A8: nop                 ; 00
11A9: nop                 ; FC
11AA: nop                 ; FF
11AB: mul y, z            ; 55
11AC: or y, w             ; A9
11AD: or y, a             ; AA
11AE: or y, a             ; AA
11AF: or a, z             ; B5
11B0: or a, w             ; B6
11B1: jmp $FFFE, y        ; ED FE FF
11B4: nop                 ; FF
11B5: nop                 ; FF
11B6: nop                 ; FF
11B7: or w, x             ; AF
11B8: jmp z, w            ; EB
11B9: add w, a            ; 2F
11BA: jmp.lt $2003        ; F4 03 20
11BD: pop z               ; 08
11BE: xor a, x            ; D0
11BF: dec w               ; 6F
11C0: xor x, y            ; BD
11C1: cmp w, x            ; 80
11C2: shr a               ; DE
11C3: shr x               ; DA
11C4: mul y, z            ; 55
11C5: or w, x             ; AF
11C6: or a, z             ; B5
11C7: push x              ; 01
11C8: nop                 ; 00
11C9: nop                 ; 00
11CA: nop                 ; 00
11CB: nop                 ; 00
11CC: nop                 ; 00
11CD: nop                 ; 00
11CE: nop                 ; 00
11CF: nop                 ; 00
11D0: nop                 ; 00
11D1: nop                 ; FC
11D2: nop                 ; FF
11D3: mul x, a            ; 52
11D4: and y, w            ; 95
11D5: or y, a             ; AA
11D6: or y, a             ; AA
11D7: shl y               ; D6
11D8: dec y               ; 6D
11D9: not a               ; BB
11DA: nop                 ; FD
11DB: nop                 ; FF
11DC: nop                 ; FF
11DD: nop                 ; FF
11DE: nop                 ; FF
11DF: nop                 ; FB
11E0: mul z, z            ; 5A
11E1: sub a, z            ; 4B
11E2: xor y, x            ; C1
11E3: push a              ; 05
11E4: call $0000          ; 15 00 00
11E7: rol x               ; DF
11E8: mul y, a            ; 57
11E9: push y              ; 02
11EA: or a, y             ; B4
11EB: cmp y, y            ; 77
11EC: nop                 ; FF
11ED: nop                 ; FD
11EE: mul z, w            ; 5B
11EF: call $0000          ; 15 00 00
11F2: nop                 ; 00
11F3: nop                 ; 00
11F4: nop                 ; 00
11F5: nop                 ; 00
11F6: nop                 ; 00
11F7: nop                 ; 00
11F8: nop                 ; 00
11F9: nop                 ; FC
11FA: nop                 ; FF
11FB: or y, a             ; AA
11FC: or y, a             ; AA
11FD: or y, a             ; AA
11FE: inc w               ; 6A
11FF: dec y               ; 6D
1200: not a               ; BB
1201: jmp $FFFF, y        ; ED FF FF
1204: nop                 ; FF
1205: nop                 ; FF
1206: cmp z, a            ; 7F
1207: add w, z            ; 2D
1208: mul y, z            ; 55
1209: add y, a            ; 25
120A: ror a               ; E8
120B: sub z, a            ; 43
120C: add a, x            ; 30
120D: cmp w, x            ; 80
120E: sub z, y            ; 40
120F: cmp x, a            ; 75
1210: add w, z            ; 2D
1211: nop                 ; 00
1212: shr x               ; DA
1213: jmp x, y            ; EA
1214: cmp z, a            ; 7F
1215: mul y, a            ; 57
1216: mul y, a            ; 57
1217: push w              ; 04
1218: nop                 ; 00
1219: nop                 ; 00
121A: nop                 ; 00
121B: nop                 ; 00
121C: nop                 ; 00
121D: nop                 ; 00
121E: nop                 ; 00
121F: nop                 ; 00
1220: nop                 ; 00
1221: nop                 ; FC
1222: nop                 ; FF
1223: add z, a            ; 2A
1224: mul y, z            ; 55
1225: mul y, z            ; 55
1226: mul y, z            ; 55
1227: shr y               ; DB
1228: dec z               ; 6E
1229: not a               ; BB
122A: nop                 ; FF
122B: nop                 ; FF
122C: nop                 ; FF
122D: nop                 ; FF
122E: rol x               ; DF
122F: shr y               ; DB
1230: mul y, z            ; 55
1231: pop z               ; 08
1232: xor x, a            ; C0
1233: load x, $1092       ; 0B 92 10
1236: nop                 ; 00
1237: shr w               ; DD
1238: sub y, y            ; 3B
1239: add x, a            ; 20
123A: xor a, x            ; D0
123B: or w, x             ; AF
123C: nop                 ; FF
123D: nop                 ; FD
123E: pop a               ; 0A
123F: add a, y            ; 31
1240: nop                 ; 00
1241: nop                 ; 00
1242: nop                 ; 00
1243: nop                 ; 00
1244: nop                 ; 00
1245: nop                 ; 00
1246: nop                 ; 00
1247: nop                 ; 00
1248: nop                 ; 00
1249: nop                 ; FC
124A: nop                 ; FF
124B: or y, a             ; AA
124C: or y, a             ; AA
124D: or y, a             ; AA
124E: shr x               ; DA
124F: inc w               ; 6A
1250: not a               ; BB
1251: jmp $FFFF, y        ; ED FF FF
1254: nop                 ; FF
1255: nop                 ; FF
1256: cmp y, y            ; 77
1257: mul y, z            ; 55
1258: pop a               ; 0A
1259: sub z, z            ; 41
125A: jmp.neq $0100       ; F2 00 01
125D: nop                 ; 00
125E: nop                 ; 00
125F: cmp x, w            ; 74
1260: add w, z            ; 2D
1261: pop z               ; 08
1262: and a, y            ; A0
1263: nop                 ; FA
1264: nop                 ; FF
1265: jmp $1EA7, w        ; EF A7 1E
1268: nop                 ; 00
1269: nop                 ; 00
126A: nop                 ; 00
126B: nop                 ; 00
126C: nop                 ; 00
126D: nop                 ; 00
126E: nop                 ; 00
126F: nop                 ; 00
1270: nop                 ; 00
1271: nop                 ; FC
1272: nop                 ; FF
1273: or y, a             ; AA
1274: or y, a             ; AA
1275: or y, a             ; AA
1276: mul y, w            ; 56
1277: xor x, y            ; BD
1278: dec y               ; 6D
1279: nop                 ; FF
127A: nop                 ; FB
127B: nop                 ; FF
127C: nop                 ; FF
127D: dec w               ; 6F
127E: mul w, x            ; 5D
127F: or z, x             ; AB
1280: add y, a            ; 25
1281: push w              ; 04
1282: xor x, a            ; C0
1283: push a              ; 05
1284: sub w, x            ; 44
1285: xor a, x            ; D0
1286: push w              ; 04
1287: xor a, x            ; D0
1288: mul z, w            ; 5B
1289: nop                 ; 00
128A: cmp w, a            ; 84
128B: xor x, w            ; BF
128C: nop                 ; FF
128D: mul w, z            ; 5F
128E: and w, z            ; 9D
128F: inc w               ; 6A
1290: nop                 ; 00
1291: nop                 ; 00
1292: nop                 ; 00
1293: nop                 ; 00
1294: nop                 ; 00
1295: nop                 ; 00
1296: nop                 ; 00
1297: nop                 ; 00
1298: nop                 ; 00
1299: nop                 ; FC
129A: nop                 ; FF
129B: or y, a             ; AA
129C: or y, a             ; AA
129D: or y, a             ; AA
129E: inc w               ; 6A
129F: jmp z, w            ; EB
12A0: or a, w             ; B6
12A1: dec y               ; 6D
12A2: nop                 ; FF
12A3: nop                 ; FF
12A4: nop                 ; FF
12A5: xor x, w            ; BF
12A6: cmp y, y            ; 77
12A7: mul y, z            ; 55
12A8: push y              ; 02
12A9: nop                 ; 00
12AA: add z, z            ; 28
12AB: cmp w, x            ; 80
12AC: nop                 ; 00
12AD: mul x, a            ; 52
12AE: nop                 ; 00
12AF: mul w, w            ; 60
12B0: add w, a            ; 2F
12B1: nop                 ; 00
12B2: nop                 ; 00
12B3: nop                 ; FD
12B4: resume              ; F7 FB
12B6: cmp y, y            ; 77
12B7: add x, y            ; 1D
12B8: nop                 ; 00
12B9: nop                 ; 00
12BA: nop                 ; 00
12BB: nop                 ; 00
12BC: nop                 ; 00
12BD: nop                 ; 00
12BE: nop                 ; 00
12BF: nop                 ; 00
12C0: nop                 ; 00
12C1: nop                 ; FC
12C2: nop                 ; FF
12C3: mul y, z            ; 55
12C4: mul y, z            ; 55
12C5: shl x               ; D5
12C6: or y, a             ; AA
12C7: or z, w             ; AD
12C8: jmp $FFFF, y        ; ED FF FF
12CB: nop                 ; FF
12CC: nop                 ; FF
12CD: jmp $AAAA, w        ; EF AA AA
12D0: cmpbit x            ; 8A 90
12D2: sub z, y            ; 40
12D3: nop                 ; 00
12D4: store $0350, z      ; 12 50 03
12D7: cmp w, x            ; 80
12D8: nop                 ; FA
12D9: push y              ; 02
12DA: nop                 ; 00
12DB: cmp y, x            ; 76
12DC: nop                 ; FF
12DD: or z, a             ; AE
12DE: mul w, x            ; 5D
12DF: cmp y, y            ; 77
12E0: nop                 ; 00
12E1: nop                 ; 00
12E2: nop                 ; 00
12E3: nop                 ; 00
12E4: nop                 ; 00
12E5: nop                 ; 00
12E6: nop                 ; 00
12E7: nop                 ; 00
12E8: nop                 ; 00
12E9: nop                 ; FC
12EA: nop                 ; FF
12EB: or y, a             ; AA
12EC: or y, a             ; AA
12ED: or y, a             ; AA
12EE: or a, w             ; B6
12EF: cmp y, x            ; 76
12F0: not x               ; B7
12F1: int $FF             ; F6 FF
12F3: nop                 ; FF
12F4: xor x, w            ; BF
12F5: or a, z             ; B5
12F6: or y, a             ; AA
12F7: add z, a            ; 2A
12F8: push x              ; 01
12F9: nop                 ; 00
12FA: nop                 ; 00
12FB: nop                 ; 00
12FC: sub z, z            ; 41
12FD: inc y               ; 68
12FE: push a              ; 05
12FF: nop                 ; 00
1300: or w, x             ; AF
1301: pop w               ; 09
1302: nop                 ; 00
1303: nop                 ; FC
1304: mul w, z            ; 5F
1305: nop                 ; FB
1306: int $2A             ; F6 2A
1308: nop                 ; 00
1309: nop                 ; 00
130A: nop                 ; 00
130B: nop                 ; 00
130C: nop                 ; 00
130D: nop                 ; 00
130E: nop                 ; 00
130F: nop                 ; 00
1310: nop                 ; 00
1311: nop                 ; FC
1312: nop                 ; FF
1313: or y, a             ; AA
1314: or y, a             ; AA
1315: or y, a             ; AA
1316: inc w               ; 6A
1317: shr y               ; DB
1318: jmp $DDBF, y        ; ED BF DD
131B: nop                 ; FF
131C: cmp y, x            ; 76
131D: or w, x             ; AF
131E: or y, a             ; AA
131F: or y, a             ; AA
1320: push w              ; 04
1321: push y              ; 02
1322: nop                 ; 00
1323: nop                 ; 00
1324: pop z               ; 08
1325: mul x, z            ; 50
1326: and y, w            ; 95
1327: nop                 ; 00
1328: cmp y, z            ; 78
1329: and z, x            ; 97
132A: add x, a            ; 20
132B: cmp y, z            ; 78
132C: nop                 ; FD
132D: not x               ; B7
132E: xor x, w            ; BF
132F: shr y               ; DB
1330: nop                 ; 00
1331: nop                 ; 00
1332: nop                 ; 00
1333: nop                 ; 00
1334: nop                 ; 00
1335: nop                 ; 00
1336: nop                 ; 00
1337: nop                 ; 00
1338: nop                 ; 00
1339: nop                 ; FC
133A: nop                 ; FF
133B: mul y, z            ; 55
133C: mul y, z            ; 55
133D: dec y               ; 6D
133E: shr y               ; DB
133F: mul y, w            ; 56
1340: not x               ; B7
1341: nop                 ; FA
1342: nop                 ; FF
1343: or a, w             ; B6
1344: rol x               ; DF
1345: mul y, z            ; 55
1346: mul y, z            ; 55
1347: add y, a            ; 25
1348: add y, a            ; 25
1349: nop                 ; 00
134A: nop                 ; 00
134B: cmp w, x            ; 80
134C: mul x, a            ; 52
134D: shr x               ; DA
134E: call $EA00          ; 15 00 EA
1351: load a, $D800       ; 0F 00 D8
1354: shl z               ; D7
1355: shr a               ; DE
1356: shl x               ; D5
1357: dec z               ; 6E
1358: nop                 ; 00
1359: nop                 ; 00
135A: nop                 ; 00
135B: nop                 ; 00
135C: nop                 ; 00
135D: nop                 ; 00
135E: nop                 ; 00
135F: nop                 ; 00
1360: nop                 ; 00
1361: nop                 ; FC
1362: nop                 ; FF
1363: mul y, z            ; 55
1364: mul y, z            ; 55
1365: or z, x             ; AB
1366: or y, a             ; AA
1367: jmp $DFED, y        ; ED ED DF
136A: resume              ; F7 EF
136C: cmp x, a            ; 75
136D: mul y, a            ; 57
136E: and y, w            ; 95
136F: sub a, y            ; 4A
1370: cmp a, a            ; 89
1371: add x, a            ; 20
1372: pop z               ; 08
1373: nop                 ; 00
1374: store $5568, x      ; 10 68 55
1377: push y              ; 02
1378: xor a, x            ; D0
1379: cmp z, a            ; 7F
137A: nop                 ; 00
137B: jmp.lt $75BA        ; F4 BA 75
137E: nop                 ; FF
137F: or a, x             ; B3
1380: nop                 ; 00
1381: nop                 ; 00
1382: nop                 ; 00
1383: nop                 ; 00
1384: nop                 ; 00
1385: nop                 ; 00
1386: nop                 ; 00
1387: nop                 ; 00
1388: nop                 ; 00
1389: nop                 ; FC
138A: nop                 ; FF
138B: or y, a             ; AA
138C: inc w               ; 6A
138D: shl x               ; D5
138E: or a, w             ; B6
138F: mul z, z            ; 5A
1390: xor x, y            ; BD
1391: cmp y, a            ; 7A
1392: shr w               ; DD
1393: not w               ; BA
1394: shr a               ; DE
1395: mul y, z            ; 55
1396: add y, y            ; 22
1397: mul y, y            ; 54
1398: add y, a            ; 25
1399: push y              ; 02
139A: sub z, y            ; 40
139B: nop                 ; 00
139C: sub a, x            ; 49
139D: mul z, x            ; 58
139E: mul y, a            ; 57
139F: nop                 ; 00
13A0: rol y               ; E0
13A1: xor x, w            ; BF
13A2: and x, z            ; 90
13A3: nop                 ; FF
13A4: shr y               ; DB
13A5: nop                 ; FF
13A6: or z, w             ; AD
13A7: shr a               ; DE
13A8: nop                 ; 00
13A9: nop                 ; 00
13AA: nop                 ; 00
13AB: nop                 ; 00
13AC: nop                 ; 00
13AD: nop                 ; 00
13AE: nop                 ; 00
13AF: nop                 ; 00
13B0: nop                 ; 00
13B1: nop                 ; FC
13B2: nop                 ; FF
13B3: mul y, z            ; 55
13B4: or z, w             ; AD
13B5: mul z, z            ; 5A
13B6: shl x               ; D5
13B7: dec z               ; 6E
13B8: jmp z, w            ; EB
13B9: shl z               ; D7
13BA: xor x, w            ; BF
13BB: jmp $5AB5, w        ; EF B5 5A
13BE: sub a, x            ; 49
13BF: sub z, z            ; 41
13C0: sub a, y            ; 4A
13C1: and a, y            ; A0
13C2: push y              ; 02
13C3: nop                 ; 00
13C4: push y              ; 02
13C5: ror a               ; E8
13C6: mul w, x            ; 5D
13C7: store $7F00, w      ; 13 00 7F
13CA: push z              ; 03
13CB: xor x, y            ; BD
13CC: int $AF             ; F6 AF
13CE: nop                 ; FB
13CF: inc a               ; 6B
13D0: push x              ; 01
13D1: nop                 ; 00
13D2: nop                 ; 00
13D3: nop                 ; 00
13D4: nop                 ; 00
13D5: nop                 ; 00
13D6: nop                 ; 00
13D7: nop                 ; 00
13D8: nop                 ; 00
13D9: nop                 ; FC
13DA: nop                 ; FF
13DB: or y, a             ; AA
13DC: or y, a             ; AA
13DD: mul y, z            ; 55
13DE: mul z, w            ; 5B
13DF: or z, x             ; AB
13E0: or z, w             ; AD
13E1: cmp y, a            ; 7A
13E2: jmp.z $AB5A         ; F5 5A AB
13E5: mul y, w            ; 56
13E6: add y, a            ; 25
13E7: add z, a            ; 2A
13E8: push x              ; 01
13E9: pop z               ; 08
13EA: nop                 ; 00
13EB: and x, a            ; 92
13EC: nop                 ; 00
13ED: not z               ; B9
13EE: mul y, w            ; 56
13EF: push x              ; 01
13F0: cmp w, x            ; 80
13F1: nop                 ; FE
13F2: jmp $EBFF, y        ; ED FF EB
13F5: resume              ; F7 AE
13F7: or z, w             ; AD
13F8: push x              ; 01
13F9: nop                 ; 00
13FA: nop                 ; 00
13FB: nop                 ; 00
13FC: nop                 ; 00
13FD: nop                 ; 00
13FE: nop                 ; 00
13FF: nop                 ; 00
1400: nop                 ; 00
1401: nop                 ; FC
1402: nop                 ; FF
1403: inc w               ; 6A
1404: or a, z             ; B5
1405: shl y               ; D6
1406: inc w               ; 6A
1407: jmp.z $D776         ; F5 76 D7
140A: or w, x             ; AF
140B: or a, w             ; B6
140C: or y, a             ; AA
140D: or a, z             ; B5
140E: cmpbit x            ; 8A 40
1410: mul y, y            ; 54
1411: sub z, a            ; 43
1412: and x, w            ; 91
1413: push w              ; 04
1414: add x, a            ; 20
1415: or y, z             ; A8
1416: cmp x, a            ; 75
1417: sub a, a            ; 4D
1418: nop                 ; 00
1419: nop                 ; F8
141A: rol x               ; DF
141B: xor x, w            ; BF
141C: jmp $7DDF, z        ; EE DF 7D
141F: not a               ; BB
1420: push y              ; 02
1421: nop                 ; 00
1422: nop                 ; 00
1423: nop                 ; 00
1424: nop                 ; 00
1425: nop                 ; 00
1426: nop                 ; 00
1427: nop                 ; 00
1428: nop                 ; 00
1429: nop                 ; FC
142A: nop                 ; FF
142B: mul y, z            ; 55
142C: mul y, z            ; 55
142D: or z, w             ; AD
142E: mul y, w            ; 56
142F: mul z, w            ; 5B
1430: shr y               ; DB
1431: not w               ; BA
1432: shr x               ; DA
1433: shl x               ; D5
1434: mul z, z            ; 5A
1435: mul y, z            ; 55
1436: add y, a            ; 25
1437: store $1555, z      ; 12 55 15
143A: sub w, x            ; 44
143B: add x, a            ; 20
143C: push a              ; 05
143D: jmp x, y            ; EA
143E: mul w, y            ; 5E
143F: add y, a            ; 25
1440: nop                 ; 00
1441: nop                 ; FA
1442: nop                 ; FF
1443: nop                 ; FF
1444: nop                 ; FB
1445: cmp z, a            ; 7F
1446: resume              ; F7 AF
1448: nop                 ; 00
1449: nop                 ; 00
144A: nop                 ; 00
144B: nop                 ; 00
144C: nop                 ; 00
144D: nop                 ; 00
144E: nop                 ; 00
144F: nop                 ; 00
1450: nop                 ; 00
1451: nop                 ; FC
1452: nop                 ; FF
1453: or y, a             ; AA
1454: shl y               ; D6
1455: inc w               ; 6A
1456: or a, z             ; B5
1457: or z, w             ; AD
1458: or y, a             ; AA
1459: jmp $AD6B, z        ; EE 6B AD
145C: mul y, w            ; 56
145D: mul y, z            ; 55
145E: call $4AA4          ; 15 A4 4A
1461: push y              ; 02
1462: pop w               ; 09
1463: pop w               ; 09
1464: store $F5B8, x      ; 10 B8 F5
1467: sub x, z            ; 37
1468: push x              ; 01
1469: rol y               ; E0
146A: nop                 ; FF
146B: nop                 ; FE
146C: xor x, z            ; BE
146D: rol x               ; DF
146E: xor x, z            ; BE
146F: not w               ; BA
1470: push y              ; 02
1471: nop                 ; 00
1472: nop                 ; 00
1473: nop                 ; 00
1474: nop                 ; 00
1475: nop                 ; 00
1476: nop                 ; 00
1477: nop                 ; 00
1478: nop                 ; 00
1479: nop                 ; FC
147A: nop                 ; FF
147B: shr x               ; DA
147C: or y, a             ; AA
147D: mul z, z            ; 5A
147E: or z, x             ; AB
147F: or a, w             ; B6
1480: dec y               ; 6D
1481: or z, x             ; AB
1482: or a, w             ; B6
1483: or y, a             ; AA
1484: or y, a             ; AA
1485: or y, a             ; AA
1486: or y, a             ; AA
1487: or y, a             ; AA
1488: mul y, y            ; 54
1489: push x              ; 01
148A: sub z, y            ; 40
148B: add x, a            ; 20
148C: nop                 ; 00
148D: or y, z             ; A8
148E: mul w, y            ; 5E
148F: and w, z            ; 9D
1490: nop                 ; 00
1491: and a, y            ; A0
1492: resume              ; F7 FF
1494: rol x               ; DF
1495: jmp $2FEB, w        ; EF EB 2F
1498: nop                 ; 00
1499: mul y, y            ; 54
149A: push x              ; 01
149B: nop                 ; 00
149C: nop                 ; 00
149D: nop                 ; 00
149E: nop                 ; 00
149F: nop                 ; 00
14A0: nop                 ; 00
14A1: nop                 ; FC
14A2: nop                 ; FF
14A3: or y, a             ; AA
14A4: inc w               ; 6A
14A5: or z, x             ; AB
14A6: shr x               ; DA
14A7: inc w               ; 6A
14A8: shl x               ; D5
14A9: int $5A             ; F6 5A
14AB: inc a               ; 6B
14AC: mul y, z            ; 55
14AD: mul y, z            ; 55
14AE: mul y, z            ; 55
14AF: mul y, z            ; 55
14B0: or x, w             ; A5
14B1: push w              ; 04
14B2: nop                 ; 00
14B3: push w              ; 04
14B4: sub w, y            ; 45
14B5: rol y               ; E0
14B6: jmp z, w            ; EB
14B7: jmp.z $4008         ; F5 08 40
14BA: nop                 ; FF
14BB: jmp $BFBF, w        ; EF BF BF
14BE: shr a               ; DE
14BF: or y, a             ; AA
14C0: pop a               ; 0A
14C1: or y, z             ; A8
14C2: pop a               ; 0A
14C3: nop                 ; 00
14C4: nop                 ; 00
14C5: nop                 ; 00
14C6: nop                 ; 00
14C7: nop                 ; 00
14C8: nop                 ; 00
14C9: nop                 ; FC
14CA: nop                 ; FF
14CB: or y, a             ; AA
14CC: or z, w             ; AD
14CD: inc w               ; 6A
14CE: or z, x             ; AB
14CF: or y, a             ; AA
14D0: or a, w             ; B6
14D1: mul z, z            ; 5A
14D2: inc a               ; 6B
14D3: or z, w             ; AD
14D4: or y, a             ; AA
14D5: or y, a             ; AA
14D6: add z, a            ; 2A
14D7: sub a, x            ; 49
14D8: add z, w            ; 29
14D9: cmp w, y            ; 81
14DA: cmp w, x            ; 80
14DB: add x, a            ; 20
14DC: store $BE92, x      ; 10 92 BE
14DF: mul y, z            ; 55
14E0: push z              ; 03
14E1: nop                 ; 00
14E2: nop                 ; FF
14E3: nop                 ; FF
14E4: nop                 ; FF
14E5: cmp x, a            ; 75
14E6: cmp y, a            ; 7A
14E7: sub a, z            ; 4B
14E8: store $02F4, a      ; 14 F4 02
14EB: nop                 ; 00
14EC: nop                 ; 00
14ED: nop                 ; 00
14EE: nop                 ; 00
14EF: nop                 ; 00
14F0: nop                 ; 00
14F1: nop                 ; FC
14F2: nop                 ; FF
14F3: or z, x             ; AB
14F4: inc w               ; 6A
14F5: mul z, w            ; 5B
14F6: dec y               ; 6D
14F7: or z, w             ; AD
14F8: mul y, z            ; 55
14F9: mul y, a            ; 57
14FA: or z, w             ; AD
14FB: or y, a             ; AA
14FC: or y, a             ; AA
14FD: add z, a            ; 2A
14FE: or y, w             ; A9
14FF: or y, a             ; AA
1500: or y, a             ; AA
1501: pop a               ; 0A
1502: nop                 ; 00
1503: push w              ; 04
1504: nop                 ; 00
1505: or x, z             ; A4
1506: inc w               ; 6A
1507: rol x               ; DF
1508: store $B800, z      ; 12 00 B8
150B: nop                 ; FF
150C: cmp z, a            ; 7F
150D: rol x               ; DF
150E: shr x               ; DA
150F: and z, x            ; 97
1510: inc a               ; 6B
1511: nop                 ; F8
1512: call $0000          ; 15 00 00
1515: nop                 ; 00
1516: nop                 ; 00
1517: nop                 ; 00
1518: nop                 ; 00
1519: nop                 ; FC
151A: nop                 ; FF
151B: mul y, z            ; 55
151C: mul y, z            ; 55
151D: or z, w             ; AD
151E: mul y, z            ; 55
151F: or z, x             ; AB
1520: shr x               ; DA
1521: inc w               ; 6A
1522: mul y, z            ; 55
1523: mul y, z            ; 55
1524: mul y, z            ; 55
1525: or x, w             ; A5
1526: sub a, y            ; 4A
1527: and y, w            ; 95
1528: sub a, y            ; 4A
1529: push a              ; 05
152A: sub z, y            ; 40
152B: push y              ; 02
152C: sub z, w            ; 42
152D: add x, z            ; 1E
152E: not a               ; BB
152F: cmp x, a            ; 75
1530: load x, $FC00       ; 0B 00 FC
1533: nop                 ; FB
1534: nop                 ; FF
1535: inc w               ; 6A
1536: dec y               ; 6D
1537: shr w               ; DD
1538: or a, w             ; B6
1539: jmp.lt $0007        ; F4 07 00
153C: nop                 ; 00
153D: nop                 ; 00
153E: nop                 ; 00
153F: nop                 ; 00
1540: nop                 ; 00
1541: nop                 ; FC
1542: nop                 ; FF
1543: shr x               ; DA
1544: shr x               ; DA
1545: inc w               ; 6A
1546: mul y, z            ; 55
1547: shl x               ; D5
1548: or y, a             ; AA
1549: mul y, z            ; 55
154A: mul y, z            ; 55
154B: mul y, z            ; 55
154C: mul y, z            ; 55
154D: mul y, z            ; 55
154E: mul y, z            ; 55
154F: or x, w             ; A5
1550: mul y, y            ; 54
1551: pop w               ; 09
1552: nop                 ; 00
1553: nop                 ; 00
1554: pop z               ; 08
1555: dec a               ; 70
1556: or y, a             ; AA
1557: rol x               ; DF
1558: mul x, x            ; 4E
1559: push x              ; 01
155A: rol y               ; E0
155B: nop                 ; FF
155C: xor x, w            ; BF
155D: shr w               ; DD
155E: nop                 ; FB
155F: resume              ; F7 57
1561: xor a, y            ; D1
1562: add x, w            ; 1F
1563: nop                 ; 00
1564: nop                 ; 00
1565: nop                 ; 00
1566: nop                 ; 00
1567: nop                 ; 00
1568: nop                 ; 00
1569: nop                 ; FC
156A: nop                 ; FF
156B: or y, a             ; AA
156C: mul y, w            ; 56
156D: or z, x             ; AB
156E: or a, w             ; B6
156F: or a, w             ; B6
1570: or a, w             ; B6
1571: or y, a             ; AA
1572: mul y, w            ; 56
1573: mul y, z            ; 55
1574: mul y, z            ; 55
1575: add z, a            ; 2A
1576: mul y, z            ; 55
1577: or y, a             ; AA
1578: mul x, a            ; 52
1579: pop a               ; 0A
157A: nop                 ; 00
157B: cmp w, x            ; 80
157C: nop                 ; 00
157D: jmp $76ED, z        ; EE ED 76
1580: add w, x            ; 2B
1581: nop                 ; 00
1582: sub z, y            ; 40
1583: xor x, w            ; BF
1584: resume              ; F7 76
1586: xor x, w            ; BF
1587: mul w, x            ; 5D
1588: jmp $07A5, y        ; ED A5 07
158B: nop                 ; 00
158C: nop                 ; 00
158D: nop                 ; 00
158E: nop                 ; 00
158F: nop                 ; 00
1590: nop                 ; 00
1591: nop                 ; FC
1592: nop                 ; FF
1593: or y, a             ; AA
1594: or y, a             ; AA
1595: or y, a             ; AA
1596: or y, a             ; AA
1597: mul y, z            ; 55
1598: or z, x             ; AB
1599: mul z, z            ; 5A
159A: or y, w             ; A9
159B: or y, a             ; AA
159C: sub a, y            ; 4A
159D: or x, w             ; A5
159E: mul x, a            ; 52
159F: and y, w            ; 95
15A0: sub a, y            ; 4A
15A1: call $0080          ; 15 80 00
15A4: sub z, y            ; 40
15A5: and w, y            ; 9C
15A6: not x               ; B7
15A7: shr w               ; DD
15A8: dec y               ; 6D
15A9: push x              ; 01
15AA: nop                 ; 00
15AB: or x, z             ; A4
15AC: store $FFD9, a      ; 14 D9 FF
15AF: resume              ; F7 BF
15B1: mul x, x            ; 4E
15B2: add w, w            ; 2E
15B3: nop                 ; 00
15B4: nop                 ; 00
15B5: nop                 ; 00
15B6: nop                 ; 00
15B7: nop                 ; 00
15B8: nop                 ; 00
15B9: nop                 ; FC
15BA: nop                 ; FF
15BB: mul y, w            ; 56
15BC: mul y, z            ; 55
15BD: mul y, z            ; 55
15BE: mul y, z            ; 55
15BF: shl x               ; D5
15C0: or y, a             ; AA
15C1: or y, a             ; AA
15C2: mul y, w            ; 56
15C3: mul y, z            ; 55
15C4: mul x, a            ; 52
15C5: or y, w             ; A9
15C6: mul y, y            ; 54
15C7: mul y, z            ; 55
15C8: or y, a             ; AA
15C9: store $0000, a      ; 14 00 00
15CC: store $B670, x      ; 10 70 B6
15CF: cmp y, x            ; 76
15D0: or w, x             ; AF
15D1: push x              ; 01
15D2: nop                 ; 00
15D3: store $F442, z      ; 12 42 F4
15D6: nop                 ; FF
15D7: mul w, z            ; 5F
15D8: mul y, z            ; 55
15D9: and w, x            ; 9B
15DA: push y              ; 02
15DB: nop                 ; 00
15DC: nop                 ; 00
15DD: nop                 ; 00
15DE: nop                 ; 00
15DF: nop                 ; 00
15E0: nop                 ; 00
15E1: nop                 ; FC
15E2: nop                 ; FF
15E3: or y, a             ; AA
15E4: or a, z             ; B5
15E5: or y, a             ; AA
15E6: inc w               ; 6A
15E7: or z, w             ; AD
15E8: mul z, z            ; 5A
15E9: mul y, z            ; 55
15EA: or y, w             ; A9
15EB: or y, a             ; AA
15EC: add z, a            ; 2A
15ED: mul y, z            ; 55
15EE: and y, w            ; 95
15EF: mul x, a            ; 52
15F0: mul y, z            ; 55
15F1: add y, a            ; 25
15F2: nop                 ; 00
15F3: nop                 ; 00
15F4: nop                 ; 00
15F5: xor w, y            ; CC
15F6: jmp $B95E           ; E9 5E B9
15F9: pop a               ; 0A
15FA: nop                 ; 00
15FB: push w              ; 04
15FC: store $FFE1, x      ; 10 E1 FF
15FF: nop                 ; FF
1600: nop                 ; FF
1601: inc w               ; 6A
1602: pop z               ; 08
1603: nop                 ; 00
1604: nop                 ; 00
1605: nop                 ; 00
1606: nop                 ; 00
1607: nop                 ; 00
1608: nop                 ; 00
1609: nop                 ; FC
160A: nop                 ; FF
160B: mul z, z            ; 5A
160C: mul y, z            ; 55
160D: mul y, z            ; 55
160E: mul y, z            ; 55
160F: mul y, z            ; 55
1610: or x, w             ; A5
1611: or y, a             ; AA
1612: mul y, w            ; 56
1613: or x, w             ; A5
1614: mul y, y            ; 54
1615: add y, a            ; 25
1616: or x, w             ; A5
1617: or y, a             ; AA
1618: and x, a            ; 92
1619: add z, a            ; 2A
161A: nop                 ; 00
161B: nop                 ; 00
161C: cmp w, x            ; 80
161D: shr z               ; DC
161E: or y, x             ; A7
161F: jmp z, w            ; EB
1620: or w, x             ; AF
1621: push a              ; 05
1622: nop                 ; 00
1623: sub z, y            ; 40
1624: or y, a             ; AA
1625: ror x               ; E4
1626: nop                 ; FF
1627: nop                 ; FF
1628: or y, a             ; AA
1629: xor x, w            ; BF
162A: store $0000, a      ; 14 00 00
162D: nop                 ; 00
162E: nop                 ; 00
162F: nop                 ; 00
1630: nop                 ; 00
1631: nop                 ; FC
1632: nop                 ; FF
1633: mul y, z            ; 55
1634: mul y, z            ; 55
1635: or z, x             ; AB
1636: or y, a             ; AA
1637: or y, a             ; AA
1638: mul z, z            ; 5A
1639: mul y, z            ; 55
163A: or y, w             ; A9
163B: and y, z            ; 94
163C: and x, a            ; 92
163D: mul y, y            ; 54
163E: or y, w             ; A9
163F: mul y, y            ; 54
1640: mul y, z            ; 55
1641: mul y, z            ; 55
1642: push x              ; 01
1643: cmp w, z            ; 82
1644: nop                 ; 00
1645: dec a               ; 70
1646: shr a               ; DE
1647: cmp y, a            ; 7A
1648: jmp.z $0016         ; F5 16 00
164B: and y, z            ; 94
164C: sub w, a            ; 48
164D: cmp a, a            ; 89
164E: nop                 ; FF
164F: nop                 ; FF
1650: nop                 ; FF
1651: jmp x, y            ; EA
1652: push x              ; 01
1653: nop                 ; 00
1654: nop                 ; 00
1655: nop                 ; 00
1656: nop                 ; 00
1657: nop                 ; 00
1658: nop                 ; 00
1659: nop                 ; FC
165A: nop                 ; FF
165B: or y, a             ; AA
165C: or y, a             ; AA
165D: mul y, y            ; 54
165E: mul y, z            ; 55
165F: mul y, z            ; 55
1660: or x, w             ; A5
1661: or y, a             ; AA
1662: mul y, w            ; 56
1663: mul y, z            ; 55
1664: mul y, z            ; 55
1665: mul y, z            ; 55
1666: mul y, z            ; 55
1667: or x, w             ; A5
1668: add z, a            ; 2A
1669: or y, w             ; A9
166A: nop                 ; 00
166B: add x, a            ; 20
166C: nop                 ; 00
166D: rol y               ; E0
166E: shl a               ; D9
166F: or z, a             ; AE
1670: xor x, y            ; BD
1671: return              ; 16
1672: nop                 ; 00
1673: nop                 ; 00
1674: or x, w             ; A5
1675: and a, w            ; A2
1676: nop                 ; FF
1677: nop                 ; FF
1678: or z, x             ; AB
1679: not w               ; BA
167A: push y              ; 02
167B: nop                 ; 00
167C: nop                 ; 00
167D: nop                 ; 00
167E: nop                 ; 00
167F: nop                 ; 00
1680: nop                 ; 00
1681: nop                 ; FC
1682: nop                 ; FF
1683: mul y, z            ; 55
1684: mul y, z            ; 55
1685: or z, x             ; AB
1686: or y, a             ; AA
1687: or y, a             ; AA
1688: mul z, z            ; 5A
1689: mul y, z            ; 55
168A: add z, w            ; 29
168B: or x, w             ; A5
168C: add y, w            ; 24
168D: sub a, x            ; 49
168E: sub a, y            ; 4A
168F: add z, a            ; 2A
1690: or y, w             ; A9
1691: sub a, y            ; 4A
1692: load x, $0400       ; 0B 00 04
1695: nop                 ; 00
1696: and z, x            ; 97
1697: cmp z, x            ; 7B
1698: ror w               ; E7
1699: pop x               ; 06
169A: nop                 ; 00
169B: mul x, z            ; 50
169C: add z, z            ; 28
169D: load z, $FFFF       ; 0D FF FF
16A0: xor x, z            ; BE
16A1: resume              ; F7 0F
16A3: nop                 ; 00
16A4: nop                 ; 00
16A5: nop                 ; 00
16A6: nop                 ; 00
16A7: nop                 ; 00
16A8: nop                 ; 00
16A9: nop                 ; FC
16AA: nop                 ; FF
16AB: or y, a             ; AA
16AC: or y, a             ; AA
16AD: or y, a             ; AA
16AE: or y, a             ; AA
16AF: or y, a             ; AA
16B0: or y, a             ; AA
16B1: or y, a             ; AA
16B2: sub a, y            ; 4A
16B3: mul y, z            ; 55
16B4: mul y, z            ; 55
16B5: mul y, z            ; 55
16B6: or y, w             ; A9
16B7: or y, a             ; AA
16B8: sub a, y            ; 4A
16B9: mul x, a            ; 52
16BA: push w              ; 04
16BB: nop                 ; 00
16BC: nop                 ; 00
16BD: push w              ; 04
16BE: xor w, a            ; CF
16BF: or y, a             ; AA
16C0: xor x, y            ; BD
16C1: push y              ; 02
16C2: nop                 ; 00
16C3: nop                 ; 00
16C4: sub w, y            ; 45
16C5: mul x, w            ; 51
16C6: nop                 ; FF
16C7: mul w, x            ; 5D
16C8: jmp z, w            ; EB
16C9: not w               ; BA
16CA: add x, w            ; 1F
16CB: ror a               ; E8
16CC: nop                 ; 00
16CD: nop                 ; 00
16CE: nop                 ; 00
16CF: nop                 ; 00
16D0: nop                 ; 00
16D1: nop                 ; FC
16D2: nop                 ; FF
16D3: mul y, z            ; 55
16D4: mul y, z            ; 55
16D5: mul y, z            ; 55
16D6: mul y, z            ; 55
16D7: mul y, z            ; 55
16D8: mul y, z            ; 55
16D9: mul y, z            ; 55
16DA: or y, a             ; AA
16DB: mul y, y            ; 54
16DC: or y, a             ; AA
16DD: add y, w            ; 24
16DE: mul y, z            ; 55
16DF: sub a, x            ; 49
16E0: mul y, z            ; 55
16E1: mul y, z            ; 55
16E2: add w, x            ; 2B
16E3: nop                 ; 00
16E4: nop                 ; 00
16E5: nop                 ; 00
16E6: not y               ; B8
16E7: jmp $57D7, z        ; EE D7 57
16EA: nop                 ; 00
16EB: sub z, y            ; 40
16EC: mul x, z            ; 50
16ED: return              ; 16
16EE: nop                 ; FC
16EF: nop                 ; FF
16F0: xor x, z            ; BE
16F1: resume              ; F7 B5
16F3: or y, a             ; AA
16F4: push x              ; 01
16F5: nop                 ; 00
16F6: nop                 ; 00
16F7: nop                 ; 00
16F8: nop                 ; 00
16F9: nop                 ; FC
16FA: nop                 ; FF
16FB: or y, a             ; AA
16FC: or y, a             ; AA
16FD: mul z, z            ; 5A
16FE: mul y, z            ; 55
16FF: mul y, z            ; 55
1700: mul y, z            ; 55
1701: sub a, x            ; 49
1702: or y, w             ; A9
1703: and x, a            ; 92
1704: and x, a            ; 92
1705: or y, a             ; AA
1706: and x, a            ; 92
1707: add z, a            ; 2A
1708: mul y, z            ; 55
1709: or x, w             ; A5
170A: mul y, y            ; 54
170B: nop                 ; 00
170C: sub z, y            ; 40
170D: sub z, y            ; 40
170E: xor x, a            ; C0
170F: not a               ; BB
1710: int $02             ; F6 02
1712: nop                 ; 00
1713: nop                 ; 00
1714: cmp w, y            ; 81
1715: or y, z             ; A8
1716: nop                 ; FE
1717: dec w               ; 6F
1718: jmp z, w            ; EB
1719: rol x               ; DF
171A: cmp z, a            ; 7F
171B: nop                 ; FB
171C: push x              ; 01
171D: nop                 ; 00
171E: nop                 ; 00
171F: nop                 ; 00
1720: nop                 ; 00
1721: nop                 ; FC
1722: nop                 ; FF
1723: mul y, z            ; 55
1724: mul y, z            ; 55
1725: mul y, z            ; 55
1726: mul y, z            ; 55
1727: mul y, z            ; 55
1728: mul y, z            ; 55
1729: or y, a             ; AA
172A: add z, a            ; 2A
172B: mul y, z            ; 55
172C: mul y, z            ; 55
172D: and y, w            ; 95
172E: mul y, y            ; 54
172F: or x, w             ; A5
1730: mul x, a            ; 52
1731: add z, w            ; 29
1732: mul y, z            ; 55
1733: push x              ; 01
1734: nop                 ; 00
1735: nop                 ; 00
1736: cmp w, a            ; 84
1737: or y, a             ; AA
1738: shr w               ; DD
1739: return              ; 16
173A: nop                 ; 00
173B: nop                 ; 00
173C: add z, a            ; 2A
173D: add y, a            ; 25
173E: nop                 ; F8
173F: rol x               ; DF
1740: nop                 ; FF
1741: nop                 ; FF
1742: or z, a             ; AE
1743: mul y, w            ; 56
1744: pop y               ; 07
1745: nop                 ; 00
1746: nop                 ; 00
1747: nop                 ; 00
1748: nop                 ; 00
1749: nop                 ; FC
174A: nop                 ; FF
174B: or y, a             ; AA
174C: or y, a             ; AA
174D: or y, a             ; AA
174E: or y, a             ; AA
174F: or y, a             ; AA
1750: and x, a            ; 92
1751: and x, a            ; 92
1752: mul x, a            ; 52
1753: mul y, z            ; 55
1754: mul y, z            ; 55
1755: mul x, a            ; 52
1756: add y, a            ; 25
1757: mul y, z            ; 55
1758: sub a, y            ; 4A
1759: and y, w            ; 95
175A: and x, a            ; 92
175B: nop                 ; 00
175C: nop                 ; 00
175D: nop                 ; 00
175E: sub z, y            ; 40
175F: nop                 ; FB
1760: mul y, w            ; 56
1761: push z              ; 03
1762: nop                 ; 00
1763: nop                 ; 00
1764: cmp w, x            ; 80
1765: mul y, y            ; 54
1766: or y, w             ; A9
1767: mul x, a            ; 52
1768: nop                 ; 00
1769: and a, y            ; A0
176A: resume              ; F7 FA
176C: pop y               ; 07
176D: nop                 ; 00
176E: nop                 ; 00
176F: nop                 ; 00
1770: nop                 ; 00
1771: nop                 ; FC
1772: nop                 ; FF
1773: or y, a             ; AA
1774: or y, a             ; AA
1775: mul y, w            ; 56
1776: mul y, z            ; 55
1777: mul y, z            ; 55
1778: mul y, z            ; 55
1779: mul y, z            ; 55
177A: or y, a             ; AA
177B: add y, w            ; 24
177C: sub a, x            ; 49
177D: mul y, z            ; 55
177E: or y, a             ; AA
177F: mul x, a            ; 52
1780: mul y, z            ; 55
1781: or y, a             ; AA
1782: or y, a             ; AA
1783: pop x               ; 06
1784: nop                 ; 00
1785: nop                 ; 00
1786: nop                 ; 00
1787: or z, y             ; AC
1788: cmp z, w            ; 7E
1789: store $0000, w      ; 13 00 00
178C: add z, z            ; 28
178D: sub a, x            ; 49
178E: push y              ; 02
178F: nop                 ; 00
1790: nop                 ; 00
1791: rol y               ; E0
1792: or w, x             ; AF
1793: nop                 ; FD
1794: load z, $0000       ; 0D 00 00
1797: nop                 ; 00
1798: nop                 ; 00
1799: nop                 ; FC
179A: nop                 ; FF
179B: mul y, z            ; 55
179C: mul y, z            ; 55
179D: mul y, z            ; 55
179E: mul y, z            ; 55
179F: and y, w            ; 95
17A0: add y, w            ; 24
17A1: or x, w             ; A5
17A2: sub a, y            ; 4A
17A3: mul y, z            ; 55
17A4: mul y, z            ; 55
17A5: or x, w             ; A5
17A6: mul x, a            ; 52
17A7: sub a, y            ; 4A
17A8: or y, w             ; A9
17A9: mul x, a            ; 52
17AA: mul x, a            ; 52
17AB: pop w               ; 09
17AC: nop                 ; 00
17AD: nop                 ; 00
17AE: add x, a            ; 20
17AF: or a, y             ; B4
17B0: shr y               ; DB
17B1: push a              ; 05
17B2: nop                 ; 00
17B3: nop                 ; 00
17B4: nop                 ; 00
17B5: or x, z             ; A4
17B6: nop                 ; 00
17B7: nop                 ; 00
17B8: sub a, x            ; 49
17B9: sub z, w            ; 42
17BA: or a, z             ; B5
17BB: mul y, w            ; 56
17BC: load a, $0000       ; 0F 00 00
17BF: nop                 ; 00
17C0: nop                 ; 00
17C1: nop                 ; FC
17C2: nop                 ; FF
17C3: mul y, z            ; 55
17C4: mul y, z            ; 55
17C5: mul y, z            ; 55
17C6: mul y, z            ; 55
17C7: mul y, z            ; 55
17C8: mul y, z            ; 55
17C9: add z, w            ; 29
17CA: add z, w            ; 29
17CB: mul y, z            ; 55
17CC: mul y, z            ; 55
17CD: add z, w            ; 29
17CE: and y, w            ; 95
17CF: add z, a            ; 2A
17D0: and y, w            ; 95
17D1: sub a, y            ; 4A
17D2: add z, w            ; 29
17D3: sub x, x            ; 35
17D4: nop                 ; 00
17D5: nop                 ; 00
17D6: nop                 ; 00
17D7: and a, y            ; A0
17D8: cmp y, x            ; 76
17D9: load x, $0000       ; 0B 00 00
17DC: sub z, y            ; 40
17DD: and x, w            ; 91
17DE: pop a               ; 0A
17DF: nop                 ; 00
17E0: cmp w, x            ; 80
17E1: cmp w, a            ; 84
17E2: shr y               ; DB
17E3: nop                 ; FF
17E4: sub y, y            ; 3B
17E5: nop                 ; 00
17E6: nop                 ; 00
17E7: nop                 ; 00
17E8: nop                 ; 00
17E9: nop                 ; FC
17EA: nop                 ; FF
17EB: mul y, z            ; 55
17EC: mul y, z            ; 55
17ED: mul y, z            ; 55
17EE: mul y, z            ; 55
17EF: or y, w             ; A9
17F0: sub a, y            ; 4A
17F1: sub a, y            ; 4A
17F2: mul y, z            ; 55
17F3: sub a, x            ; 49
17F4: add z, a            ; 2A
17F5: mul y, z            ; 55
17F6: or x, w             ; A5
17F7: mul y, y            ; 54
17F8: or x, w             ; A5
17F9: mul y, y            ; 54
17FA: or x, w             ; A5
17FB: and x, a            ; 92
17FC: nop                 ; 00
17FD: nop                 ; 00
17FE: nop                 ; 00
17FF: xor y, x            ; C1
1800: mul z, z            ; 5A
1801: push x              ; 01
1802: nop                 ; 00
1803: nop                 ; 00
1804: nop                 ; 00
1805: sub z, y            ; 40
1806: push y              ; 02
1807: add z, w            ; 29
1808: add z, a            ; 2A
1809: cmp w, z            ; 82
180A: dec z               ; 6E
180B: jmp z, w            ; EB
180C: add w, w            ; 2E
180D: nop                 ; 00
180E: nop                 ; 00
180F: nop                 ; 00
1810: nop                 ; 00
1811: nop                 ; FC
1812: nop                 ; FF
1813: mul y, z            ; 55
1814: mul y, z            ; 55
1815: mul y, z            ; 55
1816: mul y, z            ; 55
1817: add y, a            ; 25
1818: or y, w             ; A9
1819: or y, a             ; AA
181A: or x, z             ; A4
181B: or y, a             ; AA
181C: mul x, a            ; 52
181D: and y, w            ; 95
181E: mul y, y            ; 54
181F: or x, w             ; A5
1820: mul y, y            ; 54
1821: mul y, z            ; 55
1822: sub a, y            ; 4A
1823: or y, a             ; AA
1824: nop                 ; 00
1825: nop                 ; 00
1826: nop                 ; 00
1827: nop                 ; 00
1828: inc w               ; 6A
1829: store $0000, w      ; 13 00 00
182C: nop                 ; 00
182D: and y, w            ; 95
182E: nop                 ; 00
182F: cmp w, x            ; 80
1830: cmp w, x            ; 80
1831: store $BED5, a      ; 14 D5 BE
1834: dec w               ; 6F
1835: nop                 ; 00
1836: nop                 ; 00
1837: nop                 ; 00
1838: nop                 ; 00
1839: nop                 ; FC
183A: nop                 ; FF
183B: or y, a             ; AA
183C: or y, a             ; AA
183D: or y, a             ; AA
183E: or y, a             ; AA
183F: or y, a             ; AA
1840: add z, a            ; 2A
1841: add z, w            ; 29
1842: and y, w            ; 95
1843: or y, a             ; AA
1844: sub a, y            ; 4A
1845: or y, w             ; A9
1846: sub a, y            ; 4A
1847: add z, w            ; 29
1848: and y, w            ; 95
1849: and x, a            ; 92
184A: or y, a             ; AA
184B: mul x, a            ; 52
184C: push x              ; 01
184D: nop                 ; 00
184E: nop                 ; 00
184F: nop                 ; 00
1850: cmp y, a            ; 7A
1851: push x              ; 01
1852: nop                 ; 00
1853: nop                 ; 00
1854: nop                 ; 00
1855: nop                 ; 00
1856: nop                 ; 00
1857: add z, z            ; 28
1858: or y, a             ; AA
1859: push y              ; 02
185A: nop                 ; FD
185B: shl z               ; D7
185C: xor x, y            ; BD
185D: nop                 ; 00
185E: nop                 ; 00
185F: nop                 ; 00
1860: nop                 ; 00
1861: nop                 ; FC
1862: nop                 ; FF
1863: mul y, z            ; 55
1864: mul y, z            ; 55
1865: mul y, z            ; 55
1866: mul y, z            ; 55
1867: and y, w            ; 95
1868: or x, z             ; A4
1869: sub a, y            ; 4A
186A: or y, w             ; A9
186B: add y, w            ; 24
186C: add z, w            ; 29
186D: or x, w             ; A5
186E: mul x, a            ; 52
186F: or y, a             ; AA
1870: mul x, a            ; 52
1871: mul y, z            ; 55
1872: or y, w             ; A9
1873: and y, z            ; 94
1874: pop a               ; 0A
1875: nop                 ; 00
1876: nop                 ; 00
1877: nop                 ; 00
1878: sub z, y            ; 40
1879: load x, $0000       ; 0B 00 00
187C: nop                 ; 00
187D: sub w, a            ; 48
187E: nop                 ; 00
187F: cmp w, x            ; 80
1880: add y, y            ; 22
1881: add z, z            ; 28
1882: inc w               ; 6A
1883: xor x, w            ; BF
1884: dec w               ; 6F
1885: nop                 ; 00
1886: nop                 ; 00
1887: nop                 ; 00
1888: nop                 ; 00
1889: nop                 ; FC
188A: nop                 ; FF
188B: mul y, z            ; 55
188C: mul y, z            ; 55
188D: mul y, z            ; 55
188E: mul y, z            ; 55
188F: or y, w             ; A9
1890: sub a, y            ; 4A
1891: mul x, a            ; 52
1892: sub a, y            ; 4A
1893: mul y, z            ; 55
1894: and y, w            ; 95
1895: mul y, y            ; 54
1896: or y, a             ; AA
1897: mul x, a            ; 52
1898: mul y, z            ; 55
1899: or y, a             ; AA
189A: sub a, y            ; 4A
189B: or x, w             ; A5
189C: or y, a             ; AA
189D: nop                 ; 00
189E: nop                 ; 00
189F: nop                 ; 00
18A0: and a, y            ; A0
18A1: push x              ; 01
18A2: nop                 ; 00
18A3: nop                 ; 00
18A4: nop                 ; 00
18A5: add x, a            ; 20
18A6: nop                 ; 00
18A7: mul x, w            ; 51
18A8: cmp a, w            ; 88
18A9: pop a               ; 0A
18AA: xor x, x            ; BC
18AB: jmp $00B6, y        ; ED B6 00
18AE: nop                 ; 00
18AF: nop                 ; 00
18B0: nop                 ; 00
18B1: nop                 ; FC
18B2: nop                 ; FF
18B3: mul y, z            ; 55
18B4: mul y, z            ; 55
18B5: mul y, z            ; 55
18B6: and y, w            ; 95
18B7: sub a, y            ; 4A
18B8: or y, w             ; A9
18B9: or y, a             ; AA
18BA: mul x, a            ; 52
18BB: and x, a            ; 92
18BC: or x, z             ; A4
18BD: mul x, a            ; 52
18BE: and y, w            ; 95
18BF: add z, a            ; 2A
18C0: sub a, x            ; 49
18C1: sub a, x            ; 49
18C2: add z, a            ; 2A
18C3: add z, w            ; 29
18C4: sub a, x            ; 49
18C5: or z, w             ; AD
18C6: nop                 ; 00
18C7: nop                 ; 00
18C8: nop                 ; 00
18C9: push x              ; 01
18CA: nop                 ; 00
18CB: nop                 ; 00
18CC: nop                 ; 00
18CD: cmp w, x            ; 80
18CE: nop                 ; 00
18CF: cmp w, x            ; 80
18D0: mul x, a            ; 52
18D1: mul x, a            ; 52
18D2: ror a               ; E8
18D3: nop                 ; FF
18D4: nop                 ; FD
18D5: push x              ; 01
18D6: nop                 ; 00
18D7: nop                 ; 00
18D8: nop                 ; 00
18D9: nop                 ; FC
18DA: nop                 ; FF
18DB: mul y, z            ; 55
18DC: mul y, z            ; 55
18DD: mul y, z            ; 55
18DE: or y, w             ; A9
18DF: add z, a            ; 2A
18E0: and y, w            ; 95
18E1: add y, w            ; 24
18E2: and y, w            ; 95
18E3: or y, a             ; AA
18E4: add z, a            ; 2A
18E5: and y, w            ; 95
18E6: mul x, a            ; 52
18E7: sub a, y            ; 4A
18E8: mul y, z            ; 55
18E9: mul y, z            ; 55
18EA: mul y, z            ; 55
18EB: mul y, z            ; 55
18EC: mul y, z            ; 55
18ED: add y, a            ; 25
18EE: push y              ; 02
18EF: nop                 ; 00
18F0: nop                 ; 00
18F1: nop                 ; 00
18F2: nop                 ; 00
18F3: nop                 ; 00
18F4: nop                 ; 00
18F5: nop                 ; 00
18F6: nop                 ; 00
18F7: nop                 ; 00
18F8: cmp w, a            ; 84
18F9: sub w, a            ; 48
18FA: not y               ; B8
18FB: or a, z             ; B5
18FC: dec w               ; 6F
18FD: push z              ; 03
18FE: nop                 ; 00
18FF: nop                 ; 00
1900: nop                 ; 00
1901: nop                 ; FC
1902: nop                 ; FF
1903: mul y, z            ; 55
1904: mul y, z            ; 55
1905: mul y, z            ; 55
1906: mul y, z            ; 55
1907: mul x, a            ; 52
1908: or x, w             ; A5
1909: or y, a             ; AA
190A: mul x, a            ; 52
190B: or x, w             ; A5
190C: or x, z             ; A4
190D: mul y, y            ; 54
190E: mul y, z            ; 55
190F: or y, w             ; A9
1910: add z, a            ; 2A
1911: mul y, z            ; 55
1912: sub a, x            ; 49
1913: and y, w            ; 95
1914: add y, w            ; 24
1915: or y, w             ; A9
1916: push w              ; 04
1917: nop                 ; 00
1918: nop                 ; 00
1919: pop z               ; 08
191A: nop                 ; 00
191B: nop                 ; 00
191C: nop                 ; 00
191D: nop                 ; 00
191E: pop z               ; 08
191F: sub z, y            ; 40
1920: add z, w            ; 29
1921: store $FF61, z      ; 12 61 FF
1924: nop                 ; FB
1925: pop x               ; 06
1926: nop                 ; 00
1927: nop                 ; 00
1928: nop                 ; 00
1929: nop                 ; FC
192A: nop                 ; FF
192B: mul y, z            ; 55
192C: mul y, z            ; 55
192D: mul y, z            ; 55
192E: mul y, z            ; 55
192F: mul y, z            ; 55
1930: add z, a            ; 2A
1931: sub a, x            ; 49
1932: sub a, y            ; 4A
1933: sub a, y            ; 4A
1934: and y, w            ; 95
1935: mul x, a            ; 52
1936: sub a, y            ; 4A
1937: and y, w            ; 95
1938: or x, z             ; A4
1939: and x, a            ; 92
193A: add z, a            ; 2A
193B: or y, w             ; A9
193C: or y, a             ; AA
193D: sub a, y            ; 4A
193E: push a              ; 05
193F: nop                 ; 00
1940: nop                 ; 00
1941: nop                 ; 00
1942: nop                 ; 00
1943: nop                 ; 00
1944: nop                 ; 00
1945: nop                 ; 00
1946: nop                 ; 00
1947: nop                 ; 00
1948: or x, z             ; A4
1949: or x, z             ; A4
194A: jmp $EF6D, a        ; F0 6D EF
194D: load x, $0000       ; 0B 00 00
1950: nop                 ; 00
1951: nop                 ; FC
1952: nop                 ; FF
1953: or y, a             ; AA
1954: or y, a             ; AA
1955: or y, a             ; AA
1956: or y, a             ; AA
1957: or y, a             ; AA
1958: mul x, a            ; 52
1959: mul y, z            ; 55
195A: or y, w             ; A9
195B: mul x, a            ; 52
195C: mul x, a            ; 52
195D: and y, z            ; 94
195E: mul x, a            ; 52
195F: or x, w             ; A5
1960: or y, a             ; AA
1961: mul y, y            ; 54
1962: or y, a             ; AA
1963: sub a, y            ; 4A
1964: and x, a            ; 92
1965: add z, a            ; 2A
1966: add z, w            ; 29
1967: nop                 ; 00
1968: nop                 ; 00
1969: nop                 ; 00
196A: nop                 ; 00
196B: nop                 ; 00
196C: nop                 ; 00
196D: nop                 ; 00
196E: cmp w, x            ; 80
196F: nop                 ; 00
1970: pop z               ; 08
1971: pop w               ; 09
1972: sub z, w            ; 42
1973: rol x               ; DF
1974: not a               ; BB
1975: add x, z            ; 1E
1976: nop                 ; 00
1977: nop                 ; 00
1978: nop                 ; 00
1979: nop                 ; FC
197A: nop                 ; FF
197B: mul y, z            ; 55
197C: mul y, z            ; 55
197D: mul y, z            ; 55
197E: mul y, z            ; 55
197F: or x, w             ; A5
1980: sub a, y            ; 4A
1981: and x, a            ; 92
1982: sub a, y            ; 4A
1983: add z, a            ; 2A
1984: and y, w            ; 95
1985: mul x, a            ; 52
1986: mul y, z            ; 55
1987: or y, a             ; AA
1988: sub a, y            ; 4A
1989: mul y, z            ; 55
198A: sub a, x            ; 49
198B: mul y, z            ; 55
198C: mul y, z            ; 55
198D: or y, a             ; AA
198E: and x, a            ; 92
198F: nop                 ; 00
1990: nop                 ; 00
1991: add x, a            ; 20
1992: nop                 ; 00
1993: nop                 ; 00
1994: nop                 ; 00
1995: nop                 ; 00
1996: nop                 ; 00
1997: cmp w, x            ; 80
1998: or x, z             ; A4
1999: or x, z             ; A4
199A: jmp $EEF5, a        ; F0 F5 EE
199D: load z, $0000       ; 0D 00 00
19A0: nop                 ; 00
19A1: nop                 ; FC
19A2: nop                 ; FF
19A3: mul y, z            ; 55
19A4: mul y, z            ; 55
19A5: mul y, z            ; 55
19A6: or y, a             ; AA
19A7: and y, z            ; 94
19A8: mul y, y            ; 54
19A9: mul y, z            ; 55
19AA: or y, w             ; A9
19AB: or x, z             ; A4
19AC: or x, z             ; A4
19AD: and y, z            ; 94
19AE: mul y, y            ; 54
19AF: mul y, z            ; 55
19B0: mul x, a            ; 52
19B1: sub a, y            ; 4A
19B2: mul y, z            ; 55
19B3: mul x, a            ; 52
19B4: or x, w             ; A5
19B5: mul x, a            ; 52
19B6: add y, a            ; 25
19B7: push x              ; 01
19B8: nop                 ; 00
19B9: nop                 ; 00
19BA: nop                 ; 00
19BB: nop                 ; 00
19BC: nop                 ; 00
19BD: nop                 ; 00
19BE: store $0008, x      ; 10 08 00
19C1: store $BFB1, y      ; 11 B1 BF
19C4: mul y, a            ; 57
19C5: cmp z, x            ; 7B
19C6: nop                 ; 00
19C7: nop                 ; 00
19C8: nop                 ; 00
19C9: nop                 ; FC
19CA: nop                 ; FF
19CB: mul y, z            ; 55
19CC: mul y, z            ; 55
19CD: mul y, z            ; 55
19CE: mul y, z            ; 55
19CF: mul y, z            ; 55
19D0: and y, w            ; 95
19D1: add y, w            ; 24
19D2: and y, w            ; 95
19D3: sub a, y            ; 4A
19D4: call $4921          ; 15 21 49
19D7: sub a, x            ; 49
19D8: and y, w            ; 95
19D9: mul x, a            ; 52
19DA: mul y, z            ; 55
19DB: and y, w            ; 95
19DC: and y, z            ; 94
19DD: and y, z            ; 94
19DE: and y, z            ; 94
19DF: push w              ; 04
19E0: nop                 ; 00
19E1: nop                 ; 00
19E2: push x              ; 01
19E3: nop                 ; 00
19E4: cmp w, x            ; 80
19E5: nop                 ; 00
19E6: nop                 ; 00
19E7: nop                 ; 00
19E8: or y, z             ; A8
19E9: sub w, x            ; 44
19EA: nop                 ; F8
19EB: int $ED             ; F6 ED
19ED: add z, a            ; 2A
19EE: nop                 ; 00
19EF: nop                 ; 00
19F0: nop                 ; 00
19F1: nop                 ; FC
19F2: nop                 ; FF
19F3: mul y, z            ; 55
19F4: mul y, z            ; 55
19F5: sub a, x            ; 49
19F6: sub a, x            ; 49
19F7: mul y, z            ; 55
19F8: or x, w             ; A5
19F9: or y, a             ; AA
19FA: or x, z             ; A4
19FB: mul x, a            ; 52
19FC: mul x, a            ; 52
19FD: sub a, y            ; 4A
19FE: add z, a            ; 2A
19FF: mul y, z            ; 55
1A00: or y, w             ; A9
1A01: or y, a             ; AA
1A02: add y, w            ; 24
1A03: or y, w             ; A9
1A04: mul x, a            ; 52
1A05: mul y, z            ; 55
1A06: mul y, z            ; 55
1A07: pop w               ; 09
1A08: nop                 ; 00
1A09: nop                 ; 00
1A0A: nop                 ; 00
1A0B: nop                 ; 00
1A0C: nop                 ; 00
1A0D: nop                 ; 00
1A0E: cmp w, x            ; 80
1A0F: nop                 ; 00
1A10: push x              ; 01
1A11: store $6FA8, y      ; 11 A8 6F
1A14: not x               ; B7
1A15: int $00             ; F6 00
1A17: nop                 ; 00
1A18: nop                 ; 00
1A19: nop                 ; FC
1A1A: nop                 ; FF
1A1B: mul y, z            ; 55
1A1C: mul y, z            ; 55
1A1D: mul y, z            ; 55
1A1E: mul y, z            ; 55
1A1F: or x, w             ; A5
1A20: mul y, y            ; 54
1A21: and x, a            ; 92
1A22: add z, a            ; 2A
1A23: and y, w            ; 95
1A24: or y, a             ; AA
1A25: and x, a            ; 92
1A26: mul x, a            ; 52
1A27: mul y, z            ; 55
1A28: mul y, z            ; 55
1A29: sub a, y            ; 4A
1A2A: mul y, z            ; 55
1A2B: mul y, z            ; 55
1A2C: mul y, z            ; 55
1A2D: mul x, a            ; 52
1A2E: mul y, z            ; 55
1A2F: add z, a            ; 2A
1A30: nop                 ; 00
1A31: nop                 ; 00
1A32: pop z               ; 08
1A33: nop                 ; 00
1A34: nop                 ; 00
1A35: nop                 ; 00
1A36: nop                 ; 00
1A37: cmp w, x            ; 80
1A38: sub z, y            ; 40
1A39: cmp w, a            ; 84
1A3A: nop                 ; FC
1A3B: nop                 ; FA
1A3C: shl a               ; D9
1A3D: mul y, z            ; 55
1A3E: push x              ; 01
1A3F: nop                 ; 00
1A40: nop                 ; 00
1A41: nop                 ; FC
1A42: nop                 ; FF
1A43: or y, a             ; AA
1A44: or y, a             ; AA
1A45: or y, a             ; AA
1A46: or y, a             ; AA
1A47: mul y, y            ; 54
1A48: mul y, z            ; 55
1A49: mul y, z            ; 55
1A4A: sub a, x            ; 49
1A4B: or y, w             ; A9
1A4C: and x, a            ; 92
1A4D: or x, z             ; A4
1A4E: add y, w            ; 24
1A4F: sub a, x            ; 49
1A50: sub a, y            ; 4A
1A51: mul y, z            ; 55
1A52: or y, a             ; AA
1A53: sub a, y            ; 4A
1A54: sub a, y            ; 4A
1A55: and y, w            ; 95
1A56: or x, z             ; A4
1A57: and x, a            ; 92
1A58: nop                 ; 00
1A59: nop                 ; 00
1A5A: nop                 ; 00
1A5B: nop                 ; 00
1A5C: nop                 ; 00
1A5D: nop                 ; 00
1A5E: nop                 ; 00
1A5F: nop                 ; 00
1A60: push w              ; 04
1A61: store $6FD4, y      ; 11 D4 6F
1A64: not x               ; B7
1A65: int $00             ; F6 00
1A67: nop                 ; 00
1A68: nop                 ; 00
1A69: nop                 ; FC
1A6A: nop                 ; FF
1A6B: mul y, z            ; 55
1A6C: or y, a             ; AA
1A6D: or y, a             ; AA
1A6E: or y, a             ; AA
1A6F: add z, a            ; 2A
1A70: and y, w            ; 95
1A71: add y, w            ; 24
1A72: mul y, z            ; 55
1A73: add z, a            ; 2A
1A74: mul y, z            ; 55
1A75: call $5492          ; 15 92 54
1A78: mul y, z            ; 55
1A79: or y, w             ; A9
1A7A: and x, a            ; 92
1A7B: mul y, y            ; 54
1A7C: mul y, z            ; 55
1A7D: sub a, x            ; 49
1A7E: and y, w            ; 95
1A7F: sub a, y            ; 4A
1A80: nop                 ; 00
1A81: nop                 ; 00
1A82: nop                 ; 00
1A83: nop                 ; 00
1A84: nop                 ; 00
1A85: nop                 ; 00
1A86: nop                 ; 00
1A87: store $0480, y      ; 11 80 04
1A8A: inc w               ; 6A
1A8B: nop                 ; FB
1A8C: shr w               ; DD
1A8D: nop                 ; FA
1A8E: nop                 ; 00
1A8F: nop                 ; 00
1A90: nop                 ; 00
1A91: nop                 ; FC
1A92: nop                 ; FF
1A93: mul x, a            ; 52
1A94: mul y, z            ; 55
1A95: mul y, z            ; 55
1A96: and y, w            ; 95
1A97: or y, a             ; AA
1A98: mul x, a            ; 52
1A99: mul y, z            ; 55
1A9A: sub a, x            ; 49
1A9B: or x, w             ; A5
1A9C: add y, w            ; 24
1A9D: sub a, x            ; 49
1A9E: sub a, x            ; 49
1A9F: add y, a            ; 25
1AA0: add z, w            ; 29
1AA1: and y, w            ; 95
1AA2: or y, a             ; AA
1AA3: mul x, a            ; 52
1AA4: add z, w            ; 29
1AA5: mul y, z            ; 55
1AA6: mul x, a            ; 52
1AA7: mul y, z            ; 55
1AA8: push a              ; 05
1AA9: nop                 ; 00
1AAA: sub z, y            ; 40
1AAB: nop                 ; 00
1AAC: nop                 ; 00
1AAD: nop                 ; 00
1AAE: nop                 ; 00
1AAF: nop                 ; 00
1AB0: pop z               ; 08
1AB1: sub w, a            ; 48
1AB2: or y, z             ; A8
1AB3: dec w               ; 6F
1AB4: cmp x, a            ; 75
1AB5: jmp z, w            ; EB
1AB6: push z              ; 03
1AB7: nop                 ; 00
1AB8: nop                 ; 00
1AB9: nop                 ; FC
1ABA: nop                 ; FF
1ABB: or y, a             ; AA
1ABC: and x, a            ; 92
1ABD: or y, a             ; AA
1ABE: mul y, y            ; 54
1ABF: or x, w             ; A5
1AC0: or y, a             ; AA
1AC1: and x, a            ; 92
1AC2: mul y, y            ; 54
1AC3: mul x, a            ; 52
1AC4: mul y, z            ; 55
1AC5: mul y, z            ; 55
1AC6: add y, w            ; 24
1AC7: or y, w             ; A9
1AC8: or y, a             ; AA
1AC9: mul x, a            ; 52
1ACA: or y, a             ; AA
1ACB: sub a, y            ; 4A
1ACC: mul y, z            ; 55
1ACD: and y, w            ; 95
1ACE: or y, a             ; AA
1ACF: and y, z            ; 94
1AD0: store $0000, z      ; 12 00 00
1AD3: nop                 ; 00
1AD4: pop z               ; 08
1AD5: nop                 ; 00
1AD6: nop                 ; 00
1AD7: nop                 ; 00
1AD8: push x              ; 01
1AD9: nop                 ; 00
1ADA: and a, y            ; A0
1ADB: xor x, z            ; BE
1ADC: shr a               ; DE
1ADD: nop                 ; FE
1ADE: push x              ; 01
1ADF: nop                 ; 00
1AE0: nop                 ; 00
1AE1: nop                 ; FC
1AE2: nop                 ; FF
1AE3: or y, a             ; AA
1AE4: or y, a             ; AA
1AE5: mul y, y            ; 54
1AE6: mul y, z            ; 55
1AE7: mul y, z            ; 55
1AE8: add z, w            ; 29
1AE9: mul y, z            ; 55
1AEA: and y, w            ; 95
1AEB: sub a, y            ; 4A
1AEC: sub a, y            ; 4A
1AED: sub a, x            ; 49
1AEE: sub a, x            ; 49
1AEF: sub a, y            ; 4A
1AF0: sub a, y            ; 4A
1AF1: mul y, z            ; 55
1AF2: sub a, x            ; 49
1AF3: add z, a            ; 2A
1AF4: or x, w             ; A5
1AF5: mul x, a            ; 52
1AF6: and y, w            ; 95
1AF7: or y, a             ; AA
1AF8: add y, w            ; 24
1AF9: nop                 ; 00
1AFA: nop                 ; 00
1AFB: nop                 ; 00
1AFC: nop                 ; 00
1AFD: nop                 ; 00
1AFE: nop                 ; 00
1AFF: pop z               ; 08
1B00: nop                 ; 00
1B01: push y              ; 02
1B02: nop                 ; 00
1B03: cmp y, y            ; 77
1B04: not a               ; BB
1B05: nop                 ; FB
1B06: push z              ; 03
1B07: nop                 ; 00
1B08: nop                 ; 00
1B09: nop                 ; FC
1B0A: nop                 ; FF
1B0B: mul y, y            ; 54
1B0C: mul y, z            ; 55
1B0D: mul y, z            ; 55
1B0E: mul y, z            ; 55
1B0F: and y, w            ; 95
1B10: sub a, y            ; 4A
1B11: and y, w            ; 95
1B12: mul x, a            ; 52
1B13: or y, a             ; AA
1B14: mul x, a            ; 52
1B15: or y, a             ; AA
1B16: and x, a            ; 92
1B17: add y, w            ; 24
1B18: or y, w             ; A9
1B19: and y, z            ; 94
1B1A: or y, a             ; AA
1B1B: or y, a             ; AA
1B1C: mul y, y            ; 54
1B1D: add z, a            ; 2A
1B1E: or y, w             ; A9
1B1F: mul x, a            ; 52
1B20: and y, w            ; 95
1B21: nop                 ; 00
1B22: nop                 ; 00
1B23: nop                 ; 00
1B24: cmp w, x            ; 80
1B25: nop                 ; 00
1B26: nop                 ; 00
1B27: nop                 ; 00
1B28: add x, a            ; 20
1B29: store $5D88, x      ; 10 88 5D
1B2C: jmp $01BD, w        ; EF BD 01
1B2F: nop                 ; 00
1B30: nop                 ; 00
1B31: nop                 ; FC
1B32: nop                 ; FF
1B33: sub a, y            ; 4A
1B34: or y, a             ; AA
1B35: or y, a             ; AA
1B36: or y, a             ; AA
1B37: inc w               ; 6A
1B38: or y, a             ; AA
1B39: mul x, a            ; 52
1B3A: sub a, x            ; 49
1B3B: sub a, x            ; 49
1B3C: or y, a             ; AA
1B3D: sub a, y            ; 4A
1B3E: sub a, y            ; 4A
1B3F: mul x, a            ; 52
1B40: add y, a            ; 25
1B41: or x, w             ; A5
1B42: or y, a             ; AA
1B43: mul x, a            ; 52
1B44: and y, w            ; 95
1B45: or y, a             ; AA
1B46: sub a, y            ; 4A
1B47: mul y, z            ; 55
1B48: mul y, z            ; 55
1B49: push x              ; 01
1B4A: nop                 ; 00
1B4B: nop                 ; 00
1B4C: nop                 ; 00
1B4D: push a              ; 05
1B4E: nop                 ; 00
1B4F: sub z, y            ; 40
1B50: nop                 ; 00
1B51: nop                 ; 00
1B52: add x, a            ; 20
1B53: not w               ; BA
1B54: cmp z, z            ; 7D
1B55: resume              ; F7 01
1B57: nop                 ; 00
1B58: nop                 ; 00
1B59: nop                 ; FC
1B5A: nop                 ; FF
1B5B: mul y, z            ; 55
1B5C: or x, w             ; A5
1B5D: and x, a            ; 92
1B5E: or y, a             ; AA
1B5F: and y, z            ; 94
1B60: or y, a             ; AA
1B61: mul y, y            ; 54
1B62: or y, a             ; AA
1B63: or y, a             ; AA
1B64: or x, z             ; A4
1B65: mul y, y            ; 54
1B66: and y, w            ; 95
1B67: cmp a, w            ; 88
1B68: mul y, y            ; 54
1B69: mul y, z            ; 55
1B6A: and x, a            ; 92
1B6B: and y, z            ; 94
1B6C: mul x, a            ; 52
1B6D: sub a, x            ; 49
1B6E: mul y, z            ; 55
1B6F: sub a, y            ; 4A
1B70: sub a, x            ; 49
1B71: push y              ; 02
1B72: nop                 ; 00
1B73: nop                 ; 00
1B74: sub z, y            ; 40
1B75: push y              ; 02
1B76: nop                 ; 00
1B77: nop                 ; 00
1B78: push y              ; 02
1B79: nop                 ; 00
1B7A: or w, y             ; B0
1B7B: or z, a             ; AE
1B7C: not x               ; B7
1B7D: nop                 ; FB
1B7E: push x              ; 01
1B7F: nop                 ; 00
1B80: nop                 ; 00
1B81: nop                 ; FC
1B82: nop                 ; FF
1B83: or y, a             ; AA
1B84: or y, a             ; AA
1B85: or y, a             ; AA
1B86: or x, z             ; A4
1B87: or y, a             ; AA
1B88: and x, a            ; 92
1B89: or y, a             ; AA
1B8A: sub a, y            ; 4A
1B8B: and x, a            ; 92
1B8C: add z, a            ; 2A
1B8D: or x, w             ; A5
1B8E: or x, z             ; A4
1B8F: mul x, a            ; 52
1B90: and x, a            ; 92
1B91: mul x, a            ; 52
1B92: mul y, z            ; 55
1B93: mul y, z            ; 55
1B94: mul y, z            ; 55
1B95: mul y, z            ; 55
1B96: and x, a            ; 92
1B97: mul x, a            ; 52
1B98: or y, a             ; AA
1B99: pop a               ; 0A
1B9A: nop                 ; 00
1B9B: sub z, y            ; 40
1B9C: nop                 ; 00
1B9D: push x              ; 01
1B9E: nop                 ; 00
1B9F: nop                 ; 00
1BA0: pop z               ; 08
1BA1: pop w               ; 09
1BA2: sub w, x            ; 44
1BA3: shr z               ; DC
1BA4: nop                 ; FE
1BA5: shr a               ; DE
1BA6: nop                 ; 00
1BA7: nop                 ; 00
1BA8: nop                 ; 00
1BA9: nop                 ; FC
1BAA: nop                 ; FF
1BAB: or y, w             ; A9
1BAC: add z, a            ; 2A
1BAD: mul y, z            ; 55
1BAE: mul y, z            ; 55
1BAF: mul y, z            ; 55
1BB0: mul y, z            ; 55
1BB1: or x, w             ; A5
1BB2: mul y, y            ; 54
1BB3: add z, w            ; 29
1BB4: sub a, x            ; 49
1BB5: add z, w            ; 29
1BB6: mul y, z            ; 55
1BB7: add y, a            ; 25
1BB8: or y, w             ; A9
1BB9: and y, z            ; 94
1BBA: or y, a             ; AA
1BBB: or y, a             ; AA
1BBC: and y, z            ; 94
1BBD: or y, a             ; AA
1BBE: or y, a             ; AA
1BBF: mul y, y            ; 54
1BC0: mul y, z            ; 55
1BC1: push a              ; 05
1BC2: nop                 ; 00
1BC3: nop                 ; 00
1BC4: nop                 ; 00
1BC5: push x              ; 01
1BC6: nop                 ; 00
1BC7: nop                 ; 00
1BC8: sub z, y            ; 40
1BC9: nop                 ; 00
1BCA: sub z, y            ; 40
1BCB: inc w               ; 6A
1BCC: jmp z, w            ; EB
1BCD: inc a               ; 6B
1BCE: nop                 ; 00
1BCF: nop                 ; 00
1BD0: nop                 ; 00
1BD1: nop                 ; FC
1BD2: nop                 ; FF
1BD3: add z, a            ; 2A
1BD4: or y, w             ; A9
1BD5: or y, a             ; AA
1BD6: or y, a             ; AA
1BD7: or y, a             ; AA
1BD8: or y, a             ; AA
1BD9: add z, a            ; 2A
1BDA: add y, a            ; 25
1BDB: or x, w             ; A5
1BDC: or y, a             ; AA
1BDD: or y, a             ; AA
1BDE: add z, a            ; 2A
1BDF: sub a, x            ; 49
1BE0: and y, w            ; 95
1BE1: or y, a             ; AA
1BE2: add y, w            ; 24
1BE3: or x, w             ; A5
1BE4: or y, a             ; AA
1BE5: or x, z             ; A4
1BE6: sub a, y            ; 4A
1BE7: mul y, z            ; 55
1BE8: and y, w            ; 95
1BE9: store $0000, a      ; 14 00 00
1BEC: nop                 ; 00
1BED: nop                 ; 00
1BEE: nop                 ; 00
1BEF: nop                 ; 00
1BF0: nop                 ; 00
1BF1: nop                 ; 00
1BF2: store $BFDC, x      ; 10 DC BF
1BF5: cmp z, w            ; 7E
1BF6: nop                 ; 00
1BF7: nop                 ; 00
1BF8: nop                 ; 00
1BF9: nop                 ; FC
1BFA: nop                 ; FF
1BFB: mul y, z            ; 55
1BFC: mul y, z            ; 55
1BFD: mul y, z            ; 55
1BFE: and y, w            ; 95
1BFF: mul x, a            ; 52
1C00: and y, w            ; 95
1C01: mul y, y            ; 54
1C02: mul y, z            ; 55
1C03: and y, w            ; 95
1C04: add y, w            ; 24
1C05: or x, w             ; A5
1C06: or x, z             ; A4
1C07: or y, a             ; AA
1C08: mul x, a            ; 52
1C09: mul x, a            ; 52
1C0A: mul y, z            ; 55
1C0B: add z, w            ; 29
1C0C: or x, w             ; A5
1C0D: add z, a            ; 2A
1C0E: add z, w            ; 29
1C0F: sub a, x            ; 49
1C10: mul x, a            ; 52
1C11: mul y, z            ; 55
1C12: nop                 ; 00
1C13: nop                 ; 00
1C14: nop                 ; 00
1C15: nop                 ; 00
1C16: nop                 ; 00
1C17: nop                 ; 00
1C18: nop                 ; 00
1C19: push y              ; 02
1C1A: nop                 ; 00
1C1B: ror x               ; E4
1C1C: int $2B             ; F6 2B
1C1E: nop                 ; 00
1C1F: nop                 ; 00
1C20: nop                 ; 00
1C21: nop                 ; FC
1C22: nop                 ; FF
1C23: or x, w             ; A5
1C24: or y, a             ; AA
1C25: or y, a             ; AA
1C26: or y, a             ; AA
1C27: or y, a             ; AA
1C28: mul x, a            ; 52
1C29: or x, w             ; A5
1C2A: mul x, a            ; 52
1C2B: mul x, a            ; 52
1C2C: mul y, z            ; 55
1C2D: add z, w            ; 29
1C2E: and y, w            ; 95
1C2F: mul y, y            ; 54
1C30: or y, a             ; AA
1C31: add z, a            ; 2A
1C32: sub a, x            ; 49
1C33: mul y, z            ; 55
1C34: or y, w             ; A9
1C35: or y, a             ; AA
1C36: or y, a             ; AA
1C37: or y, a             ; AA
1C38: or y, a             ; AA
1C39: or y, a             ; AA
1C3A: nop                 ; 00
1C3B: nop                 ; 00
1C3C: nop                 ; 00
1C3D: nop                 ; 00
1C3E: nop                 ; 00
1C3F: nop                 ; 00
1C40: add y, y            ; 22
1C41: add x, a            ; 20
1C42: nop                 ; 00
1C43: or a, y             ; B4
1C44: or w, x             ; AF
1C45: sub y, a            ; 3E
1C46: nop                 ; 00
1C47: nop                 ; 00
1C48: nop                 ; 00
1C49: nop                 ; FC
1C4A: nop                 ; FF
1C4B: mul y, z            ; 55
1C4C: mul y, z            ; 55
1C4D: mul y, z            ; 55
1C4E: mul y, z            ; 55
1C4F: mul y, z            ; 55
1C50: or y, a             ; AA
1C51: add z, a            ; 2A
1C52: and y, w            ; 95
1C53: add z, a            ; 2A
1C54: sub a, x            ; 49
1C55: sub a, y            ; 4A
1C56: or y, w             ; A9
1C57: and x, a            ; 92
1C58: sub a, y            ; 4A
1C59: sub a, x            ; 49
1C5A: mul y, z            ; 55
1C5B: or y, a             ; AA
1C5C: sub a, y            ; 4A
1C5D: mul x, a            ; 52
1C5E: mul y, z            ; 55
1C5F: and y, w            ; 95
1C60: or y, a             ; AA
1C61: and x, a            ; 92
1C62: push y              ; 02
1C63: nop                 ; 00
1C64: nop                 ; 00
1C65: nop                 ; 00
1C66: push y              ; 02
1C67: nop                 ; 00
1C68: nop                 ; 00
1C69: push w              ; 04
1C6A: nop                 ; 00
1C6B: nop                 ; F8
1C6C: nop                 ; FA
1C6D: set a, $00          ; 1B 00
1C6F: nop                 ; 00
1C70: nop                 ; 00
1C71: nop                 ; FC
1C72: nop                 ; FF
1C73: and y, z            ; 94
1C74: and y, z            ; 94
1C75: or y, a             ; AA
1C76: or y, a             ; AA
1C77: or y, a             ; AA
1C78: add z, a            ; 2A
1C79: or y, w             ; A9
1C7A: mul y, y            ; 54
1C7B: or x, w             ; A5
1C7C: or y, a             ; AA
1C7D: or y, a             ; AA
1C7E: sub a, y            ; 4A
1C7F: or y, a             ; AA
1C80: mul x, a            ; 52
1C81: or y, a             ; AA
1C82: or x, z             ; A4
1C83: sub a, y            ; 4A
1C84: or y, a             ; AA
1C85: add z, a            ; 2A
1C86: sub a, x            ; 49
1C87: mul x, a            ; 52
1C88: sub a, x            ; 49
1C89: or y, a             ; AA
1C8A: pop a               ; 0A
1C8B: nop                 ; 00
1C8C: nop                 ; 00
1C8D: nop                 ; 00
1C8E: nop                 ; 00
1C8F: nop                 ; 00
1C90: cmp w, x            ; 80
1C91: nop                 ; 00
1C92: nop                 ; 00
1C93: or y, z             ; A8
1C94: rol x               ; DF
1C95: return              ; 16
1C96: nop                 ; 00
1C97: nop                 ; 00
1C98: nop                 ; 00
1C99: nop                 ; FC
1C9A: nop                 ; FF
1C9B: or y, a             ; AA
1C9C: or y, a             ; AA
1C9D: and x, a            ; 92
1C9E: mul x, a            ; 52
1C9F: sub a, y            ; 4A
1CA0: mul y, z            ; 55
1CA1: mul y, z            ; 55
1CA2: or x, w             ; A5
1CA3: and y, z            ; 94
1CA4: add y, w            ; 24
1CA5: add z, w            ; 29
1CA6: mul y, z            ; 55
1CA7: add y, a            ; 25
1CA8: sub a, x            ; 49
1CA9: add y, a            ; 25
1CAA: and y, w            ; 95
1CAB: mul y, y            ; 54
1CAC: or y, w             ; A9
1CAD: sub a, y            ; 4A
1CAE: mul y, z            ; 55
1CAF: and y, w            ; 95
1CB0: or y, a             ; AA
1CB1: or y, a             ; AA
1CB2: store $0000, a      ; 14 00 00
1CB5: nop                 ; 00
1CB6: nop                 ; 00
1CB7: nop                 ; 00
1CB8: store $0048, x      ; 10 48 00
1CBB: nop                 ; FC
1CBC: cmp y, x            ; 76
1CBD: load a, $0000       ; 0F 00 00
1CC0: nop                 ; 00
1CC1: nop                 ; FC
1CC2: nop                 ; FF
1CC3: mul x, a            ; 52
1CC4: mul y, z            ; 55
1CC5: mul y, z            ; 55
1CC6: or y, a             ; AA
1CC7: or y, a             ; AA
1CC8: sub a, y            ; 4A
1CC9: and y, w            ; 95
1CCA: or y, a             ; AA
1CCB: mul x, a            ; 52
1CCC: mul y, z            ; 55
1CCD: or x, w             ; A5
1CCE: add y, w            ; 24
1CCF: or y, w             ; A9
1CD0: add z, a            ; 2A
1CD1: or y, w             ; A9
1CD2: mul x, a            ; 52
1CD3: add y, a            ; 25
1CD4: and y, w            ; 95
1CD5: mul y, y            ; 54
1CD6: mul y, z            ; 55
1CD7: or y, w             ; A9
1CD8: or x, z             ; A4
1CD9: sub a, y            ; 4A
1CDA: mul y, z            ; 55
1CDB: nop                 ; 00
1CDC: nop                 ; 00
1CDD: nop                 ; 00
1CDE: nop                 ; 00
1CDF: nop                 ; 00
1CE0: nop                 ; 00
1CE1: push x              ; 01
1CE2: nop                 ; 00
1CE3: xor a, x            ; D0
1CE4: shr w               ; DD
1CE5: push a              ; 05
1CE6: nop                 ; 00
1CE7: nop                 ; 00
1CE8: nop                 ; 00
1CE9: nop                 ; FC
1CEA: nop                 ; FF
1CEB: mul y, z            ; 55
1CEC: mul y, z            ; 55
1CED: mul y, z            ; 55
1CEE: mul y, z            ; 55
1CEF: mul y, z            ; 55
1CF0: or y, w             ; A9
1CF1: or x, z             ; A4
1CF2: and y, z            ; 94
1CF3: add z, a            ; 2A
1CF4: sub a, x            ; 49
1CF5: or y, a             ; AA
1CF6: or y, a             ; AA
1CF7: sub a, y            ; 4A
1CF8: or y, a             ; AA
1CF9: sub a, y            ; 4A
1CFA: add z, a            ; 2A
1CFB: and y, w            ; 95
1CFC: mul x, a            ; 52
1CFD: mul y, z            ; 55
1CFE: mul x, a            ; 52
1CFF: add y, a            ; 25
1D00: and y, w            ; 95
1D01: mul y, y            ; 54
1D02: or x, w             ; A5
1D03: nop                 ; 00
1D04: nop                 ; 00
1D05: nop                 ; 00
1D06: nop                 ; 00
1D07: nop                 ; 00
1D08: nop                 ; 00
1D09: nop                 ; 00
1D0A: push x              ; 01
1D0B: dec x               ; 6C
1D0C: cmp y, y            ; 77
1D0D: pop y               ; 07
1D0E: nop                 ; 00
1D0F: nop                 ; 00
1D10: nop                 ; 00
1D11: nop                 ; FC
1D12: nop                 ; FF
1D13: mul y, z            ; 55
1D14: or y, a             ; AA
1D15: mul y, y            ; 54
1D16: mul y, z            ; 55
1D17: or y, w             ; A9
1D18: or y, a             ; AA
1D19: or y, a             ; AA
1D1A: mul x, a            ; 52
1D1B: sub a, y            ; 4A
1D1C: mul y, z            ; 55
1D1D: sub a, x            ; 49
1D1E: mul x, a            ; 52
1D1F: or y, a             ; AA
1D20: and x, a            ; 92
1D21: mul y, y            ; 54
1D22: sub a, x            ; 49
1D23: or y, w             ; A9
1D24: sub a, y            ; 4A
1D25: or x, w             ; A5
1D26: sub a, y            ; 4A
1D27: or y, a             ; AA
1D28: mul x, a            ; 52
1D29: mul y, z            ; 55
1D2A: or y, w             ; A9
1D2B: push y              ; 02
1D2C: nop                 ; 00
1D2D: nop                 ; 00
1D2E: nop                 ; 00
1D2F: nop                 ; 00
1D30: sub z, y            ; 40
1D31: add y, w            ; 24
1D32: nop                 ; 00
1D33: xor a, x            ; D0
1D34: shr a               ; DE
1D35: push z              ; 03
1D36: nop                 ; 00
1D37: nop                 ; 00
1D38: nop                 ; 00
1D39: nop                 ; FC
1D3A: nop                 ; FF
1D3B: and y, w            ; 95
1D3C: mul x, a            ; 52
1D3D: mul y, z            ; 55
1D3E: or x, w             ; A5
1D3F: or y, a             ; AA
1D40: or y, a             ; AA
1D41: or y, a             ; AA
1D42: or y, a             ; AA
1D43: mul x, a            ; 52
1D44: and x, a            ; 92
1D45: or y, a             ; AA
1D46: sub a, y            ; 4A
1D47: add z, w            ; 29
1D48: mul y, z            ; 55
1D49: or x, w             ; A5
1D4A: or y, a             ; AA
1D4B: add z, a            ; 2A
1D4C: mul y, z            ; 55
1D4D: or y, a             ; AA
1D4E: or y, a             ; AA
1D4F: or y, a             ; AA
1D50: and y, z            ; 94
1D51: add y, w            ; 24
1D52: and y, w            ; 95
1D53: pop a               ; 0A
1D54: nop                 ; 00
1D55: nop                 ; 00
1D56: nop                 ; 00
1D57: nop                 ; 00
1D58: nop                 ; 00
1D59: nop                 ; 00
1D5A: push w              ; 04
1D5B: xor a, a            ; D4
1D5C: cmp z, x            ; 7B
1D5D: push x              ; 01
1D5E: nop                 ; 00
1D5F: nop                 ; 00
1D60: nop                 ; 00
1D61: nop                 ; FC
1D62: nop                 ; FF
1D63: or x, z             ; A4
1D64: add z, a            ; 2A
1D65: add y, a            ; 25
1D66: mul y, z            ; 55
1D67: add z, a            ; 2A
1D68: mul y, z            ; 55
1D69: and y, w            ; 95
1D6A: and y, z            ; 94
1D6B: or y, a             ; AA
1D6C: or y, a             ; AA
1D6D: add y, w            ; 24
1D6E: or y, w             ; A9
1D6F: sub a, y            ; 4A
1D70: sub a, x            ; 49
1D71: mul x, a            ; 52
1D72: mul x, a            ; 52
1D73: sub a, y            ; 4A
1D74: or y, w             ; A9
1D75: and x, a            ; 92
1D76: mul y, y            ; 54
1D77: and y, w            ; 95
1D78: mul x, a            ; 52
1D79: mul y, z            ; 55
1D7A: mul y, z            ; 55
1D7B: call $0000          ; 15 00 00
1D7E: nop                 ; 00
1D7F: nop                 ; 00
1D80: nop                 ; 00
1D81: store $D400, y      ; 11 00 D4
1D84: shl y               ; D6
1D85: push x              ; 01
1D86: nop                 ; 00
1D87: nop                 ; 00
1D88: nop                 ; 00
1D89: nop                 ; FC
1D8A: nop                 ; FF
1D8B: mul y, z            ; 55
1D8C: or x, w             ; A5
1D8D: or y, a             ; AA
1D8E: or y, a             ; AA
1D8F: or y, a             ; AA
1D90: sub a, y            ; 4A
1D91: or y, w             ; A9
1D92: mul x, a            ; 52
1D93: sub a, y            ; 4A
1D94: add y, a            ; 25
1D95: mul y, z            ; 55
1D96: and y, w            ; 95
1D97: mul x, a            ; 52
1D98: or y, a             ; AA
1D99: sub a, y            ; 4A
1D9A: and y, w            ; 95
1D9B: mul x, a            ; 52
1D9C: sub a, y            ; 4A
1D9D: mul y, z            ; 55
1D9E: add y, a            ; 25
1D9F: or y, w             ; A9
1DA0: sub a, y            ; 4A
1DA1: mul x, a            ; 52
1DA2: add y, a            ; 25
1DA3: add z, w            ; 29
1DA4: nop                 ; 00
1DA5: nop                 ; 00
1DA6: nop                 ; 00
1DA7: nop                 ; 00
1DA8: nop                 ; 00
1DA9: cmp w, x            ; 80
1DAA: nop                 ; 00
1DAB: mul a, z            ; 64
1DAC: cmp z, a            ; 7F
1DAD: push x              ; 01
1DAE: nop                 ; 00
1DAF: nop                 ; 00
1DB0: nop                 ; 00
1DB1: nop                 ; FC
1DB2: nop                 ; FF
1DB3: or y, a             ; AA
1DB4: mul y, y            ; 54
1DB5: mul y, z            ; 55
1DB6: sub a, x            ; 49
1DB7: mul y, z            ; 55
1DB8: mul y, z            ; 55
1DB9: mul y, z            ; 55
1DBA: mul y, z            ; 55
1DBB: add z, w            ; 29
1DBC: or y, w             ; A9
1DBD: and x, a            ; 92
1DBE: mul y, y            ; 54
1DBF: or y, a             ; AA
1DC0: add z, a            ; 2A
1DC1: or y, w             ; A9
1DC2: or x, z             ; A4
1DC3: or y, a             ; AA
1DC4: or y, a             ; AA
1DC5: mul y, y            ; 54
1DC6: mul y, z            ; 55
1DC7: or x, w             ; A5
1DC8: mul y, y            ; 54
1DC9: and y, w            ; 95
1DCA: mul y, y            ; 54
1DCB: mul y, z            ; 55
1DCC: push x              ; 01
1DCD: nop                 ; 00
1DCE: nop                 ; 00
1DCF: nop                 ; 00
1DD0: nop                 ; 00
1DD1: push w              ; 04
1DD2: store $D5DC, x      ; 10 DC D5
1DD5: nop                 ; 00
1DD6: nop                 ; 00
1DD7: nop                 ; 00
1DD8: nop                 ; 00
1DD9: nop                 ; FC
1DDA: nop                 ; FF
1DDB: or x, w             ; A5
1DDC: add z, a            ; 2A
1DDD: or y, w             ; A9
1DDE: or y, a             ; AA
1DDF: mul x, a            ; 52
1DE0: add z, w            ; 29
1DE1: or x, w             ; A5
1DE2: or y, a             ; AA
1DE3: or y, a             ; AA
1DE4: or y, a             ; AA
1DE5: mul y, y            ; 54
1DE6: or x, w             ; A5
1DE7: sub a, y            ; 4A
1DE8: sub a, x            ; 49
1DE9: and y, w            ; 95
1DEA: add z, a            ; 2A
1DEB: sub a, x            ; 49
1DEC: add z, w            ; 29
1DED: mul y, z            ; 55
1DEE: mul y, z            ; 55
1DEF: mul y, z            ; 55
1DF0: add y, a            ; 25
1DF1: or y, w             ; A9
1DF2: or y, a             ; AA
1DF3: mul x, a            ; 52
1DF4: push x              ; 01
1DF5: store $0000, x      ; 10 00 00
1DF8: store $0220, x      ; 10 20 02
1DFB: cmp x, w            ; 74
1DFC: cmp z, a            ; 7F
1DFD: nop                 ; 00
1DFE: nop                 ; 00
1DFF: nop                 ; 00
1E00: nop                 ; 00
1E01: nop                 ; FC
1E02: nop                 ; FF
1E03: and y, w            ; 95
1E04: or y, a             ; AA
1E05: add z, a            ; 2A
1E06: mul y, z            ; 55
1E07: add z, a            ; 2A
1E08: mul y, z            ; 55
1E09: mul y, z            ; 55
1E0A: sub a, y            ; 4A
1E0B: or x, w             ; A5
1E0C: and y, z            ; 94
1E0D: sub a, y            ; 4A
1E0E: and y, w            ; 95
1E0F: mul x, a            ; 52
1E10: or y, a             ; AA
1E11: mul y, y            ; 54
1E12: or y, a             ; AA
1E13: add z, a            ; 2A
1E14: or x, w             ; A5
1E15: sub a, y            ; 4A
1E16: mul x, a            ; 52
1E17: add z, a            ; 2A
1E18: mul y, z            ; 55
1E19: sub a, y            ; 4A
1E1A: and x, a            ; 92
1E1B: and y, z            ; 94
1E1C: pop a               ; 0A
1E1D: nop                 ; 00
1E1E: nop                 ; 00
1E1F: nop                 ; 00
1E20: sub z, y            ; 40
1E21: nop                 ; 00
1E22: nop                 ; 00
1E23: nop                 ; F8
1E24: mul y, w            ; 56
1E25: nop                 ; 00
1E26: nop                 ; 00
1E27: nop                 ; 00
1E28: nop                 ; 00
1E29: nop                 ; FC
1E2A: nop                 ; FF
1E2B: mul y, y            ; 54
1E2C: sub a, x            ; 49
1E2D: or x, w             ; A5
1E2E: or y, a             ; AA
1E2F: sub a, y            ; 4A
1E30: or x, w             ; A5
1E31: and y, z            ; 94
1E32: mul x, a            ; 52
1E33: or y, a             ; AA
1E34: mul x, a            ; 52
1E35: add z, w            ; 29
1E36: or y, w             ; A9
1E37: and y, z            ; 94
1E38: and x, a            ; 92
1E39: mul x, a            ; 52
1E3A: sub a, x            ; 49
1E3B: mul x, a            ; 52
1E3C: mul y, z            ; 55
1E3D: mul x, a            ; 52
1E3E: mul y, z            ; 55
1E3F: or y, w             ; A9
1E40: sub a, y            ; 4A
1E41: or y, w             ; A9
1E42: or y, a             ; AA
1E43: or y, a             ; AA
1E44: pop a               ; 0A
1E45: cmp w, z            ; 82
1E46: nop                 ; 00
1E47: nop                 ; 00
1E48: nop                 ; 00
1E49: cmp w, y            ; 81
1E4A: add x, a            ; 20
1E4B: or y, z             ; A8
1E4C: sub y, y            ; 3B
1E4D: nop                 ; 00
1E4E: nop                 ; 00
1E4F: nop                 ; 00
1E50: nop                 ; 00
1E51: nop                 ; FC
1E52: nop                 ; FF
1E53: or y, a             ; AA
1E54: or y, a             ; AA
1E55: mul y, y            ; 54
1E56: sub a, x            ; 49
1E57: or y, w             ; A9
1E58: or y, a             ; AA
1E59: mul x, a            ; 52
1E5A: mul y, z            ; 55
1E5B: and y, w            ; 95
1E5C: sub a, y            ; 4A
1E5D: or y, a             ; AA
1E5E: sub a, y            ; 4A
1E5F: mul y, z            ; 55
1E60: mul y, z            ; 55
1E61: and y, w            ; 95
1E62: or y, a             ; AA
1E63: sub a, y            ; 4A
1E64: and x, a            ; 92
1E65: or y, a             ; AA
1E66: sub a, y            ; 4A
1E67: and y, w            ; 95
1E68: mul x, a            ; 52
1E69: add y, a            ; 25
1E6A: or y, w             ; A9
1E6B: sub a, y            ; 4A
1E6C: or w, a             ; B2
1E6D: call $0002          ; 15 02 00
1E70: mul y, y            ; 54
1E71: push w              ; 04
1E72: push w              ; 04
1E73: rol y               ; E0
1E74: add x, z            ; 1E
1E75: nop                 ; 00
1E76: nop                 ; 00
1E77: nop                 ; 00
1E78: nop                 ; 00
1E79: nop                 ; FC
1E7A: nop                 ; FF
1E7B: or y, a             ; AA
1E7C: add z, a            ; 2A
1E7D: mul y, z            ; 55
1E7E: or y, a             ; AA
1E7F: or y, a             ; AA
1E80: and y, z            ; 94
1E81: add z, a            ; 2A
1E82: and y, w            ; 95
1E83: mul x, a            ; 52
1E84: mul y, z            ; 55
1E85: or x, w             ; A5
1E86: mul x, a            ; 52
1E87: mul x, a            ; 52
1E88: add z, a            ; 2A
1E89: or x, w             ; A5
1E8A: and x, a            ; 92
1E8B: mul y, y            ; 54
1E8C: mul y, z            ; 55
1E8D: add y, a            ; 25
1E8E: mul y, z            ; 55
1E8F: or x, w             ; A5
1E90: and y, z            ; 94
1E91: and y, z            ; 94
1E92: sub a, y            ; 4A
1E93: mul x, a            ; 52
1E94: mul y, z            ; 55
1E95: add z, a            ; 2A
1E96: store $2000, x      ; 10 00 20
1E99: push x              ; 01
1E9A: nop                 ; 00
1E9B: xor x, a            ; C0
1E9C: load x, $0000       ; 0B 00 00
1E9F: nop                 ; 00
1EA0: nop                 ; 00
1EA1: nop                 ; FC
1EA2: nop                 ; FF
1EA3: mul y, z            ; 55
1EA4: mul y, z            ; 55
1EA5: and y, w            ; 95
1EA6: add z, a            ; 2A
1EA7: and y, w            ; 95
1EA8: mul x, a            ; 52
1EA9: or y, w             ; A9
1EAA: mul x, a            ; 52
1EAB: mul y, z            ; 55
1EAC: add z, w            ; 29
1EAD: mul y, z            ; 55
1EAE: or y, a             ; AA
1EAF: sub a, y            ; 4A
1EB0: or x, w             ; A5
1EB1: mul y, y            ; 54
1EB2: or y, a             ; AA
1EB3: add z, a            ; 2A
1EB4: mul y, z            ; 55
1EB5: or y, w             ; A9
1EB6: mul x, a            ; 52
1EB7: or y, a             ; AA
1EB8: or y, a             ; AA
1EB9: mul x, a            ; 52
1EBA: or y, w             ; A9
1EBB: add z, a            ; 2A
1EBC: sub a, x            ; 49
1EBD: or y, w             ; A9
1EBE: nop                 ; 00
1EBF: nop                 ; 00
1EC0: jmp x, y            ; EA
1EC1: push y              ; 02
1EC2: push x              ; 01
1EC3: cmp w, y            ; 81
1EC4: add x, z            ; 1E
1EC5: nop                 ; 00
1EC6: nop                 ; 00
1EC7: nop                 ; 00
1EC8: nop                 ; 00
1EC9: nop                 ; FC
1ECA: nop                 ; FF
1ECB: mul y, z            ; 55
1ECC: or x, w             ; A5
1ECD: mul x, a            ; 52
1ECE: or x, w             ; A5
1ECF: or x, z             ; A4
1ED0: add z, a            ; 2A
1ED1: or x, w             ; A5
1ED2: mul y, y            ; 54
1ED3: sub a, y            ; 4A
1ED4: or y, a             ; AA
1ED5: or x, z             ; A4
1ED6: sub a, y            ; 4A
1ED7: mul y, z            ; 55
1ED8: or y, w             ; A9
1ED9: sub a, y            ; 4A
1EDA: add y, a            ; 25
1EDB: sub a, x            ; 49
1EDC: sub a, x            ; 49
1EDD: or y, a             ; AA
1EDE: mul y, y            ; 54
1EDF: mul y, z            ; 55
1EE0: mul y, z            ; 55
1EE1: and y, w            ; 95
1EE2: and y, z            ; 94
1EE3: or y, a             ; AA
1EE4: add z, a            ; 2A
1EE5: or x, w             ; A5
1EE6: sub z, w            ; 42
1EE7: nop                 ; 00
1EE8: cmp y, z            ; 78
1EE9: push x              ; 01
1EEA: sub w, a            ; 48
1EEB: nop                 ; 00
1EEC: load x, $0000       ; 0B 00 00
1EEF: nop                 ; 00
1EF0: nop                 ; 00
1EF1: nop                 ; FC
1EF2: nop                 ; FF
1EF3: or x, z             ; A4
1EF4: or y, a             ; AA
1EF5: mul y, y            ; 54
1EF6: or y, w             ; A9
1EF7: or y, a             ; AA
1EF8: or x, z             ; A4
1EF9: add z, a            ; 2A
1EFA: and y, w            ; 95
1EFB: mul x, a            ; 52
1EFC: and y, w            ; 95
1EFD: add z, a            ; 2A
1EFE: or y, w             ; A9
1EFF: add y, w            ; 24
1F00: mul y, z            ; 55
1F01: mul x, a            ; 52
1F02: or y, w             ; A9
1F03: or y, a             ; AA
1F04: or y, a             ; AA
1F05: sub a, y            ; 4A
1F06: and y, w            ; 95
1F07: sub a, y            ; 4A
1F08: and x, a            ; 92
1F09: mul y, y            ; 54
1F0A: sub a, y            ; 4A
1F0B: sub a, x            ; 49
1F0C: or x, w             ; A5
1F0D: and y, z            ; 94
1F0E: push w              ; 04
1F0F: push y              ; 02
1F10: jmp.lt $000A        ; F4 0A 00
1F13: nop                 ; 00
1F14: pop x               ; 06
1F15: nop                 ; 00
1F16: nop                 ; 00
1F17: nop                 ; 00
1F18: nop                 ; 00
1F19: nop                 ; FC
1F1A: nop                 ; FF
1F1B: mul y, z            ; 55
1F1C: or y, a             ; AA
1F1D: sub a, y            ; 4A
1F1E: and y, w            ; 95
1F1F: and x, a            ; 92
1F20: add z, a            ; 2A
1F21: sub a, x            ; 49
1F22: sub a, x            ; 49
1F23: or y, w             ; A9
1F24: or x, z             ; A4
1F25: sub a, y            ; 4A
1F26: and y, w            ; 95
1F27: or y, a             ; AA
1F28: and x, a            ; 92
1F29: add z, a            ; 2A
1F2A: mul y, z            ; 55
1F2B: and x, a            ; 92
1F2C: and y, z            ; 94
1F2D: or y, a             ; AA
1F2E: or y, a             ; AA
1F2F: mul y, y            ; 54
1F30: mul y, z            ; 55
1F31: or x, w             ; A5
1F32: mul x, a            ; 52
1F33: add z, a            ; 2A
1F34: or y, w             ; A9
1F35: or y, a             ; AA
1F36: pop a               ; 0A
1F37: pop z               ; 08
1F38: nop                 ; F9
1F39: push x              ; 01
1F3A: nop                 ; 00
1F3B: pop z               ; 08
1F3C: push w              ; 04
1F3D: nop                 ; 00
1F3E: nop                 ; 00
1F3F: nop                 ; 00
1F40: nop                 ; 00
1F41: nop                 ; FC
1F42: nop                 ; FF
1F43: or y, a             ; AA
1F44: add z, a            ; 2A
1F45: mul y, z            ; 55
1F46: or y, a             ; AA
1F47: mul y, y            ; 54
1F48: or y, a             ; AA
1F49: or y, a             ; AA
1F4A: mul x, a            ; 52
1F4B: add z, a            ; 2A
1F4C: mul y, z            ; 55
1F4D: or y, w             ; A9
1F4E: or x, z             ; A4
1F4F: and x, a            ; 92
1F50: or y, a             ; AA
1F51: or y, a             ; AA
1F52: sub a, y            ; 4A
1F53: mul y, z            ; 55
1F54: or x, w             ; A5
1F55: or x, z             ; A4
1F56: or x, z             ; A4
1F57: or y, a             ; AA
1F58: or y, a             ; AA
1F59: or y, a             ; AA
1F5A: add y, w            ; 24
1F5B: or x, w             ; A5
1F5C: add z, a            ; 2A
1F5D: add y, a            ; 25
1F5E: mul y, z            ; 55
1F5F: add x, a            ; 20
1F60: xor x, a            ; C0
1F61: push a              ; 05
1F62: and x, z            ; 90
1F63: nop                 ; 00
1F64: nop                 ; 00
1F65: nop                 ; 00
1F66: nop                 ; 00
1F67: nop                 ; 00
1F68: nop                 ; 00
1F69: nop                 ; FC
1F6A: nop                 ; FF
1F6B: and x, a            ; 92
1F6C: mul x, a            ; 52
1F6D: mul y, z            ; 55
1F6E: add z, w            ; 29
1F6F: or x, w             ; A5
1F70: mul x, a            ; 52
1F71: and x, a            ; 92
1F72: and y, z            ; 94
1F73: and x, a            ; 92
1F74: add z, a            ; 2A
1F75: mul y, z            ; 55
1F76: mul y, z            ; 55
1F77: or y, a             ; AA
1F78: add y, w            ; 24
1F79: sub a, x            ; 49
1F7A: mul x, a            ; 52
1F7B: add y, a            ; 25
1F7C: mul y, z            ; 55
1F7D: and y, w            ; 95
1F7E: or y, a             ; AA
1F7F: and x, a            ; 92
1F80: add y, w            ; 24
1F81: and y, w            ; 95
1F82: sub a, y            ; 4A
1F83: or y, w             ; A9
1F84: mul x, a            ; 52
1F85: or y, a             ; AA
1F86: mul y, y            ; 54
1F87: sub w, a            ; 48
1F88: mul y, y            ; 54
1F89: push x              ; 01
1F8A: nop                 ; 00
1F8B: nop                 ; 00
1F8C: nop                 ; 00
1F8D: nop                 ; 00
1F8E: nop                 ; 00
1F8F: nop                 ; 00
1F90: nop                 ; 00
1F91: nop                 ; FC
1F92: nop                 ; FF
1F93: or y, a             ; AA
1F94: and y, z            ; 94
1F95: and x, a            ; 92
1F96: sub a, y            ; 4A
1F97: and y, w            ; 95
1F98: sub a, y            ; 4A
1F99: mul y, z            ; 55
1F9A: or y, a             ; AA
1F9B: or x, z             ; A4
1F9C: or x, z             ; A4
1F9D: sub a, y            ; 4A
1F9E: mul x, a            ; 52
1F9F: or y, w             ; A9
1FA0: or y, a             ; AA
1FA1: or y, a             ; AA
1FA2: or y, a             ; AA
1FA3: mul y, y            ; 54
1FA4: add z, w            ; 29
1FA5: mul y, z            ; 55
1FA6: add z, a            ; 2A
1FA7: mul y, z            ; 55
1FA8: mul y, z            ; 55
1FA9: or y, w             ; A9
1FAA: add z, a            ; 2A
1FAB: and y, w            ; 95
1FAC: and y, z            ; 94
1FAD: and x, a            ; 92
1FAE: mul x, a            ; 52
1FAF: or x, y             ; A3
1FB0: store $0002, y      ; 11 02 00
1FB3: push y              ; 02
1FB4: nop                 ; 00
1FB5: nop                 ; 00
1FB6: nop                 ; 00
1FB7: nop                 ; 00
1FB8: nop                 ; 00
1FB9: nop                 ; FC
1FBA: nop                 ; FF
1FBB: mul y, z            ; 55
1FBC: mul y, z            ; 55
1FBD: or y, a             ; AA
1FBE: or y, a             ; AA
1FBF: mul y, y            ; 54
1FC0: or y, a             ; AA
1FC1: or x, z             ; A4
1FC2: and x, a            ; 92
1FC3: add z, a            ; 2A
1FC4: mul y, z            ; 55
1FC5: mul x, a            ; 52
1FC6: and y, w            ; 95
1FC7: sub a, y            ; 4A
1FC8: or y, a             ; AA
1FC9: mul x, a            ; 52
1FCA: add y, a            ; 25
1FCB: mul y, z            ; 55
1FCC: mul y, z            ; 55
1FCD: or y, w             ; A9
1FCE: mul x, a            ; 52
1FCF: mul y, z            ; 55
1FD0: mul y, z            ; 55
1FD1: mul y, z            ; 55
1FD2: mul x, a            ; 52
1FD3: mul y, z            ; 55
1FD4: mul y, z            ; 55
1FD5: mul y, z            ; 55
1FD6: and y, w            ; 95
1FD7: cmp w, a            ; 84
1FD8: cmp w, x            ; 80
1FD9: nop                 ; 00
1FDA: sub z, y            ; 40
1FDB: nop                 ; 00
1FDC: nop                 ; 00
1FDD: nop                 ; 00
1FDE: nop                 ; 00
1FDF: nop                 ; 00
1FE0: nop                 ; 00
1FE1: nop                 ; FC
1FE2: nop                 ; FF
1FE3: sub a, y            ; 4A
1FE4: sub a, y            ; 4A
1FE5: sub a, x            ; 49
1FE6: or y, w             ; A9
1FE7: or y, a             ; AA
1FE8: or y, a             ; AA
1FE9: add z, a            ; 2A
1FEA: mul y, z            ; 55
1FEB: and x, a            ; 92
1FEC: and x, a            ; 92
1FED: add z, a            ; 2A
1FEE: mul y, z            ; 55
1FEF: mul y, z            ; 55
1FF0: sub a, x            ; 49
1FF1: add z, a            ; 2A
1FF2: or y, w             ; A9
1FF3: and x, a            ; 92
1FF4: and y, z            ; 94
1FF5: sub a, y            ; 4A
1FF6: mul y, z            ; 55
1FF7: add z, w            ; 29
1FF8: add y, a            ; 25
1FF9: or x, w             ; A5
1FFA: or y, a             ; AA
1FFB: or x, z             ; A4
1FFC: sub a, y            ; 4A
1FFD: sub a, x            ; 49
1FFE: mul x, a            ; 52
1FFF: call $000B          ; 15 0B 00
2002: nop                 ; 00
2003: nop                 ; 00
2004: nop                 ; 00
2005: nop                 ; 00
2006: nop                 ; 00
2007: nop                 ; 00
2008: nop                 ; 00
2009: nop                 ; FC
200A: nop                 ; FF
200B: or y, a             ; AA
200C: mul x, a            ; 52
200D: mul y, z            ; 55
200E: sub a, y            ; 4A
200F: or y, w             ; A9
2010: and x, a            ; 92
2011: or y, a             ; AA
2012: or x, z             ; A4
2013: or y, a             ; AA
2014: mul y, y            ; 54
2015: mul y, z            ; 55
2016: sub a, x            ; 49
2017: or y, a             ; AA
2018: or y, a             ; AA
2019: sub a, y            ; 4A
201A: mul y, z            ; 55
201B: mul y, z            ; 55
201C: or x, w             ; A5
201D: mul x, a            ; 52
201E: or x, w             ; A5
201F: or y, a             ; AA
2020: mul y, y            ; 54
2021: mul y, z            ; 55
2022: and y, w            ; 95
2023: add z, a            ; 2A
2024: add z, w            ; 29
2025: mul y, z            ; 55
2026: sub a, x            ; 49
2027: add z, w            ; 29
2028: add y, w            ; 24
2029: nop                 ; 00
202A: nop                 ; 00
202B: nop                 ; 00
202C: nop                 ; 00
202D: nop                 ; 00
202E: nop                 ; 00
202F: nop                 ; 00
2030: nop                 ; 00
2031: nop                 ; FC
2032: nop                 ; FF
2033: or x, w             ; A5
2034: or y, a             ; AA
2035: or y, a             ; AA
2036: add z, a            ; 2A
2037: and y, w            ; 95
2038: mul y, y            ; 54
2039: mul y, z            ; 55
203A: and y, w            ; 95
203B: add y, w            ; 24
203C: sub a, x            ; 49
203D: and x, a            ; 92
203E: or y, a             ; AA
203F: add z, a            ; 2A
2040: mul y, z            ; 55
2041: or y, w             ; A9
2042: and y, z            ; 94
2043: mul y, y            ; 54
2044: or y, a             ; AA
2045: mul y, y            ; 54
2046: add z, a            ; 2A
2047: or x, w             ; A5
2048: or y, a             ; AA
2049: and y, z            ; 94
204A: mul y, y            ; 54
204B: mul y, z            ; 55
204C: mul y, z            ; 55
204D: add y, a            ; 25
204E: mul y, z            ; 55
204F: or y, a             ; AA
2050: and x, z            ; 90
2051: nop                 ; 00
2052: nop                 ; 00
2053: nop                 ; 00
2054: nop                 ; 00
2055: nop                 ; 00
2056: nop                 ; 00
2057: nop                 ; 00
2058: nop                 ; 00
2059: nop                 ; FC
205A: nop                 ; FF
205B: add z, w            ; 29
205C: and y, w            ; 95
205D: or y, a             ; AA
205E: or y, a             ; AA
205F: mul x, a            ; 52
2060: mul y, z            ; 55
2061: mul x, a            ; 52
2062: mul y, z            ; 55
2063: mul y, z            ; 55
2064: or x, w             ; A5
2065: mul y, y            ; 54
2066: and x, a            ; 92
2067: or x, z             ; A4
2068: and x, a            ; 92
2069: or y, a             ; AA
206A: or y, a             ; AA
206B: sub a, y            ; 4A
206C: add z, w            ; 29
206D: mul y, z            ; 55
206E: or y, w             ; A9
206F: or y, a             ; AA
2070: and x, a            ; 92
2071: mul x, a            ; 52
2072: or x, w             ; A5
2073: or x, z             ; A4
2074: or x, z             ; A4
2075: mul y, y            ; 54
2076: sub a, x            ; 49
2077: or x, w             ; A5
2078: sub z, w            ; 42
2079: nop                 ; 00
207A: nop                 ; 00
207B: push w              ; 04
207C: nop                 ; 00
207D: nop                 ; 00
207E: nop                 ; 00
207F: nop                 ; 00
2080: nop                 ; 00
2081: nop                 ; FC
2082: nop                 ; FF
2083: mul y, z            ; 55
2084: or y, w             ; A9
2085: and y, z            ; 94
2086: sub a, y            ; 4A
2087: mul y, z            ; 55
2088: mul y, z            ; 55
2089: and y, w            ; 95
208A: mul x, a            ; 52
208B: and x, a            ; 92
208C: and y, z            ; 94
208D: sub a, y            ; 4A
208E: mul y, z            ; 55
208F: or y, w             ; A9
2090: mul y, y            ; 54
2091: add y, a            ; 25
2092: or x, w             ; A5
2093: or y, a             ; AA
2094: sub a, y            ; 4A
2095: add y, a            ; 25
2096: mul y, z            ; 55
2097: or y, w             ; A9
2098: or y, a             ; AA
2099: or y, a             ; AA
209A: or y, a             ; AA
209B: add z, a            ; 2A
209C: mul y, z            ; 55
209D: mul y, z            ; 55
209E: add y, a            ; 25
209F: sub a, x            ; 49
20A0: pop a               ; 0A
20A1: push y              ; 02
20A2: nop                 ; 00
20A3: nop                 ; 00
20A4: nop                 ; 00
20A5: nop                 ; 00
20A6: nop                 ; 00
20A7: nop                 ; 00
20A8: nop                 ; 00
20A9: nop                 ; FC
20AA: nop                 ; FF
20AB: or x, w             ; A5
20AC: or y, a             ; AA
20AD: or y, a             ; AA
20AE: mul y, y            ; 54
20AF: sub a, y            ; 4A
20B0: and x, a            ; 92
20B1: or y, a             ; AA
20B2: sub a, y            ; 4A
20B3: mul y, z            ; 55
20B4: mul x, a            ; 52
20B5: mul x, a            ; 52
20B6: or x, w             ; A5
20B7: sub a, y            ; 4A
20B8: mul y, z            ; 55
20B9: or y, a             ; AA
20BA: add z, a            ; 2A
20BB: add z, w            ; 29
20BC: mul y, z            ; 55
20BD: or y, w             ; A9
20BE: sub a, y            ; 4A
20BF: sub a, y            ; 4A
20C0: or y, a             ; AA
20C1: sub a, y            ; 4A
20C2: sub a, y            ; 4A
20C3: mul y, z            ; 55
20C4: sub a, x            ; 49
20C5: add y, a            ; 25
20C6: mul y, z            ; 55
20C7: mul y, z            ; 55
20C8: pop w               ; 09
20C9: add z, z            ; 28
20CA: nop                 ; 00
20CB: nop                 ; 00
20CC: nop                 ; 00
20CD: nop                 ; 00
20CE: nop                 ; 00
20CF: nop                 ; 00
20D0: nop                 ; 00
20D1: nop                 ; FC
20D2: nop                 ; FF
20D3: mul y, y            ; 54
20D4: sub a, y            ; 4A
20D5: mul y, z            ; 55
20D6: or x, w             ; A5
20D7: mul x, a            ; 52
20D8: mul y, z            ; 55
20D9: or x, w             ; A5
20DA: mul y, y            ; 54
20DB: sub a, x            ; 49
20DC: and y, w            ; 95
20DD: or y, a             ; AA
20DE: mul y, y            ; 54
20DF: add z, a            ; 2A
20E0: and y, w            ; 95
20E1: or y, a             ; AA
20E2: mul x, a            ; 52
20E3: or x, w             ; A5
20E4: mul x, a            ; 52
20E5: mul y, z            ; 55
20E6: or y, w             ; A9
20E7: or y, a             ; AA
20E8: or y, a             ; AA
20E9: mul y, y            ; 54
20EA: mul y, z            ; 55
20EB: and x, a            ; 92
20EC: add z, a            ; 2A
20ED: or y, w             ; A9
20EE: and x, a            ; 92
20EF: add y, w            ; 24
20F0: mul y, z            ; 55
20F1: nop                 ; 00
20F2: push x              ; 01
20F3: nop                 ; 00
20F4: nop                 ; 00
20F5: nop                 ; 00
20F6: nop                 ; 00
20F7: nop                 ; 00
20F8: nop                 ; 00
20F9: nop                 ; FC
20FA: nop                 ; FF
20FB: sub a, y            ; 4A
20FC: or y, w             ; A9
20FD: mul x, a            ; 52
20FE: mul y, z            ; 55
20FF: and y, w            ; 95
2100: or x, z             ; A4
2101: mul y, y            ; 54
2102: mul y, z            ; 55
2103: or y, a             ; AA
2104: or x, z             ; A4
2105: add y, w            ; 24
2106: and y, w            ; 95
2107: mul x, a            ; 52
2108: or y, w             ; A9
2109: and x, a            ; 92
210A: mul y, y            ; 54
210B: mul y, z            ; 55
210C: and y, w            ; 95
210D: sub a, y            ; 4A
210E: or y, a             ; AA
210F: or y, a             ; AA
2110: and x, a            ; 92
2111: mul x, a            ; 52
2112: or y, w             ; A9
2113: or y, a             ; AA
2114: mul x, a            ; 52
2115: mul y, z            ; 55
2116: or y, a             ; AA
2117: or y, a             ; AA
2118: mul x, a            ; 52
2119: push x              ; 01
211A: nop                 ; 00
211B: nop                 ; 00
211C: nop                 ; 00
211D: nop                 ; 00
211E: nop                 ; 00
211F: nop                 ; 00
2120: nop                 ; 00
2121: nop                 ; FC
2122: nop                 ; FF
2123: mul x, a            ; 52
2124: or x, w             ; A5
2125: and y, z            ; 94
2126: and y, z            ; 94
2127: mul y, y            ; 54
2128: and y, w            ; 95
2129: and x, a            ; 92
212A: mul x, a            ; 52
212B: add y, a            ; 25
212C: add z, w            ; 29
212D: sub a, x            ; 49
212E: or x, w             ; A5
212F: or y, a             ; AA
2130: sub a, y            ; 4A
2131: mul y, z            ; 55
2132: and y, w            ; 95
2133: and y, z            ; 94
2134: mul y, y            ; 54
2135: mul x, a            ; 52
2136: add y, a            ; 25
2137: add z, w            ; 29
2138: mul y, z            ; 55
2139: mul y, z            ; 55
213A: sub a, y            ; 4A
213B: or y, w             ; A9
213C: and y, z            ; 94
213D: and y, z            ; 94
213E: sub a, y            ; 4A
213F: sub a, x            ; 49
2140: or y, a             ; AA
2141: mul y, y            ; 54
2142: add z, w            ; 29
2143: nop                 ; 00
2144: nop                 ; 00
2145: nop                 ; 00
2146: nop                 ; 00
2147: nop                 ; 00
2148: nop                 ; 00
2149: nop                 ; FC
214A: nop                 ; FF
214B: or y, a             ; AA
214C: add z, a            ; 2A
214D: mul y, z            ; 55
214E: mul y, z            ; 55
214F: add y, a            ; 25
2150: or y, w             ; A9
2151: or y, a             ; AA
2152: sub a, y            ; 4A
2153: mul y, z            ; 55
2154: or x, w             ; A5
2155: add z, a            ; 2A
2156: add z, w            ; 29
2157: add y, a            ; 25
2158: mul y, z            ; 55
2159: or y, a             ; AA
215A: or y, a             ; AA
215B: or y, a             ; AA
215C: or y, a             ; AA
215D: or y, a             ; AA
215E: or y, a             ; AA
215F: or y, a             ; AA
2160: or y, a             ; AA
2161: sub a, y            ; 4A
2162: mul y, z            ; 55
2163: sub a, y            ; 4A
2164: mul y, z            ; 55
2165: or x, w             ; A5
2166: add z, a            ; 2A
2167: and y, w            ; 95
2168: add y, w            ; 24
2169: add y, a            ; 25
216A: or x, w             ; A5
216B: nop                 ; 00
216C: nop                 ; 00
216D: nop                 ; 00
216E: nop                 ; 00
216F: nop                 ; 00
2170: nop                 ; 00
2171: nop                 ; FC
2172: nop                 ; FF
2173: mul y, z            ; 55
2174: mul x, a            ; 52
2175: or x, w             ; A5
2176: sub a, y            ; 4A
2177: mul y, z            ; 55
2178: add y, a            ; 25
2179: sub a, x            ; 49
217A: or y, a             ; AA
217B: mul y, y            ; 54
217C: call $5249          ; 15 49 52
217F: or y, w             ; A9
2180: mul x, a            ; 52
2181: add y, a            ; 25
2182: sub a, x            ; 49
2183: or x, w             ; A5
2184: sub a, y            ; 4A
2185: and y, w            ; 95
2186: mul x, a            ; 52
2187: or x, w             ; A5
2188: mul y, y            ; 54
2189: or y, a             ; AA
218A: mul x, a            ; 52
218B: mul y, z            ; 55
218C: sub a, y            ; 4A
218D: or y, a             ; AA
218E: or x, z             ; A4
218F: or x, z             ; A4
2190: sub a, y            ; 4A
2191: and y, w            ; 95
2192: store $0001, a      ; 14 01 00
2195: nop                 ; 00
2196: nop                 ; 00
2197: nop                 ; 00
2198: nop                 ; 00
2199: nop                 ; FC
219A: nop                 ; FF
219B: and y, w            ; 95
219C: sub a, y            ; 4A
219D: and y, w            ; 95
219E: mul y, y            ; 54
219F: mul x, a            ; 52
21A0: or y, a             ; AA
21A1: or y, a             ; AA
21A2: add z, a            ; 2A
21A3: add y, a            ; 25
21A4: or y, w             ; A9
21A5: or x, z             ; A4
21A6: sub a, y            ; 4A
21A7: sub a, y            ; 4A
21A8: or y, a             ; AA
21A9: or y, a             ; AA
21AA: or y, a             ; AA
21AB: mul y, y            ; 54
21AC: add z, a            ; 2A
21AD: or y, w             ; A9
21AE: and y, z            ; 94
21AF: mul y, y            ; 54
21B0: or x, w             ; A5
21B1: mul x, a            ; 52
21B2: sub a, y            ; 4A
21B3: or y, w             ; A9
21B4: mul x, a            ; 52
21B5: sub a, x            ; 49
21B6: mul y, z            ; 55
21B7: mul y, z            ; 55
21B8: mul x, a            ; 52
21B9: mul x, a            ; 52
21BA: mul x, a            ; 52
21BB: push y              ; 02
21BC: nop                 ; 00
21BD: nop                 ; 00
21BE: nop                 ; 00
21BF: nop                 ; 00
21C0: nop                 ; 00
21C1: nop                 ; FC
21C2: nop                 ; FF
21C3: mul x, a            ; 52
21C4: add z, w            ; 29
21C5: or y, w             ; A9
21C6: sub a, y            ; 4A
21C7: and y, w            ; 95
21C8: and x, a            ; 92
21C9: add y, w            ; 24
21CA: or x, w             ; A5
21CB: or y, a             ; AA
21CC: sub a, y            ; 4A
21CD: and y, w            ; 95
21CE: mul y, y            ; 54
21CF: mul y, z            ; 55
21D0: add z, w            ; 29
21D1: or y, w             ; A9
21D2: or y, a             ; AA
21D3: or y, a             ; AA
21D4: mul x, a            ; 52
21D5: add y, a            ; 25
21D6: mul y, z            ; 55
21D7: and y, w            ; 95
21D8: or y, a             ; AA
21D9: or y, a             ; AA
21DA: add z, a            ; 2A
21DB: and y, w            ; 95
21DC: or y, a             ; AA
21DD: add z, a            ; 2A
21DE: sub a, x            ; 49
21DF: and x, a            ; 92
21E0: add z, a            ; 2A
21E1: or y, w             ; A9
21E2: sub a, y            ; 4A
21E3: pop w               ; 09
21E4: nop                 ; 00
21E5: nop                 ; 00
21E6: nop                 ; 00
21E7: nop                 ; 00
21E8: nop                 ; 00
21E9: nop                 ; FC
21EA: nop                 ; FF
21EB: mul y, y            ; 54
21EC: mul y, z            ; 55
21ED: add y, a            ; 25
21EE: add z, w            ; 29
21EF: or y, w             ; A9
21F0: mul y, y            ; 54
21F1: mul y, z            ; 55
21F2: or y, w             ; A9
21F3: mul y, y            ; 54
21F4: add z, a            ; 2A
21F5: sub a, x            ; 49
21F6: and x, a            ; 92
21F7: or x, z             ; A4
21F8: sub a, y            ; 4A
21F9: add y, a            ; 25
21FA: sub a, x            ; 49
21FB: and y, w            ; 95
21FC: or y, a             ; AA
21FD: or y, a             ; AA
21FE: add z, a            ; 2A
21FF: or y, w             ; A9
2200: mul y, y            ; 54
2201: and y, w            ; 95
2202: or y, a             ; AA
2203: mul x, a            ; 52
2204: sub a, y            ; 4A
2205: mul x, a            ; 52
2206: mul y, z            ; 55
2207: mul y, z            ; 55
2208: mul x, a            ; 52
2209: add y, a            ; 25
220A: add z, w            ; 29
220B: add y, a            ; 25
220C: nop                 ; 00
220D: nop                 ; 00
220E: nop                 ; 00
220F: nop                 ; 00
2210: nop                 ; 00
2211: nop                 ; FC
2212: nop                 ; FF
2213: and y, w            ; 95
2214: and y, z            ; 94
2215: mul y, y            ; 54
2216: mul y, z            ; 55
2217: and y, w            ; 95
2218: sub a, y            ; 4A
2219: and x, a            ; 92
221A: and y, z            ; 94
221B: sub a, y            ; 4A
221C: or x, w             ; A5
221D: mul x, a            ; 52
221E: mul y, z            ; 55
221F: mul y, z            ; 55
2220: or y, a             ; AA
2221: or y, a             ; AA
2222: add z, a            ; 2A
2223: or x, w             ; A5
2224: or y, a             ; AA
2225: and y, z            ; 94
2226: or x, z             ; A4
2227: sub a, y            ; 4A
2228: and y, w            ; 95
2229: mul y, y            ; 54
222A: or x, w             ; A5
222B: or y, a             ; AA
222C: mul x, a            ; 52
222D: and y, w            ; 95
222E: add y, w            ; 24
222F: sub a, x            ; 49
2230: and y, w            ; 95
2231: and y, z            ; 94
2232: sub a, y            ; 4A
2233: store $0000, z      ; 12 00 00
2236: nop                 ; 00
2237: nop                 ; 00
2238: nop                 ; 00
2239: nop                 ; FC
223A: nop                 ; FF
223B: or y, w             ; A9
223C: mul x, a            ; 52
223D: mul y, z            ; 55
223E: mul x, a            ; 52
223F: mul x, a            ; 52
2240: mul x, a            ; 52
2241: sub a, x            ; 49
2242: or x, w             ; A5
2243: mul y, y            ; 54
2244: or y, w             ; A9
2245: sub a, y            ; 4A
2246: and x, a            ; 92
2247: add y, w            ; 24
2248: add z, w            ; 29
2249: mul y, z            ; 55
224A: mul y, z            ; 55
224B: mul y, z            ; 55
224C: sub a, y            ; 4A
224D: mul y, z            ; 55
224E: mul x, a            ; 52
224F: mul x, a            ; 52
2250: or y, w             ; A9
2251: or y, a             ; AA
2252: and y, z            ; 94
2253: or x, z             ; A4
2254: and y, z            ; 94
2255: or x, z             ; A4
2256: mul x, a            ; 52
2257: mul y, z            ; 55
2258: mul x, a            ; 52
2259: mul x, a            ; 52
225A: mul x, a            ; 52
225B: sub a, x            ; 49
225C: nop                 ; 00
225D: nop                 ; 00
225E: nop                 ; 00
225F: nop                 ; 00
2260: nop                 ; 00
2261: nop                 ; FC
2262: nop                 ; FF
2263: sub a, y            ; 4A
2264: sub a, y            ; 4A
2265: and x, a            ; 92
2266: sub a, y            ; 4A
2267: or x, w             ; A5
2268: sub a, y            ; 4A
2269: or y, a             ; AA
226A: and y, z            ; 94
226B: mul x, a            ; 52
226C: add z, a            ; 2A
226D: or y, w             ; A9
226E: add y, w            ; 24
226F: mul y, z            ; 55
2270: or x, w             ; A5
2271: add y, w            ; 24
2272: or x, w             ; A5
2273: mul y, y            ; 54
2274: add z, w            ; 29
2275: or x, w             ; A5
2276: add z, a            ; 2A
2277: mul y, z            ; 55
2278: sub a, y            ; 4A
2279: or x, w             ; A5
227A: or y, a             ; AA
227B: add z, a            ; 2A
227C: mul y, z            ; 55
227D: mul y, z            ; 55
227E: sub a, y            ; 4A
227F: and x, a            ; 92
2280: sub a, y            ; 4A
2281: and y, w            ; 95
2282: add y, w            ; 24
2283: or y, a             ; AA
2284: push y              ; 02
2285: nop                 ; 00
2286: nop                 ; 00
2287: nop                 ; 00
2288: nop                 ; 00
2289: nop                 ; FC
228A: nop                 ; FF
228B: mul x, a            ; 52
228C: or y, w             ; A9
228D: sub a, y            ; 4A
228E: add z, w            ; 29
228F: sub a, x            ; 49
2290: and x, a            ; 92
2291: store $A529, z      ; 12 29 A5
2294: mul x, a            ; 52
2295: and y, w            ; 95
2296: sub a, y            ; 4A
2297: sub a, x            ; 49
2298: mul y, z            ; 55
2299: mul y, z            ; 55
229A: mul y, z            ; 55
229B: mul y, z            ; 55
229C: mul y, z            ; 55
229D: or y, w             ; A9
229E: sub w, x            ; 44
229F: or x, w             ; A5
22A0: add z, a            ; 2A
22A1: and y, w            ; 95
22A2: or y, a             ; AA
22A3: sub a, y            ; 4A
22A4: add z, w            ; 29
22A5: sub a, x            ; 49
22A6: add z, w            ; 29
22A7: or y, w             ; A9
22A8: and y, z            ; 94
22A9: or x, z             ; A4
22AA: sub a, y            ; 4A
22AB: and x, w            ; 91
22AC: pop z               ; 08
22AD: nop                 ; 00
22AE: nop                 ; 00
22AF: nop                 ; 00
22B0: nop                 ; 00
22B1: nop                 ; FC
22B2: nop                 ; FF
22B3: mul y, z            ; 55
22B4: sub a, y            ; 4A
22B5: mul x, a            ; 52
22B6: or x, w             ; A5
22B7: add z, a            ; 2A
22B8: or y, w             ; A9
22B9: or x, z             ; A4
22BA: sub a, y            ; 4A
22BB: add z, w            ; 29
22BC: and y, w            ; 95
22BD: mul x, a            ; 52
22BE: mul x, a            ; 52
22BF: add z, a            ; 2A
22C0: sub a, x            ; 49
22C1: mul x, a            ; 52
22C2: add z, w            ; 29
22C3: add y, a            ; 25
22C4: mul y, z            ; 55
22C5: and y, w            ; 95
22C6: or y, a             ; AA
22C7: and y, z            ; 94
22C8: mul x, a            ; 52
22C9: or y, w             ; A9
22CA: mul x, a            ; 52
22CB: mul x, a            ; 52
22CC: or x, w             ; A5
22CD: mul x, a            ; 52
22CE: sub a, y            ; 4A
22CF: and y, w            ; 95
22D0: mul x, a            ; 52
22D1: sub a, x            ; 49
22D2: and x, a            ; 92
22D3: sub a, y            ; 4A
22D4: store $0000, z      ; 12 00 00
22D7: nop                 ; 00
22D8: nop                 ; 00
22D9: nop                 ; FC
22DA: nop                 ; FF
22DB: add y, a            ; 25
22DC: or x, w             ; A5
22DD: and y, z            ; 94
22DE: and y, z            ; 94
22DF: or x, z             ; A4
22E0: add y, w            ; 24
22E1: mul y, z            ; 55
22E2: mul x, a            ; 52
22E3: sub a, y            ; 4A
22E4: or y, w             ; A9
22E5: mul y, y            ; 54
22E6: sub a, x            ; 49
22E7: mul x, w            ; 51
22E8: mul y, z            ; 55
22E9: and y, w            ; 95
22EA: or y, a             ; AA
22EB: mul y, y            ; 54
22EC: sub a, x            ; 49
22ED: mul y, z            ; 55
22EE: add z, w            ; 29
22EF: mul y, z            ; 55
22F0: or y, a             ; AA
22F1: or y, a             ; AA
22F2: or y, a             ; AA
22F3: add z, a            ; 2A
22F4: and y, w            ; 95
22F5: and y, z            ; 94
22F6: mul x, a            ; 52
22F7: add y, y            ; 22
22F8: sub a, x            ; 49
22F9: add z, a            ; 2A
22FA: add z, w            ; 29
22FB: add z, w            ; 29
22FC: sub w, y            ; 45
22FD: nop                 ; 00
22FE: nop                 ; 00
22FF: nop                 ; 00
2300: nop                 ; 00
2301: nop                 ; FC
2302: nop                 ; FF
2303: mul y, y            ; 54
2304: and y, w            ; 95
2305: mul x, a            ; 52
2306: add z, a            ; 2A
2307: and y, w            ; 95
2308: sub a, y            ; 4A
2309: and x, a            ; 92
230A: add y, w            ; 24
230B: or y, w             ; A9
230C: sub a, y            ; 4A
230D: and y, w            ; 95
230E: add z, a            ; 2A
230F: and y, w            ; 95
2310: add y, w            ; 24
2311: mul y, z            ; 55
2312: sub a, y            ; 4A
2313: mul y, z            ; 55
2314: mul y, z            ; 55
2315: or x, w             ; A5
2316: or y, a             ; AA
2317: sub a, y            ; 4A
2318: and y, w            ; 95
2319: mul y, y            ; 54
231A: add z, a            ; 2A
231B: sub a, x            ; 49
231C: mul x, a            ; 52
231D: or x, w             ; A5
231E: and y, z            ; 94
231F: mul y, y            ; 54
2320: add z, a            ; 2A
2321: or x, w             ; A5
2322: or x, z             ; A4
2323: sub w, x            ; 44
2324: and x, a            ; 92
2325: nop                 ; 00
2326: nop                 ; 00
2327: nop                 ; 00
2328: nop                 ; 00
2329: nop                 ; FC
232A: nop                 ; FF
232B: sub a, x            ; 49
232C: mul x, a            ; 52
232D: sub a, y            ; 4A
232E: sub a, x            ; 49
232F: sub a, x            ; 49
2330: mul x, a            ; 52
2331: sub a, x            ; 49
2332: and y, w            ; 95
2333: and x, a            ; 92
2334: mul y, y            ; 54
2335: mul x, a            ; 52
2336: and x, a            ; 92
2337: or x, z             ; A4
2338: or y, a             ; AA
2339: or x, z             ; A4
233A: mul x, a            ; 52
233B: sub a, x            ; 49
233C: mul y, z            ; 55
233D: add z, a            ; 2A
233E: or x, w             ; A5
233F: mul y, y            ; 54
2340: or y, w             ; A9
2341: and x, a            ; 92
2342: mul x, a            ; 52
2343: mul y, z            ; 55
2344: sub a, x            ; 49
2345: and x, a            ; 92
2346: mul x, a            ; 52
2347: or x, w             ; A5
2348: mul x, a            ; 52
2349: sub a, x            ; 49
234A: and x, a            ; 92
234B: mul x, a            ; 52
234C: sub a, x            ; 49
234D: push y              ; 02
234E: nop                 ; 00
234F: nop                 ; 00
2350: nop                 ; 00
2351: nop                 ; FC
2352: nop                 ; FF
2353: or y, a             ; AA
2354: and y, z            ; 94
2355: and x, a            ; 92
2356: mul x, a            ; 52
2357: mul x, a            ; 52
2358: sub a, x            ; 49
2359: or y, a             ; AA
235A: or x, z             ; A4
235B: mul y, y            ; 54
235C: and x, a            ; 92
235D: sub a, y            ; 4A
235E: mul y, z            ; 55
235F: add z, w            ; 29
2360: sub a, x            ; 49
2361: mul y, z            ; 55
2362: mul y, z            ; 55
2363: add z, a            ; 2A
2364: sub a, x            ; 49
2365: or y, w             ; A9
2366: add z, a            ; 2A
2367: add y, a            ; 25
2368: or x, w             ; A5
2369: or y, a             ; AA
236A: sub a, y            ; 4A
236B: add y, a            ; 25
236C: and y, w            ; 95
236D: sub a, y            ; 4A
236E: sub a, y            ; 4A
236F: store $2A49, z      ; 12 49 2A
2372: add y, a            ; 25
2373: add z, w            ; 29
2374: and x, a            ; 92
2375: push w              ; 04
2376: nop                 ; 00
2377: nop                 ; 00
2378: nop                 ; 00
2379: nop                 ; FC
237A: nop                 ; FF
237B: and x, a            ; 92
237C: mul x, a            ; 52
237D: add z, a            ; 2A
237E: and y, w            ; 95
237F: sub a, y            ; 4A
2380: add z, a            ; 2A
2381: cmp a, a            ; 89
2382: and x, a            ; 92
2383: and x, a            ; 92
2384: or y, a             ; AA
2385: mul y, y            ; 54
2386: sub a, x            ; 49
2387: sub a, y            ; 4A
2388: add z, a            ; 2A
2389: sub a, x            ; 49
238A: sub a, y            ; 4A
238B: mul y, z            ; 55
238C: mul y, z            ; 55
238D: mul y, z            ; 55
238E: or y, a             ; AA
238F: or y, a             ; AA
2390: add z, a            ; 2A
2391: or x, w             ; A5
2392: mul y, y            ; 54
2393: or y, a             ; AA
2394: mul x, a            ; 52
2395: and x, a            ; 92
2396: add y, w            ; 24
2397: sub a, x            ; 49
2398: add z, a            ; 2A
2399: sub a, x            ; 49
239A: sub a, x            ; 49
239B: sub w, x            ; 44
239C: sub a, x            ; 49
239D: store $0000, z      ; 12 00 00
23A0: nop                 ; 00
23A1: nop                 ; FC
23A2: nop                 ; FF
23A3: mul y, y            ; 54
23A4: sub a, y            ; 4A
23A5: sub a, x            ; 49
23A6: sub a, x            ; 49
23A7: and x, a            ; 92
23A8: sub w, x            ; 44
23A9: add y, a            ; 25
23AA: or y, w             ; A9
23AB: or x, z             ; A4
23AC: and x, a            ; 92
23AD: mul x, a            ; 52
23AE: or y, a             ; AA
23AF: mul x, a            ; 52
23B0: sub a, x            ; 49
23B1: mul y, z            ; 55
23B2: or y, w             ; A9
23B3: mul x, a            ; 52
23B4: mul y, z            ; 55
23B5: sub a, y            ; 4A
23B6: sub a, x            ; 49
23B7: or y, w             ; A9
23B8: or y, a             ; AA
23B9: and y, z            ; 94
23BA: or y, a             ; AA
23BB: mul x, a            ; 52
23BC: sub a, y            ; 4A
23BD: add z, w            ; 29
23BE: or y, w             ; A9
23BF: or y, a             ; AA
23C0: and x, a            ; 92
23C1: and x, a            ; 92
23C2: and y, z            ; 94
23C3: mul x, a            ; 52
23C4: and x, a            ; 92
23C5: add y, w            ; 24
23C6: nop                 ; 00
23C7: nop                 ; 00
23C8: nop                 ; 00
23C9: nop                 ; FC
23CA: nop                 ; FF
23CB: or x, w             ; A5
23CC: and x, a            ; 92
23CD: add y, w            ; 24
23CE: add y, a            ; 25
23CF: or y, w             ; A9
23D0: and x, a            ; 92
23D1: mul y, y            ; 54
23D2: sub a, y            ; 4A
23D3: add z, a            ; 2A
23D4: or y, w             ; A9
23D5: sub a, y            ; 4A
23D6: add y, a            ; 25
23D7: sub a, x            ; 49
23D8: mul x, a            ; 52
23D9: and x, a            ; 92
23DA: add z, a            ; 2A
23DB: and y, w            ; 95
23DC: or x, z             ; A4
23DD: or y, a             ; AA
23DE: or y, a             ; AA
23DF: sub a, y            ; 4A
23E0: mul x, a            ; 52
23E1: mul y, z            ; 55
23E2: sub a, x            ; 49
23E3: and y, w            ; 95
23E4: add z, a            ; 2A
23E5: or x, w             ; A5
23E6: sub w, x            ; 44
23E7: add y, y            ; 22
23E8: or x, z             ; A4
23E9: mul y, y            ; 54
23EA: mul x, a            ; 52
23EB: cmpbit x            ; 8A 24
23ED: and x, w            ; 91
23EE: nop                 ; 00
23EF: nop                 ; 00
23F0: nop                 ; 00
23F1: nop                 ; FC
23F2: nop                 ; FF
23F3: and x, a            ; 92
23F4: mul y, y            ; 54
23F5: or y, a             ; AA
23F6: or y, z             ; A8
23F7: add y, w            ; 24
23F8: add z, w            ; 29
23F9: and x, w            ; 91
23FA: and x, a            ; 92
23FB: and x, a            ; 92
23FC: and y, z            ; 94
23FD: and y, z            ; 94
23FE: mul y, y            ; 54
23FF: and y, w            ; 95
2400: and y, z            ; 94
2401: mul y, y            ; 54
2402: or x, w             ; A5
2403: or y, a             ; AA
2404: add z, a            ; 2A
2405: or x, w             ; A5
2406: or y, a             ; AA
2407: mul y, y            ; 54
2408: and y, w            ; 95
2409: sub a, y            ; 4A
240A: add z, a            ; 2A
240B: or y, w             ; A9
240C: or x, z             ; A4
240D: store $4929, a      ; 14 29 49
2410: add z, w            ; 29
2411: add y, a            ; 25
2412: add y, a            ; 25
2413: add y, x            ; 21
2414: sub a, x            ; 49
2415: add y, w            ; 24
2416: push x              ; 01
2417: nop                 ; 00
2418: nop                 ; 00
2419: nop                 ; FC
241A: nop                 ; FF
241B: mul y, y            ; 54
241C: and x, a            ; 92
241D: and x, a            ; 92
241E: sub a, y            ; 4A
241F: and x, a            ; 92
2420: or x, z             ; A4
2421: add y, w            ; 24
2422: sub a, x            ; 49
2423: sub a, y            ; 4A
2424: or x, w             ; A5
2425: mul x, a            ; 52
2426: add y, a            ; 25
2427: or y, w             ; A9
2428: mul x, a            ; 52
2429: add y, a            ; 25
242A: mul y, z            ; 55
242B: or y, w             ; A9
242C: or y, a             ; AA
242D: add z, a            ; 2A
242E: sub a, x            ; 49
242F: and y, w            ; 95
2430: mul y, y            ; 54
2431: mul x, a            ; 52
2432: or x, w             ; A5
2433: sub a, y            ; 4A
2434: add z, w            ; 29
2435: sub a, x            ; 49
2436: and x, a            ; 92
2437: and y, z            ; 94
2438: sub w, x            ; 44
2439: sub w, a            ; 48
243A: and y, z            ; 94
243B: and y, z            ; 94
243C: add y, w            ; 24
243D: cmp a, a            ; 89
243E: push w              ; 04
243F: nop                 ; 00
2440: nop                 ; 00
2441: nop                 ; FC
2442: nop                 ; FF
2443: add y, a            ; 25
2444: add y, a            ; 25
2445: sub a, x            ; 49
2446: and x, a            ; 92
2447: add z, a            ; 2A
2448: call $A495          ; 15 95 A4
244B: add y, w            ; 24
244C: sub a, x            ; 49
244D: add z, a            ; 2A
244E: or y, w             ; A9
244F: sub a, y            ; 4A
2450: sub a, y            ; 4A
2451: mul x, a            ; 52
2452: add z, w            ; 29
2453: add y, a            ; 25
2454: or x, w             ; A5
2455: mul x, a            ; 52
2456: mul y, z            ; 55
2457: mul x, a            ; 52
2458: or x, w             ; A5
2459: add z, a            ; 2A
245A: mul y, z            ; 55
245B: mul x, a            ; 52
245C: sub a, y            ; 4A
245D: or x, w             ; A5
245E: add y, w            ; 24
245F: sub w, y            ; 45
2460: and x, a            ; 92
2461: and x, a            ; 92
2462: add y, y            ; 22
2463: add y, a            ; 25
2464: sub a, x            ; 49
2465: add y, y            ; 22
2466: pop w               ; 09
2467: nop                 ; 00
2468: nop                 ; 00
2469: nop                 ; FC
246A: nop                 ; FF
246B: sub w, a            ; 48
246C: or y, w             ; A9
246D: add y, w            ; 24
246E: sub a, x            ; 49
246F: sub w, x            ; 44
2470: and a, w            ; A2
2471: sub w, a            ; 48
2472: and x, a            ; 92
2473: mul x, a            ; 52
2474: add z, a            ; 2A
2475: sub a, x            ; 49
2476: and y, w            ; 95
2477: or x, z             ; A4
2478: add y, w            ; 24
2479: and y, w            ; 95
247A: sub a, y            ; 4A
247B: mul y, z            ; 55
247C: add z, w            ; 29
247D: mul y, z            ; 55
247E: and y, w            ; 95
247F: or y, a             ; AA
2480: or y, a             ; AA
2481: mul y, y            ; 54
2482: sub a, x            ; 49
2483: and y, w            ; 95
2484: mul x, a            ; 52
2485: and x, a            ; 92
2486: and x, a            ; 92
2487: add z, z            ; 28
2488: sub a, x            ; 49
2489: or y, a             ; AA
248A: and y, z            ; 94
248B: sub w, a            ; 48
248C: and x, a            ; 92
248D: and y, z            ; 94
248E: add y, w            ; 24
248F: nop                 ; 00
2490: nop                 ; 00
2491: nop                 ; FC
2492: nop                 ; FF
2493: mul x, a            ; 52
2494: store $54A9, z      ; 12 A9 54
2497: add z, w            ; 29
2498: sub a, x            ; 49
2499: and x, a            ; 92
249A: mul y, y            ; 54
249B: and y, z            ; 94
249C: or x, z             ; A4
249D: and x, a            ; 92
249E: or x, z             ; A4
249F: add z, a            ; 2A
24A0: or y, w             ; A9
24A1: mul x, a            ; 52
24A2: or y, w             ; A9
24A3: or y, a             ; AA
24A4: or y, a             ; AA
24A5: and y, z            ; 94
24A6: or x, z             ; A4
24A7: sub a, y            ; 4A
24A8: and x, a            ; 92
24A9: and x, a            ; 92
24AA: add z, a            ; 2A
24AB: sub a, x            ; 49
24AC: add z, a            ; 2A
24AD: add z, w            ; 29
24AE: sub a, x            ; 49
24AF: and x, a            ; 92
24B0: add y, w            ; 24
24B1: pop w               ; 09
24B2: or x, w             ; A5
24B3: and x, a            ; 92
24B4: add y, w            ; 24
24B5: add y, x            ; 21
24B6: sub a, x            ; 49
24B7: nop                 ; 00
24B8: nop                 ; 00
24B9: nop                 ; FC
24BA: nop                 ; FF
24BB: cmpbit x            ; 8A 4A
24BD: sub w, y            ; 45
24BE: add y, y            ; 22
24BF: or x, w             ; A5
24C0: and y, z            ; 94
24C1: sub a, y            ; 4A
24C2: add y, y            ; 22
24C3: sub a, x            ; 49
24C4: sub a, x            ; 49
24C5: or y, a             ; AA
24C6: add z, a            ; 2A
24C7: sub a, x            ; 49
24C8: add y, a            ; 25
24C9: sub a, y            ; 4A
24CA: add z, a            ; 2A
24CB: add z, w            ; 29
24CC: mul y, z            ; 55
24CD: or x, w             ; A5
24CE: or y, a             ; AA
24CF: mul y, y            ; 54
24D0: mul y, z            ; 55
24D1: mul y, z            ; 55
24D2: mul x, a            ; 52
24D3: or y, a             ; AA
24D4: or x, z             ; A4
24D5: sub a, y            ; 4A
24D6: store $9249, z      ; 12 49 92
24D9: or x, z             ; A4
24DA: sub w, a            ; 48
24DB: sub a, y            ; 4A
24DC: and x, a            ; 92
24DD: and y, z            ; 94
24DE: add y, w            ; 24
24DF: push x              ; 01
24E0: nop                 ; 00
24E1: nop                 ; FC
24E2: nop                 ; FF
24E3: or x, z             ; A4
24E4: or x, z             ; A4
24E5: and x, z            ; 90
24E6: and y, z            ; 94
24E7: store $2125, x      ; 10 25 21
24EA: sub a, x            ; 49
24EB: add y, a            ; 25
24EC: and y, w            ; 95
24ED: add y, w            ; 24
24EE: sub a, x            ; 49
24EF: mul y, z            ; 55
24F0: sub a, y            ; 4A
24F1: and x, w            ; 91
24F2: sub a, y            ; 4A
24F3: or x, w             ; A5
24F4: and x, a            ; 92
24F5: or y, a             ; AA
24F6: add z, a            ; 2A
24F7: add y, a            ; 25
24F8: add z, w            ; 29
24F9: sub a, x            ; 49
24FA: and y, w            ; 95
24FB: and x, a            ; 92
24FC: sub a, y            ; 4A
24FD: mul x, a            ; 52
24FE: sub a, x            ; 49
24FF: and x, a            ; 92
2500: add y, w            ; 24
2501: add z, w            ; 29
2502: add y, a            ; 25
2503: and x, w            ; 91
2504: add y, w            ; 24
2505: add y, y            ; 22
2506: sub a, x            ; 49
2507: nop                 ; 00
2508: nop                 ; 00
2509: nop                 ; FC
250A: nop                 ; FF
250B: store $5509, z      ; 12 09 55
250E: mul x, a            ; 52
250F: sub a, y            ; 4A
2510: and x, z            ; 90
2511: and y, z            ; 94
2512: add y, w            ; 24
2513: and x, a            ; 92
2514: or x, z             ; A4
2515: and x, a            ; 92
2516: mul y, y            ; 54
2517: and x, a            ; 92
2518: or y, a             ; AA
2519: mul y, y            ; 54
251A: mul x, a            ; 52
251B: or y, a             ; AA
251C: mul y, y            ; 54
251D: add z, w            ; 29
251E: sub a, x            ; 49
251F: or y, w             ; A9
2520: sub a, y            ; 4A
2521: add y, a            ; 25
2522: or y, w             ; A9
2523: add y, w            ; 24
2524: add z, w            ; 29
2525: cmp a, a            ; 89
2526: add y, w            ; 24
2527: sub a, x            ; 49
2528: and x, a            ; 92
2529: sub w, x            ; 44
252A: and x, a            ; 92
252B: add y, w            ; 24
252C: and x, w            ; 91
252D: cmp a, w            ; 88
252E: add x, a            ; 20
252F: push a              ; 05
2530: nop                 ; 00
2531: nop                 ; FC
2532: nop                 ; FF
2533: mul y, y            ; 54
2534: mul x, a            ; 52
2535: pop w               ; 09
2536: cmp a, a            ; 89
2537: mul x, a            ; 52
2538: add y, a            ; 25
2539: sub a, x            ; 49
253A: and x, a            ; 92
253B: add z, z            ; 28
253C: add z, w            ; 29
253D: or y, w             ; A9
253E: and x, a            ; 92
253F: mul y, y            ; 54
2540: sub a, x            ; 49
2541: sub a, y            ; 4A
2542: or y, w             ; A9
2543: add z, a            ; 2A
2544: mul y, z            ; 55
2545: sub a, y            ; 4A
2546: mul y, z            ; 55
2547: and y, w            ; 95
2548: mul y, y            ; 54
2549: or y, w             ; A9
254A: add y, w            ; 24
254B: mul y, z            ; 55
254C: sub a, y            ; 4A
254D: mul y, z            ; 55
254E: sub a, y            ; 4A
254F: and x, a            ; 92
2550: sub w, x            ; 44
2551: and x, a            ; 92
2552: add y, w            ; 24
2553: and y, w            ; 95
2554: add y, w            ; 24
2555: add y, y            ; 22
2556: sub a, y            ; 4A
2557: store $FC00, x      ; 10 00 FC
255A: nop                 ; FF
255B: add y, y            ; 22
255C: add z, w            ; 29
255D: or x, z             ; A4
255E: add y, w            ; 24
255F: cmp w, a            ; 84
2560: and y, z            ; 94
2561: add y, w            ; 24
2562: sub a, x            ; 49
2563: or x, w             ; A5
2564: sub w, x            ; 44
2565: sub a, y            ; 4A
2566: sub a, y            ; 4A
2567: add y, a            ; 25
2568: or x, w             ; A5
2569: and x, a            ; 92
256A: sub a, y            ; 4A
256B: sub a, x            ; 49
256C: or x, w             ; A5
256D: or y, a             ; AA
256E: mul x, a            ; 52
256F: or y, a             ; AA
2570: and x, a            ; 92
2571: sub a, y            ; 4A
2572: and y, w            ; 95
2573: or x, z             ; A4
2574: mul x, a            ; 52
2575: and x, a            ; 92
2576: add z, z            ; 28
2577: sub z, z            ; 41
2578: store $9249, z      ; 12 49 92
257B: mul x, z            ; 50
257C: and x, a            ; 92
257D: and y, z            ; 94
257E: add x, a            ; 20
257F: sub w, y            ; 45
2580: nop                 ; 00
2581: nop                 ; FC
2582: nop                 ; FF
2583: cmp a, a            ; 89
2584: sub w, x            ; 44
2585: add z, w            ; 29
2586: sub a, x            ; 49
2587: add z, w            ; 29
2588: add y, x            ; 21
2589: sub a, x            ; 49
258A: mul x, a            ; 52
258B: sub w, a            ; 48
258C: and x, a            ; 92
258D: and x, a            ; 92
258E: mul x, a            ; 52
258F: and x, a            ; 92
2590: and y, z            ; 94
2591: mul y, y            ; 54
2592: mul x, a            ; 52
2593: or y, a             ; AA
2594: and y, z            ; 94
2595: mul x, a            ; 52
2596: sub a, y            ; 4A
2597: sub a, x            ; 49
2598: or y, a             ; AA
2599: and y, z            ; 94
259A: or x, z             ; A4
259B: and x, a            ; 92
259C: add y, w            ; 24
259D: sub a, x            ; 49
259E: cmp a, x            ; 85
259F: and y, z            ; 94
25A0: sub w, a            ; 48
25A1: add y, w            ; 24
25A2: sub a, x            ; 49
25A3: cmpbit x            ; 8A 24
25A5: add y, x            ; 21
25A6: sub a, y            ; 4A
25A7: store $FC00, x      ; 10 00 FC
25AA: nop                 ; FF
25AB: add z, a            ; 2A
25AC: add z, w            ; 29
25AD: cmp a, x            ; 85
25AE: add y, w            ; 24
25AF: or x, w             ; A5
25B0: and y, z            ; 94
25B1: add y, w            ; 24
25B2: pop w               ; 09
25B3: add y, a            ; 25
25B4: add z, w            ; 29
25B5: add y, w            ; 24
25B6: sub a, x            ; 49
25B7: or y, w             ; A9
25B8: mul x, a            ; 52
25B9: add y, a            ; 25
25BA: sub a, x            ; 49
25BB: add z, w            ; 29
25BC: mul y, z            ; 55
25BD: sub a, y            ; 4A
25BE: mul y, z            ; 55
25BF: mul y, z            ; 55
25C0: add y, a            ; 25
25C1: or x, w             ; A5
25C2: mul x, a            ; 52
25C3: sub a, y            ; 4A
25C4: sub a, y            ; 4A
25C5: add y, a            ; 25
25C6: add z, w            ; 29
25C7: pop w               ; 09
25C8: add y, y            ; 22
25C9: and x, w            ; 91
25CA: add y, w            ; 24
25CB: mul x, w            ; 51
25CC: and x, a            ; 92
25CD: and y, z            ; 94
25CE: add x, a            ; 20
25CF: sub w, y            ; 45
25D0: push x              ; 01
25D1: nop                 ; FC
25D2: nop                 ; FF
25D3: cmp w, y            ; 81
25D4: sub w, x            ; 44
25D5: add z, z            ; 28
25D6: sub a, x            ; 49
25D7: pop z               ; 08
25D8: add y, y            ; 22
25D9: sub a, x            ; 49
25DA: mul x, a            ; 52
25DB: sub a, x            ; 49
25DC: sub a, y            ; 4A
25DD: sub a, x            ; 49
25DE: add z, a            ; 2A
25DF: sub a, y            ; 4A
25E0: sub a, y            ; 4A
25E1: and x, a            ; 92
25E2: mul y, y            ; 54
25E3: sub a, y            ; 4A
25E4: sub a, x            ; 49
25E5: or y, w             ; A9
25E6: mul x, a            ; 52
25E7: sub a, y            ; 4A
25E8: mul x, a            ; 52
25E9: mul x, a            ; 52
25EA: add z, a            ; 2A
25EB: or y, w             ; A9
25EC: mul x, a            ; 52
25ED: mul x, a            ; 52
25EE: mul x, a            ; 52
25EF: and a, w            ; A2
25F0: sub w, a            ; 48
25F1: add y, w            ; 24
25F2: sub a, x            ; 49
25F3: cmpbit x            ; 8A 24
25F5: add y, x            ; 21
25F6: sub a, y            ; 4A
25F7: store $FC04, x      ; 10 04 FC
25FA: nop                 ; FF
25FB: add z, a            ; 2A
25FC: add z, w            ; 29
25FD: sub w, y            ; 45
25FE: and x, a            ; 92
25FF: and a, w            ; A2
2600: cmp a, w            ; 88
2601: add y, w            ; 24
2602: pop w               ; 09
2603: and x, a            ; 92
2604: add x, a            ; 20
2605: add y, a            ; 25
2606: and x, w            ; 91
2607: and x, a            ; 92
2608: add y, w            ; 24
2609: mul y, z            ; 55
260A: and x, a            ; 92
260B: mul x, a            ; 52
260C: or y, a             ; AA
260D: add z, a            ; 2A
260E: and y, w            ; 95
260F: mul x, a            ; 52
2610: and y, w            ; 95
2611: sub a, y            ; 4A
2612: sub a, x            ; 49
2613: add y, a            ; 25
2614: cmp a, a            ; 89
2615: and y, z            ; 94
2616: sub w, x            ; 44
2617: pop w               ; 09
2618: add y, y            ; 22
2619: and x, w            ; 91
261A: add y, w            ; 24
261B: add y, x            ; 21
261C: and x, a            ; 92
261D: and y, z            ; 94
261E: add x, a            ; 20
261F: sub w, y            ; 45
2620: store $FFFC, y      ; 11 FC FF
2623: and x, z            ; 90
2624: sub w, x            ; 44
2625: and x, w            ; 91
2626: add y, w            ; 24
2627: add z, z            ; 28
2628: add y, a            ; 25
2629: sub a, x            ; 49
262A: and a, w            ; A2
262B: add y, w            ; 24
262C: and y, w            ; 95
262D: and x, z            ; 90
262E: or x, z             ; A4
262F: add y, w            ; 24
2630: or y, w             ; A9
2631: and x, a            ; 92
2632: sub a, y            ; 4A
2633: or y, a             ; AA
2634: sub a, y            ; 4A
2635: sub a, y            ; 4A
2636: sub a, x            ; 49
2637: add z, w            ; 29
2638: sub a, x            ; 49
2639: mul x, a            ; 52
263A: and x, a            ; 92
263B: sub w, a            ; 48
263C: add z, a            ; 2A
263D: add y, a            ; 25
263E: add z, w            ; 29
263F: or y, a             ; AA
2640: sub w, a            ; 48
2641: add y, w            ; 24
2642: sub a, x            ; 49
2643: and y, z            ; 94
2644: add y, w            ; 24
2645: add y, y            ; 22
2646: pop a               ; 0A
2647: store $FC04, x      ; 10 04 FC
264A: nop                 ; FF
264B: sub a, y            ; 4A
264C: store $9244, z      ; 12 44 92
264F: cmp w, z            ; 82
2650: and x, z            ; 90
2651: add y, w            ; 24
2652: sub a, x            ; 49
2653: and x, a            ; 92
2654: sub w, x            ; 44
2655: sub a, y            ; 4A
2656: sub a, y            ; 4A
2657: mul x, a            ; 52
2658: add y, a            ; 25
2659: sub a, x            ; 49
265A: add y, w            ; 24
265B: sub a, x            ; 49
265C: mul x, a            ; 52
265D: add z, w            ; 29
265E: mul y, z            ; 55
265F: sub a, y            ; 4A
2660: mul y, z            ; 55
2661: sub a, x            ; 49
2662: mul y, z            ; 55
2663: add z, a            ; 2A
2664: mul x, w            ; 51
2665: and x, a            ; 92
2666: sub w, x            ; 44
2667: add y, x            ; 21
2668: push a              ; 05
2669: and x, w            ; 91
266A: add y, w            ; 24
266B: sub a, x            ; 49
266C: and x, a            ; 92
266D: cmp a, w            ; 88
266E: and a, y            ; A0
266F: sub z, w            ; 42
2670: mul x, a            ; 52
2671: nop                 ; FC
2672: nop                 ; FF
2673: and x, a            ; 92
2674: or x, z             ; A4
2675: and x, a            ; 92
2676: add y, w            ; 24
2677: add z, w            ; 29
2678: add y, a            ; 25
2679: pop w               ; 09
267A: and x, a            ; 92
267B: add y, w            ; 24
267C: and x, w            ; 91
267D: and x, a            ; 92
267E: and x, a            ; 92
267F: and y, z            ; 94
2680: and y, z            ; 94
2681: mul y, y            ; 54
2682: or y, w             ; A9
2683: mul x, a            ; 52
2684: add z, w            ; 29
2685: or x, w             ; A5
2686: mul x, a            ; 52
2687: or x, w             ; A5
2688: add y, w            ; 24
2689: and y, w            ; 95
268A: add y, w            ; 24
268B: sub w, y            ; 45
268C: pop a               ; 0A
268D: sub a, x            ; 49
268E: add z, w            ; 29
268F: sub a, y            ; 4A
2690: mul x, z            ; 50
2691: push w              ; 04
2692: sub a, x            ; 49
2693: and x, a            ; 92
2694: add y, w            ; 24
2695: add y, y            ; 22
2696: pop a               ; 0A
2697: and y, z            ; 94
2698: cmp w, x            ; 80
2699: nop                 ; FC
269A: nop                 ; FF
269B: sub w, a            ; 48
269C: and x, a            ; 92
269D: sub w, a            ; 48
269E: and x, a            ; 92
269F: sub w, x            ; 44
26A0: and y, z            ; 94
26A1: or x, z             ; A4
26A2: sub w, a            ; 48
26A3: and x, a            ; 92
26A4: add y, w            ; 24
26A5: add y, w            ; 24
26A6: sub w, a            ; 48
26A7: add y, y            ; 22
26A8: or y, w             ; A9
26A9: and x, a            ; 92
26AA: sub z, w            ; 42
26AB: sub a, y            ; 4A
26AC: sub a, y            ; 4A
26AD: add z, w            ; 29
26AE: sub a, x            ; 49
26AF: add z, a            ; 2A
26B0: sub a, x            ; 49
26B1: mul x, a            ; 52
26B2: and x, a            ; 92
26B3: mul y, y            ; 54
26B4: or y, w             ; A9
26B5: add y, w            ; 24
26B6: and x, a            ; 92
26B7: add y, w            ; 24
26B8: push a              ; 05
26B9: mul x, w            ; 51
26BA: add y, w            ; 24
26BB: sub a, x            ; 49
26BC: and x, a            ; 92
26BD: and y, z            ; 94
26BE: and a, y            ; A0
26BF: nop                 ; 00
26C0: pop a               ; 0A
26C1: nop                 ; FE
26C2: nop                 ; FF
26C3: and x, a            ; 92
26C4: add y, w            ; 24
26C5: and x, a            ; 92
26C6: add y, w            ; 24
26C7: store $0821, y      ; 11 21 08
26CA: and x, a            ; 92
26CB: add y, w            ; 24
26CC: sub a, x            ; 49
26CD: cmp a, a            ; 89
26CE: and x, a            ; 92
26CF: and y, z            ; 94
26D0: sub w, x            ; 44
26D1: sub a, y            ; 4A
26D2: add z, a            ; 2A
26D3: add z, w            ; 29
26D4: mul y, z            ; 55
26D5: sub a, y            ; 4A
26D6: add z, a            ; 2A
26D7: sub a, x            ; 49
26D8: or y, a             ; AA
26D9: and y, z            ; 94
26DA: or y, a             ; AA
26DB: add y, y            ; 22
26DC: add y, y            ; 22
26DD: or y, w             ; A9
26DE: add y, w            ; 24
26DF: sub a, x            ; 49
26E0: or y, w             ; A9
26E1: push w              ; 04
26E2: sub a, x            ; 49
26E3: and x, a            ; 92
26E4: add y, w            ; 24
26E5: add y, x            ; 21
26E6: pop a               ; 0A
26E7: mul y, z            ; 55
26E8: and a, y            ; A0
26E9: nop                 ; FC
26EA: nop                 ; FF
26EB: sub w, a            ; 48
26EC: and x, a            ; 92
26ED: sub w, a            ; 48
26EE: and x, a            ; 92
26EF: sub w, x            ; 44
26F0: and y, z            ; 94
26F1: and a, w            ; A2
26F2: sub w, a            ; 48
26F3: and x, a            ; 92
26F4: add y, w            ; 24
26F5: mul x, a            ; 52
26F6: sub a, y            ; 4A
26F7: mul x, a            ; 52
26F8: and x, a            ; 92
26F9: add y, w            ; 24
26FA: sub a, x            ; 49
26FB: and x, a            ; 92
26FC: or x, z             ; A4
26FD: mul x, a            ; 52
26FE: or x, w             ; A5
26FF: mul x, a            ; 52
2700: sub a, x            ; 49
2701: sub a, x            ; 49
2702: add y, y            ; 22
2703: sub a, y            ; 4A
2704: sub a, x            ; 49
2705: sub z, w            ; 42
2706: and x, a            ; 92
2707: add y, w            ; 24
2708: add y, w            ; 24
2709: mul x, a            ; 52
270A: add y, w            ; 24
270B: sub a, x            ; 49
270C: and x, a            ; 92
270D: and y, z            ; 94
270E: add x, a            ; 20
270F: nop                 ; 00
2710: pop w               ; 09
2711: nop                 ; FC
2712: nop                 ; FF
2713: and x, a            ; 92
2714: sub w, x            ; 44
2715: store $2904, z      ; 12 04 29
2718: add y, x            ; 21
2719: pop z               ; 08
271A: cmp w, z            ; 82
271B: add y, w            ; 24
271C: cmp a, a            ; 89
271D: cmp w, a            ; 84
271E: and x, z            ; 90
271F: push w              ; 04
2720: add z, w            ; 29
2721: or y, w             ; A9
2722: and y, z            ; 94
2723: or x, z             ; A4
2724: store $4929, z      ; 12 29 49
2727: add z, a            ; 2A
2728: add y, a            ; 25
2729: mul x, a            ; 52
272A: sub a, x            ; 49
272B: and x, w            ; 91
272C: and y, z            ; 94
272D: and y, z            ; 94
272E: add y, w            ; 24
272F: sub a, x            ; 49
2730: cmp a, a            ; 89
2731: push w              ; 04
2732: sub a, x            ; 49
2733: and x, a            ; 92
2734: add y, w            ; 24
2735: add y, x            ; 21
2736: cmpbit x            ; 8A 4A
2738: sub z, y            ; 40
2739: nop                 ; FE
273A: nop                 ; FF
273B: sub w, a            ; 48
273C: store $5149, z      ; 12 49 51
273F: cmp w, a            ; 84
2740: and y, z            ; 94
2741: and a, w            ; A2
2742: add z, z            ; 28
2743: and x, a            ; 92
2744: add y, w            ; 24
2745: mul x, a            ; 52
2746: sub a, y            ; 4A
2747: mul x, a            ; 52
2748: or x, w             ; A5
2749: sub w, x            ; 44
274A: mul x, a            ; 52
274B: and x, a            ; 92
274C: mul y, y            ; 54
274D: or x, w             ; A5
274E: and y, z            ; 94
274F: or x, z             ; A4
2750: mul y, y            ; 54
2751: add y, a            ; 25
2752: and y, w            ; 95
2753: mul y, y            ; 54
2754: mul x, a            ; 52
2755: mul x, a            ; 52
2756: and x, a            ; 92
2757: add y, w            ; 24
2758: add y, y            ; 22
2759: mul x, w            ; 51
275A: add y, w            ; 24
275B: sub a, x            ; 49
275C: cmp w, z            ; 82
275D: cmp w, a            ; 84
275E: add x, a            ; 20
275F: add x, a            ; 20
2760: store $FFFC, z      ; 12 FC FF
2763: store $1244, z      ; 12 44 12
2766: push w              ; 04
2767: add z, w            ; 29
2768: add y, x            ; 21
2769: pop z               ; 08
276A: cmp w, z            ; 82
276B: push w              ; 04
276C: cmp a, a            ; 89
276D: store $9491, a      ; 14 91 94
2770: store $2529, x      ; 10 29 25
2773: sub a, x            ; 49
2774: and x, a            ; 92
2775: store $92A5, a      ; 14 A5 92
2778: and x, a            ; 92
2779: and y, z            ; 94
277A: add y, w            ; 24
277B: cmp a, a            ; 89
277C: cmp w, a            ; 84
277D: cmp w, a            ; 84
277E: add y, w            ; 24
277F: cmp a, a            ; 89
2780: sub w, a            ; 48
2781: store $9249, a      ; 14 49 92
2784: add z, z            ; 28
2785: add z, w            ; 29
2786: cmpbit x            ; 8A 8A
2788: push w              ; 04
2789: nop                 ; FD
278A: nop                 ; FF
278B: sub w, a            ; 48
278C: store $5149, y      ; 11 49 51
278F: cmp w, x            ; 80
2790: cmp w, a            ; 84
2791: and a, w            ; A2
2792: add z, z            ; 28
2793: mul x, a            ; 52
2794: add y, w            ; 24
2795: sub z, w            ; 42
2796: sub w, x            ; 44
2797: add y, y            ; 22
2798: sub a, y            ; 4A
2799: and x, a            ; 92
279A: and y, z            ; 94
279B: add y, w            ; 24
279C: add y, a            ; 25
279D: or y, w             ; A9
279E: and y, z            ; 94
279F: mul y, y            ; 54
27A0: sub a, y            ; 4A
27A1: mul x, a            ; 52
27A2: mul x, a            ; 52
27A3: mul x, a            ; 52
27A4: mul x, a            ; 52
27A5: mul x, a            ; 52
27A6: and x, a            ; 92
27A7: add y, w            ; 24
27A8: add y, a            ; 25
27A9: sub z, z            ; 41
27AA: add y, w            ; 24
27AB: pop w               ; 09
27AC: cmp w, z            ; 82
27AD: cmp w, x            ; 80
27AE: add x, a            ; 20
27AF: add x, a            ; 20
27B0: add x, a            ; 20
27B1: nop                 ; FC
27B2: nop                 ; FF
27B3: store $1244, z      ; 12 44 12
27B6: cmp w, a            ; 84
27B7: add z, a            ; 2A
27B8: add z, w            ; 29
27B9: pop z               ; 08
27BA: cmp w, z            ; 82
27BB: push w              ; 04
27BC: cmp a, a            ; 89
27BD: and y, z            ; 94
27BE: and x, a            ; 92
27BF: cmp a, w            ; 88
27C0: mul x, a            ; 52
27C1: sub a, x            ; 49
27C2: add y, y            ; 22
27C3: sub a, x            ; 49
27C4: or y, w             ; A9
27C5: and x, a            ; 92
27C6: mul x, a            ; 52
27C7: cmpbit x            ; 8A 52
27C9: add y, a            ; 25
27CA: cmp a, a            ; 89
27CB: cmpbit x            ; 8A 94
27CD: and y, z            ; 94
27CE: add y, w            ; 24
27CF: sub a, x            ; 49
27D0: sub w, a            ; 48
27D1: store $A241, a      ; 14 41 A2
27D4: add z, z            ; 28
27D5: add z, a            ; 2A
27D6: cmpbit x            ; 8A 0A
27D8: pop w               ; 09
27D9: nop                 ; FD
27DA: nop                 ; FF
27DB: sub w, a            ; 48
27DC: store $5141, y      ; 11 41 51
27DF: cmp w, x            ; 80
27E0: cmp w, x            ; 80
27E1: and a, w            ; A2
27E2: add z, z            ; 28
27E3: mul x, a            ; 52
27E4: add y, w            ; 24
27E5: sub z, w            ; 42
27E6: sub w, a            ; 48
27E7: mul x, a            ; 52
27E8: cmp w, a            ; 84
27E9: add y, w            ; 24
27EA: sub a, x            ; 49
27EB: add y, a            ; 25
27EC: sub a, y            ; 4A
27ED: sub a, y            ; 4A
27EE: sub a, y            ; 4A
27EF: or y, w             ; A9
27F0: add y, w            ; 24
27F1: sub a, x            ; 49
27F2: mul x, a            ; 52
27F3: add y, w            ; 24
27F4: sub z, z            ; 41
27F5: sub z, w            ; 42
27F6: and x, a            ; 92
27F7: add y, w            ; 24
27F8: add y, a            ; 25
27F9: and a, z            ; A1
27FA: store $8209, a      ; 14 09 82
27FD: cmp w, x            ; 80
27FE: add x, a            ; 20
27FF: add x, a            ; 20
2800: sub w, x            ; 44
2801: nop                 ; FC
2802: nop                 ; FF
2803: store $1444, z      ; 12 44 14
2806: push w              ; 04
2807: add z, a            ; 2A
2808: add z, a            ; 2A
2809: pop z               ; 08
280A: cmp w, z            ; 82
280B: push w              ; 04
280C: cmp a, a            ; 89
280D: and y, z            ; 94
280E: and x, a            ; 92
280F: add y, w            ; 24
2810: add z, w            ; 29
2811: and x, a            ; 92
2812: and y, z            ; 94
2813: and x, z            ; 90
2814: add y, y            ; 22
2815: or y, w             ; A9
2816: add y, w            ; 24
2817: add y, a            ; 25
2818: sub a, x            ; 49
2819: and x, a            ; 92
281A: add y, w            ; 24
281B: or y, w             ; A9
281C: and y, z            ; 94
281D: and y, z            ; 94
281E: add y, w            ; 24
281F: cmp a, a            ; 89
2820: sub w, a            ; 48
2821: pop a               ; 0A
2822: sub z, z            ; 41
2823: and a, w            ; A2
2824: add z, z            ; 28
2825: add z, a            ; 2A
2826: cmpbit x            ; 8A 44
2828: push x              ; 01
2829: nop                 ; FC
282A: nop                 ; FF
282B: sub w, a            ; 48
282C: store $5141, y      ; 11 41 51
282F: cmp w, y            ; 81
2830: cmp w, x            ; 80
2831: and a, w            ; A2
2832: add z, z            ; 28
2833: mul x, z            ; 50
2834: add y, w            ; 24
2835: sub z, w            ; 42
2836: sub w, a            ; 48
2837: and x, a            ; 92
2838: or x, z             ; A4
2839: add y, w            ; 24
283A: mul x, w            ; 51
283B: sub a, y            ; 4A
283C: and y, z            ; 94
283D: add y, w            ; 24
283E: or y, w             ; A9
283F: and y, z            ; 94
2840: add z, a            ; 2A
2841: sub a, x            ; 49
2842: and x, a            ; 92
2843: cmp w, a            ; 84
2844: mul x, a            ; 52
2845: add y, y            ; 22
2846: and x, a            ; 92
2847: add y, w            ; 24
2848: add y, y            ; 22
2849: and a, z            ; A1
284A: store $8209, a      ; 14 09 82
284D: cmp w, x            ; 80
284E: add x, a            ; 20
284F: store $FD28, z      ; 12 28 FD
2852: nop                 ; FF
2853: store $1444, z      ; 12 44 14
2856: push w              ; 04
2857: add z, z            ; 28
2858: add z, a            ; 2A
2859: pop z               ; 08
285A: sub z, w            ; 42
285B: push a              ; 05
285C: cmp a, a            ; 89
285D: and x, z            ; 90
285E: and x, a            ; 92
285F: add y, w            ; 24
2860: pop w               ; 09
2861: sub a, x            ; 49
2862: cmpbit x            ; 8A 24
2864: or x, w             ; A5
2865: and x, a            ; 92
2866: sub a, y            ; 4A
2867: and a, w            ; A2
2868: sub w, x            ; 44
2869: add z, a            ; 2A
286A: sub a, x            ; 49
286B: mul x, a            ; 52
286C: cmp w, a            ; 84
286D: cmp a, w            ; 88
286E: add y, w            ; 24
286F: cmp a, a            ; 89
2870: pop z               ; 08
2871: pop a               ; 0A
2872: sub z, z            ; 41
2873: and a, w            ; A2
2874: add z, z            ; 28
2875: add z, a            ; 2A
2876: cmp a, a            ; 89
2877: sub z, y            ; 40
2878: push y              ; 02
2879: nop                 ; FC
287A: nop                 ; FF
287B: sub w, a            ; 48
287C: store $5141, y      ; 11 41 51
287F: cmp a, x            ; 85
2880: cmp w, x            ; 80
2881: and a, w            ; A2
2882: pop z               ; 08
2883: mul x, z            ; 50
2884: add x, a            ; 20
2885: pop a               ; 0A
2886: sub w, a            ; 48
2887: and x, a            ; 92
2888: or x, z             ; A4
2889: add y, w            ; 24
288A: mul x, w            ; 51
288B: and x, a            ; 92
288C: store $9249, x      ; 10 49 92
288F: add z, a            ; 2A
2890: add z, w            ; 29
2891: and x, w            ; 91
2892: add y, w            ; 24
2893: pop w               ; 09
2894: add z, w            ; 29
2895: mul x, a            ; 52
2896: and x, a            ; 92
2897: add y, w            ; 24
2898: or x, w             ; A5
2899: add x, a            ; 20
289A: store $8209, a      ; 14 09 82
289D: nop                 ; 00
289E: sub w, x            ; 44
289F: push w              ; 04
28A0: and x, w            ; 91
28A1: nop                 ; FC
28A2: nop                 ; FF
