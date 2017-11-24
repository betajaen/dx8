0000:          : jmp $012F                ; C4 2F 01  LBL_0303 $012F
0003:          : nop                      ; 00
0004:          : pop x                    ; 08
0005:          : push x                   ; 01
0006:          : nop                      ; 00
0007:          : nop                      ; 00
0008:          : nop                      ; 00
0009:          : nop                      ; 00
000A:          : nop                      ; 00
000B:          : nop                      ; 00
000C:          : nop                      ; 00
000D:          : nop                      ; 00
000E:          : nop                      ; 00
000F:          : nop                      ; 00
0010:          : nop                      ; 00
0011:          : nop                      ; 00
0012:          : nop                      ; 00
0013:          : nop                      ; 00
0014:          : nop                      ; 00
0015:          : nop                      ; 00
0016:          : nop                      ; 00
0017:          : nop                      ; 00
0018:          : nop                      ; 00
0019:          : nop                      ; 00
001A:          : nop                      ; 00
001B:          : nop                      ; 00
001C:          : nop                      ; 00
001D:          : nop                      ; 00
001E:          : nop                      ; 00
001F:          : nop                      ; 00
0020:          : nop                      ; 00
0021:          : nop                      ; 00
0022:          : nop                      ; 00
0023:          : nop                      ; 00
0024:          : nop                      ; 00
0025:          : nop                      ; 00
0026:          : nop                      ; 00
0027:          : nop                      ; 00
0028:          : nop                      ; 00
0029:          : nop                      ; 00
002A:          : nop                      ; 00
002B:          : nop                      ; 00
002C:          : nop                      ; 00
002D:          : nop                      ; 00
002E:          : nop                      ; 00
002F:          : nop                      ; 00
0030:          : nop                      ; 00
0031:          : nop                      ; 00
0032:          : nop                      ; 00
0033:          : nop                      ; 00
0034:          : nop                      ; 00
0035:          : nop                      ; 00
0036:          : nop                      ; 00
0037:          : nop                      ; 00
0038:          : nop                      ; 00
0039:          : nop                      ; 00
003A:          : nop                      ; 00
003B:          : nop                      ; 00
003C:          : nop                      ; 00
003D:          : nop                      ; 00
003E:          : nop                      ; 00
003F:          : nop                      ; 00
0040:          : nop                      ; 00
0041:          : nop                      ; 00
0042:          : nop                      ; 00
0043:          : nop                      ; 00
0044:          : nop                      ; 00
0045:          : nop                      ; 00
0046: FUN_0070 : set j, $FFFF             ; 3F FF FF
0049: LBL_0073 : dec j                    ; 7A
004A:          : jmp.nz $0049             ; D7 49 00  LBL_0073 $0049
004D:          : return                   ; 30
004E: FUN_0078 : set i, $0020             ; 3E 20 00
0051: LBL_0081 : call $0046               ; 29 46 00  FUN_0070 $0046
0054:          : dec i                    ; 79
0055:          : jmp.nz $0051             ; D7 51 00  LBL_0081 $0051
0058:          : return                   ; 30
0059: FUN_0089 : set i, $8000             ; 3E 00 80
005C:          : set j, $2800             ; 3F 00 28
005F:          : set a, $20               ; 3D 20
0061:          : call $737F               ; 29 7F 73  ERROR $737F
0064:          : return                   ; 30
0065: FUN_0101 : set j, $0000             ; 3F 00 00
0068:          : add j, y                 ; 4A
0069:          : mul j, $0028             ; 62 28 00
006C:          : add j, x                 ; 49
006D:          : add j, $8000             ; 4C 00 80
0070:          : add a, $30               ; 51 30(0)
0072:          : store j, a               ; 1F
0073:          : return                   ; 30
0074: FUN_0116 : set j, $0000             ; 3F 00 00
0077:          : add j, y                 ; 4A
0078:          : mul j, $0028             ; 62 28 00
007B:          : add j, x                 ; 49
007C:          : add j, $8000             ; 4C 00 80
007F:          : store j, a               ; 1F
0080:          : return                   ; 30
0081:          : set j, $0000             ; 3F 00 00
0084:          : add j, y                 ; 4A
0085:          : mul j, $0028             ; 62 28 00
0088:          : add j, x                 ; 49
0089:          : add j, $8000             ; 4C 00 80
008C:          : load a, j                ; 12
008D:          : return                   ; 30
008E:          : load a, $0803            ; 19 03 08
0091:          : cmp a                    ; 7F
0092:          : jmp.eq $0099             ; CD 99 00  LBL_0153 $0099
0095:          : inc a                    ; 71
0096:          : store $0803, a           ; 26 03 08
0099: LBL_0153 : return                   ; 30
009A:          : nop                      ; 00
009B:          : return                   ; 30
009C: FUN_0156 : call $004E               ; 29 4E 00  FUN_0078 $004E
009F:          : call $0059               ; 29 59 00  FUN_0089 $0059
00A2:          : set a, $08               ; 3D 08
00A4:          : store $0804, a           ; 26 04 08
00A7:          : set a, $01               ; 3D 01
00A9:          : store $0803, a           ; 26 03 08
00AC:          : set a, $00               ; 3D 00
00AE:          : store $0805, a           ; 26 05 08
00B1:          : set a, $0F               ; 3D 0F
00B3:          : store $0806, a           ; 26 06 08
00B6:          : set a, $0F               ; 3D 0F
00B8:          : store $0826, a           ; 26 26 08
00BB:          : return                   ; 30
00BC: FUN_0188 : return                   ; 30
00BD: FUN_0189 : return                   ; 30
00BE: FUN_0190 : load a, $0804            ; 19 04 08
00C1:          : set x, $01               ; 39 01
00C3:          : set y, $01               ; 3A 01
00C5:          : call $0065               ; 29 65 00  FUN_0101 $0065
00C8:          : set j, $0806             ; 3F 06 08
00CB:          : add j, $0000             ; 4C 00 00
00CE:          : load x, j                ; 13
00CF:          : set j, $0826             ; 3F 26 08
00D2:          : add j, $0000             ; 4C 00 00
00D5:          : load y, j                ; 14
00D6:          : set a, $73               ; 3D 73(s)
00D8:          : call $0074               ; 29 74 00  FUN_0116 $0074
00DB:          : return                   ; 30
00DC: FUN_0220 : load a, $0804            ; 19 04 08
00DF:          : cmpi a, $01              ; 88 01
00E1:          : jmp.eq $00F6             ; CD F6 00  LBL_0246 $00F6
00E4:          : cmpi a, $02              ; 88 02
00E6:          : jmp.eq $0102             ; CD 02 01  LBL_0258 $0102
00E9:          : cmpi a, $08              ; 88 08
00EB:          : jmp.eq $011A             ; CD 1A 01  LBL_0282 $011A
00EE:          : cmpi a, $04              ; 88 04
00F0:          : jmp.eq $010E             ; CD 0E 01  LBL_0270 $010E
00F3:          : jmp $00F6                ; C4 F6 00  LBL_0246 $00F6
00F6: LBL_0246 : set j, $0826             ; 3F 26 08
00F9:          : add j, $0000             ; 4C 00 00
00FC:          : load y, j                ; 14
00FD:          : dec y                    ; 75
00FE:          : store j, y               ; 21
00FF:          : jmp $012E                ; C4 2E 01  LBL_0302 $012E
0102: LBL_0258 : set j, $0826             ; 3F 26 08
0105:          : add j, $0000             ; 4C 00 00
0108:          : load y, j                ; 14
0109:          : inc y                    ; 6E
010A:          : store j, y               ; 21
010B:          : jmp $012E                ; C4 2E 01  LBL_0302 $012E
010E: LBL_0270 : set j, $0806             ; 3F 06 08
0111:          : add j, $0000             ; 4C 00 00
0114:          : load x, j                ; 13
0115:          : dec x                    ; 74
0116:          : store j, x               ; 20
0117:          : jmp $012E                ; C4 2E 01  LBL_0302 $012E
011A: LBL_0282 : set j, $0806             ; 3F 06 08
011D:          : add j, $0000             ; 4C 00 00
0120:          : load x, j                ; 13
0121:          : inc x                    ; 6D
0122:          : store j, x               ; 20
0123:          : jmp $012E                ; C4 2E 01  LBL_0302 $012E
0126:          : set a, $01               ; 3D 01
0128:          : store $0805, a           ; 26 05 08
012B:          : jmp $012E                ; C4 2E 01  LBL_0302 $012E
012E: LBL_0302 : return                   ; 30
012F: LBL_0303 : call $009C               ; 29 9C 00  FUN_0156 $009C
0132: LBL_0306 : call $00BC               ; 29 BC 00  FUN_0188 $00BC
0135:          : call $00BD               ; 29 BD 00  FUN_0189 $00BD
0138:          : call $00DC               ; 29 DC 00  FUN_0220 $00DC
013B:          : call $0059               ; 29 59 00  FUN_0089 $0059
013E:          : call $00BE               ; 29 BE 00  FUN_0190 $00BE
0141:          : call $004E               ; 29 4E 00  FUN_0078 $004E
0144:          : jmp $0132                ; C4 32 01  LBL_0306 $0132
