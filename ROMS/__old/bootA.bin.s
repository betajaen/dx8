; DX8 Floppy Disk Image
; Origin: 0000 
; Length: 0802 
0000: nop                 ; F7
0001: shr x, $FA          ; 9C FA
0003: nop                 ; F8
0004: load a, i           ; 0F
0005: xor y, $02          ; 93 02
0007: and a, w            ; 7A
0008: cmp y, $E0          ; 6C E0
000A: not a               ; 8D
000B: push y              ; 02
000C: store $283B, w      ; 25 3B 28
000F: load j, $0286       ; 1B 86 02
0012: store $283F, w      ; 25 3F 28
0015: load j, $0287       ; 1B 87 02
0018: store $2842, w      ; 25 42 28
001B: load j, $0288       ; 1B 88 02
001E: jmp $B200, a        ; B2 00 B2
0021: store $1B46, w      ; 25 46 1B
0024: not x               ; 89
0025: push y              ; 02
0026: jmp $4425, a        ; B2 25 44
0029: load j, $0722       ; 1B 22 07
002C: store $1B58, w      ; 25 58 1B
002F: store $2507, y      ; 23 07 25
0032: add y, $1B          ; 38 1B
0034: store $2507, z      ; 24 07 25
0037: set a, $1B          ; 2F 1B
0039: store $252F, a      ; 26 2F 25
003C: set a, $1B          ; 2F 1B
003E: store $251B, i      ; 27
003F: mul w, $25          ; 57 25(%)
0041: set a, $1B          ; 2F 1B
0043: store $251B, j      ; 28
0044: and a, $25          ; 7F 25(%)
0046: sub a, w            ; 49
0047: load j, $04F2       ; 1B F2 04
004A: store $1B4E, w      ; 25 4E 1B
004D: nop                 ; F3
004E: push w              ; 04
004F: store $1B53, w      ; 25 53 1B
0052: nop                 ; F4
0053: push w              ; 04
0054: store $1B45, w      ; 25 45 1B
0057: nop                 ; F5
0058: push w              ; 04
0059: store $1B52, w      ; 25 52 1B
005C: nop                 ; F6
005D: push w              ; 04
005E: store $1B54, w      ; 25 54 1B
0061: nop                 ; F7
0062: push w              ; 04
0063: store $1B46, w      ; 25 46 1B
0066: load i, $2505       ; 1A 05 25
0069: sub z, $1B          ; 4C 1B
006B: load j, $2505       ; 1B 05 25
006E: mul a, x            ; 4F
006F: load j, $051C       ; 1B 1C 05
0072: store $1B50, w      ; 25 50 1B
0075: store i, w          ; 1D
0076: push a              ; 05
0077: store $1B50, w      ; 25 50 1B
007A: store i, z          ; 1E
007B: push a              ; 05
007C: store $1B59, w      ; 25 59 1B
007F: store j, a          ; 1F
0080: push a              ; 05
0081: store j, x          ; 20
0082: load a, i           ; 0F
0083: xor a, $02          ; 96 02
0085: dec w               ; 63
0086: adc a, a            ; 40
0087: jmp j               ; AD
0088: not z               ; 8B
0089: nop                 ; F8
008A: shr x, $99          ; 9C 99
008C: nop                 ; F8
008D: store j, y          ; 21
008E: store j, x          ; 20
008F: load z, $2F26       ; 17 26 2F
0092: load z, $5727       ; 17 27 57
0095: load z, $7F28       ; 17 28 7F
0098: shr x, $A4          ; 9C A4
009A: nop                 ; F8
009B: store j, y          ; 21
009C: set a, $17          ; 2F 17
009E: store $172F, a      ; 26 2F 17
00A1: store $172F, i      ; 27
00A2: mul w, $17          ; 57 17
00A4: store $1717, j      ; 28
00A5: and a, $20          ; 7F 20
00A7: store $1BFF, w      ; 25 FF 1B
00AA: nop                 ; 00
00AB: nop                 ; 00
00AC: store $1BF7, w      ; 25 F7 1B
00AF: push x              ; 01
00B0: nop                 ; 00
00B1: store $1B02, w      ; 25 02 1B
00B4: push y              ; 02
00B5: nop                 ; 00
00B6: store $1BF8, w      ; 25 F8 1B
00B9: push z              ; 03
00BA: nop                 ; 00
00BB: store $1B1D, w      ; 25 1D 1B
00BE: push w              ; 04
00BF: nop                 ; 00
00C0: store $1BF8, w      ; 25 F8 1B
00C3: push a              ; 05
00C4: nop                 ; 00
00C5: store $1B1F, w      ; 25 1F 1B
00C8: push.f              ; 06
00C9: nop                 ; 00
00CA: store $1BF8, w      ; 25 F8 1B
00CD: push.r              ; 07
00CE: nop                 ; 00
00CF: store $1B00, w      ; 25 00 1B
00D2: cmp w, $02          ; 6E 02
00D4: store $1B00, w      ; 25 00 1B
00D7: cmp a, $02          ; 6F 02
00D9: store $1B00, w      ; 25 00 1B
00DC: cmp i, $2502        ; 70 02 25
00DF: nop                 ; 00
00E0: load j, $0271       ; 1B 71 02
00E3: store $1B00, w      ; 25 00 1B
00E6: cmpbit x, $02       ; 72 02
00E8: store $1B00, w      ; 25 00 1B
00EB: cmpbit y, $02       ; 73 02
00ED: store $1B00, w      ; 25 00 1B
00F0: cmpbit z, $02       ; 74 02
00F2: store $1BFF, w      ; 25 FF 1B
00F5: cmpbit w, $02       ; 75 02
00F7: store $1B04, w      ; 25 04 1B
00FA: and a, $02          ; 7F 02
00FC: store $1B00, w      ; 25 00 1B
00FF: cmp w, $02          ; 6E 02
0101: store $1B00, w      ; 25 00 1B
0104: cmp a, $02          ; 6F 02
0106: store $1B00, w      ; 25 00 1B
0109: cmp i, $2502        ; 70 02 25
010C: nop                 ; 00
010D: load j, $0271       ; 1B 71 02
0110: store $1B00, w      ; 25 00 1B
0113: cmpbit x, $02       ; 72 02
0115: store $1B00, w      ; 25 00 1B
0118: cmpbit y, $02       ; 73 02
011A: store $1B00, w      ; 25 00 1B
011D: cmpbit z, $02       ; 74 02
011F: store $1BFF, w      ; 25 FF 1B
0122: cmpbit w, $02       ; 75 02
0124: push a              ; 05
0125: store $1B20, w      ; 25 20 1B
0128: cmp a, $02          ; 6F 02
012A: store $1B89, w      ; 25 89 1B
012D: cmpbit x, $02       ; 72 02
012F: store $1B02, w      ; 25 02 1B
0132: cmpbit y, $02       ; 73 02
0134: store $1B00, w      ; 25 00 1B
0137: cmpbit z, $02       ; 74 02
0139: store $1B28, w      ; 25 28 1B
013C: cmpbit w, $02       ; 75 02
013E: jmp $0501, w        ; B1 01 05
0141: store $ADC8, w      ; 25 C8 AD
0144: sub a, z            ; 48
0145: nop                 ; F9
0146: inc x               ; 59
0147: shr x, $41          ; 9C 41(A)
0149: nop                 ; F9
014A: pop a               ; 0C
014B: pop a               ; 0C
014C: push a              ; 05
014D: store $1B20, w      ; 25 20 1B
0150: cmp a, $02          ; 6F 02
0152: store $1B89, w      ; 25 89 1B
0155: cmpbit x, $02       ; 72 02
0157: store $1B2A, w      ; 25 2A 1B
015A: cmpbit y, $02       ; 73 02
015C: store $1B00, w      ; 25 00 1B
015F: cmpbit z, $02       ; 74 02
0161: store $1B28, w      ; 25 28 1B
0164: cmpbit w, $02       ; 75 02
0166: jmp $0501, w        ; B1 01 05
0169: store $ADC8, w      ; 25 C8 AD
016C: cmp i, $59F9        ; 70 F9 59
016F: shr x, $69          ; 9C 69(i)
0171: nop                 ; F9
0172: pop a               ; 0C
0173: pop a               ; 0C
0174: push a              ; 05
0175: store $1B20, w      ; 25 20 1B
0178: cmp a, $02          ; 6F 02
017A: store $1B89, w      ; 25 89 1B
017D: cmpbit x, $02       ; 72 02
017F: store $1B52, w      ; 25 52 1B
0182: cmpbit y, $02       ; 73 02
0184: store $1B00, w      ; 25 00 1B
0187: cmpbit z, $02       ; 74 02
0189: store $1B28, w      ; 25 28 1B
018C: cmpbit w, $02       ; 75 02
018E: jmp $0501, w        ; B1 01 05
0191: store $ADC8, w      ; 25 C8 AD
0194: shl y, $F9          ; 98 F9
0196: inc x               ; 59
0197: shr x, $91          ; 9C 91
0199: nop                 ; F9
019A: pop a               ; 0C
019B: pop a               ; 0C
019C: push a              ; 05
019D: store $1B20, w      ; 25 20 1B
01A0: cmp a, $02          ; 6F 02
01A2: store $1B89, w      ; 25 89 1B
01A5: cmpbit x, $02       ; 72 02
01A7: store $1B7A, w      ; 25 7A 1B
01AA: cmpbit y, $02       ; 73 02
01AC: store $1B00, w      ; 25 00 1B
01AF: cmpbit z, $02       ; 74 02
01B1: store $1B28, w      ; 25 28 1B
01B4: cmpbit w, $02       ; 75 02
01B6: jmp $0501, w        ; B1 01 05
01B9: store $ADC8, w      ; 25 C8 AD
01BC: int $F9             ; C0 F9
01BE: inc x               ; 59
01BF: shr x, $B9          ; 9C B9
01C1: nop                 ; F9
01C2: pop a               ; 0C
01C3: pop a               ; 0C
01C4: store j, a          ; 1F
01C5: store $1FF8, w      ; 25 F8 1F
01C8: or a, x             ; 80
01C9: nop                 ; F8
01CA: shr x, $C5          ; 9C C5
01CC: nop                 ; F9
01CD: nop                 ; 00
01CE: load w, $6C66       ; 18 66 6C
01D1: load w, $3846       ; 18 46 38
01D4: load w, $0C30       ; 18 30 0C
01D7: add a, a            ; 36
01D8: nop                 ; 00
01D9: nop                 ; 00
01DA: nop                 ; 00
01DB: nop                 ; 00
01DC: adc a, a            ; 40
01DD: adc a, x            ; 3C
01DE: load w, $3C3C       ; 18 3C 3C
01E1: add y, $7E          ; 38 7E(~)
01E3: adc a, x            ; 3C
01E4: and w, $3C          ; 7E 3C(<)
01E6: adc a, x            ; 3C
01E7: nop                 ; 00
01E8: nop                 ; 00
01E9: dec x               ; 60
01EA: nop                 ; 00
01EB: pop a               ; 0C
01EC: adc a, x            ; 3C
01ED: adc a, x            ; 3C
01EE: adc a, x            ; 3C
01EF: adc a, z            ; 3E
01F0: adc a, x            ; 3C
01F1: adc a, z            ; 3E
01F2: and w, $7E          ; 7E 7E(~)
01F4: adc a, x            ; 3C
01F5: dec j               ; 66
01F6: adc a, x            ; 3C
01F7: dec x               ; 60
01F8: dec j               ; 66
01F9: push.f              ; 06
01FA: dec w               ; 63
01FB: dec j               ; 66
01FC: adc a, x            ; 3C
01FD: adc a, z            ; 3E
01FE: adc a, x            ; 3C
01FF: adc a, z            ; 3E
0200: adc a, x            ; 3C
0201: and w, $66          ; 7E 66(f)
0203: dec j               ; 66
0204: dec w               ; 63
0205: dec j               ; 66
0206: dec j               ; 66
0207: and w, $3C          ; 7E 3C(<)
0209: push y              ; 02
020A: adc a, x            ; 3C
020B: load z, i           ; 10
020C: nop                 ; 00
020D: load w, $0600       ; 18 00 06
0210: nop                 ; 00
0211: dec x               ; 60
0212: nop                 ; 00
0213: cmp i, $0600        ; 70 00 06
0216: load w, $0660       ; 18 60 06
0219: add y, $00          ; 38 00
021B: nop                 ; 00
021C: nop                 ; 00
021D: nop                 ; 00
021E: nop                 ; 00
021F: nop                 ; 00
0220: nop                 ; 00
0221: load w, $0000       ; 18 00 00
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
022E: load w, $FE66       ; 18 66 FE
0231: and y, $66          ; 7C 66(f)
0233: cmp y, $18          ; 6C 18
0235: load w, $1C18       ; 18 18 1C
0238: load z, i           ; 10
0239: nop                 ; 00
023A: nop                 ; 00
023B: nop                 ; 00
023C: dec x               ; 60
023D: dec j               ; 66
023E: store i, a          ; 1C
023F: dec j               ; 66
0240: dec j               ; 66
0241: adc a, x            ; 3C
0242: push.f              ; 06
0243: dec j               ; 66
0244: dec x               ; 60
0245: dec j               ; 66
0246: dec j               ; 66
0247: load w, $3018       ; 18 18 30
024A: nop                 ; 00
024B: load w, $4262       ; 18 62 42
024E: dec j               ; 66
024F: dec j               ; 66
0250: dec j               ; 66
0251: dec j               ; 66
0252: push.f              ; 06
0253: push.f              ; 06
0254: dec j               ; 66
0255: dec j               ; 66
0256: load w, $3660       ; 18 60 36
0259: push.f              ; 06
025A: and a, x            ; 77
025B: dec j               ; 66
025C: dec j               ; 66
025D: dec j               ; 66
025E: dec j               ; 66
025F: dec j               ; 66
0260: dec j               ; 66
0261: load w, $6666       ; 18 66 66
0264: dec w               ; 63
0265: dec j               ; 66
0266: dec j               ; 66
0267: dec x               ; 60
0268: pop a               ; 0C
0269: push.f              ; 06
026A: set i, $0038        ; 30 38 00
026D: set i, $0600        ; 30 00 06
0270: nop                 ; 00
0271: dec x               ; 60
0272: nop                 ; 00
0273: load w, $0600       ; 18 00 06
0276: nop                 ; 00
0277: nop                 ; 00
0278: push.f              ; 06
0279: set i, $0000        ; 30 00 00
027C: nop                 ; 00
027D: nop                 ; 00
027E: nop                 ; 00
027F: nop                 ; 00
0280: nop                 ; 00
0281: load w, $0000       ; 18 00 00
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
028E: load w, $6C66       ; 18 66 6C
0291: push.f              ; 06
0292: set i, $186C        ; 30 6C 18
0295: pop a               ; 0C
0296: set i, $107F        ; 30 7F 10
0299: nop                 ; 00
029A: nop                 ; 00
029B: nop                 ; 00
029C: set i, $1866        ; 30 66 18
029F: dec x               ; 60
02A0: dec x               ; 60
02A1: add a, a            ; 36
02A2: adc a, z            ; 3E
02A3: push.f              ; 06
02A4: set i, $6666        ; 30 66 66
02A7: load w, $1818       ; 18 18 18
02AA: and w, $30          ; 7E 30(0)
02AC: dec x               ; 60
02AD: shl z, $66          ; 99 66(f)
02AF: dec j               ; 66
02B0: push.f              ; 06
02B1: dec j               ; 66
02B2: push.f              ; 06
02B3: push.f              ; 06
02B4: push.f              ; 06
02B5: dec j               ; 66
02B6: load w, $1E60       ; 18 60 1E
02B9: push.f              ; 06
02BA: and a, $6E          ; 7F 6E(n)
02BC: dec j               ; 66
02BD: dec j               ; 66
02BE: dec j               ; 66
02BF: dec j               ; 66
02C0: push.f              ; 06
02C1: load w, $6666       ; 18 66 66
02C4: dec w               ; 63
02C5: adc a, x            ; 3C
02C6: dec j               ; 66
02C7: set i, $0C0C        ; 30 0C 0C
02CA: set i, $006C        ; 30 6C 00
02CD: nop                 ; 00
02CE: adc a, x            ; 3C
02CF: adc a, z            ; 3E
02D0: adc a, x            ; 3C
02D1: and y, $3C          ; 7C 3C(<)
02D3: adc a, x            ; 3C
02D4: and y, $3E          ; 7C 3E(>)
02D6: store i, a          ; 1C
02D7: cmp i, $3066        ; 70 66 30
02DA: add x, $3E          ; 37 3E(>)
02DC: adc a, x            ; 3C
02DD: adc a, z            ; 3E
02DE: and y, $76          ; 7C 76(v)
02E0: and y, $3C          ; 7C 3C(<)
02E2: dec j               ; 66
02E3: dec j               ; 66
02E4: cmp x, $66          ; 6B 66(f)
02E6: dec j               ; 66
02E7: and w, $00          ; 7E 00
02E9: nop                 ; 00
02EA: nop                 ; 00
02EB: nop                 ; 00
02EC: nop                 ; 00
02ED: nop                 ; 00
02EE: load w, $6C00       ; 18 00 6C
02F1: adc a, x            ; 3C
02F2: load w, $0038       ; 18 38 00
02F5: pop a               ; 0C
02F6: set i, $7C1C        ; 30 1C 7C
02F9: nop                 ; 00
02FA: and w, $00          ; 7E 00
02FC: load w, $1866       ; 18 66 18
02FF: add y, $38          ; 38 38(8)
0301: add a, a            ; 36
0302: dec x               ; 60
0303: adc a, z            ; 3E
0304: load w, $7C3C       ; 18 3C 7C
0307: nop                 ; 00
0308: nop                 ; 00
0309: pop a               ; 0C
030A: nop                 ; 00
030B: dec x               ; 60
030C: add y, $A5          ; 38 A5
030E: and w, $3E          ; 7E 3E(>)
0310: push.f              ; 06
0311: dec j               ; 66
0312: store i, z          ; 1E
0313: store i, z          ; 1E
0314: cmpbit a, $7E       ; 76 7E(~)
0316: load w, $0E60       ; 18 60 0E
0319: push.f              ; 06
031A: cmp x, $7E          ; 6B 7E(~)
031C: dec j               ; 66
031D: adc a, z            ; 3E
031E: dec j               ; 66
031F: adc a, z            ; 3E
0320: adc a, x            ; 3C
0321: load w, $6666       ; 18 66 66
0324: cmp x, $18          ; 6B 18
0326: adc a, x            ; 3C
0327: load w, $180C       ; 18 0C 18
032A: set i, $0044        ; 30 44 00
032D: nop                 ; 00
032E: dec x               ; 60
032F: dec j               ; 66
0330: dec j               ; 66
0331: dec j               ; 66
0332: dec j               ; 66
0333: load w, $6666       ; 18 66 66
0336: load w, $3660       ; 18 60 36
0339: set i, $667F        ; 30 7F 66
033C: dec j               ; 66
033D: dec j               ; 66
033E: dec j               ; 66
033F: pop.r               ; 0E
0340: push.f              ; 06
0341: load w, $6666       ; 18 66 66
0344: cmp x, $3C          ; 6B 3C(<)
0346: dec j               ; 66
0347: set i, $0000        ; 30 00 00
034A: nop                 ; 00
034B: nop                 ; 00
034C: nop                 ; 00
034D: nop                 ; 00
034E: load w, $6C00       ; 18 00 6C
0351: dec x               ; 60
0352: pop a               ; 0C
0353: nop                 ; EC
0354: nop                 ; 00
0355: pop a               ; 0C
0356: set i, $1036        ; 30 36 10
0359: load w, $0000       ; 18 00 00
035C: pop a               ; 0C
035D: dec j               ; 66
035E: load w, $600C       ; 18 0C 60
0361: and w, $60          ; 7E 60(`)
0363: dec j               ; 66
0364: load w, $6066       ; 18 66 60
0367: load w, $1818       ; 18 18 18
036A: and w, $30          ; 7E 30(0)
036C: load w, $66A5       ; 18 A5 66
036F: dec j               ; 66
0370: push.f              ; 06
0371: dec j               ; 66
0372: push.f              ; 06
0373: push.f              ; 06
0374: dec j               ; 66
0375: dec j               ; 66
0376: load w, $1E60       ; 18 60 1E
0379: push.f              ; 06
037A: dec w               ; 63
037B: cmpbit a, $66       ; 76 66(f)
037D: push.f              ; 06
037E: dec j               ; 66
037F: store i, z          ; 1E
0380: dec x               ; 60
0381: load w, $6666       ; 18 66 66
0384: and a, $3C          ; 7F 3C(<)
0386: load w, $0C0C       ; 18 0C 0C
0389: set i, $0030        ; 30 30 00
038C: nop                 ; 00
038D: nop                 ; 00
038E: and y, $66          ; 7C 66(f)
0390: push.f              ; 06
0391: dec j               ; 66
0392: adc a, z            ; 3E
0393: load w, $6666       ; 18 66 66
0396: load w, $1E60       ; 18 60 1E
0399: set i, $666B        ; 30 6B 66
039C: dec j               ; 66
039D: dec j               ; 66
039E: dec j               ; 66
039F: push.f              ; 06
03A0: adc a, x            ; 3C
03A1: load w, $6666       ; 18 66 66
03A4: and a, $18          ; 7F 18
03A6: dec j               ; 66
03A7: load w, $0000       ; 18 00 00
03AA: nop                 ; 00
03AB: nop                 ; 00
03AC: nop                 ; 00
03AD: nop                 ; 00
03AE: nop                 ; 00
03AF: nop                 ; 00
03B0: nop                 ; FE
03B1: adc a, z            ; 3E
03B2: dec j               ; 66
03B3: dec j               ; 66
03B4: nop                 ; 00
03B5: load w, $0018       ; 18 18 00
03B8: load z, i           ; 10
03B9: load w, $1800       ; 18 00 18
03BC: push.f              ; 06
03BD: dec j               ; 66
03BE: load w, $6606       ; 18 06 66
03C1: set i, $6666        ; 30 66 66
03C4: load w, $6666       ; 18 66 66
03C7: load w, $3018       ; 18 18 30
03CA: nop                 ; 00
03CB: load w, $7900       ; 18 00 79
03CE: dec j               ; 66
03CF: dec j               ; 66
03D0: dec j               ; 66
03D1: dec j               ; 66
03D2: push.f              ; 06
03D3: push.f              ; 06
03D4: dec j               ; 66
03D5: dec j               ; 66
03D6: load w, $3666       ; 18 66 36
03D9: push.f              ; 06
03DA: dec w               ; 63
03DB: dec j               ; 66
03DC: dec j               ; 66
03DD: push.f              ; 06
03DE: dec j               ; 66
03DF: add a, a            ; 36
03E0: dec j               ; 66
03E1: load w, $3C66       ; 18 66 3C
03E4: and a, x            ; 77
03E5: dec j               ; 66
03E6: load w, $0C06       ; 18 06 0C
03E9: dec x               ; 60
03EA: set i, $0000        ; 30 00 00
03ED: nop                 ; 00
03EE: dec j               ; 66
03EF: dec j               ; 66
03F0: dec j               ; 66
03F1: dec j               ; 66
03F2: push.f              ; 06
03F3: load w, $667C       ; 18 7C 66
03F6: load w, $3660       ; 18 60 36
03F9: set i, $666B        ; 30 6B 66
03FC: dec j               ; 66
03FD: dec j               ; 66
03FE: dec j               ; 66
03FF: push.f              ; 06
0400: dec x               ; 60
0401: load w, $3C66       ; 18 66 3C
0404: adc a, z            ; 3E
0405: adc a, x            ; 3C
0406: and y, $0C          ; 7C 0C
0408: nop                 ; 00
0409: nop                 ; 00
040A: nop                 ; 00
040B: nop                 ; 00
040C: nop                 ; 00
040D: nop                 ; 00
040E: load w, $6C00       ; 18 00 6C
0411: load w, $FC62       ; 18 62 FC
0414: nop                 ; 00
0415: set i, $000C        ; 30 0C 00
0418: nop                 ; 00
0419: pop a               ; 0C
041A: nop                 ; 00
041B: load w, $3C02       ; 18 02 3C
041E: and w, $7E          ; 7E 7E(~)
0420: adc a, x            ; 3C
0421: and a, y            ; 78
0422: adc a, x            ; 3C
0423: adc a, x            ; 3C
0424: load w, $3C3C       ; 18 3C 3C
0427: nop                 ; 00
0428: pop x               ; 08
0429: dec x               ; 60
042A: nop                 ; 00
042B: pop a               ; 0C
042C: load w, $6602       ; 18 02 66
042F: adc a, z            ; 3E
0430: adc a, x            ; 3C
0431: adc a, z            ; 3E
0432: and w, $06          ; 7E 06
0434: adc a, x            ; 3C
0435: dec j               ; 66
0436: adc a, x            ; 3C
0437: adc a, x            ; 3C
0438: dec j               ; 66
0439: and w, $63          ; 7E 63(c)
043B: dec j               ; 66
043C: adc a, x            ; 3C
043D: push.f              ; 06
043E: adc a, x            ; 3C
043F: dec j               ; 66
0440: adc a, x            ; 3C
0441: load w, $183C       ; 18 3C 18
0444: dec w               ; 63
0445: dec j               ; 66
0446: load w, $3C7E       ; 18 7E 3C
0449: adc a, a            ; 40
044A: adc a, x            ; 3C
044B: nop                 ; 00
044C: nop                 ; 00
044D: nop                 ; 00
044E: and y, $3E          ; 7C 3E(>)
0450: adc a, x            ; 3C
0451: and y, $7C          ; 7C 7C(|)
0453: load w, $6660       ; 18 60 66
0456: adc a, x            ; 3C
0457: dec j               ; 66
0458: dec j               ; 66
0459: and a, y            ; 78
045A: cmp x, $66          ; 6B 66(f)
045C: adc a, x            ; 3C
045D: adc a, z            ; 3E
045E: and y, $06          ; 7C 06
0460: adc a, z            ; 3E
0461: set i, $187C        ; 30 7C 18
0464: add a, a            ; 36
0465: dec j               ; 66
0466: dec x               ; 60
0467: and w, $00          ; 7E 00
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
048D: adc a, x            ; 3C
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
049E: dec x               ; 60
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
04AC: nop                 ; FF
04AD: nop                 ; 00
04AE: nop                 ; 00
04AF: nop                 ; 00
04B0: nop                 ; 00
04B1: nop                 ; 00
04B2: nop                 ; 00
04B3: nop                 ; 00
04B4: adc a, x            ; 3C
04B5: nop                 ; 00
04B6: nop                 ; 00
04B7: adc a, x            ; 3C
04B8: nop                 ; 00
04B9: nop                 ; 00
04BA: nop                 ; 00
04BB: nop                 ; 00
04BC: nop                 ; 00
04BD: push.f              ; 06
04BE: dec x               ; 60
04BF: nop                 ; 00
04C0: nop                 ; 00
04C1: nop                 ; 00
04C2: nop                 ; 00
04C3: nop                 ; 00
04C4: nop                 ; 00
04C5: nop                 ; 00
04C6: adc a, x            ; 3C
04C7: nop                 ; 00
04C8: nop                 ; 00
04C9: nop                 ; 00
04CA: nop                 ; 00
04CB: nop                 ; 00
04CC: nop                 ; 00
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
07F8: nop                 ; CD
07F9: nop                 ; CD
07FA: nop                 ; CD
07FB: nop                 ; CD
07FC: nop                 ; CD
07FD: shr x, $A5          ; 9C A5
07FF: nop                 ; F8
0800: rol w               ; A4
0801: nop                 ; FD
