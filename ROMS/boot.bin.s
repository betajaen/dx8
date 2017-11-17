; DX8 Floppy Disk Image
; Origin: 0000 
; Length: 0800 
0000: nop                 ; 00
0001: load w, $6C66       ; 18 66 6C
0004: load w, $3846       ; 18 46 38
0007: load w, $0C30       ; 18 30 0C
000A: add a, a            ; 36
000B: nop                 ; 00
000C: nop                 ; 00
000D: nop                 ; 00
000E: nop                 ; 00
000F: adc a, a            ; 40
0010: adc a, x            ; 3C
0011: load w, $3C3C       ; 18 3C 3C
0014: add y, $7E          ; 38 7E(~)
0016: adc a, x            ; 3C
0017: and w, $3C          ; 7E 3C(<)
0019: adc a, x            ; 3C
001A: nop                 ; 00
001B: nop                 ; 00
001C: dec x               ; 60
001D: nop                 ; 00
001E: pop a               ; 0C
001F: adc a, x            ; 3C
0020: adc a, x            ; 3C
0021: adc a, x            ; 3C
0022: adc a, z            ; 3E
0023: adc a, x            ; 3C
0024: adc a, z            ; 3E
0025: and w, $7E          ; 7E 7E(~)
0027: adc a, x            ; 3C
0028: dec j               ; 66
0029: adc a, x            ; 3C
002A: dec x               ; 60
002B: dec j               ; 66
002C: push.f              ; 06
002D: dec w               ; 63
002E: dec j               ; 66
002F: adc a, x            ; 3C
0030: adc a, z            ; 3E
0031: adc a, x            ; 3C
0032: adc a, z            ; 3E
0033: adc a, x            ; 3C
0034: and w, $66          ; 7E 66(f)
0036: dec j               ; 66
0037: dec w               ; 63
0038: dec j               ; 66
0039: dec j               ; 66
003A: and w, $3C          ; 7E 3C(<)
003C: push y              ; 02
003D: adc a, x            ; 3C
003E: load z, i           ; 10
003F: nop                 ; 00
0040: load w, $0600       ; 18 00 06
0043: nop                 ; 00
0044: dec x               ; 60
0045: nop                 ; 00
0046: cmp i, $0600        ; 70 00 06
0049: load w, $0660       ; 18 60 06
004C: add y, $00          ; 38 00
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
0064: and y, $66          ; 7C 66(f)
0066: cmp y, $18          ; 6C 18
0068: load w, $1C18       ; 18 18 1C
006B: load z, i           ; 10
006C: nop                 ; 00
006D: nop                 ; 00
006E: nop                 ; 00
006F: dec x               ; 60
0070: dec j               ; 66
0071: store i, a          ; 1C
0072: dec j               ; 66
0073: dec j               ; 66
0074: adc a, x            ; 3C
0075: push.f              ; 06
0076: dec j               ; 66
0077: dec x               ; 60
0078: dec j               ; 66
0079: dec j               ; 66
007A: load w, $3018       ; 18 18 30
007D: nop                 ; 00
007E: load w, $4262       ; 18 62 42
0081: dec j               ; 66
0082: dec j               ; 66
0083: dec j               ; 66
0084: dec j               ; 66
0085: push.f              ; 06
0086: push.f              ; 06
0087: dec j               ; 66
0088: dec j               ; 66
0089: load w, $3660       ; 18 60 36
008C: push.f              ; 06
008D: and a, x            ; 77
008E: dec j               ; 66
008F: dec j               ; 66
0090: dec j               ; 66
0091: dec j               ; 66
0092: dec j               ; 66
0093: dec j               ; 66
0094: load w, $6666       ; 18 66 66
0097: dec w               ; 63
0098: dec j               ; 66
0099: dec j               ; 66
009A: dec x               ; 60
009B: pop a               ; 0C
009C: push.f              ; 06
009D: set i, $0038        ; 30 38 00
00A0: set i, $0600        ; 30 00 06
00A3: nop                 ; 00
00A4: dec x               ; 60
00A5: nop                 ; 00
00A6: load w, $0600       ; 18 00 06
00A9: nop                 ; 00
00AA: nop                 ; 00
00AB: push.f              ; 06
00AC: set i, $0000        ; 30 00 00
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
00C5: set i, $186C        ; 30 6C 18
00C8: pop a               ; 0C
00C9: set i, $107F        ; 30 7F 10
00CC: nop                 ; 00
00CD: nop                 ; 00
00CE: nop                 ; 00
00CF: set i, $1866        ; 30 66 18
00D2: dec x               ; 60
00D3: dec x               ; 60
00D4: add a, a            ; 36
00D5: adc a, z            ; 3E
00D6: push.f              ; 06
00D7: set i, $6666        ; 30 66 66
00DA: load w, $1818       ; 18 18 18
00DD: and w, $30          ; 7E 30(0)
00DF: dec x               ; 60
00E0: shl z, $66          ; 99 66(f)
00E2: dec j               ; 66
00E3: push.f              ; 06
00E4: dec j               ; 66
00E5: push.f              ; 06
00E6: push.f              ; 06
00E7: push.f              ; 06
00E8: dec j               ; 66
00E9: load w, $1E60       ; 18 60 1E
00EC: push.f              ; 06
00ED: and a, $6E          ; 7F 6E(n)
00EF: dec j               ; 66
00F0: dec j               ; 66
00F1: dec j               ; 66
00F2: dec j               ; 66
00F3: push.f              ; 06
00F4: load w, $6666       ; 18 66 66
00F7: dec w               ; 63
00F8: adc a, x            ; 3C
00F9: dec j               ; 66
00FA: set i, $0C0C        ; 30 0C 0C
00FD: set i, $006C        ; 30 6C 00
0100: nop                 ; 00
0101: adc a, x            ; 3C
0102: adc a, z            ; 3E
0103: adc a, x            ; 3C
0104: and y, $3C          ; 7C 3C(<)
0106: adc a, x            ; 3C
0107: and y, $3E          ; 7C 3E(>)
0109: store i, a          ; 1C
010A: cmp i, $3066        ; 70 66 30
010D: add x, $3E          ; 37 3E(>)
010F: adc a, x            ; 3C
0110: adc a, z            ; 3E
0111: and y, $76          ; 7C 76(v)
0113: and y, $3C          ; 7C 3C(<)
0115: dec j               ; 66
0116: dec j               ; 66
0117: cmp x, $66          ; 6B 66(f)
0119: dec j               ; 66
011A: and w, $00          ; 7E 00
011C: nop                 ; 00
011D: nop                 ; 00
011E: nop                 ; 00
011F: nop                 ; 00
0120: nop                 ; 00
0121: load w, $6C00       ; 18 00 6C
0124: adc a, x            ; 3C
0125: load w, $0038       ; 18 38 00
0128: pop a               ; 0C
0129: set i, $7C1C        ; 30 1C 7C
012C: nop                 ; 00
012D: and w, $00          ; 7E 00
012F: load w, $1866       ; 18 66 18
0132: add y, $38          ; 38 38(8)
0134: add a, a            ; 36
0135: dec x               ; 60
0136: adc a, z            ; 3E
0137: load w, $7C3C       ; 18 3C 7C
013A: nop                 ; 00
013B: nop                 ; 00
013C: pop a               ; 0C
013D: nop                 ; 00
013E: dec x               ; 60
013F: add y, $A5          ; 38 A5
0141: and w, $3E          ; 7E 3E(>)
0143: push.f              ; 06
0144: dec j               ; 66
0145: store i, z          ; 1E
0146: store i, z          ; 1E
0147: cmpbit a, $7E       ; 76 7E(~)
0149: load w, $0E60       ; 18 60 0E
014C: push.f              ; 06
014D: cmp x, $7E          ; 6B 7E(~)
014F: dec j               ; 66
0150: adc a, z            ; 3E
0151: dec j               ; 66
0152: adc a, z            ; 3E
0153: adc a, x            ; 3C
0154: load w, $6666       ; 18 66 66
0157: cmp x, $18          ; 6B 18
0159: adc a, x            ; 3C
015A: load w, $180C       ; 18 0C 18
015D: set i, $0044        ; 30 44 00
0160: nop                 ; 00
0161: dec x               ; 60
0162: dec j               ; 66
0163: dec j               ; 66
0164: dec j               ; 66
0165: dec j               ; 66
0166: load w, $6666       ; 18 66 66
0169: load w, $3660       ; 18 60 36
016C: set i, $667F        ; 30 7F 66
016F: dec j               ; 66
0170: dec j               ; 66
0171: dec j               ; 66
0172: pop.r               ; 0E
0173: push.f              ; 06
0174: load w, $6666       ; 18 66 66
0177: cmp x, $3C          ; 6B 3C(<)
0179: dec j               ; 66
017A: set i, $0000        ; 30 00 00
017D: nop                 ; 00
017E: nop                 ; 00
017F: nop                 ; 00
0180: nop                 ; 00
0181: load w, $6C00       ; 18 00 6C
0184: dec x               ; 60
0185: pop a               ; 0C
0186: nop                 ; EC
0187: nop                 ; 00
0188: pop a               ; 0C
0189: set i, $1036        ; 30 36 10
018C: load w, $0000       ; 18 00 00
018F: pop a               ; 0C
0190: dec j               ; 66
0191: load w, $600C       ; 18 0C 60
0194: and w, $60          ; 7E 60(`)
0196: dec j               ; 66
0197: load w, $6066       ; 18 66 60
019A: load w, $1818       ; 18 18 18
019D: and w, $30          ; 7E 30(0)
019F: load w, $66A5       ; 18 A5 66
01A2: dec j               ; 66
01A3: push.f              ; 06
01A4: dec j               ; 66
01A5: push.f              ; 06
01A6: push.f              ; 06
01A7: dec j               ; 66
01A8: dec j               ; 66
01A9: load w, $1E60       ; 18 60 1E
01AC: push.f              ; 06
01AD: dec w               ; 63
01AE: cmpbit a, $66       ; 76 66(f)
01B0: push.f              ; 06
01B1: dec j               ; 66
01B2: store i, z          ; 1E
01B3: dec x               ; 60
01B4: load w, $6666       ; 18 66 66
01B7: and a, $3C          ; 7F 3C(<)
01B9: load w, $0C0C       ; 18 0C 0C
01BC: set i, $0030        ; 30 30 00
01BF: nop                 ; 00
01C0: nop                 ; 00
01C1: and y, $66          ; 7C 66(f)
01C3: push.f              ; 06
01C4: dec j               ; 66
01C5: adc a, z            ; 3E
01C6: load w, $6666       ; 18 66 66
01C9: load w, $1E60       ; 18 60 1E
01CC: set i, $666B        ; 30 6B 66
01CF: dec j               ; 66
01D0: dec j               ; 66
01D1: dec j               ; 66
01D2: push.f              ; 06
01D3: adc a, x            ; 3C
01D4: load w, $6666       ; 18 66 66
01D7: and a, $18          ; 7F 18
01D9: dec j               ; 66
01DA: load w, $0000       ; 18 00 00
01DD: nop                 ; 00
01DE: nop                 ; 00
01DF: nop                 ; 00
01E0: nop                 ; 00
01E1: nop                 ; 00
01E2: nop                 ; 00
01E3: nop                 ; FE
01E4: adc a, z            ; 3E
01E5: dec j               ; 66
01E6: dec j               ; 66
01E7: nop                 ; 00
01E8: load w, $0018       ; 18 18 00
01EB: load z, i           ; 10
01EC: load w, $1800       ; 18 00 18
01EF: push.f              ; 06
01F0: dec j               ; 66
01F1: load w, $6606       ; 18 06 66
01F4: set i, $6666        ; 30 66 66
01F7: load w, $6666       ; 18 66 66
01FA: load w, $3018       ; 18 18 30
01FD: nop                 ; 00
01FE: load w, $7900       ; 18 00 79
0201: dec j               ; 66
0202: dec j               ; 66
0203: dec j               ; 66
0204: dec j               ; 66
0205: push.f              ; 06
0206: push.f              ; 06
0207: dec j               ; 66
0208: dec j               ; 66
0209: load w, $3666       ; 18 66 36
020C: push.f              ; 06
020D: dec w               ; 63
020E: dec j               ; 66
020F: dec j               ; 66
0210: push.f              ; 06
0211: dec j               ; 66
0212: add a, a            ; 36
0213: dec j               ; 66
0214: load w, $3C66       ; 18 66 3C
0217: and a, x            ; 77
0218: dec j               ; 66
0219: load w, $0C06       ; 18 06 0C
021C: dec x               ; 60
021D: set i, $0000        ; 30 00 00
0220: nop                 ; 00
0221: dec j               ; 66
0222: dec j               ; 66
0223: dec j               ; 66
0224: dec j               ; 66
0225: push.f              ; 06
0226: load w, $667C       ; 18 7C 66
0229: load w, $3660       ; 18 60 36
022C: set i, $666B        ; 30 6B 66
022F: dec j               ; 66
0230: dec j               ; 66
0231: dec j               ; 66
0232: push.f              ; 06
0233: dec x               ; 60
0234: load w, $3C66       ; 18 66 3C
0237: adc a, z            ; 3E
0238: adc a, x            ; 3C
0239: and y, $0C          ; 7C 0C
023B: nop                 ; 00
023C: nop                 ; 00
023D: nop                 ; 00
023E: nop                 ; 00
023F: nop                 ; 00
0240: nop                 ; 00
0241: load w, $6C00       ; 18 00 6C
0244: load w, $FC62       ; 18 62 FC
0247: nop                 ; 00
0248: set i, $000C        ; 30 0C 00
024B: nop                 ; 00
024C: pop a               ; 0C
024D: nop                 ; 00
024E: load w, $3C02       ; 18 02 3C
0251: and w, $7E          ; 7E 7E(~)
0253: adc a, x            ; 3C
0254: and a, y            ; 78
0255: adc a, x            ; 3C
0256: adc a, x            ; 3C
0257: load w, $3C3C       ; 18 3C 3C
025A: nop                 ; 00
025B: pop x               ; 08
025C: dec x               ; 60
025D: nop                 ; 00
025E: pop a               ; 0C
025F: load w, $6602       ; 18 02 66
0262: adc a, z            ; 3E
0263: adc a, x            ; 3C
0264: adc a, z            ; 3E
0265: and w, $06          ; 7E 06
0267: adc a, x            ; 3C
0268: dec j               ; 66
0269: adc a, x            ; 3C
026A: adc a, x            ; 3C
026B: dec j               ; 66
026C: and w, $63          ; 7E 63(c)
026E: dec j               ; 66
026F: adc a, x            ; 3C
0270: push.f              ; 06
0271: adc a, x            ; 3C
0272: dec j               ; 66
0273: adc a, x            ; 3C
0274: load w, $183C       ; 18 3C 18
0277: dec w               ; 63
0278: dec j               ; 66
0279: load w, $3C7E       ; 18 7E 3C
027C: adc a, a            ; 40
027D: adc a, x            ; 3C
027E: nop                 ; 00
027F: nop                 ; 00
0280: nop                 ; 00
0281: and y, $3E          ; 7C 3E(>)
0283: adc a, x            ; 3C
0284: and y, $7C          ; 7C 7C(|)
0286: load w, $6660       ; 18 60 66
0289: adc a, x            ; 3C
028A: dec j               ; 66
028B: dec j               ; 66
028C: and a, y            ; 78
028D: cmp x, $66          ; 6B 66(f)
028F: adc a, x            ; 3C
0290: adc a, z            ; 3E
0291: and y, $06          ; 7C 06
0293: adc a, z            ; 3E
0294: set i, $187C        ; 30 7C 18
0297: add a, a            ; 36
0298: dec j               ; 66
0299: dec x               ; 60
029A: and w, $00          ; 7E 00
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
02C0: adc a, x            ; 3C
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
02D1: dec x               ; 60
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
02E7: adc a, x            ; 3C
02E8: nop                 ; 00
02E9: nop                 ; 00
02EA: adc a, x            ; 3C
02EB: nop                 ; 00
02EC: nop                 ; 00
02ED: nop                 ; 00
02EE: nop                 ; 00
02EF: nop                 ; 00
02F0: push.f              ; 06
02F1: dec x               ; 60
02F2: nop                 ; 00
02F3: nop                 ; 00
02F4: nop                 ; 00
02F5: nop                 ; 00
02F6: nop                 ; 00
02F7: nop                 ; 00
02F8: nop                 ; 00
02F9: adc a, x            ; 3C
02FA: nop                 ; 00
02FB: nop                 ; 00
02FC: nop                 ; 00
02FD: nop                 ; 00
02FE: nop                 ; 00
02FF: nop                 ; 00
0300: sub a, z            ; 48
0301: dec i               ; 65
0302: cmp y, $6C          ; 6C 6C(l)
0304: cmp a, $20          ; 6F 20
0306: mul w, $6F          ; 57 6F(o)
0308: cmpbit x, $6C       ; 72 6C(l)
030A: dec a               ; 64
030B: store j, y          ; 21
030C: add a, a            ; 36
030D: push z              ; 03
030E: adc z, $03          ; 43 03
0310: jmp $042A           ; AB 2A 04
0313: load x, $002C       ; 15 2C 00
0316: not x               ; 89
0317: and x, $E0          ; 7B E0
0319: shr x, $02          ; 9C 02
031B: set a, $3B          ; 2F 3B(;)
031D: add a, x            ; 32
031E: store $001D, a      ; 26 1D 00
0321: set a, $3F          ; 2F 3F(?)
0323: add a, x            ; 32
0324: store $001E, a      ; 26 1E 00
0327: set a, $42          ; 2F 42(B)
0329: add a, x            ; 32
032A: store $001F, a      ; 26 1F 00
032D: resume              ; C1
032E: nop                 ; 00
032F: resume              ; C1
0330: set a, $46          ; 2F 46(F)
0332: store $8000, a      ; 26 00 80
0335: resume              ; C1
0336: push a              ; 05
0337: load a, j           ; 12
0338: store i, a          ; 1C
0339: pop a               ; 0C
033A: dec a               ; 64
033B: rjmp.z $07          ; BD 07
033D: push a              ; 05
033E: inc i               ; 5E
033F: inc j               ; 5F
0340: rjmp $F7            ; B3 F7
0342: return              ; 2A
0343: store i, a          ; 1C
0344: inc i               ; 5E
0345: dec j               ; 66
0346: rjmp.nz $FD         ; BF FD
0348: return              ; 2A
0349: set a, $44          ; 2F 44(D)
034B: store $8499, a      ; 26 99 84
034E: set a, $58          ; 2F 58(X)
0350: store $849A, a      ; 26 9A 84
0353: set a, $38          ; 2F 38(8)
0355: store $849B, a      ; 26 9B 84
0358: set a, $2F          ; 2F 2F(/)
035A: store $849D, a      ; 26 9D 84
035D: set a, $2F          ; 2F 2F(/)
035F: store $849E, a      ; 26 9E 84
0362: set a, $2F          ; 2F 2F(/)
0364: store $849F, a      ; 26 9F 84
0367: set a, $49          ; 2F 49(I)
0369: store $8269, a      ; 26 69 82
036C: set a, $4E          ; 2F 4E(N)
036E: store $826A, a      ; 26 6A 82
0371: set a, $53          ; 2F 53(S)
0373: store $826B, a      ; 26 6B 82
0376: set a, $45          ; 2F 45(E)
0378: store $826C, a      ; 26 6C 82
037B: set a, $52          ; 2F 52(R)
037D: store $826D, a      ; 26 6D 82
0380: set a, $54          ; 2F 54(T)
0382: store $826E, a      ; 26 6E 82
0385: set a, $46          ; 2F 46(F)
0387: store $8291, a      ; 26 91 82
038A: set a, $4C          ; 2F 4C(L)
038C: store $8292, a      ; 26 92 82
038F: set a, $4F          ; 2F 4F(O)
0391: store $8293, a      ; 26 93 82
0394: set a, $50          ; 2F 50(P)
0396: store $8294, a      ; 26 94 82
0399: set a, $50          ; 2F 50(P)
039B: store $8295, a      ; 26 95 82
039E: set a, $59          ; 2F 59(Y)
03A0: store $8296, a      ; 26 96 82
03A3: return              ; 2A
03A4: load x, $002F       ; 15 2F 00
03A7: cmpbit x, $40       ; 72 40(@)
03A9: jmp.z $03AF         ; BC AF 03
03AC: jmp $03BD           ; AB BD 03
03AF: set x, $20          ; 2B 20
03B1: store $849D, x      ; 22 9D 84
03B4: store $849E, x      ; 22 9E 84
03B7: store $849F, x      ; 22 9F 84
03BA: jmp $03C8           ; AB C8 03
03BD: set x, $2F          ; 2B 2F(/)
03BF: store $849D, x      ; 22 9D 84
03C2: store $849E, x      ; 22 9E 84
03C5: store $849F, x      ; 22 9F 84
03C8: return              ; 2A
03C9: set i, $0310        ; 30 10 03
03CC: store $0310, i      ; 27
03CD: nop                 ; 00
03CE: nop                 ; 00
03CF: set i, $0313        ; 30 13 03
03D2: store $0313, i      ; 27
03D3: push y              ; 02
03D4: nop                 ; 00
03D5: set i, $032E        ; 30 2E 03
03D8: store $032E, i      ; 27
03D9: push w              ; 04
03DA: nop                 ; 00
03DB: set i, $0330        ; 30 30 03
03DE: store $0330, i      ; 27
03DF: push.f              ; 06
03E0: nop                 ; 00
03E1: set a, $00          ; 2F 00
03E3: store $0010, a      ; 26 10 00
03E6: set a, $00          ; 2F 00
03E8: store $0011, a      ; 26 11 00
03EB: set a, $00          ; 2F 00
03ED: store $0012, a      ; 26 12 00
03F0: set a, $00          ; 2F 00
03F2: store $0013, a      ; 26 13 00
03F5: set a, $00          ; 2F 00
03F7: store $0014, a      ; 26 14 00
03FA: set a, $00          ; 2F 00
03FC: store $0015, a      ; 26 15 00
03FF: set a, $00          ; 2F 00
0401: store $0016, a      ; 26 16 00
0404: set a, $00          ; 2F 00
0406: store $0017, a      ; 26 17 00
0409: set i, $7800        ; 30 00 78
040C: store $7800, i      ; 27
040D: set i, $2F00        ; 30 00 2F
0410: nop                 ; 00
0411: store $0019, a      ; 26 19 00
0414: set a, $00          ; 2F 00
0416: store $001A, a      ; 26 1A 00
0419: set a, $00          ; 2F 00
041B: store $001B, a      ; 26 1B 00
041E: set a, $00          ; 2F 00
0420: store $001C, a      ; 26 1C 00
0423: set a, $04          ; 2F 04
0425: store $0018, a      ; 26 18 00
0428: int $FE             ; C0 FE
042A: set i, $8000        ; 30 00 80
042D: set j, $7800        ; 31 00 78
0430: set a, $20          ; 2F 20
0432: call $0343          ; 29 43 03
0435: set i, $8000        ; 30 00 80
0438: set j, $7B00        ; 31 00 7B
043B: set a, $0C          ; 2F 0C
043D: call $0336          ; 29 36 03
0440: call $0349          ; 29 49 03
0443: call $03A4          ; 29 A4 03
0446: jmp $0443           ; AB 43 04
0449: set a, $FF          ; 2F FF
044B: set i, $7800        ; 30 00 78
044E: set j, $F800        ; 31 00 F8
0451: call $0336          ; 29 36 03
0454: set a, $FF          ; 2F FF
0456: set i, $78FF        ; 30 FF 78
0459: set j, $F8FF        ; 31 FF F8
045C: call $0336          ; 29 36 03
045F: set a, $FF          ; 2F FF
0461: set i, $79FE        ; 30 FE 79
0464: set j, $F9FE        ; 31 FE F9
0467: call $0336          ; 29 36 03
046A: set a, $FF          ; 2F FF
046C: set i, $7AFD        ; 30 FD 7A
046F: set j, $FAFD        ; 31 FD FA
0472: call $0336          ; 29 36 03
0475: set a, $4D          ; 2F 4D(M)
0477: set i, $7BFC        ; 30 FC 7B
047A: set j, $FBFC        ; 31 FC FB
047D: call $0336          ; 29 36 03
0480: offset $7800        ; C4 00 78
0483: jmp $03C9           ; AB C9 03
0486: nop                 ; CD
0487: nop                 ; CD
0488: nop                 ; CD
0489: nop                 ; CD
048A: nop                 ; CD
048B: nop                 ; CD
048C: nop                 ; CD
048D: nop                 ; CD
048E: nop                 ; CD
048F: nop                 ; CD
0490: nop                 ; CD
0491: nop                 ; CD
0492: nop                 ; CD
0493: nop                 ; CD
0494: nop                 ; CD
0495: nop                 ; CD
0496: nop                 ; CD
0497: nop                 ; CD
0498: nop                 ; CD
0499: nop                 ; CD
049A: nop                 ; CD
049B: nop                 ; CD
049C: nop                 ; CD
049D: nop                 ; CD
049E: nop                 ; CD
049F: nop                 ; CD
04A0: nop                 ; CD
04A1: nop                 ; CD
04A2: nop                 ; CD
04A3: nop                 ; CD
04A4: nop                 ; CD
04A5: nop                 ; CD
04A6: nop                 ; CD
04A7: nop                 ; CD
04A8: nop                 ; CD
04A9: nop                 ; CD
04AA: nop                 ; CD
04AB: nop                 ; CD
04AC: nop                 ; CD
04AD: nop                 ; CD
04AE: nop                 ; CD
04AF: nop                 ; CD
04B0: nop                 ; CD
04B1: nop                 ; CD
04B2: nop                 ; CD
04B3: nop                 ; CD
04B4: nop                 ; CD
04B5: nop                 ; CD
04B6: nop                 ; CD
04B7: nop                 ; CD
04B8: nop                 ; CD
04B9: nop                 ; CD
04BA: nop                 ; CD
04BB: nop                 ; CD
04BC: nop                 ; CD
04BD: nop                 ; CD
04BE: nop                 ; CD
04BF: nop                 ; CD
04C0: nop                 ; CD
04C1: nop                 ; CD
04C2: nop                 ; CD
04C3: nop                 ; CD
04C4: nop                 ; CD
04C5: nop                 ; CD
04C6: nop                 ; CD
04C7: nop                 ; CD
04C8: nop                 ; CD
04C9: nop                 ; CD
04CA: nop                 ; CD
04CB: nop                 ; CD
04CC: nop                 ; CD
04CD: nop                 ; CD
04CE: nop                 ; CD
04CF: nop                 ; CD
04D0: nop                 ; CD
04D1: nop                 ; CD
04D2: nop                 ; CD
04D3: nop                 ; CD
04D4: nop                 ; CD
04D5: nop                 ; CD
04D6: nop                 ; CD
04D7: nop                 ; CD
04D8: nop                 ; CD
04D9: nop                 ; CD
04DA: nop                 ; CD
04DB: nop                 ; CD
04DC: nop                 ; CD
04DD: nop                 ; CD
04DE: nop                 ; CD
04DF: nop                 ; CD
04E0: nop                 ; CD
04E1: nop                 ; CD
04E2: nop                 ; CD
04E3: nop                 ; CD
04E4: nop                 ; CD
04E5: nop                 ; CD
04E6: nop                 ; CD
04E7: nop                 ; CD
04E8: nop                 ; CD
04E9: nop                 ; CD
04EA: nop                 ; CD
04EB: nop                 ; CD
04EC: nop                 ; CD
04ED: nop                 ; CD
04EE: nop                 ; CD
04EF: nop                 ; CD
04F0: nop                 ; CD
04F1: nop                 ; CD
04F2: nop                 ; CD
04F3: nop                 ; CD
04F4: nop                 ; CD
04F5: nop                 ; CD
04F6: nop                 ; CD
04F7: nop                 ; CD
04F8: nop                 ; CD
04F9: nop                 ; CD
04FA: nop                 ; CD
04FB: nop                 ; CD
04FC: nop                 ; CD
04FD: nop                 ; CD
04FE: nop                 ; CD
04FF: nop                 ; CD
0500: nop                 ; CD
0501: nop                 ; CD
0502: nop                 ; CD
0503: nop                 ; CD
0504: nop                 ; CD
0505: nop                 ; CD
0506: nop                 ; CD
0507: nop                 ; CD
0508: nop                 ; CD
0509: nop                 ; CD
050A: nop                 ; CD
050B: nop                 ; CD
050C: nop                 ; CD
050D: nop                 ; CD
050E: nop                 ; CD
050F: nop                 ; CD
0510: nop                 ; CD
0511: nop                 ; CD
0512: nop                 ; CD
0513: nop                 ; CD
0514: nop                 ; CD
0515: nop                 ; CD
0516: nop                 ; CD
0517: nop                 ; CD
0518: nop                 ; CD
0519: nop                 ; CD
051A: nop                 ; CD
051B: nop                 ; CD
051C: nop                 ; CD
051D: nop                 ; CD
051E: nop                 ; CD
051F: nop                 ; CD
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
07F8: offset $F800        ; C4 00 F8
07FB: jmp $0449           ; AB 49 04
07FE: rjmp $FA            ; B3 FA
