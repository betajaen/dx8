0000:          : jmp $0003                ; C5 03 00  LBL_0003 $0003
0003: LBL_0003 : set i, $000C             ; 3E 0C 00
0006:          : store $0008, i           ; 27 08 00
0009:          : jmp $0061                ; C5 61 00  LBL_0097 $0061
000C:          : load a, $003C            ; 19 3C 00
000F:          : cmpi a, $01              ; 89 01
0011:          : jmp.eq $0014             ; CE 14 00  LBL_0020 $0014
0014: LBL_0020 : load z, $003E            ; 17 3E 00
0017:          : cmpi z, $00              ; 87 00
0019:          : jmp.neq $002F            ; D0 2F 00  LBL_0047 $002F
001C:          : dbn $644B                ; EE 4B 64
001F:          : load z, $003D            ; 17 3D 00
0022:          : cmpi z, $0B              ; 87 0B
0024:          : jmp.eq $0041             ; CE 41 00  LBL_0065 $0041
0027:          : cmpi z, $25              ; 87 25(%)
0029:          : jmp.eq $0041             ; CE 41 00  LBL_0065 $0041
002C:          : jmp $0051                ; C5 51 00  LBL_0081 $0051
002F: LBL_0047 : dbn $754B                ; EE 4B 75
0032:          : load a, $0852            ; 19 52 08
0035:          : cmp a, z                 ; 7E
0036:          : jmp.neq $0051            ; D0 51 00  LBL_0081 $0051
0039:          : set a, $00               ; 3D 00
003B:          : store $0852, a           ; 26 52 08
003E:          : store $0854, a           ; 26 54 08
0041: LBL_0065 : store $0852, z           ; 24 52 08
0044:          : set a, $3C               ; 3D 3C(<)
0046:          : store $0853, a           ; 26 53 08
0049:          : set a, $01               ; 3D 01
004B:          : store $0854, a           ; 26 54 08
004E:          : jmp $0051                ; C5 51 00  LBL_0081 $0051
0051: LBL_0081 : resume                   ; E6
0052:          : nop                      ; 00
0053:          : nop                      ; 00
0054:          : nop                      ; 00
0055: FUN_0085 : set i, $8000             ; 3E 00 80
0058:          : set j, $2800             ; 3F 00 28
005B:          : set a, $20               ; 3D 20
005D:          : call $6B79               ; 29 79 6B  ERROR $6B79
0060:          : return                   ; 30
0061: LBL_0097 : set a, $01               ; 3D 01
0063:          : store $0018, a           ; 26 18 00
0066:          : set a, $33               ; 3D 33(3)
0068:          : store $001D, a           ; 26 1D 00
006B:          : set a, $33               ; 3D 33(3)
006D:          : store $001E, a           ; 26 1E 00
0070:          : set a, $33               ; 3D 33(3)
0072:          : store $001F, a           ; 26 1F 00
0075:          : set a, $FF               ; 3D FF
0077:          : store $0020, a           ; 26 20 00
007A:          : set a, $FF               ; 3D FF
007C:          : store $0021, a           ; 26 21 00
007F:          : set a, $FF               ; 3D FF
0081:          : store $0022, a           ; 26 22 00
0084:          : call $0055               ; 29 55 00  FUN_0085 $0055
0087:          : set a, $50               ; 3D 50(P)
0089:          : set x, $03               ; 39 03
008B:          : set y, $03               ; 3A 03
008D:          : call $6B7F               ; 29 7F 6B  ERROR $6B7F
0090: LBL_0144 : load a, $0854            ; 19 54 08
0093:          : cmp a                    ; 80
0094:          : jmp.z $0090              ; D6 90 00  LBL_0144 $0090
0097:          : load x, $0853            ; 15 53 08
009A:          : store $0040, x           ; 22 40 00
009D:          : set y, $05               ; 3A 05
009F:          : store $003F, y           ; 23 3F 00
00A2:          : jmp $0090                ; C5 90 00  LBL_0144 $0090