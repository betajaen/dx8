0400:          : nop                      ; E3
0401:          : push j                   ; 07
0402:          : pop w                    ; 0E
0403:          : push w                   ; 04
0404:          : load w, $B504            ; 1C 04 B5
0407:          : push w                   ; 04
0408:          : add a, w                 ; 47
0409:          : push w                   ; 04
040A:          : store j, y               ; 25
040B:          : push w                   ; 04
040C:          : dec x                    ; 78
040D:          : push w                   ; 04
040E:          : pop a                    ; 0F
040F:          : pop j                    ; 11
0410:          : pop i                    ; 10
0411: LBL_1041 : dec a                    ; 77
0412:          : push a                   ; 05
0413:          : load a, j                ; 16
0414:          : store i, a               ; 20
0415:          : pop a                    ; 0F
0416:          : inc i                    ; 75
0417:          : inc j                    ; 76
0418:          : cmp a                    ; 82
0419:          : rjmp.nz $F8              ; CC F8     LBL_1041 $0411
041B:          : return                   ; 34
041C:          : pop j                    ; 11
041D:          : pop a                    ; 0F
041E:          : pop i                    ; 10
041F: LBL_1055 : store i, a               ; 20
0420:          : inc i                    ; 75
0421:          : dec j                    ; 7D
0422:          : rjmp.nz $FD              ; CC FD     LBL_1055 $041F
0424:          : return                   ; 34
0425:          : pop a                    ; 0F
0426:          : pop y                    ; 0C
0427:          : pop x                    ; 0B
0428:          : cmp x                    ; 83
0429:          : rjmp.gt $1B              ; C6 1B     LBL_1092 $0444
042B:          : cmp y                    ; 84
042C:          : rjmp.gt $18              ; C6 18     LBL_1092 $0444
042E:          : cmp a                    ; 82
042F:          : rjmp.lt $15              ; C8 15     LBL_1092 $0444
0431:          : cmp a                    ; 82
0432:          : rjmp.gt $12              ; C6 12     LBL_1092 $0444
0434:          : set j, $0000             ; 43 00 00
0437:          : add j, y                 ; 4E
0438:          : mul j, $0028             ; 63 28 00
043B:          : add j, x                 ; 4D
043C:          : add j, $8000             ; 50 00 80
043F:          : store j, a               ; 23
0440:          : set a, $01               ; 41 01
0442:          : rjmp $04                 ; BE 04     LBL_1094 $0446
0444: LBL_1092 : set a, $00               ; 41 00
0446: LBL_1094 : return                   ; 34
0447:          : pop j                    ; 11
0448:          : pop y                    ; 0C
0449:          : pop x                    ; 0B
044A: LBL_1098 : load a, j                ; 16
044B:          : cmp a                    ; 82
044C:          : rjmp.z $2B               ; CA 2B(+)  LBL_1143 $0477
044E:          : push z                   ; 03
044F:          : push w                   ; 04
0450:          : cmp x                    ; 83
0451:          : rjmp.gt $1B              ; C6 1B     LBL_1132 $046C
0453:          : cmp y                    ; 84
0454:          : rjmp.gt $18              ; C6 18     LBL_1132 $046C
0456:          : cmp a                    ; 82
0457:          : rjmp.lt $15              ; C8 15     LBL_1132 $046C
0459:          : cmp a                    ; 82
045A:          : rjmp.gt $12              ; C6 12     LBL_1132 $046C
045C:          : set j, $0000             ; 43 00 00
045F:          : add j, y                 ; 4E
0460:          : mul j, $0028             ; 63 28 00
0463:          : add j, x                 ; 4D
0464:          : add j, $8000             ; 50 00 80
0467:          : store j, a               ; 23
0468:          : set a, $01               ; 41 01
046A:          : rjmp $04                 ; BE 04     LBL_1134 $046E
046C: LBL_1132 : set a, $00               ; 41 00
046E: LBL_1134 : pop w                    ; 0E
046F:          : pop z                    ; 0D
0470:          : cmp a                    ; 82
0471:          : rjmp.z $06               ; CA 06     LBL_1143 $0477
0473:          : inc j                    ; 76
0474:          : inc x                    ; 71
0475:          : rjmp $D5                 ; BE D5     LBL_1098 $044A
0477: LBL_1143 : return                   ; 34
0478:          : pop a                    ; 0F
0479:          : pop y                    ; 0C
047A:          : pop x                    ; 0B
047B: FUN_1147 : cmp a                    ; 82
047C:          : rjmp.lt $0A              ; C8 0A     LBL_1158 $0486
047E:          : cmp a                    ; 82
047F:          : rjmp.lt $06              ; C8 06     LBL_1157 $0485
0481:          : inc x                    ; 71
0482:          : inc x                    ; 71
0483:          : rjmp $03                 ; BE 03     LBL_1158 $0486
0485: LBL_1157 : inc x                    ; 71
0486: LBL_1158 : cpy z, a                 ; 3B
0487:          : mod a, $0A               ; 6A 0A
0489:          : add a, $30               ; 55 30(0)
048B:          : push z                   ; 03
048C:          : cmp x                    ; 83
048D:          : rjmp.gt $1B              ; C6 1B     LBL_1192 $04A8
048F:          : cmp y                    ; 84
0490:          : rjmp.gt $18              ; C6 18     LBL_1192 $04A8
0492:          : cmp a                    ; 82
0493:          : rjmp.lt $15              ; C8 15     LBL_1192 $04A8
0495:          : cmp a                    ; 82
0496:          : rjmp.gt $12              ; C6 12     LBL_1192 $04A8
0498:          : set j, $0000             ; 43 00 00
049B:          : add j, y                 ; 4E
049C:          : mul j, $0028             ; 63 28 00
049F:          : add j, x                 ; 4D
04A0:          : add j, $8000             ; 50 00 80
04A3:          : store j, a               ; 23
04A4:          : set a, $01               ; 41 01
04A6:          : rjmp $04                 ; BE 04     LBL_1194 $04AA
04A8: LBL_1192 : set a, $00               ; 41 00
04AA: LBL_1194 : pop z                    ; 0D
04AB:          : dec x                    ; 78
04AC:          : cpy a, z                 ; 37
04AD:          : div a, $0A               ; 65 0A
04AF:          : cmp a                    ; 82
04B0:          : rjmp.z $04               ; CA 04     LBL_1204 $04B4
04B2:          : rjmp $D4                 ; BE D4     LBL_1158 $0486
04B4: LBL_1204 : return                   ; 34
04B5:          : pop a                    ; 0F
04B6:          : set i, $8000             ; 42 00 80
04B9:          : set j, $2800             ; 43 00 28
04BC:          : call $041F               ; 2D 1F 04  LBL_1055 $041F
04BF:          : return                   ; 34
04C0:          : nop                      ; 00
04C1:          : nop                      ; 00
04C2:          : nop                      ; 00
04C3:          : nop                      ; 00
04C4:          : nop                      ; 00
04C5:          : nop                      ; 00
04C6:          : nop                      ; 00
04C7:          : nop                      ; 00
04C8:          : cmp a, z                 ; 80
04C9:          : cpy z, a                 ; 3B
04CA:          : set z, $42               ; 3F 42(B)
04CC:          : nop                      ; FF
04CD:          : xor a, z                 ; AA
04CE: LBL_1230 : rjmp.nz $00              ; CC 00     LBL_1230 $04CE
04D0:          : nop                      ; 00
04D1:          : nop                      ; 00
04D2: FUN_1234 : set i, $0503             ; 42 03 05
04D5:          : store $0000, i           ; 2B 00 00
04D8:          : set i, $0506             ; 42 06 05
04DB:          : store $0002, i           ; 2B 02 00
04DE:          : set i, $0567             ; 42 67 05
04E1:          : store $0004, i           ; 2B 04 00
04E4:          : set i, $05D1             ; 42 D1 05
04E7:          : store $0006, i           ; 2B 06 00
04EA:          : set i, $05DD             ; 42 DD 05
04ED:          : store $0008, i           ; 2B 08 00
04F0:          : set i, $05E6             ; 42 E6 05
04F3:          : store $000A, i           ; 2B 0A 00
04F6:          : set i, $05E6             ; 42 E6 05
04F9:          : store $000C, i           ; 2B 0C 00
04FC:          : set i, $05DF             ; 42 DF 05
04FF:          : store $000E, i           ; 2B 0E 00
0502:          : return                   ; 34
0503:          : jmp $0862                ; B8 62 08  LBL_2146 $0862
0506:          : load a, $002C            ; 1D 2C 00
0509:          : cpy x, a                 ; 39
050A:          : jmp.gt $0532             ; C5 32 05  LBL_1330 $0532
050D:          : jmp.eq $0551             ; C1 51 05  LBL_1361 $0551
0510:          : load a, $04CA            ; 1D CA 04
0513:          : add a, x                 ; 44
0514:          : store $001E, a           ; 2A 1E 00
0517:          : neg a                    ; 6E
0518:          : store $0021, a           ; 2A 21 00
051B:          : load a, $04CB            ; 1D CB 04
051E:          : add a, x                 ; 44
051F:          : store $001F, a           ; 2A 1F 00
0522:          : neg a                    ; 6E
0523:          : store $0022, a           ; 2A 22 00
0526:          : load a, $04CC            ; 1D CC 04
0529:          : add a, x                 ; 44
052A:          : store $0020, a           ; 2A 20 00
052D:          : neg a                    ; 6E
052E:          : store $0023, a           ; 2A 23 00
0531:          : resume                   ; CF
0532: LBL_1330 : set a, $3B               ; 41 3B(;)
0534:          : store $001D, a           ; 2A 1D 00
0537:          : set a, $3F               ; 41 3F(?)
0539:          : store $001E, a           ; 2A 1E 00
053C:          : set a, $42               ; 41 42(B)
053E:          : store $001F, a           ; 2A 1F 00
0541:          : set a, $FE               ; 41 FE
0543:          : store $0020, a           ; 2A 20 00
0546:          : set a, $FE               ; 41 FE
0548:          : store $0021, a           ; 2A 21 00
054B:          : set a, $FE               ; 41 FE
054D:          : store $0022, a           ; 2A 22 00
0550:          : resume                   ; CF
0551: LBL_1361 : set a, $00               ; 41 00
0553:          : store $001D, a           ; 2A 1D 00
0556:          : store $001E, a           ; 2A 1E 00
0559:          : store $001F, a           ; 2A 1F 00
055C:          : store $0020, a           ; 2A 20 00
055F:          : store $0021, a           ; 2A 21 00
0562:          : store $0022, a           ; 2A 22 00
0565:          : resume                   ; CF
0566:          : resume                   ; CF
0567:          : load a, $04C9            ; 1D C9 04
056A:          : load x, $04CC            ; 19 CC 04
056D:          : cmp a, x                 ; 7E
056E:          : jmp.lt $057F             ; C7 7F 05  LBL_1407 $057F
0571:          : jmp.gt $0586             ; C5 86 05  LBL_1414 $0586
0574:          : load a, $00E1            ; 1D E1 00
0577:          : mod a, $7F               ; 6A 7F()
0579:          : store $04CC, a           ; 2A CC 04
057C:          : jmp $058A                ; B8 8A 05  LBL_1418 $058A
057F: LBL_1407 : inc a                    ; 70
0580:          : store $04C9, a           ; 2A C9 04
0583:          : jmp $058A                ; B8 8A 05  LBL_1418 $058A
0586: LBL_1414 : dec a                    ; 77
0587:          : store $04C9, a           ; 2A C9 04
058A: LBL_1418 : load a, $04CA            ; 1D CA 04
058D:          : load x, $04CD            ; 19 CD 04
0590:          : cmp a, x                 ; 7E
0591:          : jmp.lt $05A2             ; C7 A2 05  LBL_1442 $05A2
0594:          : jmp.gt $05A9             ; C5 A9 05  LBL_1449 $05A9
0597:          : load a, $00E1            ; 1D E1 00
059A:          : mod a, $7F               ; 6A 7F()
059C:          : store $04CD, a           ; 2A CD 04
059F:          : jmp $05AD                ; B8 AD 05  LBL_1453 $05AD
05A2: LBL_1442 : inc a                    ; 70
05A3:          : store $04CA, a           ; 2A CA 04
05A6:          : jmp $05AD                ; B8 AD 05  LBL_1453 $05AD
05A9: LBL_1449 : dec a                    ; 77
05AA:          : store $04CA, a           ; 2A CA 04
05AD: LBL_1453 : load a, $04CB            ; 1D CB 04
05B0:          : load x, $04CE            ; 19 CE 04
05B3:          : cmp a, x                 ; 7E
05B4:          : jmp.lt $05C5             ; C7 C5 05  LBL_1477 $05C5
05B7:          : jmp.gt $05CC             ; C5 CC 05  LBL_1484 $05CC
05BA:          : load a, $00E1            ; 1D E1 00
05BD:          : mod a, $7F               ; 6A 7F()
05BF:          : store $04CE, a           ; 2A CE 04
05C2:          : jmp $05D0                ; B8 D0 05  LBL_1488 $05D0
05C5: LBL_1477 : inc a                    ; 70
05C6:          : store $04CB, a           ; 2A CB 04
05C9:          : jmp $05AD                ; B8 AD 05  LBL_1453 $05AD
05CC: LBL_1484 : dec a                    ; 77
05CD:          : store $04CB, a           ; 2A CB 04
05D0: LBL_1488 : resume                   ; CF
05D1:          : load a, $0034            ; 1D 34 00
05D4:          : store $04C0, a           ; 2A C0 04
05D7:          : set a, $00               ; 41 00
05D9:          : store $0034, a           ; 2A 34 00
05DC:          : resume                   ; CF
05DD:          : nop                      ; 00
05DE:          : resume                   ; CF
05DF:          : nop                      ; 00
05E0:          : dbn $4C48                ; D5 48 4C
05E3:          : int $FF                  ; CE FF
05E5:          : resume                   ; CF
05E6:          : dbn $4C44                ; D5 44 4C
05E9:          : nop                      ; 00
05EA:          : resume                   ; CF
05EB: FUN_1515 : set a, $44               ; 41 44(D)
05ED:          : store $84C1, a           ; 2A C1 84
05F0:          : set a, $58               ; 41 58(X)
05F2:          : store $84C2, a           ; 2A C2 84
05F5:          : set a, $38               ; 41 38(8)
05F7:          : store $84C3, a           ; 2A C3 84
05FA:          : set a, $2F               ; 41 2F(/)
05FC:          : store $84C5, a           ; 2A C5 84
05FF:          : set a, $2F               ; 41 2F(/)
0601:          : store $84C6, a           ; 2A C6 84
0604:          : set a, $2F               ; 41 2F(/)
0606:          : store $84C7, a           ; 2A C7 84
0609:          : return                   ; 34
060A: FUN_1546 : load x, $002F            ; 19 2F 00
060D:          : bit x, $40               ; 91 40(@)
060F:          : jmp.z $0615              ; C9 15 06  LBL_1557 $0615
0612:          : jmp $0623                ; B8 23 06  LBL_1571 $0623
0615: LBL_1557 : set x, $20               ; 3D 20
0617:          : store $84C5, x           ; 26 C5 84
061A:          : store $84C6, x           ; 26 C6 84
061D:          : store $84C7, x           ; 26 C7 84
0620:          : jmp $062E                ; B8 2E 06  LBL_1582 $062E
0623: LBL_1571 : set x, $2F               ; 3D 2F(/)
0625:          : store $84C5, x           ; 26 C5 84
0628:          : store $84C6, x           ; 26 C6 84
062B:          : store $84C7, x           ; 26 C7 84
062E: LBL_1582 : return                   ; 34
062F:          : add i, w                 ; 4B
0630:          : push i                   ; 06
0631:          : add y, $06               ; 52 06
0633:          : jmp i, a                 ; BB        ERROR $8406
0634:          : push i                   ; 06
0635:          : push y                   ; 02
0636:          : push j                   ; 07
0637:          : call.eq $3A07            ; 2E 07 3A
063A:          : push j                   ; 07
063B:          : set a, $07               ; 41 07
063D:          : mul a, x                 ; 5F
063E:          : push j                   ; 07
063F:          : div i, j                 ; 66
0640:          : push j                   ; 07
0641:          : neg x                    ; 6F
0642:          : push j                   ; 07
0643:          : cmp a, y                 ; 7F
0644:          : push j                   ; 07
0645:          : cmp w                    ; 86
0646:          : push j                   ; 07
0647:          : xor x, $07               ; AC 07
0649:          : xor y, $07               ; AD 07
064B:          : set a, $00               ; 41 00
064D:          : store $04C0, a           ; 2A C0 04
0650:          : nop                      ; 00
0651:          : return                   ; 34
0652:          : set a, $00               ; 41 00
0654:          : store $04C0, a           ; 2A C0 04
0657:          : set a, $01               ; 41 01
0659:          : store $04C1, a           ; 2A C1 04
065C:          : set a, $20               ; 41 20
065E:          : store $8269, a           ; 2A 69 82
0661:          : set a, $20               ; 41 20
0663:          : store $826A, a           ; 2A 6A 82
0666:          : set a, $20               ; 41 20
0668:          : store $826B, a           ; 2A 6B 82
066B:          : set a, $20               ; 41 20
066D:          : store $826C, a           ; 2A 6C 82
0670:          : set a, $20               ; 41 20
0672:          : store $826D, a           ; 2A 6D 82
0675:          : set a, $20               ; 41 20
0677:          : store $826E, a           ; 2A 6E 82
067A:          : set a, $20               ; 41 20
067C:          : store $8291, a           ; 2A 91 82
067F:          : set a, $20               ; 41 20
0681:          : store $8292, a           ; 2A 92 82
0684:          : set a, $20               ; 41 20
0686:          : store $8293, a           ; 2A 93 82
0689:          : set a, $20               ; 41 20
068B:          : store $8294, a           ; 2A 94 82
068E:          : set a, $20               ; 41 20
0690:          : store $8295, a           ; 2A 95 82
0693:          : set a, $20               ; 41 20
0695:          : store $8296, a           ; 2A 96 82
0698:          : set a, $00               ; 41 00
069A:          : store $04C2, a           ; 2A C2 04
069D:          : set i, $D400             ; 42 00 D4
06A0:          : store $04C3, i           ; 2B C3 04
06A3:          : set a, $FF               ; 41 FF
06A5:          : store $04C5, a           ; 2A C5 04
06A8:          : set a, $FF               ; 41 FF
06AA:          : store $0037, a           ; 2A 37 00
06AD:          : set i, $D400             ; 42 00 D4
06B0:          : store $0038, i           ; 2B 38 00
06B3:          : set a, $01               ; 41 01
06B5:          : store $003A, a           ; 2A 3A 00
06B8:          : int $D0                  ; CE D0
06BA:          : return                   ; 34
06BB: FUN_1723 : set a, $00               ; 41 00
06BD:          : store $04C0, a           ; 2A C0 04
06C0:          : set a, $00               ; 41 00
06C2:          : store $04C1, a           ; 2A C1 04
06C5:          : set a, $49               ; 41 49(I)
06C7:          : store $8269, a           ; 2A 69 82
06CA:          : set a, $4E               ; 41 4E(N)
06CC:          : store $826A, a           ; 2A 6A 82
06CF:          : set a, $53               ; 41 53(S)
06D1:          : store $826B, a           ; 2A 6B 82
06D4:          : set a, $45               ; 41 45(E)
06D6:          : store $826C, a           ; 2A 6C 82
06D9:          : set a, $52               ; 41 52(R)
06DB:          : store $826D, a           ; 2A 6D 82
06DE:          : set a, $54               ; 41 54(T)
06E0:          : store $826E, a           ; 2A 6E 82
06E3:          : set a, $46               ; 41 46(F)
06E5:          : store $8291, a           ; 2A 91 82
06E8:          : set a, $4C               ; 41 4C(L)
06EA:          : store $8292, a           ; 2A 92 82
06ED:          : set a, $4F               ; 41 4F(O)
06EF:          : store $8293, a           ; 2A 93 82
06F2:          : set a, $50               ; 41 50(P)
06F4:          : store $8294, a           ; 2A 94 82
06F7:          : set a, $50               ; 41 50(P)
06F9:          : store $8295, a           ; 2A 95 82
06FC:          : set a, $59               ; 41 59(Y)
06FE:          : store $8296, a           ; 2A 96 82
0701:          : return                   ; 34
0702:          : load a, $00E1            ; 1D E1 00
0705:          : store $04C9, a           ; 2A C9 04
0708:          : load a, $00E1            ; 1D E1 00
070B:          : store $04CA, a           ; 2A CA 04
070E:          : load a, $00E1            ; 1D E1 00
0711:          : store $04CB, a           ; 2A CB 04
0714:          : load a, $0036            ; 1D 36 00
0717:          : set x, $02               ; 3D 02
0719:          : set y, $02               ; 3E 02
071B:          : call $047B               ; 2D 7B 04  FUN_1147 $047B
071E:          : load a, $0037            ; 1D 37 00
0721:          : set x, $07               ; 3D 07
0723:          : set y, $02               ; 3E 02
0725:          : call $047B               ; 2D 7B 04  FUN_1147 $047B
0728:          : set a, $00               ; 41 00
072A:          : store $04C0, a           ; 2A C0 04
072D:          : return                   ; 34
072E:          : set a, $00               ; 41 00
0730:          : store $04C0, a           ; 2A C0 04
0733:          : load a, $04C2            ; 1D C2 04
0736:          : callt $063F, a           ; C0 3F 06
0739:          : return                   ; 34
073A:          : set a, $00               ; 41 00
073C:          : store $04C0, a           ; 2A C0 04
073F:          : nop                      ; 00
0740:          : return                   ; 34
0741:          : load a, $00E1            ; 1D E1 00
0744:          : mod a, $7F               ; 6A 7F()
0746:          : store $04C9, a           ; 2A C9 04
0749:          : load a, $00E1            ; 1D E1 00
074C:          : mod a, $7F               ; 6A 7F()
074E:          : store $04CA, a           ; 2A CA 04
0751:          : load a, $00E1            ; 1D E1 00
0754:          : mod a, $7F               ; 6A 7F()
0756:          : store $04CB, a           ; 2A CB 04
0759:          : set a, $00               ; 41 00
075B:          : store $04C0, a           ; 2A C0 04
075E:          : return                   ; 34
075F:          : set a, $00               ; 41 00
0761:          : store $04C0, a           ; 2A C0 04
0764:          : nop                      ; 00
0765:          : return                   ; 34
0766:          : set a, $01               ; 41 01
0768:          : store $04C2, a           ; 2A C2 04
076B:          : call $0773               ; 2D 73 07  FUN_1907 $0773
076E:          : return                   ; 34
076F:          : call $0773               ; 2D 73 07  FUN_1907 $0773
0772:          : return                   ; 34
0773: FUN_1907 : load i, $04C3            ; 1E C3 04
0776:          : load a, i                ; 13
0777:          : inc i                    ; 75
0778:          : store $04C3, i           ; 2B C3 04
077B:          : callt $0643, a           ; C0 43 06
077E:          : return                   ; 34
077F:          : nop                      ; 00
0780:          : set a, $03               ; 41 03
0782:          : store $04C2, a           ; 2A C2 04
0785:          : return                   ; 34
0786:          : load i, $04C3            ; 1E C3 04
0789:          : load z, i                ; 14
078A:          : inc i                    ; 75
078B:          : store $0038, z           ; 28 38 00
078E:          : load z, i                ; 14
078F:          : store $0039, z           ; 28 39 00
0792:          : load i, $04C3            ; 1E C3 04
0795:          : inc i                    ; 75
0796:          : inc i                    ; 75
0797:          : store $04C3, i           ; 2B C3 04
079A:          : load a, $04C5            ; 1D C5 04
079D:          : inc a                    ; 70
079E:          : store $04C5, a           ; 2A C5 04
07A1:          : store $0037, a           ; 2A 37 00
07A4:          : set a, $01               ; 41 01
07A6:          : store $003A, a           ; 2A 3A 00
07A9:          : int $D0                  ; CE D0
07AB:          : return                   ; 34
07AC:          : return                   ; 34
07AD:          : set a, $03               ; 41 03
07AF:          : store $04C2, a           ; 2A C2 04
07B2:          : set i, $05E6             ; 42 E6 05
07B5:          : store $0002, i           ; 2B 02 00
07B8:          : set i, $05E6             ; 42 E6 05
07BB:          : store $0004, i           ; 2B 04 00
07BE:          : set i, $05E6             ; 42 E6 05
07C1:          : store $0006, i           ; 2B 06 00
07C4:          : set i, $05E6             ; 42 E6 05
07C7:          : store $0008, i           ; 2B 08 00
07CA:          : set i, $05DF             ; 42 DF 05
07CD:          : store $000E, i           ; 2B 0E 00
07D0:          : set i, $1400             ; 42 00 14
07D3:          : store $0000, i           ; 2B 00 00
07D6:          : dbn $5252                ; D5 52 52
07D9:          : int $FF                  ; CE FF
07DB:          : return                   ; 34
07DC:          : load a, $04C0            ; 1D C0 04
07DF:          : callt $062F, a           ; C0 2F 06
07E2:          : return                   ; 34
07E3:          : call $04D2               ; 2D D2 04  FUN_1234 $04D2
07E6:          : set a, $00               ; 41 00
07E8:          : store $0080, a           ; 2A 80 00
07EB:          : set a, $01               ; 41 01
07ED:          : store $0081, a           ; 2A 81 00
07F0:          : set a, $02               ; 41 02
07F2:          : store $0082, a           ; 2A 82 00
07F5:          : set a, $03               ; 41 03
07F7:          : store $0083, a           ; 2A 83 00
07FA:          : set a, $04               ; 41 04
07FC:          : store $0084, a           ; 2A 84 00
07FF:          : set a, $05               ; 41 05
0801:          : store $0085, a           ; 2A 85 00
0804:          : set a, $06               ; 41 06
0806:          : store $0086, a           ; 2A 86 00
0809:          : set a, $07               ; 41 07
080B:          : store $0087, a           ; 2A 87 00
080E:          : set a, $08               ; 41 08
0810:          : store $0088, a           ; 2A 88 00
0813:          : set a, $35               ; 41 35(5)
0815:          : store $00B5, a           ; 2A B5 00
0818:          : set a, $46               ; 41 46(F)
081A:          : store $00A0, a           ; 2A A0 00
081D:          : set a, $47               ; 41 47(G)
081F:          : store $00A1, a           ; 2A A1 00
0822:          : set a, $48               ; 41 48(H)
0824:          : store $00A2, a           ; 2A A2 00
0827:          : set a, $49               ; 41 49(I)
0829:          : store $00A3, a           ; 2A A3 00
082C:          : set a, $4A               ; 41 4A(J)
082E:          : store $00A4, a           ; 2A A4 00
0831:          : set a, $4B               ; 41 4B(K)
0833:          : store $00A5, a           ; 2A A5 00
0836:          : set a, $4C               ; 41 4C(L)
0838:          : store $00A6, a           ; 2A A6 00
083B:          : set a, $4D               ; 41 4D(M)
083D:          : store $00A7, a           ; 2A A7 00
0840:          : set a, $4E               ; 41 4E(N)
0842:          : store $00A8, a           ; 2A A8 00
0845:          : set a, $4F               ; 41 4F(O)
0847:          : store $00A9, a           ; 2A A9 00
084A:          : set i, $08B7             ; 42 B7 08
084D:          : store $0030, i           ; 2B 30 00
0850:          : set a, $00               ; 41 00
0852:          : store $0019, a           ; 2A 19 00
0855:          : set a, $01               ; 41 01
0857:          : store $0018, a           ; 2A 18 00
085A:          : set a, $00               ; 41 00
085C:          : store $00E0, a           ; 2A E0 00
085F:          : rti                      ; D8
0860:          : int $FE                  ; CE FE
0862: LBL_2146 : set i, $8000             ; 42 00 80
0865:          : set j, $2800             ; 43 00 28
0868:          : set a, $20               ; 41 20
086A:          : call $041F               ; 2D 1F 04  LBL_1055 $041F
086D:          : call $0411               ; 2D 11 04  LBL_1041 $0411
0870:          : call $05EB               ; 2D EB 05  FUN_1515 $05EB
0873:          : call $06BB               ; 2D BB 06  FUN_1723 $06BB
0876:          : set i, $C000             ; 42 00 C0
0879:          : store $04CF, i           ; 2B CF 04
087C:          : set x, $00               ; 3D 00
087E:          : store $04D1, x           ; 26 D1 04
0881:          : set x, $0F               ; 3D 0F
0883:          : store $003E, x           ; 26 3E 00
0886:          : set x, $3C               ; 3D 3C(<)
0888:          : store $003F, x           ; 26 3F 00
088B:          : set a, $48               ; 41 48(H)
088D:          : store $8000, a           ; 2A 00 80
0890:          : set a, $69               ; 41 69(i)
0892:          : store $8001, a           ; 2A 01 80
0895:          : set a, $52               ; 41 52(R)
0897:          : store $8032, a           ; 2A 32 80
089A:          : set a, $46               ; 41 46(F)
089C:          : store $8015, a           ; 2A 15 80
089F:          : set a, $4F               ; 41 4F(O)
08A1:          : store $8016, a           ; 2A 16 80
08A4:          : set a, $4F               ; 41 4F(O)
08A6:          : store $8017, a           ; 2A 17 80
08A9: LBL_2217 : call $060A               ; 2D 0A 06  FUN_1546 $060A
08AC:          : load a, $04C0            ; 1D C0 04
08AF:          : cmp a                    ; 82
08B0:          : call.neq $07DC           ; 2F DC 07
08B3:          : jmp $08A9                ; B8 A9 08  LBL_2217 $08A9
08B6:          : nop                      ; 00
08B7:          : nop                      ; 00
08B8:          : load y, j                ; 18
08B9:          : div i, j                 ; 66
08BA:          : mod i, $4618             ; 6C 18 46
08BD:          : cpy a, w                 ; 38
08BE:          : load y, j                ; 18
08BF:          : call.gt $360C            ; 30 0C 36
08C2:          : nop                      ; 00
08C3:          : nop                      ; 00
08C4:          : nop                      ; 00
08C5:          : nop                      ; 00
08C6:          : set w, $3C               ; 40 3C(<)
08C8:          : load y, j                ; 18
08C9:          : cpy w, a                 ; 3C
08CA:          : cpy w, a                 ; 3C
08CB:          : cpy a, w                 ; 38
08CC:          : cmp a, x                 ; 7E
08CD:          : cpy w, a                 ; 3C
08CE:          : cmp a, x                 ; 7E
08CF:          : cpy w, a                 ; 3C
08D0:          : cpy w, a                 ; 3C
08D1:          : nop                      ; 00
08D2:          : nop                      ; 00
08D3:          : mul a, $00               ; 60 00
08D5:          : pop y                    ; 0C
08D6:          : cpy w, a                 ; 3C
08D7:          : cpy w, a                 ; 3C
08D8:          : cpy w, a                 ; 3C
08D9:          : set y, $3C               ; 3E 3C(<)
08DB:          : set y, $7E               ; 3E 7E(~)
08DD:          : cmp a, x                 ; 7E
08DE:          : cpy w, a                 ; 3C
08DF:          : div i, j                 ; 66
08E0:          : cpy w, a                 ; 3C
08E1:          : mul a, $66               ; 60 66(f)
08E3:          : push i                   ; 06
08E4:          : mul j, $3C66             ; 63 66 3C
08E7:          : set y, $3C               ; 3E 3C(<)
08E9:          : set y, $3C               ; 3E 3C(<)
08EB:          : cmp a, x                 ; 7E
08EC:          : div i, j                 ; 66
08ED:          : div i, j                 ; 66
08EE:          : mul j, $6666             ; 63 66 66
08F1:          : cmp a, x                 ; 7E
08F2:          : cpy w, a                 ; 3C
08F3:          : push y                   ; 02
08F4:          : cpy w, a                 ; 3C
08F5:          : pop i                    ; 10
08F6:          : nop                      ; 00
08F7:          : load y, j                ; 18
08F8:          : nop                      ; 00
08F9:          : push i                   ; 06
08FA:          : nop                      ; 00
08FB:          : mul a, $00               ; 60 00
08FD:          : inc a                    ; 70
08FE:          : nop                      ; 00
08FF:          : push i                   ; 06
0900:          : load y, j                ; 18
0901:          : mul a, $06               ; 60 06
0903:          : cpy a, w                 ; 38
0904:          : nop                      ; 00
0905:          : nop                      ; 00
0906:          : nop                      ; 00
0907:          : nop                      ; 00
0908:          : nop                      ; 00
0909:          : nop                      ; 00
090A:          : nop                      ; 00
090B:          : load y, j                ; 18
090C:          : nop                      ; 00
090D:          : nop                      ; 00
090E:          : nop                      ; 00
090F:          : nop                      ; 00
0910:          : nop                      ; 00
0911:          : nop                      ; 00
0912:          : nop                      ; 00
0913:          : nop                      ; 00
0914:          : nop                      ; 00
0915:          : nop                      ; 00
0916:          : nop                      ; 00
0917:          : nop                      ; 00
0918:          : load y, j                ; 18
0919:          : div i, j                 ; 66
091A:          : nop                      ; FE
091B:          : dec i                    ; 7C
091C:          : div i, j                 ; 66
091D:          : mod i, $1818             ; 6C 18 18
0920:          : load y, j                ; 18
0921:          : load w, $0010            ; 1C 10 00
0924:          : nop                      ; 00
0925:          : nop                      ; 00
0926:          : mul a, $66               ; 60 66(f)
0928:          : load w, $6666            ; 1C 66 66
092B:          : cpy w, a                 ; 3C
092C:          : push i                   ; 06
092D:          : div i, j                 ; 66
092E:          : mul a, $66               ; 60 66(f)
0930:          : div i, j                 ; 66
0931:          : load y, j                ; 18
0932:          : load y, j                ; 18
0933:          : call.gt $1800            ; 30 00 18
0936:          : mul i, $6642             ; 62 42 66
0939:          : div i, j                 ; 66
093A:          : div i, j                 ; 66
093B:          : div i, j                 ; 66
093C:          : push i                   ; 06
093D:          : push i                   ; 06
093E:          : div i, j                 ; 66
093F:          : div i, j                 ; 66
0940:          : load y, j                ; 18
0941:          : mul a, $36               ; 60 36(6)
0943:          : push i                   ; 06
0944:          : dec a                    ; 77
0945:          : div i, j                 ; 66
0946:          : div i, j                 ; 66
0947:          : div i, j                 ; 66
0948:          : div i, j                 ; 66
0949:          : div i, j                 ; 66
094A:          : div i, j                 ; 66
094B:          : load y, j                ; 18
094C:          : div i, j                 ; 66
094D:          : div i, j                 ; 66
094E:          : mul j, $6666             ; 63 66 66
0951:          : mul a, $0C               ; 60 0C
0953:          : push i                   ; 06
0954:          : call.gt $0038            ; 30 38 00
0957:          : call.gt $0600            ; 30 00 06
095A:          : nop                      ; 00
095B:          : mul a, $00               ; 60 00
095D:          : load y, j                ; 18
095E:          : nop                      ; 00
095F:          : push i                   ; 06
0960:          : nop                      ; 00
0961:          : nop                      ; 00
0962:          : push i                   ; 06
0963:          : call.gt $0000            ; 30 00 00
0966:          : nop                      ; 00
0967:          : nop                      ; 00
0968:          : nop                      ; 00
0969:          : nop                      ; 00
096A:          : nop                      ; 00
096B:          : load y, j                ; 18
096C:          : nop                      ; 00
096D:          : nop                      ; 00
096E:          : nop                      ; 00
096F:          : nop                      ; 00
0970:          : nop                      ; 00
0971:          : nop                      ; 00
0972:          : nop                      ; 00
0973:          : nop                      ; 00
0974:          : nop                      ; 00
0975:          : nop                      ; 00
0976:          : nop                      ; 00
0977:          : nop                      ; 00
0978:          : load y, j                ; 18
0979:          : div i, j                 ; 66
097A:          : mod i, $3006             ; 6C 06 30
097D:          : mod i, $0C18             ; 6C 18 0C
0980:          : call.gt $107F            ; 30 7F 10
0983:          : nop                      ; 00
0984:          : nop                      ; 00
0985:          : nop                      ; 00
0986:          : call.gt $1866            ; 30 66 18
0989:          : mul a, $60               ; 60 60(`)
098B:          : cpy a, y                 ; 36
098C:          : set y, $06               ; 3E 06
098E:          : call.gt $6666            ; 30 66 66
0991:          : load y, j                ; 18
0992:          : load y, j                ; 18
0993:          : load y, j                ; 18
0994:          : cmp a, x                 ; 7E
0995:          : call.gt $9960            ; 30 60 99
0998:          : div i, j                 ; 66
0999:          : div i, j                 ; 66
099A:          : push i                   ; 06
099B:          : div i, j                 ; 66
099C:          : push i                   ; 06
099D:          : push i                   ; 06
099E:          : push i                   ; 06
099F:          : div i, j                 ; 66
09A0:          : load y, j                ; 18
09A1:          : mul a, $1E               ; 60 1E
09A3:          : push i                   ; 06
09A4:          : cmp a, y                 ; 7F
09A5:          : neg a                    ; 6E
09A6:          : div i, j                 ; 66
09A7:          : div i, j                 ; 66
09A8:          : div i, j                 ; 66
09A9:          : div i, j                 ; 66
09AA:          : push i                   ; 06
09AB:          : load y, j                ; 18
09AC:          : div i, j                 ; 66
09AD:          : div i, j                 ; 66
09AE:          : mul j, $663C             ; 63 3C 66
09B1:          : call.gt $0C0C            ; 30 0C 0C
09B4:          : call.gt $006C            ; 30 6C 00
09B7:          : nop                      ; 00
09B8:          : cpy w, a                 ; 3C
09B9:          : set y, $3C               ; 3E 3C(<)
09BB:          : dec i                    ; 7C
09BC:          : cpy w, a                 ; 3C
09BD:          : cpy w, a                 ; 3C
09BE:          : dec i                    ; 7C
09BF:          : set y, $1C               ; 3E 1C
09C1:          : inc a                    ; 70
09C2:          : div i, j                 ; 66
09C3:          : call.gt $3E37            ; 30 37 3E
09C6:          : cpy w, a                 ; 3C
09C7:          : set y, $7C               ; 3E 7C(|)
09C9:          : inc j                    ; 76
09CA:          : dec i                    ; 7C
09CB:          : cpy w, a                 ; 3C
09CC:          : div i, j                 ; 66
09CD:          : div i, j                 ; 66
09CE:          : mod i, j                 ; 6B
09CF:          : div i, j                 ; 66
09D0:          : div i, j                 ; 66
09D1:          : cmp a, x                 ; 7E
09D2:          : nop                      ; 00
09D3:          : nop                      ; 00
09D4:          : nop                      ; 00
09D5:          : nop                      ; 00
09D6:          : nop                      ; 00
09D7:          : nop                      ; 00
09D8:          : load y, j                ; 18
09D9:          : nop                      ; 00
09DA:          : mod i, $183C             ; 6C 3C 18
09DD:          : cpy a, w                 ; 38
09DE:          : nop                      ; 00
09DF:          : pop y                    ; 0C
09E0:          : call.gt $7C1C            ; 30 1C 7C
09E3:          : nop                      ; 00
09E4:          : cmp a, x                 ; 7E
09E5:          : nop                      ; 00
09E6:          : load y, j                ; 18
09E7:          : div i, j                 ; 66
09E8:          : load y, j                ; 18
09E9:          : cpy a, w                 ; 38
09EA:          : cpy a, w                 ; 38
09EB:          : cpy a, y                 ; 36
09EC:          : mul a, $3E               ; 60 3E(>)
09EE:          : load y, j                ; 18
09EF:          : cpy w, a                 ; 3C
09F0:          : dec i                    ; 7C
09F1:          : nop                      ; 00
09F2:          : nop                      ; 00
09F3:          : pop y                    ; 0C
09F4:          : nop                      ; 00
09F5:          : mul a, $38               ; 60 38(8)
09F7:          : or z, $7E                ; A5 7E(~)
09F9:          : set y, $06               ; 3E 06
09FB:          : div i, j                 ; 66
09FC:          : load i, $761E            ; 1E 1E 76
09FF:          : cmp a, x                 ; 7E
0A00:          : load y, j                ; 18
0A01:          : mul a, $0E               ; 60 0E
0A03:          : push i                   ; 06
0A04:          : mod i, j                 ; 6B
0A05:          : cmp a, x                 ; 7E
0A06:          : div i, j                 ; 66
0A07:          : set y, $66               ; 3E 66(f)
0A09:          : set y, $3C               ; 3E 3C(<)
0A0B:          : load y, j                ; 18
0A0C:          : div i, j                 ; 66
0A0D:          : div i, j                 ; 66
0A0E:          : mod i, j                 ; 6B
0A0F:          : load y, j                ; 18
0A10:          : cpy w, a                 ; 3C
0A11:          : load y, j                ; 18
0A12:          : pop y                    ; 0C
0A13:          : load y, j                ; 18
0A14:          : call.gt $0044            ; 30 44 00
0A17:          : nop                      ; 00
0A18:          : mul a, $66               ; 60 66(f)
0A1A:          : div i, j                 ; 66
0A1B:          : div i, j                 ; 66
0A1C:          : div i, j                 ; 66
0A1D:          : load y, j                ; 18
0A1E:          : div i, j                 ; 66
0A1F:          : div i, j                 ; 66
0A20:          : load y, j                ; 18
0A21:          : mul a, $36               ; 60 36(6)
0A23:          : call.gt $667F            ; 30 7F 66
0A26:          : div i, j                 ; 66
0A27:          : div i, j                 ; 66
0A28:          : div i, j                 ; 66
0A29:          : pop w                    ; 0E
0A2A:          : push i                   ; 06
0A2B:          : load y, j                ; 18
0A2C:          : div i, j                 ; 66
0A2D:          : div i, j                 ; 66
0A2E:          : mod i, j                 ; 6B
0A2F:          : cpy w, a                 ; 3C
0A30:          : div i, j                 ; 66
0A31:          : call.gt $0000            ; 30 00 00
0A34:          : nop                      ; 00
0A35:          : nop                      ; 00
0A36:          : nop                      ; 00
0A37:          : nop                      ; 00
0A38:          : load y, j                ; 18
0A39:          : nop                      ; 00
0A3A:          : mod i, $0C60             ; 6C 60 0C
0A3D:          : nop                      ; EC
0A3E:          : nop                      ; 00
0A3F:          : pop y                    ; 0C
0A40:          : call.gt $1036            ; 30 36 10
0A43:          : load y, j                ; 18
0A44:          : nop                      ; 00
0A45:          : nop                      ; 00
0A46:          : pop y                    ; 0C
0A47:          : div i, j                 ; 66
0A48:          : load y, j                ; 18
0A49:          : pop y                    ; 0C
0A4A:          : mul a, $7E               ; 60 7E(~)
0A4C:          : mul a, $66               ; 60 66(f)
0A4E:          : load y, j                ; 18
0A4F:          : div i, j                 ; 66
0A50:          : mul a, $18               ; 60 18
0A52:          : load y, j                ; 18
0A53:          : load y, j                ; 18
0A54:          : cmp a, x                 ; 7E
0A55:          : call.gt $A518            ; 30 18 A5
0A58:          : div i, j                 ; 66
0A59:          : div i, j                 ; 66
0A5A:          : push i                   ; 06
0A5B:          : div i, j                 ; 66
0A5C:          : push i                   ; 06
0A5D:          : push i                   ; 06
0A5E:          : div i, j                 ; 66
0A5F:          : div i, j                 ; 66
0A60:          : load y, j                ; 18
0A61:          : mul a, $1E               ; 60 1E
0A63:          : push i                   ; 06
0A64:          : mul j, $6676             ; 63 76 66
0A67:          : push i                   ; 06
0A68:          : div i, j                 ; 66
0A69:          : load i, $1860            ; 1E 60 18
0A6C:          : div i, j                 ; 66
0A6D:          : div i, j                 ; 66
0A6E:          : cmp a, y                 ; 7F
0A6F:          : cpy w, a                 ; 3C
0A70:          : load y, j                ; 18
0A71:          : pop y                    ; 0C
0A72:          : pop y                    ; 0C
0A73:          : call.gt $0030            ; 30 30 00
0A76:          : nop                      ; 00
0A77:          : nop                      ; 00
0A78:          : dec i                    ; 7C
0A79:          : div i, j                 ; 66
0A7A:          : push i                   ; 06
0A7B:          : div i, j                 ; 66
0A7C:          : set y, $18               ; 3E 18
0A7E:          : div i, j                 ; 66
0A7F:          : div i, j                 ; 66
0A80:          : load y, j                ; 18
0A81:          : mul a, $1E               ; 60 1E
0A83:          : call.gt $666B            ; 30 6B 66
0A86:          : div i, j                 ; 66
0A87:          : div i, j                 ; 66
0A88:          : div i, j                 ; 66
0A89:          : push i                   ; 06
0A8A:          : cpy w, a                 ; 3C
0A8B:          : load y, j                ; 18
0A8C:          : div i, j                 ; 66
0A8D:          : div i, j                 ; 66
0A8E:          : cmp a, y                 ; 7F
0A8F:          : load y, j                ; 18
0A90:          : div i, j                 ; 66
0A91:          : load y, j                ; 18
0A92:          : nop                      ; 00
0A93:          : nop                      ; 00
0A94:          : nop                      ; 00
0A95:          : nop                      ; 00
0A96:          : nop                      ; 00
0A97:          : nop                      ; 00
0A98:          : nop                      ; 00
0A99:          : nop                      ; 00
0A9A:          : nop                      ; FE
0A9B:          : set y, $66               ; 3E 66(f)
0A9D:          : div i, j                 ; 66
0A9E:          : nop                      ; 00
0A9F:          : load y, j                ; 18
0AA0:          : load y, j                ; 18
0AA1:          : nop                      ; 00
0AA2:          : pop i                    ; 10
0AA3:          : load y, j                ; 18
0AA4:          : nop                      ; 00
0AA5:          : load y, j                ; 18
0AA6:          : push i                   ; 06
0AA7:          : div i, j                 ; 66
0AA8:          : load y, j                ; 18
0AA9:          : push i                   ; 06
0AAA:          : div i, j                 ; 66
0AAB:          : call.gt $6666            ; 30 66 66
0AAE:          : load y, j                ; 18
0AAF:          : div i, j                 ; 66
0AB0:          : div i, j                 ; 66
0AB1:          : load y, j                ; 18
0AB2:          : load y, j                ; 18
0AB3:          : call.gt $1800            ; 30 00 18
0AB6:          : nop                      ; 00
0AB7:          : dec y                    ; 79
0AB8:          : div i, j                 ; 66
0AB9:          : div i, j                 ; 66
0ABA:          : div i, j                 ; 66
0ABB:          : div i, j                 ; 66
0ABC:          : push i                   ; 06
0ABD:          : push i                   ; 06
0ABE:          : div i, j                 ; 66
0ABF:          : div i, j                 ; 66
0AC0:          : load y, j                ; 18
0AC1:          : div i, j                 ; 66
0AC2:          : cpy a, y                 ; 36
0AC3:          : push i                   ; 06
0AC4:          : mul j, $6666             ; 63 66 66
0AC7:          : push i                   ; 06
0AC8:          : div i, j                 ; 66
0AC9:          : cpy a, y                 ; 36
0ACA:          : div i, j                 ; 66
0ACB:          : load y, j                ; 18
0ACC:          : div i, j                 ; 66
0ACD:          : cpy w, a                 ; 3C
0ACE:          : dec a                    ; 77
0ACF:          : div i, j                 ; 66
0AD0:          : load y, j                ; 18
0AD1:          : push i                   ; 06
0AD2:          : pop y                    ; 0C
0AD3:          : mul a, $30               ; 60 30(0)
0AD5:          : nop                      ; 00
0AD6:          : nop                      ; 00
0AD7:          : nop                      ; 00
0AD8:          : div i, j                 ; 66
0AD9:          : div i, j                 ; 66
0ADA:          : div i, j                 ; 66
0ADB:          : div i, j                 ; 66
0ADC:          : push i                   ; 06
0ADD:          : load y, j                ; 18
0ADE:          : dec i                    ; 7C
0ADF:          : div i, j                 ; 66
0AE0:          : load y, j                ; 18
0AE1:          : mul a, $36               ; 60 36(6)
0AE3:          : call.gt $666B            ; 30 6B 66
0AE6:          : div i, j                 ; 66
0AE7:          : div i, j                 ; 66
0AE8:          : div i, j                 ; 66
0AE9:          : push i                   ; 06
0AEA:          : mul a, $18               ; 60 18
0AEC:          : div i, j                 ; 66
0AED:          : cpy w, a                 ; 3C
0AEE:          : set y, $3C               ; 3E 3C(<)
0AF0:          : dec i                    ; 7C
0AF1:          : pop y                    ; 0C
0AF2:          : nop                      ; 00
0AF3:          : nop                      ; 00
0AF4:          : nop                      ; 00
0AF5:          : nop                      ; 00
0AF6:          : nop                      ; 00
0AF7:          : nop                      ; 00
0AF8:          : load y, j                ; 18
0AF9:          : nop                      ; 00
0AFA:          : mod i, $6218             ; 6C 18 62
0AFD:          : nop                      ; FC
0AFE:          : nop                      ; 00
0AFF:          : call.gt $000C            ; 30 0C 00
0B02:          : nop                      ; 00
0B03:          : pop y                    ; 0C
0B04:          : nop                      ; 00
0B05:          : load y, j                ; 18
0B06:          : push y                   ; 02
0B07:          : cpy w, a                 ; 3C
0B08:          : cmp a, x                 ; 7E
0B09:          : cmp a, x                 ; 7E
0B0A:          : cpy w, a                 ; 3C
0B0B:          : dec x                    ; 78
0B0C:          : cpy w, a                 ; 3C
0B0D:          : cpy w, a                 ; 3C
0B0E:          : load y, j                ; 18
0B0F:          : cpy w, a                 ; 3C
0B10:          : cpy w, a                 ; 3C
0B11:          : nop                      ; 00
0B12:          : push f                   ; 08
0B13:          : mul a, $00               ; 60 00
0B15:          : pop y                    ; 0C
0B16:          : load y, j                ; 18
0B17:          : push y                   ; 02
0B18:          : div i, j                 ; 66
0B19:          : set y, $3C               ; 3E 3C(<)
0B1B:          : set y, $7E               ; 3E 7E(~)
0B1D:          : push i                   ; 06
0B1E:          : cpy w, a                 ; 3C
0B1F:          : div i, j                 ; 66
0B20:          : cpy w, a                 ; 3C
0B21:          : cpy w, a                 ; 3C
0B22:          : div i, j                 ; 66
0B23:          : cmp a, x                 ; 7E
0B24:          : mul j, $3C66             ; 63 66 3C
0B27:          : push i                   ; 06
0B28:          : cpy w, a                 ; 3C
0B29:          : div i, j                 ; 66
0B2A:          : cpy w, a                 ; 3C
0B2B:          : load y, j                ; 18
0B2C:          : cpy w, a                 ; 3C
0B2D:          : load y, j                ; 18
0B2E:          : mul j, $1866             ; 63 66 18
0B31:          : cmp a, x                 ; 7E
0B32:          : cpy w, a                 ; 3C
0B33:          : set w, $3C               ; 40 3C(<)
0B35:          : nop                      ; 00
0B36:          : nop                      ; 00
0B37:          : nop                      ; 00
0B38:          : dec i                    ; 7C
0B39:          : set y, $3C               ; 3E 3C(<)
0B3B:          : dec i                    ; 7C
0B3C:          : dec i                    ; 7C
0B3D:          : load y, j                ; 18
0B3E:          : mul a, $66               ; 60 66(f)
0B40:          : cpy w, a                 ; 3C
0B41:          : div i, j                 ; 66
0B42:          : div i, j                 ; 66
0B43:          : dec x                    ; 78
0B44:          : mod i, j                 ; 6B
0B45:          : div i, j                 ; 66
0B46:          : cpy w, a                 ; 3C
0B47:          : set y, $7C               ; 3E 7C(|)
0B49:          : push i                   ; 06
0B4A:          : set y, $30               ; 3E 30(0)
0B4C:          : dec i                    ; 7C
0B4D:          : load y, j                ; 18
0B4E:          : cpy a, y                 ; 36
0B4F:          : div i, j                 ; 66
0B50:          : mul a, $7E               ; 60 7E(~)
0B52:          : nop                      ; 00
0B53:          : nop                      ; 00
0B54:          : nop                      ; 00
0B55:          : nop                      ; 00
0B56:          : nop                      ; 00
0B57:          : nop                      ; 00
0B58:          : nop                      ; 00
0B59:          : nop                      ; 00
0B5A:          : nop                      ; 00
0B5B:          : nop                      ; 00
0B5C:          : nop                      ; 00
0B5D:          : nop                      ; 00
0B5E:          : nop                      ; 00
0B5F:          : nop                      ; 00
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
0B77:          : cpy w, a                 ; 3C
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
0B85:          : nop                      ; 00
0B86:          : nop                      ; 00
0B87:          : nop                      ; 00
0B88:          : mul a, $00               ; 60 00
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
0B96:          : nop                      ; FF
0B97:          : nop                      ; 00
0B98:          : nop                      ; 00
0B99:          : nop                      ; 00
0B9A:          : nop                      ; 00
0B9B:          : nop                      ; 00
0B9C:          : nop                      ; 00
0B9D:          : nop                      ; 00
0B9E:          : cpy w, a                 ; 3C
0B9F:          : nop                      ; 00
0BA0:          : nop                      ; 00
0BA1:          : cpy w, a                 ; 3C
0BA2:          : nop                      ; 00
0BA3:          : nop                      ; 00
0BA4:          : nop                      ; 00
0BA5:          : nop                      ; 00
0BA6:          : nop                      ; 00
0BA7:          : push i                   ; 06
0BA8:          : mul a, $00               ; 60 00
0BAA:          : nop                      ; 00
0BAB:          : nop                      ; 00
0BAC:          : nop                      ; 00
0BAD:          : nop                      ; 00
0BAE:          : nop                      ; 00
0BAF:          : nop                      ; 00
0BB0:          : cpy w, a                 ; 3C
0BB1:          : nop                      ; 00
0BB2:          : nop                      ; 00
0BB3:          : nop                      ; 00
0BB4:          : nop                      ; 00
0BB5:          : nop                      ; 00
0BB6:          : nop                      ; 00
0BB7:          : cmp a, y                 ; 7F
0BB8:          : call.gt $3231            ; 30 31 32
0BBB:          : call.nz $3534            ; 33 34 35
0BBE:          : cpy a, y                 ; 36
0BBF:          : cpy a, z                 ; 37
0BC0:          : cpy a, w                 ; 38
0BC1:          : cpy x, a                 ; 39
0BC2:          : mul i, j                 ; 61
0BC3:          : mul i, $6463             ; 62 63 64
0BC6:          : div a, $66               ; 65 66(f)
0BC8:          : div i, $6968             ; 67 68 69
0BCB:          : mod a, $6B               ; 6A 6B(k)
0BCD:          : mod i, $6E6D             ; 6C 6D 6E
0BD0:          : neg x                    ; 6F
0BD1:          : inc a                    ; 70
0BD2:          : inc x                    ; 71
0BD3:          : inc y                    ; 72
0BD4:          : inc z                    ; 73
0BD5:          : inc w                    ; 74
0BD6:          : inc i                    ; 75
0BD7:          : inc j                    ; 76
0BD8:          : dec a                    ; 77
0BD9:          : dec x                    ; 78
0BDA:          : dec y                    ; 79
0BDB:          : dec z                    ; 7A
0BDC:          : set a, $42               ; 41 42(B)
0BDE:          : set j, $4544             ; 43 44 45
0BE1:          : add a, z                 ; 46
0BE2:          : add a, w                 ; 47
0BE3:          : add i, j                 ; 48
0BE4:          : add i, a                 ; 49
0BE5:          : add i, z                 ; 4A
0BE6:          : add i, w                 ; 4B
0BE7:          : add j, a                 ; 4C
0BE8:          : add j, x                 ; 4D
0BE9:          : add j, y                 ; 4E
0BEA:          : add i, $5150             ; 4F 50 51
0BED:          : add y, $53               ; 52 53(S)
0BEF:          : add w, $55               ; 54 55(U)
0BF1:          : sub a, x                 ; 56
0BF2:          : sub a, y                 ; 57
0BF3:          : sub a, z                 ; 58
0BF4:          : sub a, w                 ; 59
0BF5:          : sub x, $20               ; 5A 20
0BF7:          : store i, w               ; 21
0BF8:          : store i, z               ; 22
0BF9:          : store j, a               ; 23
0BFA:          : store j, x               ; 24
0BFB:          : store j, y               ; 25
0BFC:          : store $2827, x           ; 26 27 28
0BFF:          : store $2B40, w           ; 29 40 2B
0C02:          : call $3D2A               ; 2D 2A 3D  ERROR $3D2A
0C05:          : call.neq $2E2C           ; 2F 2C 2E
0C08:          : cpy z, a                 ; 3B
0C09:          : sub y, $5D               ; 5B 5D(])
0C0B:          : dec w                    ; 7B
0C0C:          : dec j                    ; 7D
0C0D:          : set z, $3C               ; 3F 3C(<)
0C0F:          : set y, $3A               ; 3E 3A(:)
0C11:          : cmp a, y                 ; 7F
0C12:          : cmp a, y                 ; 7F
0C13:          : cmp a, y                 ; 7F
0C14:          : cmp a, y                 ; 7F
0C15:          : cmp a, y                 ; 7F
0C16:          : cmp a, y                 ; 7F
0C17:          : cmp a, y                 ; 7F
0C18:          : cmp a, y                 ; 7F
0C19:          : cmp a, y                 ; 7F
0C1A:          : cmp a, y                 ; 7F
0C1B:          : cmp a, y                 ; 7F
0C1C:          : cmp a, y                 ; 7F
0C1D:          : cmp a, y                 ; 7F
0C1E:          : cmp a, y                 ; 7F
0C1F:          : cmp a, y                 ; 7F
0C20:          : cmp a, y                 ; 7F
0C21:          : cmp a, y                 ; 7F
0C22:          : cmp a, y                 ; 7F
0C23:          : cmp a, y                 ; 7F
0C24:          : cmp a, y                 ; 7F
