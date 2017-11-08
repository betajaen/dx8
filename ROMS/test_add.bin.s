0000: jmp $007F           ; E9 7F 00
0003: dec a               ; 70
0004: jmp.z $000B         ; F5 0B 00
0007: nop                 ; 00
0008: jmp $0003           ; E9 03 00
000B: return              ; 16
000C: store $4010, a      ; 14 10 40
000F: set a, $00          ; 1B 00
0011: store $4012, a      ; 14 12 40
0014: set a, $80          ; 1B 80
0016: store $4013, a      ; 14 13 40
0019: set a, $00          ; 1B 00
001B: store $4014, a      ; 14 14 40
001E: set a, $10          ; 1B 10
0020: store $4015, a      ; 14 15 40
0023: int $01             ; F6 01
0025: set a, $20          ; 1B 20
0027: call $0003          ; 15 03 00
002A: return              ; 16
002B: store $4010, a      ; 14 10 40
002E: set a, $F4          ; 1B F4
0030: store $4012, a      ; 14 12 40
0033: set a, $81          ; 1B 81
0035: store $4013, a      ; 14 13 40
0038: set a, $00          ; 1B 00
003A: store $4014, a      ; 14 14 40
003D: set a, $10          ; 1B 10
003F: store $4015, a      ; 14 15 40
0042: int $01             ; F6 01
0044: nop                 ; 00
0045: nop                 ; 00
0046: nop                 ; 00
0047: nop                 ; 00
0048: nop                 ; 00
0049: nop                 ; 00
004A: nop                 ; 00
004B: nop                 ; 00
004C: return              ; 16
004D: set a, $00          ; 1B 00
004F: store $4012, a      ; 14 12 40
0052: set a, $80          ; 1B 80
0054: store $4013, a      ; 14 13 40
0057: store $4014, x      ; 10 14 40
005A: store $4015, y      ; 11 15 40
005D: store $4016, z      ; 12 16 40
0060: store $4017, w      ; 13 17 40
0063: int $03             ; F6 03
0065: return              ; 16
0066: set a, $F4          ; 1B F4
0068: store $4012, a      ; 14 12 40
006B: set a, $81          ; 1B 81
006D: store $4013, a      ; 14 13 40
0070: store $4014, x      ; 10 14 40
0073: store $4015, y      ; 11 15 40
0076: store $4016, z      ; 12 16 40
0079: store $4017, w      ; 13 17 40
007C: int $03             ; F6 03
007E: return              ; 16
007F: set a, $05          ; 1B 05
0081: store $5000, a      ; 14 00 50
0084: set x, $00          ; 17 00
0086: inc x               ; 67
0087: xor a, a            ; D4
0088: add a, x            ; 30
0089: call $000C          ; 15 0C 00
008C: jmp $0086           ; E9 86 00
008F: nop                 ; FF
0090: nop                 ; FF
0091: nop                 ; FF
0092: nop                 ; FF
0093: nop                 ; FF
0094: nop                 ; FF
0095: nop                 ; FF
0096: nop                 ; FF
0097: nop                 ; FF
0098: nop                 ; FF
0099: jmp.eq $FFFF        ; F1 FF FF
009C: nop                 ; FF
009D: nop                 ; FF
009E: nop                 ; FF
009F: nop                 ; FF
00A0: nop                 ; FF
00A1: nop                 ; FF
00A2: and x, y            ; 8F
00A3: nop                 ; FD
00A4: nop                 ; FF
00A5: nop                 ; FF
00A6: nop                 ; FF
00A7: nop                 ; FF
00A8: nop                 ; FF
00A9: nop                 ; FF
00AA: nop                 ; FF
00AB: nop                 ; FF
00AC: xor x, w            ; BF
00AD: nop                 ; FD
00AE: nop                 ; FF
00AF: nop                 ; FF
00B0: nop                 ; FF
00B1: nop                 ; FF
00B2: nop                 ; FF
00B3: nop                 ; FF
00B4: nop                 ; FF
00B5: nop                 ; FF
00B6: xor x, w            ; BF
00B7: nop                 ; FF
00B8: nop                 ; FF
00B9: nop                 ; FF
00BA: nop                 ; FF
00BB: nop                 ; FF
00BC: nop                 ; FF
00BD: nop                 ; FF
00BE: nop                 ; FF
00BF: nop                 ; FF
00C0: nop                 ; FF
00C1: nop                 ; FF
00C2: nop                 ; FF
00C3: nop                 ; FF
00C4: nop                 ; FF
00C5: nop                 ; FF
00C6: nop                 ; FF
00C7: nop                 ; FF
00C8: nop                 ; FF
00C9: nop                 ; FF
00CA: nop                 ; FF
00CB: nop                 ; FF
00CC: nop                 ; FF
00CD: nop                 ; FF
00CE: nop                 ; FF
00CF: nop                 ; FF
00D0: nop                 ; FF
00D1: nop                 ; FF
00D2: nop                 ; FF
00D3: nop                 ; FF
00D4: nop                 ; FF
00D5: nop                 ; FF
00D6: nop                 ; FF
00D7: nop                 ; FF
00D8: nop                 ; FF
00D9: nop                 ; FF
00DA: nop                 ; FF
00DB: nop                 ; FF
00DC: nop                 ; FF
00DD: nop                 ; FF
00DE: nop                 ; FF
00DF: nop                 ; FF
00E0: nop                 ; FF
00E1: nop                 ; FF
00E2: nop                 ; FF
00E3: nop                 ; FF
00E4: nop                 ; FF
00E5: nop                 ; FF
00E6: nop                 ; FF
00E7: nop                 ; FF
00E8: nop                 ; FF
00E9: nop                 ; FF
00EA: nop                 ; FF
00EB: nop                 ; FF
00EC: nop                 ; FF
00ED: nop                 ; FF
00EE: nop                 ; FF
00EF: nop                 ; FF
00F0: nop                 ; FF
00F1: nop                 ; FF
00F2: nop                 ; FF
00F3: nop                 ; FF
00F4: nop                 ; FF
00F5: nop                 ; FF
00F6: nop                 ; FF
00F7: nop                 ; FF
00F8: nop                 ; FF
00F9: nop                 ; FF
00FA: nop                 ; FF
00FB: nop                 ; FF
00FC: nop                 ; FF
00FD: nop                 ; FF
00FE: nop                 ; FF
00FF: nop                 ; FF
0100: nop                 ; FF
0101: nop                 ; FF
0102: nop                 ; FF
0103: nop                 ; FF
0104: nop                 ; FF
0105: nop                 ; FF
0106: nop                 ; FF
0107: nop                 ; FF
0108: nop                 ; FF
0109: nop                 ; FF
010A: nop                 ; FF
010B: nop                 ; FF
010C: nop                 ; FF
010D: nop                 ; FF
010E: nop                 ; FF
010F: nop                 ; FF
0110: nop                 ; FF
0111: nop                 ; FF
0112: nop                 ; FF
0113: nop                 ; FF
0114: nop                 ; FF
0115: nop                 ; FF
0116: nop                 ; FF
0117: nop                 ; FF
0118: nop                 ; FF
0119: nop                 ; FF
011A: nop                 ; FF
011B: nop                 ; FF
011C: nop                 ; FF
011D: nop                 ; FF
011E: nop                 ; FF
011F: nop                 ; FF
0120: nop                 ; FF
0121: nop                 ; FF
0122: nop                 ; FF
0123: nop                 ; FF
0124: nop                 ; FF
0125: nop                 ; FF
0126: nop                 ; FF
0127: nop                 ; FF
0128: add x, w            ; 1F
0129: nop                 ; FF
012A: nop                 ; FF
012B: cmp w, w            ; 83
012C: nop                 ; FF
012D: nop                 ; FF
012E: nop                 ; FF
012F: nop                 ; FF
0130: nop                 ; FF
0131: nop                 ; FF
0132: add x, w            ; 1F
0133: nop                 ; FF
0134: nop                 ; FF
0135: nop                 ; 00
0136: nop                 ; FE
0137: nop                 ; FF
0138: nop                 ; FF
0139: nop                 ; FF
013A: nop                 ; FF
013B: nop                 ; FF
013C: add x, w            ; 1F
013D: nop                 ; FF
013E: cmp z, a            ; 7F
013F: nop                 ; 00
0140: nop                 ; FC
0141: nop                 ; FF
0142: nop                 ; FF
0143: nop                 ; FF
0144: nop                 ; FF
0145: nop                 ; FF
0146: add x, w            ; 1F
0147: nop                 ; FF
0148: cmp z, a            ; 7F
0149: sub x, w            ; 38
014A: nop                 ; FC
014B: nop                 ; FF
014C: nop                 ; FF
014D: nop                 ; FF
014E: nop                 ; FF
014F: nop                 ; FF
0150: add x, w            ; 1F
0151: nop                 ; FF
0152: cmp z, a            ; 7F
0153: cmp z, y            ; 7C
0154: nop                 ; FC
0155: nop                 ; FF
0156: nop                 ; FF
0157: nop                 ; FF
0158: nop                 ; FF
0159: cmp z, a            ; 7F
015A: store $47C3, x      ; 10 C3 47
015D: cmp z, y            ; 7C
015E: nop                 ; FC
015F: nop                 ; FF
0160: nop                 ; FF
0161: nop                 ; FF
0162: nop                 ; FF
0163: sub z, x            ; 3F
0164: nop                 ; 00
0165: xor y, z            ; C3
0166: sub z, a            ; 43
0167: sub x, w            ; 38
0168: nop                 ; FC
0169: nop                 ; FF
016A: nop                 ; FF
016B: nop                 ; FF
016C: nop                 ; FF
016D: add x, w            ; 1F
016E: nop                 ; 00
016F: cmp a, z            ; 87
0170: rol z               ; E1
0171: nop                 ; 00
0172: nop                 ; FE
0173: nop                 ; FF
0174: nop                 ; FF
0175: nop                 ; FF
0176: nop                 ; FF
0177: load a, $0F06       ; 0F 06 0F
017A: rol z               ; E1
017B: nop                 ; 00
017C: nop                 ; FE
017D: nop                 ; FF
017E: nop                 ; FF
017F: nop                 ; FF
0180: nop                 ; FF
0181: load a, $0F0F       ; 0F 0F 0F
0184: dec a               ; 70
0185: nop                 ; 00
0186: nop                 ; FC
0187: nop                 ; FF
0188: nop                 ; FF
0189: nop                 ; FF
018A: nop                 ; FF
018B: and x, y            ; 8F
018C: add x, w            ; 1F
018D: add x, w            ; 1F
018E: sub x, w            ; 38
018F: sub y, z            ; 3C
0190: nop                 ; F8
0191: nop                 ; FF
0192: nop                 ; FF
0193: nop                 ; FF
0194: nop                 ; FF
0195: and x, y            ; 8F
0196: add x, w            ; 1F
0197: sub z, x            ; 3F
0198: sub y, z            ; 3C
0199: cmp z, y            ; 7C
019A: nop                 ; F8
019B: nop                 ; FF
019C: nop                 ; FF
019D: nop                 ; FF
019E: nop                 ; FF
019F: and x, y            ; 8F
01A0: add x, w            ; 1F
01A1: sub z, x            ; 3F
01A2: sub y, z            ; 3C
01A3: nop                 ; FE
01A4: nop                 ; F8
01A5: nop                 ; FF
01A6: nop                 ; FF
01A7: nop                 ; FF
01A8: nop                 ; FF
01A9: and x, y            ; 8F
01AA: add x, w            ; 1F
01AB: add x, w            ; 1F
01AC: sub x, w            ; 38
01AD: nop                 ; FE
01AE: nop                 ; F8
01AF: nop                 ; FF
01B0: nop                 ; FF
01B1: nop                 ; FF
01B2: nop                 ; FF
01B3: load a, $0F0F       ; 0F 0F 0F
01B6: add a, x            ; 30
01B7: nop                 ; FE
01B8: nop                 ; F8
01B9: nop                 ; FF
01BA: nop                 ; FF
01BB: nop                 ; FF
01BC: nop                 ; FF
01BD: add x, w            ; 1F
01BE: pop x               ; 06
01BF: load a, $7830       ; 0F 30 78
01C2: nop                 ; F8
01C3: nop                 ; FF
01C4: nop                 ; FF
01C5: nop                 ; FF
01C6: nop                 ; FF
01C7: add x, w            ; 1F
01C8: nop                 ; 00
01C9: cmp a, z            ; 87
01CA: mul w, a            ; 61
01CB: nop                 ; 00
01CC: nop                 ; FC
01CD: nop                 ; FF
01CE: nop                 ; FF
01CF: nop                 ; FF
01D0: nop                 ; FF
01D1: sub z, x            ; 3F
01D2: nop                 ; 00
01D3: xor y, z            ; C3
01D4: xor y, z            ; C3
01D5: nop                 ; 00
01D6: nop                 ; FE
01D7: nop                 ; FF
01D8: nop                 ; FF
01D9: nop                 ; FF
01DA: nop                 ; FF
01DB: cmp z, a            ; 7F
01DC: store $C3C3, x      ; 10 C3 C3
01DF: push x              ; 01
01E0: nop                 ; FF
01E1: nop                 ; FF
01E2: nop                 ; FF
01E3: nop                 ; FF
01E4: nop                 ; FF
01E5: nop                 ; FF
01E6: nop                 ; FF
01E7: nop                 ; FF
01E8: nop                 ; FF
01E9: nop                 ; FF
01EA: nop                 ; FF
01EB: nop                 ; FF
01EC: nop                 ; FF
01ED: nop                 ; FF
01EE: nop                 ; FF
01EF: nop                 ; FF
01F0: nop                 ; FF
01F1: nop                 ; FF
01F2: nop                 ; FF
01F3: nop                 ; FF
01F4: nop                 ; FF
01F5: nop                 ; FF
01F6: nop                 ; FF
01F7: nop                 ; FF
01F8: nop                 ; FF
01F9: nop                 ; FF
01FA: nop                 ; FF
01FB: nop                 ; FF
01FC: nop                 ; FF
01FD: nop                 ; FF
01FE: nop                 ; FF
01FF: nop                 ; FF
0200: nop                 ; FF
0201: nop                 ; FF
0202: nop                 ; FF
0203: nop                 ; FF
0204: nop                 ; FF
0205: nop                 ; FF
0206: nop                 ; FF
0207: nop                 ; FF
0208: nop                 ; FF
0209: nop                 ; FF
020A: nop                 ; FF
020B: nop                 ; FF
020C: nop                 ; FF
020D: nop                 ; FF
020E: nop                 ; FF
020F: nop                 ; FF
0210: nop                 ; FF
0211: nop                 ; FF
0212: nop                 ; FF
0213: nop                 ; FF
0214: nop                 ; FF
0215: nop                 ; FF
0216: nop                 ; FF
0217: nop                 ; FF
0218: nop                 ; FF
0219: nop                 ; FF
021A: nop                 ; FF
021B: nop                 ; FF
021C: nop                 ; FF
021D: nop                 ; FF
021E: nop                 ; FF
021F: nop                 ; FF
0220: nop                 ; FF
0221: nop                 ; FF
0222: nop                 ; FF
0223: nop                 ; FF
0224: nop                 ; FF
0225: nop                 ; FF
0226: nop                 ; FF
0227: nop                 ; FF
0228: nop                 ; FF
0229: nop                 ; FF
022A: nop                 ; FF
022B: nop                 ; FF
022C: nop                 ; FF
022D: nop                 ; FF
022E: nop                 ; FF
022F: nop                 ; FF
0230: nop                 ; FF
0231: nop                 ; FF
0232: nop                 ; FF
0233: nop                 ; FF
0234: nop                 ; FF
0235: nop                 ; FF
0236: nop                 ; FF
0237: nop                 ; FF
0238: nop                 ; FF
0239: nop                 ; FF
023A: nop                 ; FF
023B: nop                 ; FF
023C: nop                 ; FF
023D: nop                 ; FF
023E: nop                 ; FF
023F: nop                 ; FF
0240: nop                 ; FF
0241: nop                 ; FF
0242: nop                 ; FF
0243: nop                 ; FF
0244: nop                 ; FF
0245: nop                 ; FF
0246: nop                 ; FF
0247: nop                 ; FF
0248: nop                 ; FF
0249: nop                 ; FF
024A: nop                 ; FF
024B: nop                 ; FF
024C: nop                 ; FF
024D: nop                 ; FF
024E: nop                 ; FF
024F: nop                 ; FF
0250: nop                 ; FF
0251: nop                 ; FF
0252: nop                 ; FF
0253: nop                 ; FF
0254: nop                 ; FF
0255: nop                 ; FF
0256: nop                 ; FF
0257: nop                 ; FF
0258: nop                 ; FF
0259: nop                 ; FF
025A: nop                 ; FF
025B: nop                 ; FD
025C: nop                 ; FF
025D: nop                 ; FF
025E: nop                 ; FF
025F: nop                 ; FF
0260: nop                 ; FF
0261: nop                 ; FF
0262: nop                 ; FF
0263: nop                 ; FF
0264: xor x, w            ; BF
0265: nop                 ; FD
0266: nop                 ; FF
0267: nop                 ; FF
0268: nop                 ; FF
0269: nop                 ; FF
026A: nop                 ; FF
026B: nop                 ; FF
026C: nop                 ; FF
026D: nop                 ; FF
026E: xor x, w            ; BF
026F: jmp.eq $FFFF        ; F1 FF FF
0272: nop                 ; FF
0273: nop                 ; FF
0274: nop                 ; FF
0275: nop                 ; FF
0276: nop                 ; FF
0277: nop                 ; FF
0278: and x, y            ; 8F
0279: nop                 ; FF
027A: nop                 ; FF
027B: nop                 ; FF
027C: nop                 ; FF
027D: nop                 ; FF
027E: nop                 ; FF
027F: nop                 ; FF
0280: nop                 ; FF
0281: nop                 ; FF
0282: nop                 ; FF
0283: nop                 ; 00
0284: rol y               ; E0
0285: nop                 ; FF
0286: nop                 ; FF
0287: nop                 ; FF
0288: nop                 ; 00
0289: nop                 ; 00
028A: nop                 ; 00
028B: nop                 ; 00
028C: nop                 ; 00
028D: nop                 ; 00
028E: nop                 ; F8
028F: nop                 ; FF
0290: nop                 ; FF
0291: nop                 ; FF
0292: nop                 ; 00
0293: nop                 ; 00
0294: nop                 ; 00
0295: nop                 ; 00
0296: nop                 ; 00
0297: nop                 ; 00
0298: nop                 ; FD
0299: nop                 ; FF
029A: nop                 ; FF
029B: nop                 ; FF
029C: nop                 ; 00
029D: nop                 ; 00
029E: nop                 ; 00
029F: nop                 ; 00
02A0: nop                 ; 00
02A1: sub z, y            ; 40
02A2: nop                 ; FE
02A3: nop                 ; FF
02A4: nop                 ; FF
02A5: nop                 ; FF
02A6: nop                 ; 00
02A7: nop                 ; 00
02A8: nop                 ; 00
02A9: nop                 ; 00
02AA: nop                 ; 00
02AB: and a, y            ; A0
02AC: nop                 ; FF
02AD: nop                 ; FF
02AE: nop                 ; FF
02AF: nop                 ; FF
02B0: nop                 ; 00
02B1: nop                 ; 00
02B2: nop                 ; 00
02B3: nop                 ; 00
02B4: nop                 ; 00
02B5: and x, z            ; 90
02B6: nop                 ; FF
02B7: nop                 ; FF
02B8: nop                 ; FF
02B9: nop                 ; FF
02BA: nop                 ; 00
02BB: xor x, a            ; C0
02BC: nop                 ; 00
02BD: push x              ; 01
02BE: nop                 ; 00
02BF: xor z, a            ; CA
02C0: nop                 ; FF
02C1: nop                 ; FF
02C2: nop                 ; FF
02C3: nop                 ; FF
02C4: nop                 ; 00
02C5: add a, x            ; 30
02C6: nop                 ; 00
02C7: push x              ; 01
02C8: nop                 ; 00
02C9: jmp.eq $FFFF        ; F1 FF FF
02CC: nop                 ; FF
02CD: nop                 ; FF
02CE: nop                 ; 00
02CF: load y, $0100       ; 0C 00 01
02D2: nop                 ; 00
02D3: nop                 ; F8
02D4: nop                 ; FF
02D5: nop                 ; FF
02D6: nop                 ; FF
02D7: nop                 ; FF
02D8: nop                 ; 00
02D9: push z              ; 03
02DA: nop                 ; 00
02DB: push x              ; 01
02DC: nop                 ; 00
02DD: nop                 ; FC
02DE: nop                 ; FF
02DF: nop                 ; FF
02E0: nop                 ; FF
02E1: nop                 ; FF
02E2: rol y               ; E0
02E3: nop                 ; 00
02E4: push x              ; 01
02E5: push x              ; 01
02E6: nop                 ; 00
02E7: nop                 ; FE
02E8: nop                 ; FF
02E9: nop                 ; FF
02EA: nop                 ; FF
02EB: nop                 ; FF
02EC: set y, $C0          ; 18 C0
02EE: nop                 ; 00
02EF: store $FF00, y      ; 11 00 FF
02F2: nop                 ; FF
02F3: nop                 ; FF
02F4: nop                 ; FF
02F5: nop                 ; FF
02F6: mul a, a            ; 66
02F7: add x, a            ; 20
02F8: nop                 ; 00
02F9: store $FF00, y      ; 11 00 FF
02FC: nop                 ; FF
02FD: nop                 ; FF
02FE: nop                 ; FF
02FF: nop                 ; FF
0300: cmp w, y            ; 81
0301: store $2100, y      ; 11 00 21
0304: nop                 ; 00
0305: nop                 ; FF
0306: nop                 ; FF
0307: nop                 ; FF
0308: nop                 ; FF
0309: nop                 ; FF
030A: nop                 ; 00
030B: load w, $2100       ; 0E 00 21
030E: nop                 ; 00
030F: nop                 ; FF
0310: nop                 ; FF
0311: nop                 ; FF
0312: nop                 ; FF
0313: nop                 ; FF
0314: nop                 ; 00
0315: set w, $00          ; 1A 00
0317: sub z, z            ; 41
0318: nop                 ; 00
0319: nop                 ; FF
031A: nop                 ; FF
031B: nop                 ; FF
031C: nop                 ; FF
031D: nop                 ; FF
031E: cmp w, x            ; 80
031F: mul w, a            ; 61
0320: nop                 ; 00
0321: sub z, z            ; 41
0322: nop                 ; 00
0323: nop                 ; FF
0324: nop                 ; FF
0325: nop                 ; FF
0326: nop                 ; FF
0327: nop                 ; FF
0328: sub z, y            ; 40
0329: cmp w, x            ; 80
032A: push x              ; 01
032B: cmp w, y            ; 81
032C: nop                 ; 00
032D: nop                 ; FF
032E: nop                 ; FF
032F: nop                 ; FF
0330: nop                 ; FF
0331: nop                 ; FF
0332: add a, x            ; 30
0333: nop                 ; 00
0334: pop x               ; 06
0335: cmp w, y            ; 81
0336: nop                 ; 00
0337: nop                 ; FF
0338: nop                 ; FF
0339: nop                 ; FF
033A: nop                 ; FF
033B: nop                 ; FF
033C: pop z               ; 08
033D: nop                 ; 00
033E: set y, $01          ; 18 01
0340: push x              ; 01
0341: nop                 ; FF
0342: nop                 ; FF
0343: nop                 ; FF
0344: nop                 ; FF
0345: nop                 ; FF
0346: push w              ; 04
0347: nop                 ; 00
0348: mul a, a            ; 66
0349: push x              ; 01
034A: push x              ; 01
034B: nop                 ; FF
034C: nop                 ; FF
034D: nop                 ; FF
034E: nop                 ; FF
034F: nop                 ; FF
0350: push z              ; 03
0351: cmp w, x            ; 80
0352: cmp w, y            ; 81
0353: push x              ; 01
0354: push x              ; 01
0355: nop                 ; FF
0356: nop                 ; FF
0357: nop                 ; FF
0358: nop                 ; FF
0359: nop                 ; FF
035A: nop                 ; 00
035B: sub z, y            ; 40
035C: nop                 ; 00
035D: pop y               ; 07
035E: load w, $FFFF       ; 0E FF FF
0361: nop                 ; FF
0362: nop                 ; FF
0363: nop                 ; FF
0364: nop                 ; 00
0365: add a, x            ; 30
0366: nop                 ; 00
0367: set z, $03          ; 19 03
0369: nop                 ; FF
036A: nop                 ; FF
036B: nop                 ; FF
036C: nop                 ; FF
036D: nop                 ; FF
036E: nop                 ; 00
036F: pop z               ; 08
0370: nop                 ; 00
0371: rol z               ; E1
0372: push w              ; 04
0373: nop                 ; FF
0374: nop                 ; FF
0375: nop                 ; FF
0376: nop                 ; FF
0377: nop                 ; FF
0378: nop                 ; 00
0379: pop x               ; 06
037A: nop                 ; 00
037B: or w, z             ; B1
037C: push a              ; 05
037D: nop                 ; FF
037E: nop                 ; FF
037F: nop                 ; FF
0380: nop                 ; FF
0381: nop                 ; FF
0382: cmp w, x            ; 80
0383: push x              ; 01
0384: nop                 ; 00
0385: load z, $FF08       ; 0D 08 FF
0388: nop                 ; FF
0389: nop                 ; FF
038A: nop                 ; FF
038B: nop                 ; FF
038C: sub z, y            ; 40
038D: nop                 ; 00
038E: nop                 ; 00
038F: push z              ; 03
0390: pop z               ; 08
0391: nop                 ; FF
0392: nop                 ; FF
0393: nop                 ; FF
0394: nop                 ; FF
0395: nop                 ; FF
0396: add a, x            ; 30
0397: nop                 ; 00
0398: xor x, a            ; C0
0399: push x              ; 01
039A: nop                 ; 00
039B: nop                 ; FF
039C: nop                 ; FF
039D: nop                 ; FF
039E: nop                 ; FF
039F: nop                 ; FF
03A0: pop z               ; 08
03A1: nop                 ; 00
03A2: sub x, w            ; 38
03A3: push x              ; 01
03A4: nop                 ; 00
03A5: nop                 ; FF
03A6: nop                 ; FF
03A7: nop                 ; FF
03A8: nop                 ; FF
03A9: nop                 ; FF
03AA: pop x               ; 06
03AB: nop                 ; 00
03AC: pop x               ; 06
03AD: push x              ; 01
03AE: nop                 ; 00
03AF: nop                 ; FF
03B0: nop                 ; FF
03B1: nop                 ; FF
03B2: nop                 ; FF
03B3: nop                 ; FF
03B4: push x              ; 01
03B5: cmp w, x            ; 80
03B6: push x              ; 01
03B7: push x              ; 01
03B8: nop                 ; 00
03B9: nop                 ; FF
03BA: nop                 ; FF
03BB: nop                 ; FF
03BC: nop                 ; FF
03BD: nop                 ; FF
03BE: nop                 ; 00
03BF: mul w, w            ; 60
03C0: nop                 ; 00
03C1: push x              ; 01
03C2: nop                 ; 00
03C3: nop                 ; FF
03C4: nop                 ; FF
03C5: nop                 ; FF
03C6: nop                 ; FF
03C7: nop                 ; FF
03C8: nop                 ; 00
03C9: set y, $00          ; 18 00
03CB: push x              ; 01
03CC: nop                 ; 00
03CD: nop                 ; FF
03CE: nop                 ; FF
03CF: nop                 ; FF
03D0: nop                 ; FF
03D1: nop                 ; FF
03D2: nop                 ; 00
03D3: pop x               ; 06
03D4: nop                 ; 00
03D5: push x              ; 01
03D6: nop                 ; 00
03D7: nop                 ; FF
03D8: nop                 ; FF
03D9: nop                 ; FF
03DA: nop                 ; FF
03DB: nop                 ; FF
03DC: cmp w, x            ; 80
03DD: push x              ; 01
03DE: nop                 ; 00
03DF: push x              ; 01
03E0: nop                 ; 00
03E1: nop                 ; FF
03E2: nop                 ; FF
03E3: nop                 ; FF
03E4: nop                 ; FF
03E5: nop                 ; FF
03E6: mul w, w            ; 60
03E7: nop                 ; 00
03E8: nop                 ; 00
03E9: nop                 ; 00
03EA: nop                 ; 00
03EB: nop                 ; FF
03EC: nop                 ; FF
03ED: nop                 ; FF
03EE: nop                 ; FF
03EF: nop                 ; FF
03F0: set y, $00          ; 18 00
03F2: xor x, a            ; C0
03F3: nop                 ; 00
03F4: nop                 ; 00
03F5: nop                 ; FF
03F6: nop                 ; FF
03F7: nop                 ; FF
03F8: nop                 ; FF
03F9: nop                 ; FF
03FA: nop                 ; 00
03FB: nop                 ; 00
03FC: sub x, w            ; 38
03FD: nop                 ; 00
03FE: nop                 ; 00
03FF: nop                 ; FF
0400: nop                 ; FF
0401: nop                 ; FF
0402: nop                 ; FF
0403: nop                 ; FF
0404: nop                 ; 00
0405: nop                 ; 00
0406: pop x               ; 06
0407: nop                 ; 00
0408: nop                 ; 00
0409: nop                 ; FF
040A: nop                 ; FF
040B: nop                 ; FF
040C: nop                 ; FF
040D: nop                 ; FF
040E: nop                 ; 00
040F: xor x, a            ; C0
0410: push x              ; 01
0411: nop                 ; 00
0412: nop                 ; 00
0413: nop                 ; FF
0414: nop                 ; FF
0415: nop                 ; FF
0416: nop                 ; FF
0417: nop                 ; FF
0418: nop                 ; 00
0419: sub x, w            ; 38
041A: nop                 ; 00
041B: nop                 ; 00
041C: nop                 ; 00
041D: nop                 ; FF
041E: nop                 ; FF
041F: nop                 ; FF
0420: nop                 ; FF
0421: nop                 ; FF
0422: nop                 ; 00
0423: pop x               ; 06
0424: nop                 ; 00
0425: nop                 ; 00
0426: nop                 ; 00
0427: nop                 ; FF
0428: nop                 ; FF
0429: nop                 ; FF
042A: nop                 ; FF
042B: nop                 ; FF
042C: xor x, a            ; C0
042D: push x              ; 01
042E: nop                 ; 00
042F: nop                 ; 00
0430: nop                 ; 00
0431: nop                 ; FF
0432: nop                 ; FF
0433: nop                 ; FF
0434: nop                 ; FF
0435: nop                 ; FF
0436: sub x, w            ; 38
0437: nop                 ; 00
0438: nop                 ; 00
0439: nop                 ; 00
043A: nop                 ; 00
043B: nop                 ; FF
043C: nop                 ; FF
043D: nop                 ; FF
043E: nop                 ; FF
043F: nop                 ; FF
0440: pop x               ; 06
0441: nop                 ; 00
0442: nop                 ; 00
0443: nop                 ; 00
0444: nop                 ; 00
0445: nop                 ; FF
0446: nop                 ; FF
0447: nop                 ; FF
0448: nop                 ; FF
0449: nop                 ; FF
044A: push x              ; 01
044B: nop                 ; 00
044C: nop                 ; 00
044D: nop                 ; 00
044E: nop                 ; 00
044F: nop                 ; FF
0450: nop                 ; FF
0451: nop                 ; FF
0452: nop                 ; FF
0453: nop                 ; FF
0454: nop                 ; 00
0455: nop                 ; 00
0456: nop                 ; 00
0457: nop                 ; 00
0458: nop                 ; 00
0459: nop                 ; FF
045A: nop                 ; FF
045B: nop                 ; FF
045C: nop                 ; FF
045D: nop                 ; FF
045E: nop                 ; 00
045F: nop                 ; 00
0460: nop                 ; 00
0461: nop                 ; 00
0462: nop                 ; 00
0463: nop                 ; FF
0464: nop                 ; FF
0465: nop                 ; FF
0466: nop                 ; FF
0467: nop                 ; FF
0468: nop                 ; 00
0469: nop                 ; 00
046A: nop                 ; 00
046B: nop                 ; 00
046C: nop                 ; 00
046D: nop                 ; FF
046E: nop                 ; FF
046F: nop                 ; FF
0470: nop                 ; FF
0471: nop                 ; FF
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
047C: nop                 ; FF
047D: nop                 ; FF
047E: nop                 ; FF
047F: nop                 ; FF
0480: nop                 ; FF
0481: nop                 ; 00
0482: nop                 ; 00
0483: nop                 ; 00
0484: nop                 ; 00
0485: nop                 ; 00
0486: nop                 ; FF
0487: nop                 ; FF
0488: nop                 ; FF
0489: nop                 ; FF
048A: nop                 ; FF
048B: nop                 ; 00
048C: nop                 ; 00
048D: nop                 ; 00
048E: nop                 ; 00
048F: nop                 ; 00
0490: nop                 ; FF
0491: nop                 ; FF
0492: nop                 ; FF
0493: nop                 ; FF
0494: nop                 ; FF
0495: nop                 ; 00
0496: nop                 ; 00
0497: nop                 ; 00
0498: nop                 ; 00
0499: nop                 ; 00
049A: nop                 ; FF
049B: nop                 ; FF
049C: nop                 ; FF
049D: nop                 ; FF
049E: nop                 ; FF
049F: nop                 ; 00
04A0: nop                 ; 00
04A1: nop                 ; 00
04A2: nop                 ; 00
04A3: nop                 ; 00
04A4: nop                 ; FF
04A5: nop                 ; FF
04A6: nop                 ; FF
04A7: nop                 ; FF
04A8: nop                 ; FF
04A9: nop                 ; 00
04AA: nop                 ; 00
04AB: nop                 ; 00
04AC: nop                 ; 00
04AD: nop                 ; 00
04AE: nop                 ; FF
04AF: nop                 ; FF
04B0: nop                 ; FF
04B1: nop                 ; FF
04B2: nop                 ; FF
04B3: nop                 ; 00
04B4: nop                 ; 00
04B5: nop                 ; 00
04B6: nop                 ; 00
04B7: nop                 ; 00
04B8: nop                 ; FF
04B9: nop                 ; FF
04BA: nop                 ; FF
04BB: nop                 ; FF
04BC: nop                 ; FF
04BD: nop                 ; 00
04BE: nop                 ; 00
04BF: nop                 ; 00
04C0: nop                 ; 00
04C1: nop                 ; 00
04C2: nop                 ; FF
04C3: nop                 ; FF
04C4: nop                 ; FF
04C5: nop                 ; FF
04C6: nop                 ; FF
04C7: nop                 ; 00
04C8: nop                 ; 00
04C9: nop                 ; 00
04CA: nop                 ; 00
04CB: nop                 ; 00
04CC: nop                 ; FF
04CD: nop                 ; FF
04CE: nop                 ; FF
04CF: nop                 ; FF
04D0: nop                 ; FF
04D1: nop                 ; 00
04D2: nop                 ; 00
04D3: nop                 ; 00
04D4: nop                 ; 00
04D5: nop                 ; 00
04D6: nop                 ; FF
04D7: nop                 ; FF
04D8: nop                 ; FF
04D9: nop                 ; FF
04DA: nop                 ; FF
04DB: nop                 ; 00
04DC: nop                 ; 00
04DD: nop                 ; 00
04DE: nop                 ; 00
04DF: nop                 ; 00
04E0: nop                 ; FF
04E1: nop                 ; FF
04E2: nop                 ; FF
04E3: nop                 ; FF
04E4: nop                 ; FF
04E5: nop                 ; 00
04E6: nop                 ; 00
04E7: nop                 ; 00
04E8: nop                 ; 00
04E9: nop                 ; 00
04EA: nop                 ; FF
04EB: nop                 ; FF
04EC: nop                 ; FF
04ED: nop                 ; FF
04EE: nop                 ; FF
04EF: nop                 ; 00
04F0: nop                 ; 00
04F1: nop                 ; 00
04F2: nop                 ; 00
04F3: nop                 ; 00
04F4: nop                 ; FF
04F5: nop                 ; FF
04F6: nop                 ; FF
04F7: nop                 ; FF
04F8: nop                 ; FF
04F9: nop                 ; 00
04FA: nop                 ; 00
04FB: nop                 ; 00
04FC: nop                 ; 00
04FD: nop                 ; 00
04FE: nop                 ; FF
04FF: nop                 ; FF
0500: nop                 ; FF
0501: nop                 ; FF
0502: nop                 ; FF
0503: nop                 ; 00
0504: nop                 ; 00
0505: nop                 ; 00
0506: nop                 ; 00
0507: nop                 ; 00
0508: nop                 ; FF
0509: nop                 ; FF
050A: nop                 ; FF
050B: nop                 ; FF
050C: nop                 ; FF
050D: nop                 ; 00
050E: nop                 ; 00
050F: nop                 ; 00
0510: nop                 ; 00
0511: nop                 ; 00
0512: nop                 ; FF
0513: nop                 ; FF
0514: nop                 ; FF
0515: nop                 ; FF
0516: nop                 ; FF
0517: nop                 ; 00
0518: nop                 ; 00
0519: nop                 ; 00
051A: nop                 ; 00
051B: nop                 ; 00
051C: nop                 ; FF
051D: nop                 ; FF
051E: nop                 ; FF
051F: nop                 ; FF
0520: nop                 ; FF
0521: nop                 ; 00
0522: nop                 ; 00
0523: nop                 ; 00
0524: nop                 ; 00
0525: nop                 ; 00
0526: nop                 ; FF
0527: nop                 ; FF
0528: nop                 ; FF
0529: nop                 ; FF
052A: nop                 ; FF
052B: nop                 ; 00
052C: nop                 ; 00
052D: nop                 ; 00
052E: nop                 ; 00
052F: nop                 ; 00
0530: nop                 ; FF
0531: nop                 ; FF
0532: nop                 ; FF
0533: nop                 ; FF
0534: nop                 ; FF
0535: nop                 ; 00
0536: nop                 ; 00
0537: nop                 ; 00
0538: nop                 ; 00
0539: nop                 ; 00
053A: nop                 ; FF
053B: nop                 ; FF
053C: nop                 ; FF
053D: nop                 ; FF
053E: nop                 ; FF
053F: nop                 ; 00
0540: nop                 ; 00
0541: nop                 ; 00
0542: nop                 ; 00
0543: nop                 ; 00
0544: nop                 ; FF
0545: nop                 ; FF
0546: nop                 ; FF
0547: nop                 ; FF
0548: nop                 ; FF
0549: nop                 ; 00
054A: nop                 ; 00
054B: nop                 ; 00
054C: nop                 ; 00
054D: nop                 ; 00
054E: nop                 ; FF
054F: nop                 ; FF
0550: nop                 ; FF
0551: nop                 ; FF
0552: nop                 ; FF
0553: nop                 ; 00
0554: nop                 ; 00
0555: nop                 ; 00
0556: nop                 ; 00
0557: nop                 ; 00
0558: nop                 ; FF
0559: nop                 ; FF
055A: nop                 ; FF
055B: nop                 ; FF
055C: nop                 ; FF
055D: nop                 ; 00
055E: nop                 ; 00
055F: nop                 ; 00
0560: nop                 ; 00
0561: nop                 ; 00
0562: nop                 ; FF
0563: nop                 ; FF
0564: nop                 ; FF
0565: nop                 ; FF
0566: nop                 ; FF
0567: nop                 ; 00
0568: nop                 ; 00
0569: nop                 ; 00
056A: nop                 ; 00
056B: nop                 ; 00
056C: nop                 ; FF
056D: nop                 ; FF
056E: nop                 ; FF
056F: nop                 ; FF
0570: nop                 ; FF
0571: nop                 ; 00
0572: nop                 ; 00
0573: nop                 ; 00
0574: nop                 ; 00
0575: nop                 ; 00
0576: nop                 ; FF
0577: nop                 ; FF
0578: nop                 ; FF
0579: nop                 ; FF
057A: nop                 ; FF
057B: nop                 ; 00
057C: nop                 ; 00
057D: nop                 ; 00
057E: nop                 ; 00
057F: nop                 ; 00
0580: nop                 ; FF
0581: nop                 ; FF
0582: nop                 ; FF
0583: nop                 ; FF
0584: nop                 ; FF
0585: nop                 ; 00
0586: nop                 ; 00
0587: nop                 ; 00
0588: nop                 ; 00
0589: nop                 ; 00
058A: nop                 ; FF
058B: nop                 ; FF
058C: nop                 ; FF
058D: nop                 ; FF
058E: nop                 ; FF
058F: nop                 ; 00
0590: nop                 ; 00
0591: nop                 ; 00
0592: nop                 ; 00
0593: nop                 ; 00
0594: nop                 ; FF
0595: nop                 ; FF
0596: nop                 ; FF
0597: nop                 ; FF
0598: nop                 ; FF
0599: nop                 ; 00
059A: nop                 ; 00
059B: nop                 ; 00
059C: nop                 ; 00
059D: nop                 ; 00
059E: nop                 ; FF
059F: nop                 ; FF
05A0: nop                 ; FF
05A1: nop                 ; FF
05A2: nop                 ; FF
05A3: nop                 ; 00
05A4: nop                 ; 00
05A5: nop                 ; 00
05A6: nop                 ; 00
05A7: nop                 ; 00
05A8: nop                 ; FF
05A9: nop                 ; FF
05AA: nop                 ; FF
05AB: nop                 ; FF
05AC: nop                 ; FF
05AD: nop                 ; 00
05AE: nop                 ; 00
05AF: nop                 ; 00
05B0: nop                 ; 00
05B1: nop                 ; 00
05B2: nop                 ; FF
05B3: nop                 ; FF
05B4: nop                 ; FF
05B5: nop                 ; FF
05B6: nop                 ; FF
05B7: nop                 ; 00
05B8: nop                 ; 00
05B9: nop                 ; 00
05BA: nop                 ; 00
05BB: nop                 ; 00
05BC: nop                 ; FF
05BD: nop                 ; FF
05BE: nop                 ; FF
05BF: nop                 ; FF
05C0: nop                 ; FF
05C1: nop                 ; 00
05C2: nop                 ; 00
05C3: nop                 ; 00
05C4: nop                 ; 00
05C5: nop                 ; 00
05C6: nop                 ; FF
05C7: nop                 ; FF
05C8: nop                 ; FF
05C9: nop                 ; FF
05CA: nop                 ; FF
05CB: nop                 ; 00
05CC: nop                 ; 00
05CD: nop                 ; 00
05CE: nop                 ; 00
05CF: nop                 ; 00
05D0: nop                 ; FF
05D1: nop                 ; FF
05D2: nop                 ; FF
05D3: nop                 ; FF
05D4: nop                 ; FF
05D5: nop                 ; 00
05D6: nop                 ; 00
05D7: nop                 ; 00
05D8: nop                 ; 00
05D9: nop                 ; 00
05DA: nop                 ; FF
05DB: nop                 ; FF
05DC: nop                 ; FF
05DD: nop                 ; FF
05DE: nop                 ; FF
05DF: nop                 ; 00
05E0: nop                 ; 00
05E1: nop                 ; 00
05E2: nop                 ; 00
05E3: nop                 ; 00
05E4: nop                 ; FF
05E5: nop                 ; FF
05E6: nop                 ; FF
05E7: nop                 ; FF
05E8: nop                 ; FF
05E9: nop                 ; 00
05EA: nop                 ; 00
05EB: nop                 ; 00
05EC: nop                 ; 00
05ED: nop                 ; 00
05EE: nop                 ; FF
05EF: nop                 ; FF
05F0: nop                 ; FF
05F1: nop                 ; FF
05F2: nop                 ; FF
05F3: nop                 ; 00
05F4: nop                 ; 00
05F5: nop                 ; 00
05F6: nop                 ; 00
05F7: nop                 ; 00
05F8: nop                 ; FF
05F9: nop                 ; FF
05FA: nop                 ; FF
05FB: nop                 ; FF
05FC: nop                 ; FF
05FD: nop                 ; 00
05FE: nop                 ; 00
05FF: nop                 ; 00
0600: nop                 ; 00
0601: nop                 ; 00
0602: nop                 ; FF
0603: nop                 ; FF
0604: nop                 ; FF
0605: nop                 ; FF
0606: nop                 ; FF
0607: nop                 ; 00
0608: nop                 ; 00
0609: nop                 ; 00
060A: nop                 ; 00
060B: nop                 ; 00
060C: nop                 ; FF
060D: nop                 ; FF
060E: nop                 ; FF
060F: nop                 ; FF
0610: cmp z, a            ; 7F
0611: nop                 ; 00
0612: nop                 ; 00
0613: nop                 ; 00
0614: nop                 ; 00
0615: nop                 ; 00
0616: nop                 ; FF
0617: nop                 ; FF
0618: nop                 ; FF
0619: nop                 ; FF
061A: xor x, w            ; BF
061B: nop                 ; 00
061C: nop                 ; 00
061D: nop                 ; 00
061E: nop                 ; 00
061F: nop                 ; 00
0620: nop                 ; FF
0621: nop                 ; FF
0622: nop                 ; FF
0623: nop                 ; FF
0624: mul w, z            ; 5F
0625: nop                 ; 00
0626: nop                 ; 00
0627: nop                 ; 00
0628: nop                 ; 00
0629: nop                 ; 00
062A: nop                 ; FF
062B: nop                 ; FF
062C: nop                 ; FF
062D: nop                 ; FF
062E: add w, a            ; 2F
062F: nop                 ; 00
0630: nop                 ; 00
0631: nop                 ; 00
0632: nop                 ; 00
0633: nop                 ; 00
0634: nop                 ; FF
0635: nop                 ; FF
0636: nop                 ; FF
0637: nop                 ; FF
0638: pop y               ; 07
0639: nop                 ; 00
063A: nop                 ; 00
063B: nop                 ; 00
063C: nop                 ; 00
063D: nop                 ; 00
063E: nop                 ; FF
063F: nop                 ; FF
0640: nop                 ; FF
0641: nop                 ; FF
0642: push z              ; 03
0643: nop                 ; 00
0644: nop                 ; 00
0645: nop                 ; 00
0646: nop                 ; 00
0647: nop                 ; 00
0648: nop                 ; FF
0649: nop                 ; FF
064A: nop                 ; FF
064B: nop                 ; FF
064C: nop                 ; 00
064D: nop                 ; 00
064E: nop                 ; 00
064F: nop                 ; 00
0650: nop                 ; 00
0651: nop                 ; 00
0652: nop                 ; FF
0653: nop                 ; FF
0654: nop                 ; FF
0655: sub z, x            ; 3F
0656: nop                 ; 00
0657: nop                 ; 00
0658: nop                 ; 00
0659: nop                 ; 00
065A: nop                 ; 00
065B: nop                 ; 00
065C: nop                 ; FF
065D: nop                 ; FF
065E: nop                 ; FF
065F: load a, $0078       ; 0F 78 00
0662: nop                 ; 00
0663: nop                 ; 00
0664: nop                 ; 00
0665: nop                 ; 00
0666: nop                 ; FF
0667: nop                 ; FF
0668: nop                 ; FF
0669: cmp a, z            ; 87
066A: and w, z            ; 9D
