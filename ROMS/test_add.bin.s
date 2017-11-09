0000: set x, $02          ; 17 02
0002: cmp a, x            ; 85
0003: jmp.eq $00B6        ; F1 B6 00
0006: set x, $03          ; 17 03
0008: cmp a, y            ; 86
0009: jmp $00B8           ; E9 B8 00
000C: jmp $0086           ; E9 86 00
000F: jmp.z $001A         ; F5 1A 00
0012: dec a               ; 70
0013: jmp.z $001A         ; F5 1A 00
0016: nop                 ; 00
0017: jmp $000F           ; E9 0F 00
001A: return              ; 16
001B: store $4010, a      ; 14 10 40
001E: set a, $00          ; 1B 00
0020: store $4012, a      ; 14 12 40
0023: set a, $80          ; 1B 80
0025: store $4013, a      ; 14 13 40
0028: set a, $00          ; 1B 00
002A: store $4014, a      ; 14 14 40
002D: set a, $10          ; 1B 10
002F: store $4015, a      ; 14 15 40
0032: int $01             ; F6 01
0034: set a, $20          ; 1B 20
0036: call $000F          ; 15 0F 00
0039: return              ; 16
003A: store $4010, a      ; 14 10 40
003D: set a, $F4          ; 1B F4
003F: store $4012, a      ; 14 12 40
0042: set a, $81          ; 1B 81
0044: store $4013, a      ; 14 13 40
0047: set a, $00          ; 1B 00
0049: store $4014, a      ; 14 14 40
004C: set a, $10          ; 1B 10
004E: store $4015, a      ; 14 15 40
0051: int $01             ; F6 01
0053: return              ; 16
0054: set a, $00          ; 1B 00
0056: store $4012, a      ; 14 12 40
0059: set a, $80          ; 1B 80
005B: store $4013, a      ; 14 13 40
005E: store $4014, x      ; 10 14 40
0061: store $4015, y      ; 11 15 40
0064: store $4016, z      ; 12 16 40
0067: store $4017, w      ; 13 17 40
006A: int $03             ; F6 03
006C: return              ; 16
006D: set a, $F4          ; 1B F4
006F: store $4012, a      ; 14 12 40
0072: set a, $81          ; 1B 81
0074: store $4013, a      ; 14 13 40
0077: store $4014, x      ; 10 14 40
007A: store $4015, y      ; 11 15 40
007D: store $4016, z      ; 12 16 40
0080: store $4017, w      ; 13 17 40
0083: int $03             ; F6 03
0085: return              ; 16
0086: set a, $0B          ; 1B 0B
0088: store $5000, a      ; 14 00 50
008B: set x, $BA          ; 17 BA
008D: set y, $00          ; 18 00
008F: set z, $00          ; 19 00
0091: set w, $28          ; 1A 28
0093: call $0054          ; 15 54 00
0096: set x, $00          ; 17 00
0098: inc x               ; 67
0099: jmp $0098           ; E9 98 00
009C: set a, $0B          ; 1B 0B
009E: store $5000, a      ; 14 00 50
00A1: set x, $00          ; 17 00
00A3: set y, $22          ; 18 22
00A5: set z, $55          ; 19 55
00A7: store $5001, x      ; 10 01 50
00AA: store $5002, y      ; 11 02 50
00AD: store $5003, z      ; 12 03 50
00B0: inc x               ; 67
00B1: dec y               ; 6D
00B2: inc z               ; 69
00B3: jmp $00A7           ; E9 A7 00
00B6: inc z               ; 69
00B7: resume              ; F7 6A
00B9: resume              ; F7 00
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
00C9: nop                 ; 00
00CA: nop                 ; 00
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
00F1: nop                 ; 00
00F2: nop                 ; 00
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
00FE: nop                 ; 00
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
0115: push y              ; 02
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
054A: store $0000, x      ; 10 00 00
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
05C2: push x              ; 01
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
05E5: nop                 ; 00
05E6: nop                 ; 00
05E7: nop                 ; 00
05E8: nop                 ; 00
05E9: add x, a            ; 20
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
060D: jmp.lt $02B7        ; F4 B7 02
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
0630: nop                 ; 00
0631: nop                 ; 00
0632: nop                 ; 00
0633: nop                 ; 00
0634: cmp w, x            ; 80
0635: not w               ; BA
0636: shr w               ; DD
0637: nop                 ; FA
0638: mul z, w            ; 5B
0639: sub z, z            ; 41
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
0658: nop                 ; 00
0659: nop                 ; 00
065A: nop                 ; 00
065B: nop                 ; 00
065C: rol y               ; E0
065D: nop                 ; FF
065E: store $F7ED, z      ; 12 ED F7
0661: xor x, z            ; BE
0662: add z, a            ; 2A
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
0680: nop                 ; 00
0681: nop                 ; 00
0682: nop                 ; 00
0683: nop                 ; 00
0684: nop                 ; 00
0685: mul w, z            ; 5F
0686: nop                 ; 00
0687: jmp $AB5A, a        ; F0 5A AB
068A: mul y, z            ; 55
068B: and y, w            ; 95
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
06A8: nop                 ; 00
06A9: nop                 ; 00
06AA: nop                 ; 00
06AB: nop                 ; 00
06AC: nop                 ; 00
06AD: jmp $2FFF, a        ; F0 FF 2F
06B0: nop                 ; 00
06B1: nop                 ; 00
06B2: nop                 ; 00
06B3: mul x, a            ; 52
06B4: or z, w             ; AD
06B5: pop a               ; 0A
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
06D0: nop                 ; 00
06D1: nop                 ; 00
06D2: sub z, y            ; 40
06D3: nop                 ; 00
06D4: nop                 ; 00
06D5: sub z, y            ; 40
06D6: add w, a            ; 2F
06D7: nop                 ; 00
06D8: nop                 ; 00
06D9: nop                 ; 00
06DA: nop                 ; 00
06DB: nop                 ; 00
06DC: and a, y            ; A0
06DD: jmp x, y            ; EA
06DE: mul y, z            ; 55
06DF: push x              ; 01
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
06F8: nop                 ; 00
06F9: nop                 ; 00
06FA: store $0805, x      ; 10 05 08
06FD: nop                 ; 00
06FE: ror a               ; E8
06FF: push a              ; 05
0700: cmp w, z            ; 82
0701: add y, w            ; 24
0702: sub w, a            ; 48
0703: nop                 ; 00
0704: nop                 ; 00
0705: nop                 ; 00
0706: and a, y            ; A0
0707: cmp z, w            ; 7E
0708: push a              ; 05
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
0720: nop                 ; 00
0721: nop                 ; 00
0722: sub z, w            ; 42
0723: nop                 ; 00
0724: nop                 ; 00
0725: nop                 ; 00
0726: mul x, z            ; 50
0727: xor x, w            ; BF
0728: store $B580, x      ; 10 80 B5
072B: mul y, a            ; 57
072C: push a              ; 05
072D: nop                 ; 00
072E: nop                 ; 00
072F: cmp w, y            ; 81
0730: or y, z             ; A8
0731: pop a               ; 0A
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
0748: nop                 ; 00
0749: nop                 ; 00
074A: xor a, x            ; D0
074B: push y              ; 02
074C: nop                 ; 00
074D: nop                 ; 00
074E: nop                 ; 00
074F: jmp x, y            ; EA
0750: cmp a, z            ; 87
0751: cmp y, a            ; 7A
0752: dec w               ; 6F
0753: nop                 ; FD
0754: nop                 ; FF
0755: add z, a            ; 2A
0756: sub z, y            ; 40
0757: mul w, z            ; 5F
0758: or y, a             ; AA
0759: nop                 ; 00
075A: add x, a            ; 20
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
0770: nop                 ; 00
0771: nop                 ; 00
0772: ror x               ; E4
0773: push y              ; 02
0774: store $0004, x      ; 10 04 00
0777: jmp $AFFE           ; E9 FE AF
077A: xor x, y            ; BD
077B: set x, $A9          ; 17 A9
077D: or z, x             ; AB
077E: or w, x             ; AF
077F: and a, y            ; A0
0780: add y, a            ; 25
0781: or y, w             ; A9
0782: sub a, y            ; 4A
0783: mul y, z            ; 55
0784: mul y, z            ; 55
0785: push x              ; 01
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
0798: nop                 ; 00
0799: nop                 ; 00
079A: xor z, z            ; C8
079B: push a              ; 05
079C: sub z, y            ; 40
079D: cmp w, x            ; 80
079E: push w              ; 04
079F: cmp w, x            ; 80
07A0: mul y, z            ; 55
07A1: jmp.z $E96B         ; F5 6B E9
07A4: mul y, w            ; 56
07A5: sub a, y            ; 4A
07A6: mul z, y            ; 59
07A7: mul w, x            ; 5D
07A8: mul y, z            ; 55
07A9: push y              ; 02
07AA: mul x, w            ; 51
07AB: push y              ; 02
07AC: add x, a            ; 20
07AD: push y              ; 02
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
07C0: nop                 ; 00
07C1: nop                 ; 00
07C2: add x, a            ; 20
07C3: nop                 ; 00
07C4: nop                 ; 00
07C5: add x, a            ; 20
07C6: add x, a            ; 20
07C7: add y, w            ; 24
07C8: sub a, y            ; 4A
07C9: mul w, z            ; 5F
07CA: or z, w             ; AD
07CB: or z, w             ; AD
07CC: sub a, y            ; 4A
07CD: inc z               ; 69
07CE: jmp $0557, w        ; EF 57 05
07D1: or y, w             ; A9
07D2: sub a, w            ; 4C
07D3: or y, w             ; A9
07D4: pop a               ; 0A
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
07E8: nop                 ; 00
07E9: nop                 ; 00
07EA: sub z, y            ; 40
07EB: add y, x            ; 21
07EC: nop                 ; 00
07ED: pop z               ; 08
07EE: cmp w, x            ; 80
07EF: sub w, a            ; 48
07F0: store $7BF5, x      ; 10 F5 7B
07F3: not a               ; BB
07F4: mul y, x            ; 53
07F5: nop                 ; FF
07F6: sub a, y            ; 4A
07F7: or x, w             ; A5
07F8: xor a, a            ; D4
07F9: sub x, y            ; 36
07FA: add y, x            ; 21
07FB: mul y, z            ; 55
07FC: add y, a            ; 25
07FD: or y, z             ; A8
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
0810: nop                 ; 00
0811: nop                 ; 00
0812: add x, a            ; 20
0813: nop                 ; 00
0814: add x, a            ; 20
0815: jmp x, y            ; EA
0816: pop a               ; 0A
0817: push y              ; 02
0818: sub z, z            ; 41
0819: mul z, z            ; 5A
081A: rol x               ; DF
081B: dec y               ; 6D
081C: nop                 ; FD
081D: add w, z            ; 2D
081E: or x, z             ; A4
081F: mul y, z            ; 55
0820: not a               ; BB
0821: cmpbit x            ; 8A 94
0823: add y, w            ; 24
0824: and x, a            ; 92
0825: cmp w, z            ; 82
0826: pop a               ; 0A
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
0838: nop                 ; 00
0839: nop                 ; 00
083A: cmp w, x            ; 80
083B: nop                 ; 00
083C: nop                 ; 00
083D: mul z, x            ; 58
083E: mul y, z            ; 55
083F: mul x, z            ; 50
0840: cmp a, w            ; 88
0841: xor a, x            ; D0
0842: or a, z             ; B5
0843: shl y               ; D6
0844: load x, $BB50       ; 0B 50 BB
0847: or a, w             ; B6
0848: or y, a             ; AA
0849: sub x, x            ; 35
084A: add y, y            ; 22
084B: or y, w             ; A9
084C: add y, w            ; 24
084D: add z, z            ; 28
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
0860: nop                 ; 00
0861: nop                 ; 00
0862: nop                 ; 00
0863: nop                 ; 00
0864: cmp w, x            ; 80
0865: xor a, a            ; D4
0866: push y              ; 02
0867: push a              ; 05
0868: push y              ; 02
0869: push y              ; 02
086A: or y, a             ; AA
086B: sub y, y            ; 3B
086C: nop                 ; 00
086D: push x              ; 01
086E: and a, y            ; A0
086F: shr x               ; DA
0870: mul y, w            ; 56
0871: mul y, z            ; 55
0872: cmp a, w            ; 88
0873: nop                 ; 00
0874: and x, z            ; 90
0875: nop                 ; 00
0876: cmp w, a            ; 84
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
0888: nop                 ; 00
0889: nop                 ; 00
088A: nop                 ; 00
088B: nop                 ; 00
088C: push w              ; 04
088D: inc y               ; 68
088E: mul w, z            ; 5F
088F: nop                 ; 00
0890: and a, y            ; A0
0891: or y, z             ; A8
0892: sub a, y            ; 4A
0893: sub a, y            ; 4A
0894: inc z               ; 69
0895: or z, w             ; AD
0896: mul w, w            ; 60
0897: cmp a, x            ; 85
0898: or z, w             ; AD
0899: cmpbit x            ; 8A 22
089B: nop                 ; 00
089C: nop                 ; 00
089D: nop                 ; 00
089E: store $0000, y      ; 11 00 00
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
08B0: nop                 ; 00
08B1: nop                 ; 00
08B2: nop                 ; 00
08B3: nop                 ; 00
08B4: add y, x            ; 21
08B5: shr a               ; DE
08B6: cmp x, a            ; 75
08B7: or y, w             ; A9
08B8: pop a               ; 0A
08B9: push y              ; 02
08BA: add x, a            ; 20
08BB: add y, x            ; 21
08BC: or y, a             ; AA
08BD: mul x, a            ; 52
08BE: or z, x             ; AB
08BF: and y, z            ; 94
08C0: and z, x            ; 97
08C1: add x, a            ; 20
08C2: and x, z            ; 90
08C3: nop                 ; 00
08C4: nop                 ; 00
08C5: and x, a            ; 92
08C6: push w              ; 04
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
08D8: nop                 ; 00
08D9: nop                 ; 00
08DA: nop                 ; 00
08DB: add x, a            ; 20
08DC: sub z, y            ; 40
08DD: or w, y             ; B0
08DE: shr a               ; DE
08DF: push w              ; 04
08E0: and a, y            ; A0
08E1: or y, a             ; AA
08E2: pop a               ; 0A
08E3: sub a, y            ; 4A
08E4: mul y, z            ; 55
08E5: or z, w             ; AD
08E6: or x, a             ; A6
08E7: add z, a            ; 2A
08E8: mul y, y            ; 54
08E9: sub a, y            ; 4A
08EA: add y, a            ; 25
08EB: push a              ; 05
08EC: cmp w, x            ; 80
08ED: or x, z             ; A4
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
0900: nop                 ; 00
0901: nop                 ; 00
0902: nop                 ; 00
0903: nop                 ; 00
0904: push w              ; 04
0905: shr w               ; DD
0906: inc a               ; 6B
0907: shl x               ; D5
0908: mul y, a            ; 57
0909: mul y, z            ; 55
090A: and a, w            ; A2
090B: nop                 ; 00
090C: or z, w             ; AD
090D: inc w               ; 6A
090E: add z, w            ; 29
090F: and y, w            ; 95
0910: sub a, y            ; 4A
0911: add z, w            ; 29
0912: and x, a            ; 92
0913: or y, z             ; A8
0914: add z, a            ; 2A
0915: store $0000, z      ; 12 00 00
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
0928: nop                 ; 00
0929: nop                 ; 00
092A: nop                 ; 00
092B: cmp w, x            ; 80
092C: add x, a            ; 20
092D: or a, y             ; B4
092E: shr a               ; DE
092F: add z, a            ; 2A
0930: nop                 ; FF
0931: xor x, w            ; BF
0932: pop a               ; 0A
0933: mul y, z            ; 55
0934: or y, a             ; AA
0935: or a, w             ; B6
0936: cmp w, z            ; 82
0937: or y, a             ; AA
0938: and x, a            ; 92
0939: cmp w, a            ; 84
093A: add y, w            ; 24
093B: push y              ; 02
093C: cmp w, x            ; 80
093D: push w              ; 04
093E: sub z, y            ; 40
093F: push y              ; 02
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
094F: nop                 ; 00
0950: nop                 ; 00
0951: nop                 ; 00
0952: nop                 ; 00
0953: nop                 ; 00
0954: store $7BD5, x      ; 10 D5 7B
0957: xor a, z            ; D2
0958: nop                 ; FF
0959: nop                 ; FF
095A: mul y, z            ; 55
095B: add x, a            ; 20
095C: or y, w             ; A9
095D: sub a, a            ; 4D
095E: inc z               ; 69
095F: nop                 ; FD
0960: sub a, a            ; 4D
0961: mul x, a            ; 52
0962: and x, a            ; 92
0963: mul y, y            ; 54
0964: mul z, w            ; 5B
0965: sub z, w            ; 42
0966: call $0029          ; 15 29 00
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
0978: nop                 ; 00
0979: nop                 ; 00
097A: nop                 ; 00
097B: nop                 ; 00
097C: sub z, w            ; 42
097D: not y               ; B8
097E: or z, a             ; AE
097F: or z, w             ; AD
0980: nop                 ; FF
0981: nop                 ; FF
0982: jmp $524A, w        ; EF 4A 52
0985: mul y, x            ; 53
0986: or y, a             ; AA
0987: mul y, w            ; 56
0988: not a               ; BB
0989: and y, z            ; 94
098A: sub w, x            ; 44
098B: cmp w, z            ; 82
098C: or x, z             ; A4
098D: store $84A8, a      ; 14 A8 84
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
09A0: nop                 ; 00
09A1: nop                 ; 00
09A2: nop                 ; 00
09A3: sub w, a            ; 48
09A4: pop z               ; 08
09A5: jmp $F55B, y        ; ED 5B F5
09A8: nop                 ; FF
09A9: nop                 ; FF
09AA: nop                 ; FF
09AB: or x, y             ; A3
09AC: mul y, z            ; 55
09AD: sub a, a            ; 4D
09AE: mul w, x            ; 5D
09AF: nop                 ; FB
09B0: mul y, w            ; 56
09B1: add y, x            ; 21
09B2: add z, w            ; 29
09B3: or y, w             ; A9
09B4: sub a, y            ; 4A
09B5: mul y, z            ; 55
09B6: add w, x            ; 2B
09B7: xor a, z            ; D2
09B8: push y              ; 02
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
09C8: nop                 ; 00
09C9: nop                 ; 00
09CA: nop                 ; 00
09CB: nop                 ; 00
09CC: mul x, w            ; 51
09CD: cmp x, y            ; 72
09CE: resume              ; F7 DE
09D0: nop                 ; FF
09D1: nop                 ; FF
09D2: nop                 ; FF
09D3: and z, x            ; 97
09D4: and z, x            ; 97
09D5: mul x, z            ; 50
09D6: inc a               ; 6B
09D7: or z, w             ; AD
09D8: or z, w             ; AD
09D9: and y, z            ; 94
09DA: sub a, y            ; 4A
09DB: add y, y            ; 22
09DC: add z, w            ; 29
09DD: sub a, x            ; 49
09DE: and x, a            ; 92
09DF: add y, a            ; 25
09E0: load z, $0000       ; 0D 00 00
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
09F0: nop                 ; 00
09F1: nop                 ; 00
09F2: sub z, y            ; 40
09F3: store $AAA4, z      ; 12 A4 AA
09F6: mul w, x            ; 5D
09F7: nop                 ; FB
09F8: nop                 ; FF
09F9: nop                 ; FF
09FA: nop                 ; FF
09FB: and a, z            ; A1
09FC: mul w, z            ; 5F
09FD: jmp x, y            ; EA
09FE: or y, a             ; AA
09FF: or a, w             ; B6
0A00: store $AEEA, z      ; 12 EA AE
0A03: and y, z            ; 94
0A04: inc w               ; 6A
0A05: or x, w             ; A5
0A06: nop                 ; FA
0A07: cmpbit x            ; 8A 54
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
0A18: nop                 ; 00
0A19: nop                 ; 00
0A1A: pop z               ; 08
0A1B: and a, y            ; A0
0A1C: and x, a            ; 92
0A1D: jmp x, y            ; EA
0A1E: resume              ; F7 FF
0A20: nop                 ; FF
0A21: nop                 ; FF
0A22: nop                 ; FF
0A23: sub a, y            ; 4A
0A24: cmp z, y            ; 7C
0A25: cmp a, x            ; 85
0A26: or z, w             ; AD
0A27: shl x               ; D5
0A28: or x, z             ; A4
0A29: mul y, z            ; 55
0A2A: shr y               ; DB
0A2B: or x, w             ; A5
0A2C: shr a               ; DE
0A2D: shr y               ; DB
0A2E: or z, a             ; AE
0A2F: sub x, z            ; 37
0A30: add z, w            ; 29
0A31: push x              ; 01
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
0A40: nop                 ; 00
0A41: nop                 ; 00
0A42: add x, a            ; 20
0A43: call $BD6C          ; 15 6C BD
0A46: nop                 ; FE
0A47: nop                 ; FF
0A48: nop                 ; FF
0A49: nop                 ; FF
0A4A: add w, a            ; 2F
0A4B: add x, a            ; 20
0A4C: jmp.z $EB51         ; F5 51 EB
0A4F: dec w               ; 6F
0A50: inc a               ; 6B
0A51: shr y               ; DB
0A52: or y, a             ; AA
0A53: xor x, w            ; BF
0A54: cmp z, x            ; 7B
0A55: dec y               ; 6D
0A56: cmp z, x            ; 7B
0A57: sub a, x            ; 49
0A58: mul y, y            ; 54
0A59: push a              ; 05
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
0A68: nop                 ; 00
0A69: nop                 ; 00
0A6A: sub w, x            ; 44
0A6B: and a, y            ; A0
0A6C: mul x, a            ; 52
0A6D: jmp z, w            ; EB
0A6E: shr w               ; DD
0A6F: nop                 ; FF
0A70: nop                 ; FF
0A71: nop                 ; FF
0A72: mul y, a            ; 57
0A73: sub w, y            ; 45
0A74: xor a, a            ; D4
0A75: cmp a, z            ; 87
0A76: int $BA             ; F6 BA
0A78: shr x               ; DA
0A79: or a, w             ; B6
0A7A: or z, w             ; AD
0A7B: inc w               ; 6A
0A7C: sub z, y            ; 40
0A7D: nop                 ; FD
0A7E: or z, a             ; AE
0A7F: store $14A5, a      ; 14 A5 14
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
0A8F: nop                 ; 00
0A90: nop                 ; 00
0A91: nop                 ; 00
0A92: store $ED55, y      ; 11 55 ED
0A95: nop                 ; FD
0A96: nop                 ; FF
0A97: nop                 ; FF
0A98: nop                 ; FF
0A99: nop                 ; FF
0A9A: pop w               ; 09
0A9B: store $11A1, y      ; 11 A1 11
0A9E: shr y               ; DB
0A9F: shl z               ; D7
0AA0: mul y, w            ; 56
0AA1: sub a, z            ; 4B
0AA2: jmp.z $00BF         ; F5 BF 00
0AA5: xor a, a            ; D4
0AA6: cmp z, x            ; 7B
0AA7: mul y, z            ; 55
0AA8: or y, z             ; A8
0AA9: store $0000, z      ; 12 00 00
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
0AB8: nop                 ; 00
0AB9: nop                 ; 00
0ABA: sub w, x            ; 44
0ABB: or y, a             ; AA
0ABC: mul z, z            ; 5A
0ABD: nop                 ; FF
0ABE: nop                 ; FF
0ABF: nop                 ; FF
0AC0: nop                 ; FF
0AC1: nop                 ; FF
0AC2: mul y, w            ; 56
0AC3: sub w, x            ; 44
0AC4: pop z               ; 08
0AC5: sub w, x            ; 44
0AC6: cmp z, y            ; 7C
0AC7: or z, w             ; AD
0AC8: nop                 ; FD
0AC9: cmp y, y            ; 77
0ACA: jmp $016B, w        ; EF 6B 01
0ACD: cmp w, x            ; 80
0ACE: shl y               ; D6
0ACF: and x, a            ; 92
0AD0: mul x, a            ; 52
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
0ADF: nop                 ; 00
0AE0: nop                 ; 00
0AE1: nop                 ; 00
0AE2: mul x, w            ; 51
0AE3: mul y, z            ; 55
0AE4: jmp z, w            ; EB
0AE5: nop                 ; FF
0AE6: nop                 ; FF
0AE7: nop                 ; FF
0AE8: nop                 ; FF
0AE9: cmp z, a            ; 7F
0AEA: or y, w             ; A9
0AEB: store $12A5, z      ; 12 A5 12
0AEE: mul x, a            ; 52
0AEF: cmp x, a            ; 75
0AF0: not x               ; B7
0AF1: jmp $FFBD, z        ; EE BD FF
0AF4: push x              ; 01
0AF5: nop                 ; 00
0AF6: sub y, x            ; 3A
0AF7: add y, a            ; 25
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
0B05: nop                 ; 00
0B06: nop                 ; 00
0B07: nop                 ; 00
0B08: nop                 ; 00
0B09: nop                 ; 00
0B0A: mul y, z            ; 55
0B0B: shl x               ; D5
0B0C: nop                 ; FE
0B0D: nop                 ; FF
0B0E: nop                 ; FF
0B0F: nop                 ; FF
0B10: nop                 ; FF
0B11: mul w, z            ; 5F
0B12: cmp x, a            ; 75
0B13: sub z, z            ; 41
0B14: nop                 ; 00
0B15: nop                 ; 00
0B16: or y, z             ; A8
0B17: shr w               ; DD
0B18: jmp $F75B, z        ; EE 5B F7
0B1B: cmp z, z            ; 7D
0B1C: push z              ; 03
0B1D: nop                 ; 00
0B1E: or x, z             ; A4
0B1F: mul y, y            ; 54
0B20: push a              ; 05
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
0B2F: nop                 ; 00
0B30: nop                 ; 00
0B31: nop                 ; 00
0B32: or y, a             ; AA
0B33: cmp y, a            ; 7A
0B34: nop                 ; FF
0B35: nop                 ; FF
0B36: nop                 ; FF
0B37: nop                 ; FF
0B38: nop                 ; FF
0B39: xor x, w            ; BF
0B3A: jmp.neq $4515       ; F2 15 45
0B3D: cmp a, w            ; 88
0B3E: jmp $BBF6, a        ; F0 F6 BB
0B41: jmp $D75D, y        ; ED 5D D7
0B44: push y              ; 02
0B45: nop                 ; 00
0B46: sub w, a            ; 48
0B47: mul y, z            ; 55
0B48: mul x, z            ; 50
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
0B57: nop                 ; 00
0B58: nop                 ; 00
0B59: nop                 ; 00
0B5A: or y, a             ; AA
0B5B: shl y               ; D6
0B5C: resume              ; F7 FF
0B5E: nop                 ; FF
0B5F: nop                 ; FF
0B60: nop                 ; FF
0B61: mul y, a            ; 57
0B62: jmp.z $0051         ; F5 51 00
0B65: nop                 ; 00
0B66: cmp w, x            ; 80
0B67: rol x               ; DF
0B68: cmp z, w            ; 7E
0B69: cmp y, y            ; 77
0B6A: resume              ; F7 BA
0B6C: pop y               ; 07
0B6D: nop                 ; 00
0B6E: mul x, z            ; 50
0B6F: and x, a            ; 92
0B70: or x, w             ; A5
0B71: or z, w             ; AD
0B72: store $0000, z      ; 12 00 00
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
0B80: nop                 ; 00
0B81: nop                 ; 00
0B82: xor x, y            ; BD
0B83: nop                 ; FB
0B84: nop                 ; FF
0B85: nop                 ; FF
0B86: nop                 ; FF
0B87: nop                 ; FF
0B88: nop                 ; FF
0B89: or z, w             ; AD
0B8A: jmp.lt $4905        ; F4 05 49
0B8D: add x, a            ; 20
0B8E: mul w, a            ; 61
0B8F: cmp z, x            ; 7B
0B90: shl z               ; D7
0B91: shr x               ; DA
0B92: or z, w             ; AD
0B93: jmp $000A, y        ; ED 0A 00
0B96: or y, z             ; A8
0B97: mul y, z            ; 55
0B98: add y, y            ; 22
0B99: mul x, a            ; 52
0B9A: sub a, y            ; 4A
0B9B: call $0000          ; 15 00 00
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
0BAA: jmp z, w            ; EB
0BAB: jmp $FFFE, z        ; EE FE FF
0BAE: nop                 ; FF
0BAF: nop                 ; FF
0BB0: cmp z, a            ; 7F
0BB1: mul y, z            ; 55
0BB2: jmp.z $8029         ; F5 29 80
0BB5: push y              ; 02
0BB6: push w              ; 04
0BB7: shr a               ; DE
0BB8: or a, z             ; B5
0BB9: cmp z, a            ; 7F
0BBA: mul z, w            ; 5B
0BBB: not x               ; B7
0BBC: pop y               ; 07
0BBD: nop                 ; 00
0BBE: mul w, w            ; 60
0BBF: or z, x             ; AB
0BC0: xor z, a            ; CA
0BC1: or y, a             ; AA
0BC2: mul x, a            ; 52
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
0BD0: nop                 ; 00
0BD1: nop                 ; 00
0BD2: xor x, y            ; BD
0BD3: nop                 ; FF
0BD4: nop                 ; FF
0BD5: nop                 ; FF
0BD6: nop                 ; FF
0BD7: nop                 ; FF
0BD8: xor x, w            ; BF
0BD9: add z, a            ; 2A
0BDA: nop                 ; F9
0BDB: store $9004, z      ; 12 04 90
0BDE: nop                 ; 00
0BDF: cmp x, a            ; 75
0BE0: jmp $6DEA, w        ; EF EA 6D
0BE3: sub a, x            ; 49
0BE4: pop z               ; 08
0BE5: nop                 ; 00
0BE6: or w, y             ; B0
0BE7: or z, w             ; AD
0BE8: push w              ; 04
0BE9: or x, w             ; A5
0BEA: push w              ; 04
0BEB: push a              ; 05
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
0BF8: nop                 ; 00
0BF9: nop                 ; 00
0BFA: jmp z, w            ; EB
0BFB: nop                 ; FF
0BFC: nop                 ; FF
0BFD: nop                 ; FF
0BFE: nop                 ; FF
0BFF: nop                 ; FF
0C00: or w, x             ; AF
0C01: sub a, y            ; 4A
0C02: jmp.neq $20A5       ; F2 A5 20
0C05: push a              ; 05
0C06: add y, y            ; 22
0C07: xor a, a            ; D4
0C08: or y, a             ; AA
0C09: xor x, w            ; BF
0C0A: or a, w             ; B6
0C0B: store $0215, z      ; 12 15 02
0C0E: mul w, w            ; 60
0C0F: xor x, w            ; BF
0C10: or y, a             ; AA
0C11: and y, z            ; 94
0C12: set w, $00          ; 1A 00
0C14: pop z               ; 08
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
0C20: nop                 ; 00
0C21: nop                 ; 00
0C22: nop                 ; FD
0C23: nop                 ; FD
0C24: nop                 ; FF
0C25: nop                 ; FF
0C26: nop                 ; FF
0C27: nop                 ; FF
0C28: or y, x             ; A7
0C29: and x, a            ; 92
0C2A: jmp.lt $0048        ; F4 48 00
0C2D: add x, a            ; 20
0C2E: pop z               ; 08
0C2F: inc y               ; 68
0C30: rol x               ; DF
0C31: inc w               ; 6A
0C32: or z, x             ; AB
0C33: xor z, z            ; C8
0C34: set w, $00          ; 1A 00
0C36: and a, y            ; A0
0C37: or x, w             ; A5
0C38: add x, a            ; 20
0C39: mul y, z            ; 55
0C3A: add z, w            ; 29
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
0C47: nop                 ; 00
0C48: nop                 ; 00
0C49: nop                 ; 00
0C4A: xor x, w            ; BF
0C4B: nop                 ; FF
0C4C: nop                 ; FF
0C4D: nop                 ; FF
0C4E: nop                 ; FF
0C4F: nop                 ; FF
0C50: load a, $F224       ; 0F 24 F2
0C53: and y, x            ; 93
0C54: pop a               ; 0A
0C55: sub w, x            ; 44
0C56: push y              ; 02
0C57: xor y, x            ; C1
0C58: not a               ; BB
0C59: shr y               ; DB
0C5A: not w               ; BA
0C5B: cmp x, y            ; 72
0C5C: add w, a            ; 2F
0C5D: nop                 ; 00
0C5E: xor x, a            ; C0
0C5F: sub a, y            ; 4A
0C60: mul z, z            ; 5A
0C61: add w, w            ; 2E
0C62: or x, w             ; A5
0C63: mul y, z            ; 55
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
0C70: nop                 ; 00
0C71: nop                 ; 00
0C72: jmp.z $FFFF         ; F5 FF FF
0C75: nop                 ; FF
0C76: nop                 ; FF
0C77: mul w, z            ; 5F
0C78: or x, w             ; A5
0C79: and x, a            ; 92
0C7A: nop                 ; F8
0C7B: pop z               ; 08
0C7C: sub z, z            ; 41
0C7D: push y              ; 02
0C7E: store $ED48, y      ; 11 48 ED
0C81: or a, w             ; B6
0C82: dec y               ; 6D
0C83: sub a, a            ; 4D
0C84: sub x, x            ; 35
0C85: nop                 ; 00
0C86: nop                 ; 00
0C87: inc z               ; 69
0C88: jmp z, w            ; EB
0C89: not w               ; BA
0C8A: sub a, y            ; 4A
0C8B: pop a               ; 0A
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
0C98: nop                 ; 00
0C99: nop                 ; 00
0C9A: jmp $FFFF, w        ; EF FF FF
0C9D: nop                 ; FF
0C9E: nop                 ; FF
0C9F: resume              ; F7 0B
0CA1: add y, w            ; 24
0CA2: jmp.neq $14A2       ; F2 A2 14
0CA5: add z, z            ; 28
0CA6: sub z, y            ; 40
0CA7: store $6D5A, x      ; 10 5A 6D
0CAA: mul y, z            ; 55
0CAB: mul z, w            ; 5B
0CAC: mul w, z            ; 5F
0CAD: nop                 ; 00
0CAE: cmp w, x            ; 80
0CAF: shr x               ; DA
0CB0: xor x, y            ; BD
0CB1: dec y               ; 6D
0CB2: or y, w             ; A9
0CB3: or y, a             ; AA
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
0CBF: nop                 ; 00
0CC0: nop                 ; 00
0CC1: nop                 ; 00
0CC2: xor x, y            ; BD
0CC3: nop                 ; FD
0CC4: nop                 ; FF
0CC5: jmp $5AAD, w        ; EF AD 5A
0CC8: or y, a             ; AA
0CC9: and x, a            ; 92
0CCA: jmp.lt $400A        ; F4 0A 40
0CCD: nop                 ; 00
0CCE: push w              ; 04
0CCF: sub z, z            ; 41
0CD0: jmp.z $D7F7         ; F5 F7 D7
0CD3: or a, w             ; B6
0CD4: mul y, z            ; 55
0CD5: nop                 ; 00
0CD6: nop                 ; 00
0CD7: dec w               ; 6F
0CD8: or z, x             ; AB
0CD9: not w               ; BA
0CDA: add z, a            ; 2A
0CDB: mul x, w            ; 51
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
0CE8: nop                 ; 00
0CE9: nop                 ; 00
0CEA: resume              ; F7 B7
0CEC: cmp z, z            ; 7D
0CED: cmp z, x            ; 7B
0CEE: nop                 ; FB
0CEF: or w, x             ; AF
0CF0: push a              ; 05
0CF1: nop                 ; 00
0CF2: jmp.eq $9251        ; F1 51 92
0CF5: push w              ; 04
0CF6: add y, x            ; 21
0CF7: push w              ; 04
0CF8: store $5ABD, a      ; 14 BD 5A
0CFB: mul y, z            ; 55
0CFC: mul w, z            ; 5F
0CFD: nop                 ; 00
0CFE: nop                 ; 00
0CFF: shr x               ; DA
0D00: inc a               ; 6B
0D01: ror w               ; E7
0D02: or x, z             ; A4
0D03: or y, a             ; AA
0D04: push y              ; 02
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
0D10: nop                 ; 00
0D11: nop                 ; 00
0D12: shr w               ; DD
0D13: nop                 ; FE
0D14: jmp $ADAF, w        ; EF AF AD
0D17: mul y, y            ; 54
0D18: and x, a            ; 92
0D19: sub a, y            ; 4A
0D1A: nop                 ; FC
0D1B: push w              ; 04
0D1C: pop z               ; 08
0D1D: add y, y            ; 22
0D1E: pop z               ; 08
0D1F: add x, a            ; 20
0D20: xor a, y            ; D1
0D21: shl z               ; D7
0D22: or z, w             ; AD
0D23: nop                 ; FA
0D24: or a, z             ; B5
0D25: nop                 ; 00
0D26: nop                 ; 00
0D27: cmp z, z            ; 7D
0D28: or z, w             ; AD
0D29: shl x               ; D5
0D2A: or y, a             ; AA
0D2B: add y, w            ; 24
0D2C: push x              ; 01
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
0D38: nop                 ; 00
0D39: nop                 ; 00
0D3A: not x               ; B7
0D3B: mul z, w            ; 5B
0D3C: nop                 ; FB
0D3D: shr x               ; DA
0D3E: mul y, w            ; 56
0D3F: or z, x             ; AB
0D40: push a              ; 05
0D41: store $11F1, x      ; 10 F1 11
0D44: or y, a             ; AA
0D45: cmp a, w            ; 88
0D46: cmp w, z            ; 82
0D47: pop a               ; 0A
0D48: store $AB7E, z      ; 12 7E AB
0D4B: mul y, w            ; 56
0D4C: or w, x             ; AF
0D4D: push x              ; 01
0D4E: nop                 ; 00
0D4F: xor a, a            ; D4
0D50: dec w               ; 6F
0D51: xor x, y            ; BD
0D52: add z, a            ; 2A
0D53: mul y, z            ; 55
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
0D60: nop                 ; 00
0D61: nop                 ; 00
0D62: shr w               ; DD
0D63: jmp $6FAD, z        ; EE AD 6F
0D66: or y, w             ; A9
0D67: mul y, y            ; 54
0D68: add y, y            ; 22
0D69: cmp w, y            ; 81
0D6A: jmp.lt $0544        ; F4 44 05
0D6D: add y, y            ; 22
0D6E: add z, z            ; 28
0D6F: add x, a            ; 20
0D70: ror a               ; E8
0D71: nop                 ; FB
0D72: shl x               ; D5
0D73: nop                 ; FB
0D74: mul x, a            ; 52
0D75: nop                 ; 00
0D76: nop                 ; 00
0D77: cmp x, w            ; 74
0D78: or z, w             ; AD
0D79: push y              ; 02
0D7A: sub a, x            ; 49
0D7B: mul y, z            ; 55
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
0D88: nop                 ; 00
0D89: nop                 ; 00
0D8A: inc w               ; 6A
0D8B: mul z, w            ; 5B
0D8C: nop                 ; FB
0D8D: shr x               ; DA
0D8E: sub a, y            ; 4A
0D8F: mul y, z            ; 55
0D90: pop w               ; 09
0D91: store $1170, z      ; 12 70 11
0D94: or y, a             ; AA
0D95: and y, z            ; 94
0D96: push y              ; 02
0D97: sub a, x            ; 49
0D98: push x              ; 01
0D99: or z, w             ; AD
0D9A: not w               ; BA
0D9B: mul y, w            ; 56
0D9C: load a, $0000       ; 0F 00 00
0D9F: xor a, x            ; D0
0DA0: set x, $54          ; 17 54
0DA2: mul y, y            ; 54
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
0DAF: nop                 ; 00
0DB0: nop                 ; 00
0DB1: nop                 ; 00
0DB2: shr y               ; DB
0DB3: jmp x, y            ; EA
0DB4: or z, w             ; AD
0DB5: dec y               ; 6D
0DB6: and y, x            ; 93
0DB7: and x, z            ; 90
0DB8: push w              ; 04
0DB9: nop                 ; 00
0DBA: call $8284          ; 15 84 82
0DBD: mul a, x            ; 62
0DBE: or y, z             ; A8
0DBF: push w              ; 04
0DC0: xor y, w            ; C4
0DC1: mul z, z            ; 5A
0DC2: jmp $01DB, w        ; EF DB 01
0DC5: nop                 ; 00
0DC6: nop                 ; 00
0DC7: inc y               ; 68
0DC8: sub a, x            ; 49
0DC9: and x, w            ; 91
0DCA: or y, z             ; A8
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
0DD7: nop                 ; 00
0DD8: nop                 ; 00
0DD9: nop                 ; 00
0DDA: or y, a             ; AA
0DDB: mul w, x            ; 5D
0DDC: mul z, w            ; 5B
0DDD: mul z, w            ; 5B
0DDE: add w, z            ; 2D
0DDF: sub w, y            ; 45
0DE0: or y, a             ; AA
0DE1: sub w, x            ; 44
0DE2: cmp w, x            ; 80
0DE3: store $D429, x      ; 10 29 D4
0DE6: store $1151, w      ; 13 51 11
0DE9: shl y               ; D6
0DEA: not a               ; BB
0DEB: cmp x, w            ; 74
0DEC: nop                 ; 00
0DED: nop                 ; 00
0DEE: nop                 ; 00
0DEF: mul x, z            ; 50
0DF0: or y, a             ; AA
0DF1: mul y, w            ; 56
0DF2: add y, y            ; 22
0DF3: call $0000          ; 15 00 00
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
0E00: nop                 ; 00
0E01: nop                 ; 00
0E02: or a, z             ; B5
0E03: mul y, w            ; 56
0E04: mul y, z            ; 55
0E05: mul y, z            ; 55
0E06: and y, w            ; 95
0E07: store $0001, x      ; 10 01 00
0E0A: sub w, a            ; 48
0E0B: sub w, x            ; 44
0E0C: and a, w            ; A2
0E0D: jmp x, y            ; EA
0E0E: sub a, z            ; 4B
0E0F: push w              ; 04
0E10: cmp w, a            ; 84
0E11: cmp y, a            ; 7A
0E12: dec y               ; 6D
0E13: load x, $4000       ; 0B 00 40
0E16: nop                 ; 00
0E17: or w, y             ; B0
0E18: or y, a             ; AA
0E19: and y, w            ; 95
0E1A: sub a, y            ; 4A
0E1B: call $0000          ; 15 00 00
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
0E28: nop                 ; 00
0E29: nop                 ; 00
0E2A: or z, w             ; AD
0E2B: shl x               ; D5
0E2C: or y, a             ; AA
0E2D: or y, a             ; AA
0E2E: inc w               ; 6A
0E2F: sub w, x            ; 44
0E30: mul y, y            ; 54
0E31: store $9102, y      ; 11 02 91
0E34: and y, z            ; 94
0E35: xor a, a            ; D4
0E36: mul y, a            ; 57
0E37: mul y, z            ; 55
0E38: add z, w            ; 29
0E39: xor a, a            ; D4
0E3A: nop                 ; FF
0E3B: push x              ; 01
0E3C: nop                 ; 00
0E3D: push y              ; 02
0E3E: nop                 ; 00
0E3F: and a, y            ; A0
0E40: mul y, z            ; 55
0E41: xor x, y            ; BD
0E42: store $0025, x      ; 10 25 00
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
0E50: nop                 ; 00
0E51: nop                 ; 00
0E52: mul y, z            ; 55
0E53: or z, w             ; AD
0E54: or y, a             ; AA
0E55: or y, a             ; AA
0E56: or y, a             ; AA
0E57: push y              ; 02
0E58: push x              ; 01
0E59: sub w, x            ; 44
0E5A: store $5244, y      ; 11 44 52
0E5D: jmp.z $54AF         ; F5 AF 54
0E60: cmp w, z            ; 82
0E61: mul x, z            ; 50
0E62: xor x, y            ; BD
0E63: nop                 ; 00
0E64: store $0000, x      ; 10 00 00
0E67: and a, y            ; A0
0E68: not w               ; BA
0E69: add w, x            ; 2B
0E6A: sub a, y            ; 4A
0E6B: store $0000, z      ; 12 00 00
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
0E78: nop                 ; 00
0E79: nop                 ; 00
0E7A: or y, a             ; AA
0E7B: inc w               ; 6A
0E7C: mul y, z            ; 55
0E7D: mul y, z            ; 55
0E7E: add y, a            ; 25
0E7F: add y, x            ; 21
0E80: mul y, y            ; 54
0E81: pop w               ; 09
0E82: cmp w, a            ; 84
0E83: add z, z            ; 28
0E84: sub a, x            ; 49
0E85: jmp x, y            ; EA
0E86: mul w, z            ; 5F
0E87: mul y, x            ; 53
0E88: add z, w            ; 29
0E89: xor y, y            ; C2
0E8A: nop                 ; FE
0E8B: pop y               ; 07
0E8C: nop                 ; 00
0E8D: nop                 ; 00
0E8E: nop                 ; 00
0E8F: sub z, y            ; 40
0E90: shl z               ; D7
0E91: shl y               ; D6
0E92: and x, a            ; 92
0E93: nop                 ; 00
0E94: nop                 ; 00
0E95: push w              ; 04
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
0EA0: nop                 ; 00
0EA1: nop                 ; 00
0EA2: inc w               ; 6A
0EA3: and y, w            ; 95
0EA4: or y, a             ; AA
0EA5: or y, a             ; AA
0EA6: or y, a             ; AA
0EA7: pop a               ; 0A
0EA8: mul x, z            ; 50
0EA9: add y, w            ; 24
0EAA: mul x, w            ; 51
0EAB: sub z, w            ; 42
0EAC: mul y, z            ; 55
0EAD: jmp.z $ACFF         ; F5 FF AC
0EB0: sub a, y            ; 4A
0EB1: sub a, x            ; 49
0EB2: nop                 ; FD
0EB3: sub w, y            ; 45
0EB4: push w              ; 04
0EB5: nop                 ; 00
0EB6: pop z               ; 08
0EB7: xor x, a            ; C0
0EB8: or a, z             ; B5
0EB9: cmp y, a            ; 7A
0EBA: add y, w            ; 24
0EBB: or x, z             ; A4
0EBC: or y, a             ; AA
0EBD: push a              ; 05
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
0EC8: nop                 ; 00
0EC9: nop                 ; 00
0ECA: and y, w            ; 95
0ECB: inc w               ; 6A
0ECC: mul y, z            ; 55
0ECD: sub a, x            ; 49
0ECE: and x, a            ; 92
0ECF: push w              ; 04
0ED0: push y              ; 02
0ED1: push x              ; 01
0ED2: cmp w, a            ; 84
0ED3: mul y, y            ; 54
0ED4: mul y, z            ; 55
0ED5: jmp $57FF, y        ; ED FF 57
0ED8: mul y, z            ; 55
0ED9: and x, a            ; 92
0EDA: jmp x, y            ; EA
0EDB: add x, w            ; 1F
0EDC: nop                 ; 00
0EDD: store $8000, x      ; 10 00 80
0EE0: or z, a             ; AE
0EE1: or z, w             ; AD
0EE2: sub a, x            ; 49
0EE3: mul x, w            ; 51
0EE4: add z, w            ; 29
0EE5: store $0000, a      ; 14 00 00
0EE8: nop                 ; 00
0EE9: nop                 ; 00
0EEA: nop                 ; 00
0EEB: nop                 ; 00
0EEC: nop                 ; 00
0EED: nop                 ; 00
0EEE: nop                 ; 00
0EEF: nop                 ; 00
0EF0: nop                 ; 00
0EF1: nop                 ; 00
0EF2: inc w               ; 6A
0EF3: and y, w            ; 95
0EF4: or y, a             ; AA
0EF5: or y, a             ; AA
0EF6: or y, a             ; AA
0EF7: sub a, y            ; 4A
0EF8: sub z, y            ; 40
0EF9: add x, a            ; 20
0EFA: mul x, z            ; 50
0EFB: add z, a            ; 2A
0EFC: mul y, z            ; 55
0EFD: nop                 ; FB
0EFE: nop                 ; FF
0EFF: not a               ; BB
0F00: or y, a             ; AA
0F01: push w              ; 04
0F02: jmp.lt $002F        ; F4 2F 00
0F05: cmp w, z            ; 82
0F06: nop                 ; 00
0F07: nop                 ; 00
0F08: jmp z, w            ; EB
0F09: shl y               ; D6
0F0A: and x, a            ; 92
0F0B: sub w, x            ; 44
0F0C: sub a, y            ; 4A
0F0D: call $0000          ; 15 00 00
0F10: nop                 ; 00
0F11: nop                 ; 00
0F12: nop                 ; 00
0F13: nop                 ; 00
0F14: nop                 ; 00
0F15: nop                 ; 00
0F16: nop                 ; 00
0F17: nop                 ; 00
0F18: nop                 ; 00
0F19: nop                 ; 00
0F1A: and y, w            ; 95
0F1B: or y, a             ; AA
0F1C: or y, a             ; AA
0F1D: add y, w            ; 24
0F1E: sub a, x            ; 49
0F1F: and y, w            ; 95
0F20: set w, $08          ; 1A 08
0F22: cmp a, x            ; 85
0F23: xor z, a            ; CA
0F24: or y, a             ; AA
0F25: int $FF             ; F6 FF
0F27: jmp $ADAB, w        ; EF AB AD
0F2A: cmp a, w            ; 88
0F2B: nop                 ; FF
0F2C: add x, a            ; 20
0F2D: nop                 ; 00
0F2E: nop                 ; 00
0F2F: nop                 ; 00
0F30: and w, z            ; 9D
0F31: or a, z             ; B5
0F32: sub a, y            ; 4A
0F33: store $0029, z      ; 12 29 00
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
0F40: nop                 ; 00
0F41: nop                 ; 00
0F42: or y, a             ; AA
0F43: or y, a             ; AA
0F44: sub a, y            ; 4A
0F45: mul y, z            ; 55
0F46: mul y, z            ; 55
0F47: mul x, a            ; 52
0F48: or x, w             ; A5
0F49: sub w, x            ; 44
0F4A: mul x, z            ; 50
0F4B: add z, w            ; 29
0F4C: jmp.z $FFFD         ; F5 FD FF
0F4F: nop                 ; FF
0F50: nop                 ; FE
0F51: add w, a            ; 2F
0F52: or y, a             ; AA
0F53: xor x, z            ; BE
0F54: push x              ; 01
0F55: nop                 ; 00
0F56: nop                 ; 00
0F57: nop                 ; 00
0F58: shl y               ; D6
0F59: dec z               ; 6E
0F5A: call $A549          ; 15 49 A5
0F5D: nop                 ; 00
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
0F68: nop                 ; 00
0F69: nop                 ; 00
0F6A: or y, a             ; AA
0F6B: mul x, a            ; 52
0F6C: add z, a            ; 2A
0F6D: mul y, z            ; 55
0F6E: or x, w             ; A5
0F6F: or y, a             ; AA
0F70: mul y, y            ; 54
0F71: store $D525, y      ; 11 25 D5
0F74: mul z, z            ; 5A
0F75: nop                 ; FF
0F76: nop                 ; FF
0F77: nop                 ; FF
0F78: nop                 ; FF
0F79: and a, x            ; 9F
0F7A: store $877D, x      ; 10 7D 87
0F7D: nop                 ; 00
0F7E: sub z, y            ; 40
0F7F: nop                 ; 00
0F80: mul z, a            ; 5C
0F81: or a, z             ; B5
0F82: mul a, z            ; 64
0F83: store $6A54, z      ; 12 54 6A
0F86: push x              ; 01
0F87: nop                 ; 00
0F88: nop                 ; 00
0F89: nop                 ; 00
0F8A: nop                 ; 00
0F8B: nop                 ; 00
0F8C: nop                 ; 00
0F8D: nop                 ; 00
0F8E: nop                 ; 00
0F8F: nop                 ; 00
0F90: nop                 ; 00
0F91: nop                 ; 00
0F92: and x, a            ; 92
0F93: mul y, y            ; 54
0F94: or y, w             ; A9
0F95: and x, a            ; 92
0F96: mul y, y            ; 54
0F97: and y, w            ; 95
0F98: or y, a             ; AA
0F99: sub a, y            ; 4A
0F9A: sub a, y            ; 4A
0F9B: mul y, z            ; 55
0F9C: jmp $FFFF, w        ; EF FF FF
0F9F: nop                 ; FF
0FA0: nop                 ; FF
0FA1: cmp z, a            ; 7F
0FA2: and a, w            ; A2
0FA3: nop                 ; FC
0FA4: push a              ; 05
0FA5: nop                 ; 00
0FA6: push x              ; 01
0FA7: nop                 ; 00
0FA8: or a, w             ; B6
0FA9: cmpbit w            ; 8D 92
0FAB: sub w, x            ; 44
0FAC: sub z, y            ; 40
0FAD: add y, x            ; 21
0FAE: push x              ; 01
0FAF: nop                 ; 00
0FB0: nop                 ; 00
0FB1: nop                 ; 00
0FB2: nop                 ; 00
0FB3: nop                 ; 00
0FB4: nop                 ; 00
0FB5: nop                 ; 00
0FB6: nop                 ; 00
0FB7: nop                 ; 00
0FB8: nop                 ; 00
0FB9: nop                 ; 00
0FBA: mul y, z            ; 55
0FBB: and y, w            ; 95
0FBC: or y, a             ; AA
0FBD: or y, a             ; AA
0FBE: add z, a            ; 2A
0FBF: or y, w             ; A9
0FC0: or y, a             ; AA
0FC1: add z, a            ; 2A
0FC2: mul x, w            ; 51
0FC3: shl x               ; D5
0FC4: not w               ; BA
0FC5: nop                 ; FF
0FC6: nop                 ; FF
0FC7: nop                 ; FF
0FC8: nop                 ; FF
0FC9: nop                 ; FF
0FCA: pop w               ; 09
0FCB: jmp.eq $042F        ; F1 2F 04
0FCE: nop                 ; 00
0FCF: nop                 ; 00
0FD0: dec x               ; 6C
0FD1: add w, x            ; 2B
0FD2: mul y, y            ; 54
0FD3: and x, w            ; 91
0FD4: pop z               ; 08
0FD5: cmpbit x            ; 8A 00
0FD7: nop                 ; 00
0FD8: nop                 ; 00
0FD9: nop                 ; 00
0FDA: nop                 ; 00
0FDB: nop                 ; 00
0FDC: nop                 ; 00
0FDD: nop                 ; 00
0FDE: nop                 ; 00
0FDF: nop                 ; 00
0FE0: nop                 ; 00
0FE1: nop                 ; 00
0FE2: add y, w            ; 24
0FE3: or y, w             ; A9
0FE4: or y, a             ; AA
0FE5: add z, a            ; 2A
0FE6: mul y, z            ; 55
0FE7: mul y, z            ; 55
0FE8: mul y, z            ; 55
0FE9: shl x               ; D5
0FEA: or y, a             ; AA
0FEB: cmp y, a            ; 7A
0FEC: nop                 ; FF
0FED: nop                 ; FF
0FEE: nop                 ; FF
0FEF: nop                 ; FF
0FF0: nop                 ; FF
0FF1: nop                 ; FF
0FF2: sub w, y            ; 45
0FF3: ror x               ; E4
0FF4: set x, $00          ; 17 00
0FF6: nop                 ; 00
0FF7: nop                 ; 00
0FF8: or y, z             ; A8
0FF9: and y, a            ; 96
0FFA: add y, y            ; 22
0FFB: mul y, z            ; 55
0FFC: nop                 ; 00
0FFD: or y, w             ; A9
0FFE: push y              ; 02
0FFF: nop                 ; 00
1000: nop                 ; 00
1001: nop                 ; 00
1002: nop                 ; 00
1003: nop                 ; 00
1004: nop                 ; 00
1005: nop                 ; 00
1006: nop                 ; 00
1007: nop                 ; 00
1008: nop                 ; 00
1009: nop                 ; 00
100A: mul y, z            ; 55
100B: sub a, y            ; 4A
100C: mul x, a            ; 52
100D: or y, a             ; AA
100E: mul x, a            ; 52
100F: mul y, z            ; 55
1010: mul y, z            ; 55
1011: or a, z             ; B5
1012: or y, a             ; AA
1013: shl y               ; D6
1014: nop                 ; FF
1015: nop                 ; FF
1016: nop                 ; FF
1017: nop                 ; FF
1018: nop                 ; FF
1019: nop                 ; FF
101A: cmp w, w            ; 83
101B: cmp a, w            ; 88
101C: xor x, w            ; BF
101D: store $0000, x      ; 10 00 00
1020: xor a, x            ; D0
1021: not w               ; BA
1022: sub w, a            ; 48
1023: cmp a, x            ; 85
1024: nop                 ; 00
1025: add y, y            ; 22
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
1030: nop                 ; 00
1031: nop                 ; 00
1032: sub a, x            ; 49
1033: or y, w             ; A9
1034: or y, a             ; AA
1035: or y, a             ; AA
1036: or y, a             ; AA
1037: or y, a             ; AA
1038: or y, a             ; AA
1039: shl y               ; D6
103A: mul y, w            ; 56
103B: nop                 ; FB
103C: nop                 ; FF
103D: nop                 ; FF
103E: nop                 ; FF
103F: nop                 ; FF
1040: nop                 ; FF
1041: nop                 ; FF
1042: push a              ; 05
1043: sub z, w            ; 42
1044: nop                 ; FF
1045: push x              ; 01
1046: sub z, y            ; 40
1047: nop                 ; 00
1048: mul x, a            ; 52
1049: call $2952          ; 15 52 29
104C: nop                 ; 00
104D: cmp a, w            ; 88
104E: nop                 ; 00
104F: nop                 ; 00
1050: nop                 ; 00
1051: nop                 ; 00
1052: nop                 ; 00
1053: nop                 ; 00
1054: nop                 ; 00
1055: nop                 ; 00
1056: nop                 ; 00
1057: nop                 ; 00
1058: nop                 ; 00
1059: nop                 ; 00
105A: add z, a            ; 2A
105B: add y, a            ; 25
105C: and y, w            ; 95
105D: or y, a             ; AA
105E: or y, a             ; AA
105F: or y, a             ; AA
1060: or y, a             ; AA
1061: or a, z             ; B5
1062: nop                 ; FD
1063: shr a               ; DE
1064: nop                 ; FF
1065: nop                 ; FF
1066: nop                 ; FF
1067: nop                 ; FF
1068: nop                 ; FF
1069: nop                 ; FF
106A: add y, x            ; 21
106B: push w              ; 04
106C: cmp z, y            ; 7C
106D: pop y               ; 07
106E: nop                 ; 00
106F: nop                 ; 00
1070: and a, y            ; A0
1071: jmp z, w            ; EB
1072: sub w, x            ; 44
1073: or y, a             ; AA
1074: push x              ; 01
1075: add y, a            ; 25
1076: push a              ; 05
1077: nop                 ; 00
1078: nop                 ; 00
1079: nop                 ; 00
107A: nop                 ; 00
107B: nop                 ; 00
107C: nop                 ; 00
107D: nop                 ; 00
107E: nop                 ; 00
107F: nop                 ; 00
1080: nop                 ; 00
1081: nop                 ; 00
1082: mul x, a            ; 52
1083: mul y, z            ; 55
1084: or y, w             ; A9
1085: or y, a             ; AA
1086: sub a, y            ; 4A
1087: mul y, z            ; 55
1088: or a, z             ; B5
1089: shl y               ; D6
108A: mul y, w            ; 56
108B: resume              ; F7 FF
108D: nop                 ; FF
108E: nop                 ; FF
108F: nop                 ; FF
1090: nop                 ; FF
1091: mul w, z            ; 5F
1092: cmp w, a            ; 84
1093: and x, z            ; 90
1094: nop                 ; FA
1095: load z, $0000       ; 0D 00 00
1098: or w, y             ; B0
1099: sub y, x            ; 3A
109A: and x, a            ; 92
109B: cmp y, a            ; 7A
109C: push z              ; 03
109D: and x, z            ; 90
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
10A8: nop                 ; 00
10A9: nop                 ; 00
10AA: and y, w            ; 95
10AB: and x, a            ; 92
10AC: or y, a             ; AA
10AD: sub a, y            ; 4A
10AE: mul y, z            ; 55
10AF: mul y, z            ; 55
10B0: dec y               ; 6D
10B1: not a               ; BB
10B2: nop                 ; FD
10B3: nop                 ; FF
10B4: nop                 ; FF
10B5: nop                 ; FF
10B6: nop                 ; FF
10B7: nop                 ; FF
10B8: nop                 ; FF
10B9: add w, a            ; 2F
10BA: push x              ; 01
10BB: add a, z            ; 32
10BC: rol y               ; E0
10BD: sub x, z            ; 37
10BE: nop                 ; 00
10BF: nop                 ; 00
10C0: and a, y            ; A0
10C1: sub a, z            ; 4B
10C2: sub a, x            ; 49
10C3: shl z               ; D7
10C4: load w, $054A       ; 0E 4A 05
10C7: nop                 ; 00
10C8: nop                 ; 00
10C9: nop                 ; 00
10CA: nop                 ; 00
10CB: nop                 ; 00
10CC: nop                 ; 00
10CD: nop                 ; 00
10CE: nop                 ; 00
10CF: nop                 ; 00
10D0: nop                 ; 00
10D1: nop                 ; 00
10D2: mul y, y            ; 54
10D3: or y, a             ; AA
10D4: mul x, a            ; 52
10D5: or y, a             ; AA
10D6: or y, a             ; AA
10D7: or y, a             ; AA
10D8: shl x               ; D5
10D9: jmp $FFFE, z        ; EE FE FF
10DC: nop                 ; FF
10DD: nop                 ; FF
10DE: nop                 ; FF
10DF: nop                 ; FF
10E0: nop                 ; FF
10E1: and z, x            ; 97
10E2: store $E811, x      ; 10 11 E8
10E5: mul w, z            ; 5F
10E6: nop                 ; 00
10E7: nop                 ; 00
10E8: or y, a             ; AA
10E9: add z, x            ; 26
10EA: or x, z             ; A4
10EB: nop                 ; FD
10EC: call $07B4          ; 15 B4 07
10EF: nop                 ; 00
10F0: nop                 ; 00
10F1: nop                 ; 00
10F2: nop                 ; 00
10F3: nop                 ; 00
10F4: nop                 ; 00
10F5: nop                 ; 00
10F6: nop                 ; 00
10F7: nop                 ; 00
10F8: nop                 ; 00
10F9: nop                 ; 00
10FA: sub a, y            ; 4A
10FB: or x, w             ; A5
10FC: mul y, y            ; 54
10FD: mul y, z            ; 55
10FE: mul y, z            ; 55
10FF: mul y, z            ; 55
1100: not a               ; BB
1101: or a, z             ; B5
1102: shr y               ; DB
1103: nop                 ; FF
1104: nop                 ; FF
1105: nop                 ; FF
1106: nop                 ; FF
1107: nop                 ; FF
1108: nop                 ; FF
1109: add y, a            ; 25
110A: push y              ; 02
110B: cmp w, a            ; 84
110C: nop                 ; 00
110D: nop                 ; FF
110E: push x              ; 01
110F: cmp w, x            ; 80
1110: shl y               ; D6
1111: cmp a, a            ; 89
1112: mul z, z            ; 5A
1113: mul z, w            ; 5B
1114: sub x, z            ; 37
1115: jmp $000A, x        ; EC 0A 00
1118: nop                 ; 00
1119: nop                 ; 00
111A: nop                 ; 00
111B: nop                 ; 00
111C: nop                 ; 00
111D: nop                 ; 00
111E: nop                 ; 00
111F: nop                 ; 00
1120: nop                 ; 00
1121: nop                 ; 00
1122: mul y, z            ; 55
1123: add z, w            ; 29
1124: mul y, z            ; 55
1125: mul y, z            ; 55
1126: mul y, z            ; 55
1127: or a, z             ; B5
1128: shl y               ; D6
1129: shr a               ; DE
112A: nop                 ; FF
112B: nop                 ; FF
112C: nop                 ; FF
112D: nop                 ; FF
112E: nop                 ; FF
112F: nop                 ; FF
1130: nop                 ; FF
1131: mul y, z            ; 55
1132: cmp w, y            ; 81
1133: nop                 ; 00
1134: sub z, y            ; 40
1135: xor x, w            ; BF
1136: push y              ; 02
1137: mul w, w            ; 60
1138: sub y, w            ; 3D
1139: mul x, a            ; 52
113A: jmp x, y            ; EA
113B: jmp $B4AD, y        ; ED AD B4
113E: pop x               ; 06
113F: nop                 ; 00
1140: nop                 ; 00
1141: nop                 ; 00
1142: nop                 ; 00
1143: nop                 ; 00
1144: nop                 ; 00
1145: nop                 ; 00
1146: nop                 ; 00
1147: nop                 ; 00
1148: nop                 ; 00
1149: nop                 ; 00
114A: mul x, a            ; 52
114B: or y, a             ; AA
114C: sub a, y            ; 4A
114D: mul y, z            ; 55
114E: mul y, z            ; 55
114F: dec y               ; 6D
1150: not a               ; BB
1151: jmp.z $FFFE         ; F5 FE FF
1154: nop                 ; FF
1155: nop                 ; FF
1156: nop                 ; FF
1157: nop                 ; FF
1158: cmp z, a            ; 7F
1159: xor y, x            ; C1
115A: pop z               ; 08
115B: add y, a            ; 25
115C: push y              ; 02
115D: nop                 ; FC
115E: pop y               ; 07
115F: mul y, y            ; 54
1160: xor w, x            ; CB
1161: or x, z             ; A4
1162: cmp x, a            ; 75
1163: cmp z, a            ; 7F
1164: mul z, w            ; 5B
1165: or z, w             ; AD
1166: load z, $0000       ; 0D 00 00
1169: nop                 ; 00
116A: nop                 ; 00
116B: nop                 ; 00
116C: nop                 ; 00
116D: nop                 ; 00
116E: nop                 ; 00
116F: nop                 ; 00
1170: nop                 ; 00
1171: nop                 ; 00
1172: or y, a             ; AA
1173: sub a, y            ; 4A
1174: mul y, z            ; 55
1175: mul y, z            ; 55
1176: or a, z             ; B5
1177: or y, a             ; AA
1178: jmp $FFBE, y        ; ED BE FF
117B: nop                 ; FF
117C: nop                 ; FF
117D: nop                 ; FF
117E: nop                 ; FF
117F: nop                 ; FF
1180: xor x, w            ; BF
1181: jmp.lt $0003        ; F4 03 00
1184: nop                 ; 00
1185: nop                 ; FA
1186: sub a, a            ; 4D
1187: jmp x, y            ; EA
1188: mul y, z            ; 55
1189: shr x               ; DA
118A: shr x               ; DA
118B: shl x               ; D5
118C: dec w               ; 6F
118D: or a, z             ; B5
118E: pop a               ; 0A
118F: nop                 ; 00
1190: nop                 ; 00
1191: nop                 ; 00
1192: nop                 ; 00
1193: nop                 ; 00
1194: nop                 ; 00
1195: nop                 ; 00
1196: nop                 ; 00
1197: nop                 ; 00
1198: nop                 ; 00
1199: nop                 ; 00
119A: and y, z            ; 94
119B: or y, a             ; AA
119C: mul y, y            ; 54
119D: mul y, z            ; 55
119E: or z, w             ; AD
119F: dec y               ; 6D
11A0: not a               ; BB
11A1: resume              ; F7 FF
11A3: nop                 ; FF
11A4: nop                 ; FF
11A5: nop                 ; FF
11A6: nop                 ; FF
11A7: nop                 ; FE
11A8: mul w, z            ; 5F
11A9: xor y, x            ; C1
11AA: set x, $85          ; 17 85
11AC: nop                 ; 00
11AD: rol y               ; E0
11AE: mul z, w            ; 5B
11AF: mul x, w            ; 51
11B0: mul y, z            ; 55
11B1: or a, z             ; B5
11B2: cmp y, y            ; 77
11B3: nop                 ; FF
11B4: nop                 ; FA
11B5: jmp $001E, z        ; EE 1E 00
11B8: nop                 ; 00
11B9: nop                 ; 00
11BA: nop                 ; 00
11BB: nop                 ; 00
11BC: nop                 ; 00
11BD: nop                 ; 00
11BE: nop                 ; 00
11BF: nop                 ; 00
11C0: nop                 ; 00
11C1: nop                 ; 00
11C2: mul y, z            ; 55
11C3: or y, w             ; A9
11C4: or y, a             ; AA
11C5: or y, a             ; AA
11C6: or a, z             ; B5
11C7: or a, w             ; B6
11C8: jmp $FFFE, y        ; ED FE FF
11CB: nop                 ; FF
11CC: nop                 ; FF
11CD: nop                 ; FF
11CE: or w, x             ; AF
11CF: jmp z, w            ; EB
11D0: add w, a            ; 2F
11D1: jmp.lt $2003        ; F4 03 20
11D4: pop z               ; 08
11D5: xor a, x            ; D0
11D6: dec w               ; 6F
11D7: xor x, y            ; BD
11D8: cmp w, x            ; 80
11D9: shr a               ; DE
11DA: shr x               ; DA
11DB: mul y, z            ; 55
11DC: or w, x             ; AF
11DD: or a, z             ; B5
11DE: push x              ; 01
11DF: nop                 ; 00
11E0: nop                 ; 00
11E1: nop                 ; 00
11E2: nop                 ; 00
11E3: nop                 ; 00
11E4: nop                 ; 00
11E5: nop                 ; 00
11E6: nop                 ; 00
11E7: nop                 ; 00
11E8: nop                 ; 00
11E9: nop                 ; 00
11EA: mul x, a            ; 52
11EB: and y, w            ; 95
11EC: or y, a             ; AA
11ED: or y, a             ; AA
11EE: shl y               ; D6
11EF: dec y               ; 6D
11F0: not a               ; BB
11F1: nop                 ; FD
11F2: nop                 ; FF
11F3: nop                 ; FF
11F4: nop                 ; FF
11F5: nop                 ; FF
11F6: nop                 ; FB
11F7: mul z, z            ; 5A
11F8: sub a, z            ; 4B
11F9: xor y, x            ; C1
11FA: push a              ; 05
11FB: call $0000          ; 15 00 00
11FE: rol x               ; DF
11FF: mul y, a            ; 57
1200: push y              ; 02
1201: or a, y             ; B4
1202: cmp y, y            ; 77
1203: nop                 ; FF
1204: nop                 ; FD
1205: mul z, w            ; 5B
1206: call $0000          ; 15 00 00
1209: nop                 ; 00
120A: nop                 ; 00
120B: nop                 ; 00
120C: nop                 ; 00
120D: nop                 ; 00
120E: nop                 ; 00
120F: nop                 ; 00
1210: nop                 ; 00
1211: nop                 ; 00
1212: or y, a             ; AA
1213: or y, a             ; AA
1214: or y, a             ; AA
1215: inc w               ; 6A
1216: dec y               ; 6D
1217: not a               ; BB
1218: jmp $FFFF, y        ; ED FF FF
121B: nop                 ; FF
121C: nop                 ; FF
121D: cmp z, a            ; 7F
121E: add w, z            ; 2D
121F: mul y, z            ; 55
1220: add y, a            ; 25
1221: ror a               ; E8
1222: sub z, a            ; 43
1223: add a, x            ; 30
1224: cmp w, x            ; 80
1225: sub z, y            ; 40
1226: cmp x, a            ; 75
1227: add w, z            ; 2D
1228: nop                 ; 00
1229: shr x               ; DA
122A: jmp x, y            ; EA
122B: cmp z, a            ; 7F
122C: mul y, a            ; 57
122D: mul y, a            ; 57
122E: push w              ; 04
122F: nop                 ; 00
1230: nop                 ; 00
1231: nop                 ; 00
1232: nop                 ; 00
1233: nop                 ; 00
1234: nop                 ; 00
1235: nop                 ; 00
1236: nop                 ; 00
1237: nop                 ; 00
1238: nop                 ; 00
1239: nop                 ; 00
123A: add z, a            ; 2A
123B: mul y, z            ; 55
123C: mul y, z            ; 55
123D: mul y, z            ; 55
123E: shr y               ; DB
123F: dec z               ; 6E
1240: not a               ; BB
1241: nop                 ; FF
1242: nop                 ; FF
1243: nop                 ; FF
1244: nop                 ; FF
1245: rol x               ; DF
1246: shr y               ; DB
1247: mul y, z            ; 55
1248: pop z               ; 08
1249: xor x, a            ; C0
124A: load x, $1092       ; 0B 92 10
124D: nop                 ; 00
124E: shr w               ; DD
124F: sub y, y            ; 3B
1250: add x, a            ; 20
1251: xor a, x            ; D0
1252: or w, x             ; AF
1253: nop                 ; FF
1254: nop                 ; FD
1255: pop a               ; 0A
1256: add a, y            ; 31
1257: nop                 ; 00
1258: nop                 ; 00
1259: nop                 ; 00
125A: nop                 ; 00
125B: nop                 ; 00
125C: nop                 ; 00
125D: nop                 ; 00
125E: nop                 ; 00
125F: nop                 ; 00
1260: nop                 ; 00
1261: nop                 ; 00
1262: or y, a             ; AA
1263: or y, a             ; AA
1264: or y, a             ; AA
1265: shr x               ; DA
1266: inc w               ; 6A
1267: not a               ; BB
1268: jmp $FFFF, y        ; ED FF FF
126B: nop                 ; FF
126C: nop                 ; FF
126D: cmp y, y            ; 77
126E: mul y, z            ; 55
126F: pop a               ; 0A
1270: sub z, z            ; 41
1271: jmp.neq $0100       ; F2 00 01
1274: nop                 ; 00
1275: nop                 ; 00
1276: cmp x, w            ; 74
1277: add w, z            ; 2D
1278: pop z               ; 08
1279: and a, y            ; A0
127A: nop                 ; FA
127B: nop                 ; FF
127C: jmp $1EA7, w        ; EF A7 1E
127F: nop                 ; 00
1280: nop                 ; 00
1281: nop                 ; 00
1282: nop                 ; 00
1283: nop                 ; 00
1284: nop                 ; 00
1285: nop                 ; 00
1286: nop                 ; 00
1287: nop                 ; 00
1288: nop                 ; 00
1289: nop                 ; 00
128A: or y, a             ; AA
128B: or y, a             ; AA
128C: or y, a             ; AA
128D: mul y, w            ; 56
128E: xor x, y            ; BD
128F: dec y               ; 6D
1290: nop                 ; FF
1291: nop                 ; FB
1292: nop                 ; FF
1293: nop                 ; FF
1294: dec w               ; 6F
1295: mul w, x            ; 5D
1296: or z, x             ; AB
1297: add y, a            ; 25
1298: push w              ; 04
1299: xor x, a            ; C0
129A: push a              ; 05
129B: sub w, x            ; 44
129C: xor a, x            ; D0
129D: push w              ; 04
129E: xor a, x            ; D0
129F: mul z, w            ; 5B
12A0: nop                 ; 00
12A1: cmp w, a            ; 84
12A2: xor x, w            ; BF
12A3: nop                 ; FF
12A4: mul w, z            ; 5F
12A5: and w, z            ; 9D
12A6: inc w               ; 6A
12A7: nop                 ; 00
12A8: nop                 ; 00
12A9: nop                 ; 00
12AA: nop                 ; 00
12AB: nop                 ; 00
12AC: nop                 ; 00
12AD: nop                 ; 00
12AE: nop                 ; 00
12AF: nop                 ; 00
12B0: nop                 ; 00
12B1: nop                 ; 00
12B2: or y, a             ; AA
12B3: or y, a             ; AA
12B4: or y, a             ; AA
12B5: inc w               ; 6A
12B6: jmp z, w            ; EB
12B7: or a, w             ; B6
12B8: dec y               ; 6D
12B9: nop                 ; FF
12BA: nop                 ; FF
12BB: nop                 ; FF
12BC: xor x, w            ; BF
12BD: cmp y, y            ; 77
12BE: mul y, z            ; 55
12BF: push y              ; 02
12C0: nop                 ; 00
12C1: add z, z            ; 28
12C2: cmp w, x            ; 80
12C3: nop                 ; 00
12C4: mul x, a            ; 52
12C5: nop                 ; 00
12C6: mul w, w            ; 60
12C7: add w, a            ; 2F
12C8: nop                 ; 00
12C9: nop                 ; 00
12CA: nop                 ; FD
12CB: resume              ; F7 FB
12CD: cmp y, y            ; 77
12CE: add x, y            ; 1D
12CF: nop                 ; 00
12D0: nop                 ; 00
12D1: nop                 ; 00
12D2: nop                 ; 00
12D3: nop                 ; 00
12D4: nop                 ; 00
12D5: nop                 ; 00
12D6: nop                 ; 00
12D7: nop                 ; 00
12D8: nop                 ; 00
12D9: nop                 ; 00
12DA: mul y, z            ; 55
12DB: mul y, z            ; 55
12DC: shl x               ; D5
12DD: or y, a             ; AA
12DE: or z, w             ; AD
12DF: jmp $FFFF, y        ; ED FF FF
12E2: nop                 ; FF
12E3: nop                 ; FF
12E4: jmp $AAAA, w        ; EF AA AA
12E7: cmpbit x            ; 8A 90
12E9: sub z, y            ; 40
12EA: nop                 ; 00
12EB: store $0350, z      ; 12 50 03
12EE: cmp w, x            ; 80
12EF: nop                 ; FA
12F0: push y              ; 02
12F1: nop                 ; 00
12F2: cmp y, x            ; 76
12F3: nop                 ; FF
12F4: or z, a             ; AE
12F5: mul w, x            ; 5D
12F6: cmp y, y            ; 77
12F7: nop                 ; 00
12F8: nop                 ; 00
12F9: nop                 ; 00
12FA: nop                 ; 00
12FB: nop                 ; 00
12FC: nop                 ; 00
12FD: nop                 ; 00
12FE: nop                 ; 00
12FF: nop                 ; 00
1300: nop                 ; 00
1301: nop                 ; 00
1302: or y, a             ; AA
1303: or y, a             ; AA
1304: or y, a             ; AA
1305: or a, w             ; B6
1306: cmp y, x            ; 76
1307: not x               ; B7
1308: int $FF             ; F6 FF
130A: nop                 ; FF
130B: xor x, w            ; BF
130C: or a, z             ; B5
130D: or y, a             ; AA
130E: add z, a            ; 2A
130F: push x              ; 01
1310: nop                 ; 00
1311: nop                 ; 00
1312: nop                 ; 00
1313: sub z, z            ; 41
1314: inc y               ; 68
1315: push a              ; 05
1316: nop                 ; 00
1317: or w, x             ; AF
1318: pop w               ; 09
1319: nop                 ; 00
131A: nop                 ; FC
131B: mul w, z            ; 5F
131C: nop                 ; FB
131D: int $2A             ; F6 2A
131F: nop                 ; 00
1320: nop                 ; 00
1321: nop                 ; 00
1322: nop                 ; 00
1323: nop                 ; 00
1324: nop                 ; 00
1325: nop                 ; 00
1326: nop                 ; 00
1327: nop                 ; 00
1328: nop                 ; 00
1329: nop                 ; 00
132A: or y, a             ; AA
132B: or y, a             ; AA
132C: or y, a             ; AA
132D: inc w               ; 6A
132E: shr y               ; DB
132F: jmp $DDBF, y        ; ED BF DD
1332: nop                 ; FF
1333: cmp y, x            ; 76
1334: or w, x             ; AF
1335: or y, a             ; AA
1336: or y, a             ; AA
1337: push w              ; 04
1338: push y              ; 02
1339: nop                 ; 00
133A: nop                 ; 00
133B: pop z               ; 08
133C: mul x, z            ; 50
133D: and y, w            ; 95
133E: nop                 ; 00
133F: cmp y, z            ; 78
1340: and z, x            ; 97
1341: add x, a            ; 20
1342: cmp y, z            ; 78
1343: nop                 ; FD
1344: not x               ; B7
1345: xor x, w            ; BF
1346: shr y               ; DB
1347: nop                 ; 00
1348: nop                 ; 00
1349: nop                 ; 00
134A: nop                 ; 00
134B: nop                 ; 00
134C: nop                 ; 00
134D: nop                 ; 00
134E: nop                 ; 00
134F: nop                 ; 00
1350: nop                 ; 00
1351: nop                 ; 00
1352: mul y, z            ; 55
1353: mul y, z            ; 55
1354: dec y               ; 6D
1355: shr y               ; DB
1356: mul y, w            ; 56
1357: not x               ; B7
1358: nop                 ; FA
1359: nop                 ; FF
135A: or a, w             ; B6
135B: rol x               ; DF
135C: mul y, z            ; 55
135D: mul y, z            ; 55
135E: add y, a            ; 25
135F: add y, a            ; 25
1360: nop                 ; 00
1361: nop                 ; 00
1362: cmp w, x            ; 80
1363: mul x, a            ; 52
1364: shr x               ; DA
1365: call $EA00          ; 15 00 EA
1368: load a, $D800       ; 0F 00 D8
136B: shl z               ; D7
136C: shr a               ; DE
136D: shl x               ; D5
136E: dec z               ; 6E
136F: nop                 ; 00
1370: nop                 ; 00
1371: nop                 ; 00
1372: nop                 ; 00
1373: nop                 ; 00
1374: nop                 ; 00
1375: nop                 ; 00
1376: nop                 ; 00
1377: nop                 ; 00
1378: nop                 ; 00
1379: nop                 ; 00
137A: mul y, z            ; 55
137B: mul y, z            ; 55
137C: or z, x             ; AB
137D: or y, a             ; AA
137E: jmp $DFED, y        ; ED ED DF
1381: resume              ; F7 EF
1383: cmp x, a            ; 75
1384: mul y, a            ; 57
1385: and y, w            ; 95
1386: sub a, y            ; 4A
1387: cmp a, a            ; 89
1388: add x, a            ; 20
1389: pop z               ; 08
138A: nop                 ; 00
138B: store $5568, x      ; 10 68 55
138E: push y              ; 02
138F: xor a, x            ; D0
1390: cmp z, a            ; 7F
1391: nop                 ; 00
1392: jmp.lt $75BA        ; F4 BA 75
1395: nop                 ; FF
1396: or a, x             ; B3
1397: nop                 ; 00
1398: nop                 ; 00
1399: nop                 ; 00
139A: nop                 ; 00
139B: nop                 ; 00
139C: nop                 ; 00
139D: nop                 ; 00
139E: nop                 ; 00
139F: nop                 ; 00
13A0: nop                 ; 00
13A1: nop                 ; 00
13A2: or y, a             ; AA
13A3: inc w               ; 6A
13A4: shl x               ; D5
13A5: or a, w             ; B6
13A6: mul z, z            ; 5A
13A7: xor x, y            ; BD
13A8: cmp y, a            ; 7A
13A9: shr w               ; DD
13AA: not w               ; BA
13AB: shr a               ; DE
13AC: mul y, z            ; 55
13AD: add y, y            ; 22
13AE: mul y, y            ; 54
13AF: add y, a            ; 25
13B0: push y              ; 02
13B1: sub z, y            ; 40
13B2: nop                 ; 00
13B3: sub a, x            ; 49
13B4: mul z, x            ; 58
13B5: mul y, a            ; 57
13B6: nop                 ; 00
13B7: rol y               ; E0
13B8: xor x, w            ; BF
13B9: and x, z            ; 90
13BA: nop                 ; FF
13BB: shr y               ; DB
13BC: nop                 ; FF
13BD: or z, w             ; AD
13BE: shr a               ; DE
13BF: nop                 ; 00
13C0: nop                 ; 00
13C1: nop                 ; 00
13C2: nop                 ; 00
13C3: nop                 ; 00
13C4: nop                 ; 00
13C5: nop                 ; 00
13C6: nop                 ; 00
13C7: nop                 ; 00
13C8: nop                 ; 00
13C9: nop                 ; 00
13CA: mul y, z            ; 55
13CB: or z, w             ; AD
13CC: mul z, z            ; 5A
13CD: shl x               ; D5
13CE: dec z               ; 6E
13CF: jmp z, w            ; EB
13D0: shl z               ; D7
13D1: xor x, w            ; BF
13D2: jmp $5AB5, w        ; EF B5 5A
13D5: sub a, x            ; 49
13D6: sub z, z            ; 41
13D7: sub a, y            ; 4A
13D8: and a, y            ; A0
13D9: push y              ; 02
13DA: nop                 ; 00
13DB: push y              ; 02
13DC: ror a               ; E8
13DD: mul w, x            ; 5D
13DE: store $7F00, w      ; 13 00 7F
13E1: push z              ; 03
13E2: xor x, y            ; BD
13E3: int $AF             ; F6 AF
13E5: nop                 ; FB
13E6: inc a               ; 6B
13E7: push x              ; 01
13E8: nop                 ; 00
13E9: nop                 ; 00
13EA: nop                 ; 00
13EB: nop                 ; 00
13EC: nop                 ; 00
13ED: nop                 ; 00
13EE: nop                 ; 00
13EF: nop                 ; 00
13F0: nop                 ; 00
13F1: nop                 ; 00
13F2: or y, a             ; AA
13F3: or y, a             ; AA
13F4: mul y, z            ; 55
13F5: mul z, w            ; 5B
13F6: or z, x             ; AB
13F7: or z, w             ; AD
13F8: cmp y, a            ; 7A
13F9: jmp.z $AB5A         ; F5 5A AB
13FC: mul y, w            ; 56
13FD: add y, a            ; 25
13FE: add z, a            ; 2A
13FF: push x              ; 01
1400: pop z               ; 08
1401: nop                 ; 00
1402: and x, a            ; 92
1403: nop                 ; 00
1404: not z               ; B9
1405: mul y, w            ; 56
1406: push x              ; 01
1407: cmp w, x            ; 80
1408: nop                 ; FE
1409: jmp $EBFF, y        ; ED FF EB
140C: resume              ; F7 AE
140E: or z, w             ; AD
140F: push x              ; 01
1410: nop                 ; 00
1411: nop                 ; 00
1412: nop                 ; 00
1413: nop                 ; 00
1414: nop                 ; 00
1415: nop                 ; 00
1416: nop                 ; 00
1417: nop                 ; 00
1418: nop                 ; 00
1419: nop                 ; 00
141A: inc w               ; 6A
141B: or a, z             ; B5
141C: shl y               ; D6
141D: inc w               ; 6A
141E: jmp.z $D776         ; F5 76 D7
1421: or w, x             ; AF
1422: or a, w             ; B6
1423: or y, a             ; AA
1424: or a, z             ; B5
1425: cmpbit x            ; 8A 40
1427: mul y, y            ; 54
1428: sub z, a            ; 43
1429: and x, w            ; 91
142A: push w              ; 04
142B: add x, a            ; 20
142C: or y, z             ; A8
142D: cmp x, a            ; 75
142E: sub a, a            ; 4D
142F: nop                 ; 00
1430: nop                 ; F8
1431: rol x               ; DF
1432: xor x, w            ; BF
1433: jmp $7DDF, z        ; EE DF 7D
1436: not a               ; BB
1437: push y              ; 02
1438: nop                 ; 00
1439: nop                 ; 00
143A: nop                 ; 00
143B: nop                 ; 00
143C: nop                 ; 00
143D: nop                 ; 00
143E: nop                 ; 00
143F: nop                 ; 00
1440: nop                 ; 00
1441: nop                 ; 00
1442: mul y, z            ; 55
1443: mul y, z            ; 55
1444: or z, w             ; AD
1445: mul y, w            ; 56
1446: mul z, w            ; 5B
1447: shr y               ; DB
1448: not w               ; BA
1449: shr x               ; DA
144A: shl x               ; D5
144B: mul z, z            ; 5A
144C: mul y, z            ; 55
144D: add y, a            ; 25
144E: store $1555, z      ; 12 55 15
1451: sub w, x            ; 44
1452: add x, a            ; 20
1453: push a              ; 05
1454: jmp x, y            ; EA
1455: mul w, y            ; 5E
1456: add y, a            ; 25
1457: nop                 ; 00
1458: nop                 ; FA
1459: nop                 ; FF
145A: nop                 ; FF
145B: nop                 ; FB
145C: cmp z, a            ; 7F
145D: resume              ; F7 AF
145F: nop                 ; 00
1460: nop                 ; 00
1461: nop                 ; 00
1462: nop                 ; 00
1463: nop                 ; 00
1464: nop                 ; 00
1465: nop                 ; 00
1466: nop                 ; 00
1467: nop                 ; 00
1468: nop                 ; 00
1469: nop                 ; 00
146A: or y, a             ; AA
146B: shl y               ; D6
146C: inc w               ; 6A
146D: or a, z             ; B5
146E: or z, w             ; AD
146F: or y, a             ; AA
1470: jmp $AD6B, z        ; EE 6B AD
1473: mul y, w            ; 56
1474: mul y, z            ; 55
1475: call $4AA4          ; 15 A4 4A
1478: push y              ; 02
1479: pop w               ; 09
147A: pop w               ; 09
147B: store $F5B8, x      ; 10 B8 F5
147E: sub x, z            ; 37
147F: push x              ; 01
1480: rol y               ; E0
1481: nop                 ; FF
1482: nop                 ; FE
1483: xor x, z            ; BE
1484: rol x               ; DF
1485: xor x, z            ; BE
1486: not w               ; BA
1487: push y              ; 02
1488: nop                 ; 00
1489: nop                 ; 00
148A: nop                 ; 00
148B: nop                 ; 00
148C: nop                 ; 00
148D: nop                 ; 00
148E: nop                 ; 00
148F: nop                 ; 00
1490: nop                 ; 00
1491: nop                 ; 00
1492: shr x               ; DA
1493: or y, a             ; AA
1494: mul z, z            ; 5A
1495: or z, x             ; AB
1496: or a, w             ; B6
1497: dec y               ; 6D
1498: or z, x             ; AB
1499: or a, w             ; B6
149A: or y, a             ; AA
149B: or y, a             ; AA
149C: or y, a             ; AA
149D: or y, a             ; AA
149E: or y, a             ; AA
149F: mul y, y            ; 54
14A0: push x              ; 01
14A1: sub z, y            ; 40
14A2: add x, a            ; 20
14A3: nop                 ; 00
14A4: or y, z             ; A8
14A5: mul w, y            ; 5E
14A6: and w, z            ; 9D
14A7: nop                 ; 00
14A8: and a, y            ; A0
14A9: resume              ; F7 FF
14AB: rol x               ; DF
14AC: jmp $2FEB, w        ; EF EB 2F
14AF: nop                 ; 00
14B0: mul y, y            ; 54
14B1: push x              ; 01
14B2: nop                 ; 00
14B3: nop                 ; 00
14B4: nop                 ; 00
14B5: nop                 ; 00
14B6: nop                 ; 00
14B7: nop                 ; 00
14B8: nop                 ; 00
14B9: nop                 ; 00
14BA: or y, a             ; AA
14BB: inc w               ; 6A
14BC: or z, x             ; AB
14BD: shr x               ; DA
14BE: inc w               ; 6A
14BF: shl x               ; D5
14C0: int $5A             ; F6 5A
14C2: inc a               ; 6B
14C3: mul y, z            ; 55
14C4: mul y, z            ; 55
14C5: mul y, z            ; 55
14C6: mul y, z            ; 55
14C7: or x, w             ; A5
14C8: push w              ; 04
14C9: nop                 ; 00
14CA: push w              ; 04
14CB: sub w, y            ; 45
14CC: rol y               ; E0
14CD: jmp z, w            ; EB
14CE: jmp.z $4008         ; F5 08 40
14D1: nop                 ; FF
14D2: jmp $BFBF, w        ; EF BF BF
14D5: shr a               ; DE
14D6: or y, a             ; AA
14D7: pop a               ; 0A
14D8: or y, z             ; A8
14D9: pop a               ; 0A
14DA: nop                 ; 00
14DB: nop                 ; 00
14DC: nop                 ; 00
14DD: nop                 ; 00
14DE: nop                 ; 00
14DF: nop                 ; 00
14E0: nop                 ; 00
14E1: nop                 ; 00
14E2: or y, a             ; AA
14E3: or z, w             ; AD
14E4: inc w               ; 6A
14E5: or z, x             ; AB
14E6: or y, a             ; AA
14E7: or a, w             ; B6
14E8: mul z, z            ; 5A
14E9: inc a               ; 6B
14EA: or z, w             ; AD
14EB: or y, a             ; AA
14EC: or y, a             ; AA
14ED: add z, a            ; 2A
14EE: sub a, x            ; 49
14EF: add z, w            ; 29
14F0: cmp w, y            ; 81
14F1: cmp w, x            ; 80
14F2: add x, a            ; 20
14F3: store $BE92, x      ; 10 92 BE
14F6: mul y, z            ; 55
14F7: push z              ; 03
14F8: nop                 ; 00
14F9: nop                 ; FF
14FA: nop                 ; FF
14FB: nop                 ; FF
14FC: cmp x, a            ; 75
14FD: cmp y, a            ; 7A
14FE: sub a, z            ; 4B
14FF: store $02F4, a      ; 14 F4 02
1502: nop                 ; 00
1503: nop                 ; 00
1504: nop                 ; 00
1505: nop                 ; 00
1506: nop                 ; 00
1507: nop                 ; 00
1508: nop                 ; 00
1509: nop                 ; 00
150A: or z, x             ; AB
150B: inc w               ; 6A
150C: mul z, w            ; 5B
150D: dec y               ; 6D
150E: or z, w             ; AD
150F: mul y, z            ; 55
1510: mul y, a            ; 57
1511: or z, w             ; AD
1512: or y, a             ; AA
1513: or y, a             ; AA
1514: add z, a            ; 2A
1515: or y, w             ; A9
1516: or y, a             ; AA
1517: or y, a             ; AA
1518: pop a               ; 0A
1519: nop                 ; 00
151A: push w              ; 04
151B: nop                 ; 00
151C: or x, z             ; A4
151D: inc w               ; 6A
151E: rol x               ; DF
151F: store $B800, z      ; 12 00 B8
1522: nop                 ; FF
1523: cmp z, a            ; 7F
1524: rol x               ; DF
1525: shr x               ; DA
1526: and z, x            ; 97
1527: inc a               ; 6B
1528: nop                 ; F8
1529: call $0000          ; 15 00 00
152C: nop                 ; 00
152D: nop                 ; 00
152E: nop                 ; 00
152F: nop                 ; 00
1530: nop                 ; 00
1531: nop                 ; 00
1532: mul y, z            ; 55
1533: mul y, z            ; 55
1534: or z, w             ; AD
1535: mul y, z            ; 55
1536: or z, x             ; AB
1537: shr x               ; DA
1538: inc w               ; 6A
1539: mul y, z            ; 55
153A: mul y, z            ; 55
153B: mul y, z            ; 55
153C: or x, w             ; A5
153D: sub a, y            ; 4A
153E: and y, w            ; 95
153F: sub a, y            ; 4A
1540: push a              ; 05
1541: sub z, y            ; 40
1542: push y              ; 02
1543: sub z, w            ; 42
1544: add x, z            ; 1E
1545: not a               ; BB
1546: cmp x, a            ; 75
1547: load x, $FC00       ; 0B 00 FC
154A: nop                 ; FB
154B: nop                 ; FF
154C: inc w               ; 6A
154D: dec y               ; 6D
154E: shr w               ; DD
154F: or a, w             ; B6
1550: jmp.lt $0007        ; F4 07 00
1553: nop                 ; 00
1554: nop                 ; 00
1555: nop                 ; 00
1556: nop                 ; 00
1557: nop                 ; 00
1558: nop                 ; 00
1559: nop                 ; 00
155A: shr x               ; DA
155B: shr x               ; DA
155C: inc w               ; 6A
155D: mul y, z            ; 55
155E: shl x               ; D5
155F: or y, a             ; AA
1560: mul y, z            ; 55
1561: mul y, z            ; 55
1562: mul y, z            ; 55
1563: mul y, z            ; 55
1564: mul y, z            ; 55
1565: mul y, z            ; 55
1566: or x, w             ; A5
1567: mul y, y            ; 54
1568: pop w               ; 09
1569: nop                 ; 00
156A: nop                 ; 00
156B: pop z               ; 08
156C: dec a               ; 70
156D: or y, a             ; AA
156E: rol x               ; DF
156F: mul x, x            ; 4E
1570: push x              ; 01
1571: rol y               ; E0
1572: nop                 ; FF
1573: xor x, w            ; BF
1574: shr w               ; DD
1575: nop                 ; FB
1576: resume              ; F7 57
1578: xor a, y            ; D1
1579: add x, w            ; 1F
157A: nop                 ; 00
157B: nop                 ; 00
157C: nop                 ; 00
157D: nop                 ; 00
157E: nop                 ; 00
157F: nop                 ; 00
1580: nop                 ; 00
1581: nop                 ; 00
1582: or y, a             ; AA
1583: mul y, w            ; 56
1584: or z, x             ; AB
1585: or a, w             ; B6
1586: or a, w             ; B6
1587: or a, w             ; B6
1588: or y, a             ; AA
1589: mul y, w            ; 56
158A: mul y, z            ; 55
158B: mul y, z            ; 55
158C: add z, a            ; 2A
158D: mul y, z            ; 55
158E: or y, a             ; AA
158F: mul x, a            ; 52
1590: pop a               ; 0A
1591: nop                 ; 00
1592: cmp w, x            ; 80
1593: nop                 ; 00
1594: jmp $76ED, z        ; EE ED 76
1597: add w, x            ; 2B
1598: nop                 ; 00
1599: sub z, y            ; 40
159A: xor x, w            ; BF
159B: resume              ; F7 76
159D: xor x, w            ; BF
159E: mul w, x            ; 5D
159F: jmp $07A5, y        ; ED A5 07
15A2: nop                 ; 00
15A3: nop                 ; 00
15A4: nop                 ; 00
15A5: nop                 ; 00
15A6: nop                 ; 00
15A7: nop                 ; 00
15A8: nop                 ; 00
15A9: nop                 ; 00
15AA: or y, a             ; AA
15AB: or y, a             ; AA
15AC: or y, a             ; AA
15AD: or y, a             ; AA
15AE: mul y, z            ; 55
15AF: or z, x             ; AB
15B0: mul z, z            ; 5A
15B1: or y, w             ; A9
15B2: or y, a             ; AA
15B3: sub a, y            ; 4A
15B4: or x, w             ; A5
15B5: mul x, a            ; 52
15B6: and y, w            ; 95
15B7: sub a, y            ; 4A
15B8: call $0080          ; 15 80 00
15BB: sub z, y            ; 40
15BC: and w, y            ; 9C
15BD: not x               ; B7
15BE: shr w               ; DD
15BF: dec y               ; 6D
15C0: push x              ; 01
15C1: nop                 ; 00
15C2: or x, z             ; A4
15C3: store $FFD9, a      ; 14 D9 FF
15C6: resume              ; F7 BF
15C8: mul x, x            ; 4E
15C9: add w, w            ; 2E
15CA: nop                 ; 00
15CB: nop                 ; 00
15CC: nop                 ; 00
15CD: nop                 ; 00
15CE: nop                 ; 00
15CF: nop                 ; 00
15D0: nop                 ; 00
15D1: nop                 ; 00
15D2: mul y, w            ; 56
15D3: mul y, z            ; 55
15D4: mul y, z            ; 55
15D5: mul y, z            ; 55
15D6: shl x               ; D5
15D7: or y, a             ; AA
15D8: or y, a             ; AA
15D9: mul y, w            ; 56
15DA: mul y, z            ; 55
15DB: mul x, a            ; 52
15DC: or y, w             ; A9
15DD: mul y, y            ; 54
15DE: mul y, z            ; 55
15DF: or y, a             ; AA
15E0: store $0000, a      ; 14 00 00
15E3: store $B670, x      ; 10 70 B6
15E6: cmp y, x            ; 76
15E7: or w, x             ; AF
15E8: push x              ; 01
15E9: nop                 ; 00
15EA: store $F442, z      ; 12 42 F4
15ED: nop                 ; FF
15EE: mul w, z            ; 5F
15EF: mul y, z            ; 55
15F0: and w, x            ; 9B
15F1: push y              ; 02
15F2: nop                 ; 00
15F3: nop                 ; 00
15F4: nop                 ; 00
15F5: nop                 ; 00
15F6: nop                 ; 00
15F7: nop                 ; 00
15F8: nop                 ; 00
15F9: nop                 ; 00
15FA: or y, a             ; AA
15FB: or a, z             ; B5
15FC: or y, a             ; AA
15FD: inc w               ; 6A
15FE: or z, w             ; AD
15FF: mul z, z            ; 5A
1600: mul y, z            ; 55
1601: or y, w             ; A9
1602: or y, a             ; AA
1603: add z, a            ; 2A
1604: mul y, z            ; 55
1605: and y, w            ; 95
1606: mul x, a            ; 52
1607: mul y, z            ; 55
1608: add y, a            ; 25
1609: nop                 ; 00
160A: nop                 ; 00
160B: nop                 ; 00
160C: xor w, y            ; CC
160D: jmp $B95E           ; E9 5E B9
1610: pop a               ; 0A
1611: nop                 ; 00
1612: push w              ; 04
1613: store $FFE1, x      ; 10 E1 FF
1616: nop                 ; FF
1617: nop                 ; FF
1618: inc w               ; 6A
1619: pop z               ; 08
161A: nop                 ; 00
161B: nop                 ; 00
161C: nop                 ; 00
161D: nop                 ; 00
161E: nop                 ; 00
161F: nop                 ; 00
1620: nop                 ; 00
1621: nop                 ; 00
1622: mul z, z            ; 5A
1623: mul y, z            ; 55
1624: mul y, z            ; 55
1625: mul y, z            ; 55
1626: mul y, z            ; 55
1627: or x, w             ; A5
1628: or y, a             ; AA
1629: mul y, w            ; 56
162A: or x, w             ; A5
162B: mul y, y            ; 54
162C: add y, a            ; 25
162D: or x, w             ; A5
162E: or y, a             ; AA
162F: and x, a            ; 92
1630: add z, a            ; 2A
1631: nop                 ; 00
1632: nop                 ; 00
1633: cmp w, x            ; 80
1634: shr z               ; DC
1635: or y, x             ; A7
1636: jmp z, w            ; EB
1637: or w, x             ; AF
1638: push a              ; 05
1639: nop                 ; 00
163A: sub z, y            ; 40
163B: or y, a             ; AA
163C: ror x               ; E4
163D: nop                 ; FF
163E: nop                 ; FF
163F: or y, a             ; AA
1640: xor x, w            ; BF
1641: store $0000, a      ; 14 00 00
1644: nop                 ; 00
1645: nop                 ; 00
1646: nop                 ; 00
1647: nop                 ; 00
1648: nop                 ; 00
1649: nop                 ; 00
164A: mul y, z            ; 55
164B: mul y, z            ; 55
164C: or z, x             ; AB
164D: or y, a             ; AA
164E: or y, a             ; AA
164F: mul z, z            ; 5A
1650: mul y, z            ; 55
1651: or y, w             ; A9
1652: and y, z            ; 94
1653: and x, a            ; 92
1654: mul y, y            ; 54
1655: or y, w             ; A9
1656: mul y, y            ; 54
1657: mul y, z            ; 55
1658: mul y, z            ; 55
1659: push x              ; 01
165A: cmp w, z            ; 82
165B: nop                 ; 00
165C: dec a               ; 70
165D: shr a               ; DE
165E: cmp y, a            ; 7A
165F: jmp.z $0016         ; F5 16 00
1662: and y, z            ; 94
1663: sub w, a            ; 48
1664: cmp a, a            ; 89
1665: nop                 ; FF
1666: nop                 ; FF
1667: nop                 ; FF
1668: jmp x, y            ; EA
1669: push x              ; 01
166A: nop                 ; 00
166B: nop                 ; 00
166C: nop                 ; 00
166D: nop                 ; 00
166E: nop                 ; 00
166F: nop                 ; 00
1670: nop                 ; 00
1671: nop                 ; 00
1672: or y, a             ; AA
1673: or y, a             ; AA
1674: mul y, y            ; 54
1675: mul y, z            ; 55
1676: mul y, z            ; 55
1677: or x, w             ; A5
1678: or y, a             ; AA
1679: mul y, w            ; 56
167A: mul y, z            ; 55
167B: mul y, z            ; 55
167C: mul y, z            ; 55
167D: mul y, z            ; 55
167E: or x, w             ; A5
167F: add z, a            ; 2A
1680: or y, w             ; A9
1681: nop                 ; 00
1682: add x, a            ; 20
1683: nop                 ; 00
1684: rol y               ; E0
1685: shl a               ; D9
1686: or z, a             ; AE
1687: xor x, y            ; BD
1688: return              ; 16
1689: nop                 ; 00
168A: nop                 ; 00
168B: or x, w             ; A5
168C: and a, w            ; A2
168D: nop                 ; FF
168E: nop                 ; FF
168F: or z, x             ; AB
1690: not w               ; BA
1691: push y              ; 02
1692: nop                 ; 00
1693: nop                 ; 00
1694: nop                 ; 00
1695: nop                 ; 00
1696: nop                 ; 00
1697: nop                 ; 00
1698: nop                 ; 00
1699: nop                 ; 00
169A: mul y, z            ; 55
169B: mul y, z            ; 55
169C: or z, x             ; AB
169D: or y, a             ; AA
169E: or y, a             ; AA
169F: mul z, z            ; 5A
16A0: mul y, z            ; 55
16A1: add z, w            ; 29
16A2: or x, w             ; A5
16A3: add y, w            ; 24
16A4: sub a, x            ; 49
16A5: sub a, y            ; 4A
16A6: add z, a            ; 2A
16A7: or y, w             ; A9
16A8: sub a, y            ; 4A
16A9: load x, $0400       ; 0B 00 04
16AC: nop                 ; 00
16AD: and z, x            ; 97
16AE: cmp z, x            ; 7B
16AF: ror w               ; E7
16B0: pop x               ; 06
16B1: nop                 ; 00
16B2: mul x, z            ; 50
16B3: add z, z            ; 28
16B4: load z, $FFFF       ; 0D FF FF
16B7: xor x, z            ; BE
16B8: resume              ; F7 0F
16BA: nop                 ; 00
16BB: nop                 ; 00
16BC: nop                 ; 00
16BD: nop                 ; 00
16BE: nop                 ; 00
16BF: nop                 ; 00
16C0: nop                 ; 00
16C1: nop                 ; 00
16C2: or y, a             ; AA
16C3: or y, a             ; AA
16C4: or y, a             ; AA
16C5: or y, a             ; AA
16C6: or y, a             ; AA
16C7: or y, a             ; AA
16C8: or y, a             ; AA
16C9: sub a, y            ; 4A
16CA: mul y, z            ; 55
16CB: mul y, z            ; 55
16CC: mul y, z            ; 55
16CD: or y, w             ; A9
16CE: or y, a             ; AA
16CF: sub a, y            ; 4A
16D0: mul x, a            ; 52
16D1: push w              ; 04
16D2: nop                 ; 00
16D3: nop                 ; 00
16D4: push w              ; 04
16D5: xor w, a            ; CF
16D6: or y, a             ; AA
16D7: xor x, y            ; BD
16D8: push y              ; 02
16D9: nop                 ; 00
16DA: nop                 ; 00
16DB: sub w, y            ; 45
16DC: mul x, w            ; 51
16DD: nop                 ; FF
16DE: mul w, x            ; 5D
16DF: jmp z, w            ; EB
16E0: not w               ; BA
16E1: add x, w            ; 1F
16E2: ror a               ; E8
16E3: nop                 ; 00
16E4: nop                 ; 00
16E5: nop                 ; 00
16E6: nop                 ; 00
16E7: nop                 ; 00
16E8: nop                 ; 00
16E9: nop                 ; 00
16EA: mul y, z            ; 55
16EB: mul y, z            ; 55
16EC: mul y, z            ; 55
16ED: mul y, z            ; 55
16EE: mul y, z            ; 55
16EF: mul y, z            ; 55
16F0: mul y, z            ; 55
16F1: or y, a             ; AA
16F2: mul y, y            ; 54
16F3: or y, a             ; AA
16F4: add y, w            ; 24
16F5: mul y, z            ; 55
16F6: sub a, x            ; 49
16F7: mul y, z            ; 55
16F8: mul y, z            ; 55
16F9: add w, x            ; 2B
16FA: nop                 ; 00
16FB: nop                 ; 00
16FC: nop                 ; 00
16FD: not y               ; B8
16FE: jmp $57D7, z        ; EE D7 57
1701: nop                 ; 00
1702: sub z, y            ; 40
1703: mul x, z            ; 50
1704: return              ; 16
1705: nop                 ; FC
1706: nop                 ; FF
1707: xor x, z            ; BE
1708: resume              ; F7 B5
170A: or y, a             ; AA
170B: push x              ; 01
170C: nop                 ; 00
170D: nop                 ; 00
170E: nop                 ; 00
170F: nop                 ; 00
1710: nop                 ; 00
1711: nop                 ; 00
1712: or y, a             ; AA
1713: or y, a             ; AA
1714: mul z, z            ; 5A
1715: mul y, z            ; 55
1716: mul y, z            ; 55
1717: mul y, z            ; 55
1718: sub a, x            ; 49
1719: or y, w             ; A9
171A: and x, a            ; 92
171B: and x, a            ; 92
171C: or y, a             ; AA
171D: and x, a            ; 92
171E: add z, a            ; 2A
171F: mul y, z            ; 55
1720: or x, w             ; A5
1721: mul y, y            ; 54
1722: nop                 ; 00
1723: sub z, y            ; 40
1724: sub z, y            ; 40
1725: xor x, a            ; C0
1726: not a               ; BB
1727: int $02             ; F6 02
1729: nop                 ; 00
172A: nop                 ; 00
172B: cmp w, y            ; 81
172C: or y, z             ; A8
172D: nop                 ; FE
172E: dec w               ; 6F
172F: jmp z, w            ; EB
1730: rol x               ; DF
1731: cmp z, a            ; 7F
1732: nop                 ; FB
1733: push x              ; 01
1734: nop                 ; 00
1735: nop                 ; 00
1736: nop                 ; 00
1737: nop                 ; 00
1738: nop                 ; 00
1739: nop                 ; 00
173A: mul y, z            ; 55
173B: mul y, z            ; 55
173C: mul y, z            ; 55
173D: mul y, z            ; 55
173E: mul y, z            ; 55
173F: mul y, z            ; 55
1740: or y, a             ; AA
1741: add z, a            ; 2A
1742: mul y, z            ; 55
1743: mul y, z            ; 55
1744: and y, w            ; 95
1745: mul y, y            ; 54
1746: or x, w             ; A5
1747: mul x, a            ; 52
1748: add z, w            ; 29
1749: mul y, z            ; 55
174A: push x              ; 01
174B: nop                 ; 00
174C: nop                 ; 00
174D: cmp w, a            ; 84
174E: or y, a             ; AA
174F: shr w               ; DD
1750: return              ; 16
1751: nop                 ; 00
1752: nop                 ; 00
1753: add z, a            ; 2A
1754: add y, a            ; 25
1755: nop                 ; F8
1756: rol x               ; DF
1757: nop                 ; FF
1758: nop                 ; FF
1759: or z, a             ; AE
175A: mul y, w            ; 56
175B: pop y               ; 07
175C: nop                 ; 00
175D: nop                 ; 00
175E: nop                 ; 00
175F: nop                 ; 00
1760: nop                 ; 00
1761: nop                 ; 00
1762: or y, a             ; AA
1763: or y, a             ; AA
1764: or y, a             ; AA
1765: or y, a             ; AA
1766: or y, a             ; AA
1767: and x, a            ; 92
1768: and x, a            ; 92
1769: mul x, a            ; 52
176A: mul y, z            ; 55
176B: mul y, z            ; 55
176C: mul x, a            ; 52
176D: add y, a            ; 25
176E: mul y, z            ; 55
176F: sub a, y            ; 4A
1770: and y, w            ; 95
1771: and x, a            ; 92
1772: nop                 ; 00
1773: nop                 ; 00
1774: nop                 ; 00
1775: sub z, y            ; 40
1776: nop                 ; FB
1777: mul y, w            ; 56
1778: push z              ; 03
1779: nop                 ; 00
177A: nop                 ; 00
177B: cmp w, x            ; 80
177C: mul y, y            ; 54
177D: or y, w             ; A9
177E: mul x, a            ; 52
177F: nop                 ; 00
1780: and a, y            ; A0
1781: resume              ; F7 FA
1783: pop y               ; 07
1784: nop                 ; 00
1785: nop                 ; 00
1786: nop                 ; 00
1787: nop                 ; 00
1788: nop                 ; 00
1789: nop                 ; 00
178A: or y, a             ; AA
178B: or y, a             ; AA
178C: mul y, w            ; 56
178D: mul y, z            ; 55
178E: mul y, z            ; 55
178F: mul y, z            ; 55
1790: mul y, z            ; 55
1791: or y, a             ; AA
1792: add y, w            ; 24
1793: sub a, x            ; 49
1794: mul y, z            ; 55
1795: or y, a             ; AA
1796: mul x, a            ; 52
1797: mul y, z            ; 55
1798: or y, a             ; AA
1799: or y, a             ; AA
179A: pop x               ; 06
179B: nop                 ; 00
179C: nop                 ; 00
179D: nop                 ; 00
179E: or z, y             ; AC
179F: cmp z, w            ; 7E
17A0: store $0000, w      ; 13 00 00
17A3: add z, z            ; 28
17A4: sub a, x            ; 49
17A5: push y              ; 02
17A6: nop                 ; 00
17A7: nop                 ; 00
17A8: rol y               ; E0
17A9: or w, x             ; AF
17AA: nop                 ; FD
17AB: load z, $0000       ; 0D 00 00
17AE: nop                 ; 00
17AF: nop                 ; 00
17B0: nop                 ; 00
17B1: nop                 ; 00
17B2: mul y, z            ; 55
17B3: mul y, z            ; 55
17B4: mul y, z            ; 55
17B5: mul y, z            ; 55
17B6: and y, w            ; 95
17B7: add y, w            ; 24
17B8: or x, w             ; A5
17B9: sub a, y            ; 4A
17BA: mul y, z            ; 55
17BB: mul y, z            ; 55
17BC: or x, w             ; A5
17BD: mul x, a            ; 52
17BE: sub a, y            ; 4A
17BF: or y, w             ; A9
17C0: mul x, a            ; 52
17C1: mul x, a            ; 52
17C2: pop w               ; 09
17C3: nop                 ; 00
17C4: nop                 ; 00
17C5: add x, a            ; 20
17C6: or a, y             ; B4
17C7: shr y               ; DB
17C8: push a              ; 05
17C9: nop                 ; 00
17CA: nop                 ; 00
17CB: nop                 ; 00
17CC: or x, z             ; A4
17CD: nop                 ; 00
17CE: nop                 ; 00
17CF: sub a, x            ; 49
17D0: sub z, w            ; 42
17D1: or a, z             ; B5
17D2: mul y, w            ; 56
17D3: load a, $0000       ; 0F 00 00
17D6: nop                 ; 00
17D7: nop                 ; 00
17D8: nop                 ; 00
17D9: nop                 ; 00
17DA: mul y, z            ; 55
17DB: mul y, z            ; 55
17DC: mul y, z            ; 55
17DD: mul y, z            ; 55
17DE: mul y, z            ; 55
17DF: mul y, z            ; 55
17E0: add z, w            ; 29
17E1: add z, w            ; 29
17E2: mul y, z            ; 55
17E3: mul y, z            ; 55
17E4: add z, w            ; 29
17E5: and y, w            ; 95
17E6: add z, a            ; 2A
17E7: and y, w            ; 95
17E8: sub a, y            ; 4A
17E9: add z, w            ; 29
17EA: sub x, x            ; 35
17EB: nop                 ; 00
17EC: nop                 ; 00
17ED: nop                 ; 00
17EE: and a, y            ; A0
17EF: cmp y, x            ; 76
17F0: load x, $0000       ; 0B 00 00
17F3: sub z, y            ; 40
17F4: and x, w            ; 91
17F5: pop a               ; 0A
17F6: nop                 ; 00
17F7: cmp w, x            ; 80
17F8: cmp w, a            ; 84
17F9: shr y               ; DB
17FA: nop                 ; FF
17FB: sub y, y            ; 3B
17FC: nop                 ; 00
17FD: nop                 ; 00
17FE: nop                 ; 00
17FF: nop                 ; 00
1800: nop                 ; 00
1801: nop                 ; 00
1802: mul y, z            ; 55
1803: mul y, z            ; 55
1804: mul y, z            ; 55
1805: mul y, z            ; 55
1806: or y, w             ; A9
1807: sub a, y            ; 4A
1808: sub a, y            ; 4A
1809: mul y, z            ; 55
180A: sub a, x            ; 49
180B: add z, a            ; 2A
180C: mul y, z            ; 55
180D: or x, w             ; A5
180E: mul y, y            ; 54
180F: or x, w             ; A5
1810: mul y, y            ; 54
1811: or x, w             ; A5
1812: and x, a            ; 92
1813: nop                 ; 00
1814: nop                 ; 00
1815: nop                 ; 00
1816: xor y, x            ; C1
1817: mul z, z            ; 5A
1818: push x              ; 01
1819: nop                 ; 00
181A: nop                 ; 00
181B: nop                 ; 00
181C: sub z, y            ; 40
181D: push y              ; 02
181E: add z, w            ; 29
181F: add z, a            ; 2A
1820: cmp w, z            ; 82
1821: dec z               ; 6E
1822: jmp z, w            ; EB
1823: add w, w            ; 2E
1824: nop                 ; 00
1825: nop                 ; 00
1826: nop                 ; 00
1827: nop                 ; 00
1828: nop                 ; 00
1829: nop                 ; 00
182A: mul y, z            ; 55
182B: mul y, z            ; 55
182C: mul y, z            ; 55
182D: mul y, z            ; 55
182E: add y, a            ; 25
182F: or y, w             ; A9
1830: or y, a             ; AA
1831: or x, z             ; A4
1832: or y, a             ; AA
1833: mul x, a            ; 52
1834: and y, w            ; 95
1835: mul y, y            ; 54
1836: or x, w             ; A5
1837: mul y, y            ; 54
1838: mul y, z            ; 55
1839: sub a, y            ; 4A
183A: or y, a             ; AA
183B: nop                 ; 00
183C: nop                 ; 00
183D: nop                 ; 00
183E: nop                 ; 00
183F: inc w               ; 6A
1840: store $0000, w      ; 13 00 00
1843: nop                 ; 00
1844: and y, w            ; 95
1845: nop                 ; 00
1846: cmp w, x            ; 80
1847: cmp w, x            ; 80
1848: store $BED5, a      ; 14 D5 BE
184B: dec w               ; 6F
184C: nop                 ; 00
184D: nop                 ; 00
184E: nop                 ; 00
184F: nop                 ; 00
1850: nop                 ; 00
1851: nop                 ; 00
1852: or y, a             ; AA
1853: or y, a             ; AA
1854: or y, a             ; AA
1855: or y, a             ; AA
1856: or y, a             ; AA
1857: add z, a            ; 2A
1858: add z, w            ; 29
1859: and y, w            ; 95
185A: or y, a             ; AA
185B: sub a, y            ; 4A
185C: or y, w             ; A9
185D: sub a, y            ; 4A
185E: add z, w            ; 29
185F: and y, w            ; 95
1860: and x, a            ; 92
1861: or y, a             ; AA
1862: mul x, a            ; 52
1863: push x              ; 01
1864: nop                 ; 00
1865: nop                 ; 00
1866: nop                 ; 00
1867: cmp y, a            ; 7A
1868: push x              ; 01
1869: nop                 ; 00
186A: nop                 ; 00
186B: nop                 ; 00
186C: nop                 ; 00
186D: nop                 ; 00
186E: add z, z            ; 28
186F: or y, a             ; AA
1870: push y              ; 02
1871: nop                 ; FD
1872: shl z               ; D7
1873: xor x, y            ; BD
1874: nop                 ; 00
1875: nop                 ; 00
1876: nop                 ; 00
1877: nop                 ; 00
1878: nop                 ; 00
1879: nop                 ; 00
187A: mul y, z            ; 55
187B: mul y, z            ; 55
187C: mul y, z            ; 55
187D: mul y, z            ; 55
187E: and y, w            ; 95
187F: or x, z             ; A4
1880: sub a, y            ; 4A
1881: or y, w             ; A9
1882: add y, w            ; 24
1883: add z, w            ; 29
1884: or x, w             ; A5
1885: mul x, a            ; 52
1886: or y, a             ; AA
1887: mul x, a            ; 52
1888: mul y, z            ; 55
1889: or y, w             ; A9
188A: and y, z            ; 94
188B: pop a               ; 0A
188C: nop                 ; 00
188D: nop                 ; 00
188E: nop                 ; 00
188F: sub z, y            ; 40
1890: load x, $0000       ; 0B 00 00
1893: nop                 ; 00
1894: sub w, a            ; 48
1895: nop                 ; 00
1896: cmp w, x            ; 80
1897: add y, y            ; 22
1898: add z, z            ; 28
1899: inc w               ; 6A
189A: xor x, w            ; BF
189B: dec w               ; 6F
189C: nop                 ; 00
189D: nop                 ; 00
189E: nop                 ; 00
189F: nop                 ; 00
18A0: nop                 ; 00
18A1: nop                 ; 00
18A2: mul y, z            ; 55
18A3: mul y, z            ; 55
18A4: mul y, z            ; 55
18A5: mul y, z            ; 55
18A6: or y, w             ; A9
18A7: sub a, y            ; 4A
18A8: mul x, a            ; 52
18A9: sub a, y            ; 4A
18AA: mul y, z            ; 55
18AB: and y, w            ; 95
18AC: mul y, y            ; 54
18AD: or y, a             ; AA
18AE: mul x, a            ; 52
18AF: mul y, z            ; 55
18B0: or y, a             ; AA
18B1: sub a, y            ; 4A
18B2: or x, w             ; A5
18B3: or y, a             ; AA
18B4: nop                 ; 00
18B5: nop                 ; 00
18B6: nop                 ; 00
18B7: and a, y            ; A0
18B8: push x              ; 01
18B9: nop                 ; 00
18BA: nop                 ; 00
18BB: nop                 ; 00
18BC: add x, a            ; 20
18BD: nop                 ; 00
18BE: mul x, w            ; 51
18BF: cmp a, w            ; 88
18C0: pop a               ; 0A
18C1: xor x, x            ; BC
18C2: jmp $00B6, y        ; ED B6 00
18C5: nop                 ; 00
18C6: nop                 ; 00
18C7: nop                 ; 00
18C8: nop                 ; 00
18C9: nop                 ; 00
18CA: mul y, z            ; 55
18CB: mul y, z            ; 55
18CC: mul y, z            ; 55
18CD: and y, w            ; 95
18CE: sub a, y            ; 4A
18CF: or y, w             ; A9
18D0: or y, a             ; AA
18D1: mul x, a            ; 52
18D2: and x, a            ; 92
18D3: or x, z             ; A4
18D4: mul x, a            ; 52
18D5: and y, w            ; 95
18D6: add z, a            ; 2A
18D7: sub a, x            ; 49
18D8: sub a, x            ; 49
18D9: add z, a            ; 2A
18DA: add z, w            ; 29
18DB: sub a, x            ; 49
18DC: or z, w             ; AD
18DD: nop                 ; 00
18DE: nop                 ; 00
18DF: nop                 ; 00
18E0: push x              ; 01
18E1: nop                 ; 00
18E2: nop                 ; 00
18E3: nop                 ; 00
18E4: cmp w, x            ; 80
18E5: nop                 ; 00
18E6: cmp w, x            ; 80
18E7: mul x, a            ; 52
18E8: mul x, a            ; 52
18E9: ror a               ; E8
18EA: nop                 ; FF
18EB: nop                 ; FD
18EC: push x              ; 01
18ED: nop                 ; 00
18EE: nop                 ; 00
18EF: nop                 ; 00
18F0: nop                 ; 00
18F1: nop                 ; 00
18F2: mul y, z            ; 55
18F3: mul y, z            ; 55
18F4: mul y, z            ; 55
18F5: or y, w             ; A9
18F6: add z, a            ; 2A
18F7: and y, w            ; 95
18F8: add y, w            ; 24
18F9: and y, w            ; 95
18FA: or y, a             ; AA
18FB: add z, a            ; 2A
18FC: and y, w            ; 95
18FD: mul x, a            ; 52
18FE: sub a, y            ; 4A
18FF: mul y, z            ; 55
1900: mul y, z            ; 55
1901: mul y, z            ; 55
1902: mul y, z            ; 55
1903: mul y, z            ; 55
1904: add y, a            ; 25
1905: push y              ; 02
1906: nop                 ; 00
1907: nop                 ; 00
1908: nop                 ; 00
1909: nop                 ; 00
190A: nop                 ; 00
190B: nop                 ; 00
190C: nop                 ; 00
190D: nop                 ; 00
190E: nop                 ; 00
190F: cmp w, a            ; 84
1910: sub w, a            ; 48
1911: not y               ; B8
1912: or a, z             ; B5
1913: dec w               ; 6F
1914: push z              ; 03
1915: nop                 ; 00
1916: nop                 ; 00
1917: nop                 ; 00
1918: nop                 ; 00
1919: nop                 ; 00
191A: mul y, z            ; 55
191B: mul y, z            ; 55
191C: mul y, z            ; 55
191D: mul y, z            ; 55
191E: mul x, a            ; 52
191F: or x, w             ; A5
1920: or y, a             ; AA
1921: mul x, a            ; 52
1922: or x, w             ; A5
1923: or x, z             ; A4
1924: mul y, y            ; 54
1925: mul y, z            ; 55
1926: or y, w             ; A9
1927: add z, a            ; 2A
1928: mul y, z            ; 55
1929: sub a, x            ; 49
192A: and y, w            ; 95
192B: add y, w            ; 24
192C: or y, w             ; A9
192D: push w              ; 04
192E: nop                 ; 00
192F: nop                 ; 00
1930: pop z               ; 08
1931: nop                 ; 00
1932: nop                 ; 00
1933: nop                 ; 00
1934: nop                 ; 00
1935: pop z               ; 08
1936: sub z, y            ; 40
1937: add z, w            ; 29
1938: store $FF61, z      ; 12 61 FF
193B: nop                 ; FB
193C: pop x               ; 06
193D: nop                 ; 00
193E: nop                 ; 00
193F: nop                 ; 00
1940: nop                 ; 00
1941: nop                 ; 00
1942: mul y, z            ; 55
1943: mul y, z            ; 55
1944: mul y, z            ; 55
1945: mul y, z            ; 55
1946: mul y, z            ; 55
1947: add z, a            ; 2A
1948: sub a, x            ; 49
1949: sub a, y            ; 4A
194A: sub a, y            ; 4A
194B: and y, w            ; 95
194C: mul x, a            ; 52
194D: sub a, y            ; 4A
194E: and y, w            ; 95
194F: or x, z             ; A4
1950: and x, a            ; 92
1951: add z, a            ; 2A
1952: or y, w             ; A9
1953: or y, a             ; AA
1954: sub a, y            ; 4A
1955: push a              ; 05
1956: nop                 ; 00
1957: nop                 ; 00
1958: nop                 ; 00
1959: nop                 ; 00
195A: nop                 ; 00
195B: nop                 ; 00
195C: nop                 ; 00
195D: nop                 ; 00
195E: nop                 ; 00
195F: or x, z             ; A4
1960: or x, z             ; A4
1961: jmp $EF6D, a        ; F0 6D EF
1964: load x, $0000       ; 0B 00 00
1967: nop                 ; 00
1968: nop                 ; 00
1969: nop                 ; 00
196A: or y, a             ; AA
196B: or y, a             ; AA
196C: or y, a             ; AA
196D: or y, a             ; AA
196E: or y, a             ; AA
196F: mul x, a            ; 52
1970: mul y, z            ; 55
1971: or y, w             ; A9
1972: mul x, a            ; 52
1973: mul x, a            ; 52
1974: and y, z            ; 94
1975: mul x, a            ; 52
1976: or x, w             ; A5
1977: or y, a             ; AA
1978: mul y, y            ; 54
1979: or y, a             ; AA
197A: sub a, y            ; 4A
197B: and x, a            ; 92
197C: add z, a            ; 2A
197D: add z, w            ; 29
197E: nop                 ; 00
197F: nop                 ; 00
1980: nop                 ; 00
1981: nop                 ; 00
1982: nop                 ; 00
1983: nop                 ; 00
1984: nop                 ; 00
1985: cmp w, x            ; 80
1986: nop                 ; 00
1987: pop z               ; 08
1988: pop w               ; 09
1989: sub z, w            ; 42
198A: rol x               ; DF
198B: not a               ; BB
198C: add x, z            ; 1E
198D: nop                 ; 00
198E: nop                 ; 00
198F: nop                 ; 00
1990: nop                 ; 00
1991: nop                 ; 00
1992: mul y, z            ; 55
1993: mul y, z            ; 55
1994: mul y, z            ; 55
1995: mul y, z            ; 55
1996: or x, w             ; A5
1997: sub a, y            ; 4A
1998: and x, a            ; 92
1999: sub a, y            ; 4A
199A: add z, a            ; 2A
199B: and y, w            ; 95
199C: mul x, a            ; 52
199D: mul y, z            ; 55
199E: or y, a             ; AA
199F: sub a, y            ; 4A
19A0: mul y, z            ; 55
19A1: sub a, x            ; 49
19A2: mul y, z            ; 55
19A3: mul y, z            ; 55
19A4: or y, a             ; AA
19A5: and x, a            ; 92
19A6: nop                 ; 00
19A7: nop                 ; 00
19A8: add x, a            ; 20
19A9: nop                 ; 00
19AA: nop                 ; 00
19AB: nop                 ; 00
19AC: nop                 ; 00
19AD: nop                 ; 00
19AE: cmp w, x            ; 80
19AF: or x, z             ; A4
19B0: or x, z             ; A4
19B1: jmp $EEF5, a        ; F0 F5 EE
19B4: load z, $0000       ; 0D 00 00
19B7: nop                 ; 00
19B8: nop                 ; 00
19B9: nop                 ; 00
19BA: mul y, z            ; 55
19BB: mul y, z            ; 55
19BC: mul y, z            ; 55
19BD: or y, a             ; AA
19BE: and y, z            ; 94
19BF: mul y, y            ; 54
19C0: mul y, z            ; 55
19C1: or y, w             ; A9
19C2: or x, z             ; A4
19C3: or x, z             ; A4
19C4: and y, z            ; 94
19C5: mul y, y            ; 54
19C6: mul y, z            ; 55
19C7: mul x, a            ; 52
19C8: sub a, y            ; 4A
19C9: mul y, z            ; 55
19CA: mul x, a            ; 52
19CB: or x, w             ; A5
19CC: mul x, a            ; 52
19CD: add y, a            ; 25
19CE: push x              ; 01
19CF: nop                 ; 00
19D0: nop                 ; 00
19D1: nop                 ; 00
19D2: nop                 ; 00
19D3: nop                 ; 00
19D4: nop                 ; 00
19D5: store $0008, x      ; 10 08 00
19D8: store $BFB1, y      ; 11 B1 BF
19DB: mul y, a            ; 57
19DC: cmp z, x            ; 7B
19DD: nop                 ; 00
19DE: nop                 ; 00
19DF: nop                 ; 00
19E0: nop                 ; 00
19E1: nop                 ; 00
19E2: mul y, z            ; 55
19E3: mul y, z            ; 55
19E4: mul y, z            ; 55
19E5: mul y, z            ; 55
19E6: mul y, z            ; 55
19E7: and y, w            ; 95
19E8: add y, w            ; 24
19E9: and y, w            ; 95
19EA: sub a, y            ; 4A
19EB: call $4921          ; 15 21 49
19EE: sub a, x            ; 49
19EF: and y, w            ; 95
19F0: mul x, a            ; 52
19F1: mul y, z            ; 55
19F2: and y, w            ; 95
19F3: and y, z            ; 94
19F4: and y, z            ; 94
19F5: and y, z            ; 94
19F6: push w              ; 04
19F7: nop                 ; 00
19F8: nop                 ; 00
19F9: push x              ; 01
19FA: nop                 ; 00
19FB: cmp w, x            ; 80
19FC: nop                 ; 00
19FD: nop                 ; 00
19FE: nop                 ; 00
19FF: or y, z             ; A8
1A00: sub w, x            ; 44
1A01: nop                 ; F8
1A02: int $ED             ; F6 ED
1A04: add z, a            ; 2A
1A05: nop                 ; 00
1A06: nop                 ; 00
1A07: nop                 ; 00
1A08: nop                 ; 00
1A09: nop                 ; 00
1A0A: mul y, z            ; 55
1A0B: mul y, z            ; 55
1A0C: sub a, x            ; 49
1A0D: sub a, x            ; 49
1A0E: mul y, z            ; 55
1A0F: or x, w             ; A5
1A10: or y, a             ; AA
1A11: or x, z             ; A4
1A12: mul x, a            ; 52
1A13: mul x, a            ; 52
1A14: sub a, y            ; 4A
1A15: add z, a            ; 2A
1A16: mul y, z            ; 55
1A17: or y, w             ; A9
1A18: or y, a             ; AA
1A19: add y, w            ; 24
1A1A: or y, w             ; A9
1A1B: mul x, a            ; 52
1A1C: mul y, z            ; 55
1A1D: mul y, z            ; 55
1A1E: pop w               ; 09
1A1F: nop                 ; 00
1A20: nop                 ; 00
1A21: nop                 ; 00
1A22: nop                 ; 00
1A23: nop                 ; 00
1A24: nop                 ; 00
1A25: cmp w, x            ; 80
1A26: nop                 ; 00
1A27: push x              ; 01
1A28: store $6FA8, y      ; 11 A8 6F
1A2B: not x               ; B7
1A2C: int $00             ; F6 00
1A2E: nop                 ; 00
1A2F: nop                 ; 00
1A30: nop                 ; 00
1A31: nop                 ; 00
1A32: mul y, z            ; 55
1A33: mul y, z            ; 55
1A34: mul y, z            ; 55
1A35: mul y, z            ; 55
1A36: or x, w             ; A5
1A37: mul y, y            ; 54
1A38: and x, a            ; 92
1A39: add z, a            ; 2A
1A3A: and y, w            ; 95
1A3B: or y, a             ; AA
1A3C: and x, a            ; 92
1A3D: mul x, a            ; 52
1A3E: mul y, z            ; 55
1A3F: mul y, z            ; 55
1A40: sub a, y            ; 4A
1A41: mul y, z            ; 55
1A42: mul y, z            ; 55
1A43: mul y, z            ; 55
1A44: mul x, a            ; 52
1A45: mul y, z            ; 55
1A46: add z, a            ; 2A
1A47: nop                 ; 00
1A48: nop                 ; 00
1A49: pop z               ; 08
1A4A: nop                 ; 00
1A4B: nop                 ; 00
1A4C: nop                 ; 00
1A4D: nop                 ; 00
1A4E: cmp w, x            ; 80
1A4F: sub z, y            ; 40
1A50: cmp w, a            ; 84
1A51: nop                 ; FC
1A52: nop                 ; FA
1A53: shl a               ; D9
1A54: mul y, z            ; 55
1A55: push x              ; 01
1A56: nop                 ; 00
1A57: nop                 ; 00
1A58: nop                 ; 00
1A59: nop                 ; 00
1A5A: or y, a             ; AA
1A5B: or y, a             ; AA
1A5C: or y, a             ; AA
1A5D: or y, a             ; AA
1A5E: mul y, y            ; 54
1A5F: mul y, z            ; 55
1A60: mul y, z            ; 55
1A61: sub a, x            ; 49
1A62: or y, w             ; A9
1A63: and x, a            ; 92
1A64: or x, z             ; A4
1A65: add y, w            ; 24
1A66: sub a, x            ; 49
1A67: sub a, y            ; 4A
1A68: mul y, z            ; 55
1A69: or y, a             ; AA
1A6A: sub a, y            ; 4A
1A6B: sub a, y            ; 4A
1A6C: and y, w            ; 95
1A6D: or x, z             ; A4
1A6E: and x, a            ; 92
1A6F: nop                 ; 00
1A70: nop                 ; 00
1A71: nop                 ; 00
1A72: nop                 ; 00
1A73: nop                 ; 00
1A74: nop                 ; 00
1A75: nop                 ; 00
1A76: nop                 ; 00
1A77: push w              ; 04
1A78: store $6FD4, y      ; 11 D4 6F
1A7B: not x               ; B7
1A7C: int $00             ; F6 00
1A7E: nop                 ; 00
1A7F: nop                 ; 00
1A80: nop                 ; 00
1A81: nop                 ; 00
1A82: mul y, z            ; 55
1A83: or y, a             ; AA
1A84: or y, a             ; AA
1A85: or y, a             ; AA
1A86: add z, a            ; 2A
1A87: and y, w            ; 95
1A88: add y, w            ; 24
1A89: mul y, z            ; 55
1A8A: add z, a            ; 2A
1A8B: mul y, z            ; 55
1A8C: call $5492          ; 15 92 54
1A8F: mul y, z            ; 55
1A90: or y, w             ; A9
1A91: and x, a            ; 92
1A92: mul y, y            ; 54
1A93: mul y, z            ; 55
1A94: sub a, x            ; 49
1A95: and y, w            ; 95
1A96: sub a, y            ; 4A
1A97: nop                 ; 00
1A98: nop                 ; 00
1A99: nop                 ; 00
1A9A: nop                 ; 00
1A9B: nop                 ; 00
1A9C: nop                 ; 00
1A9D: nop                 ; 00
1A9E: store $0480, y      ; 11 80 04
1AA1: inc w               ; 6A
1AA2: nop                 ; FB
1AA3: shr w               ; DD
1AA4: nop                 ; FA
1AA5: nop                 ; 00
1AA6: nop                 ; 00
1AA7: nop                 ; 00
1AA8: nop                 ; 00
1AA9: nop                 ; 00
1AAA: mul x, a            ; 52
1AAB: mul y, z            ; 55
1AAC: mul y, z            ; 55
1AAD: and y, w            ; 95
1AAE: or y, a             ; AA
1AAF: mul x, a            ; 52
1AB0: mul y, z            ; 55
1AB1: sub a, x            ; 49
1AB2: or x, w             ; A5
1AB3: add y, w            ; 24
1AB4: sub a, x            ; 49
1AB5: sub a, x            ; 49
1AB6: add y, a            ; 25
1AB7: add z, w            ; 29
1AB8: and y, w            ; 95
1AB9: or y, a             ; AA
1ABA: mul x, a            ; 52
1ABB: add z, w            ; 29
1ABC: mul y, z            ; 55
1ABD: mul x, a            ; 52
1ABE: mul y, z            ; 55
1ABF: push a              ; 05
1AC0: nop                 ; 00
1AC1: sub z, y            ; 40
1AC2: nop                 ; 00
1AC3: nop                 ; 00
1AC4: nop                 ; 00
1AC5: nop                 ; 00
1AC6: nop                 ; 00
1AC7: pop z               ; 08
1AC8: sub w, a            ; 48
1AC9: or y, z             ; A8
1ACA: dec w               ; 6F
1ACB: cmp x, a            ; 75
1ACC: jmp z, w            ; EB
1ACD: push z              ; 03
1ACE: nop                 ; 00
1ACF: nop                 ; 00
1AD0: nop                 ; 00
1AD1: nop                 ; 00
1AD2: or y, a             ; AA
1AD3: and x, a            ; 92
1AD4: or y, a             ; AA
1AD5: mul y, y            ; 54
1AD6: or x, w             ; A5
1AD7: or y, a             ; AA
1AD8: and x, a            ; 92
1AD9: mul y, y            ; 54
1ADA: mul x, a            ; 52
1ADB: mul y, z            ; 55
1ADC: mul y, z            ; 55
1ADD: add y, w            ; 24
1ADE: or y, w             ; A9
1ADF: or y, a             ; AA
1AE0: mul x, a            ; 52
1AE1: or y, a             ; AA
1AE2: sub a, y            ; 4A
1AE3: mul y, z            ; 55
1AE4: and y, w            ; 95
1AE5: or y, a             ; AA
1AE6: and y, z            ; 94
1AE7: store $0000, z      ; 12 00 00
1AEA: nop                 ; 00
1AEB: pop z               ; 08
1AEC: nop                 ; 00
1AED: nop                 ; 00
1AEE: nop                 ; 00
1AEF: push x              ; 01
1AF0: nop                 ; 00
1AF1: and a, y            ; A0
1AF2: xor x, z            ; BE
1AF3: shr a               ; DE
1AF4: nop                 ; FE
1AF5: push x              ; 01
1AF6: nop                 ; 00
1AF7: nop                 ; 00
1AF8: nop                 ; 00
1AF9: nop                 ; 00
1AFA: or y, a             ; AA
1AFB: or y, a             ; AA
1AFC: mul y, y            ; 54
1AFD: mul y, z            ; 55
1AFE: mul y, z            ; 55
1AFF: add z, w            ; 29
1B00: mul y, z            ; 55
1B01: and y, w            ; 95
1B02: sub a, y            ; 4A
1B03: sub a, y            ; 4A
1B04: sub a, x            ; 49
1B05: sub a, x            ; 49
1B06: sub a, y            ; 4A
1B07: sub a, y            ; 4A
1B08: mul y, z            ; 55
1B09: sub a, x            ; 49
1B0A: add z, a            ; 2A
1B0B: or x, w             ; A5
1B0C: mul x, a            ; 52
1B0D: and y, w            ; 95
1B0E: or y, a             ; AA
1B0F: add y, w            ; 24
1B10: nop                 ; 00
1B11: nop                 ; 00
1B12: nop                 ; 00
1B13: nop                 ; 00
1B14: nop                 ; 00
1B15: nop                 ; 00
1B16: pop z               ; 08
1B17: nop                 ; 00
1B18: push y              ; 02
1B19: nop                 ; 00
1B1A: cmp y, y            ; 77
1B1B: not a               ; BB
1B1C: nop                 ; FB
1B1D: push z              ; 03
1B1E: nop                 ; 00
1B1F: nop                 ; 00
1B20: nop                 ; 00
1B21: nop                 ; 00
1B22: mul y, y            ; 54
1B23: mul y, z            ; 55
1B24: mul y, z            ; 55
1B25: mul y, z            ; 55
1B26: and y, w            ; 95
1B27: sub a, y            ; 4A
1B28: and y, w            ; 95
1B29: mul x, a            ; 52
1B2A: or y, a             ; AA
1B2B: mul x, a            ; 52
1B2C: or y, a             ; AA
1B2D: and x, a            ; 92
1B2E: add y, w            ; 24
1B2F: or y, w             ; A9
1B30: and y, z            ; 94
1B31: or y, a             ; AA
1B32: or y, a             ; AA
1B33: mul y, y            ; 54
1B34: add z, a            ; 2A
1B35: or y, w             ; A9
1B36: mul x, a            ; 52
1B37: and y, w            ; 95
1B38: nop                 ; 00
1B39: nop                 ; 00
1B3A: nop                 ; 00
1B3B: cmp w, x            ; 80
1B3C: nop                 ; 00
1B3D: nop                 ; 00
1B3E: nop                 ; 00
1B3F: add x, a            ; 20
1B40: store $5D88, x      ; 10 88 5D
1B43: jmp $01BD, w        ; EF BD 01
1B46: nop                 ; 00
1B47: nop                 ; 00
1B48: nop                 ; 00
1B49: nop                 ; 00
1B4A: sub a, y            ; 4A
1B4B: or y, a             ; AA
1B4C: or y, a             ; AA
1B4D: or y, a             ; AA
1B4E: inc w               ; 6A
1B4F: or y, a             ; AA
1B50: mul x, a            ; 52
1B51: sub a, x            ; 49
1B52: sub a, x            ; 49
1B53: or y, a             ; AA
1B54: sub a, y            ; 4A
1B55: sub a, y            ; 4A
1B56: mul x, a            ; 52
1B57: add y, a            ; 25
1B58: or x, w             ; A5
1B59: or y, a             ; AA
1B5A: mul x, a            ; 52
1B5B: and y, w            ; 95
1B5C: or y, a             ; AA
1B5D: sub a, y            ; 4A
1B5E: mul y, z            ; 55
1B5F: mul y, z            ; 55
1B60: push x              ; 01
1B61: nop                 ; 00
1B62: nop                 ; 00
1B63: nop                 ; 00
1B64: push a              ; 05
1B65: nop                 ; 00
1B66: sub z, y            ; 40
1B67: nop                 ; 00
1B68: nop                 ; 00
1B69: add x, a            ; 20
1B6A: not w               ; BA
1B6B: cmp z, z            ; 7D
1B6C: resume              ; F7 01
1B6E: nop                 ; 00
1B6F: nop                 ; 00
1B70: nop                 ; 00
1B71: nop                 ; 00
1B72: mul y, z            ; 55
1B73: or x, w             ; A5
1B74: and x, a            ; 92
1B75: or y, a             ; AA
1B76: and y, z            ; 94
1B77: or y, a             ; AA
1B78: mul y, y            ; 54
1B79: or y, a             ; AA
1B7A: or y, a             ; AA
1B7B: or x, z             ; A4
1B7C: mul y, y            ; 54
1B7D: and y, w            ; 95
1B7E: cmp a, w            ; 88
1B7F: mul y, y            ; 54
1B80: mul y, z            ; 55
1B81: and x, a            ; 92
1B82: and y, z            ; 94
1B83: mul x, a            ; 52
1B84: sub a, x            ; 49
1B85: mul y, z            ; 55
1B86: sub a, y            ; 4A
1B87: sub a, x            ; 49
1B88: push y              ; 02
1B89: nop                 ; 00
1B8A: nop                 ; 00
1B8B: sub z, y            ; 40
1B8C: push y              ; 02
1B8D: nop                 ; 00
1B8E: nop                 ; 00
1B8F: push y              ; 02
1B90: nop                 ; 00
1B91: or w, y             ; B0
1B92: or z, a             ; AE
1B93: not x               ; B7
1B94: nop                 ; FB
1B95: push x              ; 01
1B96: nop                 ; 00
1B97: nop                 ; 00
1B98: nop                 ; 00
1B99: nop                 ; 00
1B9A: or y, a             ; AA
1B9B: or y, a             ; AA
1B9C: or y, a             ; AA
1B9D: or x, z             ; A4
1B9E: or y, a             ; AA
1B9F: and x, a            ; 92
1BA0: or y, a             ; AA
1BA1: sub a, y            ; 4A
1BA2: and x, a            ; 92
1BA3: add z, a            ; 2A
1BA4: or x, w             ; A5
1BA5: or x, z             ; A4
1BA6: mul x, a            ; 52
1BA7: and x, a            ; 92
1BA8: mul x, a            ; 52
1BA9: mul y, z            ; 55
1BAA: mul y, z            ; 55
1BAB: mul y, z            ; 55
1BAC: mul y, z            ; 55
1BAD: and x, a            ; 92
1BAE: mul x, a            ; 52
1BAF: or y, a             ; AA
1BB0: pop a               ; 0A
1BB1: nop                 ; 00
1BB2: sub z, y            ; 40
1BB3: nop                 ; 00
1BB4: push x              ; 01
1BB5: nop                 ; 00
1BB6: nop                 ; 00
1BB7: pop z               ; 08
1BB8: pop w               ; 09
1BB9: sub w, x            ; 44
1BBA: shr z               ; DC
1BBB: nop                 ; FE
1BBC: shr a               ; DE
1BBD: nop                 ; 00
1BBE: nop                 ; 00
1BBF: nop                 ; 00
1BC0: nop                 ; 00
1BC1: nop                 ; 00
1BC2: or y, w             ; A9
1BC3: add z, a            ; 2A
1BC4: mul y, z            ; 55
1BC5: mul y, z            ; 55
1BC6: mul y, z            ; 55
1BC7: mul y, z            ; 55
1BC8: or x, w             ; A5
1BC9: mul y, y            ; 54
1BCA: add z, w            ; 29
1BCB: sub a, x            ; 49
1BCC: add z, w            ; 29
1BCD: mul y, z            ; 55
1BCE: add y, a            ; 25
1BCF: or y, w             ; A9
1BD0: and y, z            ; 94
1BD1: or y, a             ; AA
1BD2: or y, a             ; AA
1BD3: and y, z            ; 94
1BD4: or y, a             ; AA
1BD5: or y, a             ; AA
1BD6: mul y, y            ; 54
1BD7: mul y, z            ; 55
1BD8: push a              ; 05
1BD9: nop                 ; 00
1BDA: nop                 ; 00
1BDB: nop                 ; 00
1BDC: push x              ; 01
1BDD: nop                 ; 00
1BDE: nop                 ; 00
1BDF: sub z, y            ; 40
1BE0: nop                 ; 00
1BE1: sub z, y            ; 40
1BE2: inc w               ; 6A
1BE3: jmp z, w            ; EB
1BE4: inc a               ; 6B
1BE5: nop                 ; 00
1BE6: nop                 ; 00
1BE7: nop                 ; 00
1BE8: nop                 ; 00
1BE9: nop                 ; 00
1BEA: add z, a            ; 2A
1BEB: or y, w             ; A9
1BEC: or y, a             ; AA
1BED: or y, a             ; AA
1BEE: or y, a             ; AA
1BEF: or y, a             ; AA
1BF0: add z, a            ; 2A
1BF1: add y, a            ; 25
1BF2: or x, w             ; A5
1BF3: or y, a             ; AA
1BF4: or y, a             ; AA
1BF5: add z, a            ; 2A
1BF6: sub a, x            ; 49
1BF7: and y, w            ; 95
1BF8: or y, a             ; AA
1BF9: add y, w            ; 24
1BFA: or x, w             ; A5
1BFB: or y, a             ; AA
1BFC: or x, z             ; A4
1BFD: sub a, y            ; 4A
1BFE: mul y, z            ; 55
1BFF: and y, w            ; 95
1C00: store $0000, a      ; 14 00 00
1C03: nop                 ; 00
1C04: nop                 ; 00
1C05: nop                 ; 00
1C06: nop                 ; 00
1C07: nop                 ; 00
1C08: nop                 ; 00
1C09: store $BFDC, x      ; 10 DC BF
1C0C: cmp z, w            ; 7E
1C0D: nop                 ; 00
1C0E: nop                 ; 00
1C0F: nop                 ; 00
1C10: nop                 ; 00
1C11: nop                 ; 00
1C12: mul y, z            ; 55
1C13: mul y, z            ; 55
1C14: mul y, z            ; 55
1C15: and y, w            ; 95
1C16: mul x, a            ; 52
1C17: and y, w            ; 95
1C18: mul y, y            ; 54
1C19: mul y, z            ; 55
1C1A: and y, w            ; 95
1C1B: add y, w            ; 24
1C1C: or x, w             ; A5
1C1D: or x, z             ; A4
1C1E: or y, a             ; AA
1C1F: mul x, a            ; 52
1C20: mul x, a            ; 52
1C21: mul y, z            ; 55
1C22: add z, w            ; 29
1C23: or x, w             ; A5
1C24: add z, a            ; 2A
1C25: add z, w            ; 29
1C26: sub a, x            ; 49
1C27: mul x, a            ; 52
1C28: mul y, z            ; 55
1C29: nop                 ; 00
1C2A: nop                 ; 00
1C2B: nop                 ; 00
1C2C: nop                 ; 00
1C2D: nop                 ; 00
1C2E: nop                 ; 00
1C2F: nop                 ; 00
1C30: push y              ; 02
1C31: nop                 ; 00
1C32: ror x               ; E4
1C33: int $2B             ; F6 2B
1C35: nop                 ; 00
1C36: nop                 ; 00
1C37: nop                 ; 00
1C38: nop                 ; 00
1C39: nop                 ; 00
1C3A: or x, w             ; A5
1C3B: or y, a             ; AA
1C3C: or y, a             ; AA
1C3D: or y, a             ; AA
1C3E: or y, a             ; AA
1C3F: mul x, a            ; 52
1C40: or x, w             ; A5
1C41: mul x, a            ; 52
1C42: mul x, a            ; 52
1C43: mul y, z            ; 55
1C44: add z, w            ; 29
1C45: and y, w            ; 95
1C46: mul y, y            ; 54
1C47: or y, a             ; AA
1C48: add z, a            ; 2A
1C49: sub a, x            ; 49
1C4A: mul y, z            ; 55
1C4B: or y, w             ; A9
1C4C: or y, a             ; AA
1C4D: or y, a             ; AA
1C4E: or y, a             ; AA
1C4F: or y, a             ; AA
1C50: or y, a             ; AA
1C51: nop                 ; 00
1C52: nop                 ; 00
1C53: nop                 ; 00
1C54: nop                 ; 00
1C55: nop                 ; 00
1C56: nop                 ; 00
1C57: add y, y            ; 22
1C58: add x, a            ; 20
1C59: nop                 ; 00
1C5A: or a, y             ; B4
1C5B: or w, x             ; AF
1C5C: sub y, a            ; 3E
1C5D: nop                 ; 00
1C5E: nop                 ; 00
1C5F: nop                 ; 00
1C60: nop                 ; 00
1C61: nop                 ; 00
1C62: mul y, z            ; 55
1C63: mul y, z            ; 55
1C64: mul y, z            ; 55
1C65: mul y, z            ; 55
1C66: mul y, z            ; 55
1C67: or y, a             ; AA
1C68: add z, a            ; 2A
1C69: and y, w            ; 95
1C6A: add z, a            ; 2A
1C6B: sub a, x            ; 49
1C6C: sub a, y            ; 4A
1C6D: or y, w             ; A9
1C6E: and x, a            ; 92
1C6F: sub a, y            ; 4A
1C70: sub a, x            ; 49
1C71: mul y, z            ; 55
1C72: or y, a             ; AA
1C73: sub a, y            ; 4A
1C74: mul x, a            ; 52
1C75: mul y, z            ; 55
1C76: and y, w            ; 95
1C77: or y, a             ; AA
1C78: and x, a            ; 92
1C79: push y              ; 02
1C7A: nop                 ; 00
1C7B: nop                 ; 00
1C7C: nop                 ; 00
1C7D: push y              ; 02
1C7E: nop                 ; 00
1C7F: nop                 ; 00
1C80: push w              ; 04
1C81: nop                 ; 00
1C82: nop                 ; F8
1C83: nop                 ; FA
1C84: set a, $00          ; 1B 00
1C86: nop                 ; 00
1C87: nop                 ; 00
1C88: nop                 ; 00
1C89: nop                 ; 00
1C8A: and y, z            ; 94
1C8B: and y, z            ; 94
1C8C: or y, a             ; AA
1C8D: or y, a             ; AA
1C8E: or y, a             ; AA
1C8F: add z, a            ; 2A
1C90: or y, w             ; A9
1C91: mul y, y            ; 54
1C92: or x, w             ; A5
1C93: or y, a             ; AA
1C94: or y, a             ; AA
1C95: sub a, y            ; 4A
1C96: or y, a             ; AA
1C97: mul x, a            ; 52
1C98: or y, a             ; AA
1C99: or x, z             ; A4
1C9A: sub a, y            ; 4A
1C9B: or y, a             ; AA
1C9C: add z, a            ; 2A
1C9D: sub a, x            ; 49
1C9E: mul x, a            ; 52
1C9F: sub a, x            ; 49
1CA0: or y, a             ; AA
1CA1: pop a               ; 0A
1CA2: nop                 ; 00
1CA3: nop                 ; 00
1CA4: nop                 ; 00
1CA5: nop                 ; 00
1CA6: nop                 ; 00
1CA7: cmp w, x            ; 80
1CA8: nop                 ; 00
1CA9: nop                 ; 00
1CAA: or y, z             ; A8
1CAB: rol x               ; DF
1CAC: return              ; 16
1CAD: nop                 ; 00
1CAE: nop                 ; 00
1CAF: nop                 ; 00
1CB0: nop                 ; 00
1CB1: nop                 ; 00
1CB2: or y, a             ; AA
1CB3: or y, a             ; AA
1CB4: and x, a            ; 92
1CB5: mul x, a            ; 52
1CB6: sub a, y            ; 4A
1CB7: mul y, z            ; 55
1CB8: mul y, z            ; 55
1CB9: or x, w             ; A5
1CBA: and y, z            ; 94
1CBB: add y, w            ; 24
1CBC: add z, w            ; 29
1CBD: mul y, z            ; 55
1CBE: add y, a            ; 25
1CBF: sub a, x            ; 49
1CC0: add y, a            ; 25
1CC1: and y, w            ; 95
1CC2: mul y, y            ; 54
1CC3: or y, w             ; A9
1CC4: sub a, y            ; 4A
1CC5: mul y, z            ; 55
1CC6: and y, w            ; 95
1CC7: or y, a             ; AA
1CC8: or y, a             ; AA
1CC9: store $0000, a      ; 14 00 00
1CCC: nop                 ; 00
1CCD: nop                 ; 00
1CCE: nop                 ; 00
1CCF: store $0048, x      ; 10 48 00
1CD2: nop                 ; FC
1CD3: cmp y, x            ; 76
1CD4: load a, $0000       ; 0F 00 00
1CD7: nop                 ; 00
1CD8: nop                 ; 00
1CD9: nop                 ; 00
1CDA: mul x, a            ; 52
1CDB: mul y, z            ; 55
1CDC: mul y, z            ; 55
1CDD: or y, a             ; AA
1CDE: or y, a             ; AA
1CDF: sub a, y            ; 4A
1CE0: and y, w            ; 95
1CE1: or y, a             ; AA
1CE2: mul x, a            ; 52
1CE3: mul y, z            ; 55
1CE4: or x, w             ; A5
1CE5: add y, w            ; 24
1CE6: or y, w             ; A9
1CE7: add z, a            ; 2A
1CE8: or y, w             ; A9
1CE9: mul x, a            ; 52
1CEA: add y, a            ; 25
1CEB: and y, w            ; 95
1CEC: mul y, y            ; 54
1CED: mul y, z            ; 55
1CEE: or y, w             ; A9
1CEF: or x, z             ; A4
1CF0: sub a, y            ; 4A
1CF1: mul y, z            ; 55
1CF2: nop                 ; 00
1CF3: nop                 ; 00
1CF4: nop                 ; 00
1CF5: nop                 ; 00
1CF6: nop                 ; 00
1CF7: nop                 ; 00
1CF8: push x              ; 01
1CF9: nop                 ; 00
1CFA: xor a, x            ; D0
1CFB: shr w               ; DD
1CFC: push a              ; 05
1CFD: nop                 ; 00
1CFE: nop                 ; 00
1CFF: nop                 ; 00
1D00: nop                 ; 00
1D01: nop                 ; 00
1D02: mul y, z            ; 55
1D03: mul y, z            ; 55
1D04: mul y, z            ; 55
1D05: mul y, z            ; 55
1D06: mul y, z            ; 55
1D07: or y, w             ; A9
1D08: or x, z             ; A4
1D09: and y, z            ; 94
1D0A: add z, a            ; 2A
1D0B: sub a, x            ; 49
1D0C: or y, a             ; AA
1D0D: or y, a             ; AA
1D0E: sub a, y            ; 4A
1D0F: or y, a             ; AA
1D10: sub a, y            ; 4A
1D11: add z, a            ; 2A
1D12: and y, w            ; 95
1D13: mul x, a            ; 52
1D14: mul y, z            ; 55
1D15: mul x, a            ; 52
1D16: add y, a            ; 25
1D17: and y, w            ; 95
1D18: mul y, y            ; 54
1D19: or x, w             ; A5
1D1A: nop                 ; 00
1D1B: nop                 ; 00
1D1C: nop                 ; 00
1D1D: nop                 ; 00
1D1E: nop                 ; 00
1D1F: nop                 ; 00
1D20: nop                 ; 00
1D21: push x              ; 01
1D22: dec x               ; 6C
1D23: cmp y, y            ; 77
1D24: pop y               ; 07
1D25: nop                 ; 00
1D26: nop                 ; 00
1D27: nop                 ; 00
1D28: nop                 ; 00
1D29: nop                 ; 00
1D2A: mul y, z            ; 55
1D2B: or y, a             ; AA
1D2C: mul y, y            ; 54
1D2D: mul y, z            ; 55
1D2E: or y, w             ; A9
1D2F: or y, a             ; AA
1D30: or y, a             ; AA
1D31: mul x, a            ; 52
1D32: sub a, y            ; 4A
1D33: mul y, z            ; 55
1D34: sub a, x            ; 49
1D35: mul x, a            ; 52
1D36: or y, a             ; AA
1D37: and x, a            ; 92
1D38: mul y, y            ; 54
1D39: sub a, x            ; 49
1D3A: or y, w             ; A9
1D3B: sub a, y            ; 4A
1D3C: or x, w             ; A5
1D3D: sub a, y            ; 4A
1D3E: or y, a             ; AA
1D3F: mul x, a            ; 52
1D40: mul y, z            ; 55
1D41: or y, w             ; A9
1D42: push y              ; 02
1D43: nop                 ; 00
1D44: nop                 ; 00
1D45: nop                 ; 00
1D46: nop                 ; 00
1D47: sub z, y            ; 40
1D48: add y, w            ; 24
1D49: nop                 ; 00
1D4A: xor a, x            ; D0
1D4B: shr a               ; DE
1D4C: push z              ; 03
1D4D: nop                 ; 00
1D4E: nop                 ; 00
1D4F: nop                 ; 00
1D50: nop                 ; 00
1D51: nop                 ; 00
1D52: and y, w            ; 95
1D53: mul x, a            ; 52
1D54: mul y, z            ; 55
1D55: or x, w             ; A5
1D56: or y, a             ; AA
1D57: or y, a             ; AA
1D58: or y, a             ; AA
1D59: or y, a             ; AA
1D5A: mul x, a            ; 52
1D5B: and x, a            ; 92
1D5C: or y, a             ; AA
1D5D: sub a, y            ; 4A
1D5E: add z, w            ; 29
1D5F: mul y, z            ; 55
1D60: or x, w             ; A5
1D61: or y, a             ; AA
1D62: add z, a            ; 2A
1D63: mul y, z            ; 55
1D64: or y, a             ; AA
1D65: or y, a             ; AA
1D66: or y, a             ; AA
1D67: and y, z            ; 94
1D68: add y, w            ; 24
1D69: and y, w            ; 95
1D6A: pop a               ; 0A
1D6B: nop                 ; 00
1D6C: nop                 ; 00
1D6D: nop                 ; 00
1D6E: nop                 ; 00
1D6F: nop                 ; 00
1D70: nop                 ; 00
1D71: push w              ; 04
1D72: xor a, a            ; D4
1D73: cmp z, x            ; 7B
1D74: push x              ; 01
1D75: nop                 ; 00
1D76: nop                 ; 00
1D77: nop                 ; 00
1D78: nop                 ; 00
1D79: nop                 ; 00
1D7A: or x, z             ; A4
1D7B: add z, a            ; 2A
1D7C: add y, a            ; 25
1D7D: mul y, z            ; 55
1D7E: add z, a            ; 2A
1D7F: mul y, z            ; 55
1D80: and y, w            ; 95
1D81: and y, z            ; 94
1D82: or y, a             ; AA
1D83: or y, a             ; AA
1D84: add y, w            ; 24
1D85: or y, w             ; A9
1D86: sub a, y            ; 4A
1D87: sub a, x            ; 49
1D88: mul x, a            ; 52
1D89: mul x, a            ; 52
1D8A: sub a, y            ; 4A
1D8B: or y, w             ; A9
1D8C: and x, a            ; 92
1D8D: mul y, y            ; 54
1D8E: and y, w            ; 95
1D8F: mul x, a            ; 52
1D90: mul y, z            ; 55
1D91: mul y, z            ; 55
1D92: call $0000          ; 15 00 00
1D95: nop                 ; 00
1D96: nop                 ; 00
1D97: nop                 ; 00
1D98: store $D400, y      ; 11 00 D4
1D9B: shl y               ; D6
1D9C: push x              ; 01
1D9D: nop                 ; 00
1D9E: nop                 ; 00
1D9F: nop                 ; 00
1DA0: nop                 ; 00
1DA1: nop                 ; 00
1DA2: mul y, z            ; 55
1DA3: or x, w             ; A5
1DA4: or y, a             ; AA
1DA5: or y, a             ; AA
1DA6: or y, a             ; AA
1DA7: sub a, y            ; 4A
1DA8: or y, w             ; A9
1DA9: mul x, a            ; 52
1DAA: sub a, y            ; 4A
1DAB: add y, a            ; 25
1DAC: mul y, z            ; 55
1DAD: and y, w            ; 95
1DAE: mul x, a            ; 52
1DAF: or y, a             ; AA
1DB0: sub a, y            ; 4A
1DB1: and y, w            ; 95
1DB2: mul x, a            ; 52
1DB3: sub a, y            ; 4A
1DB4: mul y, z            ; 55
1DB5: add y, a            ; 25
1DB6: or y, w             ; A9
1DB7: sub a, y            ; 4A
1DB8: mul x, a            ; 52
1DB9: add y, a            ; 25
1DBA: add z, w            ; 29
1DBB: nop                 ; 00
1DBC: nop                 ; 00
1DBD: nop                 ; 00
1DBE: nop                 ; 00
1DBF: nop                 ; 00
1DC0: cmp w, x            ; 80
1DC1: nop                 ; 00
1DC2: mul a, z            ; 64
1DC3: cmp z, a            ; 7F
1DC4: push x              ; 01
1DC5: nop                 ; 00
1DC6: nop                 ; 00
1DC7: nop                 ; 00
1DC8: nop                 ; 00
1DC9: nop                 ; 00
1DCA: or y, a             ; AA
1DCB: mul y, y            ; 54
1DCC: mul y, z            ; 55
1DCD: sub a, x            ; 49
1DCE: mul y, z            ; 55
1DCF: mul y, z            ; 55
1DD0: mul y, z            ; 55
1DD1: mul y, z            ; 55
1DD2: add z, w            ; 29
1DD3: or y, w             ; A9
1DD4: and x, a            ; 92
1DD5: mul y, y            ; 54
1DD6: or y, a             ; AA
1DD7: add z, a            ; 2A
1DD8: or y, w             ; A9
1DD9: or x, z             ; A4
1DDA: or y, a             ; AA
1DDB: or y, a             ; AA
1DDC: mul y, y            ; 54
1DDD: mul y, z            ; 55
1DDE: or x, w             ; A5
1DDF: mul y, y            ; 54
1DE0: and y, w            ; 95
1DE1: mul y, y            ; 54
1DE2: mul y, z            ; 55
1DE3: push x              ; 01
1DE4: nop                 ; 00
1DE5: nop                 ; 00
1DE6: nop                 ; 00
1DE7: nop                 ; 00
1DE8: push w              ; 04
1DE9: store $D5DC, x      ; 10 DC D5
1DEC: nop                 ; 00
1DED: nop                 ; 00
1DEE: nop                 ; 00
1DEF: nop                 ; 00
1DF0: nop                 ; 00
1DF1: nop                 ; 00
1DF2: or x, w             ; A5
1DF3: add z, a            ; 2A
1DF4: or y, w             ; A9
1DF5: or y, a             ; AA
1DF6: mul x, a            ; 52
1DF7: add z, w            ; 29
1DF8: or x, w             ; A5
1DF9: or y, a             ; AA
1DFA: or y, a             ; AA
1DFB: or y, a             ; AA
1DFC: mul y, y            ; 54
1DFD: or x, w             ; A5
1DFE: sub a, y            ; 4A
1DFF: sub a, x            ; 49
1E00: and y, w            ; 95
1E01: add z, a            ; 2A
1E02: sub a, x            ; 49
1E03: add z, w            ; 29
1E04: mul y, z            ; 55
1E05: mul y, z            ; 55
1E06: mul y, z            ; 55
1E07: add y, a            ; 25
1E08: or y, w             ; A9
1E09: or y, a             ; AA
1E0A: mul x, a            ; 52
1E0B: push x              ; 01
1E0C: store $0000, x      ; 10 00 00
1E0F: store $0220, x      ; 10 20 02
1E12: cmp x, w            ; 74
1E13: cmp z, a            ; 7F
1E14: nop                 ; 00
1E15: nop                 ; 00
1E16: nop                 ; 00
1E17: nop                 ; 00
1E18: nop                 ; 00
1E19: nop                 ; 00
1E1A: and y, w            ; 95
1E1B: or y, a             ; AA
1E1C: add z, a            ; 2A
1E1D: mul y, z            ; 55
1E1E: add z, a            ; 2A
1E1F: mul y, z            ; 55
1E20: mul y, z            ; 55
1E21: sub a, y            ; 4A
1E22: or x, w             ; A5
1E23: and y, z            ; 94
1E24: sub a, y            ; 4A
1E25: and y, w            ; 95
1E26: mul x, a            ; 52
1E27: or y, a             ; AA
1E28: mul y, y            ; 54
1E29: or y, a             ; AA
1E2A: add z, a            ; 2A
1E2B: or x, w             ; A5
1E2C: sub a, y            ; 4A
1E2D: mul x, a            ; 52
1E2E: add z, a            ; 2A
1E2F: mul y, z            ; 55
1E30: sub a, y            ; 4A
1E31: and x, a            ; 92
1E32: and y, z            ; 94
1E33: pop a               ; 0A
1E34: nop                 ; 00
1E35: nop                 ; 00
1E36: nop                 ; 00
1E37: sub z, y            ; 40
1E38: nop                 ; 00
1E39: nop                 ; 00
1E3A: nop                 ; F8
1E3B: mul y, w            ; 56
1E3C: nop                 ; 00
1E3D: nop                 ; 00
1E3E: nop                 ; 00
1E3F: nop                 ; 00
1E40: nop                 ; 00
1E41: nop                 ; 00
1E42: mul y, y            ; 54
1E43: sub a, x            ; 49
1E44: or x, w             ; A5
1E45: or y, a             ; AA
1E46: sub a, y            ; 4A
1E47: or x, w             ; A5
1E48: and y, z            ; 94
1E49: mul x, a            ; 52
1E4A: or y, a             ; AA
1E4B: mul x, a            ; 52
1E4C: add z, w            ; 29
1E4D: or y, w             ; A9
1E4E: and y, z            ; 94
1E4F: and x, a            ; 92
1E50: mul x, a            ; 52
1E51: sub a, x            ; 49
1E52: mul x, a            ; 52
1E53: mul y, z            ; 55
1E54: mul x, a            ; 52
1E55: mul y, z            ; 55
1E56: or y, w             ; A9
1E57: sub a, y            ; 4A
1E58: or y, w             ; A9
1E59: or y, a             ; AA
1E5A: or y, a             ; AA
1E5B: pop a               ; 0A
1E5C: cmp w, z            ; 82
1E5D: nop                 ; 00
1E5E: nop                 ; 00
1E5F: nop                 ; 00
1E60: cmp w, y            ; 81
1E61: add x, a            ; 20
1E62: or y, z             ; A8
1E63: sub y, y            ; 3B
1E64: nop                 ; 00
1E65: nop                 ; 00
1E66: nop                 ; 00
1E67: nop                 ; 00
1E68: nop                 ; 00
1E69: nop                 ; 00
1E6A: or y, a             ; AA
1E6B: or y, a             ; AA
1E6C: mul y, y            ; 54
1E6D: sub a, x            ; 49
1E6E: or y, w             ; A9
1E6F: or y, a             ; AA
1E70: mul x, a            ; 52
1E71: mul y, z            ; 55
1E72: and y, w            ; 95
1E73: sub a, y            ; 4A
1E74: or y, a             ; AA
1E75: sub a, y            ; 4A
1E76: mul y, z            ; 55
1E77: mul y, z            ; 55
1E78: and y, w            ; 95
1E79: or y, a             ; AA
1E7A: sub a, y            ; 4A
1E7B: and x, a            ; 92
1E7C: or y, a             ; AA
1E7D: sub a, y            ; 4A
1E7E: and y, w            ; 95
1E7F: mul x, a            ; 52
1E80: add y, a            ; 25
1E81: or y, w             ; A9
1E82: sub a, y            ; 4A
1E83: or w, a             ; B2
1E84: call $0002          ; 15 02 00
1E87: mul y, y            ; 54
1E88: push w              ; 04
1E89: push w              ; 04
1E8A: rol y               ; E0
1E8B: add x, z            ; 1E
1E8C: nop                 ; 00
1E8D: nop                 ; 00
1E8E: nop                 ; 00
1E8F: nop                 ; 00
1E90: nop                 ; 00
1E91: nop                 ; 00
1E92: or y, a             ; AA
1E93: add z, a            ; 2A
1E94: mul y, z            ; 55
1E95: or y, a             ; AA
1E96: or y, a             ; AA
1E97: and y, z            ; 94
1E98: add z, a            ; 2A
1E99: and y, w            ; 95
1E9A: mul x, a            ; 52
1E9B: mul y, z            ; 55
1E9C: or x, w             ; A5
1E9D: mul x, a            ; 52
1E9E: mul x, a            ; 52
1E9F: add z, a            ; 2A
1EA0: or x, w             ; A5
1EA1: and x, a            ; 92
1EA2: mul y, y            ; 54
1EA3: mul y, z            ; 55
1EA4: add y, a            ; 25
1EA5: mul y, z            ; 55
1EA6: or x, w             ; A5
1EA7: and y, z            ; 94
1EA8: and y, z            ; 94
1EA9: sub a, y            ; 4A
1EAA: mul x, a            ; 52
1EAB: mul y, z            ; 55
1EAC: add z, a            ; 2A
1EAD: store $2000, x      ; 10 00 20
1EB0: push x              ; 01
1EB1: nop                 ; 00
1EB2: xor x, a            ; C0
1EB3: load x, $0000       ; 0B 00 00
1EB6: nop                 ; 00
1EB7: nop                 ; 00
1EB8: nop                 ; 00
1EB9: nop                 ; 00
1EBA: mul y, z            ; 55
1EBB: mul y, z            ; 55
1EBC: and y, w            ; 95
1EBD: add z, a            ; 2A
1EBE: and y, w            ; 95
1EBF: mul x, a            ; 52
1EC0: or y, w             ; A9
1EC1: mul x, a            ; 52
1EC2: mul y, z            ; 55
1EC3: add z, w            ; 29
1EC4: mul y, z            ; 55
1EC5: or y, a             ; AA
1EC6: sub a, y            ; 4A
1EC7: or x, w             ; A5
1EC8: mul y, y            ; 54
1EC9: or y, a             ; AA
1ECA: add z, a            ; 2A
1ECB: mul y, z            ; 55
1ECC: or y, w             ; A9
1ECD: mul x, a            ; 52
1ECE: or y, a             ; AA
1ECF: or y, a             ; AA
1ED0: mul x, a            ; 52
1ED1: or y, w             ; A9
1ED2: add z, a            ; 2A
1ED3: sub a, x            ; 49
1ED4: or y, w             ; A9
1ED5: nop                 ; 00
1ED6: nop                 ; 00
1ED7: jmp x, y            ; EA
1ED8: push y              ; 02
1ED9: push x              ; 01
1EDA: cmp w, y            ; 81
1EDB: add x, z            ; 1E
1EDC: nop                 ; 00
1EDD: nop                 ; 00
1EDE: nop                 ; 00
1EDF: nop                 ; 00
1EE0: nop                 ; 00
1EE1: nop                 ; 00
1EE2: mul y, z            ; 55
1EE3: or x, w             ; A5
1EE4: mul x, a            ; 52
1EE5: or x, w             ; A5
1EE6: or x, z             ; A4
1EE7: add z, a            ; 2A
1EE8: or x, w             ; A5
1EE9: mul y, y            ; 54
1EEA: sub a, y            ; 4A
1EEB: or y, a             ; AA
1EEC: or x, z             ; A4
1EED: sub a, y            ; 4A
1EEE: mul y, z            ; 55
1EEF: or y, w             ; A9
1EF0: sub a, y            ; 4A
1EF1: add y, a            ; 25
1EF2: sub a, x            ; 49
1EF3: sub a, x            ; 49
1EF4: or y, a             ; AA
1EF5: mul y, y            ; 54
1EF6: mul y, z            ; 55
1EF7: mul y, z            ; 55
1EF8: and y, w            ; 95
1EF9: and y, z            ; 94
1EFA: or y, a             ; AA
1EFB: add z, a            ; 2A
1EFC: or x, w             ; A5
1EFD: sub z, w            ; 42
1EFE: nop                 ; 00
1EFF: cmp y, z            ; 78
1F00: push x              ; 01
1F01: sub w, a            ; 48
1F02: nop                 ; 00
1F03: load x, $0000       ; 0B 00 00
1F06: nop                 ; 00
1F07: nop                 ; 00
1F08: nop                 ; 00
1F09: nop                 ; 00
1F0A: or x, z             ; A4
1F0B: or y, a             ; AA
1F0C: mul y, y            ; 54
1F0D: or y, w             ; A9
1F0E: or y, a             ; AA
1F0F: or x, z             ; A4
1F10: add z, a            ; 2A
1F11: and y, w            ; 95
1F12: mul x, a            ; 52
1F13: and y, w            ; 95
1F14: add z, a            ; 2A
1F15: or y, w             ; A9
1F16: add y, w            ; 24
1F17: mul y, z            ; 55
1F18: mul x, a            ; 52
1F19: or y, w             ; A9
1F1A: or y, a             ; AA
1F1B: or y, a             ; AA
1F1C: sub a, y            ; 4A
1F1D: and y, w            ; 95
1F1E: sub a, y            ; 4A
1F1F: and x, a            ; 92
1F20: mul y, y            ; 54
1F21: sub a, y            ; 4A
1F22: sub a, x            ; 49
1F23: or x, w             ; A5
1F24: and y, z            ; 94
1F25: push w              ; 04
1F26: push y              ; 02
1F27: jmp.lt $000A        ; F4 0A 00
1F2A: nop                 ; 00
1F2B: pop x               ; 06
1F2C: nop                 ; 00
1F2D: nop                 ; 00
1F2E: nop                 ; 00
1F2F: nop                 ; 00
1F30: nop                 ; 00
1F31: nop                 ; 00
1F32: mul y, z            ; 55
1F33: or y, a             ; AA
1F34: sub a, y            ; 4A
1F35: and y, w            ; 95
1F36: and x, a            ; 92
1F37: add z, a            ; 2A
1F38: sub a, x            ; 49
1F39: sub a, x            ; 49
1F3A: or y, w             ; A9
1F3B: or x, z             ; A4
1F3C: sub a, y            ; 4A
1F3D: and y, w            ; 95
1F3E: or y, a             ; AA
1F3F: and x, a            ; 92
1F40: add z, a            ; 2A
1F41: mul y, z            ; 55
1F42: and x, a            ; 92
1F43: and y, z            ; 94
1F44: or y, a             ; AA
1F45: or y, a             ; AA
1F46: mul y, y            ; 54
1F47: mul y, z            ; 55
1F48: or x, w             ; A5
1F49: mul x, a            ; 52
1F4A: add z, a            ; 2A
1F4B: or y, w             ; A9
1F4C: or y, a             ; AA
1F4D: pop a               ; 0A
1F4E: pop z               ; 08
1F4F: nop                 ; F9
1F50: push x              ; 01
1F51: nop                 ; 00
1F52: pop z               ; 08
1F53: push w              ; 04
1F54: nop                 ; 00
1F55: nop                 ; 00
1F56: nop                 ; 00
1F57: nop                 ; 00
1F58: nop                 ; 00
1F59: nop                 ; 00
1F5A: or y, a             ; AA
1F5B: add z, a            ; 2A
1F5C: mul y, z            ; 55
1F5D: or y, a             ; AA
1F5E: mul y, y            ; 54
1F5F: or y, a             ; AA
1F60: or y, a             ; AA
1F61: mul x, a            ; 52
1F62: add z, a            ; 2A
1F63: mul y, z            ; 55
1F64: or y, w             ; A9
1F65: or x, z             ; A4
1F66: and x, a            ; 92
1F67: or y, a             ; AA
1F68: or y, a             ; AA
1F69: sub a, y            ; 4A
1F6A: mul y, z            ; 55
1F6B: or x, w             ; A5
1F6C: or x, z             ; A4
1F6D: or x, z             ; A4
1F6E: or y, a             ; AA
1F6F: or y, a             ; AA
1F70: or y, a             ; AA
1F71: add y, w            ; 24
1F72: or x, w             ; A5
1F73: add z, a            ; 2A
1F74: add y, a            ; 25
1F75: mul y, z            ; 55
1F76: add x, a            ; 20
1F77: xor x, a            ; C0
1F78: push a              ; 05
1F79: and x, z            ; 90
1F7A: nop                 ; 00
1F7B: nop                 ; 00
1F7C: nop                 ; 00
1F7D: nop                 ; 00
1F7E: nop                 ; 00
1F7F: nop                 ; 00
1F80: nop                 ; 00
1F81: nop                 ; 00
1F82: and x, a            ; 92
1F83: mul x, a            ; 52
1F84: mul y, z            ; 55
1F85: add z, w            ; 29
1F86: or x, w             ; A5
1F87: mul x, a            ; 52
1F88: and x, a            ; 92
1F89: and y, z            ; 94
1F8A: and x, a            ; 92
1F8B: add z, a            ; 2A
1F8C: mul y, z            ; 55
1F8D: mul y, z            ; 55
1F8E: or y, a             ; AA
1F8F: add y, w            ; 24
1F90: sub a, x            ; 49
1F91: mul x, a            ; 52
1F92: add y, a            ; 25
1F93: mul y, z            ; 55
1F94: and y, w            ; 95
1F95: or y, a             ; AA
1F96: and x, a            ; 92
1F97: add y, w            ; 24
1F98: and y, w            ; 95
1F99: sub a, y            ; 4A
1F9A: or y, w             ; A9
1F9B: mul x, a            ; 52
1F9C: or y, a             ; AA
1F9D: mul y, y            ; 54
1F9E: sub w, a            ; 48
1F9F: mul y, y            ; 54
1FA0: push x              ; 01
1FA1: nop                 ; 00
1FA2: nop                 ; 00
1FA3: nop                 ; 00
1FA4: nop                 ; 00
1FA5: nop                 ; 00
1FA6: nop                 ; 00
1FA7: nop                 ; 00
1FA8: nop                 ; 00
1FA9: nop                 ; 00
1FAA: or y, a             ; AA
1FAB: and y, z            ; 94
1FAC: and x, a            ; 92
1FAD: sub a, y            ; 4A
1FAE: and y, w            ; 95
1FAF: sub a, y            ; 4A
1FB0: mul y, z            ; 55
1FB1: or y, a             ; AA
1FB2: or x, z             ; A4
1FB3: or x, z             ; A4
1FB4: sub a, y            ; 4A
1FB5: mul x, a            ; 52
1FB6: or y, w             ; A9
1FB7: or y, a             ; AA
1FB8: or y, a             ; AA
1FB9: or y, a             ; AA
1FBA: mul y, y            ; 54
1FBB: add z, w            ; 29
1FBC: mul y, z            ; 55
1FBD: add z, a            ; 2A
1FBE: mul y, z            ; 55
1FBF: mul y, z            ; 55
1FC0: or y, w             ; A9
1FC1: add z, a            ; 2A
1FC2: and y, w            ; 95
1FC3: and y, z            ; 94
1FC4: and x, a            ; 92
1FC5: mul x, a            ; 52
1FC6: or x, y             ; A3
1FC7: store $0002, y      ; 11 02 00
1FCA: push y              ; 02
1FCB: nop                 ; 00
1FCC: nop                 ; 00
1FCD: nop                 ; 00
1FCE: nop                 ; 00
1FCF: nop                 ; 00
1FD0: nop                 ; 00
1FD1: nop                 ; 00
1FD2: mul y, z            ; 55
1FD3: mul y, z            ; 55
1FD4: or y, a             ; AA
1FD5: or y, a             ; AA
1FD6: mul y, y            ; 54
1FD7: or y, a             ; AA
1FD8: or x, z             ; A4
1FD9: and x, a            ; 92
1FDA: add z, a            ; 2A
1FDB: mul y, z            ; 55
1FDC: mul x, a            ; 52
1FDD: and y, w            ; 95
1FDE: sub a, y            ; 4A
1FDF: or y, a             ; AA
1FE0: mul x, a            ; 52
1FE1: add y, a            ; 25
1FE2: mul y, z            ; 55
1FE3: mul y, z            ; 55
1FE4: or y, w             ; A9
1FE5: mul x, a            ; 52
1FE6: mul y, z            ; 55
1FE7: mul y, z            ; 55
1FE8: mul y, z            ; 55
1FE9: mul x, a            ; 52
1FEA: mul y, z            ; 55
1FEB: mul y, z            ; 55
1FEC: mul y, z            ; 55
1FED: and y, w            ; 95
1FEE: cmp w, a            ; 84
1FEF: cmp w, x            ; 80
1FF0: nop                 ; 00
1FF1: sub z, y            ; 40
1FF2: nop                 ; 00
1FF3: nop                 ; 00
1FF4: nop                 ; 00
1FF5: nop                 ; 00
1FF6: nop                 ; 00
1FF7: nop                 ; 00
1FF8: nop                 ; 00
1FF9: nop                 ; 00
1FFA: sub a, y            ; 4A
1FFB: sub a, y            ; 4A
1FFC: sub a, x            ; 49
1FFD: or y, w             ; A9
1FFE: or y, a             ; AA
1FFF: or y, a             ; AA
2000: add z, a            ; 2A
2001: mul y, z            ; 55
2002: and x, a            ; 92
2003: and x, a            ; 92
2004: add z, a            ; 2A
2005: mul y, z            ; 55
2006: mul y, z            ; 55
2007: sub a, x            ; 49
2008: add z, a            ; 2A
2009: or y, w             ; A9
200A: and x, a            ; 92
200B: and y, z            ; 94
200C: sub a, y            ; 4A
200D: mul y, z            ; 55
200E: add z, w            ; 29
200F: add y, a            ; 25
2010: or x, w             ; A5
2011: or y, a             ; AA
2012: or x, z             ; A4
2013: sub a, y            ; 4A
2014: sub a, x            ; 49
2015: mul x, a            ; 52
2016: call $000B          ; 15 0B 00
2019: nop                 ; 00
201A: nop                 ; 00
201B: nop                 ; 00
201C: nop                 ; 00
201D: nop                 ; 00
201E: nop                 ; 00
201F: nop                 ; 00
2020: nop                 ; 00
2021: nop                 ; 00
2022: or y, a             ; AA
2023: mul x, a            ; 52
2024: mul y, z            ; 55
2025: sub a, y            ; 4A
2026: or y, w             ; A9
2027: and x, a            ; 92
2028: or y, a             ; AA
2029: or x, z             ; A4
202A: or y, a             ; AA
202B: mul y, y            ; 54
202C: mul y, z            ; 55
202D: sub a, x            ; 49
202E: or y, a             ; AA
202F: or y, a             ; AA
2030: sub a, y            ; 4A
2031: mul y, z            ; 55
2032: mul y, z            ; 55
2033: or x, w             ; A5
2034: mul x, a            ; 52
2035: or x, w             ; A5
2036: or y, a             ; AA
2037: mul y, y            ; 54
2038: mul y, z            ; 55
2039: and y, w            ; 95
203A: add z, a            ; 2A
203B: add z, w            ; 29
203C: mul y, z            ; 55
203D: sub a, x            ; 49
203E: add z, w            ; 29
203F: add y, w            ; 24
2040: nop                 ; 00
2041: nop                 ; 00
2042: nop                 ; 00
2043: nop                 ; 00
2044: nop                 ; 00
2045: nop                 ; 00
2046: nop                 ; 00
2047: nop                 ; 00
2048: nop                 ; 00
2049: nop                 ; 00
204A: or x, w             ; A5
204B: or y, a             ; AA
204C: or y, a             ; AA
204D: add z, a            ; 2A
204E: and y, w            ; 95
204F: mul y, y            ; 54
2050: mul y, z            ; 55
2051: and y, w            ; 95
2052: add y, w            ; 24
2053: sub a, x            ; 49
2054: and x, a            ; 92
2055: or y, a             ; AA
2056: add z, a            ; 2A
2057: mul y, z            ; 55
2058: or y, w             ; A9
2059: and y, z            ; 94
205A: mul y, y            ; 54
205B: or y, a             ; AA
205C: mul y, y            ; 54
205D: add z, a            ; 2A
205E: or x, w             ; A5
205F: or y, a             ; AA
2060: and y, z            ; 94
2061: mul y, y            ; 54
2062: mul y, z            ; 55
2063: mul y, z            ; 55
2064: add y, a            ; 25
2065: mul y, z            ; 55
2066: or y, a             ; AA
2067: and x, z            ; 90
2068: nop                 ; 00
2069: nop                 ; 00
206A: nop                 ; 00
206B: nop                 ; 00
206C: nop                 ; 00
206D: nop                 ; 00
206E: nop                 ; 00
206F: nop                 ; 00
2070: nop                 ; 00
2071: nop                 ; 00
2072: add z, w            ; 29
2073: and y, w            ; 95
2074: or y, a             ; AA
2075: or y, a             ; AA
2076: mul x, a            ; 52
2077: mul y, z            ; 55
2078: mul x, a            ; 52
2079: mul y, z            ; 55
207A: mul y, z            ; 55
207B: or x, w             ; A5
207C: mul y, y            ; 54
207D: and x, a            ; 92
207E: or x, z             ; A4
207F: and x, a            ; 92
2080: or y, a             ; AA
2081: or y, a             ; AA
2082: sub a, y            ; 4A
2083: add z, w            ; 29
2084: mul y, z            ; 55
2085: or y, w             ; A9
2086: or y, a             ; AA
2087: and x, a            ; 92
2088: mul x, a            ; 52
2089: or x, w             ; A5
208A: or x, z             ; A4
208B: or x, z             ; A4
208C: mul y, y            ; 54
208D: sub a, x            ; 49
208E: or x, w             ; A5
208F: sub z, w            ; 42
2090: nop                 ; 00
2091: nop                 ; 00
2092: push w              ; 04
2093: nop                 ; 00
2094: nop                 ; 00
2095: nop                 ; 00
2096: nop                 ; 00
2097: nop                 ; 00
2098: nop                 ; 00
2099: nop                 ; 00
209A: mul y, z            ; 55
209B: or y, w             ; A9
209C: and y, z            ; 94
209D: sub a, y            ; 4A
209E: mul y, z            ; 55
209F: mul y, z            ; 55
20A0: and y, w            ; 95
20A1: mul x, a            ; 52
20A2: and x, a            ; 92
20A3: and y, z            ; 94
20A4: sub a, y            ; 4A
20A5: mul y, z            ; 55
20A6: or y, w             ; A9
20A7: mul y, y            ; 54
20A8: add y, a            ; 25
20A9: or x, w             ; A5
20AA: or y, a             ; AA
20AB: sub a, y            ; 4A
20AC: add y, a            ; 25
20AD: mul y, z            ; 55
20AE: or y, w             ; A9
20AF: or y, a             ; AA
20B0: or y, a             ; AA
20B1: or y, a             ; AA
20B2: add z, a            ; 2A
20B3: mul y, z            ; 55
20B4: mul y, z            ; 55
20B5: add y, a            ; 25
20B6: sub a, x            ; 49
20B7: pop a               ; 0A
20B8: push y              ; 02
20B9: nop                 ; 00
20BA: nop                 ; 00
20BB: nop                 ; 00
20BC: nop                 ; 00
20BD: nop                 ; 00
20BE: nop                 ; 00
20BF: nop                 ; 00
20C0: nop                 ; 00
20C1: nop                 ; 00
20C2: or x, w             ; A5
20C3: or y, a             ; AA
20C4: or y, a             ; AA
20C5: mul y, y            ; 54
20C6: sub a, y            ; 4A
20C7: and x, a            ; 92
20C8: or y, a             ; AA
20C9: sub a, y            ; 4A
20CA: mul y, z            ; 55
20CB: mul x, a            ; 52
20CC: mul x, a            ; 52
20CD: or x, w             ; A5
20CE: sub a, y            ; 4A
20CF: mul y, z            ; 55
20D0: or y, a             ; AA
20D1: add z, a            ; 2A
20D2: add z, w            ; 29
20D3: mul y, z            ; 55
20D4: or y, w             ; A9
20D5: sub a, y            ; 4A
20D6: sub a, y            ; 4A
20D7: or y, a             ; AA
20D8: sub a, y            ; 4A
20D9: sub a, y            ; 4A
20DA: mul y, z            ; 55
20DB: sub a, x            ; 49
20DC: add y, a            ; 25
20DD: mul y, z            ; 55
20DE: mul y, z            ; 55
20DF: pop w               ; 09
20E0: add z, z            ; 28
20E1: nop                 ; 00
20E2: nop                 ; 00
20E3: nop                 ; 00
20E4: nop                 ; 00
20E5: nop                 ; 00
20E6: nop                 ; 00
20E7: nop                 ; 00
20E8: nop                 ; 00
20E9: nop                 ; 00
20EA: mul y, y            ; 54
20EB: sub a, y            ; 4A
20EC: mul y, z            ; 55
20ED: or x, w             ; A5
20EE: mul x, a            ; 52
20EF: mul y, z            ; 55
20F0: or x, w             ; A5
20F1: mul y, y            ; 54
20F2: sub a, x            ; 49
20F3: and y, w            ; 95
20F4: or y, a             ; AA
20F5: mul y, y            ; 54
20F6: add z, a            ; 2A
20F7: and y, w            ; 95
20F8: or y, a             ; AA
20F9: mul x, a            ; 52
20FA: or x, w             ; A5
20FB: mul x, a            ; 52
20FC: mul y, z            ; 55
20FD: or y, w             ; A9
20FE: or y, a             ; AA
20FF: or y, a             ; AA
2100: mul y, y            ; 54
2101: mul y, z            ; 55
2102: and x, a            ; 92
2103: add z, a            ; 2A
2104: or y, w             ; A9
2105: and x, a            ; 92
2106: add y, w            ; 24
2107: mul y, z            ; 55
2108: nop                 ; 00
2109: push x              ; 01
210A: nop                 ; 00
210B: nop                 ; 00
210C: nop                 ; 00
210D: nop                 ; 00
210E: nop                 ; 00
210F: nop                 ; 00
2110: nop                 ; 00
2111: nop                 ; 00
2112: sub a, y            ; 4A
2113: or y, w             ; A9
2114: mul x, a            ; 52
2115: mul y, z            ; 55
2116: and y, w            ; 95
2117: or x, z             ; A4
2118: mul y, y            ; 54
2119: mul y, z            ; 55
211A: or y, a             ; AA
211B: or x, z             ; A4
211C: add y, w            ; 24
211D: and y, w            ; 95
211E: mul x, a            ; 52
211F: or y, w             ; A9
2120: and x, a            ; 92
2121: mul y, y            ; 54
2122: mul y, z            ; 55
2123: and y, w            ; 95
2124: sub a, y            ; 4A
2125: or y, a             ; AA
2126: or y, a             ; AA
2127: and x, a            ; 92
2128: mul x, a            ; 52
2129: or y, w             ; A9
212A: or y, a             ; AA
212B: mul x, a            ; 52
212C: mul y, z            ; 55
212D: or y, a             ; AA
212E: or y, a             ; AA
212F: mul x, a            ; 52
2130: push x              ; 01
2131: nop                 ; 00
2132: nop                 ; 00
2133: nop                 ; 00
2134: nop                 ; 00
2135: nop                 ; 00
2136: nop                 ; 00
2137: nop                 ; 00
2138: nop                 ; 00
2139: nop                 ; 00
213A: mul x, a            ; 52
213B: or x, w             ; A5
213C: and y, z            ; 94
213D: and y, z            ; 94
213E: mul y, y            ; 54
213F: and y, w            ; 95
2140: and x, a            ; 92
2141: mul x, a            ; 52
2142: add y, a            ; 25
2143: add z, w            ; 29
2144: sub a, x            ; 49
2145: or x, w             ; A5
2146: or y, a             ; AA
2147: sub a, y            ; 4A
2148: mul y, z            ; 55
2149: and y, w            ; 95
214A: and y, z            ; 94
214B: mul y, y            ; 54
214C: mul x, a            ; 52
214D: add y, a            ; 25
214E: add z, w            ; 29
214F: mul y, z            ; 55
2150: mul y, z            ; 55
2151: sub a, y            ; 4A
2152: or y, w             ; A9
2153: and y, z            ; 94
2154: and y, z            ; 94
2155: sub a, y            ; 4A
2156: sub a, x            ; 49
2157: or y, a             ; AA
2158: mul y, y            ; 54
2159: add z, w            ; 29
215A: nop                 ; 00
215B: nop                 ; 00
215C: nop                 ; 00
215D: nop                 ; 00
215E: nop                 ; 00
215F: nop                 ; 00
2160: nop                 ; 00
2161: nop                 ; 00
2162: or y, a             ; AA
2163: add z, a            ; 2A
2164: mul y, z            ; 55
2165: mul y, z            ; 55
2166: add y, a            ; 25
2167: or y, w             ; A9
2168: or y, a             ; AA
2169: sub a, y            ; 4A
216A: mul y, z            ; 55
216B: or x, w             ; A5
216C: add z, a            ; 2A
216D: add z, w            ; 29
216E: add y, a            ; 25
216F: mul y, z            ; 55
2170: or y, a             ; AA
2171: or y, a             ; AA
2172: or y, a             ; AA
2173: or y, a             ; AA
2174: or y, a             ; AA
2175: or y, a             ; AA
2176: or y, a             ; AA
2177: or y, a             ; AA
2178: sub a, y            ; 4A
2179: mul y, z            ; 55
217A: sub a, y            ; 4A
217B: mul y, z            ; 55
217C: or x, w             ; A5
217D: add z, a            ; 2A
217E: and y, w            ; 95
217F: add y, w            ; 24
2180: add y, a            ; 25
2181: or x, w             ; A5
2182: nop                 ; 00
2183: nop                 ; 00
2184: nop                 ; 00
2185: nop                 ; 00
2186: nop                 ; 00
2187: nop                 ; 00
2188: nop                 ; 00
2189: nop                 ; 00
218A: mul y, z            ; 55
218B: mul x, a            ; 52
218C: or x, w             ; A5
218D: sub a, y            ; 4A
218E: mul y, z            ; 55
218F: add y, a            ; 25
2190: sub a, x            ; 49
2191: or y, a             ; AA
2192: mul y, y            ; 54
2193: call $5249          ; 15 49 52
2196: or y, w             ; A9
2197: mul x, a            ; 52
2198: add y, a            ; 25
2199: sub a, x            ; 49
219A: or x, w             ; A5
219B: sub a, y            ; 4A
219C: and y, w            ; 95
219D: mul x, a            ; 52
219E: or x, w             ; A5
219F: mul y, y            ; 54
21A0: or y, a             ; AA
21A1: mul x, a            ; 52
21A2: mul y, z            ; 55
21A3: sub a, y            ; 4A
21A4: or y, a             ; AA
21A5: or x, z             ; A4
21A6: or x, z             ; A4
21A7: sub a, y            ; 4A
21A8: and y, w            ; 95
21A9: store $0001, a      ; 14 01 00
21AC: nop                 ; 00
21AD: nop                 ; 00
21AE: nop                 ; 00
21AF: nop                 ; 00
21B0: nop                 ; 00
21B1: nop                 ; 00
21B2: and y, w            ; 95
21B3: sub a, y            ; 4A
21B4: and y, w            ; 95
21B5: mul y, y            ; 54
21B6: mul x, a            ; 52
21B7: or y, a             ; AA
21B8: or y, a             ; AA
21B9: add z, a            ; 2A
21BA: add y, a            ; 25
21BB: or y, w             ; A9
21BC: or x, z             ; A4
21BD: sub a, y            ; 4A
21BE: sub a, y            ; 4A
21BF: or y, a             ; AA
21C0: or y, a             ; AA
21C1: or y, a             ; AA
21C2: mul y, y            ; 54
21C3: add z, a            ; 2A
21C4: or y, w             ; A9
21C5: and y, z            ; 94
21C6: mul y, y            ; 54
21C7: or x, w             ; A5
21C8: mul x, a            ; 52
21C9: sub a, y            ; 4A
21CA: or y, w             ; A9
21CB: mul x, a            ; 52
21CC: sub a, x            ; 49
21CD: mul y, z            ; 55
21CE: mul y, z            ; 55
21CF: mul x, a            ; 52
21D0: mul x, a            ; 52
21D1: mul x, a            ; 52
21D2: push y              ; 02
21D3: nop                 ; 00
21D4: nop                 ; 00
21D5: nop                 ; 00
21D6: nop                 ; 00
21D7: nop                 ; 00
21D8: nop                 ; 00
21D9: nop                 ; 00
21DA: mul x, a            ; 52
21DB: add z, w            ; 29
21DC: or y, w             ; A9
21DD: sub a, y            ; 4A
21DE: and y, w            ; 95
21DF: and x, a            ; 92
21E0: add y, w            ; 24
21E1: or x, w             ; A5
21E2: or y, a             ; AA
21E3: sub a, y            ; 4A
21E4: and y, w            ; 95
21E5: mul y, y            ; 54
21E6: mul y, z            ; 55
21E7: add z, w            ; 29
21E8: or y, w             ; A9
21E9: or y, a             ; AA
21EA: or y, a             ; AA
21EB: mul x, a            ; 52
21EC: add y, a            ; 25
21ED: mul y, z            ; 55
21EE: and y, w            ; 95
21EF: or y, a             ; AA
21F0: or y, a             ; AA
21F1: add z, a            ; 2A
21F2: and y, w            ; 95
21F3: or y, a             ; AA
21F4: add z, a            ; 2A
21F5: sub a, x            ; 49
21F6: and x, a            ; 92
21F7: add z, a            ; 2A
21F8: or y, w             ; A9
21F9: sub a, y            ; 4A
21FA: pop w               ; 09
21FB: nop                 ; 00
21FC: nop                 ; 00
21FD: nop                 ; 00
21FE: nop                 ; 00
21FF: nop                 ; 00
2200: nop                 ; 00
2201: nop                 ; 00
2202: mul y, y            ; 54
2203: mul y, z            ; 55
2204: add y, a            ; 25
2205: add z, w            ; 29
2206: or y, w             ; A9
2207: mul y, y            ; 54
2208: mul y, z            ; 55
2209: or y, w             ; A9
220A: mul y, y            ; 54
220B: add z, a            ; 2A
220C: sub a, x            ; 49
220D: and x, a            ; 92
220E: or x, z             ; A4
220F: sub a, y            ; 4A
2210: add y, a            ; 25
2211: sub a, x            ; 49
2212: and y, w            ; 95
2213: or y, a             ; AA
2214: or y, a             ; AA
2215: add z, a            ; 2A
2216: or y, w             ; A9
2217: mul y, y            ; 54
2218: and y, w            ; 95
2219: or y, a             ; AA
221A: mul x, a            ; 52
221B: sub a, y            ; 4A
221C: mul x, a            ; 52
221D: mul y, z            ; 55
221E: mul y, z            ; 55
221F: mul x, a            ; 52
2220: add y, a            ; 25
2221: add z, w            ; 29
2222: add y, a            ; 25
2223: nop                 ; 00
2224: nop                 ; 00
2225: nop                 ; 00
2226: nop                 ; 00
2227: nop                 ; 00
2228: nop                 ; 00
2229: nop                 ; 00
222A: and y, w            ; 95
222B: and y, z            ; 94
222C: mul y, y            ; 54
222D: mul y, z            ; 55
222E: and y, w            ; 95
222F: sub a, y            ; 4A
2230: and x, a            ; 92
2231: and y, z            ; 94
2232: sub a, y            ; 4A
2233: or x, w             ; A5
2234: mul x, a            ; 52
2235: mul y, z            ; 55
2236: mul y, z            ; 55
2237: or y, a             ; AA
2238: or y, a             ; AA
2239: add z, a            ; 2A
223A: or x, w             ; A5
223B: or y, a             ; AA
223C: and y, z            ; 94
223D: or x, z             ; A4
223E: sub a, y            ; 4A
223F: and y, w            ; 95
2240: mul y, y            ; 54
2241: or x, w             ; A5
2242: or y, a             ; AA
2243: mul x, a            ; 52
2244: and y, w            ; 95
2245: add y, w            ; 24
2246: sub a, x            ; 49
2247: and y, w            ; 95
2248: and y, z            ; 94
2249: sub a, y            ; 4A
224A: store $0000, z      ; 12 00 00
224D: nop                 ; 00
224E: nop                 ; 00
224F: nop                 ; 00
2250: nop                 ; 00
2251: nop                 ; 00
2252: or y, w             ; A9
2253: mul x, a            ; 52
2254: mul y, z            ; 55
2255: mul x, a            ; 52
2256: mul x, a            ; 52
2257: mul x, a            ; 52
2258: sub a, x            ; 49
2259: or x, w             ; A5
225A: mul y, y            ; 54
225B: or y, w             ; A9
225C: sub a, y            ; 4A
225D: and x, a            ; 92
225E: add y, w            ; 24
225F: add z, w            ; 29
2260: mul y, z            ; 55
2261: mul y, z            ; 55
2262: mul y, z            ; 55
2263: sub a, y            ; 4A
2264: mul y, z            ; 55
2265: mul x, a            ; 52
2266: mul x, a            ; 52
2267: or y, w             ; A9
2268: or y, a             ; AA
2269: and y, z            ; 94
226A: or x, z             ; A4
226B: and y, z            ; 94
226C: or x, z             ; A4
226D: mul x, a            ; 52
226E: mul y, z            ; 55
226F: mul x, a            ; 52
2270: mul x, a            ; 52
2271: mul x, a            ; 52
2272: sub a, x            ; 49
2273: nop                 ; 00
2274: nop                 ; 00
2275: nop                 ; 00
2276: nop                 ; 00
2277: nop                 ; 00
2278: nop                 ; 00
2279: nop                 ; 00
227A: sub a, y            ; 4A
227B: sub a, y            ; 4A
227C: and x, a            ; 92
227D: sub a, y            ; 4A
227E: or x, w             ; A5
227F: sub a, y            ; 4A
2280: or y, a             ; AA
2281: and y, z            ; 94
2282: mul x, a            ; 52
2283: add z, a            ; 2A
2284: or y, w             ; A9
2285: add y, w            ; 24
2286: mul y, z            ; 55
2287: or x, w             ; A5
2288: add y, w            ; 24
2289: or x, w             ; A5
228A: mul y, y            ; 54
228B: add z, w            ; 29
228C: or x, w             ; A5
228D: add z, a            ; 2A
228E: mul y, z            ; 55
228F: sub a, y            ; 4A
2290: or x, w             ; A5
2291: or y, a             ; AA
2292: add z, a            ; 2A
2293: mul y, z            ; 55
2294: mul y, z            ; 55
2295: sub a, y            ; 4A
2296: and x, a            ; 92
2297: sub a, y            ; 4A
2298: and y, w            ; 95
2299: add y, w            ; 24
229A: or y, a             ; AA
229B: push y              ; 02
229C: nop                 ; 00
229D: nop                 ; 00
229E: nop                 ; 00
229F: nop                 ; 00
22A0: nop                 ; 00
22A1: nop                 ; 00
22A2: mul x, a            ; 52
22A3: or y, w             ; A9
22A4: sub a, y            ; 4A
22A5: add z, w            ; 29
22A6: sub a, x            ; 49
22A7: and x, a            ; 92
22A8: store $A529, z      ; 12 29 A5
22AB: mul x, a            ; 52
22AC: and y, w            ; 95
22AD: sub a, y            ; 4A
22AE: sub a, x            ; 49
22AF: mul y, z            ; 55
22B0: mul y, z            ; 55
22B1: mul y, z            ; 55
22B2: mul y, z            ; 55
22B3: mul y, z            ; 55
22B4: or y, w             ; A9
22B5: sub w, x            ; 44
22B6: or x, w             ; A5
22B7: add z, a            ; 2A
22B8: and y, w            ; 95
22B9: or y, a             ; AA
22BA: sub a, y            ; 4A
22BB: add z, w            ; 29
22BC: sub a, x            ; 49
22BD: add z, w            ; 29
22BE: or y, w             ; A9
22BF: and y, z            ; 94
22C0: or x, z             ; A4
22C1: sub a, y            ; 4A
22C2: and x, w            ; 91
22C3: pop z               ; 08
22C4: nop                 ; 00
22C5: nop                 ; 00
22C6: nop                 ; 00
22C7: nop                 ; 00
22C8: nop                 ; 00
22C9: nop                 ; 00
22CA: mul y, z            ; 55
22CB: sub a, y            ; 4A
22CC: mul x, a            ; 52
22CD: or x, w             ; A5
22CE: add z, a            ; 2A
22CF: or y, w             ; A9
22D0: or x, z             ; A4
22D1: sub a, y            ; 4A
22D2: add z, w            ; 29
22D3: and y, w            ; 95
22D4: mul x, a            ; 52
22D5: mul x, a            ; 52
22D6: add z, a            ; 2A
22D7: sub a, x            ; 49
22D8: mul x, a            ; 52
22D9: add z, w            ; 29
22DA: add y, a            ; 25
22DB: mul y, z            ; 55
22DC: and y, w            ; 95
22DD: or y, a             ; AA
22DE: and y, z            ; 94
22DF: mul x, a            ; 52
22E0: or y, w             ; A9
22E1: mul x, a            ; 52
22E2: mul x, a            ; 52
22E3: or x, w             ; A5
22E4: mul x, a            ; 52
22E5: sub a, y            ; 4A
22E6: and y, w            ; 95
22E7: mul x, a            ; 52
22E8: sub a, x            ; 49
22E9: and x, a            ; 92
22EA: sub a, y            ; 4A
22EB: store $0000, z      ; 12 00 00
22EE: nop                 ; 00
22EF: nop                 ; 00
22F0: nop                 ; 00
22F1: nop                 ; 00
22F2: add y, a            ; 25
22F3: or x, w             ; A5
22F4: and y, z            ; 94
22F5: and y, z            ; 94
22F6: or x, z             ; A4
22F7: add y, w            ; 24
22F8: mul y, z            ; 55
22F9: mul x, a            ; 52
22FA: sub a, y            ; 4A
22FB: or y, w             ; A9
22FC: mul y, y            ; 54
22FD: sub a, x            ; 49
22FE: mul x, w            ; 51
22FF: mul y, z            ; 55
2300: and y, w            ; 95
2301: or y, a             ; AA
2302: mul y, y            ; 54
2303: sub a, x            ; 49
2304: mul y, z            ; 55
2305: add z, w            ; 29
2306: mul y, z            ; 55
2307: or y, a             ; AA
2308: or y, a             ; AA
2309: or y, a             ; AA
230A: add z, a            ; 2A
230B: and y, w            ; 95
230C: and y, z            ; 94
230D: mul x, a            ; 52
230E: add y, y            ; 22
230F: sub a, x            ; 49
2310: add z, a            ; 2A
2311: add z, w            ; 29
2312: add z, w            ; 29
2313: sub w, y            ; 45
2314: nop                 ; 00
2315: nop                 ; 00
2316: nop                 ; 00
2317: nop                 ; 00
2318: nop                 ; 00
2319: nop                 ; 00
231A: mul y, y            ; 54
231B: and y, w            ; 95
231C: mul x, a            ; 52
231D: add z, a            ; 2A
231E: and y, w            ; 95
231F: sub a, y            ; 4A
2320: and x, a            ; 92
2321: add y, w            ; 24
2322: or y, w             ; A9
2323: sub a, y            ; 4A
2324: and y, w            ; 95
2325: add z, a            ; 2A
2326: and y, w            ; 95
2327: add y, w            ; 24
2328: mul y, z            ; 55
2329: sub a, y            ; 4A
232A: mul y, z            ; 55
232B: mul y, z            ; 55
232C: or x, w             ; A5
232D: or y, a             ; AA
232E: sub a, y            ; 4A
232F: and y, w            ; 95
2330: mul y, y            ; 54
2331: add z, a            ; 2A
2332: sub a, x            ; 49
2333: mul x, a            ; 52
2334: or x, w             ; A5
2335: and y, z            ; 94
2336: mul y, y            ; 54
2337: add z, a            ; 2A
2338: or x, w             ; A5
2339: or x, z             ; A4
233A: sub w, x            ; 44
233B: and x, a            ; 92
233C: nop                 ; 00
233D: nop                 ; 00
233E: nop                 ; 00
233F: nop                 ; 00
2340: nop                 ; 00
2341: nop                 ; 00
2342: sub a, x            ; 49
2343: mul x, a            ; 52
2344: sub a, y            ; 4A
2345: sub a, x            ; 49
2346: sub a, x            ; 49
2347: mul x, a            ; 52
2348: sub a, x            ; 49
2349: and y, w            ; 95
234A: and x, a            ; 92
234B: mul y, y            ; 54
234C: mul x, a            ; 52
234D: and x, a            ; 92
234E: or x, z             ; A4
234F: or y, a             ; AA
2350: or x, z             ; A4
2351: mul x, a            ; 52
2352: sub a, x            ; 49
2353: mul y, z            ; 55
2354: add z, a            ; 2A
2355: or x, w             ; A5
2356: mul y, y            ; 54
2357: or y, w             ; A9
2358: and x, a            ; 92
2359: mul x, a            ; 52
235A: mul y, z            ; 55
235B: sub a, x            ; 49
235C: and x, a            ; 92
235D: mul x, a            ; 52
235E: or x, w             ; A5
235F: mul x, a            ; 52
2360: sub a, x            ; 49
2361: and x, a            ; 92
2362: mul x, a            ; 52
2363: sub a, x            ; 49
2364: push y              ; 02
2365: nop                 ; 00
2366: nop                 ; 00
2367: nop                 ; 00
2368: nop                 ; 00
2369: nop                 ; 00
236A: or y, a             ; AA
236B: and y, z            ; 94
236C: and x, a            ; 92
236D: mul x, a            ; 52
236E: mul x, a            ; 52
236F: sub a, x            ; 49
2370: or y, a             ; AA
2371: or x, z             ; A4
2372: mul y, y            ; 54
2373: and x, a            ; 92
2374: sub a, y            ; 4A
2375: mul y, z            ; 55
2376: add z, w            ; 29
2377: sub a, x            ; 49
2378: mul y, z            ; 55
2379: mul y, z            ; 55
237A: add z, a            ; 2A
237B: sub a, x            ; 49
237C: or y, w             ; A9
237D: add z, a            ; 2A
237E: add y, a            ; 25
237F: or x, w             ; A5
2380: or y, a             ; AA
2381: sub a, y            ; 4A
2382: add y, a            ; 25
2383: and y, w            ; 95
2384: sub a, y            ; 4A
2385: sub a, y            ; 4A
2386: store $2A49, z      ; 12 49 2A
2389: add y, a            ; 25
238A: add z, w            ; 29
238B: and x, a            ; 92
238C: push w              ; 04
238D: nop                 ; 00
238E: nop                 ; 00
238F: nop                 ; 00
2390: nop                 ; 00
2391: nop                 ; 00
2392: and x, a            ; 92
2393: mul x, a            ; 52
2394: add z, a            ; 2A
2395: and y, w            ; 95
2396: sub a, y            ; 4A
2397: add z, a            ; 2A
2398: cmp a, a            ; 89
2399: and x, a            ; 92
239A: and x, a            ; 92
239B: or y, a             ; AA
239C: mul y, y            ; 54
239D: sub a, x            ; 49
239E: sub a, y            ; 4A
239F: add z, a            ; 2A
23A0: sub a, x            ; 49
23A1: sub a, y            ; 4A
23A2: mul y, z            ; 55
23A3: mul y, z            ; 55
23A4: mul y, z            ; 55
23A5: or y, a             ; AA
23A6: or y, a             ; AA
23A7: add z, a            ; 2A
23A8: or x, w             ; A5
23A9: mul y, y            ; 54
23AA: or y, a             ; AA
23AB: mul x, a            ; 52
23AC: and x, a            ; 92
23AD: add y, w            ; 24
23AE: sub a, x            ; 49
23AF: add z, a            ; 2A
23B0: sub a, x            ; 49
23B1: sub a, x            ; 49
23B2: sub w, x            ; 44
23B3: sub a, x            ; 49
23B4: store $0000, z      ; 12 00 00
23B7: nop                 ; 00
23B8: nop                 ; 00
23B9: nop                 ; 00
23BA: mul y, y            ; 54
23BB: sub a, y            ; 4A
23BC: sub a, x            ; 49
23BD: sub a, x            ; 49
23BE: and x, a            ; 92
23BF: sub w, x            ; 44
23C0: add y, a            ; 25
23C1: or y, w             ; A9
23C2: or x, z             ; A4
23C3: and x, a            ; 92
23C4: mul x, a            ; 52
23C5: or y, a             ; AA
23C6: mul x, a            ; 52
23C7: sub a, x            ; 49
23C8: mul y, z            ; 55
23C9: or y, w             ; A9
23CA: mul x, a            ; 52
23CB: mul y, z            ; 55
23CC: sub a, y            ; 4A
23CD: sub a, x            ; 49
23CE: or y, w             ; A9
23CF: or y, a             ; AA
23D0: and y, z            ; 94
23D1: or y, a             ; AA
23D2: mul x, a            ; 52
23D3: sub a, y            ; 4A
23D4: add z, w            ; 29
23D5: or y, w             ; A9
23D6: or y, a             ; AA
23D7: and x, a            ; 92
23D8: and x, a            ; 92
23D9: and y, z            ; 94
23DA: mul x, a            ; 52
23DB: and x, a            ; 92
23DC: add y, w            ; 24
23DD: nop                 ; 00
23DE: nop                 ; 00
23DF: nop                 ; 00
23E0: nop                 ; 00
23E1: nop                 ; 00
23E2: or x, w             ; A5
23E3: and x, a            ; 92
23E4: add y, w            ; 24
23E5: add y, a            ; 25
23E6: or y, w             ; A9
23E7: and x, a            ; 92
23E8: mul y, y            ; 54
23E9: sub a, y            ; 4A
23EA: add z, a            ; 2A
23EB: or y, w             ; A9
23EC: sub a, y            ; 4A
23ED: add y, a            ; 25
23EE: sub a, x            ; 49
23EF: mul x, a            ; 52
23F0: and x, a            ; 92
23F1: add z, a            ; 2A
23F2: and y, w            ; 95
23F3: or x, z             ; A4
23F4: or y, a             ; AA
23F5: or y, a             ; AA
23F6: sub a, y            ; 4A
23F7: mul x, a            ; 52
23F8: mul y, z            ; 55
23F9: sub a, x            ; 49
23FA: and y, w            ; 95
23FB: add z, a            ; 2A
23FC: or x, w             ; A5
23FD: sub w, x            ; 44
23FE: add y, y            ; 22
23FF: or x, z             ; A4
2400: mul y, y            ; 54
2401: mul x, a            ; 52
2402: cmpbit x            ; 8A 24
2404: and x, w            ; 91
2405: nop                 ; 00
2406: nop                 ; 00
2407: nop                 ; 00
2408: nop                 ; 00
2409: nop                 ; 00
240A: and x, a            ; 92
240B: mul y, y            ; 54
240C: or y, a             ; AA
240D: or y, z             ; A8
240E: add y, w            ; 24
240F: add z, w            ; 29
2410: and x, w            ; 91
2411: and x, a            ; 92
2412: and x, a            ; 92
2413: and y, z            ; 94
2414: and y, z            ; 94
2415: mul y, y            ; 54
2416: and y, w            ; 95
2417: and y, z            ; 94
2418: mul y, y            ; 54
2419: or x, w             ; A5
241A: or y, a             ; AA
241B: add z, a            ; 2A
241C: or x, w             ; A5
241D: or y, a             ; AA
241E: mul y, y            ; 54
241F: and y, w            ; 95
2420: sub a, y            ; 4A
2421: add z, a            ; 2A
2422: or y, w             ; A9
2423: or x, z             ; A4
2424: store $4929, a      ; 14 29 49
2427: add z, w            ; 29
2428: add y, a            ; 25
2429: add y, a            ; 25
242A: add y, x            ; 21
242B: sub a, x            ; 49
242C: add y, w            ; 24
242D: push x              ; 01
242E: nop                 ; 00
242F: nop                 ; 00
2430: nop                 ; 00
2431: nop                 ; 00
2432: mul y, y            ; 54
2433: and x, a            ; 92
2434: and x, a            ; 92
2435: sub a, y            ; 4A
2436: and x, a            ; 92
2437: or x, z             ; A4
2438: add y, w            ; 24
2439: sub a, x            ; 49
243A: sub a, y            ; 4A
243B: or x, w             ; A5
243C: mul x, a            ; 52
243D: add y, a            ; 25
243E: or y, w             ; A9
243F: mul x, a            ; 52
2440: add y, a            ; 25
2441: mul y, z            ; 55
2442: or y, w             ; A9
2443: or y, a             ; AA
2444: add z, a            ; 2A
2445: sub a, x            ; 49
2446: and y, w            ; 95
2447: mul y, y            ; 54
2448: mul x, a            ; 52
2449: or x, w             ; A5
244A: sub a, y            ; 4A
244B: add z, w            ; 29
244C: sub a, x            ; 49
244D: and x, a            ; 92
244E: and y, z            ; 94
244F: sub w, x            ; 44
2450: sub w, a            ; 48
2451: and y, z            ; 94
2452: and y, z            ; 94
2453: add y, w            ; 24
2454: cmp a, a            ; 89
2455: push w              ; 04
2456: nop                 ; 00
2457: nop                 ; 00
2458: nop                 ; 00
2459: nop                 ; 00
245A: add y, a            ; 25
245B: add y, a            ; 25
245C: sub a, x            ; 49
245D: and x, a            ; 92
245E: add z, a            ; 2A
245F: call $A495          ; 15 95 A4
2462: add y, w            ; 24
2463: sub a, x            ; 49
2464: add z, a            ; 2A
2465: or y, w             ; A9
2466: sub a, y            ; 4A
2467: sub a, y            ; 4A
2468: mul x, a            ; 52
2469: add z, w            ; 29
246A: add y, a            ; 25
246B: or x, w             ; A5
246C: mul x, a            ; 52
246D: mul y, z            ; 55
246E: mul x, a            ; 52
246F: or x, w             ; A5
2470: add z, a            ; 2A
2471: mul y, z            ; 55
2472: mul x, a            ; 52
2473: sub a, y            ; 4A
2474: or x, w             ; A5
2475: add y, w            ; 24
2476: sub w, y            ; 45
2477: and x, a            ; 92
2478: and x, a            ; 92
2479: add y, y            ; 22
247A: add y, a            ; 25
247B: sub a, x            ; 49
247C: add y, y            ; 22
247D: pop w               ; 09
247E: nop                 ; 00
247F: nop                 ; 00
2480: nop                 ; 00
2481: nop                 ; 00
2482: sub w, a            ; 48
2483: or y, w             ; A9
2484: add y, w            ; 24
2485: sub a, x            ; 49
2486: sub w, x            ; 44
2487: and a, w            ; A2
2488: sub w, a            ; 48
2489: and x, a            ; 92
248A: mul x, a            ; 52
248B: add z, a            ; 2A
248C: sub a, x            ; 49
248D: and y, w            ; 95
248E: or x, z             ; A4
248F: add y, w            ; 24
2490: and y, w            ; 95
2491: sub a, y            ; 4A
2492: mul y, z            ; 55
2493: add z, w            ; 29
2494: mul y, z            ; 55
2495: and y, w            ; 95
2496: or y, a             ; AA
2497: or y, a             ; AA
2498: mul y, y            ; 54
2499: sub a, x            ; 49
249A: and y, w            ; 95
249B: mul x, a            ; 52
249C: and x, a            ; 92
249D: and x, a            ; 92
249E: add z, z            ; 28
249F: sub a, x            ; 49
24A0: or y, a             ; AA
24A1: and y, z            ; 94
24A2: sub w, a            ; 48
24A3: and x, a            ; 92
24A4: and y, z            ; 94
24A5: add y, w            ; 24
24A6: nop                 ; 00
24A7: nop                 ; 00
24A8: nop                 ; 00
24A9: nop                 ; 00
24AA: mul x, a            ; 52
24AB: store $54A9, z      ; 12 A9 54
24AE: add z, w            ; 29
24AF: sub a, x            ; 49
24B0: and x, a            ; 92
24B1: mul y, y            ; 54
24B2: and y, z            ; 94
24B3: or x, z             ; A4
24B4: and x, a            ; 92
24B5: or x, z             ; A4
24B6: add z, a            ; 2A
24B7: or y, w             ; A9
24B8: mul x, a            ; 52
24B9: or y, w             ; A9
24BA: or y, a             ; AA
24BB: or y, a             ; AA
24BC: and y, z            ; 94
24BD: or x, z             ; A4
24BE: sub a, y            ; 4A
24BF: and x, a            ; 92
24C0: and x, a            ; 92
24C1: add z, a            ; 2A
24C2: sub a, x            ; 49
24C3: add z, a            ; 2A
24C4: add z, w            ; 29
24C5: sub a, x            ; 49
24C6: and x, a            ; 92
24C7: add y, w            ; 24
24C8: pop w               ; 09
24C9: or x, w             ; A5
24CA: and x, a            ; 92
24CB: add y, w            ; 24
24CC: add y, x            ; 21
24CD: sub a, x            ; 49
24CE: nop                 ; 00
24CF: nop                 ; 00
24D0: nop                 ; 00
24D1: nop                 ; 00
24D2: cmpbit x            ; 8A 4A
24D4: sub w, y            ; 45
24D5: add y, y            ; 22
24D6: or x, w             ; A5
24D7: and y, z            ; 94
24D8: sub a, y            ; 4A
24D9: add y, y            ; 22
24DA: sub a, x            ; 49
24DB: sub a, x            ; 49
24DC: or y, a             ; AA
24DD: add z, a            ; 2A
24DE: sub a, x            ; 49
24DF: add y, a            ; 25
24E0: sub a, y            ; 4A
24E1: add z, a            ; 2A
24E2: add z, w            ; 29
24E3: mul y, z            ; 55
24E4: or x, w             ; A5
24E5: or y, a             ; AA
24E6: mul y, y            ; 54
24E7: mul y, z            ; 55
24E8: mul y, z            ; 55
24E9: mul x, a            ; 52
24EA: or y, a             ; AA
24EB: or x, z             ; A4
24EC: sub a, y            ; 4A
24ED: store $9249, z      ; 12 49 92
24F0: or x, z             ; A4
24F1: sub w, a            ; 48
24F2: sub a, y            ; 4A
24F3: and x, a            ; 92
24F4: and y, z            ; 94
24F5: add y, w            ; 24
24F6: push x              ; 01
24F7: nop                 ; 00
24F8: nop                 ; 00
24F9: nop                 ; 00
24FA: or x, z             ; A4
24FB: or x, z             ; A4
24FC: and x, z            ; 90
24FD: and y, z            ; 94
24FE: store $2125, x      ; 10 25 21
2501: sub a, x            ; 49
2502: add y, a            ; 25
2503: and y, w            ; 95
2504: add y, w            ; 24
2505: sub a, x            ; 49
2506: mul y, z            ; 55
2507: sub a, y            ; 4A
2508: and x, w            ; 91
2509: sub a, y            ; 4A
250A: or x, w             ; A5
250B: and x, a            ; 92
250C: or y, a             ; AA
250D: add z, a            ; 2A
250E: add y, a            ; 25
250F: add z, w            ; 29
2510: sub a, x            ; 49
2511: and y, w            ; 95
2512: and x, a            ; 92
2513: sub a, y            ; 4A
2514: mul x, a            ; 52
2515: sub a, x            ; 49
2516: and x, a            ; 92
2517: add y, w            ; 24
2518: add z, w            ; 29
2519: add y, a            ; 25
251A: and x, w            ; 91
251B: add y, w            ; 24
251C: add y, y            ; 22
251D: sub a, x            ; 49
251E: nop                 ; 00
251F: nop                 ; 00
2520: nop                 ; 00
2521: nop                 ; 00
2522: store $5509, z      ; 12 09 55
2525: mul x, a            ; 52
2526: sub a, y            ; 4A
2527: and x, z            ; 90
2528: and y, z            ; 94
2529: add y, w            ; 24
252A: and x, a            ; 92
252B: or x, z             ; A4
252C: and x, a            ; 92
252D: mul y, y            ; 54
252E: and x, a            ; 92
252F: or y, a             ; AA
2530: mul y, y            ; 54
2531: mul x, a            ; 52
2532: or y, a             ; AA
2533: mul y, y            ; 54
2534: add z, w            ; 29
2535: sub a, x            ; 49
2536: or y, w             ; A9
2537: sub a, y            ; 4A
2538: add y, a            ; 25
2539: or y, w             ; A9
253A: add y, w            ; 24
253B: add z, w            ; 29
253C: cmp a, a            ; 89
253D: add y, w            ; 24
253E: sub a, x            ; 49
253F: and x, a            ; 92
2540: sub w, x            ; 44
2541: and x, a            ; 92
2542: add y, w            ; 24
2543: and x, w            ; 91
2544: cmp a, w            ; 88
2545: add x, a            ; 20
2546: push a              ; 05
2547: nop                 ; 00
2548: nop                 ; 00
2549: nop                 ; 00
254A: mul y, y            ; 54
254B: mul x, a            ; 52
254C: pop w               ; 09
254D: cmp a, a            ; 89
254E: mul x, a            ; 52
254F: add y, a            ; 25
2550: sub a, x            ; 49
2551: and x, a            ; 92
2552: add z, z            ; 28
2553: add z, w            ; 29
2554: or y, w             ; A9
2555: and x, a            ; 92
2556: mul y, y            ; 54
2557: sub a, x            ; 49
2558: sub a, y            ; 4A
2559: or y, w             ; A9
255A: add z, a            ; 2A
255B: mul y, z            ; 55
255C: sub a, y            ; 4A
255D: mul y, z            ; 55
255E: and y, w            ; 95
255F: mul y, y            ; 54
2560: or y, w             ; A9
2561: add y, w            ; 24
2562: mul y, z            ; 55
2563: sub a, y            ; 4A
2564: mul y, z            ; 55
2565: sub a, y            ; 4A
2566: and x, a            ; 92
2567: sub w, x            ; 44
2568: and x, a            ; 92
2569: add y, w            ; 24
256A: and y, w            ; 95
256B: add y, w            ; 24
256C: add y, y            ; 22
256D: sub a, y            ; 4A
256E: store $0000, x      ; 10 00 00
2571: nop                 ; 00
2572: add y, y            ; 22
2573: add z, w            ; 29
2574: or x, z             ; A4
2575: add y, w            ; 24
2576: cmp w, a            ; 84
2577: and y, z            ; 94
2578: add y, w            ; 24
2579: sub a, x            ; 49
257A: or x, w             ; A5
257B: sub w, x            ; 44
257C: sub a, y            ; 4A
257D: sub a, y            ; 4A
257E: add y, a            ; 25
257F: or x, w             ; A5
2580: and x, a            ; 92
2581: sub a, y            ; 4A
2582: sub a, x            ; 49
2583: or x, w             ; A5
2584: or y, a             ; AA
2585: mul x, a            ; 52
2586: or y, a             ; AA
2587: and x, a            ; 92
2588: sub a, y            ; 4A
2589: and y, w            ; 95
258A: or x, z             ; A4
258B: mul x, a            ; 52
258C: and x, a            ; 92
258D: add z, z            ; 28
258E: sub z, z            ; 41
258F: store $9249, z      ; 12 49 92
2592: mul x, z            ; 50
2593: and x, a            ; 92
2594: and y, z            ; 94
2595: add x, a            ; 20
2596: sub w, y            ; 45
2597: nop                 ; 00
2598: nop                 ; 00
2599: nop                 ; 00
259A: cmp a, a            ; 89
259B: sub w, x            ; 44
259C: add z, w            ; 29
259D: sub a, x            ; 49
259E: add z, w            ; 29
259F: add y, x            ; 21
25A0: sub a, x            ; 49
25A1: mul x, a            ; 52
25A2: sub w, a            ; 48
25A3: and x, a            ; 92
25A4: and x, a            ; 92
25A5: mul x, a            ; 52
25A6: and x, a            ; 92
25A7: and y, z            ; 94
25A8: mul y, y            ; 54
25A9: mul x, a            ; 52
25AA: or y, a             ; AA
25AB: and y, z            ; 94
25AC: mul x, a            ; 52
25AD: sub a, y            ; 4A
25AE: sub a, x            ; 49
25AF: or y, a             ; AA
25B0: and y, z            ; 94
25B1: or x, z             ; A4
25B2: and x, a            ; 92
25B3: add y, w            ; 24
25B4: sub a, x            ; 49
25B5: cmp a, x            ; 85
25B6: and y, z            ; 94
25B7: sub w, a            ; 48
25B8: add y, w            ; 24
25B9: sub a, x            ; 49
25BA: cmpbit x            ; 8A 24
25BC: add y, x            ; 21
25BD: sub a, y            ; 4A
25BE: store $0000, x      ; 10 00 00
25C1: nop                 ; 00
25C2: add z, a            ; 2A
25C3: add z, w            ; 29
25C4: cmp a, x            ; 85
25C5: add y, w            ; 24
25C6: or x, w             ; A5
25C7: and y, z            ; 94
25C8: add y, w            ; 24
25C9: pop w               ; 09
25CA: add y, a            ; 25
25CB: add z, w            ; 29
25CC: add y, w            ; 24
25CD: sub a, x            ; 49
25CE: or y, w             ; A9
25CF: mul x, a            ; 52
25D0: add y, a            ; 25
25D1: sub a, x            ; 49
25D2: add z, w            ; 29
25D3: mul y, z            ; 55
25D4: sub a, y            ; 4A
25D5: mul y, z            ; 55
25D6: mul y, z            ; 55
25D7: add y, a            ; 25
25D8: or x, w             ; A5
25D9: mul x, a            ; 52
25DA: sub a, y            ; 4A
25DB: sub a, y            ; 4A
25DC: add y, a            ; 25
25DD: add z, w            ; 29
25DE: pop w               ; 09
25DF: add y, y            ; 22
25E0: and x, w            ; 91
25E1: add y, w            ; 24
25E2: mul x, w            ; 51
25E3: and x, a            ; 92
25E4: and y, z            ; 94
25E5: add x, a            ; 20
25E6: sub w, y            ; 45
25E7: push x              ; 01
25E8: nop                 ; 00
25E9: nop                 ; 00
25EA: cmp w, y            ; 81
25EB: sub w, x            ; 44
25EC: add z, z            ; 28
25ED: sub a, x            ; 49
25EE: pop z               ; 08
25EF: add y, y            ; 22
25F0: sub a, x            ; 49
25F1: mul x, a            ; 52
25F2: sub a, x            ; 49
25F3: sub a, y            ; 4A
25F4: sub a, x            ; 49
25F5: add z, a            ; 2A
25F6: sub a, y            ; 4A
25F7: sub a, y            ; 4A
25F8: and x, a            ; 92
25F9: mul y, y            ; 54
25FA: sub a, y            ; 4A
25FB: sub a, x            ; 49
25FC: or y, w             ; A9
25FD: mul x, a            ; 52
25FE: sub a, y            ; 4A
25FF: mul x, a            ; 52
2600: mul x, a            ; 52
2601: add z, a            ; 2A
2602: or y, w             ; A9
2603: mul x, a            ; 52
2604: mul x, a            ; 52
2605: mul x, a            ; 52
2606: and a, w            ; A2
2607: sub w, a            ; 48
2608: add y, w            ; 24
2609: sub a, x            ; 49
260A: cmpbit x            ; 8A 24
260C: add y, x            ; 21
260D: sub a, y            ; 4A
260E: store $0004, x      ; 10 04 00
2611: nop                 ; 00
2612: add z, a            ; 2A
2613: add z, w            ; 29
2614: sub w, y            ; 45
2615: and x, a            ; 92
2616: and a, w            ; A2
2617: cmp a, w            ; 88
2618: add y, w            ; 24
2619: pop w               ; 09
261A: and x, a            ; 92
261B: add x, a            ; 20
261C: add y, a            ; 25
261D: and x, w            ; 91
261E: and x, a            ; 92
261F: add y, w            ; 24
2620: mul y, z            ; 55
2621: and x, a            ; 92
2622: mul x, a            ; 52
2623: or y, a             ; AA
2624: add z, a            ; 2A
2625: and y, w            ; 95
2626: mul x, a            ; 52
2627: and y, w            ; 95
2628: sub a, y            ; 4A
2629: sub a, x            ; 49
262A: add y, a            ; 25
262B: cmp a, a            ; 89
262C: and y, z            ; 94
262D: sub w, x            ; 44
262E: pop w               ; 09
262F: add y, y            ; 22
2630: and x, w            ; 91
2631: add y, w            ; 24
2632: add y, x            ; 21
2633: and x, a            ; 92
2634: and y, z            ; 94
2635: add x, a            ; 20
2636: sub w, y            ; 45
2637: store $0000, y      ; 11 00 00
263A: and x, z            ; 90
263B: sub w, x            ; 44
263C: and x, w            ; 91
263D: add y, w            ; 24
263E: add z, z            ; 28
263F: add y, a            ; 25
2640: sub a, x            ; 49
2641: and a, w            ; A2
2642: add y, w            ; 24
2643: and y, w            ; 95
2644: and x, z            ; 90
2645: or x, z             ; A4
2646: add y, w            ; 24
2647: or y, w             ; A9
2648: and x, a            ; 92
2649: sub a, y            ; 4A
264A: or y, a             ; AA
264B: sub a, y            ; 4A
264C: sub a, y            ; 4A
264D: sub a, x            ; 49
264E: add z, w            ; 29
264F: sub a, x            ; 49
2650: mul x, a            ; 52
2651: and x, a            ; 92
2652: sub w, a            ; 48
2653: add z, a            ; 2A
2654: add y, a            ; 25
2655: add z, w            ; 29
2656: or y, a             ; AA
2657: sub w, a            ; 48
2658: add y, w            ; 24
2659: sub a, x            ; 49
265A: and y, z            ; 94
265B: add y, w            ; 24
265C: add y, y            ; 22
265D: pop a               ; 0A
265E: store $0004, x      ; 10 04 00
2661: nop                 ; 00
2662: sub a, y            ; 4A
2663: store $9244, z      ; 12 44 92
2666: cmp w, z            ; 82
2667: and x, z            ; 90
2668: add y, w            ; 24
2669: sub a, x            ; 49
266A: and x, a            ; 92
266B: sub w, x            ; 44
266C: sub a, y            ; 4A
266D: sub a, y            ; 4A
266E: mul x, a            ; 52
266F: add y, a            ; 25
2670: sub a, x            ; 49
2671: add y, w            ; 24
2672: sub a, x            ; 49
2673: mul x, a            ; 52
2674: add z, w            ; 29
2675: mul y, z            ; 55
2676: sub a, y            ; 4A
2677: mul y, z            ; 55
2678: sub a, x            ; 49
2679: mul y, z            ; 55
267A: add z, a            ; 2A
267B: mul x, w            ; 51
267C: and x, a            ; 92
267D: sub w, x            ; 44
267E: add y, x            ; 21
267F: push a              ; 05
2680: and x, w            ; 91
2681: add y, w            ; 24
2682: sub a, x            ; 49
2683: and x, a            ; 92
2684: cmp a, w            ; 88
2685: and a, y            ; A0
2686: sub z, w            ; 42
2687: mul x, a            ; 52
2688: nop                 ; 00
2689: nop                 ; 00
268A: and x, a            ; 92
268B: or x, z             ; A4
268C: and x, a            ; 92
268D: add y, w            ; 24
268E: add z, w            ; 29
268F: add y, a            ; 25
2690: pop w               ; 09
2691: and x, a            ; 92
2692: add y, w            ; 24
2693: and x, w            ; 91
2694: and x, a            ; 92
2695: and x, a            ; 92
2696: and y, z            ; 94
2697: and y, z            ; 94
2698: mul y, y            ; 54
2699: or y, w             ; A9
269A: mul x, a            ; 52
269B: add z, w            ; 29
269C: or x, w             ; A5
269D: mul x, a            ; 52
269E: or x, w             ; A5
269F: add y, w            ; 24
26A0: and y, w            ; 95
26A1: add y, w            ; 24
26A2: sub w, y            ; 45
26A3: pop a               ; 0A
26A4: sub a, x            ; 49
26A5: add z, w            ; 29
26A6: sub a, y            ; 4A
26A7: mul x, z            ; 50
26A8: push w              ; 04
26A9: sub a, x            ; 49
26AA: and x, a            ; 92
26AB: add y, w            ; 24
26AC: add y, y            ; 22
26AD: pop a               ; 0A
26AE: and y, z            ; 94
26AF: cmp w, x            ; 80
26B0: nop                 ; 00
26B1: nop                 ; 00
26B2: sub w, a            ; 48
26B3: and x, a            ; 92
26B4: sub w, a            ; 48
26B5: and x, a            ; 92
26B6: sub w, x            ; 44
26B7: and y, z            ; 94
26B8: or x, z             ; A4
26B9: sub w, a            ; 48
26BA: and x, a            ; 92
26BB: add y, w            ; 24
26BC: add y, w            ; 24
26BD: sub w, a            ; 48
26BE: add y, y            ; 22
26BF: or y, w             ; A9
26C0: and x, a            ; 92
26C1: sub z, w            ; 42
26C2: sub a, y            ; 4A
26C3: sub a, y            ; 4A
26C4: add z, w            ; 29
26C5: sub a, x            ; 49
26C6: add z, a            ; 2A
26C7: sub a, x            ; 49
26C8: mul x, a            ; 52
26C9: and x, a            ; 92
26CA: mul y, y            ; 54
26CB: or y, w             ; A9
26CC: add y, w            ; 24
26CD: and x, a            ; 92
26CE: add y, w            ; 24
26CF: push a              ; 05
26D0: mul x, w            ; 51
26D1: add y, w            ; 24
26D2: sub a, x            ; 49
26D3: and x, a            ; 92
26D4: and y, z            ; 94
26D5: and a, y            ; A0
26D6: nop                 ; 00
26D7: pop a               ; 0A
26D8: push y              ; 02
26D9: nop                 ; 00
26DA: and x, a            ; 92
26DB: add y, w            ; 24
26DC: and x, a            ; 92
26DD: add y, w            ; 24
26DE: store $0821, y      ; 11 21 08
26E1: and x, a            ; 92
26E2: add y, w            ; 24
26E3: sub a, x            ; 49
26E4: cmp a, a            ; 89
26E5: and x, a            ; 92
26E6: and y, z            ; 94
26E7: sub w, x            ; 44
26E8: sub a, y            ; 4A
26E9: add z, a            ; 2A
26EA: add z, w            ; 29
26EB: mul y, z            ; 55
26EC: sub a, y            ; 4A
26ED: add z, a            ; 2A
26EE: sub a, x            ; 49
26EF: or y, a             ; AA
26F0: and y, z            ; 94
26F1: or y, a             ; AA
26F2: add y, y            ; 22
26F3: add y, y            ; 22
26F4: or y, w             ; A9
26F5: add y, w            ; 24
26F6: sub a, x            ; 49
26F7: or y, w             ; A9
26F8: push w              ; 04
26F9: sub a, x            ; 49
26FA: and x, a            ; 92
26FB: add y, w            ; 24
26FC: add y, x            ; 21
26FD: pop a               ; 0A
26FE: mul y, z            ; 55
26FF: and a, y            ; A0
2700: push w              ; 04
2701: nop                 ; 00
2702: sub w, a            ; 48
2703: and x, a            ; 92
2704: sub w, a            ; 48
2705: and x, a            ; 92
2706: sub w, x            ; 44
2707: and y, z            ; 94
2708: and a, w            ; A2
2709: sub w, a            ; 48
270A: and x, a            ; 92
270B: add y, w            ; 24
270C: mul x, a            ; 52
270D: sub a, y            ; 4A
270E: mul x, a            ; 52
270F: and x, a            ; 92
2710: add y, w            ; 24
2711: sub a, x            ; 49
2712: and x, a            ; 92
2713: or x, z             ; A4
2714: mul x, a            ; 52
2715: or x, w             ; A5
2716: mul x, a            ; 52
2717: sub a, x            ; 49
2718: sub a, x            ; 49
2719: add y, y            ; 22
271A: sub a, y            ; 4A
271B: sub a, x            ; 49
271C: sub z, w            ; 42
271D: and x, a            ; 92
271E: add y, w            ; 24
271F: add y, w            ; 24
2720: mul x, a            ; 52
2721: add y, w            ; 24
2722: sub a, x            ; 49
2723: and x, a            ; 92
2724: and y, z            ; 94
2725: add x, a            ; 20
2726: nop                 ; 00
2727: pop w               ; 09
2728: store $9200, x      ; 10 00 92
272B: sub w, x            ; 44
272C: store $2904, z      ; 12 04 29
272F: add y, x            ; 21
2730: pop z               ; 08
2731: cmp w, z            ; 82
2732: add y, w            ; 24
2733: cmp a, a            ; 89
2734: cmp w, a            ; 84
2735: and x, z            ; 90
2736: push w              ; 04
2737: add z, w            ; 29
2738: or y, w             ; A9
2739: and y, z            ; 94
273A: or x, z             ; A4
273B: store $4929, z      ; 12 29 49
273E: add z, a            ; 2A
273F: add y, a            ; 25
2740: mul x, a            ; 52
2741: sub a, x            ; 49
2742: and x, w            ; 91
2743: and y, z            ; 94
2744: and y, z            ; 94
2745: add y, w            ; 24
2746: sub a, x            ; 49
2747: cmp a, a            ; 89
2748: push w              ; 04
2749: sub a, x            ; 49
274A: and x, a            ; 92
274B: add y, w            ; 24
274C: add y, x            ; 21
274D: cmpbit x            ; 8A 4A
274F: sub z, y            ; 40
2750: push y              ; 02
2751: nop                 ; 00
2752: sub w, a            ; 48
2753: store $5149, z      ; 12 49 51
2756: cmp w, a            ; 84
2757: and y, z            ; 94
2758: and a, w            ; A2
2759: add z, z            ; 28
275A: and x, a            ; 92
275B: add y, w            ; 24
275C: mul x, a            ; 52
275D: sub a, y            ; 4A
275E: mul x, a            ; 52
275F: or x, w             ; A5
2760: sub w, x            ; 44
2761: mul x, a            ; 52
2762: and x, a            ; 92
2763: mul y, y            ; 54
2764: or x, w             ; A5
2765: and y, z            ; 94
2766: or x, z             ; A4
2767: mul y, y            ; 54
2768: add y, a            ; 25
2769: and y, w            ; 95
276A: mul y, y            ; 54
276B: mul x, a            ; 52
276C: mul x, a            ; 52
276D: and x, a            ; 92
276E: add y, w            ; 24
276F: add y, y            ; 22
2770: mul x, w            ; 51
2771: add y, w            ; 24
2772: sub a, x            ; 49
2773: cmp w, z            ; 82
2774: cmp w, a            ; 84
2775: add x, a            ; 20
2776: add x, a            ; 20
2777: store $0048, z      ; 12 48 00
277A: store $1244, z      ; 12 44 12
277D: push w              ; 04
277E: add z, w            ; 29
277F: add y, x            ; 21
2780: pop z               ; 08
2781: cmp w, z            ; 82
2782: push w              ; 04
2783: cmp a, a            ; 89
2784: store $9491, a      ; 14 91 94
2787: store $2529, x      ; 10 29 25
278A: sub a, x            ; 49
278B: and x, a            ; 92
278C: store $92A5, a      ; 14 A5 92
278F: and x, a            ; 92
2790: and y, z            ; 94
2791: add y, w            ; 24
2792: cmp a, a            ; 89
2793: cmp w, a            ; 84
2794: cmp w, a            ; 84
2795: add y, w            ; 24
2796: cmp a, a            ; 89
2797: sub w, a            ; 48
2798: store $9249, a      ; 14 49 92
279B: add z, z            ; 28
279C: add z, w            ; 29
279D: cmpbit x            ; 8A 8A
279F: push w              ; 04
27A0: push x              ; 01
27A1: push x              ; 01
27A2: sub w, a            ; 48
27A3: store $5149, y      ; 11 49 51
27A6: cmp w, x            ; 80
27A7: cmp w, a            ; 84
27A8: and a, w            ; A2
27A9: add z, z            ; 28
27AA: mul x, a            ; 52
27AB: add y, w            ; 24
27AC: sub z, w            ; 42
27AD: sub w, x            ; 44
27AE: add y, y            ; 22
27AF: sub a, y            ; 4A
27B0: and x, a            ; 92
27B1: and y, z            ; 94
27B2: add y, w            ; 24
27B3: add y, a            ; 25
27B4: or y, w             ; A9
27B5: and y, z            ; 94
27B6: mul y, y            ; 54
27B7: sub a, y            ; 4A
27B8: mul x, a            ; 52
27B9: mul x, a            ; 52
27BA: mul x, a            ; 52
27BB: mul x, a            ; 52
27BC: mul x, a            ; 52
27BD: and x, a            ; 92
27BE: add y, w            ; 24
27BF: add y, a            ; 25
27C0: sub z, z            ; 41
27C1: add y, w            ; 24
27C2: pop w               ; 09
27C3: cmp w, z            ; 82
27C4: cmp w, x            ; 80
27C5: add x, a            ; 20
27C6: add x, a            ; 20
27C7: add x, a            ; 20
27C8: sub w, a            ; 48
27C9: nop                 ; 00
27CA: store $1244, z      ; 12 44 12
27CD: cmp w, a            ; 84
27CE: add z, a            ; 2A
27CF: add z, w            ; 29
27D0: pop z               ; 08
27D1: cmp w, z            ; 82
27D2: push w              ; 04
27D3: cmp a, a            ; 89
27D4: and y, z            ; 94
27D5: and x, a            ; 92
27D6: cmp a, w            ; 88
27D7: mul x, a            ; 52
27D8: sub a, x            ; 49
27D9: add y, y            ; 22
27DA: sub a, x            ; 49
27DB: or y, w             ; A9
27DC: and x, a            ; 92
27DD: mul x, a            ; 52
27DE: cmpbit x            ; 8A 52
27E0: add y, a            ; 25
27E1: cmp a, a            ; 89
27E2: cmpbit x            ; 8A 94
27E4: and y, z            ; 94
27E5: add y, w            ; 24
27E6: sub a, x            ; 49
27E7: sub w, a            ; 48
27E8: store $A241, a      ; 14 41 A2
27EB: add z, z            ; 28
27EC: add z, a            ; 2A
27ED: cmpbit x            ; 8A 0A
27EF: pop w               ; 09
27F0: push x              ; 01
27F1: pop w               ; 09
27F2: sub w, a            ; 48
27F3: store $5141, y      ; 11 41 51
27F6: cmp w, x            ; 80
27F7: cmp w, x            ; 80
27F8: and a, w            ; A2
27F9: add z, z            ; 28
27FA: mul x, a            ; 52
27FB: add y, w            ; 24
27FC: sub z, w            ; 42
27FD: sub w, a            ; 48
27FE: mul x, a            ; 52
27FF: cmp w, a            ; 84
2800: add y, w            ; 24
2801: sub a, x            ; 49
2802: add y, a            ; 25
2803: sub a, y            ; 4A
2804: sub a, y            ; 4A
2805: sub a, y            ; 4A
2806: or y, w             ; A9
2807: add y, w            ; 24
2808: sub a, x            ; 49
2809: mul x, a            ; 52
280A: add y, w            ; 24
280B: sub z, z            ; 41
280C: sub z, w            ; 42
280D: and x, a            ; 92
280E: add y, w            ; 24
280F: add y, a            ; 25
2810: and a, z            ; A1
2811: store $8209, a      ; 14 09 82
2814: cmp w, x            ; 80
2815: add x, a            ; 20
2816: add x, a            ; 20
2817: sub w, x            ; 44
2818: pop z               ; 08
2819: push w              ; 04
281A: store $1444, z      ; 12 44 14
281D: push w              ; 04
281E: add z, a            ; 2A
281F: add z, a            ; 2A
2820: pop z               ; 08
2821: cmp w, z            ; 82
2822: push w              ; 04
2823: cmp a, a            ; 89
2824: and y, z            ; 94
2825: and x, a            ; 92
2826: add y, w            ; 24
2827: add z, w            ; 29
2828: and x, a            ; 92
2829: and y, z            ; 94
282A: and x, z            ; 90
282B: add y, y            ; 22
282C: or y, w             ; A9
282D: add y, w            ; 24
282E: add y, a            ; 25
282F: sub a, x            ; 49
2830: and x, a            ; 92
2831: add y, w            ; 24
2832: or y, w             ; A9
2833: and y, z            ; 94
2834: and y, z            ; 94
2835: add y, w            ; 24
2836: cmp a, a            ; 89
2837: sub w, a            ; 48
2838: pop a               ; 0A
2839: sub z, z            ; 41
283A: and a, w            ; A2
283B: add z, z            ; 28
283C: add z, a            ; 2A
283D: cmpbit x            ; 8A 44
283F: push x              ; 01
2840: sub z, y            ; 40
2841: sub z, y            ; 40
2842: sub w, a            ; 48
2843: store $5141, y      ; 11 41 51
2846: cmp w, y            ; 81
2847: cmp w, x            ; 80
2848: and a, w            ; A2
2849: add z, z            ; 28
284A: mul x, z            ; 50
284B: add y, w            ; 24
284C: sub z, w            ; 42
284D: sub w, a            ; 48
284E: and x, a            ; 92
284F: or x, z             ; A4
2850: add y, w            ; 24
2851: mul x, w            ; 51
2852: sub a, y            ; 4A
2853: and y, z            ; 94
2854: add y, w            ; 24
2855: or y, w             ; A9
2856: and y, z            ; 94
2857: add z, a            ; 2A
2858: sub a, x            ; 49
2859: and x, a            ; 92
285A: cmp w, a            ; 84
285B: mul x, a            ; 52
285C: add y, y            ; 22
285D: and x, a            ; 92
285E: add y, w            ; 24
285F: add y, y            ; 22
2860: and a, z            ; A1
2861: store $8209, a      ; 14 09 82
2864: cmp w, x            ; 80
2865: add x, a            ; 20
2866: store $1128, z      ; 12 28 11
2869: pop w               ; 09
286A: store $1444, z      ; 12 44 14
286D: push w              ; 04
286E: add z, z            ; 28
286F: add z, a            ; 2A
2870: pop z               ; 08
2871: sub z, w            ; 42
2872: push a              ; 05
2873: cmp a, a            ; 89
2874: and x, z            ; 90
2875: and x, a            ; 92
2876: add y, w            ; 24
2877: pop w               ; 09
2878: sub a, x            ; 49
2879: cmpbit x            ; 8A 24
287B: or x, w             ; A5
287C: and x, a            ; 92
287D: sub a, y            ; 4A
287E: and a, w            ; A2
287F: sub w, x            ; 44
2880: add z, a            ; 2A
2881: sub a, x            ; 49
2882: mul x, a            ; 52
2883: cmp w, a            ; 84
2884: cmp a, w            ; 88
2885: add y, w            ; 24
2886: cmp a, a            ; 89
2887: pop z               ; 08
2888: pop a               ; 0A
2889: sub z, z            ; 41
288A: and a, w            ; A2
288B: add z, z            ; 28
288C: add z, a            ; 2A
288D: cmp a, a            ; 89
288E: sub z, y            ; 40
288F: push y              ; 02
2890: push w              ; 04
2891: add x, a            ; 20
2892: sub w, a            ; 48
2893: store $5141, y      ; 11 41 51
2896: cmp a, x            ; 85
2897: cmp w, x            ; 80
2898: and a, w            ; A2
2899: pop z               ; 08
289A: mul x, z            ; 50
289B: add x, a            ; 20
289C: pop a               ; 0A
289D: sub w, a            ; 48
289E: and x, a            ; 92
289F: or x, z             ; A4
28A0: add y, w            ; 24
28A1: mul x, w            ; 51
28A2: and x, a            ; 92
28A3: store $9249, x      ; 10 49 92
28A6: add z, a            ; 2A
28A7: add z, w            ; 29
28A8: and x, w            ; 91
28A9: add y, w            ; 24
28AA: pop w               ; 09
28AB: add z, w            ; 29
28AC: mul x, a            ; 52
28AD: and x, a            ; 92
28AE: add y, w            ; 24
28AF: or x, w             ; A5
28B0: add x, a            ; 20
28B1: store $8209, a      ; 14 09 82
28B4: nop                 ; 00
28B5: sub w, x            ; 44
28B6: push w              ; 04
28B7: and x, w            ; 91
28B8: sub z, y            ; 40
28B9: push y              ; 02
28BA: nop                 ; 00
28BB: nop                 ; 00
28BC: nop                 ; 00
28BD: nop                 ; 00
28BE: nop                 ; 00
28BF: nop                 ; FF
28C0: nop                 ; FF
28C1: nop                 ; FF
28C2: nop                 ; FF
28C3: nop                 ; FF
28C4: nop                 ; 00
28C5: nop                 ; 00
28C6: nop                 ; 00
28C7: nop                 ; 00
28C8: nop                 ; 00
28C9: nop                 ; FF
28CA: nop                 ; FF
28CB: nop                 ; FF
28CC: nop                 ; FF
28CD: nop                 ; FF
28CE: nop                 ; 00
28CF: nop                 ; 00
28D0: nop                 ; 00
28D1: nop                 ; 00
28D2: nop                 ; 00
28D3: nop                 ; FF
28D4: nop                 ; FF
28D5: nop                 ; FF
28D6: nop                 ; FF
28D7: nop                 ; FF
28D8: nop                 ; 00
28D9: nop                 ; 00
28DA: nop                 ; 00
28DB: nop                 ; 00
28DC: nop                 ; 00
28DD: nop                 ; FF
28DE: nop                 ; FF
28DF: nop                 ; FF
28E0: nop                 ; FF
28E1: nop                 ; FF
28E2: nop                 ; 00
28E3: nop                 ; 00
28E4: nop                 ; 00
28E5: nop                 ; 00
28E6: nop                 ; 00
28E7: nop                 ; FF
28E8: nop                 ; FF
28E9: nop                 ; FF
28EA: nop                 ; FF
28EB: nop                 ; FF
28EC: nop                 ; 00
28ED: nop                 ; 00
28EE: nop                 ; 00
28EF: nop                 ; 00
28F0: nop                 ; 00
28F1: nop                 ; FF
28F2: nop                 ; FF
28F3: nop                 ; FF
28F4: nop                 ; FF
28F5: nop                 ; FF
28F6: nop                 ; 00
28F7: nop                 ; 00
28F8: nop                 ; 00
28F9: nop                 ; 00
28FA: nop                 ; 00
28FB: nop                 ; FF
28FC: nop                 ; FF
28FD: nop                 ; FF
28FE: nop                 ; FF
28FF: nop                 ; FF
2900: nop                 ; 00
2901: nop                 ; 00
2902: nop                 ; 00
2903: nop                 ; 00
2904: nop                 ; 00
2905: nop                 ; FF
2906: nop                 ; FF
2907: nop                 ; FF
2908: nop                 ; FF
2909: nop                 ; FF
290A: nop                 ; 00
290B: nop                 ; 00
290C: nop                 ; 00
290D: nop                 ; 00
290E: nop                 ; 00
290F: nop                 ; FF
2910: nop                 ; FF
2911: nop                 ; FF
2912: nop                 ; FF
2913: nop                 ; FF
2914: nop                 ; 00
2915: nop                 ; 00
2916: nop                 ; 00
2917: nop                 ; 00
2918: nop                 ; 00
2919: nop                 ; FF
291A: nop                 ; FF
291B: nop                 ; FF
291C: nop                 ; FF
291D: nop                 ; FF
291E: nop                 ; 00
291F: nop                 ; 00
2920: nop                 ; 00
2921: nop                 ; 00
2922: nop                 ; 00
2923: nop                 ; FF
2924: nop                 ; FF
2925: nop                 ; FF
2926: nop                 ; FF
2927: nop                 ; FF
2928: nop                 ; 00
2929: nop                 ; 00
292A: nop                 ; 00
292B: nop                 ; 00
292C: nop                 ; 00
292D: nop                 ; FF
292E: nop                 ; FF
292F: nop                 ; FF
2930: nop                 ; FF
2931: nop                 ; FF
2932: nop                 ; 00
2933: nop                 ; 00
2934: nop                 ; 00
2935: nop                 ; 00
2936: nop                 ; 00
2937: nop                 ; FF
2938: nop                 ; FF
2939: nop                 ; FF
293A: nop                 ; FF
293B: nop                 ; FF
293C: nop                 ; 00
293D: nop                 ; 00
293E: nop                 ; 00
293F: nop                 ; 00
2940: nop                 ; 00
2941: nop                 ; FF
2942: nop                 ; FF
2943: nop                 ; FF
2944: nop                 ; FF
2945: nop                 ; FF
2946: nop                 ; 00
2947: nop                 ; 00
2948: nop                 ; 00
2949: nop                 ; 00
294A: nop                 ; 00
294B: nop                 ; FF
294C: nop                 ; FF
294D: nop                 ; FF
294E: nop                 ; FF
294F: nop                 ; FF
2950: nop                 ; 00
2951: nop                 ; 00
2952: nop                 ; 00
2953: nop                 ; 00
2954: nop                 ; 00
2955: nop                 ; FF
2956: nop                 ; FF
2957: nop                 ; FF
2958: nop                 ; FF
2959: nop                 ; FF
295A: nop                 ; 00
295B: nop                 ; 00
295C: nop                 ; 00
295D: nop                 ; 00
295E: nop                 ; 00
295F: nop                 ; FF
2960: nop                 ; FF
2961: nop                 ; FF
2962: nop                 ; FF
2963: nop                 ; FF
2964: nop                 ; 00
2965: nop                 ; 00
2966: nop                 ; 00
2967: nop                 ; 00
2968: nop                 ; 00
2969: nop                 ; FF
296A: nop                 ; FF
296B: nop                 ; FF
296C: nop                 ; FF
296D: nop                 ; FF
296E: nop                 ; 00
296F: nop                 ; 00
2970: nop                 ; 00
2971: nop                 ; 00
2972: nop                 ; 00
2973: nop                 ; FF
2974: nop                 ; FF
2975: nop                 ; FF
2976: nop                 ; FF
2977: nop                 ; FF
2978: nop                 ; 00
2979: nop                 ; 00
297A: nop                 ; 00
297B: nop                 ; 00
297C: nop                 ; 00
297D: nop                 ; FF
297E: nop                 ; FF
297F: nop                 ; FF
2980: nop                 ; FF
2981: nop                 ; FF
2982: nop                 ; 00
2983: nop                 ; 00
2984: nop                 ; 00
2985: nop                 ; 00
2986: nop                 ; 00
2987: nop                 ; FF
2988: nop                 ; FF
2989: nop                 ; FF
298A: nop                 ; FF
298B: nop                 ; FF
298C: nop                 ; 00
298D: nop                 ; 00
298E: nop                 ; 00
298F: nop                 ; 00
2990: nop                 ; 00
2991: nop                 ; FF
2992: nop                 ; FF
2993: nop                 ; FF
2994: nop                 ; FF
2995: nop                 ; FF
2996: nop                 ; 00
2997: nop                 ; 00
2998: nop                 ; 00
2999: nop                 ; 00
299A: nop                 ; 00
299B: nop                 ; FF
299C: nop                 ; FF
299D: nop                 ; FF
299E: nop                 ; FF
299F: nop                 ; FF
29A0: nop                 ; 00
29A1: nop                 ; 00
29A2: nop                 ; 00
29A3: nop                 ; 00
29A4: nop                 ; 00
29A5: nop                 ; FF
29A6: nop                 ; FF
29A7: nop                 ; FF
29A8: nop                 ; FF
29A9: nop                 ; FF
29AA: nop                 ; 00
29AB: nop                 ; 00
29AC: nop                 ; 00
29AD: nop                 ; 00
29AE: nop                 ; 00
29AF: nop                 ; FF
29B0: nop                 ; FF
29B1: nop                 ; FF
29B2: nop                 ; FF
29B3: nop                 ; FF
29B4: nop                 ; 00
29B5: nop                 ; 00
29B6: nop                 ; 00
29B7: nop                 ; 00
29B8: nop                 ; 00
29B9: nop                 ; FF
29BA: nop                 ; FF
29BB: nop                 ; FF
29BC: nop                 ; FF
29BD: nop                 ; FF
29BE: nop                 ; 00
29BF: nop                 ; 00
29C0: nop                 ; 00
29C1: nop                 ; 00
29C2: nop                 ; 00
29C3: nop                 ; FF
29C4: nop                 ; FF
29C5: nop                 ; FF
29C6: nop                 ; FF
29C7: nop                 ; FF
29C8: nop                 ; 00
29C9: nop                 ; 00
29CA: nop                 ; 00
29CB: nop                 ; 00
29CC: nop                 ; 00
29CD: nop                 ; FF
29CE: nop                 ; FF
29CF: nop                 ; FF
29D0: nop                 ; FF
29D1: nop                 ; FF
29D2: nop                 ; 00
29D3: nop                 ; 00
29D4: nop                 ; 00
29D5: nop                 ; 00
29D6: nop                 ; 00
29D7: nop                 ; FF
29D8: nop                 ; FF
29D9: nop                 ; FF
29DA: nop                 ; FF
29DB: nop                 ; FF
29DC: nop                 ; 00
29DD: nop                 ; 00
29DE: nop                 ; 00
29DF: nop                 ; 00
29E0: nop                 ; 00
29E1: nop                 ; FF
29E2: nop                 ; FF
29E3: nop                 ; FF
29E4: nop                 ; FF
29E5: nop                 ; FF
29E6: nop                 ; 00
29E7: nop                 ; 00
29E8: nop                 ; 00
29E9: nop                 ; 00
29EA: nop                 ; 00
29EB: nop                 ; FF
29EC: nop                 ; FF
29ED: nop                 ; FF
29EE: nop                 ; FF
29EF: nop                 ; FF
29F0: nop                 ; 00
29F1: nop                 ; 00
29F2: nop                 ; 00
29F3: nop                 ; 00
29F4: nop                 ; 00
29F5: nop                 ; FF
29F6: nop                 ; FF
29F7: nop                 ; FF
29F8: nop                 ; FF
29F9: nop                 ; FF
29FA: nop                 ; 00
29FB: nop                 ; 00
29FC: nop                 ; 00
29FD: nop                 ; 00
29FE: nop                 ; 00
29FF: nop                 ; FF
2A00: nop                 ; FF
2A01: nop                 ; FF
2A02: nop                 ; FF
2A03: nop                 ; FF
2A04: nop                 ; 00
2A05: nop                 ; 00
2A06: nop                 ; 00
2A07: nop                 ; 00
2A08: nop                 ; 00
2A09: nop                 ; FF
2A0A: nop                 ; FF
2A0B: nop                 ; FF
2A0C: nop                 ; FF
2A0D: nop                 ; FF
2A0E: nop                 ; 00
2A0F: nop                 ; 00
2A10: nop                 ; 00
2A11: nop                 ; 00
2A12: nop                 ; 00
2A13: nop                 ; FF
2A14: nop                 ; FF
2A15: nop                 ; FF
2A16: nop                 ; FF
2A17: nop                 ; FF
2A18: nop                 ; 00
2A19: nop                 ; 00
2A1A: nop                 ; 00
2A1B: nop                 ; 00
2A1C: nop                 ; 00
2A1D: nop                 ; FF
2A1E: nop                 ; FF
2A1F: nop                 ; FF
2A20: nop                 ; FF
2A21: nop                 ; FF
2A22: nop                 ; 00
2A23: nop                 ; 00
2A24: nop                 ; 00
2A25: nop                 ; 00
2A26: nop                 ; 00
2A27: nop                 ; FF
2A28: nop                 ; FF
2A29: nop                 ; FF
2A2A: nop                 ; FF
2A2B: nop                 ; FF
2A2C: nop                 ; 00
2A2D: nop                 ; 00
2A2E: nop                 ; 00
2A2F: nop                 ; 00
2A30: nop                 ; 00
2A31: nop                 ; FF
2A32: nop                 ; FF
2A33: nop                 ; FF
2A34: nop                 ; FF
2A35: nop                 ; FF
2A36: nop                 ; 00
2A37: nop                 ; 00
2A38: nop                 ; 00
2A39: nop                 ; 00
2A3A: nop                 ; 00
2A3B: nop                 ; FF
2A3C: nop                 ; FF
2A3D: nop                 ; FF
2A3E: nop                 ; FF
2A3F: nop                 ; FF
2A40: nop                 ; 00
2A41: nop                 ; 00
2A42: nop                 ; 00
2A43: nop                 ; 00
2A44: nop                 ; 00
2A45: nop                 ; FF
2A46: nop                 ; FF
2A47: nop                 ; FF
2A48: nop                 ; FF
2A49: nop                 ; FF
2A4A: nop                 ; 00
2A4B: nop                 ; 00
2A4C: nop                 ; 00
2A4D: nop                 ; 00
2A4E: nop                 ; 00
2A4F: nop                 ; FF
2A50: nop                 ; FF
2A51: nop                 ; FF
2A52: nop                 ; FF
2A53: cmp z, a            ; 7F
2A54: nop                 ; 00
2A55: nop                 ; 00
2A56: nop                 ; 00
2A57: nop                 ; 00
2A58: nop                 ; 00
2A59: nop                 ; FF
2A5A: nop                 ; FF
2A5B: nop                 ; FF
2A5C: nop                 ; FF
2A5D: xor x, w            ; BF
2A5E: nop                 ; 00
2A5F: nop                 ; 00
2A60: nop                 ; 00
2A61: nop                 ; 00
2A62: nop                 ; 00
2A63: nop                 ; FF
2A64: nop                 ; FF
2A65: nop                 ; FF
2A66: nop                 ; FF
2A67: mul w, z            ; 5F
2A68: nop                 ; 00
2A69: nop                 ; 00
2A6A: nop                 ; 00
2A6B: nop                 ; 00
2A6C: nop                 ; 00
2A6D: nop                 ; FF
2A6E: nop                 ; FF
2A6F: nop                 ; FF
2A70: nop                 ; FF
2A71: add w, a            ; 2F
2A72: nop                 ; 00
2A73: nop                 ; 00
2A74: nop                 ; 00
2A75: nop                 ; 00
2A76: nop                 ; 00
2A77: nop                 ; FF
2A78: nop                 ; FF
2A79: nop                 ; FF
2A7A: nop                 ; FF
2A7B: pop y               ; 07
2A7C: nop                 ; 00
2A7D: nop                 ; 00
2A7E: nop                 ; 00
2A7F: nop                 ; 00
2A80: nop                 ; 00
2A81: nop                 ; FF
2A82: nop                 ; FF
2A83: nop                 ; FF
2A84: nop                 ; FF
2A85: push z              ; 03
2A86: nop                 ; 00
2A87: nop                 ; 00
2A88: nop                 ; 00
2A89: nop                 ; 00
2A8A: nop                 ; 00
2A8B: nop                 ; FF
2A8C: nop                 ; FF
2A8D: nop                 ; FF
2A8E: nop                 ; FF
2A8F: nop                 ; 00
2A90: nop                 ; 00
2A91: nop                 ; 00
2A92: nop                 ; 00
2A93: nop                 ; 00
2A94: nop                 ; 00
2A95: nop                 ; FF
2A96: nop                 ; FF
2A97: nop                 ; FF
2A98: sub z, x            ; 3F
2A99: nop                 ; 00
2A9A: nop                 ; 00
2A9B: nop                 ; 00
2A9C: nop                 ; 00
2A9D: nop                 ; 00
2A9E: nop                 ; 00
2A9F: nop                 ; FF
2AA0: nop                 ; FF
2AA1: nop                 ; FF
2AA2: load a, $0078       ; 0F 78 00
2AA5: nop                 ; 00
2AA6: nop                 ; 00
2AA7: nop                 ; 00
2AA8: nop                 ; 00
2AA9: nop                 ; FF
2AAA: nop                 ; FF
2AAB: nop                 ; FF
2AAC: cmp a, z            ; 87
2AAD: and w, z            ; 9D
