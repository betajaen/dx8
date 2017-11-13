Interrupt[$00] = $0010
Interrupt[$01] = $0013
Interrupt[$02] = $002E
Interrupt[$03] = $0000
Interrupt[$04] = $0000
Interrupt[$05] = $0000
Interrupt[$06] = $0000
Interrupt[$07] = $0000

0010: jmp $00B4           ; 9C B4 00
0013: load x, $5014       ; 0F 14 50
0016: not x               ; 7A
0017: and x, $E0          ; 6C E0
0019: shr x, $02          ; 8D 02
001B: set a, $3B          ; 25 3B
001D: add a, x            ; 28
001E: store $5001, a      ; 1B 01 50
0021: set a, $3F          ; 25 3F
0023: add a, x            ; 28
0024: store $5002, a      ; 1B 02 50
0027: set a, $42          ; 25 42
0029: add a, x            ; 28
002A: store $5003, a      ; 1B 03 50
002D: resume              ; AB
002E: nop                 ; 00
002F: resume              ; AB
0030: load a, $4000       ; 13 00 40
0033: push a              ; 05
0034: set z, $00          ; 23 00
0036: store $4000, z      ; 19 00 40
0039: set a, $46          ; 25 46
003B: store $8499, a      ; 1B 99 84
003E: set a, $4C          ; 25 4C
0040: store $849A, a      ; 1B 9A 84
0043: set a, $4F          ; 25 4F
0045: store $849B, a      ; 1B 9B 84
0048: set a, $50          ; 25 50
004A: store $AC9D, a      ; 1B 9D AC
004D: set a, $50          ; 25 50
004F: store $D49E, a      ; 1B 9E D4
0052: set a, $59          ; 25 59
0054: store $FC9F, a      ; 1B 9F FC
0057: pop a               ; 0C
0058: store $4000, a      ; 1B 00 40
005B: return              ; 20
005C: load a, $4000       ; 13 00 40
005F: push a              ; 05
0060: set z, $00          ; 23 00
0062: store $4000, z      ; 19 00 40
0065: load x, $5017       ; 0F 17 50
0068: cmpbit x, $40       ; 63 40
006A: jmp.z $0070         ; A8 70 00
006D: jmp $0091           ; 9C 91 00
0070: set a, $20          ; 25 20
0072: store $8499, a      ; 1B 99 84
0075: set a, $20          ; 25 20
0077: store $849A, a      ; 1B 9A 84
007A: set a, $20          ; 25 20
007C: store $849B, a      ; 1B 9B 84
007F: set a, $20          ; 25 20
0081: store $AC9D, a      ; 1B 9D AC
0084: set a, $20          ; 25 20
0086: store $D49E, a      ; 1B 9E D4
0089: set a, $20          ; 25 20
008B: store $FC9F, a      ; 1B 9F FC
008E: jmp $00AF           ; 9C AF 00
0091: set a, $46          ; 25 46
0093: store $8499, a      ; 1B 99 84
0096: set a, $4C          ; 25 4C
0098: store $849A, a      ; 1B 9A 84
009B: set a, $4F          ; 25 4F
009D: store $849B, a      ; 1B 9B 84
00A0: set a, $50          ; 25 50
00A2: store $AC9D, a      ; 1B 9D AC
00A5: set a, $50          ; 25 50
00A7: store $D49E, a      ; 1B 9E D4
00AA: set a, $59          ; 25 59
00AC: store $FC9F, a      ; 1B 9F FC
00AF: pop a               ; 0C
00B0: store $4000, a      ; 1B 00 40
00B3: return              ; 20
00B4: set a, $04          ; 25 04
00B6: store $5000, a      ; 1B 00 50
00B9: push a              ; 05
00BA: set a, $20          ; 25 20
00BC: store $4010, a      ; 1B 10 40
00BF: set a, $00          ; 25 00
00C1: store $4012, a      ; 1B 12 40
00C4: set a, $80          ; 25 80
00C6: store $4013, a      ; 1B 13 40
00C9: set a, $00          ; 25 00
00CB: store $4014, a      ; 1B 14 40
00CE: set a, $28          ; 25 28
00D0: store $4015, a      ; 1B 15 40
00D3: int $01             ; AA 01
00D5: push a              ; 05
00D6: set a, $C8          ; 25 C8
00D8: jmp.z $00DF         ; A8 DF 00
00DB: dec a               ; 59
00DC: jmp $00D8           ; 9C D8 00
00DF: pop a               ; 0C
00E0: pop a               ; 0C
00E1: push a              ; 05
00E2: set a, $20          ; 25 20
00E4: store $4010, a      ; 1B 10 40
00E7: set a, $00          ; 25 00
00E9: store $4012, a      ; 1B 12 40
00EC: set a, $A8          ; 25 A8
00EE: store $4013, a      ; 1B 13 40
00F1: set a, $00          ; 25 00
00F3: store $4014, a      ; 1B 14 40
00F6: set a, $28          ; 25 28
00F8: store $4015, a      ; 1B 15 40
00FB: int $01             ; AA 01
00FD: push a              ; 05
00FE: set a, $C8          ; 25 C8
0100: jmp.z $0107         ; A8 07 01
0103: dec a               ; 59
0104: jmp $0100           ; 9C 00 01
0107: pop a               ; 0C
0108: pop a               ; 0C
0109: push a              ; 05
010A: set a, $20          ; 25 20
010C: store $4010, a      ; 1B 10 40
010F: set a, $00          ; 25 00
0111: store $4012, a      ; 1B 12 40
0114: set a, $D0          ; 25 D0
0116: store $4013, a      ; 1B 13 40
0119: set a, $00          ; 25 00
011B: store $4014, a      ; 1B 14 40
011E: set a, $28          ; 25 28
0120: store $4015, a      ; 1B 15 40
0123: int $01             ; AA 01
0125: push a              ; 05
0126: set a, $C8          ; 25 C8
0128: jmp.z $012F         ; A8 2F 01
012B: dec a               ; 59
012C: jmp $0128           ; 9C 28 01
012F: pop a               ; 0C
0130: pop a               ; 0C
0131: push a              ; 05
0132: set a, $20          ; 25 20
0134: store $4010, a      ; 1B 10 40
0137: set a, $00          ; 25 00
0139: store $4012, a      ; 1B 12 40
013C: set a, $F8          ; 25 F8
013E: store $4013, a      ; 1B 13 40
0141: set a, $00          ; 25 00
0143: store $4014, a      ; 1B 14 40
0146: set a, $28          ; 25 28
0148: store $4015, a      ; 1B 15 40
014B: int $01             ; AA 01
014D: push a              ; 05
014E: set a, $C8          ; 25 C8
0150: jmp.z $0157         ; A8 57 01
0153: dec a               ; 59
0154: jmp $0150           ; 9C 50 01
0157: pop a               ; 0C
0158: pop a               ; 0C
0159: call $0030          ; 1F 30 00
015C: call $005C          ; 1F 5C 00
015F: jmp $015C           ; 9C 5C 01
