0400:          : dba $07                  ; F0 07 0E
0403:          : push w                   ; 04
0404:          : load y, $0004            ; 1A 04 00
0407:          : nop                      ; 00
0408:          : nop                      ; 00
0409:          : nop                      ; 00
040A:          : nop                      ; 00
040B:          : nop                      ; 00
040C:          : nop                      ; 00
040D:          : nop                      ; 00
040E:          : return                   ; 34
040F: LBL_1039 : dec a                    ; 7D
0410:          : push a                   ; 05
0411:          : load a, j                ; 16
0412:          : store i, a               ; 20
0413:          : pop a                    ; 0F
0414:          : inc i                    ; 77
0415:          : inc j                    ; 78
0416:          : cmp a                    ; 84
0417:          : rjmp.nz $F8              ; DD F8     LBL_1039 $040F
0419:          : return                   ; 34
041A:          : dbb                      ; F1
041B:          : pop i                    ; 10
041C:          : pop a                    ; 0F
041D:          : pop j                    ; 11
041E:          : dbb                      ; F1
041F: LBL_1055 : store i, a               ; 20
0420:          : inc i                    ; 77
0421:          : dec j                    ; 7F
0422:          : rjmp.nz $FD              ; DD FD     LBL_1055 $041F
0424:          : return                   ; 34
0425:          : cmpi x, $28              ; 89 28(()
0427:          : rjmp.gt $1E              ; D7 1E     LBL_1093 $0445
0429:          : cmpi y, $20              ; 8A 20
042B:          : rjmp.gt $1A              ; D7 1A     LBL_1093 $0445
042D:          : cmpi a, $20              ; 8D 20
042F:          : rjmp.lt $16              ; D9 16     LBL_1093 $0445
0431:          : cmpi a, $7F              ; 8D 7F()
0433:          : rjmp.gt $12              ; D7 12     LBL_1093 $0445
0435:          : set j, $0000             ; 43 00 00
0438:          : add j, y                 ; 4E
0439:          : mul j, $0028             ; 66 28 00
043C:          : add j, x                 ; 4D
043D:          : add j, $8000             ; 50 00 80
0440:          : store j, a               ; 23
0441:          : set a, $01               ; 41 01
0443:          : rjmp $04                 ; D1 04     LBL_1095 $0447
0445: LBL_1093 : set a, $00               ; 41 00
0447: LBL_1095 : return                   ; 34
0448: LBL_1096 : load a, j                ; 16
0449:          : cmp a                    ; 84
044A:          : rjmp.z $2F               ; DB 2F(/)  LBL_1145 $0479
044C:          : push z                   ; 03
044D:          : push w                   ; 04
044E:          : cmpi x, $28              ; 89 28(()
0450:          : rjmp.gt $1E              ; D7 1E     LBL_1134 $046E
0452:          : cmpi y, $20              ; 8A 20
0454:          : rjmp.gt $1A              ; D7 1A     LBL_1134 $046E
0456:          : cmpi a, $20              ; 8D 20
0458:          : rjmp.lt $16              ; D9 16     LBL_1134 $046E
045A:          : cmpi a, $7F              ; 8D 7F()
045C:          : rjmp.gt $12              ; D7 12     LBL_1134 $046E
045E:          : set j, $0000             ; 43 00 00
0461:          : add j, y                 ; 4E
0462:          : mul j, $0028             ; 66 28 00
0465:          : add j, x                 ; 4D
0466:          : add j, $8000             ; 50 00 80
0469:          : store j, a               ; 23
046A:          : set a, $01               ; 41 01
046C:          : rjmp $04                 ; D1 04     LBL_1136 $0470
046E: LBL_1134 : set a, $00               ; 41 00
0470: LBL_1136 : pop w                    ; 0E
0471:          : pop z                    ; 0D
0472:          : cmp a                    ; 84
0473:          : rjmp.z $06               ; DB 06     LBL_1145 $0479
0475:          : inc j                    ; 78
0476:          : inc x                    ; 72
0477:          : rjmp $D1                 ; D1 D1     LBL_1096 $0448
0479: LBL_1145 : return                   ; 34
047A: FUN_1146 : cmpi a, $0A              ; 8D 0A
047C:          : rjmp.lt $0B              ; D9 0B     LBL_1159 $0487
047E:          : cmpi a, $64              ; 8D 64(d)
0480:          : rjmp.lt $06              ; D9 06     LBL_1158 $0486
0482:          : inc x                    ; 72
0483:          : inc x                    ; 72
0484:          : rjmp $03                 ; D1 03     LBL_1159 $0487
0486: LBL_1158 : inc x                    ; 72
0487: LBL_1159 : cpy z, a                 ; 3B
0488:          : mod a, $0A               ; 6D 0A
048A:          : add a, $30               ; 55 30(0)
048C:          : push z                   ; 03
048D:          : cmpi x, $28              ; 89 28(()
048F:          : rjmp.gt $1E              ; D7 1E     LBL_1197 $04AD
0491:          : cmpi y, $20              ; 8A 20
0493:          : rjmp.gt $1A              ; D7 1A     LBL_1197 $04AD
0495:          : cmpi a, $20              ; 8D 20
0497:          : rjmp.lt $16              ; D9 16     LBL_1197 $04AD
0499:          : cmpi a, $7F              ; 8D 7F()
049B:          : rjmp.gt $12              ; D7 12     LBL_1197 $04AD
049D:          : set j, $0000             ; 43 00 00
04A0:          : add j, y                 ; 4E
04A1:          : mul j, $0028             ; 66 28 00
04A4:          : add j, x                 ; 4D
04A5:          : add j, $8000             ; 50 00 80
04A8:          : store j, a               ; 23
04A9:          : set a, $01               ; 41 01
04AB:          : rjmp $04                 ; D1 04     LBL_1199 $04AF
04AD: LBL_1197 : set a, $00               ; 41 00
04AF: LBL_1199 : pop z                    ; 0D
04B0:          : dec x                    ; 79
04B1:          : cpy a, z                 ; 37
04B2:          : div a, $0A               ; 68 0A
04B4:          : cmp a                    ; 84
04B5:          : rjmp.z $04               ; DB 04     LBL_1209 $04B9
04B7:          : rjmp $D0                 ; D1 D0     LBL_1159 $0487
04B9: LBL_1209 : return                   ; 34
04BA:          : set i, $8000             ; 42 00 80
04BD:          : set j, $2800             ; 43 00 28
04C0:          : set a, $20               ; 41 20
04C2:          : call $041F               ; 2D 1F 04  LBL_1055 $041F
04C5:          : return                   ; 34
04C6:          : nop                      ; 00
04C7:          : nop                      ; 00
04C8:          : nop                      ; 00
04C9:          : nop                      ; 00
04CA:          : nop                      ; 00
04CB:          : nop                      ; 00
04CC:          : nop                      ; 00
04CD:          : nop                      ; 00
04CE:          : cmp a, x                 ; 80
04CF:          : cpy z, a                 ; 3B
04D0:          : set z, $42               ; 3F 42(B)
04D2:          : nop                      ; FF
04D3:          : not w                    ; AA
04D4:          : jmp $0000, x             ; CC 00 00  ERROR $0000
04D7:          : nop                      ; 00
04D8: FUN_1240 : set i, $0509             ; 42 09 05
04DB:          : store $0000, i           ; 2B 00 00
04DE:          : set i, $050C             ; 42 0C 05
04E1:          : store $0002, i           ; 2B 02 00
04E4:          : set i, $0574             ; 42 74 05
04E7:          : store $0004, i           ; 2B 04 00
04EA:          : set i, $05DE             ; 42 DE 05
04ED:          : store $0006, i           ; 2B 06 00
04F0:          : set i, $05EA             ; 42 EA 05
04F3:          : store $0008, i           ; 2B 08 00
04F6:          : set i, $05F3             ; 42 F3 05
04F9:          : store $000A, i           ; 2B 0A 00
04FC:          : set i, $05F3             ; 42 F3 05
04FF:          : store $000C, i           ; 2B 0C 00
0502:          : set i, $05EC             ; 42 EC 05
0505:          : store $000E, i           ; 2B 0E 00
0508:          : return                   ; 34
0509:          : jmp $086F                ; C9 6F 08  LBL_2159 $086F
050C:          : load a, $002C            ; 1D 2C 00
050F:          : cpy x, a                 ; 39
0510:          : cmpi a, $E8              ; 8D E8
0512:          : jmp.gt $053F             ; D6 3F 05  LBL_1343 $053F
0515:          : jmp.eq $055E             ; D2 5E 05  LBL_1374 $055E
0518:          : not x                    ; A7
0519:          : and x, $E0               ; 99 E0
051B:          : shr x, $02               ; BA 02
051D:          : load a, $04D0            ; 1D D0 04
0520:          : add a, x                 ; 44
0521:          : store $001E, a           ; 2A 1E 00
0524:          : neg a                    ; 71
0525:          : store $0021, a           ; 2A 21 00
0528:          : load a, $04D1            ; 1D D1 04
052B:          : add a, x                 ; 44
052C:          : store $001F, a           ; 2A 1F 00
052F:          : neg a                    ; 71
0530:          : store $0022, a           ; 2A 22 00
0533:          : load a, $04D2            ; 1D D2 04
0536:          : add a, x                 ; 44
0537:          : store $0020, a           ; 2A 20 00
053A:          : neg a                    ; 71
053B:          : store $0023, a           ; 2A 23 00
053E:          : resume                   ; EA
053F: LBL_1343 : set a, $3B               ; 41 3B(;)
0541:          : store $001D, a           ; 2A 1D 00
0544:          : set a, $3F               ; 41 3F(?)
0546:          : store $001E, a           ; 2A 1E 00
0549:          : set a, $42               ; 41 42(B)
054B:          : store $001F, a           ; 2A 1F 00
054E:          : set a, $FE               ; 41 FE
0550:          : store $0020, a           ; 2A 20 00
0553:          : set a, $FE               ; 41 FE
0555:          : store $0021, a           ; 2A 21 00
0558:          : set a, $FE               ; 41 FE
055A:          : store $0022, a           ; 2A 22 00
055D:          : resume                   ; EA
055E: LBL_1374 : set a, $00               ; 41 00
0560:          : store $001D, a           ; 2A 1D 00
0563:          : store $001E, a           ; 2A 1E 00
0566:          : store $001F, a           ; 2A 1F 00
0569:          : store $0020, a           ; 2A 20 00
056C:          : store $0021, a           ; 2A 21 00
056F:          : store $0022, a           ; 2A 22 00
0572:          : resume                   ; EA
0573:          : resume                   ; EA
0574:          : load a, $04CF            ; 1D CF 04
0577:          : load x, $04D2            ; 19 D2 04
057A:          : cmp a, x                 ; 80
057B:          : jmp.lt $058C             ; D8 8C 05  LBL_1420 $058C
057E:          : jmp.gt $0593             ; D6 93 05  LBL_1427 $0593
0581:          : load a, $00E1            ; 1D E1 00
0584:          : mod a, $7F               ; 6D 7F()
0586:          : store $04D2, a           ; 2A D2 04
0589:          : jmp $0597                ; C9 97 05  LBL_1431 $0597
058C: LBL_1420 : inc a                    ; 76
058D:          : store $04CF, a           ; 2A CF 04
0590:          : jmp $0597                ; C9 97 05  LBL_1431 $0597
0593: LBL_1427 : dec a                    ; 7D
0594:          : store $04CF, a           ; 2A CF 04
0597: LBL_1431 : load a, $04D0            ; 1D D0 04
059A:          : load x, $04D3            ; 19 D3 04
059D:          : cmp a, x                 ; 80
059E:          : jmp.lt $05AF             ; D8 AF 05  LBL_1455 $05AF
05A1:          : jmp.gt $05B6             ; D6 B6 05  LBL_1462 $05B6
05A4:          : load a, $00E1            ; 1D E1 00
05A7:          : mod a, $7F               ; 6D 7F()
05A9:          : store $04D3, a           ; 2A D3 04
05AC:          : jmp $05BA                ; C9 BA 05  LBL_1466 $05BA
05AF: LBL_1455 : inc a                    ; 76
05B0:          : store $04D0, a           ; 2A D0 04
05B3:          : jmp $05BA                ; C9 BA 05  LBL_1466 $05BA
05B6: LBL_1462 : dec a                    ; 7D
05B7:          : store $04D0, a           ; 2A D0 04
05BA: LBL_1466 : load a, $04D1            ; 1D D1 04
05BD:          : load x, $04D4            ; 19 D4 04
05C0:          : cmp a, x                 ; 80
05C1:          : jmp.lt $05D2             ; D8 D2 05  LBL_1490 $05D2
05C4:          : jmp.gt $05D9             ; D6 D9 05  LBL_1497 $05D9
05C7:          : load a, $00E1            ; 1D E1 00
05CA:          : mod a, $7F               ; 6D 7F()
05CC:          : store $04D4, a           ; 2A D4 04
05CF:          : jmp $05DD                ; C9 DD 05  LBL_1501 $05DD
05D2: LBL_1490 : inc a                    ; 76
05D3:          : store $04D1, a           ; 2A D1 04
05D6:          : jmp $05BA                ; C9 BA 05  LBL_1466 $05BA
05D9: LBL_1497 : dec a                    ; 7D
05DA:          : store $04D1, a           ; 2A D1 04
05DD: LBL_1501 : resume                   ; EA
05DE:          : load a, $0034            ; 1D 34 00
05E1:          : store $04C6, a           ; 2A C6 04
05E4:          : set a, $00               ; 41 00
05E6:          : store $0034, a           ; 2A 34 00
05E9:          : resume                   ; EA
05EA:          : nop                      ; 00
05EB:          : resume                   ; EA
05EC:          : nop                      ; 00
05ED:          : dbn $4C48                ; F2 48 4C
05F0:          : int $FF                  ; E9 FF
05F2:          : resume                   ; EA
05F3:          : dbn $4C44                ; F2 44 4C
05F6:          : nop                      ; 00
05F7:          : resume                   ; EA
05F8: FUN_1528 : set a, $44               ; 41 44(D)
05FA:          : store $84C1, a           ; 2A C1 84
05FD:          : set a, $58               ; 41 58(X)
05FF:          : store $84C2, a           ; 2A C2 84
0602:          : set a, $38               ; 41 38(8)
0604:          : store $84C3, a           ; 2A C3 84
0607:          : set a, $2F               ; 41 2F(/)
0609:          : store $84C5, a           ; 2A C5 84
060C:          : set a, $2F               ; 41 2F(/)
060E:          : store $84C6, a           ; 2A C6 84
0611:          : set a, $2F               ; 41 2F(/)
0613:          : store $84C7, a           ; 2A C7 84
0616:          : return                   ; 34
0617: FUN_1559 : load x, $002F            ; 19 2F 00
061A:          : cmpbit x, $40            ; 90 40(@)
061C:          : jmp.z $0622              ; DA 22 06  LBL_1570 $0622
061F:          : jmp $0630                ; C9 30 06  LBL_1584 $0630
0622: LBL_1570 : set x, $20               ; 3D 20
0624:          : store $84C5, x           ; 26 C5 84
0627:          : store $84C6, x           ; 26 C6 84
062A:          : store $84C7, x           ; 26 C7 84
062D:          : jmp $063B                ; C9 3B 06  LBL_1595 $063B
0630: LBL_1584 : set x, $2F               ; 3D 2F(/)
0632:          : store $84C5, x           ; 26 C5 84
0635:          : store $84C6, x           ; 26 C6 84
0638:          : store $84C7, x           ; 26 C7 84
063B: LBL_1595 : return                   ; 34
063C:          : sub a, z                 ; 58
063D:          : push i                   ; 06
063E:          : sub z, $06               ; 5F 06
0640:          : ror a                    ; C8
0641:          : push i                   ; 06
0642:          : pop a                    ; 0F
0643:          : push j                   ; 07
0644:          : cpy z, a                 ; 3B
0645:          : push j                   ; 07
0646:          : add a, w                 ; 47
0647:          : push j                   ; 07
0648:          : add j, y                 ; 4E
0649:          : push j                   ; 07
064A:          : mod a, x                 ; 6C
064B:          : push j                   ; 07
064C:          : inc y                    ; 73
064D:          : push j                   ; 07
064E:          : dec w                    ; 7C
064F:          : push j                   ; 07
0650:          : cmpi w, $07              ; 8C 07
0652:          : cmpbit w, $07            ; 93 07
0654:          : shl a, $07               ; B9 07
0656:          : shr x, $07               ; BA 07
0658:          : set a, $00               ; 41 00
065A:          : store $04C6, a           ; 2A C6 04
065D:          : nop                      ; 00
065E:          : return                   ; 34
065F:          : set a, $00               ; 41 00
0661:          : store $04C6, a           ; 2A C6 04
0664:          : set a, $01               ; 41 01
0666:          : store $04C7, a           ; 2A C7 04
0669:          : set a, $20               ; 41 20
066B:          : store $8269, a           ; 2A 69 82
066E:          : set a, $20               ; 41 20
0670:          : store $826A, a           ; 2A 6A 82
0673:          : set a, $20               ; 41 20
0675:          : store $826B, a           ; 2A 6B 82
0678:          : set a, $20               ; 41 20
067A:          : store $826C, a           ; 2A 6C 82
067D:          : set a, $20               ; 41 20
067F:          : store $826D, a           ; 2A 6D 82
0682:          : set a, $20               ; 41 20
0684:          : store $826E, a           ; 2A 6E 82
0687:          : set a, $20               ; 41 20
0689:          : store $8291, a           ; 2A 91 82
068C:          : set a, $20               ; 41 20
068E:          : store $8292, a           ; 2A 92 82
0691:          : set a, $20               ; 41 20
0693:          : store $8293, a           ; 2A 93 82
0696:          : set a, $20               ; 41 20
0698:          : store $8294, a           ; 2A 94 82
069B:          : set a, $20               ; 41 20
069D:          : store $8295, a           ; 2A 95 82
06A0:          : set a, $20               ; 41 20
06A2:          : store $8296, a           ; 2A 96 82
06A5:          : set a, $00               ; 41 00
06A7:          : store $04C8, a           ; 2A C8 04
06AA:          : set i, $D400             ; 42 00 D4
06AD:          : store $04C9, i           ; 2B C9 04
06B0:          : set a, $FF               ; 41 FF
06B2:          : store $04CB, a           ; 2A CB 04
06B5:          : set a, $FF               ; 41 FF
06B7:          : store $0037, a           ; 2A 37 00
06BA:          : set i, $D400             ; 42 00 D4
06BD:          : store $0038, i           ; 2B 38 00
06C0:          : set a, $01               ; 41 01
06C2:          : store $003A, a           ; 2A 3A 00
06C5:          : int $D0                  ; E9 D0
06C7:          : return                   ; 34
06C8: FUN_1736 : set a, $00               ; 41 00
06CA:          : store $04C6, a           ; 2A C6 04
06CD:          : set a, $00               ; 41 00
06CF:          : store $04C7, a           ; 2A C7 04
06D2:          : set a, $49               ; 41 49(I)
06D4:          : store $8269, a           ; 2A 69 82
06D7:          : set a, $4E               ; 41 4E(N)
06D9:          : store $826A, a           ; 2A 6A 82
06DC:          : set a, $53               ; 41 53(S)
06DE:          : store $826B, a           ; 2A 6B 82
06E1:          : set a, $45               ; 41 45(E)
06E3:          : store $826C, a           ; 2A 6C 82
06E6:          : set a, $52               ; 41 52(R)
06E8:          : store $826D, a           ; 2A 6D 82
06EB:          : set a, $54               ; 41 54(T)
06ED:          : store $826E, a           ; 2A 6E 82
06F0:          : set a, $46               ; 41 46(F)
06F2:          : store $8291, a           ; 2A 91 82
06F5:          : set a, $4C               ; 41 4C(L)
06F7:          : store $8292, a           ; 2A 92 82
06FA:          : set a, $4F               ; 41 4F(O)
06FC:          : store $8293, a           ; 2A 93 82
06FF:          : set a, $50               ; 41 50(P)
0701:          : store $8294, a           ; 2A 94 82
0704:          : set a, $50               ; 41 50(P)
0706:          : store $8295, a           ; 2A 95 82
0709:          : set a, $59               ; 41 59(Y)
070B:          : store $8296, a           ; 2A 96 82
070E:          : return                   ; 34
070F:          : load a, $00E1            ; 1D E1 00
0712:          : store $04CF, a           ; 2A CF 04
0715:          : load a, $00E1            ; 1D E1 00
0718:          : store $04D0, a           ; 2A D0 04
071B:          : load a, $00E1            ; 1D E1 00
071E:          : store $04D1, a           ; 2A D1 04
0721:          : load a, $0036            ; 1D 36 00
0724:          : set x, $02               ; 3D 02
0726:          : set y, $02               ; 3E 02
0728:          : call $047A               ; 2D 7A 04  FUN_1146 $047A
072B:          : load a, $0037            ; 1D 37 00
072E:          : set x, $07               ; 3D 07
0730:          : set y, $02               ; 3E 02
0732:          : call $047A               ; 2D 7A 04  FUN_1146 $047A
0735:          : set a, $00               ; 41 00
0737:          : store $04C6, a           ; 2A C6 04
073A:          : return                   ; 34
073B:          : set a, $00               ; 41 00
073D:          : store $04C6, a           ; 2A C6 04
0740:          : load a, $04C8            ; 1D C8 04
0743:          : bcall $064C, a           ; E4 4C 06
0746:          : return                   ; 34
0747:          : set a, $00               ; 41 00
0749:          : store $04C6, a           ; 2A C6 04
074C:          : nop                      ; 00
074D:          : return                   ; 34
074E:          : load a, $00E1            ; 1D E1 00
0751:          : mod a, $7F               ; 6D 7F()
0753:          : store $04CF, a           ; 2A CF 04
0756:          : load a, $00E1            ; 1D E1 00
0759:          : mod a, $7F               ; 6D 7F()
075B:          : store $04D0, a           ; 2A D0 04
075E:          : load a, $00E1            ; 1D E1 00
0761:          : mod a, $7F               ; 6D 7F()
0763:          : store $04D1, a           ; 2A D1 04
0766:          : set a, $00               ; 41 00
0768:          : store $04C6, a           ; 2A C6 04
076B:          : return                   ; 34
076C:          : set a, $00               ; 41 00
076E:          : store $04C6, a           ; 2A C6 04
0771:          : nop                      ; 00
0772:          : return                   ; 34
0773:          : set a, $01               ; 41 01
0775:          : store $04C8, a           ; 2A C8 04
0778:          : call $0780               ; 2D 80 07  FUN_1920 $0780
077B:          : return                   ; 34
077C:          : call $0780               ; 2D 80 07  FUN_1920 $0780
077F:          : return                   ; 34
0780: FUN_1920 : load i, $04C9            ; 1E C9 04
0783:          : load a, i                ; 13
0784:          : inc i                    ; 77
0785:          : store $04C9, i           ; 2B C9 04
0788:          : bcall $0650, a           ; E4 50 06
078B:          : return                   ; 34
078C:          : nop                      ; 00
078D:          : set a, $03               ; 41 03
078F:          : store $04C8, a           ; 2A C8 04
0792:          : return                   ; 34
0793:          : load i, $04C9            ; 1E C9 04
0796:          : load z, i                ; 14
0797:          : inc i                    ; 77
0798:          : store $0038, z           ; 28 38 00
079B:          : load z, i                ; 14
079C:          : store $0039, z           ; 28 39 00
079F:          : load i, $04C9            ; 1E C9 04
07A2:          : inc i                    ; 77
07A3:          : inc i                    ; 77
07A4:          : store $04C9, i           ; 2B C9 04
07A7:          : load a, $04CB            ; 1D CB 04
07AA:          : inc a                    ; 76
07AB:          : store $04CB, a           ; 2A CB 04
07AE:          : store $0037, a           ; 2A 37 00
07B1:          : set a, $01               ; 41 01
07B3:          : store $003A, a           ; 2A 3A 00
07B6:          : int $D0                  ; E9 D0
07B8:          : return                   ; 34
07B9:          : return                   ; 34
07BA:          : set a, $03               ; 41 03
07BC:          : store $04C8, a           ; 2A C8 04
07BF:          : set i, $05F3             ; 42 F3 05
07C2:          : store $0002, i           ; 2B 02 00
07C5:          : set i, $05F3             ; 42 F3 05
07C8:          : store $0004, i           ; 2B 04 00
07CB:          : set i, $05F3             ; 42 F3 05
07CE:          : store $0006, i           ; 2B 06 00
07D1:          : set i, $05F3             ; 42 F3 05
07D4:          : store $0008, i           ; 2B 08 00
07D7:          : set i, $05EC             ; 42 EC 05
07DA:          : store $000E, i           ; 2B 0E 00
07DD:          : set i, $1400             ; 42 00 14
07E0:          : store $0000, i           ; 2B 00 00
07E3:          : dbn $5252                ; F2 52 52
07E6:          : int $FF                  ; E9 FF
07E8:          : return                   ; 34
07E9:          : load a, $04C6            ; 1D C6 04
07EC:          : bcall $063C, a           ; E4 3C 06
07EF:          : return                   ; 34
07F0:          : call $04D8               ; 2D D8 04  FUN_1240 $04D8
07F3:          : set a, $00               ; 41 00
07F5:          : store $0080, a           ; 2A 80 00
07F8:          : set a, $01               ; 41 01
07FA:          : store $0081, a           ; 2A 81 00
07FD:          : set a, $02               ; 41 02
07FF:          : store $0082, a           ; 2A 82 00
0802:          : set a, $03               ; 41 03
0804:          : store $0083, a           ; 2A 83 00
0807:          : set a, $04               ; 41 04
0809:          : store $0084, a           ; 2A 84 00
080C:          : set a, $05               ; 41 05
080E:          : store $0085, a           ; 2A 85 00
0811:          : set a, $06               ; 41 06
0813:          : store $0086, a           ; 2A 86 00
0816:          : set a, $07               ; 41 07
0818:          : store $0087, a           ; 2A 87 00
081B:          : set a, $08               ; 41 08
081D:          : store $0088, a           ; 2A 88 00
0820:          : set a, $35               ; 41 35(5)
0822:          : store $00B5, a           ; 2A B5 00
0825:          : set a, $46               ; 41 46(F)
0827:          : store $00A0, a           ; 2A A0 00
082A:          : set a, $47               ; 41 47(G)
082C:          : store $00A1, a           ; 2A A1 00
082F:          : set a, $48               ; 41 48(H)
0831:          : store $00A2, a           ; 2A A2 00
0834:          : set a, $49               ; 41 49(I)
0836:          : store $00A3, a           ; 2A A3 00
0839:          : set a, $4A               ; 41 4A(J)
083B:          : store $00A4, a           ; 2A A4 00
083E:          : set a, $4B               ; 41 4B(K)
0840:          : store $00A5, a           ; 2A A5 00
0843:          : set a, $4C               ; 41 4C(L)
0845:          : store $00A6, a           ; 2A A6 00
0848:          : set a, $4D               ; 41 4D(M)
084A:          : store $00A7, a           ; 2A A7 00
084D:          : set a, $4E               ; 41 4E(N)
084F:          : store $00A8, a           ; 2A A8 00
0852:          : set a, $4F               ; 41 4F(O)
0854:          : store $00A9, a           ; 2A A9 00
0857:          : set i, $08C5             ; 42 C5 08
085A:          : store $0030, i           ; 2B 30 00
085D:          : set a, $00               ; 41 00
085F:          : store $0019, a           ; 2A 19 00
0862:          : set a, $01               ; 41 01
0864:          : store $0018, a           ; 2A 18 00
0867:          : set a, $00               ; 41 00
0869:          : store $00E0, a           ; 2A E0 00
086C:          : rti                      ; F5
086D:          : int $FE                  ; E9 FE
086F: LBL_2159 : set i, $8000             ; 42 00 80
0872:          : set j, $2800             ; 43 00 28
0875:          : set a, $20               ; 41 20
0877:          : call $041F               ; 2D 1F 04  LBL_1055 $041F
087A:          : call $040F               ; 2D 0F 04  LBL_1039 $040F
087D:          : call $05F8               ; 2D F8 05  FUN_1528 $05F8
0880:          : call $06C8               ; 2D C8 06  FUN_1736 $06C8
0883:          : set i, $C000             ; 42 00 C0
0886:          : store $04D5, i           ; 2B D5 04
0889:          : set x, $00               ; 3D 00
088B:          : store $04D7, x           ; 26 D7 04
088E:          : set x, $0F               ; 3D 0F
0890:          : store $003E, x           ; 26 3E 00
0893:          : set x, $3C               ; 3D 3C(<)
0895:          : store $003F, x           ; 26 3F 00
0898:          : set a, $48               ; 41 48(H)
089A:          : store $8000, a           ; 2A 00 80
089D:          : set a, $69               ; 41 69(i)
089F:          : store $8001, a           ; 2A 01 80
08A2:          : set a, $52               ; 41 52(R)
08A4:          : store $8032, a           ; 2A 32 80
08A7:          : set a, $46               ; 41 46(F)
08A9:          : store $8015, a           ; 2A 15 80
08AC:          : set a, $4F               ; 41 4F(O)
08AE:          : store $8016, a           ; 2A 16 80
08B1:          : set a, $4F               ; 41 4F(O)
08B3:          : store $8017, a           ; 2A 17 80
08B6: LBL_2230 : call $0617               ; 2D 17 06  FUN_1559 $0617
08B9:          : load a, $04C6            ; 1D C6 04
08BC:          : cmpi a, $00              ; 8D 00
08BE:          : call.neq $07E9           ; 2F E9 07
08C1:          : jmp $08B6                ; C9 B6 08  LBL_2230 $08B6
08C4:          : nop                      ; 00
08C5:          : nop                      ; 00
08C6:          : load y, j                ; 18
08C7:          : mul j, $186C             ; 66 6C 18
08CA:          : add a, z                 ; 46
08CB:          : cpy a, w                 ; 38
08CC:          : load y, j                ; 18
08CD:          : call.gt $360C            ; 30 0C 36
08D0:          : nop                      ; 00
08D1:          : nop                      ; 00
08D2:          : nop                      ; 00
08D3:          : nop                      ; 00
08D4:          : set w, $3C               ; 40 3C(<)
08D6:          : load y, j                ; 18
08D7:          : cpy w, a                 ; 3C
08D8:          : cpy w, a                 ; 3C
08D9:          : cpy a, w                 ; 38
08DA:          : dec i                    ; 7E
08DB:          : cpy w, a                 ; 3C
08DC:          : dec i                    ; 7E
08DD:          : cpy w, a                 ; 3C
08DE:          : cpy w, a                 ; 3C
08DF:          : nop                      ; 00
08E0:          : nop                      ; 00
08E1:          : sub w, $00               ; 60 00
08E3:          : pop y                    ; 0C
08E4:          : cpy w, a                 ; 3C
08E5:          : cpy w, a                 ; 3C
08E6:          : cpy w, a                 ; 3C
08E7:          : set y, $3C               ; 3E 3C(<)
08E9:          : set y, $7E               ; 3E 7E(~)
08EB:          : dec i                    ; 7E
08EC:          : cpy w, a                 ; 3C
08ED:          : mul j, $603C             ; 66 3C 60
08F0:          : mul j, $6306             ; 66 06 63
08F3:          : mul j, $3E3C             ; 66 3C 3E
08F6:          : cpy w, a                 ; 3C
08F7:          : set y, $3C               ; 3E 3C(<)
08F9:          : dec i                    ; 7E
08FA:          : mul j, $6366             ; 66 66 63
08FD:          : mul j, $7E66             ; 66 66 7E
0900:          : cpy w, a                 ; 3C
0901:          : push y                   ; 02
0902:          : cpy w, a                 ; 3C
0903:          : pop i                    ; 10
0904:          : nop                      ; 00
0905:          : load y, j                ; 18
0906:          : nop                      ; 00
0907:          : push i                   ; 06
0908:          : nop                      ; 00
0909:          : sub w, $00               ; 60 00
090B:          : mod j, $0600             ; 70 00 06
090E:          : load y, j                ; 18
090F:          : sub w, $06               ; 60 06
0911:          : cpy a, w                 ; 38
0912:          : nop                      ; 00
0913:          : nop                      ; 00
0914:          : nop                      ; 00
0915:          : nop                      ; 00
0916:          : nop                      ; 00
0917:          : nop                      ; 00
0918:          : nop                      ; 00
0919:          : load y, j                ; 18
091A:          : nop                      ; 00
091B:          : nop                      ; 00
091C:          : nop                      ; 00
091D:          : nop                      ; 00
091E:          : nop                      ; 00
091F:          : nop                      ; 00
0920:          : nop                      ; 00
0921:          : nop                      ; 00
0922:          : nop                      ; 00
0923:          : nop                      ; 00
0924:          : nop                      ; 00
0925:          : nop                      ; 00
0926:          : load y, j                ; 18
0927:          : mul j, $7CFE             ; 66 FE 7C
092A:          : mul j, $186C             ; 66 6C 18
092D:          : load y, j                ; 18
092E:          : load y, j                ; 18
092F:          : load w, $0010            ; 1C 10 00
0932:          : nop                      ; 00
0933:          : nop                      ; 00
0934:          : sub w, $66               ; 60 66(f)
0936:          : load w, $6666            ; 1C 66 66
0939:          : cpy w, a                 ; 3C
093A:          : push i                   ; 06
093B:          : mul j, $6660             ; 66 60 66
093E:          : mul j, $1818             ; 66 18 18
0941:          : call.gt $1800            ; 30 00 18
0944:          : mul a, x                 ; 62
0945:          : set i, $6666             ; 42 66 66
0948:          : mul j, $0666             ; 66 66 06
094B:          : push i                   ; 06
094C:          : mul j, $1866             ; 66 66 18
094F:          : sub w, $36               ; 60 36(6)
0951:          : push i                   ; 06
0952:          : inc i                    ; 77
0953:          : mul j, $6666             ; 66 66 66
0956:          : mul j, $6666             ; 66 66 66
0959:          : load y, j                ; 18
095A:          : mul j, $6366             ; 66 66 63
095D:          : mul j, $6066             ; 66 66 60
0960:          : pop y                    ; 0C
0961:          : push i                   ; 06
0962:          : call.gt $0038            ; 30 38 00
0965:          : call.gt $0600            ; 30 00 06
0968:          : nop                      ; 00
0969:          : sub w, $00               ; 60 00
096B:          : load y, j                ; 18
096C:          : nop                      ; 00
096D:          : push i                   ; 06
096E:          : nop                      ; 00
096F:          : nop                      ; 00
0970:          : push i                   ; 06
0971:          : call.gt $0000            ; 30 00 00
0974:          : nop                      ; 00
0975:          : nop                      ; 00
0976:          : nop                      ; 00
0977:          : nop                      ; 00
0978:          : nop                      ; 00
0979:          : load y, j                ; 18
097A:          : nop                      ; 00
097B:          : nop                      ; 00
097C:          : nop                      ; 00
097D:          : nop                      ; 00
097E:          : nop                      ; 00
097F:          : nop                      ; 00
0980:          : nop                      ; 00
0981:          : nop                      ; 00
0982:          : nop                      ; 00
0983:          : nop                      ; 00
0984:          : nop                      ; 00
0985:          : nop                      ; 00
0986:          : load y, j                ; 18
0987:          : mul j, $066C             ; 66 6C 06
098A:          : call.gt $186C            ; 30 6C 18
098D:          : pop y                    ; 0C
098E:          : call.gt $107F            ; 30 7F 10
0991:          : nop                      ; 00
0992:          : nop                      ; 00
0993:          : nop                      ; 00
0994:          : call.gt $1866            ; 30 66 18
0997:          : sub w, $60               ; 60 60(`)
0999:          : cpy a, y                 ; 36
099A:          : set y, $06               ; 3E 06
099C:          : call.gt $6666            ; 30 66 66
099F:          : load y, j                ; 18
09A0:          : load y, j                ; 18
09A1:          : load y, j                ; 18
09A2:          : dec i                    ; 7E
09A3:          : call.gt $9960            ; 30 60 99
09A6:          : mul j, $0666             ; 66 66 06
09A9:          : mul j, $0606             ; 66 06 06
09AC:          : push i                   ; 06
09AD:          : mul j, $6018             ; 66 18 60
09B0:          : load i, $7F06            ; 1E 06 7F
09B3:          : mod i, j                 ; 6E
09B4:          : mul j, $6666             ; 66 66 66
09B7:          : mul j, $1806             ; 66 06 18
09BA:          : mul j, $6366             ; 66 66 63
09BD:          : cpy w, a                 ; 3C
09BE:          : mul j, $0C30             ; 66 30 0C
09C1:          : pop y                    ; 0C
09C2:          : call.gt $006C            ; 30 6C 00
09C5:          : nop                      ; 00
09C6:          : cpy w, a                 ; 3C
09C7:          : set y, $3C               ; 3E 3C(<)
09C9:          : dec w                    ; 7C
09CA:          : cpy w, a                 ; 3C
09CB:          : cpy w, a                 ; 3C
09CC:          : dec w                    ; 7C
09CD:          : set y, $1C               ; 3E 1C
09CF:          : mod j, $3066             ; 70 66 30
09D2:          : cpy a, z                 ; 37
09D3:          : set y, $3C               ; 3E 3C(<)
09D5:          : set y, $7C               ; 3E 7C(|)
09D7:          : inc a                    ; 76
09D8:          : dec w                    ; 7C
09D9:          : cpy w, a                 ; 3C
09DA:          : mul j, $6B66             ; 66 66 6B
09DD:          : mul j, $7E66             ; 66 66 7E
09E0:          : nop                      ; 00
09E1:          : nop                      ; 00
09E2:          : nop                      ; 00
09E3:          : nop                      ; 00
09E4:          : nop                      ; 00
09E5:          : nop                      ; 00
09E6:          : load y, j                ; 18
09E7:          : nop                      ; 00
09E8:          : mod a, x                 ; 6C
09E9:          : cpy w, a                 ; 3C
09EA:          : load y, j                ; 18
09EB:          : cpy a, w                 ; 38
09EC:          : nop                      ; 00
09ED:          : pop y                    ; 0C
09EE:          : call.gt $7C1C            ; 30 1C 7C
09F1:          : nop                      ; 00
09F2:          : dec i                    ; 7E
09F3:          : nop                      ; 00
09F4:          : load y, j                ; 18
09F5:          : mul j, $3818             ; 66 18 38
09F8:          : cpy a, w                 ; 38
09F9:          : cpy a, y                 ; 36
09FA:          : sub w, $3E               ; 60 3E(>)
09FC:          : load y, j                ; 18
09FD:          : cpy w, a                 ; 3C
09FE:          : dec w                    ; 7C
09FF:          : nop                      ; 00
0A00:          : nop                      ; 00
0A01:          : pop y                    ; 0C
0A02:          : nop                      ; 00
0A03:          : sub w, $38               ; 60 38(8)
0A05:          : or w, $7E                ; A5 7E(~)
0A07:          : set y, $06               ; 3E 06
0A09:          : mul j, $1E1E             ; 66 1E 1E
0A0C:          : inc a                    ; 76
0A0D:          : dec i                    ; 7E
0A0E:          : load y, j                ; 18
0A0F:          : sub w, $0E               ; 60 0E
0A11:          : push i                   ; 06
0A12:          : div j, $667E             ; 6B 7E 66
0A15:          : set y, $66               ; 3E 66(f)
0A17:          : set y, $3C               ; 3E 3C(<)
0A19:          : load y, j                ; 18
0A1A:          : mul j, $6B66             ; 66 66 6B
0A1D:          : load y, j                ; 18
0A1E:          : cpy w, a                 ; 3C
0A1F:          : load y, j                ; 18
0A20:          : pop y                    ; 0C
0A21:          : load y, j                ; 18
0A22:          : call.gt $0044            ; 30 44 00
0A25:          : nop                      ; 00
0A26:          : sub w, $66               ; 60 66(f)
0A28:          : mul j, $6666             ; 66 66 66
0A2B:          : load y, j                ; 18
0A2C:          : mul j, $1866             ; 66 66 18
0A2F:          : sub w, $36               ; 60 36(6)
0A31:          : call.gt $667F            ; 30 7F 66
0A34:          : mul j, $6666             ; 66 66 66
0A37:          : pop w                    ; 0E
0A38:          : push i                   ; 06
0A39:          : load y, j                ; 18
0A3A:          : mul j, $6B66             ; 66 66 6B
0A3D:          : cpy w, a                 ; 3C
0A3E:          : mul j, $0030             ; 66 30 00
0A41:          : nop                      ; 00
0A42:          : nop                      ; 00
0A43:          : nop                      ; 00
0A44:          : nop                      ; 00
0A45:          : nop                      ; 00
0A46:          : load y, j                ; 18
0A47:          : nop                      ; 00
0A48:          : mod a, x                 ; 6C
0A49:          : sub w, $0C               ; 60 0C
0A4B:          : clc                      ; EC
0A4C:          : nop                      ; 00
0A4D:          : pop y                    ; 0C
0A4E:          : call.gt $1036            ; 30 36 10
0A51:          : load y, j                ; 18
0A52:          : nop                      ; 00
0A53:          : nop                      ; 00
0A54:          : pop y                    ; 0C
0A55:          : mul j, $0C18             ; 66 18 0C
0A58:          : sub w, $7E               ; 60 7E(~)
0A5A:          : sub w, $66               ; 60 66(f)
0A5C:          : load y, j                ; 18
0A5D:          : mul j, $1860             ; 66 60 18
0A60:          : load y, j                ; 18
0A61:          : load y, j                ; 18
0A62:          : dec i                    ; 7E
0A63:          : call.gt $A518            ; 30 18 A5
0A66:          : mul j, $0666             ; 66 66 06
0A69:          : mul j, $0606             ; 66 06 06
0A6C:          : mul j, $1866             ; 66 66 18
0A6F:          : sub w, $1E               ; 60 1E
0A71:          : push i                   ; 06
0A72:          : mul a, $76               ; 63 76(v)
0A74:          : mul j, $6606             ; 66 06 66
0A77:          : load i, $1860            ; 1E 60 18
0A7A:          : mul j, $7F66             ; 66 66 7F
0A7D:          : cpy w, a                 ; 3C
0A7E:          : load y, j                ; 18
0A7F:          : pop y                    ; 0C
0A80:          : pop y                    ; 0C
0A81:          : call.gt $0030            ; 30 30 00
0A84:          : nop                      ; 00
0A85:          : nop                      ; 00
0A86:          : dec w                    ; 7C
0A87:          : mul j, $6606             ; 66 06 66
0A8A:          : set y, $18               ; 3E 18
0A8C:          : mul j, $1866             ; 66 66 18
0A8F:          : sub w, $1E               ; 60 1E
0A91:          : call.gt $666B            ; 30 6B 66
0A94:          : mul j, $6666             ; 66 66 66
0A97:          : push i                   ; 06
0A98:          : cpy w, a                 ; 3C
0A99:          : load y, j                ; 18
0A9A:          : mul j, $7F66             ; 66 66 7F
0A9D:          : load y, j                ; 18
0A9E:          : mul j, $0018             ; 66 18 00
0AA1:          : nop                      ; 00
0AA2:          : nop                      ; 00
0AA3:          : nop                      ; 00
0AA4:          : nop                      ; 00
0AA5:          : nop                      ; 00
0AA6:          : nop                      ; 00
0AA7:          : nop                      ; 00
0AA8:          : nop                      ; FE
0AA9:          : set y, $66               ; 3E 66(f)
0AAB:          : mul j, $1800             ; 66 00 18
0AAE:          : load y, j                ; 18
0AAF:          : nop                      ; 00
0AB0:          : pop i                    ; 10
0AB1:          : load y, j                ; 18
0AB2:          : nop                      ; 00
0AB3:          : load y, j                ; 18
0AB4:          : push i                   ; 06
0AB5:          : mul j, $0618             ; 66 18 06
0AB8:          : mul j, $6630             ; 66 30 66
0ABB:          : mul j, $6618             ; 66 18 66
0ABE:          : mul j, $1818             ; 66 18 18
0AC1:          : call.gt $1800            ; 30 00 18
0AC4:          : nop                      ; 00
0AC5:          : dec x                    ; 79
0AC6:          : mul j, $6666             ; 66 66 66
0AC9:          : mul j, $0606             ; 66 06 06
0ACC:          : mul j, $1866             ; 66 66 18
0ACF:          : mul j, $0636             ; 66 36 06
0AD2:          : mul a, $66               ; 63 66(f)
0AD4:          : mul j, $6606             ; 66 06 66
0AD7:          : cpy a, y                 ; 36
0AD8:          : mul j, $6618             ; 66 18 66
0ADB:          : cpy w, a                 ; 3C
0ADC:          : inc i                    ; 77
0ADD:          : mul j, $0618             ; 66 18 06
0AE0:          : pop y                    ; 0C
0AE1:          : sub w, $30               ; 60 30(0)
0AE3:          : nop                      ; 00
0AE4:          : nop                      ; 00
0AE5:          : nop                      ; 00
0AE6:          : mul j, $6666             ; 66 66 66
0AE9:          : mul j, $1806             ; 66 06 18
0AEC:          : dec w                    ; 7C
0AED:          : mul j, $6018             ; 66 18 60
0AF0:          : cpy a, y                 ; 36
0AF1:          : call.gt $666B            ; 30 6B 66
0AF4:          : mul j, $6666             ; 66 66 66
0AF7:          : push i                   ; 06
0AF8:          : sub w, $18               ; 60 18
0AFA:          : mul j, $3E3C             ; 66 3C 3E
0AFD:          : cpy w, a                 ; 3C
0AFE:          : dec w                    ; 7C
0AFF:          : pop y                    ; 0C
0B00:          : nop                      ; 00
0B01:          : nop                      ; 00
0B02:          : nop                      ; 00
0B03:          : nop                      ; 00
0B04:          : nop                      ; 00
0B05:          : nop                      ; 00
0B06:          : load y, j                ; 18
0B07:          : nop                      ; 00
0B08:          : mod a, x                 ; 6C
0B09:          : load y, j                ; 18
0B0A:          : mul a, x                 ; 62
0B0B:          : nop                      ; FC
0B0C:          : nop                      ; 00
0B0D:          : call.gt $000C            ; 30 0C 00
0B10:          : nop                      ; 00
0B11:          : pop y                    ; 0C
0B12:          : nop                      ; 00
0B13:          : load y, j                ; 18
0B14:          : push y                   ; 02
0B15:          : cpy w, a                 ; 3C
0B16:          : dec i                    ; 7E
0B17:          : dec i                    ; 7E
0B18:          : cpy w, a                 ; 3C
0B19:          : inc j                    ; 78
0B1A:          : cpy w, a                 ; 3C
0B1B:          : cpy w, a                 ; 3C
0B1C:          : load y, j                ; 18
0B1D:          : cpy w, a                 ; 3C
0B1E:          : cpy w, a                 ; 3C
0B1F:          : nop                      ; 00
0B20:          : push f                   ; 08
0B21:          : sub w, $00               ; 60 00
0B23:          : pop y                    ; 0C
0B24:          : load y, j                ; 18
0B25:          : push y                   ; 02
0B26:          : mul j, $3C3E             ; 66 3E 3C
0B29:          : set y, $7E               ; 3E 7E(~)
0B2B:          : push i                   ; 06
0B2C:          : cpy w, a                 ; 3C
0B2D:          : mul j, $3C3C             ; 66 3C 3C
0B30:          : mul j, $637E             ; 66 7E 63
0B33:          : mul j, $063C             ; 66 3C 06
0B36:          : cpy w, a                 ; 3C
0B37:          : mul j, $183C             ; 66 3C 18
0B3A:          : cpy w, a                 ; 3C
0B3B:          : load y, j                ; 18
0B3C:          : mul a, $66               ; 63 66(f)
0B3E:          : load y, j                ; 18
0B3F:          : dec i                    ; 7E
0B40:          : cpy w, a                 ; 3C
0B41:          : set w, $3C               ; 40 3C(<)
0B43:          : nop                      ; 00
0B44:          : nop                      ; 00
0B45:          : nop                      ; 00
0B46:          : dec w                    ; 7C
0B47:          : set y, $3C               ; 3E 3C(<)
0B49:          : dec w                    ; 7C
0B4A:          : dec w                    ; 7C
0B4B:          : load y, j                ; 18
0B4C:          : sub w, $66               ; 60 66(f)
0B4E:          : cpy w, a                 ; 3C
0B4F:          : mul j, $7866             ; 66 66 78
0B52:          : div j, $3C66             ; 6B 66 3C
0B55:          : set y, $7C               ; 3E 7C(|)
0B57:          : push i                   ; 06
0B58:          : set y, $30               ; 3E 30(0)
0B5A:          : dec w                    ; 7C
0B5B:          : load y, j                ; 18
0B5C:          : cpy a, y                 ; 36
0B5D:          : mul j, $7E60             ; 66 60 7E
0B60:          : nop                      ; 00
0B61:          : nop                      ; 00
0B62:          : nop                      ; 00
0B63:          : nop                      ; 00
0B64:          : nop                      ; 00
0B65:          : nop                      ; 00
0B66:          : nop                      ; 00
0B67:          : nop                      ; 00
0B68:          : nop                      ; 00
0B69:          : nop                      ; 00
0B6A:          : nop                      ; 00
0B6B:          : nop                      ; 00
0B6C:          : nop                      ; 00
0B6D:          : nop                      ; 00
0B6E:          : nop                      ; 00
0B6F:          : nop                      ; 00
0B70:          : nop                      ; 00
0B71:          : nop                      ; 00
0B72:          : nop                      ; 00
0B73:          : nop                      ; 00
0B74:          : nop                      ; 00
0B75:          : nop                      ; 00
0B76:          : nop                      ; 00
0B77:          : nop                      ; 00
0B78:          : nop                      ; 00
0B79:          : nop                      ; 00
0B7A:          : nop                      ; 00
0B7B:          : nop                      ; 00
0B7C:          : nop                      ; 00
0B7D:          : nop                      ; 00
0B7E:          : nop                      ; 00
0B7F:          : nop                      ; 00
0B80:          : nop                      ; 00
0B81:          : nop                      ; 00
0B82:          : nop                      ; 00
0B83:          : nop                      ; 00
0B84:          : nop                      ; 00
0B85:          : cpy w, a                 ; 3C
0B86:          : nop                      ; 00
0B87:          : nop                      ; 00
0B88:          : nop                      ; 00
0B89:          : nop                      ; 00
0B8A:          : nop                      ; 00
0B8B:          : nop                      ; 00
0B8C:          : nop                      ; 00
0B8D:          : nop                      ; 00
0B8E:          : nop                      ; 00
0B8F:          : nop                      ; 00
0B90:          : nop                      ; 00
0B91:          : nop                      ; 00
0B92:          : nop                      ; 00
0B93:          : nop                      ; 00
0B94:          : nop                      ; 00
0B95:          : nop                      ; 00
0B96:          : sub w, $00               ; 60 00
0B98:          : nop                      ; 00
0B99:          : nop                      ; 00
0B9A:          : nop                      ; 00
0B9B:          : nop                      ; 00
0B9C:          : nop                      ; 00
0B9D:          : nop                      ; 00
0B9E:          : nop                      ; 00
0B9F:          : nop                      ; 00
0BA0:          : nop                      ; 00
0BA1:          : nop                      ; 00
0BA2:          : nop                      ; 00
0BA3:          : nop                      ; 00
0BA4:          : nop                      ; FF
0BA5:          : nop                      ; 00
0BA6:          : nop                      ; 00
0BA7:          : nop                      ; 00
0BA8:          : nop                      ; 00
0BA9:          : nop                      ; 00
0BAA:          : nop                      ; 00
0BAB:          : nop                      ; 00
0BAC:          : cpy w, a                 ; 3C
0BAD:          : nop                      ; 00
0BAE:          : nop                      ; 00
0BAF:          : cpy w, a                 ; 3C
0BB0:          : nop                      ; 00
0BB1:          : nop                      ; 00
0BB2:          : nop                      ; 00
0BB3:          : nop                      ; 00
0BB4:          : nop                      ; 00
0BB5:          : push i                   ; 06
0BB6:          : sub w, $00               ; 60 00
0BB8:          : nop                      ; 00
0BB9:          : nop                      ; 00
0BBA:          : nop                      ; 00
0BBB:          : nop                      ; 00
0BBC:          : nop                      ; 00
0BBD:          : nop                      ; 00
0BBE:          : cpy w, a                 ; 3C
0BBF:          : nop                      ; 00
0BC0:          : nop                      ; 00
0BC1:          : nop                      ; 00
0BC2:          : nop                      ; 00
0BC3:          : nop                      ; 00
0BC4:          : nop                      ; 00
0BC5:          : dec j                    ; 7F
0BC6:          : call.gt $3231            ; 30 31 32
0BC9:          : call.nz $3534            ; 33 34 35
0BCC:          : cpy a, y                 ; 36
0BCD:          : cpy a, z                 ; 37
0BCE:          : cpy a, w                 ; 38
0BCF:          : cpy x, a                 ; 39
0BD0:          : sub a, $62               ; 61 62(b)
0BD2:          : mul a, $64               ; 63 64(d)
0BD4:          : mul i, $6766             ; 65 66 67
0BD7:          : div a, $69               ; 68 69(i)
0BD9:          : div i, $6C6B             ; 6A 6B 6C
0BDC:          : mod a, $6E               ; 6D 6E(n)
0BDE:          : mod i, $7170             ; 6F 70 71
0BE1:          : inc x                    ; 72
0BE2:          : inc y                    ; 73
0BE3:          : inc z                    ; 74
0BE4:          : inc w                    ; 75
0BE5:          : inc a                    ; 76
0BE6:          : inc i                    ; 77
0BE7:          : inc j                    ; 78
0BE8:          : dec x                    ; 79
0BE9:          : dec y                    ; 7A
0BEA:          : set a, $42               ; 41 42(B)
0BEC:          : set j, $4544             ; 43 44 45
0BEF:          : add a, z                 ; 46
0BF0:          : add a, w                 ; 47
0BF1:          : add i, j                 ; 48
0BF2:          : add i, a                 ; 49
0BF3:          : add i, z                 ; 4A
0BF4:          : add i, w                 ; 4B
0BF5:          : add j, a                 ; 4C
0BF6:          : add j, x                 ; 4D
0BF7:          : add j, y                 ; 4E
0BF8:          : add i, $5150             ; 4F 50 51
0BFB:          : add y, $53               ; 52 53(S)
0BFD:          : add w, $55               ; 54 55(U)
0BFF:          : sub a, x                 ; 56
0C00:          : sub a, y                 ; 57
0C01:          : sub a, z                 ; 58
0C02:          : sub a, w                 ; 59
0C03:          : sub i, $5155             ; 5A
0C04:          : store i, a               ; 20
0C05:          : store i, w               ; 21
0C06:          : store i, z               ; 22
0C07:          : store j, a               ; 23
0C08:          : store j, x               ; 24
0C09:          : store j, y               ; 25
0C0A:          : store $2827, x           ; 26 27 28
0C0D:          : store $2B40, w           ; 29 40 2B
0C10:          : call $3D2A               ; 2D 2A 3D  ERROR $3D2A
0C13:          : call.neq $2E2C           ; 2F 2C 2E
0C16:          : cpy z, a                 ; 3B
0C17:          : sub j, $2E2C             ; 5B
0C18:          : sub x, $7B               ; 5D 7B({)
0C1A:          : dec a                    ; 7D
0C1B:          : set z, $3C               ; 3F 3C(<)
0C1D:          : set y, $3A               ; 3E 3A(:)
0C1F:          : dec j                    ; 7F
0C20:          : dec j                    ; 7F
0C21:          : dec j                    ; 7F
0C22:          : dec j                    ; 7F
0C23:          : dec j                    ; 7F
0C24:          : dec j                    ; 7F
0C25:          : dec j                    ; 7F
0C26:          : dec j                    ; 7F
0C27:          : dec j                    ; 7F
0C28:          : dec j                    ; 7F
0C29:          : dec j                    ; 7F
0C2A:          : dec j                    ; 7F
0C2B:          : dec j                    ; 7F
0C2C:          : dec j                    ; 7F
0C2D:          : dec j                    ; 7F
0C2E:          : dec j                    ; 7F
0C2F:          : dec j                    ; 7F
0C30:          : dec j                    ; 7F
0C31:          : dec j                    ; 7F
0C32:          : dec j                    ; 7F
