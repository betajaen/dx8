; DX8 Floppy Disk Image
; Origin: 0000 
; Length: 0800 
0000: jmp $00FB           ; 9C FB 00
0003: load x, $0293       ; 0F 93 02
0006: not x               ; 7A
0007: and x, $E0          ; 6C E0
0009: shr x, $02          ; 8D 02
000B: set a, $3B          ; 25 3B(;)
000D: add a, x            ; 28
000E: store $0286, a      ; 1B 86 02
0011: set a, $3F          ; 25 3F(?)
0013: add a, x            ; 28
0014: store $0287, a      ; 1B 87 02
0017: set a, $42          ; 25 42(B)
0019: add a, x            ; 28
001A: store $0288, a      ; 1B 88 02
001D: resume              ; B2
001E: nop                 ; 00
001F: resume              ; B2
0020: set a, $46          ; 25 46(F)
0022: store $0289, a      ; 1B 89 02
0025: resume              ; B2
0026: set a, $44          ; 25 44(D)
0028: store $0722, a      ; 1B 22 07
002B: set a, $58          ; 25 58(X)
002D: store $0723, a      ; 1B 23 07
0030: set a, $38          ; 25 38(8)
0032: store $0724, a      ; 1B 24 07
0035: set a, $2F          ; 25 2F(/)
0037: store $2F26, a      ; 1B 26 2F
003A: set a, $2F          ; 25 2F(/)
003C: store $5727, a      ; 1B 27 57
003F: set a, $2F          ; 25 2F(/)
0041: store $7F28, a      ; 1B 28 7F
0044: set a, $49          ; 25 49(I)
0046: store $04F2, a      ; 1B F2 04
0049: set a, $4E          ; 25 4E(N)
004B: store $04F3, a      ; 1B F3 04
004E: set a, $53          ; 25 53(S)
0050: store $04F4, a      ; 1B F4 04
0053: set a, $45          ; 25 45(E)
0055: store $04F5, a      ; 1B F5 04
0058: set a, $52          ; 25 52(R)
005A: store $04F6, a      ; 1B F6 04
005D: set a, $54          ; 25 54(T)
005F: store $04F7, a      ; 1B F7 04
0062: set a, $46          ; 25 46(F)
0064: store $051A, a      ; 1B 1A 05
0067: set a, $4C          ; 25 4C(L)
0069: store $051B, a      ; 1B 1B 05
006C: set a, $4F          ; 25 4F(O)
006E: store $051C, a      ; 1B 1C 05
0071: set a, $50          ; 25 50(P)
0073: store $051D, a      ; 1B 1D 05
0076: set a, $50          ; 25 50(P)
0078: store $051E, a      ; 1B 1E 05
007B: set a, $59          ; 25 59(Y)
007D: store $051F, a      ; 1B 1F 05
0080: return              ; 20
0081: load x, $0296       ; 0F 96 02
0084: cmpbit x, $40       ; 63 40(@)
0086: jmp.z $008C         ; AD 8C 00
0089: jmp $009A           ; 9C 9A 00
008C: set x, $20          ; 21 20
008E: store $2F26, x      ; 17 26 2F
0091: store $5727, x      ; 17 27 57
0094: store $7F28, x      ; 17 28 7F
0097: jmp $00A5           ; 9C A5 00
009A: set x, $2F          ; 21 2F(/)
009C: store $2F26, x      ; 17 26 2F
009F: store $5727, x      ; 17 27 57
00A2: store $7F28, x      ; 17 28 7F
00A5: return              ; 20
00A6: set a, $00          ; 25 00
00A8: store $0000, a      ; 1B 00 00
00AB: set a, $00          ; 25 00
00AD: store $0001, a      ; 1B 01 00
00B0: set a, $03          ; 25 03
00B2: store $0002, a      ; 1B 02 00
00B5: set a, $00          ; 25 00
00B7: store $0003, a      ; 1B 03 00
00BA: set a, $1E          ; 25 1E
00BC: store $0004, a      ; 1B 04 00
00BF: set a, $00          ; 25 00
00C1: store $0005, a      ; 1B 05 00
00C4: set a, $20          ; 25 20
00C6: store $0006, a      ; 1B 06 00
00C9: set a, $00          ; 25 00
00CB: store $0007, a      ; 1B 07 00
00CE: set a, $00          ; 25 00
00D0: store $026E, a      ; 1B 6E 02
00D3: set a, $00          ; 25 00
00D5: store $026F, a      ; 1B 6F 02
00D8: set a, $00          ; 25 00
00DA: store $0270, a      ; 1B 70 02
00DD: set a, $00          ; 25 00
00DF: store $0271, a      ; 1B 71 02
00E2: set a, $00          ; 25 00
00E4: store $0272, a      ; 1B 72 02
00E7: set a, $00          ; 25 00
00E9: store $0273, a      ; 1B 73 02
00EC: set a, $00          ; 25 00
00EE: store $0274, a      ; 1B 74 02
00F1: set a, $FF          ; 25 FF
00F3: store $0275, a      ; 1B 75 02
00F6: set a, $04          ; 25 04
00F8: store $027F, a      ; 1B 7F 02
00FB: set a, $00          ; 25 00
00FD: store $026E, a      ; 1B 6E 02
0100: set a, $00          ; 25 00
0102: store $026F, a      ; 1B 6F 02
0105: set a, $00          ; 25 00
0107: store $0270, a      ; 1B 70 02
010A: set a, $00          ; 25 00
010C: store $0271, a      ; 1B 71 02
010F: set a, $00          ; 25 00
0111: store $0272, a      ; 1B 72 02
0114: set a, $00          ; 25 00
0116: store $0273, a      ; 1B 73 02
0119: set a, $00          ; 25 00
011B: store $0274, a      ; 1B 74 02
011E: set a, $FF          ; 25 FF
0120: store $0275, a      ; 1B 75 02
0123: push a              ; 05
0124: set a, $20          ; 25 20
0126: store $026F, a      ; 1B 6F 02
0129: set a, $89          ; 25 89
012B: store $0272, a      ; 1B 72 02
012E: set a, $02          ; 25 02
0130: store $0273, a      ; 1B 73 02
0133: set a, $00          ; 25 00
0135: store $0274, a      ; 1B 74 02
0138: set a, $28          ; 25 28(()
013A: store $0275, a      ; 1B 75 02
013D: int $01             ; B1 01
013F: push a              ; 05
0140: set a, $C8          ; 25 C8
0142: jmp.z $0149         ; AD 49 01
0145: dec a               ; 59
0146: jmp $0142           ; 9C 42 01
0149: pop a               ; 0C
014A: pop a               ; 0C
014B: push a              ; 05
014C: set a, $20          ; 25 20
014E: store $026F, a      ; 1B 6F 02
0151: set a, $89          ; 25 89
0153: store $0272, a      ; 1B 72 02
0156: set a, $2A          ; 25 2A(*)
0158: store $0273, a      ; 1B 73 02
015B: set a, $00          ; 25 00
015D: store $0274, a      ; 1B 74 02
0160: set a, $28          ; 25 28(()
0162: store $0275, a      ; 1B 75 02
0165: int $01             ; B1 01
0167: push a              ; 05
0168: set a, $C8          ; 25 C8
016A: jmp.z $0171         ; AD 71 01
016D: dec a               ; 59
016E: jmp $016A           ; 9C 6A 01
0171: pop a               ; 0C
0172: pop a               ; 0C
0173: push a              ; 05
0174: set a, $20          ; 25 20
0176: store $026F, a      ; 1B 6F 02
0179: set a, $89          ; 25 89
017B: store $0272, a      ; 1B 72 02
017E: set a, $52          ; 25 52(R)
0180: store $0273, a      ; 1B 73 02
0183: set a, $00          ; 25 00
0185: store $0274, a      ; 1B 74 02
0188: set a, $28          ; 25 28(()
018A: store $0275, a      ; 1B 75 02
018D: int $01             ; B1 01
018F: push a              ; 05
0190: set a, $C8          ; 25 C8
0192: jmp.z $0199         ; AD 99 01
0195: dec a               ; 59
0196: jmp $0192           ; 9C 92 01
0199: pop a               ; 0C
019A: pop a               ; 0C
019B: push a              ; 05
019C: set a, $20          ; 25 20
019E: store $026F, a      ; 1B 6F 02
01A1: set a, $89          ; 25 89
01A3: store $0272, a      ; 1B 72 02
01A6: set a, $7A          ; 25 7A(z)
01A8: store $0273, a      ; 1B 73 02
01AB: set a, $00          ; 25 00
01AD: store $0274, a      ; 1B 74 02
01B0: set a, $28          ; 25 28(()
01B2: store $0275, a      ; 1B 75 02
01B5: int $01             ; B1 01
01B7: push a              ; 05
01B8: set a, $C8          ; 25 C8
01BA: jmp.z $01C1         ; AD C1 01
01BD: dec a               ; 59
01BE: jmp $01BA           ; 9C BA 01
01C1: pop a               ; 0C
01C2: pop a               ; 0C
01C3: call $0026          ; 1F 26 00
01C6: nop                 ; 00
01C7: call $0081          ; 1F 81 00
01CA: jmp $01C6           ; 9C C6 01
01CD: nop                 ; 00
01CE: store $6C66, y      ; 18 66 6C
01D1: store $3846, y      ; 18 46 38
01D4: store $0C30, y      ; 18 30 0C
01D7: adc a, a            ; 36
01D8: nop                 ; 00
01D9: nop                 ; 00
01DA: nop                 ; 00
01DB: nop                 ; 00
01DC: sub a, w            ; 40
01DD: adw                 ; 3C 18
01DF: adw                 ; 3C 3C(<)
01E1: adc y, $7E          ; 38 7E(~)
01E3: adw                 ; 3C 7E(~)
01E5: adw                 ; 3C 3C(<)
01E7: nop                 ; 00
01E8: nop                 ; 00
01E9: cmp z, $00          ; 60 00
01EB: pop a               ; 0C
01EC: adw                 ; 3C 3C(<)
01EE: adw                 ; 3C 3E(>)
01F0: adw                 ; 3C 3E(>)
01F2: not a               ; 7E
01F3: not a               ; 7E
01F4: adw                 ; 3C 66(f)
01F6: adw                 ; 3C 60(`)
01F8: cmpbit w, $06       ; 66 06
01FA: cmpbit x, $66       ; 63 66(f)
01FC: adw                 ; 3C 3E(>)
01FE: adw                 ; 3C 3E(>)
0200: adw                 ; 3C 7E(~)
0202: cmpbit w, $66       ; 66 66(f)
0204: cmpbit x, $66       ; 63 66(f)
0206: cmpbit w, $7E       ; 66 7E(~)
0208: adw                 ; 3C 02
020A: adw                 ; 3C 10
020C: nop                 ; 00
020D: store $0600, y      ; 18 00 06
0210: nop                 ; 00
0211: cmp z, $00          ; 60 00
0213: and a, $00          ; 70 00
0215: push.f              ; 06
0216: store $0660, y      ; 18 60 06
0219: adc y, $00          ; 38 00
021B: nop                 ; 00
021C: nop                 ; 00
021D: nop                 ; 00
021E: nop                 ; 00
021F: nop                 ; 00
0220: nop                 ; 00
0221: store $0000, y      ; 18 00 00
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
022E: store $FE66, y      ; 18 66 FE
0231: not z               ; 7C
0232: cmpbit w, $6C       ; 66 6C(l)
0234: store $1818, y      ; 18 18 18
0237: store.xy a          ; 1C
0238: load y, $0000       ; 10 00 00
023B: nop                 ; 00
023C: cmp z, $66          ; 60 66(f)
023E: store.xy a          ; 1C
023F: cmpbit w, $66       ; 66 66(f)
0241: adw                 ; 3C 06
0243: cmpbit w, $60       ; 66 60(`)
0245: cmpbit w, $66       ; 66 66(f)
0247: store $3018, y      ; 18 18 30
024A: nop                 ; 00
024B: store $4262, y      ; 18 62 42
024E: cmpbit w, $66       ; 66 66(f)
0250: cmpbit w, $66       ; 66 66(f)
0252: push.f              ; 06
0253: push.f              ; 06
0254: cmpbit w, $66       ; 66 66(f)
0256: store $3660, y      ; 18 60 36
0259: push.f              ; 06
025A: or z, $66           ; 77 66(f)
025C: cmpbit w, $66       ; 66 66(f)
025E: cmpbit w, $66       ; 66 66(f)
0260: cmpbit w, $18       ; 66 18
0262: cmpbit w, $66       ; 66 66(f)
0264: cmpbit x, $66       ; 63 66(f)
0266: cmpbit w, $60       ; 66 60(`)
0268: pop a               ; 0C
0269: push.f              ; 06
026A: add w, $38          ; 30 38(8)
026C: nop                 ; 00
026D: add w, $00          ; 30 00
026F: push.f              ; 06
0270: nop                 ; 00
0271: cmp z, $00          ; 60 00
0273: store $0600, y      ; 18 00 06
0276: nop                 ; 00
0277: nop                 ; 00
0278: push.f              ; 06
0279: add w, $00          ; 30 00
027B: nop                 ; 00
027C: nop                 ; 00
027D: nop                 ; 00
027E: nop                 ; 00
027F: nop                 ; 00
0280: nop                 ; 00
0281: store $0000, y      ; 18 00 00
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
028E: store $6C66, y      ; 18 66 6C
0291: push.f              ; 06
0292: add w, $6C          ; 30 6C(l)
0294: store $300C, y      ; 18 0C 30
0297: xor a, x            ; 7F
0298: load y, $0000       ; 10 00 00
029B: nop                 ; 00
029C: add w, $66          ; 30 66(f)
029E: store $6060, y      ; 18 60 60
02A1: adc a, a            ; 36
02A2: sub a, y            ; 3E
02A3: push.f              ; 06
02A4: add w, $66          ; 30 66(f)
02A6: cmpbit w, $18       ; 66 18
02A8: store $7E18, y      ; 18 18 7E
02AB: add w, $60          ; 30 60(`)
02AD: ror z               ; 99
02AE: cmpbit w, $66       ; 66 66(f)
02B0: push.f              ; 06
02B1: cmpbit w, $06       ; 66 06
02B3: push.f              ; 06
02B4: push.f              ; 06
02B5: cmpbit w, $18       ; 66 18
02B7: cmp z, $1E          ; 60 1E
02B9: push.f              ; 06
02BA: xor a, x            ; 7F
02BB: and z, $66          ; 6E 66(f)
02BD: cmpbit w, $66       ; 66 66(f)
02BF: cmpbit w, $06       ; 66 06
02C1: store $6666, y      ; 18 66 66
02C4: cmpbit x, $3C       ; 63 3C(<)
02C6: cmpbit w, $30       ; 66 30(0)
02C8: pop a               ; 0C
02C9: pop a               ; 0C
02CA: add w, $6C          ; 30 6C(l)
02CC: nop                 ; 00
02CD: nop                 ; 00
02CE: adw                 ; 3C 3E(>)
02D0: adw                 ; 3C 7C(|)
02D2: adw                 ; 3C 3C(<)
02D4: not z               ; 7C
02D5: sub a, y            ; 3E
02D6: store.xy a          ; 1C
02D7: and a, $66          ; 70 66(f)
02D9: add w, $37          ; 30 37(7)
02DB: sub a, y            ; 3E
02DC: adw                 ; 3C 3E(>)
02DE: not z               ; 7C
02DF: or y, $7C           ; 76 7C(|)
02E1: adw                 ; 3C 66(f)
02E3: cmpbit w, $6B       ; 66 6B(k)
02E5: cmpbit w, $66       ; 66 66(f)
02E7: not a               ; 7E
02E8: nop                 ; 00
02E9: nop                 ; 00
02EA: nop                 ; 00
02EB: nop                 ; 00
02EC: nop                 ; 00
02ED: nop                 ; 00
02EE: store $6C00, y      ; 18 00 6C
02F1: adw                 ; 3C 18
02F3: adc y, $00          ; 38 00
02F5: pop a               ; 0C
02F6: add w, $1C          ; 30 1C
02F8: not z               ; 7C
02F9: nop                 ; 00
02FA: not a               ; 7E
02FB: nop                 ; 00
02FC: store $1866, y      ; 18 66 18
02FF: adc y, $38          ; 38 38(8)
0301: adc a, a            ; 36
0302: cmp z, $3E          ; 60 3E(>)
0304: store $7C3C, y      ; 18 3C 7C
0307: nop                 ; 00
0308: nop                 ; 00
0309: pop a               ; 0C
030A: nop                 ; 00
030B: cmp z, $38          ; 60 38(8)
030D: jmp.eq $3E7E        ; A5 7E 3E
0310: push.f              ; 06
0311: cmpbit w, $1E       ; 66 1E
0313: store.xy w          ; 1E
0314: or y, $7E           ; 76 7E(~)
0316: store $0E60, y      ; 18 60 0E
0319: push.f              ; 06
031A: and a, w            ; 6B
031B: not a               ; 7E
031C: cmpbit w, $3E       ; 66 3E(>)
031E: cmpbit w, $3E       ; 66 3E(>)
0320: adw                 ; 3C 18
0322: cmpbit w, $66       ; 66 66(f)
0324: and a, w            ; 6B
0325: store $183C, y      ; 18 3C 18
0328: pop a               ; 0C
0329: store $4430, y      ; 18 30 44
032C: nop                 ; 00
032D: nop                 ; 00
032E: cmp z, $66          ; 60 66(f)
0330: cmpbit w, $66       ; 66 66(f)
0332: cmpbit w, $18       ; 66 18
0334: cmpbit w, $66       ; 66 66(f)
0336: store $3660, y      ; 18 60 36
0339: add w, $7F          ; 30 7F()
033B: cmpbit w, $66       ; 66 66(f)
033D: cmpbit w, $66       ; 66 66(f)
033F: pop.r               ; 0E
0340: push.f              ; 06
0341: store $6666, y      ; 18 66 66
0344: and a, w            ; 6B
0345: adw                 ; 3C 66(f)
0347: add w, $00          ; 30 00
0349: nop                 ; 00
034A: nop                 ; 00
034B: nop                 ; 00
034C: nop                 ; 00
034D: nop                 ; 00
034E: store $6C00, y      ; 18 00 6C
0351: cmp z, $0C          ; 60 0C
0353: nop                 ; EC
0354: nop                 ; 00
0355: pop a               ; 0C
0356: add w, $36          ; 30 36(6)
0358: load y, $0018       ; 10 18 00
035B: nop                 ; 00
035C: pop a               ; 0C
035D: cmpbit w, $18       ; 66 18
035F: pop a               ; 0C
0360: cmp z, $7E          ; 60 7E(~)
0362: cmp z, $66          ; 60 66(f)
0364: store $6066, y      ; 18 66 60
0367: store $1818, y      ; 18 18 18
036A: not a               ; 7E
036B: add w, $18          ; 30 18
036D: jmp.eq $6666        ; A5 66 66
0370: push.f              ; 06
0371: cmpbit w, $06       ; 66 06
0373: push.f              ; 06
0374: cmpbit w, $66       ; 66 66(f)
0376: store $1E60, y      ; 18 60 1E
0379: push.f              ; 06
037A: cmpbit x, $76       ; 63 76(v)
037C: cmpbit w, $06       ; 66 06
037E: cmpbit w, $1E       ; 66 1E
0380: cmp z, $18          ; 60 18
0382: cmpbit w, $66       ; 66 66(f)
0384: xor a, x            ; 7F
0385: adw                 ; 3C 18
0387: pop a               ; 0C
0388: pop a               ; 0C
0389: add w, $30          ; 30 30(0)
038B: nop                 ; 00
038C: nop                 ; 00
038D: nop                 ; 00
038E: not z               ; 7C
038F: cmpbit w, $06       ; 66 06
0391: cmpbit w, $3E       ; 66 3E(>)
0393: store $6666, y      ; 18 66 66
0396: store $1E60, y      ; 18 60 1E
0399: add w, $6B          ; 30 6B(k)
039B: cmpbit w, $66       ; 66 66(f)
039D: cmpbit w, $66       ; 66 66(f)
039F: push.f              ; 06
03A0: adw                 ; 3C 18
03A2: cmpbit w, $66       ; 66 66(f)
03A4: xor a, x            ; 7F
03A5: store $1866, y      ; 18 66 18
03A8: nop                 ; 00
03A9: nop                 ; 00
03AA: nop                 ; 00
03AB: nop                 ; 00
03AC: nop                 ; 00
03AD: nop                 ; 00
03AE: nop                 ; 00
03AF: nop                 ; 00
03B0: nop                 ; FE
03B1: sub a, y            ; 3E
03B2: cmpbit w, $66       ; 66 66(f)
03B4: nop                 ; 00
03B5: store $0018, y      ; 18 18 00
03B8: load y, $0018       ; 10 18 00
03BB: store $6606, y      ; 18 06 66
03BE: store $6606, y      ; 18 06 66
03C1: add w, $66          ; 30 66(f)
03C3: cmpbit w, $18       ; 66 18
03C5: cmpbit w, $66       ; 66 66(f)
03C7: store $3018, y      ; 18 18 30
03CA: nop                 ; 00
03CB: store $7900, y      ; 18 00 79
03CE: cmpbit w, $66       ; 66 66(f)
03D0: cmpbit w, $66       ; 66 66(f)
03D2: push.f              ; 06
03D3: push.f              ; 06
03D4: cmpbit w, $66       ; 66 66(f)
03D6: store $3666, y      ; 18 66 36
03D9: push.f              ; 06
03DA: cmpbit x, $66       ; 63 66(f)
03DC: cmpbit w, $06       ; 66 06
03DE: cmpbit w, $36       ; 66 36(6)
03E0: cmpbit w, $18       ; 66 18
03E2: cmpbit w, $3C       ; 66 3C(<)
03E4: or z, $66           ; 77 66(f)
03E6: store $0C06, y      ; 18 06 0C
03E9: cmp z, $30          ; 60 30(0)
03EB: nop                 ; 00
03EC: nop                 ; 00
03ED: nop                 ; 00
03EE: cmpbit w, $66       ; 66 66(f)
03F0: cmpbit w, $66       ; 66 66(f)
03F2: push.f              ; 06
03F3: store $667C, y      ; 18 7C 66
03F6: store $3660, y      ; 18 60 36
03F9: add w, $6B          ; 30 6B(k)
03FB: cmpbit w, $66       ; 66 66(f)
03FD: cmpbit w, $66       ; 66 66(f)
03FF: push.f              ; 06
0400: cmp z, $18          ; 60 18
0402: cmpbit w, $3C       ; 66 3C(<)
0404: sub a, y            ; 3E
0405: adw                 ; 3C 7C(|)
0407: pop a               ; 0C
0408: nop                 ; 00
0409: nop                 ; 00
040A: nop                 ; 00
040B: nop                 ; 00
040C: nop                 ; 00
040D: nop                 ; 00
040E: store $6C00, y      ; 18 00 6C
0411: store $FC62, y      ; 18 62 FC
0414: nop                 ; 00
0415: add w, $0C          ; 30 0C
0417: nop                 ; 00
0418: nop                 ; 00
0419: pop a               ; 0C
041A: nop                 ; 00
041B: store $3C02, y      ; 18 02 3C
041E: not a               ; 7E
041F: not a               ; 7E
0420: adw                 ; 3C 78(x)
0422: adw                 ; 3C 3C(<)
0424: store $3C3C, y      ; 18 3C 3C
0427: nop                 ; 00
0428: pop x               ; 08
0429: cmp z, $00          ; 60 00
042B: pop a               ; 0C
042C: store $6602, y      ; 18 02 66
042F: sub a, y            ; 3E
0430: adw                 ; 3C 3E(>)
0432: not a               ; 7E
0433: push.f              ; 06
0434: adw                 ; 3C 66(f)
0436: adw                 ; 3C 3C(<)
0438: cmpbit w, $7E       ; 66 7E(~)
043A: cmpbit x, $66       ; 63 66(f)
043C: adw                 ; 3C 06
043E: adw                 ; 3C 66(f)
0440: adw                 ; 3C 18
0442: adw                 ; 3C 18
0444: cmpbit x, $66       ; 63 66(f)
0446: store $3C7E, y      ; 18 7E 3C
0449: sub a, w            ; 40
044A: adw                 ; 3C 00
044C: nop                 ; 00
044D: nop                 ; 00
044E: not z               ; 7C
044F: sub a, y            ; 3E
0450: adw                 ; 3C 7C(|)
0452: not z               ; 7C
0453: store $6660, y      ; 18 60 66
0456: adw                 ; 3C 66(f)
0458: cmpbit w, $78       ; 66 78(x)
045A: and a, w            ; 6B
045B: cmpbit w, $3C       ; 66 3C(<)
045D: sub a, y            ; 3E
045E: not z               ; 7C
045F: push.f              ; 06
0460: sub a, y            ; 3E
0461: add w, $7C          ; 30 7C(|)
0463: store $6636, y      ; 18 36 66
0466: cmp z, $7E          ; 60 7E(~)
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
048D: adw                 ; 3C 00
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
049E: cmp z, $00          ; 60 00
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
04B4: adw                 ; 3C 00
04B6: nop                 ; 00
04B7: adw                 ; 3C 00
04B9: nop                 ; 00
04BA: nop                 ; 00
04BB: nop                 ; 00
04BC: nop                 ; 00
04BD: push.f              ; 06
04BE: cmp z, $00          ; 60 00
04C0: nop                 ; 00
04C1: nop                 ; 00
04C2: nop                 ; 00
04C3: nop                 ; 00
04C4: nop                 ; 00
04C5: nop                 ; 00
04C6: adw                 ; 3C 00
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
07F8: offset $F800        ; B5 00 F8
07FB: jmp $00A6           ; 9C A6 00
07FE: rjmp $FA            ; A4 FA
