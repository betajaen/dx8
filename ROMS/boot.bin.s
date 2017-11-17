; DX8 Floppy Disk Image
; Origin: 0000 
; Length: 0800 
0000: nop                 ; 00
0001: load w, $6C66       ; 18 66 6C
0004: load w, $3846       ; 18 46 38
0007: load w, $0C30       ; 18 30 0C
000A: set i, $0000        ; 36 00 00
000D: nop                 ; 00
000E: nop                 ; 00
000F: add w, $3C          ; 40 3C(<)
0011: load w, $3C3C       ; 18 3C 3C
0014: add a, x            ; 38
0015: and a, y            ; 7E
0016: add a, a            ; 3C
0017: and a, y            ; 7E
0018: add a, a            ; 3C
0019: add a, a            ; 3C
001A: nop                 ; 00
001B: nop                 ; 00
001C: inc y               ; 60
001D: nop                 ; 00
001E: pop a               ; 0C
001F: add a, a            ; 3C
0020: add a, a            ; 3C
0021: add a, a            ; 3C
0022: add y, $3C          ; 3E 3C(<)
0024: add y, $7E          ; 3E 7E(~)
0026: and a, y            ; 7E
0027: add a, a            ; 3C
0028: dec x               ; 66
0029: add a, a            ; 3C
002A: inc y               ; 60
002B: dec x               ; 66
002C: push.f              ; 06
002D: inc a               ; 63
002E: dec x               ; 66
002F: add a, a            ; 3C
0030: add y, $3C          ; 3E 3C(<)
0032: add y, $3C          ; 3E 3C(<)
0034: and a, y            ; 7E
0035: dec x               ; 66
0036: dec x               ; 66
0037: inc a               ; 63
0038: dec x               ; 66
0039: dec x               ; 66
003A: and a, y            ; 7E
003B: add a, a            ; 3C
003C: push y              ; 02
003D: add a, a            ; 3C
003E: load z, i           ; 10
003F: nop                 ; 00
0040: load w, $0600       ; 18 00 06
0043: nop                 ; 00
0044: inc y               ; 60
0045: nop                 ; 00
0046: cmp a, w            ; 70
0047: nop                 ; 00
0048: push.f              ; 06
0049: load w, $0660       ; 18 60 06
004C: add a, x            ; 38
004D: nop                 ; 00
004E: nop                 ; 00
004F: nop                 ; 00
0050: nop                 ; 00
0051: nop                 ; 00
0052: nop                 ; 00
0053: nop                 ; 00
0054: load w, $0000       ; 18 00 00
0057: nop                 ; 00
0058: nop                 ; 00
0059: nop                 ; 00
005A: nop                 ; 00
005B: nop                 ; 00
005C: nop                 ; 00
005D: nop                 ; 00
005E: nop                 ; 00
005F: nop                 ; 00
0060: nop                 ; 00
0061: load w, $FE66       ; 18 66 FE
0064: cmpbit a, $66       ; 7C 66(f)
0066: dec j               ; 6C
0067: load w, $1818       ; 18 18 18
006A: store i, a          ; 1C
006B: load z, i           ; 10
006C: nop                 ; 00
006D: nop                 ; 00
006E: nop                 ; 00
006F: inc y               ; 60
0070: dec x               ; 66
0071: store i, a          ; 1C
0072: dec x               ; 66
0073: dec x               ; 66
0074: add a, a            ; 3C
0075: push.f              ; 06
0076: dec x               ; 66
0077: inc y               ; 60
0078: dec x               ; 66
0079: dec x               ; 66
007A: load w, $3018       ; 18 18 30
007D: nop                 ; 00
007E: load w, $4262       ; 18 62 42
0081: dec x               ; 66
0082: dec x               ; 66
0083: dec x               ; 66
0084: dec x               ; 66
0085: push.f              ; 06
0086: push.f              ; 06
0087: dec x               ; 66
0088: dec x               ; 66
0089: load w, $3660       ; 18 60 36
008C: push.f              ; 06
008D: cmp j, $6666        ; 77 66 66
0090: dec x               ; 66
0091: dec x               ; 66
0092: dec x               ; 66
0093: dec x               ; 66
0094: load w, $6666       ; 18 66 66
0097: inc a               ; 63
0098: dec x               ; 66
0099: dec x               ; 66
009A: inc y               ; 60
009B: pop a               ; 0C
009C: push.f              ; 06
009D: return              ; 30
009E: add a, x            ; 38
009F: nop                 ; 00
00A0: return              ; 30
00A1: nop                 ; 00
00A2: push.f              ; 06
00A3: nop                 ; 00
00A4: inc y               ; 60
00A5: nop                 ; 00
00A6: load w, $0600       ; 18 00 06
00A9: nop                 ; 00
00AA: nop                 ; 00
00AB: push.f              ; 06
00AC: return              ; 30
00AD: nop                 ; 00
00AE: nop                 ; 00
00AF: nop                 ; 00
00B0: nop                 ; 00
00B1: nop                 ; 00
00B2: nop                 ; 00
00B3: nop                 ; 00
00B4: load w, $0000       ; 18 00 00
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
00C1: load w, $6C66       ; 18 66 6C
00C4: push.f              ; 06
00C5: return              ; 30
00C6: dec j               ; 6C
00C7: load w, $300C       ; 18 0C 30
00CA: and a, z            ; 7F
00CB: load z, i           ; 10
00CC: nop                 ; 00
00CD: nop                 ; 00
00CE: nop                 ; 00
00CF: return              ; 30
00D0: dec x               ; 66
00D1: load w, $6060       ; 18 60 60
00D4: set i, $063E        ; 36 3E 06
00D7: return              ; 30
00D8: dec x               ; 66
00D9: dec x               ; 66
00DA: load w, $1818       ; 18 18 18
00DD: and a, y            ; 7E
00DE: return              ; 30
00DF: inc y               ; 60
00E0: xor y, $66          ; 99 66(f)
00E2: dec x               ; 66
00E3: push.f              ; 06
00E4: dec x               ; 66
00E5: push.f              ; 06
00E6: push.f              ; 06
00E7: push.f              ; 06
00E8: dec x               ; 66
00E9: load w, $1E60       ; 18 60 1E
00EC: push.f              ; 06
00ED: and a, z            ; 7F
00EE: cmp a, y            ; 6E
00EF: dec x               ; 66
00F0: dec x               ; 66
00F1: dec x               ; 66
00F2: dec x               ; 66
00F3: push.f              ; 06
00F4: load w, $6666       ; 18 66 66
00F7: inc a               ; 63
00F8: add a, a            ; 3C
00F9: dec x               ; 66
00FA: return              ; 30
00FB: pop a               ; 0C
00FC: pop a               ; 0C
00FD: return              ; 30
00FE: dec j               ; 6C
00FF: nop                 ; 00
0100: nop                 ; 00
0101: add a, a            ; 3C
0102: add y, $3C          ; 3E 3C(<)
0104: cmpbit a, $3C       ; 7C 3C(<)
0106: add a, a            ; 3C
0107: cmpbit a, $3E       ; 7C 3E(>)
0109: store i, a          ; 1C
010A: cmp a, w            ; 70
010B: dec x               ; 66
010C: return              ; 30
010D: set j, $3C3E        ; 37 3E 3C
0110: add y, $7C          ; 3E 7C(|)
0112: cmp i, $3C7C        ; 76 7C 3C
0115: dec x               ; 66
0116: dec x               ; 66
0117: dec i               ; 6B
0118: dec x               ; 66
0119: dec x               ; 66
011A: and a, y            ; 7E
011B: nop                 ; 00
011C: nop                 ; 00
011D: nop                 ; 00
011E: nop                 ; 00
011F: nop                 ; 00
0120: nop                 ; 00
0121: load w, $6C00       ; 18 00 6C
0124: add a, a            ; 3C
0125: load w, $0038       ; 18 38 00
0128: pop a               ; 0C
0129: return              ; 30
012A: store i, a          ; 1C
012B: cmpbit a, $00       ; 7C 00
012D: and a, y            ; 7E
012E: nop                 ; 00
012F: load w, $1866       ; 18 66 18
0132: add a, x            ; 38
0133: add a, x            ; 38
0134: set i, $3E60        ; 36 60 3E
0137: load w, $7C3C       ; 18 3C 7C
013A: nop                 ; 00
013B: nop                 ; 00
013C: pop a               ; 0C
013D: nop                 ; 00
013E: inc y               ; 60
013F: add a, x            ; 38
0140: shr w, $7E          ; A5 7E(~)
0142: add y, $06          ; 3E 06
0144: dec x               ; 66
0145: store i, z          ; 1E
0146: store i, z          ; 1E
0147: cmp i, $187E        ; 76 7E 18
014A: inc y               ; 60
014B: pop.r               ; 0E
014C: push.f              ; 06
014D: dec i               ; 6B
014E: and a, y            ; 7E
014F: dec x               ; 66
0150: add y, $66          ; 3E 66(f)
0152: add y, $3C          ; 3E 3C(<)
0154: load w, $6666       ; 18 66 66
0157: dec i               ; 6B
0158: load w, $183C       ; 18 3C 18
015B: pop a               ; 0C
015C: load w, $4430       ; 18 30 44
015F: nop                 ; 00
0160: nop                 ; 00
0161: inc y               ; 60
0162: dec x               ; 66
0163: dec x               ; 66
0164: dec x               ; 66
0165: dec x               ; 66
0166: load w, $6666       ; 18 66 66
0169: load w, $3660       ; 18 60 36
016C: return              ; 30
016D: and a, z            ; 7F
016E: dec x               ; 66
016F: dec x               ; 66
0170: dec x               ; 66
0171: dec x               ; 66
0172: pop.r               ; 0E
0173: push.f              ; 06
0174: load w, $6666       ; 18 66 66
0177: dec i               ; 6B
0178: add a, a            ; 3C
0179: dec x               ; 66
017A: return              ; 30
017B: nop                 ; 00
017C: nop                 ; 00
017D: nop                 ; 00
017E: nop                 ; 00
017F: nop                 ; 00
0180: nop                 ; 00
0181: load w, $6C00       ; 18 00 6C
0184: inc y               ; 60
0185: pop a               ; 0C
0186: nop                 ; EC
0187: nop                 ; 00
0188: pop a               ; 0C
0189: return              ; 30
018A: set i, $1810        ; 36 10 18
018D: nop                 ; 00
018E: nop                 ; 00
018F: pop a               ; 0C
0190: dec x               ; 66
0191: load w, $600C       ; 18 0C 60
0194: and a, y            ; 7E
0195: inc y               ; 60
0196: dec x               ; 66
0197: load w, $6066       ; 18 66 60
019A: load w, $1818       ; 18 18 18
019D: and a, y            ; 7E
019E: return              ; 30
019F: load w, $66A5       ; 18 A5 66
01A2: dec x               ; 66
01A3: push.f              ; 06
01A4: dec x               ; 66
01A5: push.f              ; 06
01A6: push.f              ; 06
01A7: dec x               ; 66
01A8: dec x               ; 66
01A9: load w, $1E60       ; 18 60 1E
01AC: push.f              ; 06
01AD: inc a               ; 63
01AE: cmp i, $0666        ; 76 66 06
01B1: dec x               ; 66
01B2: store i, z          ; 1E
01B3: inc y               ; 60
01B4: load w, $6666       ; 18 66 66
01B7: and a, z            ; 7F
01B8: add a, a            ; 3C
01B9: load w, $0C0C       ; 18 0C 0C
01BC: return              ; 30
01BD: return              ; 30
01BE: nop                 ; 00
01BF: nop                 ; 00
01C0: nop                 ; 00
01C1: cmpbit a, $66       ; 7C 66(f)
01C3: push.f              ; 06
01C4: dec x               ; 66
01C5: add y, $18          ; 3E 18
01C7: dec x               ; 66
01C8: dec x               ; 66
01C9: load w, $1E60       ; 18 60 1E
01CC: return              ; 30
01CD: dec i               ; 6B
01CE: dec x               ; 66
01CF: dec x               ; 66
01D0: dec x               ; 66
01D1: dec x               ; 66
01D2: push.f              ; 06
01D3: add a, a            ; 3C
01D4: load w, $6666       ; 18 66 66
01D7: and a, z            ; 7F
01D8: load w, $1866       ; 18 66 18
01DB: nop                 ; 00
01DC: nop                 ; 00
01DD: nop                 ; 00
01DE: nop                 ; 00
01DF: nop                 ; 00
01E0: nop                 ; 00
01E1: nop                 ; 00
01E2: nop                 ; 00
01E3: nop                 ; FE
01E4: add y, $66          ; 3E 66(f)
01E6: dec x               ; 66
01E7: nop                 ; 00
01E8: load w, $0018       ; 18 18 00
01EB: load z, i           ; 10
01EC: load w, $1800       ; 18 00 18
01EF: push.f              ; 06
01F0: dec x               ; 66
01F1: load w, $6606       ; 18 06 66
01F4: return              ; 30
01F5: dec x               ; 66
01F6: dec x               ; 66
01F7: load w, $6666       ; 18 66 66
01FA: load w, $3018       ; 18 18 30
01FD: nop                 ; 00
01FE: load w, $7900       ; 18 00 79
0201: dec x               ; 66
0202: dec x               ; 66
0203: dec x               ; 66
0204: dec x               ; 66
0205: push.f              ; 06
0206: push.f              ; 06
0207: dec x               ; 66
0208: dec x               ; 66
0209: load w, $3666       ; 18 66 36
020C: push.f              ; 06
020D: inc a               ; 63
020E: dec x               ; 66
020F: dec x               ; 66
0210: push.f              ; 06
0211: dec x               ; 66
0212: set i, $1866        ; 36 66 18
0215: dec x               ; 66
0216: add a, a            ; 3C
0217: cmp j, $1866        ; 77 66 18
021A: push.f              ; 06
021B: pop a               ; 0C
021C: inc y               ; 60
021D: return              ; 30
021E: nop                 ; 00
021F: nop                 ; 00
0220: nop                 ; 00
0221: dec x               ; 66
0222: dec x               ; 66
0223: dec x               ; 66
0224: dec x               ; 66
0225: push.f              ; 06
0226: load w, $667C       ; 18 7C 66
0229: load w, $3660       ; 18 60 36
022C: return              ; 30
022D: dec i               ; 6B
022E: dec x               ; 66
022F: dec x               ; 66
0230: dec x               ; 66
0231: dec x               ; 66
0232: push.f              ; 06
0233: inc y               ; 60
0234: load w, $3C66       ; 18 66 3C
0237: add y, $3C          ; 3E 3C(<)
0239: cmpbit a, $0C       ; 7C 0C
023B: nop                 ; 00
023C: nop                 ; 00
023D: nop                 ; 00
023E: nop                 ; 00
023F: nop                 ; 00
0240: nop                 ; 00
0241: load w, $6C00       ; 18 00 6C
0244: load w, $FC62       ; 18 62 FC
0247: nop                 ; 00
0248: return              ; 30
0249: pop a               ; 0C
024A: nop                 ; 00
024B: nop                 ; 00
024C: pop a               ; 0C
024D: nop                 ; 00
024E: load w, $3C02       ; 18 02 3C
0251: and a, y            ; 7E
0252: and a, y            ; 7E
0253: add a, a            ; 3C
0254: cmpbit x, $3C       ; 78 3C(<)
0256: add a, a            ; 3C
0257: load w, $3C3C       ; 18 3C 3C
025A: nop                 ; 00
025B: pop x               ; 08
025C: inc y               ; 60
025D: nop                 ; 00
025E: pop a               ; 0C
025F: load w, $6602       ; 18 02 66
0262: add y, $3C          ; 3E 3C(<)
0264: add y, $7E          ; 3E 7E(~)
0266: push.f              ; 06
0267: add a, a            ; 3C
0268: dec x               ; 66
0269: add a, a            ; 3C
026A: add a, a            ; 3C
026B: dec x               ; 66
026C: and a, y            ; 7E
026D: inc a               ; 63
026E: dec x               ; 66
026F: add a, a            ; 3C
0270: push.f              ; 06
0271: add a, a            ; 3C
0272: dec x               ; 66
0273: add a, a            ; 3C
0274: load w, $183C       ; 18 3C 18
0277: inc a               ; 63
0278: dec x               ; 66
0279: load w, $3C7E       ; 18 7E 3C
027C: add w, $3C          ; 40 3C(<)
027E: nop                 ; 00
027F: nop                 ; 00
0280: nop                 ; 00
0281: cmpbit a, $3E       ; 7C 3E(>)
0283: add a, a            ; 3C
0284: cmpbit a, $7C       ; 7C 7C(|)
0286: load w, $6660       ; 18 60 66
0289: add a, a            ; 3C
028A: dec x               ; 66
028B: dec x               ; 66
028C: cmpbit x, $6B       ; 78 6B(k)
028E: dec x               ; 66
028F: add a, a            ; 3C
0290: add y, $7C          ; 3E 7C(|)
0292: push.f              ; 06
0293: add y, $30          ; 3E 30(0)
0295: cmpbit a, $18       ; 7C 18
0297: set i, $6066        ; 36 66 60
029A: and a, y            ; 7E
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
02C0: add a, a            ; 3C
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
02D1: inc y               ; 60
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
02DF: nop                 ; FF
02E0: nop                 ; 00
02E1: nop                 ; 00
02E2: nop                 ; 00
02E3: nop                 ; 00
02E4: nop                 ; 00
02E5: nop                 ; 00
02E6: nop                 ; 00
02E7: add a, a            ; 3C
02E8: nop                 ; 00
02E9: nop                 ; 00
02EA: add a, a            ; 3C
02EB: nop                 ; 00
02EC: nop                 ; 00
02ED: nop                 ; 00
02EE: nop                 ; 00
02EF: nop                 ; 00
02F0: push.f              ; 06
02F1: inc y               ; 60
02F2: nop                 ; 00
02F3: nop                 ; 00
02F4: nop                 ; 00
02F5: nop                 ; 00
02F6: nop                 ; 00
02F7: nop                 ; 00
02F8: nop                 ; 00
02F9: add a, a            ; 3C
02FA: nop                 ; 00
02FB: nop                 ; 00
02FC: nop                 ; 00
02FD: nop                 ; 00
02FE: nop                 ; 00
02FF: nop                 ; 00
0300: adc y, $65          ; 48 65(e)
0302: dec j               ; 6C
0303: dec j               ; 6C
0304: cmp a, z            ; 6F
0305: store j, x          ; 20
0306: mul a, z            ; 57
0307: cmp a, z            ; 6F
0308: cmp y, $6C          ; 72 6C(l)
030A: inc i               ; 64
030B: store j, y          ; 21
030C: nop                 ; 00
030D: nop                 ; 00
030E: add a, y            ; 39
030F: push z              ; 03
0310: adc a, a            ; 46
0311: push z              ; 03
0312: jmp $04B8           ; B1 B8 04
0315: load x, $002C       ; 15 2C 00
0318: not x               ; 8F
0319: and x, $E0          ; 81 E0
031B: shr x, $02          ; A2 02
031D: set a, $3B          ; 35 3B(;)
031F: add a, x            ; 38
0320: store $001D, a      ; 26 1D 00
0323: set a, $3F          ; 35 3F(?)
0325: add a, x            ; 38
0326: store $001E, a      ; 26 1E 00
0329: set a, $42          ; 35 42(B)
032B: add a, x            ; 38
032C: store $001F, a      ; 26 1F 00
032F: resume              ; C7
0330: nop                 ; 00
0331: resume              ; C7
0332: load a, $0034       ; 19 34 00
0335: store $7B0C, a      ; 26 0C 7B
0338: resume              ; C7
0339: push a              ; 05
033A: load a, j           ; 12
033B: store i, a          ; 1C
033C: pop a               ; 0C
033D: dec a               ; 6A
033E: rjmp.z $07          ; C3 07
0340: push a              ; 05
0341: inc i               ; 64
0342: inc j               ; 65
0343: rjmp $F7            ; B9 F7
0345: return              ; 30
0346: store i, a          ; 1C
0347: inc i               ; 64
0348: dec j               ; 6C
0349: rjmp.nz $FD         ; C5 FD
034B: return              ; 30
034C: set a, $44          ; 35 44(D)
034E: store $8499, a      ; 26 99 84
0351: set a, $58          ; 35 58(X)
0353: store $849A, a      ; 26 9A 84
0356: set a, $38          ; 35 38(8)
0358: store $849B, a      ; 26 9B 84
035B: set a, $2F          ; 35 2F(/)
035D: store $849D, a      ; 26 9D 84
0360: set a, $2F          ; 35 2F(/)
0362: store $849E, a      ; 26 9E 84
0365: set a, $2F          ; 35 2F(/)
0367: store $849F, a      ; 26 9F 84
036A: return              ; 30
036B: load x, $002F       ; 15 2F 00
036E: cmpbit x, $40       ; 78 40(@)
0370: jmp.z $0376         ; C2 76 03
0373: jmp $0384           ; B1 84 03
0376: set x, $20          ; 31 20
0378: store $849D, x      ; 22 9D 84
037B: store $849E, x      ; 22 9E 84
037E: store $849F, x      ; 22 9F 84
0381: jmp $038F           ; B1 8F 03
0384: set x, $2F          ; 31 2F(/)
0386: store $849D, x      ; 22 9D 84
0389: store $849E, x      ; 22 9E 84
038C: store $849F, x      ; 22 9F 84
038F: return              ; 30
0390: set a, $01          ; 35 01
0392: store $7B0D, a      ; 26 0D 7B
0395: set a, $20          ; 35 20
0397: store $8269, a      ; 26 69 82
039A: set a, $20          ; 35 20
039C: store $826A, a      ; 26 6A 82
039F: set a, $20          ; 35 20
03A1: store $826B, a      ; 26 6B 82
03A4: set a, $20          ; 35 20
03A6: store $826C, a      ; 26 6C 82
03A9: set a, $20          ; 35 20
03AB: store $826D, a      ; 26 6D 82
03AE: set a, $20          ; 35 20
03B0: store $826E, a      ; 26 6E 82
03B3: set a, $20          ; 35 20
03B5: store $8291, a      ; 26 91 82
03B8: set a, $20          ; 35 20
03BA: store $8292, a      ; 26 92 82
03BD: set a, $20          ; 35 20
03BF: store $8293, a      ; 26 93 82
03C2: set a, $20          ; 35 20
03C4: store $8294, a      ; 26 94 82
03C7: set a, $20          ; 35 20
03C9: store $8295, a      ; 26 95 82
03CC: set a, $20          ; 35 20
03CE: store $8296, a      ; 26 96 82
03D1: set a, $01          ; 35 01
03D3: store $0037, a      ; 26 37 00
03D6: set a, $00          ; 35 00
03D8: store $0038, a      ; 26 38 00
03DB: set a, $80          ; 35 80
03DD: store $0039, a      ; 26 39 00
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
0401: return              ; 30
0402: set a, $00          ; 35 00
0404: store $7B0D, a      ; 26 0D 7B
0407: set a, $49          ; 35 49(I)
0409: store $8269, a      ; 26 69 82
040C: set a, $4E          ; 35 4E(N)
040E: store $826A, a      ; 26 6A 82
0411: set a, $53          ; 35 53(S)
0413: store $826B, a      ; 26 6B 82
0416: set a, $45          ; 35 45(E)
0418: store $826C, a      ; 26 6C 82
041B: set a, $52          ; 35 52(R)
041D: store $826D, a      ; 26 6D 82
0420: set a, $54          ; 35 54(T)
0422: store $826E, a      ; 26 6E 82
0425: set a, $46          ; 35 46(F)
0427: store $8291, a      ; 26 91 82
042A: set a, $4C          ; 35 4C(L)
042C: store $8292, a      ; 26 92 82
042F: set a, $4F          ; 35 4F(O)
0431: store $8293, a      ; 26 93 82
0434: set a, $50          ; 35 50(P)
0436: store $8294, a      ; 26 94 82
0439: set a, $50          ; 35 50(P)
043B: store $8295, a      ; 26 95 82
043E: set a, $59          ; 35 59(Y)
0440: store $8296, a      ; 26 96 82
0443: return              ; 30
0444: load a, $7B0C       ; 19 0C 7B
0447: cmpbit a, $01       ; 7C 01
0449: call.nz $0390       ; 2F 90 03
044C: cmpbit a, $02       ; 7C 02
044E: call.nz $0402       ; 2F 02 04
0451: set a, $00          ; 35 00
0453: store $7B0C, a      ; 26 0C 7B
0456: return              ; 30
0457: set i, $0312        ; 36 12 03
045A: store $0312, i      ; 27
045B: nop                 ; 00
045C: nop                 ; 00
045D: set i, $0315        ; 36 15 03
0460: store $0315, i      ; 27
0461: push y              ; 02
0462: nop                 ; 00
0463: set i, $0330        ; 36 30 03
0466: store $0330, i      ; 27
0467: push w              ; 04
0468: nop                 ; 00
0469: set i, $0332        ; 36 32 03
046C: store $0332, i      ; 27
046D: push.f              ; 06
046E: nop                 ; 00
046F: set a, $00          ; 35 00
0471: store $0010, a      ; 26 10 00
0474: set a, $00          ; 35 00
0476: store $0011, a      ; 26 11 00
0479: set a, $00          ; 35 00
047B: store $0012, a      ; 26 12 00
047E: set a, $00          ; 35 00
0480: store $0013, a      ; 26 13 00
0483: set a, $00          ; 35 00
0485: store $0014, a      ; 26 14 00
0488: set a, $00          ; 35 00
048A: store $0015, a      ; 26 15 00
048D: set a, $00          ; 35 00
048F: store $0016, a      ; 26 16 00
0492: set a, $00          ; 35 00
0494: store $0017, a      ; 26 17 00
0497: set i, $7800        ; 36 00 78
049A: store $7800, i      ; 27
049B: return              ; 30
049C: nop                 ; 00
049D: set a, $00          ; 35 00
049F: store $0019, a      ; 26 19 00
04A2: set a, $00          ; 35 00
04A4: store $001A, a      ; 26 1A 00
04A7: set a, $00          ; 35 00
04A9: store $001B, a      ; 26 1B 00
04AC: set a, $00          ; 35 00
04AE: store $001C, a      ; 26 1C 00
04B1: set a, $04          ; 35 04
04B3: store $0018, a      ; 26 18 00
04B6: int $FE             ; C6 FE
04B8: set i, $8000        ; 36 00 80
04BB: set j, $7800        ; 37 00 78
04BE: set a, $20          ; 35 20
04C0: call $0346          ; 29 46 03
04C3: set i, $8000        ; 36 00 80
04C6: set j, $7B00        ; 37 00 7B
04C9: set a, $0C          ; 35 0C
04CB: call $0339          ; 29 39 03
04CE: call $034C          ; 29 4C 03
04D1: call $0402          ; 29 02 04
04D4: call $036B          ; 29 6B 03
04D7: load a, $7B0C       ; 19 0C 7B
04DA: cmp a, $00          ; 75 00
04DC: call.neq $0444      ; 2B 44 04
04DF: jmp $04D4           ; B1 D4 04
04E2: nop                 ; 00
04E3: set a, $FF          ; 35 FF
04E5: set i, $7800        ; 36 00 78
04E8: set j, $F800        ; 37 00 F8
04EB: call $0339          ; 29 39 03
04EE: set a, $FF          ; 35 FF
04F0: set i, $78FF        ; 36 FF 78
04F3: set j, $F8FF        ; 37 FF F8
04F6: call $0339          ; 29 39 03
04F9: set a, $FF          ; 35 FF
04FB: set i, $79FE        ; 36 FE 79
04FE: set j, $F9FE        ; 37 FE F9
0501: call $0339          ; 29 39 03
0504: set a, $FF          ; 35 FF
0506: set i, $7AFD        ; 36 FD 7A
0509: set j, $FAFD        ; 37 FD FA
050C: call $0339          ; 29 39 03
050F: set a, $FF          ; 35 FF
0511: set i, $7BFC        ; 36 FC 7B
0514: set j, $FBFC        ; 37 FC FB
0517: call $0339          ; 29 39 03
051A: offset $7800        ; CA 00 78
051D: jmp $0457           ; B1 57 04
0520: nop                 ; CD
0521: nop                 ; CD
0522: nop                 ; CD
0523: nop                 ; CD
0524: nop                 ; CD
0525: nop                 ; CD
0526: nop                 ; CD
0527: nop                 ; CD
0528: nop                 ; CD
0529: nop                 ; CD
052A: nop                 ; CD
052B: nop                 ; CD
052C: nop                 ; CD
052D: nop                 ; CD
052E: nop                 ; CD
052F: nop                 ; CD
0530: nop                 ; CD
0531: nop                 ; CD
0532: nop                 ; CD
0533: nop                 ; CD
0534: nop                 ; CD
0535: nop                 ; CD
0536: nop                 ; CD
0537: nop                 ; CD
0538: nop                 ; CD
0539: nop                 ; CD
053A: nop                 ; CD
053B: nop                 ; CD
053C: nop                 ; CD
053D: nop                 ; CD
053E: nop                 ; CD
053F: nop                 ; CD
0540: nop                 ; CD
0541: nop                 ; CD
0542: nop                 ; CD
0543: nop                 ; CD
0544: nop                 ; CD
0545: nop                 ; CD
0546: nop                 ; CD
0547: nop                 ; CD
0548: nop                 ; CD
0549: nop                 ; CD
054A: nop                 ; CD
054B: nop                 ; CD
054C: nop                 ; CD
054D: nop                 ; CD
054E: nop                 ; CD
054F: nop                 ; CD
0550: nop                 ; CD
0551: nop                 ; CD
0552: nop                 ; CD
0553: nop                 ; CD
0554: nop                 ; CD
0555: nop                 ; CD
0556: nop                 ; CD
0557: nop                 ; CD
0558: nop                 ; CD
0559: nop                 ; CD
055A: nop                 ; CD
055B: nop                 ; CD
055C: nop                 ; CD
055D: nop                 ; CD
055E: nop                 ; CD
055F: nop                 ; CD
0560: nop                 ; CD
0561: nop                 ; CD
0562: nop                 ; CD
0563: nop                 ; CD
0564: nop                 ; CD
0565: nop                 ; CD
0566: nop                 ; CD
0567: nop                 ; CD
0568: nop                 ; CD
0569: nop                 ; CD
056A: nop                 ; CD
056B: nop                 ; CD
056C: nop                 ; CD
056D: nop                 ; CD
056E: nop                 ; CD
056F: nop                 ; CD
0570: nop                 ; CD
0571: nop                 ; CD
0572: nop                 ; CD
0573: nop                 ; CD
0574: nop                 ; CD
0575: nop                 ; CD
0576: nop                 ; CD
0577: nop                 ; CD
0578: nop                 ; CD
0579: nop                 ; CD
057A: nop                 ; CD
057B: nop                 ; CD
057C: nop                 ; CD
057D: nop                 ; CD
057E: nop                 ; CD
057F: nop                 ; CD
0580: nop                 ; CD
0581: nop                 ; CD
0582: nop                 ; CD
0583: nop                 ; CD
0584: nop                 ; CD
0585: nop                 ; CD
0586: nop                 ; CD
0587: nop                 ; CD
0588: nop                 ; CD
0589: nop                 ; CD
058A: nop                 ; CD
058B: nop                 ; CD
058C: nop                 ; CD
058D: nop                 ; CD
058E: nop                 ; CD
058F: nop                 ; CD
0590: nop                 ; CD
0591: nop                 ; CD
0592: nop                 ; CD
0593: nop                 ; CD
0594: nop                 ; CD
0595: nop                 ; CD
0596: nop                 ; CD
0597: nop                 ; CD
0598: nop                 ; CD
0599: nop                 ; CD
059A: nop                 ; CD
059B: nop                 ; CD
059C: nop                 ; CD
059D: nop                 ; CD
059E: nop                 ; CD
059F: nop                 ; CD
05A0: nop                 ; CD
05A1: nop                 ; CD
05A2: nop                 ; CD
05A3: nop                 ; CD
05A4: nop                 ; CD
05A5: nop                 ; CD
05A6: nop                 ; CD
05A7: nop                 ; CD
05A8: nop                 ; CD
05A9: nop                 ; CD
05AA: nop                 ; CD
05AB: nop                 ; CD
05AC: nop                 ; CD
05AD: nop                 ; CD
05AE: nop                 ; CD
05AF: nop                 ; CD
05B0: nop                 ; CD
05B1: nop                 ; CD
05B2: nop                 ; CD
05B3: nop                 ; CD
05B4: nop                 ; CD
05B5: nop                 ; CD
05B6: nop                 ; CD
05B7: nop                 ; CD
05B8: nop                 ; CD
05B9: nop                 ; CD
05BA: nop                 ; CD
05BB: nop                 ; CD
05BC: nop                 ; CD
05BD: nop                 ; CD
05BE: nop                 ; CD
05BF: nop                 ; CD
05C0: nop                 ; CD
05C1: nop                 ; CD
05C2: nop                 ; CD
05C3: nop                 ; CD
05C4: nop                 ; CD
05C5: nop                 ; CD
05C6: nop                 ; CD
05C7: nop                 ; CD
05C8: nop                 ; CD
05C9: nop                 ; CD
05CA: nop                 ; CD
05CB: nop                 ; CD
05CC: nop                 ; CD
05CD: nop                 ; CD
05CE: nop                 ; CD
05CF: nop                 ; CD
05D0: nop                 ; CD
05D1: nop                 ; CD
05D2: nop                 ; CD
05D3: nop                 ; CD
05D4: nop                 ; CD
05D5: nop                 ; CD
05D6: nop                 ; CD
05D7: nop                 ; CD
05D8: nop                 ; CD
05D9: nop                 ; CD
05DA: nop                 ; CD
05DB: nop                 ; CD
05DC: nop                 ; CD
05DD: nop                 ; CD
05DE: nop                 ; CD
05DF: nop                 ; CD
05E0: nop                 ; CD
05E1: nop                 ; CD
05E2: nop                 ; CD
05E3: nop                 ; CD
05E4: nop                 ; CD
05E5: nop                 ; CD
05E6: nop                 ; CD
05E7: nop                 ; CD
05E8: nop                 ; CD
05E9: nop                 ; CD
05EA: nop                 ; CD
05EB: nop                 ; CD
05EC: nop                 ; CD
05ED: nop                 ; CD
05EE: nop                 ; CD
05EF: nop                 ; CD
05F0: nop                 ; CD
05F1: nop                 ; CD
05F2: nop                 ; CD
05F3: nop                 ; CD
05F4: nop                 ; CD
05F5: nop                 ; CD
05F6: nop                 ; CD
05F7: nop                 ; CD
05F8: nop                 ; CD
05F9: nop                 ; CD
05FA: nop                 ; CD
05FB: nop                 ; CD
05FC: nop                 ; CD
05FD: nop                 ; CD
05FE: nop                 ; CD
05FF: nop                 ; CD
0600: nop                 ; CD
0601: nop                 ; CD
0602: nop                 ; CD
0603: nop                 ; CD
0604: nop                 ; CD
0605: nop                 ; CD
0606: nop                 ; CD
0607: nop                 ; CD
0608: nop                 ; CD
0609: nop                 ; CD
060A: nop                 ; CD
060B: nop                 ; CD
060C: nop                 ; CD
060D: nop                 ; CD
060E: nop                 ; CD
060F: nop                 ; CD
0610: nop                 ; CD
0611: nop                 ; CD
0612: nop                 ; CD
0613: nop                 ; CD
0614: nop                 ; CD
0615: nop                 ; CD
0616: nop                 ; CD
0617: nop                 ; CD
0618: nop                 ; CD
0619: nop                 ; CD
061A: nop                 ; CD
061B: nop                 ; CD
061C: nop                 ; CD
061D: nop                 ; CD
061E: nop                 ; CD
061F: nop                 ; CD
0620: nop                 ; CD
0621: nop                 ; CD
0622: nop                 ; CD
0623: nop                 ; CD
0624: nop                 ; CD
0625: nop                 ; CD
0626: nop                 ; CD
0627: nop                 ; CD
0628: nop                 ; CD
0629: nop                 ; CD
062A: nop                 ; CD
062B: nop                 ; CD
062C: nop                 ; CD
062D: nop                 ; CD
062E: nop                 ; CD
062F: nop                 ; CD
0630: nop                 ; CD
0631: nop                 ; CD
0632: nop                 ; CD
0633: nop                 ; CD
0634: nop                 ; CD
0635: nop                 ; CD
0636: nop                 ; CD
0637: nop                 ; CD
0638: nop                 ; CD
0639: nop                 ; CD
063A: nop                 ; CD
063B: nop                 ; CD
063C: nop                 ; CD
063D: nop                 ; CD
063E: nop                 ; CD
063F: nop                 ; CD
0640: nop                 ; CD
0641: nop                 ; CD
0642: nop                 ; CD
0643: nop                 ; CD
0644: nop                 ; CD
0645: nop                 ; CD
0646: nop                 ; CD
0647: nop                 ; CD
0648: nop                 ; CD
0649: nop                 ; CD
064A: nop                 ; CD
064B: nop                 ; CD
064C: nop                 ; CD
064D: nop                 ; CD
064E: nop                 ; CD
064F: nop                 ; CD
0650: nop                 ; CD
0651: nop                 ; CD
0652: nop                 ; CD
0653: nop                 ; CD
0654: nop                 ; CD
0655: nop                 ; CD
0656: nop                 ; CD
0657: nop                 ; CD
0658: nop                 ; CD
0659: nop                 ; CD
065A: nop                 ; CD
065B: nop                 ; CD
065C: nop                 ; CD
065D: nop                 ; CD
065E: nop                 ; CD
065F: nop                 ; CD
0660: nop                 ; CD
0661: nop                 ; CD
0662: nop                 ; CD
0663: nop                 ; CD
0664: nop                 ; CD
0665: nop                 ; CD
0666: nop                 ; CD
0667: nop                 ; CD
0668: nop                 ; CD
0669: nop                 ; CD
066A: nop                 ; CD
066B: nop                 ; CD
066C: nop                 ; CD
066D: nop                 ; CD
066E: nop                 ; CD
066F: nop                 ; CD
0670: nop                 ; CD
0671: nop                 ; CD
0672: nop                 ; CD
0673: nop                 ; CD
0674: nop                 ; CD
0675: nop                 ; CD
0676: nop                 ; CD
0677: nop                 ; CD
0678: nop                 ; CD
0679: nop                 ; CD
067A: nop                 ; CD
067B: nop                 ; CD
067C: nop                 ; CD
067D: nop                 ; CD
067E: nop                 ; CD
067F: nop                 ; CD
0680: nop                 ; CD
0681: nop                 ; CD
0682: nop                 ; CD
0683: nop                 ; CD
0684: nop                 ; CD
0685: nop                 ; CD
0686: nop                 ; CD
0687: nop                 ; CD
0688: nop                 ; CD
0689: nop                 ; CD
068A: nop                 ; CD
068B: nop                 ; CD
068C: nop                 ; CD
068D: nop                 ; CD
068E: nop                 ; CD
068F: nop                 ; CD
0690: nop                 ; CD
0691: nop                 ; CD
0692: nop                 ; CD
0693: nop                 ; CD
0694: nop                 ; CD
0695: nop                 ; CD
0696: nop                 ; CD
0697: nop                 ; CD
0698: nop                 ; CD
0699: nop                 ; CD
069A: nop                 ; CD
069B: nop                 ; CD
069C: nop                 ; CD
069D: nop                 ; CD
069E: nop                 ; CD
069F: nop                 ; CD
06A0: nop                 ; CD
06A1: nop                 ; CD
06A2: nop                 ; CD
06A3: nop                 ; CD
06A4: nop                 ; CD
06A5: nop                 ; CD
06A6: nop                 ; CD
06A7: nop                 ; CD
06A8: nop                 ; CD
06A9: nop                 ; CD
06AA: nop                 ; CD
06AB: nop                 ; CD
06AC: nop                 ; CD
06AD: nop                 ; CD
06AE: nop                 ; CD
06AF: nop                 ; CD
06B0: nop                 ; CD
06B1: nop                 ; CD
06B2: nop                 ; CD
06B3: nop                 ; CD
06B4: nop                 ; CD
06B5: nop                 ; CD
06B6: nop                 ; CD
06B7: nop                 ; CD
06B8: nop                 ; CD
06B9: nop                 ; CD
06BA: nop                 ; CD
06BB: nop                 ; CD
06BC: nop                 ; CD
06BD: nop                 ; CD
06BE: nop                 ; CD
06BF: nop                 ; CD
06C0: nop                 ; CD
06C1: nop                 ; CD
06C2: nop                 ; CD
06C3: nop                 ; CD
06C4: nop                 ; CD
06C5: nop                 ; CD
06C6: nop                 ; CD
06C7: nop                 ; CD
06C8: nop                 ; CD
06C9: nop                 ; CD
06CA: nop                 ; CD
06CB: nop                 ; CD
06CC: nop                 ; CD
06CD: nop                 ; CD
06CE: nop                 ; CD
06CF: nop                 ; CD
06D0: nop                 ; CD
06D1: nop                 ; CD
06D2: nop                 ; CD
06D3: nop                 ; CD
06D4: nop                 ; CD
06D5: nop                 ; CD
06D6: nop                 ; CD
06D7: nop                 ; CD
06D8: nop                 ; CD
06D9: nop                 ; CD
06DA: nop                 ; CD
06DB: nop                 ; CD
06DC: nop                 ; CD
06DD: nop                 ; CD
06DE: nop                 ; CD
06DF: nop                 ; CD
06E0: nop                 ; CD
06E1: nop                 ; CD
06E2: nop                 ; CD
06E3: nop                 ; CD
06E4: nop                 ; CD
06E5: nop                 ; CD
06E6: nop                 ; CD
06E7: nop                 ; CD
06E8: nop                 ; CD
06E9: nop                 ; CD
06EA: nop                 ; CD
06EB: nop                 ; CD
06EC: nop                 ; CD
06ED: nop                 ; CD
06EE: nop                 ; CD
06EF: nop                 ; CD
06F0: nop                 ; CD
06F1: nop                 ; CD
06F2: nop                 ; CD
06F3: nop                 ; CD
06F4: nop                 ; CD
06F5: nop                 ; CD
06F6: nop                 ; CD
06F7: nop                 ; CD
06F8: nop                 ; CD
06F9: nop                 ; CD
06FA: nop                 ; CD
06FB: nop                 ; CD
06FC: nop                 ; CD
06FD: nop                 ; CD
06FE: nop                 ; CD
06FF: nop                 ; CD
0700: nop                 ; CD
0701: nop                 ; CD
0702: nop                 ; CD
0703: nop                 ; CD
0704: nop                 ; CD
0705: nop                 ; CD
0706: nop                 ; CD
0707: nop                 ; CD
0708: nop                 ; CD
0709: nop                 ; CD
070A: nop                 ; CD
070B: nop                 ; CD
070C: nop                 ; CD
070D: nop                 ; CD
070E: nop                 ; CD
070F: nop                 ; CD
0710: nop                 ; CD
0711: nop                 ; CD
0712: nop                 ; CD
0713: nop                 ; CD
0714: nop                 ; CD
0715: nop                 ; CD
0716: nop                 ; CD
0717: nop                 ; CD
0718: nop                 ; CD
0719: nop                 ; CD
071A: nop                 ; CD
071B: nop                 ; CD
071C: nop                 ; CD
071D: nop                 ; CD
071E: nop                 ; CD
071F: nop                 ; CD
0720: nop                 ; CD
0721: nop                 ; CD
0722: nop                 ; CD
0723: nop                 ; CD
0724: nop                 ; CD
0725: nop                 ; CD
0726: nop                 ; CD
0727: nop                 ; CD
0728: nop                 ; CD
0729: nop                 ; CD
072A: nop                 ; CD
072B: nop                 ; CD
072C: nop                 ; CD
072D: nop                 ; CD
072E: nop                 ; CD
072F: nop                 ; CD
0730: nop                 ; CD
0731: nop                 ; CD
0732: nop                 ; CD
0733: nop                 ; CD
0734: nop                 ; CD
0735: nop                 ; CD
0736: nop                 ; CD
0737: nop                 ; CD
0738: nop                 ; CD
0739: nop                 ; CD
073A: nop                 ; CD
073B: nop                 ; CD
073C: nop                 ; CD
073D: nop                 ; CD
073E: nop                 ; CD
073F: nop                 ; CD
0740: nop                 ; CD
0741: nop                 ; CD
0742: nop                 ; CD
0743: nop                 ; CD
0744: nop                 ; CD
0745: nop                 ; CD
0746: nop                 ; CD
0747: nop                 ; CD
0748: nop                 ; CD
0749: nop                 ; CD
074A: nop                 ; CD
074B: nop                 ; CD
074C: nop                 ; CD
074D: nop                 ; CD
074E: nop                 ; CD
074F: nop                 ; CD
0750: nop                 ; CD
0751: nop                 ; CD
0752: nop                 ; CD
0753: nop                 ; CD
0754: nop                 ; CD
0755: nop                 ; CD
0756: nop                 ; CD
0757: nop                 ; CD
0758: nop                 ; CD
0759: nop                 ; CD
075A: nop                 ; CD
075B: nop                 ; CD
075C: nop                 ; CD
075D: nop                 ; CD
075E: nop                 ; CD
075F: nop                 ; CD
0760: nop                 ; CD
0761: nop                 ; CD
0762: nop                 ; CD
0763: nop                 ; CD
0764: nop                 ; CD
0765: nop                 ; CD
0766: nop                 ; CD
0767: nop                 ; CD
0768: nop                 ; CD
0769: nop                 ; CD
076A: nop                 ; CD
076B: nop                 ; CD
076C: nop                 ; CD
076D: nop                 ; CD
076E: nop                 ; CD
076F: nop                 ; CD
0770: nop                 ; CD
0771: nop                 ; CD
0772: nop                 ; CD
0773: nop                 ; CD
0774: nop                 ; CD
0775: nop                 ; CD
0776: nop                 ; CD
0777: nop                 ; CD
0778: nop                 ; CD
0779: nop                 ; CD
077A: nop                 ; CD
077B: nop                 ; CD
077C: nop                 ; CD
077D: nop                 ; CD
077E: nop                 ; CD
077F: nop                 ; CD
0780: nop                 ; CD
0781: nop                 ; CD
0782: nop                 ; CD
0783: nop                 ; CD
0784: nop                 ; CD
0785: nop                 ; CD
0786: nop                 ; CD
0787: nop                 ; CD
0788: nop                 ; CD
0789: nop                 ; CD
078A: nop                 ; CD
078B: nop                 ; CD
078C: nop                 ; CD
078D: nop                 ; CD
078E: nop                 ; CD
078F: nop                 ; CD
0790: nop                 ; CD
0791: nop                 ; CD
0792: nop                 ; CD
0793: nop                 ; CD
0794: nop                 ; CD
0795: nop                 ; CD
0796: nop                 ; CD
0797: nop                 ; CD
0798: nop                 ; CD
0799: nop                 ; CD
079A: nop                 ; CD
079B: nop                 ; CD
079C: nop                 ; CD
079D: nop                 ; CD
079E: nop                 ; CD
079F: nop                 ; CD
07A0: nop                 ; CD
07A1: nop                 ; CD
07A2: nop                 ; CD
07A3: nop                 ; CD
07A4: nop                 ; CD
07A5: nop                 ; CD
07A6: nop                 ; CD
07A7: nop                 ; CD
07A8: nop                 ; CD
07A9: nop                 ; CD
07AA: nop                 ; CD
07AB: nop                 ; CD
07AC: nop                 ; CD
07AD: nop                 ; CD
07AE: nop                 ; CD
07AF: nop                 ; CD
07B0: nop                 ; CD
07B1: nop                 ; CD
07B2: nop                 ; CD
07B3: nop                 ; CD
07B4: nop                 ; CD
07B5: nop                 ; CD
07B6: nop                 ; CD
07B7: nop                 ; CD
07B8: nop                 ; CD
07B9: nop                 ; CD
07BA: nop                 ; CD
07BB: nop                 ; CD
07BC: nop                 ; CD
07BD: nop                 ; CD
07BE: nop                 ; CD
07BF: nop                 ; CD
07C0: nop                 ; CD
07C1: nop                 ; CD
07C2: nop                 ; CD
07C3: nop                 ; CD
07C4: nop                 ; CD
07C5: nop                 ; CD
07C6: nop                 ; CD
07C7: nop                 ; CD
07C8: nop                 ; CD
07C9: nop                 ; CD
07CA: nop                 ; CD
07CB: nop                 ; CD
07CC: nop                 ; CD
07CD: nop                 ; CD
07CE: nop                 ; CD
07CF: nop                 ; CD
07D0: nop                 ; CD
07D1: nop                 ; CD
07D2: nop                 ; CD
07D3: nop                 ; CD
07D4: nop                 ; CD
07D5: nop                 ; CD
07D6: nop                 ; CD
07D7: nop                 ; CD
07D8: nop                 ; CD
07D9: nop                 ; CD
07DA: nop                 ; CD
07DB: nop                 ; CD
07DC: nop                 ; CD
07DD: nop                 ; CD
07DE: nop                 ; CD
07DF: nop                 ; CD
07E0: nop                 ; CD
07E1: nop                 ; CD
07E2: nop                 ; CD
07E3: nop                 ; CD
07E4: nop                 ; CD
07E5: nop                 ; CD
07E6: nop                 ; CD
07E7: nop                 ; CD
07E8: nop                 ; CD
07E9: nop                 ; CD
07EA: nop                 ; CD
07EB: nop                 ; CD
07EC: nop                 ; CD
07ED: nop                 ; CD
07EE: nop                 ; CD
07EF: nop                 ; CD
07F0: nop                 ; CD
07F1: nop                 ; CD
07F2: nop                 ; CD
07F3: nop                 ; CD
07F4: nop                 ; CD
07F5: nop                 ; CD
07F6: nop                 ; CD
07F7: nop                 ; CD
07F8: offset $F800        ; CA 00 F8
07FB: jmp $04E3           ; B1 E3 04
07FE: rjmp $FA            ; B9 FA
