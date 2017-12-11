0400:          : nop                      ; E4
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
04DE:          : set i, $0568             ; 42 68 05
04E1:          : store $0004, i           ; 2B 04 00
04E4:          : set i, $05D2             ; 42 D2 05
04E7:          : store $0006, i           ; 2B 06 00
04EA:          : set i, $05DE             ; 42 DE 05
04ED:          : store $0008, i           ; 2B 08 00
04F0:          : set i, $05E7             ; 42 E7 05
04F3:          : store $000A, i           ; 2B 0A 00
04F6:          : set i, $05E7             ; 42 E7 05
04F9:          : store $000C, i           ; 2B 0C 00
04FC:          : set i, $05E0             ; 42 E0 05
04FF:          : store $000E, i           ; 2B 0E 00
0502:          : return                   ; 34
0503:          : jmp $0863                ; B8 63 08  LBL_2147 $0863
0506:          : load a, $002C            ; 1D 2C 00
0509:          : cpy x, a                 ; 39
050A:          : cmp a                    ; 82
050B:          : jmp.gt $0533             ; C5 33 05  LBL_1331 $0533
050E:          : jmp.eq $0552             ; C1 52 05  LBL_1362 $0552
0511:          : load a, $04CA            ; 1D CA 04
0514:          : add a, x                 ; 44
0515:          : store $001E, a           ; 2A 1E 00
0518:          : neg a                    ; 6E
0519:          : store $0021, a           ; 2A 21 00
051C:          : load a, $04CB            ; 1D CB 04
051F:          : add a, x                 ; 44
0520:          : store $001F, a           ; 2A 1F 00
0523:          : neg a                    ; 6E
0524:          : store $0022, a           ; 2A 22 00
0527:          : load a, $04CC            ; 1D CC 04
052A:          : add a, x                 ; 44
052B:          : store $0020, a           ; 2A 20 00
052E:          : neg a                    ; 6E
052F:          : store $0023, a           ; 2A 23 00
0532:          : resume                   ; CF
0533: LBL_1331 : set a, $3B               ; 41 3B(;)
0535:          : store $001D, a           ; 2A 1D 00
0538:          : set a, $3F               ; 41 3F(?)
053A:          : store $001E, a           ; 2A 1E 00
053D:          : set a, $42               ; 41 42(B)
053F:          : store $001F, a           ; 2A 1F 00
0542:          : set a, $FE               ; 41 FE
0544:          : store $0020, a           ; 2A 20 00
0547:          : set a, $FE               ; 41 FE
0549:          : store $0021, a           ; 2A 21 00
054C:          : set a, $FE               ; 41 FE
054E:          : store $0022, a           ; 2A 22 00
0551:          : resume                   ; CF
0552: LBL_1362 : set a, $00               ; 41 00
0554:          : store $001D, a           ; 2A 1D 00
0557:          : store $001E, a           ; 2A 1E 00
055A:          : store $001F, a           ; 2A 1F 00
055D:          : store $0020, a           ; 2A 20 00
0560:          : store $0021, a           ; 2A 21 00
0563:          : store $0022, a           ; 2A 22 00
0566:          : resume                   ; CF
0567:          : resume                   ; CF
0568:          : load a, $04C9            ; 1D C9 04
056B:          : load x, $04CC            ; 19 CC 04
056E:          : cmp a, x                 ; 7E
056F:          : jmp.lt $0580             ; C7 80 05  LBL_1408 $0580
0572:          : jmp.gt $0587             ; C5 87 05  LBL_1415 $0587
0575:          : load a, $00E1            ; 1D E1 00
0578:          : mod a, $7F               ; 6A 7F()
057A:          : store $04CC, a           ; 2A CC 04
057D:          : jmp $058B                ; B8 8B 05  LBL_1419 $058B
0580: LBL_1408 : inc a                    ; 70
0581:          : store $04C9, a           ; 2A C9 04
0584:          : jmp $058B                ; B8 8B 05  LBL_1419 $058B
0587: LBL_1415 : dec a                    ; 77
0588:          : store $04C9, a           ; 2A C9 04
058B: LBL_1419 : load a, $04CA            ; 1D CA 04
058E:          : load x, $04CD            ; 19 CD 04
0591:          : cmp a, x                 ; 7E
0592:          : jmp.lt $05A3             ; C7 A3 05  LBL_1443 $05A3
0595:          : jmp.gt $05AA             ; C5 AA 05  LBL_1450 $05AA
0598:          : load a, $00E1            ; 1D E1 00
059B:          : mod a, $7F               ; 6A 7F()
059D:          : store $04CD, a           ; 2A CD 04
05A0:          : jmp $05AE                ; B8 AE 05  LBL_1454 $05AE
05A3: LBL_1443 : inc a                    ; 70
05A4:          : store $04CA, a           ; 2A CA 04
05A7:          : jmp $05AE                ; B8 AE 05  LBL_1454 $05AE
05AA: LBL_1450 : dec a                    ; 77
05AB:          : store $04CA, a           ; 2A CA 04
05AE: LBL_1454 : load a, $04CB            ; 1D CB 04
05B1:          : load x, $04CE            ; 19 CE 04
05B4:          : cmp a, x                 ; 7E
05B5:          : jmp.lt $05C6             ; C7 C6 05  LBL_1478 $05C6
05B8:          : jmp.gt $05CD             ; C5 CD 05  LBL_1485 $05CD
05BB:          : load a, $00E1            ; 1D E1 00
05BE:          : mod a, $7F               ; 6A 7F()
05C0:          : store $04CE, a           ; 2A CE 04
05C3:          : jmp $05D1                ; B8 D1 05  LBL_1489 $05D1
05C6: LBL_1478 : inc a                    ; 70
05C7:          : store $04CB, a           ; 2A CB 04
05CA:          : jmp $05AE                ; B8 AE 05  LBL_1454 $05AE
05CD: LBL_1485 : dec a                    ; 77
05CE:          : store $04CB, a           ; 2A CB 04
05D1: LBL_1489 : resume                   ; CF
05D2:          : load a, $0034            ; 1D 34 00
05D5:          : store $04C0, a           ; 2A C0 04
05D8:          : set a, $00               ; 41 00
05DA:          : store $0034, a           ; 2A 34 00
05DD:          : resume                   ; CF
05DE:          : nop                      ; 00
05DF:          : resume                   ; CF
05E0:          : nop                      ; 00
05E1:          : dbn $4C48                ; D5 48 4C
05E4:          : int $FF                  ; CE FF
05E6:          : resume                   ; CF
05E7:          : dbn $4C44                ; D5 44 4C
05EA:          : nop                      ; 00
05EB:          : resume                   ; CF
05EC: FUN_1516 : set a, $44               ; 41 44(D)
05EE:          : store $84C1, a           ; 2A C1 84
05F1:          : set a, $58               ; 41 58(X)
05F3:          : store $84C2, a           ; 2A C2 84
05F6:          : set a, $38               ; 41 38(8)
05F8:          : store $84C3, a           ; 2A C3 84
05FB:          : set a, $2F               ; 41 2F(/)
05FD:          : store $84C5, a           ; 2A C5 84
0600:          : set a, $2F               ; 41 2F(/)
0602:          : store $84C6, a           ; 2A C6 84
0605:          : set a, $2F               ; 41 2F(/)
0607:          : store $84C7, a           ; 2A C7 84
060A:          : return                   ; 34
060B: FUN_1547 : load x, $002F            ; 19 2F 00
060E:          : bit x, $40               ; 91 40(@)
0610:          : jmp.z $0616              ; C9 16 06  LBL_1558 $0616
0613:          : jmp $0624                ; B8 24 06  LBL_1572 $0624
0616: LBL_1558 : set x, $20               ; 3D 20
0618:          : store $84C5, x           ; 26 C5 84
061B:          : store $84C6, x           ; 26 C6 84
061E:          : store $84C7, x           ; 26 C7 84
0621:          : jmp $062F                ; B8 2F 06  LBL_1583 $062F
0624: LBL_1572 : set x, $2F               ; 3D 2F(/)
0626:          : store $84C5, x           ; 26 C5 84
0629:          : store $84C6, x           ; 26 C6 84
062C:          : store $84C7, x           ; 26 C7 84
062F: LBL_1583 : return                   ; 34
0630:          : add j, a                 ; 4C
0631:          : push i                   ; 06
0632:          : add z, $06               ; 53 06
0634:          : jmp j, a                 ; BC        ERROR $8406
0635:          : push i                   ; 06
0636:          : push z                   ; 03
0637:          : push j                   ; 07
0638:          : call.neq $3B07           ; 2F 07 3B
063B:          : push j                   ; 07
063C:          : set i, $6007             ; 42 07 60
063F:          : push j                   ; 07
0640:          : div i, $7007             ; 67 07 70
0643:          : push j                   ; 07
0644:          : cmp a, z                 ; 80
0645:          : push j                   ; 07
0646:          : cmp i                    ; 87
0647:          : push j                   ; 07
0648:          : xor y, $07               ; AD 07
064A:          : xor z, $07               ; AE 07
064C:          : set a, $00               ; 41 00
064E:          : store $04C0, a           ; 2A C0 04
0651:          : nop                      ; 00
0652:          : return                   ; 34
0653:          : set a, $00               ; 41 00
0655:          : store $04C0, a           ; 2A C0 04
0658:          : set a, $01               ; 41 01
065A:          : store $04C1, a           ; 2A C1 04
065D:          : set a, $20               ; 41 20
065F:          : store $8269, a           ; 2A 69 82
0662:          : set a, $20               ; 41 20
0664:          : store $826A, a           ; 2A 6A 82
0667:          : set a, $20               ; 41 20
0669:          : store $826B, a           ; 2A 6B 82
066C:          : set a, $20               ; 41 20
066E:          : store $826C, a           ; 2A 6C 82
0671:          : set a, $20               ; 41 20
0673:          : store $826D, a           ; 2A 6D 82
0676:          : set a, $20               ; 41 20
0678:          : store $826E, a           ; 2A 6E 82
067B:          : set a, $20               ; 41 20
067D:          : store $8291, a           ; 2A 91 82
0680:          : set a, $20               ; 41 20
0682:          : store $8292, a           ; 2A 92 82
0685:          : set a, $20               ; 41 20
0687:          : store $8293, a           ; 2A 93 82
068A:          : set a, $20               ; 41 20
068C:          : store $8294, a           ; 2A 94 82
068F:          : set a, $20               ; 41 20
0691:          : store $8295, a           ; 2A 95 82
0694:          : set a, $20               ; 41 20
0696:          : store $8296, a           ; 2A 96 82
0699:          : set a, $00               ; 41 00
069B:          : store $04C2, a           ; 2A C2 04
069E:          : set i, $D400             ; 42 00 D4
06A1:          : store $04C3, i           ; 2B C3 04
06A4:          : set a, $FF               ; 41 FF
06A6:          : store $04C5, a           ; 2A C5 04
06A9:          : set a, $FF               ; 41 FF
06AB:          : store $0037, a           ; 2A 37 00
06AE:          : set i, $D400             ; 42 00 D4
06B1:          : store $0038, i           ; 2B 38 00
06B4:          : set a, $01               ; 41 01
06B6:          : store $003A, a           ; 2A 3A 00
06B9:          : int $D0                  ; CE D0
06BB:          : return                   ; 34
06BC: FUN_1724 : set a, $00               ; 41 00
06BE:          : store $04C0, a           ; 2A C0 04
06C1:          : set a, $00               ; 41 00
06C3:          : store $04C1, a           ; 2A C1 04
06C6:          : set a, $49               ; 41 49(I)
06C8:          : store $8269, a           ; 2A 69 82
06CB:          : set a, $4E               ; 41 4E(N)
06CD:          : store $826A, a           ; 2A 6A 82
06D0:          : set a, $53               ; 41 53(S)
06D2:          : store $826B, a           ; 2A 6B 82
06D5:          : set a, $45               ; 41 45(E)
06D7:          : store $826C, a           ; 2A 6C 82
06DA:          : set a, $52               ; 41 52(R)
06DC:          : store $826D, a           ; 2A 6D 82
06DF:          : set a, $54               ; 41 54(T)
06E1:          : store $826E, a           ; 2A 6E 82
06E4:          : set a, $46               ; 41 46(F)
06E6:          : store $8291, a           ; 2A 91 82
06E9:          : set a, $4C               ; 41 4C(L)
06EB:          : store $8292, a           ; 2A 92 82
06EE:          : set a, $4F               ; 41 4F(O)
06F0:          : store $8293, a           ; 2A 93 82
06F3:          : set a, $50               ; 41 50(P)
06F5:          : store $8294, a           ; 2A 94 82
06F8:          : set a, $50               ; 41 50(P)
06FA:          : store $8295, a           ; 2A 95 82
06FD:          : set a, $59               ; 41 59(Y)
06FF:          : store $8296, a           ; 2A 96 82
0702:          : return                   ; 34
0703:          : load a, $00E1            ; 1D E1 00
0706:          : store $04C9, a           ; 2A C9 04
0709:          : load a, $00E1            ; 1D E1 00
070C:          : store $04CA, a           ; 2A CA 04
070F:          : load a, $00E1            ; 1D E1 00
0712:          : store $04CB, a           ; 2A CB 04
0715:          : load a, $0036            ; 1D 36 00
0718:          : set x, $02               ; 3D 02
071A:          : set y, $02               ; 3E 02
071C:          : call $047B               ; 2D 7B 04  FUN_1147 $047B
071F:          : load a, $0037            ; 1D 37 00
0722:          : set x, $07               ; 3D 07
0724:          : set y, $02               ; 3E 02
0726:          : call $047B               ; 2D 7B 04  FUN_1147 $047B
0729:          : set a, $00               ; 41 00
072B:          : store $04C0, a           ; 2A C0 04
072E:          : return                   ; 34
072F:          : set a, $00               ; 41 00
0731:          : store $04C0, a           ; 2A C0 04
0734:          : load a, $04C2            ; 1D C2 04
0737:          : callt $0640, a           ; C0 40 06
073A:          : return                   ; 34
073B:          : set a, $00               ; 41 00
073D:          : store $04C0, a           ; 2A C0 04
0740:          : nop                      ; 00
0741:          : return                   ; 34
0742:          : load a, $00E1            ; 1D E1 00
0745:          : mod a, $7F               ; 6A 7F()
0747:          : store $04C9, a           ; 2A C9 04
074A:          : load a, $00E1            ; 1D E1 00
074D:          : mod a, $7F               ; 6A 7F()
074F:          : store $04CA, a           ; 2A CA 04
0752:          : load a, $00E1            ; 1D E1 00
0755:          : mod a, $7F               ; 6A 7F()
0757:          : store $04CB, a           ; 2A CB 04
075A:          : set a, $00               ; 41 00
075C:          : store $04C0, a           ; 2A C0 04
075F:          : return                   ; 34
0760:          : set a, $00               ; 41 00
0762:          : store $04C0, a           ; 2A C0 04
0765:          : nop                      ; 00
0766:          : return                   ; 34
0767:          : set a, $01               ; 41 01
0769:          : store $04C2, a           ; 2A C2 04
076C:          : call $0774               ; 2D 74 07  FUN_1908 $0774
076F:          : return                   ; 34
0770:          : call $0774               ; 2D 74 07  FUN_1908 $0774
0773:          : return                   ; 34
0774: FUN_1908 : load i, $04C3            ; 1E C3 04
0777:          : load a, i                ; 13
0778:          : inc i                    ; 75
0779:          : store $04C3, i           ; 2B C3 04
077C:          : callt $0644, a           ; C0 44 06
077F:          : return                   ; 34
0780:          : nop                      ; 00
0781:          : set a, $03               ; 41 03
0783:          : store $04C2, a           ; 2A C2 04
0786:          : return                   ; 34
0787:          : load i, $04C3            ; 1E C3 04
078A:          : load z, i                ; 14
078B:          : inc i                    ; 75
078C:          : store $0038, z           ; 28 38 00
078F:          : load z, i                ; 14
0790:          : store $0039, z           ; 28 39 00
0793:          : load i, $04C3            ; 1E C3 04
0796:          : inc i                    ; 75
0797:          : inc i                    ; 75
0798:          : store $04C3, i           ; 2B C3 04
079B:          : load a, $04C5            ; 1D C5 04
079E:          : inc a                    ; 70
079F:          : store $04C5, a           ; 2A C5 04
07A2:          : store $0037, a           ; 2A 37 00
07A5:          : set a, $01               ; 41 01
07A7:          : store $003A, a           ; 2A 3A 00
07AA:          : int $D0                  ; CE D0
07AC:          : return                   ; 34
07AD:          : return                   ; 34
07AE:          : set a, $03               ; 41 03
07B0:          : store $04C2, a           ; 2A C2 04
07B3:          : set i, $05E7             ; 42 E7 05
07B6:          : store $0002, i           ; 2B 02 00
07B9:          : set i, $05E7             ; 42 E7 05
07BC:          : store $0004, i           ; 2B 04 00
07BF:          : set i, $05E7             ; 42 E7 05
07C2:          : store $0006, i           ; 2B 06 00
07C5:          : set i, $05E7             ; 42 E7 05
07C8:          : store $0008, i           ; 2B 08 00
07CB:          : set i, $05E0             ; 42 E0 05
07CE:          : store $000E, i           ; 2B 0E 00
07D1:          : set i, $1400             ; 42 00 14
07D4:          : store $0000, i           ; 2B 00 00
07D7:          : dbn $5252                ; D5 52 52
07DA:          : int $FF                  ; CE FF
07DC:          : return                   ; 34
07DD:          : load a, $04C0            ; 1D C0 04
07E0:          : callt $0630, a           ; C0 30 06
07E3:          : return                   ; 34
07E4:          : call $04D2               ; 2D D2 04  FUN_1234 $04D2
07E7:          : set a, $00               ; 41 00
07E9:          : store $0080, a           ; 2A 80 00
07EC:          : set a, $01               ; 41 01
07EE:          : store $0081, a           ; 2A 81 00
07F1:          : set a, $02               ; 41 02
07F3:          : store $0082, a           ; 2A 82 00
07F6:          : set a, $03               ; 41 03
07F8:          : store $0083, a           ; 2A 83 00
07FB:          : set a, $04               ; 41 04
07FD:          : store $0084, a           ; 2A 84 00
0800:          : set a, $05               ; 41 05
0802:          : store $0085, a           ; 2A 85 00
0805:          : set a, $06               ; 41 06
0807:          : store $0086, a           ; 2A 86 00
080A:          : set a, $07               ; 41 07
080C:          : store $0087, a           ; 2A 87 00
080F:          : set a, $08               ; 41 08
0811:          : store $0088, a           ; 2A 88 00
0814:          : set a, $35               ; 41 35(5)
0816:          : store $00B5, a           ; 2A B5 00
0819:          : set a, $46               ; 41 46(F)
081B:          : store $00A0, a           ; 2A A0 00
081E:          : set a, $47               ; 41 47(G)
0820:          : store $00A1, a           ; 2A A1 00
0823:          : set a, $48               ; 41 48(H)
0825:          : store $00A2, a           ; 2A A2 00
0828:          : set a, $49               ; 41 49(I)
082A:          : store $00A3, a           ; 2A A3 00
082D:          : set a, $4A               ; 41 4A(J)
082F:          : store $00A4, a           ; 2A A4 00
0832:          : set a, $4B               ; 41 4B(K)
0834:          : store $00A5, a           ; 2A A5 00
0837:          : set a, $4C               ; 41 4C(L)
0839:          : store $00A6, a           ; 2A A6 00
083C:          : set a, $4D               ; 41 4D(M)
083E:          : store $00A7, a           ; 2A A7 00
0841:          : set a, $4E               ; 41 4E(N)
0843:          : store $00A8, a           ; 2A A8 00
0846:          : set a, $4F               ; 41 4F(O)
0848:          : store $00A9, a           ; 2A A9 00
084B:          : set i, $08B8             ; 42 B8 08
084E:          : store $0030, i           ; 2B 30 00
0851:          : set a, $00               ; 41 00
0853:          : store $0019, a           ; 2A 19 00
0856:          : set a, $01               ; 41 01
0858:          : store $0018, a           ; 2A 18 00
085B:          : set a, $00               ; 41 00
085D:          : store $00E0, a           ; 2A E0 00
0860:          : rti                      ; D8
0861:          : int $FE                  ; CE FE
0863: LBL_2147 : set i, $8000             ; 42 00 80
0866:          : set j, $2800             ; 43 00 28
0869:          : set a, $20               ; 41 20
086B:          : call $041F               ; 2D 1F 04  LBL_1055 $041F
086E:          : call $0411               ; 2D 11 04  LBL_1041 $0411
0871:          : call $05EC               ; 2D EC 05  FUN_1516 $05EC
0874:          : call $06BC               ; 2D BC 06  FUN_1724 $06BC
0877:          : set i, $C000             ; 42 00 C0
087A:          : store $04CF, i           ; 2B CF 04
087D:          : set x, $00               ; 3D 00
087F:          : store $04D1, x           ; 26 D1 04
0882:          : set x, $0F               ; 3D 0F
0884:          : store $003E, x           ; 26 3E 00
0887:          : set x, $3C               ; 3D 3C(<)
0889:          : store $003F, x           ; 26 3F 00
088C:          : set a, $48               ; 41 48(H)
088E:          : store $8000, a           ; 2A 00 80
0891:          : set a, $69               ; 41 69(i)
0893:          : store $8001, a           ; 2A 01 80
0896:          : set a, $52               ; 41 52(R)
0898:          : store $8032, a           ; 2A 32 80
089B:          : set a, $46               ; 41 46(F)
089D:          : store $8015, a           ; 2A 15 80
08A0:          : set a, $4F               ; 41 4F(O)
08A2:          : store $8016, a           ; 2A 16 80
08A5:          : set a, $4F               ; 41 4F(O)
08A7:          : store $8017, a           ; 2A 17 80
08AA: LBL_2218 : call $060B               ; 2D 0B 06  FUN_1547 $060B
08AD:          : load a, $04C0            ; 1D C0 04
08B0:          : cmp a                    ; 82
08B1:          : call.neq $07DD           ; 2F DD 07
08B4:          : jmp $08AA                ; B8 AA 08  LBL_2218 $08AA
08B7:          : nop                      ; 00
08B8:          : nop                      ; 00
08B9:          : load y, j                ; 18
08BA:          : div i, j                 ; 66
08BB:          : mod i, $4618             ; 6C 18 46
08BE:          : cpy a, w                 ; 38
08BF:          : load y, j                ; 18
08C0:          : call.gt $360C            ; 30 0C 36
08C3:          : nop                      ; 00
08C4:          : nop                      ; 00
08C5:          : nop                      ; 00
08C6:          : nop                      ; 00
08C7:          : set w, $3C               ; 40 3C(<)
08C9:          : load y, j                ; 18
08CA:          : cpy w, a                 ; 3C
08CB:          : cpy w, a                 ; 3C
08CC:          : cpy a, w                 ; 38
08CD:          : cmp a, x                 ; 7E
08CE:          : cpy w, a                 ; 3C
08CF:          : cmp a, x                 ; 7E
08D0:          : cpy w, a                 ; 3C
08D1:          : cpy w, a                 ; 3C
08D2:          : nop                      ; 00
08D3:          : nop                      ; 00
08D4:          : mul a, $00               ; 60 00
08D6:          : pop y                    ; 0C
08D7:          : cpy w, a                 ; 3C
08D8:          : cpy w, a                 ; 3C
08D9:          : cpy w, a                 ; 3C
08DA:          : set y, $3C               ; 3E 3C(<)
08DC:          : set y, $7E               ; 3E 7E(~)
08DE:          : cmp a, x                 ; 7E
08DF:          : cpy w, a                 ; 3C
08E0:          : div i, j                 ; 66
08E1:          : cpy w, a                 ; 3C
08E2:          : mul a, $66               ; 60 66(f)
08E4:          : push i                   ; 06
08E5:          : mul j, $3C66             ; 63 66 3C
08E8:          : set y, $3C               ; 3E 3C(<)
08EA:          : set y, $3C               ; 3E 3C(<)
08EC:          : cmp a, x                 ; 7E
08ED:          : div i, j                 ; 66
08EE:          : div i, j                 ; 66
08EF:          : mul j, $6666             ; 63 66 66
08F2:          : cmp a, x                 ; 7E
08F3:          : cpy w, a                 ; 3C
08F4:          : push y                   ; 02
08F5:          : cpy w, a                 ; 3C
08F6:          : pop i                    ; 10
08F7:          : nop                      ; 00
08F8:          : load y, j                ; 18
08F9:          : nop                      ; 00
08FA:          : push i                   ; 06
08FB:          : nop                      ; 00
08FC:          : mul a, $00               ; 60 00
08FE:          : inc a                    ; 70
08FF:          : nop                      ; 00
0900:          : push i                   ; 06
0901:          : load y, j                ; 18
0902:          : mul a, $06               ; 60 06
0904:          : cpy a, w                 ; 38
0905:          : nop                      ; 00
0906:          : nop                      ; 00
0907:          : nop                      ; 00
0908:          : nop                      ; 00
0909:          : nop                      ; 00
090A:          : nop                      ; 00
090B:          : nop                      ; 00
090C:          : load y, j                ; 18
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
0918:          : nop                      ; 00
0919:          : load y, j                ; 18
091A:          : div i, j                 ; 66
091B:          : nop                      ; FE
091C:          : dec i                    ; 7C
091D:          : div i, j                 ; 66
091E:          : mod i, $1818             ; 6C 18 18
0921:          : load y, j                ; 18
0922:          : load w, $0010            ; 1C 10 00
0925:          : nop                      ; 00
0926:          : nop                      ; 00
0927:          : mul a, $66               ; 60 66(f)
0929:          : load w, $6666            ; 1C 66 66
092C:          : cpy w, a                 ; 3C
092D:          : push i                   ; 06
092E:          : div i, j                 ; 66
092F:          : mul a, $66               ; 60 66(f)
0931:          : div i, j                 ; 66
0932:          : load y, j                ; 18
0933:          : load y, j                ; 18
0934:          : call.gt $1800            ; 30 00 18
0937:          : mul i, $6642             ; 62 42 66
093A:          : div i, j                 ; 66
093B:          : div i, j                 ; 66
093C:          : div i, j                 ; 66
093D:          : push i                   ; 06
093E:          : push i                   ; 06
093F:          : div i, j                 ; 66
0940:          : div i, j                 ; 66
0941:          : load y, j                ; 18
0942:          : mul a, $36               ; 60 36(6)
0944:          : push i                   ; 06
0945:          : dec a                    ; 77
0946:          : div i, j                 ; 66
0947:          : div i, j                 ; 66
0948:          : div i, j                 ; 66
0949:          : div i, j                 ; 66
094A:          : div i, j                 ; 66
094B:          : div i, j                 ; 66
094C:          : load y, j                ; 18
094D:          : div i, j                 ; 66
094E:          : div i, j                 ; 66
094F:          : mul j, $6666             ; 63 66 66
0952:          : mul a, $0C               ; 60 0C
0954:          : push i                   ; 06
0955:          : call.gt $0038            ; 30 38 00
0958:          : call.gt $0600            ; 30 00 06
095B:          : nop                      ; 00
095C:          : mul a, $00               ; 60 00
095E:          : load y, j                ; 18
095F:          : nop                      ; 00
0960:          : push i                   ; 06
0961:          : nop                      ; 00
0962:          : nop                      ; 00
0963:          : push i                   ; 06
0964:          : call.gt $0000            ; 30 00 00
0967:          : nop                      ; 00
0968:          : nop                      ; 00
0969:          : nop                      ; 00
096A:          : nop                      ; 00
096B:          : nop                      ; 00
096C:          : load y, j                ; 18
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
0978:          : nop                      ; 00
0979:          : load y, j                ; 18
097A:          : div i, j                 ; 66
097B:          : mod i, $3006             ; 6C 06 30
097E:          : mod i, $0C18             ; 6C 18 0C
0981:          : call.gt $107F            ; 30 7F 10
0984:          : nop                      ; 00
0985:          : nop                      ; 00
0986:          : nop                      ; 00
0987:          : call.gt $1866            ; 30 66 18
098A:          : mul a, $60               ; 60 60(`)
098C:          : cpy a, y                 ; 36
098D:          : set y, $06               ; 3E 06
098F:          : call.gt $6666            ; 30 66 66
0992:          : load y, j                ; 18
0993:          : load y, j                ; 18
0994:          : load y, j                ; 18
0995:          : cmp a, x                 ; 7E
0996:          : call.gt $9960            ; 30 60 99
0999:          : div i, j                 ; 66
099A:          : div i, j                 ; 66
099B:          : push i                   ; 06
099C:          : div i, j                 ; 66
099D:          : push i                   ; 06
099E:          : push i                   ; 06
099F:          : push i                   ; 06
09A0:          : div i, j                 ; 66
09A1:          : load y, j                ; 18
09A2:          : mul a, $1E               ; 60 1E
09A4:          : push i                   ; 06
09A5:          : cmp a, y                 ; 7F
09A6:          : neg a                    ; 6E
09A7:          : div i, j                 ; 66
09A8:          : div i, j                 ; 66
09A9:          : div i, j                 ; 66
09AA:          : div i, j                 ; 66
09AB:          : push i                   ; 06
09AC:          : load y, j                ; 18
09AD:          : div i, j                 ; 66
09AE:          : div i, j                 ; 66
09AF:          : mul j, $663C             ; 63 3C 66
09B2:          : call.gt $0C0C            ; 30 0C 0C
09B5:          : call.gt $006C            ; 30 6C 00
09B8:          : nop                      ; 00
09B9:          : cpy w, a                 ; 3C
09BA:          : set y, $3C               ; 3E 3C(<)
09BC:          : dec i                    ; 7C
09BD:          : cpy w, a                 ; 3C
09BE:          : cpy w, a                 ; 3C
09BF:          : dec i                    ; 7C
09C0:          : set y, $1C               ; 3E 1C
09C2:          : inc a                    ; 70
09C3:          : div i, j                 ; 66
09C4:          : call.gt $3E37            ; 30 37 3E
09C7:          : cpy w, a                 ; 3C
09C8:          : set y, $7C               ; 3E 7C(|)
09CA:          : inc j                    ; 76
09CB:          : dec i                    ; 7C
09CC:          : cpy w, a                 ; 3C
09CD:          : div i, j                 ; 66
09CE:          : div i, j                 ; 66
09CF:          : mod i, j                 ; 6B
09D0:          : div i, j                 ; 66
09D1:          : div i, j                 ; 66
09D2:          : cmp a, x                 ; 7E
09D3:          : nop                      ; 00
09D4:          : nop                      ; 00
09D5:          : nop                      ; 00
09D6:          : nop                      ; 00
09D7:          : nop                      ; 00
09D8:          : nop                      ; 00
09D9:          : load y, j                ; 18
09DA:          : nop                      ; 00
09DB:          : mod i, $183C             ; 6C 3C 18
09DE:          : cpy a, w                 ; 38
09DF:          : nop                      ; 00
09E0:          : pop y                    ; 0C
09E1:          : call.gt $7C1C            ; 30 1C 7C
09E4:          : nop                      ; 00
09E5:          : cmp a, x                 ; 7E
09E6:          : nop                      ; 00
09E7:          : load y, j                ; 18
09E8:          : div i, j                 ; 66
09E9:          : load y, j                ; 18
09EA:          : cpy a, w                 ; 38
09EB:          : cpy a, w                 ; 38
09EC:          : cpy a, y                 ; 36
09ED:          : mul a, $3E               ; 60 3E(>)
09EF:          : load y, j                ; 18
09F0:          : cpy w, a                 ; 3C
09F1:          : dec i                    ; 7C
09F2:          : nop                      ; 00
09F3:          : nop                      ; 00
09F4:          : pop y                    ; 0C
09F5:          : nop                      ; 00
09F6:          : mul a, $38               ; 60 38(8)
09F8:          : or z, $7E                ; A5 7E(~)
09FA:          : set y, $06               ; 3E 06
09FC:          : div i, j                 ; 66
09FD:          : load i, $761E            ; 1E 1E 76
0A00:          : cmp a, x                 ; 7E
0A01:          : load y, j                ; 18
0A02:          : mul a, $0E               ; 60 0E
0A04:          : push i                   ; 06
0A05:          : mod i, j                 ; 6B
0A06:          : cmp a, x                 ; 7E
0A07:          : div i, j                 ; 66
0A08:          : set y, $66               ; 3E 66(f)
0A0A:          : set y, $3C               ; 3E 3C(<)
0A0C:          : load y, j                ; 18
0A0D:          : div i, j                 ; 66
0A0E:          : div i, j                 ; 66
0A0F:          : mod i, j                 ; 6B
0A10:          : load y, j                ; 18
0A11:          : cpy w, a                 ; 3C
0A12:          : load y, j                ; 18
0A13:          : pop y                    ; 0C
0A14:          : load y, j                ; 18
0A15:          : call.gt $0044            ; 30 44 00
0A18:          : nop                      ; 00
0A19:          : mul a, $66               ; 60 66(f)
0A1B:          : div i, j                 ; 66
0A1C:          : div i, j                 ; 66
0A1D:          : div i, j                 ; 66
0A1E:          : load y, j                ; 18
0A1F:          : div i, j                 ; 66
0A20:          : div i, j                 ; 66
0A21:          : load y, j                ; 18
0A22:          : mul a, $36               ; 60 36(6)
0A24:          : call.gt $667F            ; 30 7F 66
0A27:          : div i, j                 ; 66
0A28:          : div i, j                 ; 66
0A29:          : div i, j                 ; 66
0A2A:          : pop w                    ; 0E
0A2B:          : push i                   ; 06
0A2C:          : load y, j                ; 18
0A2D:          : div i, j                 ; 66
0A2E:          : div i, j                 ; 66
0A2F:          : mod i, j                 ; 6B
0A30:          : cpy w, a                 ; 3C
0A31:          : div i, j                 ; 66
0A32:          : call.gt $0000            ; 30 00 00
0A35:          : nop                      ; 00
0A36:          : nop                      ; 00
0A37:          : nop                      ; 00
0A38:          : nop                      ; 00
0A39:          : load y, j                ; 18
0A3A:          : nop                      ; 00
0A3B:          : mod i, $0C60             ; 6C 60 0C
0A3E:          : nop                      ; EC
0A3F:          : nop                      ; 00
0A40:          : pop y                    ; 0C
0A41:          : call.gt $1036            ; 30 36 10
0A44:          : load y, j                ; 18
0A45:          : nop                      ; 00
0A46:          : nop                      ; 00
0A47:          : pop y                    ; 0C
0A48:          : div i, j                 ; 66
0A49:          : load y, j                ; 18
0A4A:          : pop y                    ; 0C
0A4B:          : mul a, $7E               ; 60 7E(~)
0A4D:          : mul a, $66               ; 60 66(f)
0A4F:          : load y, j                ; 18
0A50:          : div i, j                 ; 66
0A51:          : mul a, $18               ; 60 18
0A53:          : load y, j                ; 18
0A54:          : load y, j                ; 18
0A55:          : cmp a, x                 ; 7E
0A56:          : call.gt $A518            ; 30 18 A5
0A59:          : div i, j                 ; 66
0A5A:          : div i, j                 ; 66
0A5B:          : push i                   ; 06
0A5C:          : div i, j                 ; 66
0A5D:          : push i                   ; 06
0A5E:          : push i                   ; 06
0A5F:          : div i, j                 ; 66
0A60:          : div i, j                 ; 66
0A61:          : load y, j                ; 18
0A62:          : mul a, $1E               ; 60 1E
0A64:          : push i                   ; 06
0A65:          : mul j, $6676             ; 63 76 66
0A68:          : push i                   ; 06
0A69:          : div i, j                 ; 66
0A6A:          : load i, $1860            ; 1E 60 18
0A6D:          : div i, j                 ; 66
0A6E:          : div i, j                 ; 66
0A6F:          : cmp a, y                 ; 7F
0A70:          : cpy w, a                 ; 3C
0A71:          : load y, j                ; 18
0A72:          : pop y                    ; 0C
0A73:          : pop y                    ; 0C
0A74:          : call.gt $0030            ; 30 30 00
0A77:          : nop                      ; 00
0A78:          : nop                      ; 00
0A79:          : dec i                    ; 7C
0A7A:          : div i, j                 ; 66
0A7B:          : push i                   ; 06
0A7C:          : div i, j                 ; 66
0A7D:          : set y, $18               ; 3E 18
0A7F:          : div i, j                 ; 66
0A80:          : div i, j                 ; 66
0A81:          : load y, j                ; 18
0A82:          : mul a, $1E               ; 60 1E
0A84:          : call.gt $666B            ; 30 6B 66
0A87:          : div i, j                 ; 66
0A88:          : div i, j                 ; 66
0A89:          : div i, j                 ; 66
0A8A:          : push i                   ; 06
0A8B:          : cpy w, a                 ; 3C
0A8C:          : load y, j                ; 18
0A8D:          : div i, j                 ; 66
0A8E:          : div i, j                 ; 66
0A8F:          : cmp a, y                 ; 7F
0A90:          : load y, j                ; 18
0A91:          : div i, j                 ; 66
0A92:          : load y, j                ; 18
0A93:          : nop                      ; 00
0A94:          : nop                      ; 00
0A95:          : nop                      ; 00
0A96:          : nop                      ; 00
0A97:          : nop                      ; 00
0A98:          : nop                      ; 00
0A99:          : nop                      ; 00
0A9A:          : nop                      ; 00
0A9B:          : nop                      ; FE
0A9C:          : set y, $66               ; 3E 66(f)
0A9E:          : div i, j                 ; 66
0A9F:          : nop                      ; 00
0AA0:          : load y, j                ; 18
0AA1:          : load y, j                ; 18
0AA2:          : nop                      ; 00
0AA3:          : pop i                    ; 10
0AA4:          : load y, j                ; 18
0AA5:          : nop                      ; 00
0AA6:          : load y, j                ; 18
0AA7:          : push i                   ; 06
0AA8:          : div i, j                 ; 66
0AA9:          : load y, j                ; 18
0AAA:          : push i                   ; 06
0AAB:          : div i, j                 ; 66
0AAC:          : call.gt $6666            ; 30 66 66
0AAF:          : load y, j                ; 18
0AB0:          : div i, j                 ; 66
0AB1:          : div i, j                 ; 66
0AB2:          : load y, j                ; 18
0AB3:          : load y, j                ; 18
0AB4:          : call.gt $1800            ; 30 00 18
0AB7:          : nop                      ; 00
0AB8:          : dec y                    ; 79
0AB9:          : div i, j                 ; 66
0ABA:          : div i, j                 ; 66
0ABB:          : div i, j                 ; 66
0ABC:          : div i, j                 ; 66
0ABD:          : push i                   ; 06
0ABE:          : push i                   ; 06
0ABF:          : div i, j                 ; 66
0AC0:          : div i, j                 ; 66
0AC1:          : load y, j                ; 18
0AC2:          : div i, j                 ; 66
0AC3:          : cpy a, y                 ; 36
0AC4:          : push i                   ; 06
0AC5:          : mul j, $6666             ; 63 66 66
0AC8:          : push i                   ; 06
0AC9:          : div i, j                 ; 66
0ACA:          : cpy a, y                 ; 36
0ACB:          : div i, j                 ; 66
0ACC:          : load y, j                ; 18
0ACD:          : div i, j                 ; 66
0ACE:          : cpy w, a                 ; 3C
0ACF:          : dec a                    ; 77
0AD0:          : div i, j                 ; 66
0AD1:          : load y, j                ; 18
0AD2:          : push i                   ; 06
0AD3:          : pop y                    ; 0C
0AD4:          : mul a, $30               ; 60 30(0)
0AD6:          : nop                      ; 00
0AD7:          : nop                      ; 00
0AD8:          : nop                      ; 00
0AD9:          : div i, j                 ; 66
0ADA:          : div i, j                 ; 66
0ADB:          : div i, j                 ; 66
0ADC:          : div i, j                 ; 66
0ADD:          : push i                   ; 06
0ADE:          : load y, j                ; 18
0ADF:          : dec i                    ; 7C
0AE0:          : div i, j                 ; 66
0AE1:          : load y, j                ; 18
0AE2:          : mul a, $36               ; 60 36(6)
0AE4:          : call.gt $666B            ; 30 6B 66
0AE7:          : div i, j                 ; 66
0AE8:          : div i, j                 ; 66
0AE9:          : div i, j                 ; 66
0AEA:          : push i                   ; 06
0AEB:          : mul a, $18               ; 60 18
0AED:          : div i, j                 ; 66
0AEE:          : cpy w, a                 ; 3C
0AEF:          : set y, $3C               ; 3E 3C(<)
0AF1:          : dec i                    ; 7C
0AF2:          : pop y                    ; 0C
0AF3:          : nop                      ; 00
0AF4:          : nop                      ; 00
0AF5:          : nop                      ; 00
0AF6:          : nop                      ; 00
0AF7:          : nop                      ; 00
0AF8:          : nop                      ; 00
0AF9:          : load y, j                ; 18
0AFA:          : nop                      ; 00
0AFB:          : mod i, $6218             ; 6C 18 62
0AFE:          : nop                      ; FC
0AFF:          : nop                      ; 00
0B00:          : call.gt $000C            ; 30 0C 00
0B03:          : nop                      ; 00
0B04:          : pop y                    ; 0C
0B05:          : nop                      ; 00
0B06:          : load y, j                ; 18
0B07:          : push y                   ; 02
0B08:          : cpy w, a                 ; 3C
0B09:          : cmp a, x                 ; 7E
0B0A:          : cmp a, x                 ; 7E
0B0B:          : cpy w, a                 ; 3C
0B0C:          : dec x                    ; 78
0B0D:          : cpy w, a                 ; 3C
0B0E:          : cpy w, a                 ; 3C
0B0F:          : load y, j                ; 18
0B10:          : cpy w, a                 ; 3C
0B11:          : cpy w, a                 ; 3C
0B12:          : nop                      ; 00
0B13:          : push f                   ; 08
0B14:          : mul a, $00               ; 60 00
0B16:          : pop y                    ; 0C
0B17:          : load y, j                ; 18
0B18:          : push y                   ; 02
0B19:          : div i, j                 ; 66
0B1A:          : set y, $3C               ; 3E 3C(<)
0B1C:          : set y, $7E               ; 3E 7E(~)
0B1E:          : push i                   ; 06
0B1F:          : cpy w, a                 ; 3C
0B20:          : div i, j                 ; 66
0B21:          : cpy w, a                 ; 3C
0B22:          : cpy w, a                 ; 3C
0B23:          : div i, j                 ; 66
0B24:          : cmp a, x                 ; 7E
0B25:          : mul j, $3C66             ; 63 66 3C
0B28:          : push i                   ; 06
0B29:          : cpy w, a                 ; 3C
0B2A:          : div i, j                 ; 66
0B2B:          : cpy w, a                 ; 3C
0B2C:          : load y, j                ; 18
0B2D:          : cpy w, a                 ; 3C
0B2E:          : load y, j                ; 18
0B2F:          : mul j, $1866             ; 63 66 18
0B32:          : cmp a, x                 ; 7E
0B33:          : cpy w, a                 ; 3C
0B34:          : set w, $3C               ; 40 3C(<)
0B36:          : nop                      ; 00
0B37:          : nop                      ; 00
0B38:          : nop                      ; 00
0B39:          : dec i                    ; 7C
0B3A:          : set y, $3C               ; 3E 3C(<)
0B3C:          : dec i                    ; 7C
0B3D:          : dec i                    ; 7C
0B3E:          : load y, j                ; 18
0B3F:          : mul a, $66               ; 60 66(f)
0B41:          : cpy w, a                 ; 3C
0B42:          : div i, j                 ; 66
0B43:          : div i, j                 ; 66
0B44:          : dec x                    ; 78
0B45:          : mod i, j                 ; 6B
0B46:          : div i, j                 ; 66
0B47:          : cpy w, a                 ; 3C
0B48:          : set y, $7C               ; 3E 7C(|)
0B4A:          : push i                   ; 06
0B4B:          : set y, $30               ; 3E 30(0)
0B4D:          : dec i                    ; 7C
0B4E:          : load y, j                ; 18
0B4F:          : cpy a, y                 ; 36
0B50:          : div i, j                 ; 66
0B51:          : mul a, $7E               ; 60 7E(~)
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
0B77:          : nop                      ; 00
0B78:          : cpy w, a                 ; 3C
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
0B88:          : nop                      ; 00
0B89:          : mul a, $00               ; 60 00
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
0B96:          : nop                      ; 00
0B97:          : nop                      ; FF
0B98:          : nop                      ; 00
0B99:          : nop                      ; 00
0B9A:          : nop                      ; 00
0B9B:          : nop                      ; 00
0B9C:          : nop                      ; 00
0B9D:          : nop                      ; 00
0B9E:          : nop                      ; 00
0B9F:          : cpy w, a                 ; 3C
0BA0:          : nop                      ; 00
0BA1:          : nop                      ; 00
0BA2:          : cpy w, a                 ; 3C
0BA3:          : nop                      ; 00
0BA4:          : nop                      ; 00
0BA5:          : nop                      ; 00
0BA6:          : nop                      ; 00
0BA7:          : nop                      ; 00
0BA8:          : push i                   ; 06
0BA9:          : mul a, $00               ; 60 00
0BAB:          : nop                      ; 00
0BAC:          : nop                      ; 00
0BAD:          : nop                      ; 00
0BAE:          : nop                      ; 00
0BAF:          : nop                      ; 00
0BB0:          : nop                      ; 00
0BB1:          : cpy w, a                 ; 3C
0BB2:          : nop                      ; 00
0BB3:          : nop                      ; 00
0BB4:          : nop                      ; 00
0BB5:          : nop                      ; 00
0BB6:          : nop                      ; 00
0BB7:          : nop                      ; 00
0BB8:          : cmp a, y                 ; 7F
0BB9:          : call.gt $3231            ; 30 31 32
0BBC:          : call.nz $3534            ; 33 34 35
0BBF:          : cpy a, y                 ; 36
0BC0:          : cpy a, z                 ; 37
0BC1:          : cpy a, w                 ; 38
0BC2:          : cpy x, a                 ; 39
0BC3:          : mul i, j                 ; 61
0BC4:          : mul i, $6463             ; 62 63 64
0BC7:          : div a, $66               ; 65 66(f)
0BC9:          : div i, $6968             ; 67 68 69
0BCC:          : mod a, $6B               ; 6A 6B(k)
0BCE:          : mod i, $6E6D             ; 6C 6D 6E
0BD1:          : neg x                    ; 6F
0BD2:          : inc a                    ; 70
0BD3:          : inc x                    ; 71
0BD4:          : inc y                    ; 72
0BD5:          : inc z                    ; 73
0BD6:          : inc w                    ; 74
0BD7:          : inc i                    ; 75
0BD8:          : inc j                    ; 76
0BD9:          : dec a                    ; 77
0BDA:          : dec x                    ; 78
0BDB:          : dec y                    ; 79
0BDC:          : dec z                    ; 7A
0BDD:          : set a, $42               ; 41 42(B)
0BDF:          : set j, $4544             ; 43 44 45
0BE2:          : add a, z                 ; 46
0BE3:          : add a, w                 ; 47
0BE4:          : add i, j                 ; 48
0BE5:          : add i, a                 ; 49
0BE6:          : add i, z                 ; 4A
0BE7:          : add i, w                 ; 4B
0BE8:          : add j, a                 ; 4C
0BE9:          : add j, x                 ; 4D
0BEA:          : add j, y                 ; 4E
0BEB:          : add i, $5150             ; 4F 50 51
0BEE:          : add y, $53               ; 52 53(S)
0BF0:          : add w, $55               ; 54 55(U)
0BF2:          : sub a, x                 ; 56
0BF3:          : sub a, y                 ; 57
0BF4:          : sub a, z                 ; 58
0BF5:          : sub a, w                 ; 59
0BF6:          : sub x, $20               ; 5A 20
0BF8:          : store i, w               ; 21
0BF9:          : store i, z               ; 22
0BFA:          : store j, a               ; 23
0BFB:          : store j, x               ; 24
0BFC:          : store j, y               ; 25
0BFD:          : store $2827, x           ; 26 27 28
0C00:          : store $2B40, w           ; 29 40 2B
0C03:          : call $3D2A               ; 2D 2A 3D  ERROR $3D2A
0C06:          : call.neq $2E2C           ; 2F 2C 2E
0C09:          : cpy z, a                 ; 3B
0C0A:          : sub y, $5D               ; 5B 5D(])
0C0C:          : dec w                    ; 7B
0C0D:          : dec j                    ; 7D
0C0E:          : set z, $3C               ; 3F 3C(<)
0C10:          : set y, $3A               ; 3E 3A(:)
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
0C25:          : cmp a, y                 ; 7F
0C26:          : nop                      ; 00
0C27:          : nop                      ; 00
0C28:          : nop                      ; 00
0C29:          : nop                      ; 00
0C2A:          : nop                      ; 00
0C2B:          : nop                      ; 00
0C2C:          : nop                      ; 00
0C2D:          : nop                      ; 00
0C2E:          : nop                      ; 00
0C2F:          : nop                      ; 00
0C30:          : nop                      ; 00
0C31:          : nop                      ; 00
0C32:          : nop                      ; 00
0C33:          : nop                      ; 00
0C34:          : nop                      ; 00
0C35:          : nop                      ; 00
0C36:          : nop                      ; 00
0C37:          : nop                      ; 00
0C38:          : nop                      ; 00
0C39:          : nop                      ; 00
0C3A:          : nop                      ; 00
0C3B:          : nop                      ; 00
0C3C:          : nop                      ; 00
0C3D:          : nop                      ; 00
0C3E:          : nop                      ; 00
0C3F:          : nop                      ; 00
0C40:          : nop                      ; 00
0C41:          : nop                      ; 00
0C42:          : nop                      ; 00
0C43:          : nop                      ; 00
0C44:          : nop                      ; 00
0C45:          : nop                      ; 00
0C46:          : nop                      ; 00
0C47:          : nop                      ; 00
0C48:          : nop                      ; 00
0C49:          : nop                      ; 00
0C4A:          : nop                      ; 00
0C4B:          : nop                      ; 00
0C4C:          : nop                      ; 00
0C4D:          : nop                      ; 00
0C4E:          : nop                      ; 00
0C4F:          : nop                      ; 00
0C50:          : nop                      ; 00
0C51:          : nop                      ; 00
0C52:          : nop                      ; 00
0C53:          : nop                      ; 00
0C54:          : nop                      ; 00
0C55:          : nop                      ; 00
0C56:          : nop                      ; 00
0C57:          : nop                      ; 00
0C58:          : nop                      ; 00
0C59:          : nop                      ; 00
0C5A:          : nop                      ; 00
0C5B:          : nop                      ; 00
0C5C:          : nop                      ; 00
0C5D:          : nop                      ; 00
0C5E:          : nop                      ; 00
0C5F:          : nop                      ; 00
0C60:          : nop                      ; 00
0C61:          : nop                      ; 00
0C62:          : nop                      ; 00
0C63:          : nop                      ; 00
0C64:          : nop                      ; 00
0C65:          : nop                      ; 00
0C66:          : nop                      ; 00
0C67:          : nop                      ; 00
0C68:          : nop                      ; 00
0C69:          : nop                      ; 00
0C6A:          : nop                      ; 00
0C6B:          : nop                      ; 00
0C6C:          : nop                      ; 00
0C6D:          : nop                      ; 00
0C6E:          : nop                      ; 00
0C6F:          : nop                      ; 00
0C70:          : nop                      ; 00
0C71:          : nop                      ; 00
0C72:          : nop                      ; 00
0C73:          : nop                      ; 00
0C74:          : nop                      ; 00
0C75:          : nop                      ; 00
0C76:          : nop                      ; 00
0C77:          : nop                      ; 00
0C78:          : nop                      ; 00
0C79:          : nop                      ; 00
0C7A:          : nop                      ; 00
0C7B:          : nop                      ; 00
0C7C:          : nop                      ; 00
0C7D:          : nop                      ; 00
0C7E:          : nop                      ; 00
0C7F:          : nop                      ; 00
0C80:          : nop                      ; 00
0C81:          : nop                      ; 00
0C82:          : nop                      ; 00
0C83:          : nop                      ; 00
0C84:          : nop                      ; 00
0C85:          : nop                      ; 00
0C86:          : nop                      ; 00
0C87:          : nop                      ; 00
0C88:          : nop                      ; 00
0C89:          : nop                      ; 00
0C8A:          : nop                      ; 00
0C8B:          : nop                      ; 00
0C8C:          : nop                      ; 00
0C8D:          : nop                      ; 00
0C8E:          : nop                      ; 00
0C8F:          : nop                      ; 00
0C90:          : nop                      ; 00
0C91:          : nop                      ; 00
0C92:          : nop                      ; 00
0C93:          : nop                      ; 00
0C94:          : nop                      ; 00
0C95:          : nop                      ; 00
0C96:          : nop                      ; 00
0C97:          : nop                      ; 00
0C98:          : nop                      ; 00
0C99:          : nop                      ; 00
0C9A:          : nop                      ; 00
0C9B:          : nop                      ; 00
0C9C:          : nop                      ; 00
0C9D:          : nop                      ; 00
0C9E:          : nop                      ; 00
0C9F:          : nop                      ; 00
0CA0:          : nop                      ; 00
0CA1:          : nop                      ; 00
0CA2:          : nop                      ; 00
0CA3:          : nop                      ; 00
0CA4:          : nop                      ; 00
0CA5:          : nop                      ; 00
0CA6:          : nop                      ; 00
0CA7:          : nop                      ; 00
0CA8:          : nop                      ; 00
0CA9:          : nop                      ; 00
0CAA:          : nop                      ; 00
0CAB:          : nop                      ; 00
0CAC:          : nop                      ; 00
0CAD:          : nop                      ; 00
0CAE:          : nop                      ; 00
0CAF:          : nop                      ; 00
0CB0:          : nop                      ; 00
0CB1:          : nop                      ; 00
0CB2:          : nop                      ; 00
0CB3:          : nop                      ; 00
0CB4:          : nop                      ; 00
0CB5:          : nop                      ; 00
0CB6:          : nop                      ; 00
0CB7:          : nop                      ; 00
0CB8:          : nop                      ; 00
0CB9:          : nop                      ; 00
0CBA:          : nop                      ; 00
0CBB:          : nop                      ; 00
0CBC:          : nop                      ; 00
0CBD:          : nop                      ; 00
0CBE:          : nop                      ; 00
0CBF:          : nop                      ; 00
0CC0:          : nop                      ; 00
0CC1:          : nop                      ; 00
0CC2:          : nop                      ; 00
0CC3:          : nop                      ; 00
0CC4:          : nop                      ; 00
0CC5:          : nop                      ; 00
0CC6:          : nop                      ; 00
0CC7:          : nop                      ; 00
0CC8:          : nop                      ; 00
0CC9:          : nop                      ; 00
0CCA:          : nop                      ; 00
0CCB:          : nop                      ; 00
0CCC:          : nop                      ; 00
0CCD:          : nop                      ; 00
0CCE:          : nop                      ; 00
0CCF:          : nop                      ; 00
0CD0:          : nop                      ; 00
0CD1:          : nop                      ; 00
0CD2:          : nop                      ; 00
0CD3:          : nop                      ; 00
0CD4:          : nop                      ; 00
0CD5:          : nop                      ; 00
0CD6:          : nop                      ; 00
0CD7:          : nop                      ; 00
0CD8:          : nop                      ; 00
0CD9:          : nop                      ; 00
0CDA:          : nop                      ; 00
0CDB:          : nop                      ; 00
0CDC:          : nop                      ; 00
0CDD:          : nop                      ; 00
0CDE:          : nop                      ; 00
0CDF:          : nop                      ; 00
0CE0:          : nop                      ; 00
0CE1:          : nop                      ; 00
0CE2:          : nop                      ; 00
0CE3:          : nop                      ; 00
0CE4:          : nop                      ; 00
0CE5:          : nop                      ; 00
0CE6:          : nop                      ; 00
0CE7:          : nop                      ; 00
0CE8:          : nop                      ; 00
0CE9:          : nop                      ; 00
0CEA:          : nop                      ; 00
0CEB:          : nop                      ; 00
0CEC:          : nop                      ; 00
0CED:          : nop                      ; 00
0CEE:          : nop                      ; 00
0CEF:          : nop                      ; 00
0CF0:          : nop                      ; 00
0CF1:          : nop                      ; 00
0CF2:          : nop                      ; 00
0CF3:          : nop                      ; 00
0CF4:          : nop                      ; 00
0CF5:          : nop                      ; 00
0CF6:          : nop                      ; 00
0CF7:          : nop                      ; 00
0CF8:          : nop                      ; 00
0CF9:          : nop                      ; 00
0CFA:          : nop                      ; 00
0CFB:          : nop                      ; 00
0CFC:          : nop                      ; 00
0CFD:          : nop                      ; 00
0CFE:          : nop                      ; 00
0CFF:          : nop                      ; 00
0D00:          : nop                      ; 00
0D01:          : nop                      ; 00
0D02:          : nop                      ; 00
0D03:          : nop                      ; 00
0D04:          : nop                      ; 00
0D05:          : nop                      ; 00
0D06:          : nop                      ; 00
0D07:          : nop                      ; 00
0D08:          : nop                      ; 00
0D09:          : nop                      ; 00
0D0A:          : nop                      ; 00
0D0B:          : nop                      ; 00
0D0C:          : nop                      ; 00
0D0D:          : nop                      ; 00
0D0E:          : nop                      ; 00
0D0F:          : nop                      ; 00
0D10:          : nop                      ; 00
0D11:          : nop                      ; 00
0D12:          : nop                      ; 00
0D13:          : nop                      ; 00
0D14:          : nop                      ; 00
0D15:          : nop                      ; 00
0D16:          : nop                      ; 00
0D17:          : nop                      ; 00
0D18:          : nop                      ; 00
0D19:          : nop                      ; 00
0D1A:          : nop                      ; 00
0D1B:          : nop                      ; 00
0D1C:          : nop                      ; 00
0D1D:          : nop                      ; 00
0D1E:          : nop                      ; 00
0D1F:          : nop                      ; 00
0D20:          : nop                      ; 00
0D21:          : nop                      ; 00
0D22:          : nop                      ; 00
0D23:          : nop                      ; 00
0D24:          : nop                      ; 00
0D25:          : nop                      ; 00
0D26:          : nop                      ; 00
0D27:          : nop                      ; 00
0D28:          : nop                      ; 00
0D29:          : nop                      ; 00
0D2A:          : nop                      ; 00
0D2B:          : nop                      ; 00
0D2C:          : nop                      ; 00
0D2D:          : nop                      ; 00
0D2E:          : nop                      ; 00
0D2F:          : nop                      ; 00
0D30:          : nop                      ; 00
0D31:          : nop                      ; 00
0D32:          : nop                      ; 00
0D33:          : nop                      ; 00
0D34:          : nop                      ; 00
0D35:          : nop                      ; 00
0D36:          : nop                      ; 00
0D37:          : nop                      ; 00
0D38:          : nop                      ; 00
0D39:          : nop                      ; 00
0D3A:          : nop                      ; 00
0D3B:          : nop                      ; 00
0D3C:          : nop                      ; 00
0D3D:          : nop                      ; 00
0D3E:          : nop                      ; 00
0D3F:          : nop                      ; 00
0D40:          : nop                      ; 00
0D41:          : nop                      ; 00
0D42:          : nop                      ; 00
0D43:          : nop                      ; 00
0D44:          : nop                      ; 00
0D45:          : nop                      ; 00
0D46:          : nop                      ; 00
0D47:          : nop                      ; 00
0D48:          : nop                      ; 00
0D49:          : nop                      ; 00
0D4A:          : nop                      ; 00
0D4B:          : nop                      ; 00
0D4C:          : nop                      ; 00
0D4D:          : nop                      ; 00
0D4E:          : nop                      ; 00
0D4F:          : nop                      ; 00
0D50:          : nop                      ; 00
0D51:          : nop                      ; 00
0D52:          : nop                      ; 00
0D53:          : nop                      ; 00
0D54:          : nop                      ; 00
0D55:          : nop                      ; 00
0D56:          : nop                      ; 00
0D57:          : nop                      ; 00
0D58:          : nop                      ; 00
0D59:          : nop                      ; 00
0D5A:          : nop                      ; 00
0D5B:          : nop                      ; 00
0D5C:          : nop                      ; 00
0D5D:          : nop                      ; 00
0D5E:          : nop                      ; 00
0D5F:          : nop                      ; 00
0D60:          : nop                      ; 00
0D61:          : nop                      ; 00
0D62:          : nop                      ; 00
0D63:          : nop                      ; 00
0D64:          : nop                      ; 00
0D65:          : nop                      ; 00
0D66:          : nop                      ; 00
0D67:          : nop                      ; 00
0D68:          : nop                      ; 00
0D69:          : nop                      ; 00
0D6A:          : nop                      ; 00
0D6B:          : nop                      ; 00
0D6C:          : nop                      ; 00
0D6D:          : nop                      ; 00
0D6E:          : nop                      ; 00
0D6F:          : nop                      ; 00
0D70:          : nop                      ; 00
0D71:          : nop                      ; 00
0D72:          : nop                      ; 00
0D73:          : nop                      ; 00
0D74:          : nop                      ; 00
0D75:          : nop                      ; 00
0D76:          : nop                      ; 00
0D77:          : nop                      ; 00
0D78:          : nop                      ; 00
0D79:          : nop                      ; 00
0D7A:          : nop                      ; 00
0D7B:          : nop                      ; 00
0D7C:          : nop                      ; 00
0D7D:          : nop                      ; 00
0D7E:          : nop                      ; 00
0D7F:          : nop                      ; 00
0D80:          : nop                      ; 00
0D81:          : nop                      ; 00
0D82:          : nop                      ; 00
0D83:          : nop                      ; 00
0D84:          : nop                      ; 00
0D85:          : nop                      ; 00
0D86:          : nop                      ; 00
0D87:          : nop                      ; 00
0D88:          : nop                      ; 00
0D89:          : nop                      ; 00
0D8A:          : nop                      ; 00
0D8B:          : nop                      ; 00
0D8C:          : nop                      ; 00
0D8D:          : nop                      ; 00
0D8E:          : nop                      ; 00
0D8F:          : nop                      ; 00
0D90:          : nop                      ; 00
0D91:          : nop                      ; 00
0D92:          : nop                      ; 00
0D93:          : nop                      ; 00
0D94:          : nop                      ; 00
0D95:          : nop                      ; 00
0D96:          : nop                      ; 00
0D97:          : nop                      ; 00
0D98:          : nop                      ; 00
0D99:          : nop                      ; 00
0D9A:          : nop                      ; 00
0D9B:          : nop                      ; 00
0D9C:          : nop                      ; 00
0D9D:          : nop                      ; 00
0D9E:          : nop                      ; 00
0D9F:          : nop                      ; 00
0DA0:          : nop                      ; 00
0DA1:          : nop                      ; 00
0DA2:          : nop                      ; 00
0DA3:          : nop                      ; 00
0DA4:          : nop                      ; 00
0DA5:          : nop                      ; 00
0DA6:          : nop                      ; 00
0DA7:          : nop                      ; 00
0DA8:          : nop                      ; 00
0DA9:          : nop                      ; 00
0DAA:          : nop                      ; 00
0DAB:          : nop                      ; 00
0DAC:          : nop                      ; 00
0DAD:          : nop                      ; 00
0DAE:          : nop                      ; 00
0DAF:          : nop                      ; 00
0DB0:          : nop                      ; 00
0DB1:          : nop                      ; 00
0DB2:          : nop                      ; 00
0DB3:          : nop                      ; 00
0DB4:          : nop                      ; 00
0DB5:          : nop                      ; 00
0DB6:          : nop                      ; 00
0DB7:          : nop                      ; 00
0DB8:          : nop                      ; 00
0DB9:          : nop                      ; 00
0DBA:          : nop                      ; 00
0DBB:          : nop                      ; 00
0DBC:          : nop                      ; 00
0DBD:          : nop                      ; 00
0DBE:          : nop                      ; 00
0DBF:          : nop                      ; 00
0DC0:          : nop                      ; 00
0DC1:          : nop                      ; 00
0DC2:          : nop                      ; 00
0DC3:          : nop                      ; 00
0DC4:          : nop                      ; 00
0DC5:          : nop                      ; 00
0DC6:          : nop                      ; 00
0DC7:          : nop                      ; 00
0DC8:          : nop                      ; 00
0DC9:          : nop                      ; 00
0DCA:          : nop                      ; 00
0DCB:          : nop                      ; 00
0DCC:          : nop                      ; 00
0DCD:          : nop                      ; 00
0DCE:          : nop                      ; 00
0DCF:          : nop                      ; 00
0DD0:          : nop                      ; 00
0DD1:          : nop                      ; 00
0DD2:          : nop                      ; 00
0DD3:          : nop                      ; 00
0DD4:          : nop                      ; 00
0DD5:          : nop                      ; 00
0DD6:          : nop                      ; 00
0DD7:          : nop                      ; 00
0DD8:          : nop                      ; 00
0DD9:          : nop                      ; 00
0DDA:          : nop                      ; 00
0DDB:          : nop                      ; 00
0DDC:          : nop                      ; 00
0DDD:          : nop                      ; 00
0DDE:          : nop                      ; 00
0DDF:          : nop                      ; 00
0DE0:          : nop                      ; 00
0DE1:          : nop                      ; 00
0DE2:          : nop                      ; 00
0DE3:          : nop                      ; 00
0DE4:          : nop                      ; 00
0DE5:          : nop                      ; 00
0DE6:          : nop                      ; 00
0DE7:          : nop                      ; 00
0DE8:          : nop                      ; 00
0DE9:          : nop                      ; 00
0DEA:          : nop                      ; 00
0DEB:          : nop                      ; 00
0DEC:          : nop                      ; 00
0DED:          : nop                      ; 00
0DEE:          : nop                      ; 00
0DEF:          : nop                      ; 00
0DF0:          : nop                      ; 00
0DF1:          : nop                      ; 00
0DF2:          : nop                      ; 00
0DF3:          : nop                      ; 00
0DF4:          : nop                      ; 00
0DF5:          : nop                      ; 00
0DF6:          : nop                      ; 00
0DF7:          : nop                      ; 00
0DF8:          : nop                      ; 00
0DF9:          : nop                      ; 00
0DFA:          : nop                      ; 00
0DFB:          : nop                      ; 00
0DFC:          : nop                      ; 00
0DFD:          : nop                      ; 00
0DFE:          : nop                      ; 00
0DFF:          : nop                      ; 00
0E00:          : nop                      ; 00
0E01:          : nop                      ; 00
0E02:          : nop                      ; 00
0E03:          : nop                      ; 00
0E04:          : nop                      ; 00
0E05:          : nop                      ; 00
0E06:          : nop                      ; 00
0E07:          : nop                      ; 00
0E08:          : nop                      ; 00
0E09:          : nop                      ; 00
0E0A:          : nop                      ; 00
0E0B:          : nop                      ; 00
0E0C:          : nop                      ; 00
0E0D:          : nop                      ; 00
0E0E:          : nop                      ; 00
0E0F:          : nop                      ; 00
0E10:          : nop                      ; 00
0E11:          : nop                      ; 00
0E12:          : nop                      ; 00
0E13:          : nop                      ; 00
0E14:          : nop                      ; 00
0E15:          : nop                      ; 00
0E16:          : nop                      ; 00
0E17:          : nop                      ; 00
0E18:          : nop                      ; 00
0E19:          : nop                      ; 00
0E1A:          : nop                      ; 00
0E1B:          : nop                      ; 00
0E1C:          : nop                      ; 00
0E1D:          : nop                      ; 00
0E1E:          : nop                      ; 00
0E1F:          : nop                      ; 00
0E20:          : nop                      ; 00
0E21:          : nop                      ; 00
0E22:          : nop                      ; 00
0E23:          : nop                      ; 00
0E24:          : nop                      ; 00
0E25:          : nop                      ; 00
0E26:          : nop                      ; 00
0E27:          : nop                      ; 00
0E28:          : nop                      ; 00
0E29:          : nop                      ; 00
0E2A:          : nop                      ; 00
0E2B:          : nop                      ; 00
0E2C:          : nop                      ; 00
0E2D:          : nop                      ; 00
0E2E:          : nop                      ; 00
0E2F:          : nop                      ; 00
0E30:          : nop                      ; 00
0E31:          : nop                      ; 00
0E32:          : nop                      ; 00
0E33:          : nop                      ; 00
0E34:          : nop                      ; 00
0E35:          : nop                      ; 00
0E36:          : nop                      ; 00
0E37:          : nop                      ; 00
0E38:          : nop                      ; 00
0E39:          : nop                      ; 00
0E3A:          : nop                      ; 00
0E3B:          : nop                      ; 00
0E3C:          : nop                      ; 00
0E3D:          : nop                      ; 00
0E3E:          : nop                      ; 00
0E3F:          : nop                      ; 00
0E40:          : nop                      ; 00
0E41:          : nop                      ; 00
0E42:          : nop                      ; 00
0E43:          : nop                      ; 00
0E44:          : nop                      ; 00
0E45:          : nop                      ; 00
0E46:          : nop                      ; 00
0E47:          : nop                      ; 00
0E48:          : nop                      ; 00
0E49:          : nop                      ; 00
0E4A:          : nop                      ; 00
0E4B:          : nop                      ; 00
0E4C:          : nop                      ; 00
0E4D:          : nop                      ; 00
0E4E:          : nop                      ; 00
0E4F:          : nop                      ; 00
0E50:          : nop                      ; 00
0E51:          : nop                      ; 00
0E52:          : nop                      ; 00
0E53:          : nop                      ; 00
0E54:          : nop                      ; 00
0E55:          : nop                      ; 00
0E56:          : nop                      ; 00
0E57:          : nop                      ; 00
0E58:          : nop                      ; 00
0E59:          : nop                      ; 00
0E5A:          : nop                      ; 00
0E5B:          : nop                      ; 00
0E5C:          : nop                      ; 00
0E5D:          : nop                      ; 00
0E5E:          : nop                      ; 00
0E5F:          : nop                      ; 00
0E60:          : nop                      ; 00
0E61:          : nop                      ; 00
0E62:          : nop                      ; 00
0E63:          : nop                      ; 00
0E64:          : nop                      ; 00
0E65:          : nop                      ; 00
0E66:          : nop                      ; 00
0E67:          : nop                      ; 00
0E68:          : nop                      ; 00
0E69:          : nop                      ; 00
0E6A:          : nop                      ; 00
0E6B:          : nop                      ; 00
0E6C:          : nop                      ; 00
0E6D:          : nop                      ; 00
0E6E:          : nop                      ; 00
0E6F:          : nop                      ; 00
0E70:          : nop                      ; 00
0E71:          : nop                      ; 00
0E72:          : nop                      ; 00
0E73:          : nop                      ; 00
0E74:          : nop                      ; 00
0E75:          : nop                      ; 00
0E76:          : nop                      ; 00
0E77:          : nop                      ; 00
0E78:          : nop                      ; 00
0E79:          : nop                      ; 00
0E7A:          : nop                      ; 00
0E7B:          : nop                      ; 00
0E7C:          : nop                      ; 00
0E7D:          : nop                      ; 00
0E7E:          : nop                      ; 00
0E7F:          : nop                      ; 00
0E80:          : nop                      ; 00
0E81:          : nop                      ; 00
0E82:          : nop                      ; 00
0E83:          : nop                      ; 00
0E84:          : nop                      ; 00
0E85:          : nop                      ; 00
0E86:          : nop                      ; 00
0E87:          : nop                      ; 00
0E88:          : nop                      ; 00
0E89:          : nop                      ; 00
0E8A:          : nop                      ; 00
0E8B:          : nop                      ; 00
0E8C:          : nop                      ; 00
0E8D:          : nop                      ; 00
0E8E:          : nop                      ; 00
0E8F:          : nop                      ; 00
0E90:          : nop                      ; 00
0E91:          : nop                      ; 00
0E92:          : nop                      ; 00
0E93:          : nop                      ; 00
0E94:          : nop                      ; 00
0E95:          : nop                      ; 00
0E96:          : nop                      ; 00
0E97:          : nop                      ; 00
0E98:          : nop                      ; 00
0E99:          : nop                      ; 00
0E9A:          : nop                      ; 00
0E9B:          : nop                      ; 00
0E9C:          : nop                      ; 00
0E9D:          : nop                      ; 00
0E9E:          : nop                      ; 00
0E9F:          : nop                      ; 00
0EA0:          : nop                      ; 00
0EA1:          : nop                      ; 00
0EA2:          : nop                      ; 00
0EA3:          : nop                      ; 00
0EA4:          : nop                      ; 00
0EA5:          : nop                      ; 00
0EA6:          : nop                      ; 00
0EA7:          : nop                      ; 00
0EA8:          : nop                      ; 00
0EA9:          : nop                      ; 00
0EAA:          : nop                      ; 00
0EAB:          : nop                      ; 00
0EAC:          : nop                      ; 00
0EAD:          : nop                      ; 00
0EAE:          : nop                      ; 00
0EAF:          : nop                      ; 00
0EB0:          : nop                      ; 00
0EB1:          : nop                      ; 00
0EB2:          : nop                      ; 00
0EB3:          : nop                      ; 00
0EB4:          : nop                      ; 00
0EB5:          : nop                      ; 00
0EB6:          : nop                      ; 00
0EB7:          : nop                      ; 00
0EB8:          : nop                      ; 00
0EB9:          : nop                      ; 00
0EBA:          : nop                      ; 00
0EBB:          : nop                      ; 00
0EBC:          : nop                      ; 00
0EBD:          : nop                      ; 00
0EBE:          : nop                      ; 00
0EBF:          : nop                      ; 00
0EC0:          : nop                      ; 00
0EC1:          : nop                      ; 00
0EC2:          : nop                      ; 00
0EC3:          : nop                      ; 00
0EC4:          : nop                      ; 00
0EC5:          : nop                      ; 00
0EC6:          : nop                      ; 00
0EC7:          : nop                      ; 00
0EC8:          : nop                      ; 00
0EC9:          : nop                      ; 00
0ECA:          : nop                      ; 00
0ECB:          : nop                      ; 00
0ECC:          : nop                      ; 00
0ECD:          : nop                      ; 00
0ECE:          : nop                      ; 00
0ECF:          : nop                      ; 00
0ED0:          : nop                      ; 00
0ED1:          : nop                      ; 00
0ED2:          : nop                      ; 00
0ED3:          : nop                      ; 00
0ED4:          : nop                      ; 00
0ED5:          : nop                      ; 00
0ED6:          : nop                      ; 00
0ED7:          : nop                      ; 00
0ED8:          : nop                      ; 00
0ED9:          : nop                      ; 00
0EDA:          : nop                      ; 00
0EDB:          : nop                      ; 00
0EDC:          : nop                      ; 00
0EDD:          : nop                      ; 00
0EDE:          : nop                      ; 00
0EDF:          : nop                      ; 00
0EE0:          : nop                      ; 00
0EE1:          : nop                      ; 00
0EE2:          : nop                      ; 00
0EE3:          : nop                      ; 00
0EE4:          : nop                      ; 00
0EE5:          : nop                      ; 00
0EE6:          : nop                      ; 00
0EE7:          : nop                      ; 00
0EE8:          : nop                      ; 00
0EE9:          : nop                      ; 00
0EEA:          : nop                      ; 00
0EEB:          : nop                      ; 00
0EEC:          : nop                      ; 00
0EED:          : nop                      ; 00
0EEE:          : nop                      ; 00
0EEF:          : nop                      ; 00
0EF0:          : nop                      ; 00
0EF1:          : nop                      ; 00
0EF2:          : nop                      ; 00
0EF3:          : nop                      ; 00
0EF4:          : nop                      ; 00
0EF5:          : nop                      ; 00
0EF6:          : nop                      ; 00
0EF7:          : nop                      ; 00
0EF8:          : nop                      ; 00
0EF9:          : nop                      ; 00
0EFA:          : nop                      ; 00
0EFB:          : nop                      ; 00
0EFC:          : nop                      ; 00
0EFD:          : nop                      ; 00
0EFE:          : nop                      ; 00
0EFF:          : nop                      ; 00
0F00:          : nop                      ; 00
0F01:          : nop                      ; 00
0F02:          : nop                      ; 00
0F03:          : nop                      ; 00
0F04:          : nop                      ; 00
0F05:          : nop                      ; 00
0F06:          : nop                      ; 00
0F07:          : nop                      ; 00
0F08:          : nop                      ; 00
0F09:          : nop                      ; 00
0F0A:          : nop                      ; 00
0F0B:          : nop                      ; 00
0F0C:          : nop                      ; 00
0F0D:          : nop                      ; 00
0F0E:          : nop                      ; 00
0F0F:          : nop                      ; 00
0F10:          : nop                      ; 00
0F11:          : nop                      ; 00
0F12:          : nop                      ; 00
0F13:          : nop                      ; 00
0F14:          : nop                      ; 00
0F15:          : nop                      ; 00
0F16:          : nop                      ; 00
0F17:          : nop                      ; 00
0F18:          : nop                      ; 00
0F19:          : nop                      ; 00
0F1A:          : nop                      ; 00
0F1B:          : nop                      ; 00
0F1C:          : nop                      ; 00
0F1D:          : nop                      ; 00
0F1E:          : nop                      ; 00
0F1F:          : nop                      ; 00
0F20:          : nop                      ; 00
0F21:          : nop                      ; 00
0F22:          : nop                      ; 00
0F23:          : nop                      ; 00
0F24:          : nop                      ; 00
0F25:          : nop                      ; 00
0F26:          : nop                      ; 00
0F27:          : nop                      ; 00
0F28:          : nop                      ; 00
0F29:          : nop                      ; 00
0F2A:          : nop                      ; 00
0F2B:          : nop                      ; 00
0F2C:          : nop                      ; 00
0F2D:          : nop                      ; 00
0F2E:          : nop                      ; 00
0F2F:          : nop                      ; 00
0F30:          : nop                      ; 00
0F31:          : nop                      ; 00
0F32:          : nop                      ; 00
0F33:          : nop                      ; 00
0F34:          : nop                      ; 00
0F35:          : nop                      ; 00
0F36:          : nop                      ; 00
0F37:          : nop                      ; 00
0F38:          : nop                      ; 00
0F39:          : nop                      ; 00
0F3A:          : nop                      ; 00
0F3B:          : nop                      ; 00
0F3C:          : nop                      ; 00
0F3D:          : nop                      ; 00
0F3E:          : nop                      ; 00
0F3F:          : nop                      ; 00
0F40:          : nop                      ; 00
0F41:          : nop                      ; 00
0F42:          : nop                      ; 00
0F43:          : nop                      ; 00
0F44:          : nop                      ; 00
0F45:          : nop                      ; 00
0F46:          : nop                      ; 00
0F47:          : nop                      ; 00
0F48:          : nop                      ; 00
0F49:          : nop                      ; 00
0F4A:          : nop                      ; 00
0F4B:          : nop                      ; 00
0F4C:          : nop                      ; 00
0F4D:          : nop                      ; 00
0F4E:          : nop                      ; 00
0F4F:          : nop                      ; 00
0F50:          : nop                      ; 00
0F51:          : nop                      ; 00
0F52:          : nop                      ; 00
0F53:          : nop                      ; 00
0F54:          : nop                      ; 00
0F55:          : nop                      ; 00
0F56:          : nop                      ; 00
0F57:          : nop                      ; 00
0F58:          : nop                      ; 00
0F59:          : nop                      ; 00
0F5A:          : nop                      ; 00
0F5B:          : nop                      ; 00
0F5C:          : nop                      ; 00
0F5D:          : nop                      ; 00
0F5E:          : nop                      ; 00
0F5F:          : nop                      ; 00
0F60:          : nop                      ; 00
0F61:          : nop                      ; 00
0F62:          : nop                      ; 00
0F63:          : nop                      ; 00
0F64:          : nop                      ; 00
0F65:          : nop                      ; 00
0F66:          : nop                      ; 00
0F67:          : nop                      ; 00
0F68:          : nop                      ; 00
0F69:          : nop                      ; 00
0F6A:          : nop                      ; 00
0F6B:          : nop                      ; 00
0F6C:          : nop                      ; 00
0F6D:          : nop                      ; 00
0F6E:          : nop                      ; 00
0F6F:          : nop                      ; 00
0F70:          : nop                      ; 00
0F71:          : nop                      ; 00
0F72:          : nop                      ; 00
0F73:          : nop                      ; 00
0F74:          : nop                      ; 00
0F75:          : nop                      ; 00
0F76:          : nop                      ; 00
0F77:          : nop                      ; 00
0F78:          : nop                      ; 00
0F79:          : nop                      ; 00
0F7A:          : nop                      ; 00
0F7B:          : nop                      ; 00
0F7C:          : nop                      ; 00
0F7D:          : nop                      ; 00
0F7E:          : nop                      ; 00
0F7F:          : nop                      ; 00
0F80:          : nop                      ; 00
0F81:          : nop                      ; 00
0F82:          : nop                      ; 00
0F83:          : nop                      ; 00
0F84:          : nop                      ; 00
0F85:          : nop                      ; 00
0F86:          : nop                      ; 00
0F87:          : nop                      ; 00
0F88:          : nop                      ; 00
0F89:          : nop                      ; 00
0F8A:          : nop                      ; 00
0F8B:          : nop                      ; 00
0F8C:          : nop                      ; 00
0F8D:          : nop                      ; 00
0F8E:          : nop                      ; 00
0F8F:          : nop                      ; 00
0F90:          : nop                      ; 00
0F91:          : nop                      ; 00
0F92:          : nop                      ; 00
0F93:          : nop                      ; 00
0F94:          : nop                      ; 00
0F95:          : nop                      ; 00
0F96:          : nop                      ; 00
0F97:          : nop                      ; 00
0F98:          : nop                      ; 00
0F99:          : nop                      ; 00
0F9A:          : nop                      ; 00
0F9B:          : nop                      ; 00
0F9C:          : nop                      ; 00
0F9D:          : nop                      ; 00
0F9E:          : nop                      ; 00
0F9F:          : nop                      ; 00
0FA0:          : nop                      ; 00
0FA1:          : nop                      ; 00
0FA2:          : nop                      ; 00
0FA3:          : nop                      ; 00
0FA4:          : nop                      ; 00
0FA5:          : nop                      ; 00
0FA6:          : nop                      ; 00
0FA7:          : nop                      ; 00
0FA8:          : nop                      ; 00
0FA9:          : nop                      ; 00
0FAA:          : nop                      ; 00
0FAB:          : nop                      ; 00
0FAC:          : nop                      ; 00
0FAD:          : nop                      ; 00
0FAE:          : nop                      ; 00
0FAF:          : nop                      ; 00
0FB0:          : nop                      ; 00
0FB1:          : nop                      ; 00
0FB2:          : nop                      ; 00
0FB3:          : nop                      ; 00
0FB4:          : nop                      ; 00
0FB5:          : nop                      ; 00
0FB6:          : nop                      ; 00
0FB7:          : nop                      ; 00
0FB8:          : nop                      ; 00
0FB9:          : nop                      ; 00
0FBA:          : nop                      ; 00
0FBB:          : nop                      ; 00
0FBC:          : nop                      ; 00
0FBD:          : nop                      ; 00
0FBE:          : nop                      ; 00
0FBF:          : nop                      ; 00
0FC0:          : nop                      ; 00
0FC1:          : nop                      ; 00
0FC2:          : nop                      ; 00
0FC3:          : nop                      ; 00
0FC4:          : nop                      ; 00
0FC5:          : nop                      ; 00
0FC6:          : nop                      ; 00
0FC7:          : nop                      ; 00
0FC8:          : nop                      ; 00
0FC9:          : nop                      ; 00
0FCA:          : nop                      ; 00
0FCB:          : nop                      ; 00
0FCC:          : nop                      ; 00
0FCD:          : nop                      ; 00
0FCE:          : nop                      ; 00
0FCF:          : nop                      ; 00
0FD0:          : nop                      ; 00
0FD1:          : nop                      ; 00
0FD2:          : nop                      ; 00
0FD3:          : nop                      ; 00
0FD4:          : nop                      ; 00
0FD5:          : nop                      ; 00
0FD6:          : nop                      ; 00
0FD7:          : nop                      ; 00
0FD8:          : nop                      ; 00
0FD9:          : nop                      ; 00
0FDA:          : nop                      ; 00
0FDB:          : nop                      ; 00
0FDC:          : nop                      ; 00
0FDD:          : nop                      ; 00
0FDE:          : nop                      ; 00
0FDF:          : nop                      ; 00
0FE0:          : nop                      ; 00
0FE1:          : nop                      ; 00
0FE2:          : nop                      ; 00
0FE3:          : nop                      ; 00
0FE4:          : nop                      ; 00
0FE5:          : nop                      ; 00
0FE6:          : nop                      ; 00
0FE7:          : nop                      ; 00
0FE8:          : nop                      ; 00
0FE9:          : nop                      ; 00
0FEA:          : nop                      ; 00
0FEB:          : nop                      ; 00
0FEC:          : nop                      ; 00
0FED:          : nop                      ; 00
0FEE:          : nop                      ; 00
0FEF:          : nop                      ; 00
0FF0:          : nop                      ; 00
0FF1:          : nop                      ; 00
0FF2:          : nop                      ; 00
0FF3:          : nop                      ; 00
0FF4:          : nop                      ; 00
0FF5:          : nop                      ; 00
0FF6:          : nop                      ; 00
0FF7:          : nop                      ; 00
0FF8:          : nop                      ; 00
0FF9:          : nop                      ; 00
0FFA:          : nop                      ; 00
0FFB:          : nop                      ; 00
0FFC:          : nop                      ; 00
0FFD:          : nop                      ; 00
0FFE:          : nop                      ; 00
0FFF:          : nop                      ; 00
1000:          : nop                      ; 00
1001:          : nop                      ; 00
1002:          : nop                      ; 00
1003:          : nop                      ; 00
1004:          : nop                      ; 00
1005:          : nop                      ; 00
1006:          : nop                      ; 00
1007:          : nop                      ; 00
1008:          : nop                      ; 00
1009:          : nop                      ; 00
100A:          : nop                      ; 00
100B:          : nop                      ; 00
100C:          : nop                      ; 00
100D:          : nop                      ; 00
100E:          : nop                      ; 00
100F:          : nop                      ; 00
1010:          : nop                      ; 00
1011:          : nop                      ; 00
1012:          : nop                      ; 00
1013:          : nop                      ; 00
1014:          : nop                      ; 00
1015:          : nop                      ; 00
1016:          : nop                      ; 00
1017:          : nop                      ; 00
1018:          : nop                      ; 00
1019:          : nop                      ; 00
101A:          : nop                      ; 00
101B:          : nop                      ; 00
101C:          : nop                      ; 00
101D:          : nop                      ; 00
101E:          : nop                      ; 00
101F:          : nop                      ; 00
1020:          : nop                      ; 00
1021:          : nop                      ; 00
1022:          : nop                      ; 00
1023:          : nop                      ; 00
1024:          : nop                      ; 00
1025:          : nop                      ; 00
1026:          : nop                      ; 00
1027:          : nop                      ; 00
1028:          : nop                      ; 00
1029:          : nop                      ; 00
102A:          : nop                      ; 00
102B:          : nop                      ; 00
102C:          : nop                      ; 00
102D:          : nop                      ; 00
102E:          : nop                      ; 00
102F:          : nop                      ; 00
1030:          : nop                      ; 00
1031:          : nop                      ; 00
1032:          : nop                      ; 00
1033:          : nop                      ; 00
1034:          : nop                      ; 00
1035:          : nop                      ; 00
1036:          : nop                      ; 00
1037:          : nop                      ; 00
1038:          : nop                      ; 00
1039:          : nop                      ; 00
103A:          : nop                      ; 00
103B:          : nop                      ; 00
103C:          : nop                      ; 00
103D:          : nop                      ; 00
103E:          : nop                      ; 00
103F:          : nop                      ; 00
1040:          : nop                      ; 00
1041:          : nop                      ; 00
1042:          : nop                      ; 00
1043:          : nop                      ; 00
1044:          : nop                      ; 00
1045:          : nop                      ; 00
1046:          : nop                      ; 00
1047:          : nop                      ; 00
1048:          : nop                      ; 00
1049:          : nop                      ; 00
104A:          : nop                      ; 00
104B:          : nop                      ; 00
104C:          : nop                      ; 00
104D:          : nop                      ; 00
104E:          : nop                      ; 00
104F:          : nop                      ; 00
1050:          : nop                      ; 00
1051:          : nop                      ; 00
1052:          : nop                      ; 00
1053:          : nop                      ; 00
1054:          : nop                      ; 00
1055:          : nop                      ; 00
1056:          : nop                      ; 00
1057:          : nop                      ; 00
1058:          : nop                      ; 00
1059:          : nop                      ; 00
105A:          : nop                      ; 00
105B:          : nop                      ; 00
105C:          : nop                      ; 00
105D:          : nop                      ; 00
105E:          : nop                      ; 00
105F:          : nop                      ; 00
1060:          : nop                      ; 00
1061:          : nop                      ; 00
1062:          : nop                      ; 00
1063:          : nop                      ; 00
1064:          : nop                      ; 00
1065:          : nop                      ; 00
1066:          : nop                      ; 00
1067:          : nop                      ; 00
1068:          : nop                      ; 00
1069:          : nop                      ; 00
106A:          : nop                      ; 00
106B:          : nop                      ; 00
106C:          : nop                      ; 00
106D:          : nop                      ; 00
106E:          : nop                      ; 00
106F:          : nop                      ; 00
1070:          : nop                      ; 00
1071:          : nop                      ; 00
1072:          : nop                      ; 00
1073:          : nop                      ; 00
1074:          : nop                      ; 00
1075:          : nop                      ; 00
1076:          : nop                      ; 00
1077:          : nop                      ; 00
1078:          : nop                      ; 00
1079:          : nop                      ; 00
107A:          : nop                      ; 00
107B:          : nop                      ; 00
107C:          : nop                      ; 00
107D:          : nop                      ; 00
107E:          : nop                      ; 00
107F:          : nop                      ; 00
1080:          : nop                      ; 00
1081:          : nop                      ; 00
1082:          : nop                      ; 00
1083:          : nop                      ; 00
1084:          : nop                      ; 00
1085:          : nop                      ; 00
1086:          : nop                      ; 00
1087:          : nop                      ; 00
1088:          : nop                      ; 00
1089:          : nop                      ; 00
108A:          : nop                      ; 00
108B:          : nop                      ; 00
108C:          : nop                      ; 00
108D:          : nop                      ; 00
108E:          : nop                      ; 00
108F:          : nop                      ; 00
1090:          : nop                      ; 00
1091:          : nop                      ; 00
1092:          : nop                      ; 00
1093:          : nop                      ; 00
1094:          : nop                      ; 00
1095:          : nop                      ; 00
1096:          : nop                      ; 00
1097:          : nop                      ; 00
1098:          : nop                      ; 00
1099:          : nop                      ; 00
109A:          : nop                      ; 00
109B:          : nop                      ; 00
109C:          : nop                      ; 00
109D:          : nop                      ; 00
109E:          : nop                      ; 00
109F:          : nop                      ; 00
10A0:          : nop                      ; 00
10A1:          : nop                      ; 00
10A2:          : nop                      ; 00
10A3:          : nop                      ; 00
10A4:          : nop                      ; 00
10A5:          : nop                      ; 00
10A6:          : nop                      ; 00
10A7:          : nop                      ; 00
10A8:          : nop                      ; 00
10A9:          : nop                      ; 00
10AA:          : nop                      ; 00
10AB:          : nop                      ; 00
10AC:          : nop                      ; 00
10AD:          : nop                      ; 00
10AE:          : nop                      ; 00
10AF:          : nop                      ; 00
10B0:          : nop                      ; 00
10B1:          : nop                      ; 00
10B2:          : nop                      ; 00
10B3:          : nop                      ; 00
10B4:          : nop                      ; 00
10B5:          : nop                      ; 00
10B6:          : nop                      ; 00
10B7:          : nop                      ; 00
10B8:          : nop                      ; 00
10B9:          : nop                      ; 00
10BA:          : nop                      ; 00
10BB:          : nop                      ; 00
10BC:          : nop                      ; 00
10BD:          : nop                      ; 00
10BE:          : nop                      ; 00
10BF:          : nop                      ; 00
10C0:          : nop                      ; 00
10C1:          : nop                      ; 00
10C2:          : nop                      ; 00
10C3:          : nop                      ; 00
10C4:          : nop                      ; 00
10C5:          : nop                      ; 00
10C6:          : nop                      ; 00
10C7:          : nop                      ; 00
10C8:          : nop                      ; 00
10C9:          : nop                      ; 00
10CA:          : nop                      ; 00
10CB:          : nop                      ; 00
10CC:          : nop                      ; 00
10CD:          : nop                      ; 00
10CE:          : nop                      ; 00
10CF:          : nop                      ; 00
10D0:          : nop                      ; 00
10D1:          : nop                      ; 00
10D2:          : nop                      ; 00
10D3:          : nop                      ; 00
10D4:          : nop                      ; 00
10D5:          : nop                      ; 00
10D6:          : nop                      ; 00
10D7:          : nop                      ; 00
10D8:          : nop                      ; 00
10D9:          : nop                      ; 00
10DA:          : nop                      ; 00
10DB:          : nop                      ; 00
10DC:          : nop                      ; 00
10DD:          : nop                      ; 00
10DE:          : nop                      ; 00
10DF:          : nop                      ; 00
10E0:          : nop                      ; 00
10E1:          : nop                      ; 00
10E2:          : nop                      ; 00
10E3:          : nop                      ; 00
10E4:          : nop                      ; 00
10E5:          : nop                      ; 00
10E6:          : nop                      ; 00
10E7:          : nop                      ; 00
10E8:          : nop                      ; 00
10E9:          : nop                      ; 00
10EA:          : nop                      ; 00
10EB:          : nop                      ; 00
10EC:          : nop                      ; 00
10ED:          : nop                      ; 00
10EE:          : nop                      ; 00
10EF:          : nop                      ; 00
10F0:          : nop                      ; 00
10F1:          : nop                      ; 00
10F2:          : nop                      ; 00
10F3:          : nop                      ; 00
10F4:          : nop                      ; 00
10F5:          : nop                      ; 00
10F6:          : nop                      ; 00
10F7:          : nop                      ; 00
10F8:          : nop                      ; 00
10F9:          : nop                      ; 00
10FA:          : nop                      ; 00
10FB:          : nop                      ; 00
10FC:          : nop                      ; 00
10FD:          : nop                      ; 00
10FE:          : nop                      ; 00
10FF:          : nop                      ; 00
1100:          : nop                      ; 00
1101:          : nop                      ; 00
1102:          : nop                      ; 00
1103:          : nop                      ; 00
1104:          : nop                      ; 00
1105:          : nop                      ; 00
1106:          : nop                      ; 00
1107:          : nop                      ; 00
1108:          : nop                      ; 00
1109:          : nop                      ; 00
110A:          : nop                      ; 00
110B:          : nop                      ; 00
110C:          : nop                      ; 00
110D:          : nop                      ; 00
110E:          : nop                      ; 00
110F:          : nop                      ; 00
1110:          : nop                      ; 00
1111:          : nop                      ; 00
1112:          : nop                      ; 00
1113:          : nop                      ; 00
1114:          : nop                      ; 00
1115:          : nop                      ; 00
1116:          : nop                      ; 00
1117:          : nop                      ; 00
1118:          : nop                      ; 00
1119:          : nop                      ; 00
111A:          : nop                      ; 00
111B:          : nop                      ; 00
111C:          : nop                      ; 00
111D:          : nop                      ; 00
111E:          : nop                      ; 00
111F:          : nop                      ; 00
1120:          : nop                      ; 00
1121:          : nop                      ; 00
1122:          : nop                      ; 00
1123:          : nop                      ; 00
1124:          : nop                      ; 00
1125:          : nop                      ; 00
1126:          : nop                      ; 00
1127:          : nop                      ; 00
1128:          : nop                      ; 00
1129:          : nop                      ; 00
112A:          : nop                      ; 00
112B:          : nop                      ; 00
112C:          : nop                      ; 00
112D:          : nop                      ; 00
112E:          : nop                      ; 00
112F:          : nop                      ; 00
1130:          : nop                      ; 00
1131:          : nop                      ; 00
1132:          : nop                      ; 00
1133:          : nop                      ; 00
1134:          : nop                      ; 00
1135:          : nop                      ; 00
1136:          : nop                      ; 00
1137:          : nop                      ; 00
1138:          : nop                      ; 00
1139:          : nop                      ; 00
113A:          : nop                      ; 00
113B:          : nop                      ; 00
113C:          : nop                      ; 00
113D:          : nop                      ; 00
113E:          : nop                      ; 00
113F:          : nop                      ; 00
1140:          : nop                      ; 00
1141:          : nop                      ; 00
1142:          : nop                      ; 00
1143:          : nop                      ; 00
1144:          : nop                      ; 00
1145:          : nop                      ; 00
1146:          : nop                      ; 00
1147:          : nop                      ; 00
1148:          : nop                      ; 00
1149:          : nop                      ; 00
114A:          : nop                      ; 00
114B:          : nop                      ; 00
114C:          : nop                      ; 00
114D:          : nop                      ; 00
114E:          : nop                      ; 00
114F:          : nop                      ; 00
1150:          : nop                      ; 00
1151:          : nop                      ; 00
1152:          : nop                      ; 00
1153:          : nop                      ; 00
1154:          : nop                      ; 00
1155:          : nop                      ; 00
1156:          : nop                      ; 00
1157:          : nop                      ; 00
1158:          : nop                      ; 00
1159:          : nop                      ; 00
115A:          : nop                      ; 00
115B:          : nop                      ; 00
115C:          : nop                      ; 00
115D:          : nop                      ; 00
115E:          : nop                      ; 00
115F:          : nop                      ; 00
1160:          : nop                      ; 00
1161:          : nop                      ; 00
1162:          : nop                      ; 00
1163:          : nop                      ; 00
1164:          : nop                      ; 00
1165:          : nop                      ; 00
1166:          : nop                      ; 00
1167:          : nop                      ; 00
1168:          : nop                      ; 00
1169:          : nop                      ; 00
116A:          : nop                      ; 00
116B:          : nop                      ; 00
116C:          : nop                      ; 00
116D:          : nop                      ; 00
116E:          : nop                      ; 00
116F:          : nop                      ; 00
1170:          : nop                      ; 00
1171:          : nop                      ; 00
1172:          : nop                      ; 00
1173:          : nop                      ; 00
1174:          : nop                      ; 00
1175:          : nop                      ; 00
1176:          : nop                      ; 00
1177:          : nop                      ; 00
1178:          : nop                      ; 00
1179:          : nop                      ; 00
117A:          : nop                      ; 00
117B:          : nop                      ; 00
117C:          : nop                      ; 00
117D:          : nop                      ; 00
117E:          : nop                      ; 00
117F:          : nop                      ; 00
1180:          : nop                      ; 00
1181:          : nop                      ; 00
1182:          : nop                      ; 00
1183:          : nop                      ; 00
1184:          : nop                      ; 00
1185:          : nop                      ; 00
1186:          : nop                      ; 00
1187:          : nop                      ; 00
1188:          : nop                      ; 00
1189:          : nop                      ; 00
118A:          : nop                      ; 00
118B:          : nop                      ; 00
118C:          : nop                      ; 00
118D:          : nop                      ; 00
118E:          : nop                      ; 00
118F:          : nop                      ; 00
1190:          : nop                      ; 00
1191:          : nop                      ; 00
1192:          : nop                      ; 00
1193:          : nop                      ; 00
1194:          : nop                      ; 00
1195:          : nop                      ; 00
1196:          : nop                      ; 00
1197:          : nop                      ; 00
1198:          : nop                      ; 00
1199:          : nop                      ; 00
119A:          : nop                      ; 00
119B:          : nop                      ; 00
119C:          : nop                      ; 00
119D:          : nop                      ; 00
119E:          : nop                      ; 00
119F:          : nop                      ; 00
11A0:          : nop                      ; 00
11A1:          : nop                      ; 00
11A2:          : nop                      ; 00
11A3:          : nop                      ; 00
11A4:          : nop                      ; 00
11A5:          : nop                      ; 00
11A6:          : nop                      ; 00
11A7:          : nop                      ; 00
11A8:          : nop                      ; 00
11A9:          : nop                      ; 00
11AA:          : nop                      ; 00
11AB:          : nop                      ; 00
11AC:          : nop                      ; 00
11AD:          : nop                      ; 00
11AE:          : nop                      ; 00
11AF:          : nop                      ; 00
11B0:          : nop                      ; 00
11B1:          : nop                      ; 00
11B2:          : nop                      ; 00
11B3:          : nop                      ; 00
11B4:          : nop                      ; 00
11B5:          : nop                      ; 00
11B6:          : nop                      ; 00
11B7:          : nop                      ; 00
11B8:          : nop                      ; 00
11B9:          : nop                      ; 00
11BA:          : nop                      ; 00
11BB:          : nop                      ; 00
11BC:          : nop                      ; 00
11BD:          : nop                      ; 00
11BE:          : nop                      ; 00
11BF:          : nop                      ; 00
11C0:          : nop                      ; 00
11C1:          : nop                      ; 00
11C2:          : nop                      ; 00
11C3:          : nop                      ; 00
11C4:          : nop                      ; 00
11C5:          : nop                      ; 00
11C6:          : nop                      ; 00
11C7:          : nop                      ; 00
11C8:          : nop                      ; 00
11C9:          : nop                      ; 00
11CA:          : nop                      ; 00
11CB:          : nop                      ; 00
11CC:          : nop                      ; 00
11CD:          : nop                      ; 00
11CE:          : nop                      ; 00
11CF:          : nop                      ; 00
11D0:          : nop                      ; 00
11D1:          : nop                      ; 00
11D2:          : nop                      ; 00
11D3:          : nop                      ; 00
11D4:          : nop                      ; 00
11D5:          : nop                      ; 00
11D6:          : nop                      ; 00
11D7:          : nop                      ; 00
11D8:          : nop                      ; 00
11D9:          : nop                      ; 00
11DA:          : nop                      ; 00
11DB:          : nop                      ; 00
11DC:          : nop                      ; 00
11DD:          : nop                      ; 00
11DE:          : nop                      ; 00
11DF:          : nop                      ; 00
11E0:          : nop                      ; 00
11E1:          : nop                      ; 00
11E2:          : nop                      ; 00
11E3:          : nop                      ; 00
11E4:          : nop                      ; 00
11E5:          : nop                      ; 00
11E6:          : nop                      ; 00
11E7:          : nop                      ; 00
11E8:          : nop                      ; 00
11E9:          : nop                      ; 00
11EA:          : nop                      ; 00
11EB:          : nop                      ; 00
11EC:          : nop                      ; 00
11ED:          : nop                      ; 00
11EE:          : nop                      ; 00
11EF:          : nop                      ; 00
11F0:          : nop                      ; 00
11F1:          : nop                      ; 00
11F2:          : nop                      ; 00
11F3:          : nop                      ; 00
11F4:          : nop                      ; 00
11F5:          : nop                      ; 00
11F6:          : nop                      ; 00
11F7:          : nop                      ; 00
11F8:          : nop                      ; 00
11F9:          : nop                      ; 00
11FA:          : nop                      ; 00
11FB:          : nop                      ; 00
11FC:          : nop                      ; 00
11FD:          : nop                      ; 00
11FE:          : nop                      ; 00
11FF:          : nop                      ; 00
1200:          : nop                      ; 00
1201:          : nop                      ; 00
1202:          : nop                      ; 00
1203:          : nop                      ; 00
1204:          : nop                      ; 00
1205:          : nop                      ; 00
1206:          : nop                      ; 00
1207:          : nop                      ; 00
1208:          : nop                      ; 00
1209:          : nop                      ; 00
120A:          : nop                      ; 00
120B:          : nop                      ; 00
120C:          : nop                      ; 00
120D:          : nop                      ; 00
120E:          : nop                      ; 00
120F:          : nop                      ; 00
1210:          : nop                      ; 00
1211:          : nop                      ; 00
1212:          : nop                      ; 00
1213:          : nop                      ; 00
1214:          : nop                      ; 00
1215:          : nop                      ; 00
1216:          : nop                      ; 00
1217:          : nop                      ; 00
1218:          : nop                      ; 00
1219:          : nop                      ; 00
121A:          : nop                      ; 00
121B:          : nop                      ; 00
121C:          : nop                      ; 00
121D:          : nop                      ; 00
121E:          : nop                      ; 00
121F:          : nop                      ; 00
1220:          : nop                      ; 00
1221:          : nop                      ; 00
1222:          : nop                      ; 00
1223:          : nop                      ; 00
1224:          : nop                      ; 00
1225:          : nop                      ; 00
1226:          : nop                      ; 00
1227:          : nop                      ; 00
1228:          : nop                      ; 00
1229:          : nop                      ; 00
122A:          : nop                      ; 00
122B:          : nop                      ; 00
122C:          : nop                      ; 00
122D:          : nop                      ; 00
122E:          : nop                      ; 00
122F:          : nop                      ; 00
1230:          : nop                      ; 00
1231:          : nop                      ; 00
1232:          : nop                      ; 00
1233:          : nop                      ; 00
1234:          : nop                      ; 00
1235:          : nop                      ; 00
1236:          : nop                      ; 00
1237:          : nop                      ; 00
1238:          : nop                      ; 00
1239:          : nop                      ; 00
123A:          : nop                      ; 00
123B:          : nop                      ; 00
123C:          : nop                      ; 00
123D:          : nop                      ; 00
123E:          : nop                      ; 00
123F:          : nop                      ; 00
1240:          : nop                      ; 00
1241:          : nop                      ; 00
1242:          : nop                      ; 00
1243:          : nop                      ; 00
1244:          : nop                      ; 00
1245:          : nop                      ; 00
1246:          : nop                      ; 00
1247:          : nop                      ; 00
1248:          : nop                      ; 00
1249:          : nop                      ; 00
124A:          : nop                      ; 00
124B:          : nop                      ; 00
124C:          : nop                      ; 00
124D:          : nop                      ; 00
124E:          : nop                      ; 00
124F:          : nop                      ; 00
1250:          : nop                      ; 00
1251:          : nop                      ; 00
1252:          : nop                      ; 00
1253:          : nop                      ; 00
1254:          : nop                      ; 00
1255:          : nop                      ; 00
1256:          : nop                      ; 00
1257:          : nop                      ; 00
1258:          : nop                      ; 00
1259:          : nop                      ; 00
125A:          : nop                      ; 00
125B:          : nop                      ; 00
125C:          : nop                      ; 00
125D:          : nop                      ; 00
125E:          : nop                      ; 00
125F:          : nop                      ; 00
1260:          : nop                      ; 00
1261:          : nop                      ; 00
1262:          : nop                      ; 00
1263:          : nop                      ; 00
1264:          : nop                      ; 00
1265:          : nop                      ; 00
1266:          : nop                      ; 00
1267:          : nop                      ; 00
1268:          : nop                      ; 00
1269:          : nop                      ; 00
126A:          : nop                      ; 00
126B:          : nop                      ; 00
126C:          : nop                      ; 00
126D:          : nop                      ; 00
126E:          : nop                      ; 00
126F:          : nop                      ; 00
1270:          : nop                      ; 00
1271:          : nop                      ; 00
1272:          : nop                      ; 00
1273:          : nop                      ; 00
1274:          : nop                      ; 00
1275:          : nop                      ; 00
1276:          : nop                      ; 00
1277:          : nop                      ; 00
1278:          : nop                      ; 00
1279:          : nop                      ; 00
127A:          : nop                      ; 00
127B:          : nop                      ; 00
127C:          : nop                      ; 00
127D:          : nop                      ; 00
127E:          : nop                      ; 00
127F:          : nop                      ; 00
1280:          : nop                      ; 00
1281:          : nop                      ; 00
1282:          : nop                      ; 00
1283:          : nop                      ; 00
1284:          : nop                      ; 00
1285:          : nop                      ; 00
1286:          : nop                      ; 00
1287:          : nop                      ; 00
1288:          : nop                      ; 00
1289:          : nop                      ; 00
128A:          : nop                      ; 00
128B:          : nop                      ; 00
128C:          : nop                      ; 00
128D:          : nop                      ; 00
128E:          : nop                      ; 00
128F:          : nop                      ; 00
1290:          : nop                      ; 00
1291:          : nop                      ; 00
1292:          : nop                      ; 00
1293:          : nop                      ; 00
1294:          : nop                      ; 00
1295:          : nop                      ; 00
1296:          : nop                      ; 00
1297:          : nop                      ; 00
1298:          : nop                      ; 00
1299:          : nop                      ; 00
129A:          : nop                      ; 00
129B:          : nop                      ; 00
129C:          : nop                      ; 00
129D:          : nop                      ; 00
129E:          : nop                      ; 00
129F:          : nop                      ; 00
12A0:          : nop                      ; 00
12A1:          : nop                      ; 00
12A2:          : nop                      ; 00
12A3:          : nop                      ; 00
12A4:          : nop                      ; 00
12A5:          : nop                      ; 00
12A6:          : nop                      ; 00
12A7:          : nop                      ; 00
12A8:          : nop                      ; 00
12A9:          : nop                      ; 00
12AA:          : nop                      ; 00
12AB:          : nop                      ; 00
12AC:          : nop                      ; 00
12AD:          : nop                      ; 00
12AE:          : nop                      ; 00
12AF:          : nop                      ; 00
12B0:          : nop                      ; 00
12B1:          : nop                      ; 00
12B2:          : nop                      ; 00
12B3:          : nop                      ; 00
12B4:          : nop                      ; 00
12B5:          : nop                      ; 00
12B6:          : nop                      ; 00
12B7:          : nop                      ; 00
12B8:          : nop                      ; 00
12B9:          : nop                      ; 00
12BA:          : nop                      ; 00
12BB:          : nop                      ; 00
12BC:          : nop                      ; 00
12BD:          : nop                      ; 00
12BE:          : nop                      ; 00
12BF:          : nop                      ; 00
12C0:          : nop                      ; 00
12C1:          : nop                      ; 00
12C2:          : nop                      ; 00
12C3:          : nop                      ; 00
12C4:          : nop                      ; 00
12C5:          : nop                      ; 00
12C6:          : nop                      ; 00
12C7:          : nop                      ; 00
12C8:          : nop                      ; 00
12C9:          : nop                      ; 00
12CA:          : nop                      ; 00
12CB:          : nop                      ; 00
12CC:          : nop                      ; 00
12CD:          : nop                      ; 00
12CE:          : nop                      ; 00
12CF:          : nop                      ; 00
12D0:          : nop                      ; 00
12D1:          : nop                      ; 00
12D2:          : nop                      ; 00
12D3:          : nop                      ; 00
12D4:          : nop                      ; 00
12D5:          : nop                      ; 00
12D6:          : nop                      ; 00
12D7:          : nop                      ; 00
12D8:          : nop                      ; 00
12D9:          : nop                      ; 00
12DA:          : nop                      ; 00
12DB:          : nop                      ; 00
12DC:          : nop                      ; 00
12DD:          : nop                      ; 00
12DE:          : nop                      ; 00
12DF:          : nop                      ; 00
12E0:          : nop                      ; 00
12E1:          : nop                      ; 00
12E2:          : nop                      ; 00
12E3:          : nop                      ; 00
12E4:          : nop                      ; 00
12E5:          : nop                      ; 00
12E6:          : nop                      ; 00
12E7:          : nop                      ; 00
12E8:          : nop                      ; 00
12E9:          : nop                      ; 00
12EA:          : nop                      ; 00
12EB:          : nop                      ; 00
12EC:          : nop                      ; 00
12ED:          : nop                      ; 00
12EE:          : nop                      ; 00
12EF:          : nop                      ; 00
12F0:          : nop                      ; 00
12F1:          : nop                      ; 00
12F2:          : nop                      ; 00
12F3:          : nop                      ; 00
12F4:          : nop                      ; 00
12F5:          : nop                      ; 00
12F6:          : nop                      ; 00
12F7:          : nop                      ; 00
12F8:          : nop                      ; 00
12F9:          : nop                      ; 00
12FA:          : nop                      ; 00
12FB:          : nop                      ; 00
12FC:          : nop                      ; 00
12FD:          : nop                      ; 00
12FE:          : nop                      ; 00
12FF:          : nop                      ; 00
1300:          : nop                      ; 00
1301:          : nop                      ; 00
1302:          : nop                      ; 00
1303:          : nop                      ; 00
1304:          : nop                      ; 00
1305:          : nop                      ; 00
1306:          : nop                      ; 00
1307:          : nop                      ; 00
1308:          : nop                      ; 00
1309:          : nop                      ; 00
130A:          : nop                      ; 00
130B:          : nop                      ; 00
130C:          : nop                      ; 00
130D:          : nop                      ; 00
130E:          : nop                      ; 00
130F:          : nop                      ; 00
1310:          : nop                      ; 00
1311:          : nop                      ; 00
1312:          : nop                      ; 00
1313:          : nop                      ; 00
1314:          : nop                      ; 00
1315:          : nop                      ; 00
1316:          : nop                      ; 00
1317:          : nop                      ; 00
1318:          : nop                      ; 00
1319:          : nop                      ; 00
131A:          : nop                      ; 00
131B:          : nop                      ; 00
131C:          : nop                      ; 00
131D:          : nop                      ; 00
131E:          : nop                      ; 00
131F:          : nop                      ; 00
1320:          : nop                      ; 00
1321:          : nop                      ; 00
1322:          : nop                      ; 00
1323:          : nop                      ; 00
1324:          : nop                      ; 00
1325:          : nop                      ; 00
1326:          : nop                      ; 00
1327:          : nop                      ; 00
1328:          : nop                      ; 00
1329:          : nop                      ; 00
132A:          : nop                      ; 00
132B:          : nop                      ; 00
132C:          : nop                      ; 00
132D:          : nop                      ; 00
132E:          : nop                      ; 00
132F:          : nop                      ; 00
1330:          : nop                      ; 00
1331:          : nop                      ; 00
1332:          : nop                      ; 00
1333:          : nop                      ; 00
1334:          : nop                      ; 00
1335:          : nop                      ; 00
1336:          : nop                      ; 00
1337:          : nop                      ; 00
1338:          : nop                      ; 00
1339:          : nop                      ; 00
133A:          : nop                      ; 00
133B:          : nop                      ; 00
133C:          : nop                      ; 00
133D:          : nop                      ; 00
133E:          : nop                      ; 00
133F:          : nop                      ; 00
1340:          : nop                      ; 00
1341:          : nop                      ; 00
1342:          : nop                      ; 00
1343:          : nop                      ; 00
1344:          : nop                      ; 00
1345:          : nop                      ; 00
1346:          : nop                      ; 00
1347:          : nop                      ; 00
1348:          : nop                      ; 00
1349:          : nop                      ; 00
134A:          : nop                      ; 00
134B:          : nop                      ; 00
134C:          : nop                      ; 00
134D:          : nop                      ; 00
134E:          : nop                      ; 00
134F:          : nop                      ; 00
1350:          : nop                      ; 00
1351:          : nop                      ; 00
1352:          : nop                      ; 00
1353:          : nop                      ; 00
1354:          : nop                      ; 00
1355:          : nop                      ; 00
1356:          : nop                      ; 00
1357:          : nop                      ; 00
1358:          : nop                      ; 00
1359:          : nop                      ; 00
135A:          : nop                      ; 00
135B:          : nop                      ; 00
135C:          : nop                      ; 00
135D:          : nop                      ; 00
135E:          : nop                      ; 00
135F:          : nop                      ; 00
1360:          : nop                      ; 00
1361:          : nop                      ; 00
1362:          : nop                      ; 00
1363:          : nop                      ; 00
1364:          : nop                      ; 00
1365:          : nop                      ; 00
1366:          : nop                      ; 00
1367:          : nop                      ; 00
1368:          : nop                      ; 00
1369:          : nop                      ; 00
136A:          : nop                      ; 00
136B:          : nop                      ; 00
136C:          : nop                      ; 00
136D:          : nop                      ; 00
136E:          : nop                      ; 00
136F:          : nop                      ; 00
1370:          : nop                      ; 00
1371:          : nop                      ; 00
1372:          : nop                      ; 00
1373:          : nop                      ; 00
1374:          : nop                      ; 00
1375:          : nop                      ; 00
1376:          : nop                      ; 00
1377:          : nop                      ; 00
1378:          : nop                      ; 00
1379:          : nop                      ; 00
137A:          : nop                      ; 00
137B:          : nop                      ; 00
137C:          : nop                      ; 00
137D:          : nop                      ; 00
137E:          : nop                      ; 00
137F:          : nop                      ; 00
1380:          : nop                      ; 00
1381:          : nop                      ; 00
1382:          : nop                      ; 00
1383:          : nop                      ; 00
1384:          : nop                      ; 00
1385:          : nop                      ; 00
1386:          : nop                      ; 00
1387:          : nop                      ; 00
1388:          : nop                      ; 00
1389:          : nop                      ; 00
138A:          : nop                      ; 00
138B:          : nop                      ; 00
138C:          : nop                      ; 00
138D:          : nop                      ; 00
138E:          : nop                      ; 00
138F:          : nop                      ; 00
1390:          : nop                      ; 00
1391:          : nop                      ; 00
1392:          : nop                      ; 00
1393:          : nop                      ; 00
1394:          : nop                      ; 00
1395:          : nop                      ; 00
1396:          : nop                      ; 00
1397:          : nop                      ; 00
1398:          : nop                      ; 00
1399:          : nop                      ; 00
139A:          : nop                      ; 00
139B:          : nop                      ; 00
139C:          : nop                      ; 00
139D:          : nop                      ; 00
139E:          : nop                      ; 00
139F:          : nop                      ; 00
13A0:          : nop                      ; 00
13A1:          : nop                      ; 00
13A2:          : nop                      ; 00
13A3:          : nop                      ; 00
13A4:          : nop                      ; 00
13A5:          : nop                      ; 00
13A6:          : nop                      ; 00
13A7:          : nop                      ; 00
13A8:          : nop                      ; 00
13A9:          : nop                      ; 00
13AA:          : nop                      ; 00
13AB:          : nop                      ; 00
13AC:          : nop                      ; 00
13AD:          : nop                      ; 00
13AE:          : nop                      ; 00
13AF:          : nop                      ; 00
13B0:          : nop                      ; 00
13B1:          : nop                      ; 00
13B2:          : nop                      ; 00
13B3:          : nop                      ; 00
13B4:          : nop                      ; 00
13B5:          : nop                      ; 00
13B6:          : nop                      ; 00
13B7:          : nop                      ; 00
13B8:          : nop                      ; 00
13B9:          : nop                      ; 00
13BA:          : nop                      ; 00
13BB:          : nop                      ; 00
13BC:          : nop                      ; 00
13BD:          : nop                      ; 00
13BE:          : nop                      ; 00
13BF:          : nop                      ; 00
13C0:          : nop                      ; 00
13C1:          : nop                      ; 00
13C2:          : nop                      ; 00
13C3:          : nop                      ; 00
13C4:          : nop                      ; 00
13C5:          : nop                      ; 00
13C6:          : nop                      ; 00
13C7:          : nop                      ; 00
13C8:          : nop                      ; 00
13C9:          : nop                      ; 00
13CA:          : nop                      ; 00
13CB:          : nop                      ; 00
13CC:          : nop                      ; 00
13CD:          : nop                      ; 00
13CE:          : nop                      ; 00
13CF:          : nop                      ; 00
13D0:          : nop                      ; 00
13D1:          : nop                      ; 00
13D2:          : nop                      ; 00
13D3:          : nop                      ; 00
13D4:          : nop                      ; 00
13D5:          : nop                      ; 00
13D6:          : nop                      ; 00
13D7:          : nop                      ; 00
13D8:          : nop                      ; 00
13D9:          : nop                      ; 00
13DA:          : nop                      ; 00
13DB:          : nop                      ; 00
13DC:          : nop                      ; 00
13DD:          : nop                      ; 00
13DE:          : nop                      ; 00
13DF:          : nop                      ; 00
13E0:          : set a, $09               ; 41 09
13E2: LBL_5090 : set i, $0400             ; 42 00 04
13E5:          : set j, $8000             ; 43 00 80
13E8: LBL_5096 : dec a                    ; 77
13E9:          : push a                   ; 05
13EA:          : set a, $FF               ; 41 FF
13EC: LBL_5100 : dec a                    ; 77
13ED:          : push a                   ; 05
13EE:          : load a, j                ; 16
13EF:          : store i, a               ; 20
13F0:          : pop a                    ; 0F
13F1:          : inc i                    ; 75
13F2:          : inc j                    ; 76
13F3:          : cmp a                    ; 82
13F4:          : rjmp.nz $F8              ; CC F8     LBL_5100 $13EC
13F6:          : pop a                    ; 0F
13F7:          : cmp a                    ; 82
13F8:          : rjmp.nz $F0              ; CC F0     LBL_5096 $13E8
13FA:          : jmpt $0400, a            ; BF 00 04
13FD:          : nop                      ; 00
13FE:          : rjmp $E4                 ; BE E4     LBL_5090 $13E2
