0400:          : roffset $0E07            ; EE 07 0E
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
041A:          : pop i                    ; 10
041B:          : pop a                    ; 0F
041C:          : pop j                    ; 11
041D: LBL_1053 : store i, a               ; 20
041E:          : inc i                    ; 77
041F:          : dec j                    ; 7F
0420:          : rjmp.nz $FD              ; DD FD     LBL_1053 $041D
0422:          : return                   ; 34
0423:          : cmpi x, $28              ; 89 28(()
0425:          : rjmp.gt $1E              ; D7 1E     LBL_1091 $0443
0427:          : cmpi y, $20              ; 8A 20
0429:          : rjmp.gt $1A              ; D7 1A     LBL_1091 $0443
042B:          : cmpi a, $20              ; 8D 20
042D:          : rjmp.lt $16              ; D9 16     LBL_1091 $0443
042F:          : cmpi a, $7F              ; 8D 7F()
0431:          : rjmp.gt $12              ; D7 12     LBL_1091 $0443
0433:          : set j, $0000             ; 43 00 00
0436:          : add j, y                 ; 4E
0437:          : mul j, $0028             ; 66 28 00
043A:          : add j, x                 ; 4D
043B:          : add j, $8000             ; 50 00 80
043E:          : store j, a               ; 23
043F:          : set a, $01               ; 41 01
0441:          : rjmp $04                 ; D1 04     LBL_1093 $0445
0443: LBL_1091 : set a, $00               ; 41 00
0445: LBL_1093 : return                   ; 34
0446: LBL_1094 : load a, j                ; 16
0447:          : cmp a                    ; 84
0448:          : rjmp.z $2F               ; DB 2F(/)  LBL_1143 $0477
044A:          : push z                   ; 03
044B:          : push w                   ; 04
044C:          : cmpi x, $28              ; 89 28(()
044E:          : rjmp.gt $1E              ; D7 1E     LBL_1132 $046C
0450:          : cmpi y, $20              ; 8A 20
0452:          : rjmp.gt $1A              ; D7 1A     LBL_1132 $046C
0454:          : cmpi a, $20              ; 8D 20
0456:          : rjmp.lt $16              ; D9 16     LBL_1132 $046C
0458:          : cmpi a, $7F              ; 8D 7F()
045A:          : rjmp.gt $12              ; D7 12     LBL_1132 $046C
045C:          : set j, $0000             ; 43 00 00
045F:          : add j, y                 ; 4E
0460:          : mul j, $0028             ; 66 28 00
0463:          : add j, x                 ; 4D
0464:          : add j, $8000             ; 50 00 80
0467:          : store j, a               ; 23
0468:          : set a, $01               ; 41 01
046A:          : rjmp $04                 ; D1 04     LBL_1134 $046E
046C: LBL_1132 : set a, $00               ; 41 00
046E: LBL_1134 : pop w                    ; 0E
046F:          : pop z                    ; 0D
0470:          : cmp a                    ; 84
0471:          : rjmp.z $06               ; DB 06     LBL_1143 $0477
0473:          : inc j                    ; 78
0474:          : inc x                    ; 72
0475:          : rjmp $D1                 ; D1 D1     LBL_1094 $0446
0477: LBL_1143 : return                   ; 34
0478: FUN_1144 : cmpi a, $0A              ; 8D 0A
047A:          : rjmp.lt $0B              ; D9 0B     LBL_1157 $0485
047C:          : cmpi a, $64              ; 8D 64(d)
047E:          : rjmp.lt $06              ; D9 06     LBL_1156 $0484
0480:          : inc x                    ; 72
0481:          : inc x                    ; 72
0482:          : rjmp $03                 ; D1 03     LBL_1157 $0485
0484: LBL_1156 : inc x                    ; 72
0485: LBL_1157 : cpy z, a                 ; 3B
0486:          : mod a, $0A               ; 6D 0A
0488:          : add a, $30               ; 55 30(0)
048A:          : push z                   ; 03
048B:          : cmpi x, $28              ; 89 28(()
048D:          : rjmp.gt $1E              ; D7 1E     LBL_1195 $04AB
048F:          : cmpi y, $20              ; 8A 20
0491:          : rjmp.gt $1A              ; D7 1A     LBL_1195 $04AB
0493:          : cmpi a, $20              ; 8D 20
0495:          : rjmp.lt $16              ; D9 16     LBL_1195 $04AB
0497:          : cmpi a, $7F              ; 8D 7F()
0499:          : rjmp.gt $12              ; D7 12     LBL_1195 $04AB
049B:          : set j, $0000             ; 43 00 00
049E:          : add j, y                 ; 4E
049F:          : mul j, $0028             ; 66 28 00
04A2:          : add j, x                 ; 4D
04A3:          : add j, $8000             ; 50 00 80
04A6:          : store j, a               ; 23
04A7:          : set a, $01               ; 41 01
04A9:          : rjmp $04                 ; D1 04     LBL_1197 $04AD
04AB: LBL_1195 : set a, $00               ; 41 00
04AD: LBL_1197 : pop z                    ; 0D
04AE:          : dec x                    ; 79
04AF:          : cpy a, z                 ; 37
04B0:          : div a, $0A               ; 68 0A
04B2:          : cmp a                    ; 84
04B3:          : rjmp.z $04               ; DB 04     LBL_1207 $04B7
04B5:          : rjmp $D0                 ; D1 D0     LBL_1157 $0485
04B7: LBL_1207 : return                   ; 34
04B8:          : set i, $8000             ; 42 00 80
04BB:          : set j, $2800             ; 43 00 28
04BE:          : set a, $20               ; 41 20
04C0:          : call $041D               ; 2D 1D 04  LBL_1053 $041D
04C3:          : return                   ; 34
04C4:          : nop                      ; 00
04C5:          : nop                      ; 00
04C6:          : nop                      ; 00
04C7:          : nop                      ; 00
04C8:          : nop                      ; 00
04C9:          : nop                      ; 00
04CA:          : nop                      ; 00
04CB:          : nop                      ; 00
04CC:          : cmp a, x                 ; 80
04CD:          : cpy z, a                 ; 3B
04CE:          : set z, $42               ; 3F 42(B)
04D0:          : nop                      ; FF
04D1:          : not w                    ; AA
04D2:          : jmp $0000, x             ; CC 00 00  ERROR $0000
04D5:          : nop                      ; 00
04D6: FUN_1238 : set i, $0507             ; 42 07 05
04D9:          : store $0000, i           ; 2B 00 00
04DC:          : set i, $050A             ; 42 0A 05
04DF:          : store $0002, i           ; 2B 02 00
04E2:          : set i, $0572             ; 42 72 05
04E5:          : store $0004, i           ; 2B 04 00
04E8:          : set i, $05DC             ; 42 DC 05
04EB:          : store $0006, i           ; 2B 06 00
04EE:          : set i, $05E8             ; 42 E8 05
04F1:          : store $0008, i           ; 2B 08 00
04F4:          : set i, $05F1             ; 42 F1 05
04F7:          : store $000A, i           ; 2B 0A 00
04FA:          : set i, $05F1             ; 42 F1 05
04FD:          : store $000C, i           ; 2B 0C 00
0500:          : set i, $05EA             ; 42 EA 05
0503:          : store $000E, i           ; 2B 0E 00
0506:          : return                   ; 34
0507:          : jmp $086D                ; C9 6D 08  LBL_2157 $086D
050A:          : load a, $002C            ; 1D 2C 00
050D:          : cpy x, a                 ; 39
050E:          : cmpi a, $E8              ; 8D E8
0510:          : jmp.gt $053D             ; D6 3D 05  LBL_1341 $053D
0513:          : jmp.eq $055C             ; D2 5C 05  LBL_1372 $055C
0516:          : not x                    ; A7
0517:          : and x, $E0               ; 99 E0
0519:          : shr x, $02               ; BA 02
051B:          : load a, $04CE            ; 1D CE 04
051E:          : add a, x                 ; 44
051F:          : store $001E, a           ; 2A 1E 00
0522:          : neg a                    ; 71
0523:          : store $0021, a           ; 2A 21 00
0526:          : load a, $04CF            ; 1D CF 04
0529:          : add a, x                 ; 44
052A:          : store $001F, a           ; 2A 1F 00
052D:          : neg a                    ; 71
052E:          : store $0022, a           ; 2A 22 00
0531:          : load a, $04D0            ; 1D D0 04
0534:          : add a, x                 ; 44
0535:          : store $0020, a           ; 2A 20 00
0538:          : neg a                    ; 71
0539:          : store $0023, a           ; 2A 23 00
053C:          : resume                   ; EA
053D: LBL_1341 : set a, $3B               ; 41 3B(;)
053F:          : store $001D, a           ; 2A 1D 00
0542:          : set a, $3F               ; 41 3F(?)
0544:          : store $001E, a           ; 2A 1E 00
0547:          : set a, $42               ; 41 42(B)
0549:          : store $001F, a           ; 2A 1F 00
054C:          : set a, $FE               ; 41 FE
054E:          : store $0020, a           ; 2A 20 00
0551:          : set a, $FE               ; 41 FE
0553:          : store $0021, a           ; 2A 21 00
0556:          : set a, $FE               ; 41 FE
0558:          : store $0022, a           ; 2A 22 00
055B:          : resume                   ; EA
055C: LBL_1372 : set a, $00               ; 41 00
055E:          : store $001D, a           ; 2A 1D 00
0561:          : store $001E, a           ; 2A 1E 00
0564:          : store $001F, a           ; 2A 1F 00
0567:          : store $0020, a           ; 2A 20 00
056A:          : store $0021, a           ; 2A 21 00
056D:          : store $0022, a           ; 2A 22 00
0570:          : resume                   ; EA
0571:          : resume                   ; EA
0572:          : load a, $04CD            ; 1D CD 04
0575:          : load x, $04D0            ; 19 D0 04
0578:          : cmp a, x                 ; 80
0579:          : jmp.lt $058A             ; D8 8A 05  LBL_1418 $058A
057C:          : jmp.gt $0591             ; D6 91 05  LBL_1425 $0591
057F:          : load a, $00E1            ; 1D E1 00
0582:          : mod a, $7F               ; 6D 7F()
0584:          : store $04D0, a           ; 2A D0 04
0587:          : jmp $0595                ; C9 95 05  LBL_1429 $0595
058A: LBL_1418 : inc a                    ; 76
058B:          : store $04CD, a           ; 2A CD 04
058E:          : jmp $0595                ; C9 95 05  LBL_1429 $0595
0591: LBL_1425 : dec a                    ; 7D
0592:          : store $04CD, a           ; 2A CD 04
0595: LBL_1429 : load a, $04CE            ; 1D CE 04
0598:          : load x, $04D1            ; 19 D1 04
059B:          : cmp a, x                 ; 80
059C:          : jmp.lt $05AD             ; D8 AD 05  LBL_1453 $05AD
059F:          : jmp.gt $05B4             ; D6 B4 05  LBL_1460 $05B4
05A2:          : load a, $00E1            ; 1D E1 00
05A5:          : mod a, $7F               ; 6D 7F()
05A7:          : store $04D1, a           ; 2A D1 04
05AA:          : jmp $05B8                ; C9 B8 05  LBL_1464 $05B8
05AD: LBL_1453 : inc a                    ; 76
05AE:          : store $04CE, a           ; 2A CE 04
05B1:          : jmp $05B8                ; C9 B8 05  LBL_1464 $05B8
05B4: LBL_1460 : dec a                    ; 7D
05B5:          : store $04CE, a           ; 2A CE 04
05B8: LBL_1464 : load a, $04CF            ; 1D CF 04
05BB:          : load x, $04D2            ; 19 D2 04
05BE:          : cmp a, x                 ; 80
05BF:          : jmp.lt $05D0             ; D8 D0 05  LBL_1488 $05D0
05C2:          : jmp.gt $05D7             ; D6 D7 05  LBL_1495 $05D7
05C5:          : load a, $00E1            ; 1D E1 00
05C8:          : mod a, $7F               ; 6D 7F()
05CA:          : store $04D2, a           ; 2A D2 04
05CD:          : jmp $05DB                ; C9 DB 05  LBL_1499 $05DB
05D0: LBL_1488 : inc a                    ; 76
05D1:          : store $04CF, a           ; 2A CF 04
05D4:          : jmp $05B8                ; C9 B8 05  LBL_1464 $05B8
05D7: LBL_1495 : dec a                    ; 7D
05D8:          : store $04CF, a           ; 2A CF 04
05DB: LBL_1499 : resume                   ; EA
05DC:          : load a, $0034            ; 1D 34 00
05DF:          : store $04C4, a           ; 2A C4 04
05E2:          : set a, $00               ; 41 00
05E4:          : store $0034, a           ; 2A 34 00
05E7:          : resume                   ; EA
05E8:          : nop                      ; 00
05E9:          : resume                   ; EA
05EA:          : nop                      ; 00
05EB:          : dbn $4C48                ; F2 48 4C
05EE:          : int $FF                  ; E9 FF
05F0:          : resume                   ; EA
05F1:          : dbn $4C44                ; F2 44 4C
05F4:          : nop                      ; 00
05F5:          : resume                   ; EA
05F6: FUN_1526 : set a, $44               ; 41 44(D)
05F8:          : store $84C1, a           ; 2A C1 84
05FB:          : set a, $58               ; 41 58(X)
05FD:          : store $84C2, a           ; 2A C2 84
0600:          : set a, $38               ; 41 38(8)
0602:          : store $84C3, a           ; 2A C3 84
0605:          : set a, $2F               ; 41 2F(/)
0607:          : store $84C5, a           ; 2A C5 84
060A:          : set a, $2F               ; 41 2F(/)
060C:          : store $84C6, a           ; 2A C6 84
060F:          : set a, $2F               ; 41 2F(/)
0611:          : store $84C7, a           ; 2A C7 84
0614:          : return                   ; 34
0615: FUN_1557 : load x, $002F            ; 19 2F 00
0618:          : cmpbit x, $40            ; 90 40(@)
061A:          : jmp.z $0620              ; DA 20 06  LBL_1568 $0620
061D:          : jmp $062E                ; C9 2E 06  LBL_1582 $062E
0620: LBL_1568 : set x, $20               ; 3D 20
0622:          : store $84C5, x           ; 26 C5 84
0625:          : store $84C6, x           ; 26 C6 84
0628:          : store $84C7, x           ; 26 C7 84
062B:          : jmp $0639                ; C9 39 06  LBL_1593 $0639
062E: LBL_1582 : set x, $2F               ; 3D 2F(/)
0630:          : store $84C5, x           ; 26 C5 84
0633:          : store $84C6, x           ; 26 C6 84
0636:          : store $84C7, x           ; 26 C7 84
0639: LBL_1593 : return                   ; 34
063A:          : sub a, x                 ; 56
063B:          : push i                   ; 06
063C:          : sub x, $06               ; 5D 06
063E:          : ror z                    ; C6
063F:          : push i                   ; 06
0640:          : pop z                    ; 0D
0641:          : push j                   ; 07
0642:          : cpy x, a                 ; 39
0643:          : push j                   ; 07
0644:          : add a, y                 ; 45
0645:          : push j                   ; 07
0646:          : add j, a                 ; 4C
0647:          : push j                   ; 07
0648:          : div i, $7107             ; 6A 07 71
064B:          : push j                   ; 07
064C:          : dec y                    ; 7A
064D:          : push j                   ; 07
064E:          : cmpi y, $07              ; 8A 07
0650:          : cmpbit y, $07            ; 91 07
0652:          : shl z, $07               ; B7 07
0654:          : shl w, $07               ; B8 07
0656:          : set a, $00               ; 41 00
0658:          : store $04C4, a           ; 2A C4 04
065B:          : nop                      ; 00
065C:          : return                   ; 34
065D:          : set a, $00               ; 41 00
065F:          : store $04C4, a           ; 2A C4 04
0662:          : set a, $01               ; 41 01
0664:          : store $04C5, a           ; 2A C5 04
0667:          : set a, $20               ; 41 20
0669:          : store $8269, a           ; 2A 69 82
066C:          : set a, $20               ; 41 20
066E:          : store $826A, a           ; 2A 6A 82
0671:          : set a, $20               ; 41 20
0673:          : store $826B, a           ; 2A 6B 82
0676:          : set a, $20               ; 41 20
0678:          : store $826C, a           ; 2A 6C 82
067B:          : set a, $20               ; 41 20
067D:          : store $826D, a           ; 2A 6D 82
0680:          : set a, $20               ; 41 20
0682:          : store $826E, a           ; 2A 6E 82
0685:          : set a, $20               ; 41 20
0687:          : store $8291, a           ; 2A 91 82
068A:          : set a, $20               ; 41 20
068C:          : store $8292, a           ; 2A 92 82
068F:          : set a, $20               ; 41 20
0691:          : store $8293, a           ; 2A 93 82
0694:          : set a, $20               ; 41 20
0696:          : store $8294, a           ; 2A 94 82
0699:          : set a, $20               ; 41 20
069B:          : store $8295, a           ; 2A 95 82
069E:          : set a, $20               ; 41 20
06A0:          : store $8296, a           ; 2A 96 82
06A3:          : set a, $00               ; 41 00
06A5:          : store $04C6, a           ; 2A C6 04
06A8:          : set i, $D400             ; 42 00 D4
06AB:          : store $04C7, i           ; 2B C7 04
06AE:          : set a, $FF               ; 41 FF
06B0:          : store $04C9, a           ; 2A C9 04
06B3:          : set a, $FF               ; 41 FF
06B5:          : store $0037, a           ; 2A 37 00
06B8:          : set i, $D400             ; 42 00 D4
06BB:          : store $0038, i           ; 2B 38 00
06BE:          : set a, $01               ; 41 01
06C0:          : store $003A, a           ; 2A 3A 00
06C3:          : int $D0                  ; E9 D0
06C5:          : return                   ; 34
06C6: FUN_1734 : set a, $00               ; 41 00
06C8:          : store $04C4, a           ; 2A C4 04
06CB:          : set a, $00               ; 41 00
06CD:          : store $04C5, a           ; 2A C5 04
06D0:          : set a, $49               ; 41 49(I)
06D2:          : store $8269, a           ; 2A 69 82
06D5:          : set a, $4E               ; 41 4E(N)
06D7:          : store $826A, a           ; 2A 6A 82
06DA:          : set a, $53               ; 41 53(S)
06DC:          : store $826B, a           ; 2A 6B 82
06DF:          : set a, $45               ; 41 45(E)
06E1:          : store $826C, a           ; 2A 6C 82
06E4:          : set a, $52               ; 41 52(R)
06E6:          : store $826D, a           ; 2A 6D 82
06E9:          : set a, $54               ; 41 54(T)
06EB:          : store $826E, a           ; 2A 6E 82
06EE:          : set a, $46               ; 41 46(F)
06F0:          : store $8291, a           ; 2A 91 82
06F3:          : set a, $4C               ; 41 4C(L)
06F5:          : store $8292, a           ; 2A 92 82
06F8:          : set a, $4F               ; 41 4F(O)
06FA:          : store $8293, a           ; 2A 93 82
06FD:          : set a, $50               ; 41 50(P)
06FF:          : store $8294, a           ; 2A 94 82
0702:          : set a, $50               ; 41 50(P)
0704:          : store $8295, a           ; 2A 95 82
0707:          : set a, $59               ; 41 59(Y)
0709:          : store $8296, a           ; 2A 96 82
070C:          : return                   ; 34
070D:          : load a, $00E1            ; 1D E1 00
0710:          : store $04CD, a           ; 2A CD 04
0713:          : load a, $00E1            ; 1D E1 00
0716:          : store $04CE, a           ; 2A CE 04
0719:          : load a, $00E1            ; 1D E1 00
071C:          : store $04CF, a           ; 2A CF 04
071F:          : load a, $0036            ; 1D 36 00
0722:          : set x, $02               ; 3D 02
0724:          : set y, $02               ; 3E 02
0726:          : call $0478               ; 2D 78 04  FUN_1144 $0478
0729:          : load a, $0037            ; 1D 37 00
072C:          : set x, $07               ; 3D 07
072E:          : set y, $02               ; 3E 02
0730:          : call $0478               ; 2D 78 04  FUN_1144 $0478
0733:          : set a, $00               ; 41 00
0735:          : store $04C4, a           ; 2A C4 04
0738:          : return                   ; 34
0739:          : set a, $00               ; 41 00
073B:          : store $04C4, a           ; 2A C4 04
073E:          : load a, $04C6            ; 1D C6 04
0741:          : bcall $064A, a           ; E4 4A 06
0744:          : return                   ; 34
0745:          : set a, $00               ; 41 00
0747:          : store $04C4, a           ; 2A C4 04
074A:          : nop                      ; 00
074B:          : return                   ; 34
074C:          : load a, $00E1            ; 1D E1 00
074F:          : mod a, $7F               ; 6D 7F()
0751:          : store $04CD, a           ; 2A CD 04
0754:          : load a, $00E1            ; 1D E1 00
0757:          : mod a, $7F               ; 6D 7F()
0759:          : store $04CE, a           ; 2A CE 04
075C:          : load a, $00E1            ; 1D E1 00
075F:          : mod a, $7F               ; 6D 7F()
0761:          : store $04CF, a           ; 2A CF 04
0764:          : set a, $00               ; 41 00
0766:          : store $04C4, a           ; 2A C4 04
0769:          : return                   ; 34
076A:          : set a, $00               ; 41 00
076C:          : store $04C4, a           ; 2A C4 04
076F:          : nop                      ; 00
0770:          : return                   ; 34
0771:          : set a, $01               ; 41 01
0773:          : store $04C6, a           ; 2A C6 04
0776:          : call $077E               ; 2D 7E 07  FUN_1918 $077E
0779:          : return                   ; 34
077A:          : call $077E               ; 2D 7E 07  FUN_1918 $077E
077D:          : return                   ; 34
077E: FUN_1918 : load i, $04C7            ; 1E C7 04
0781:          : load a, i                ; 13
0782:          : inc i                    ; 77
0783:          : store $04C7, i           ; 2B C7 04
0786:          : bcall $064E, a           ; E4 4E 06
0789:          : return                   ; 34
078A:          : nop                      ; 00
078B:          : set a, $03               ; 41 03
078D:          : store $04C6, a           ; 2A C6 04
0790:          : return                   ; 34
0791:          : load i, $04C7            ; 1E C7 04
0794:          : load z, i                ; 14
0795:          : inc i                    ; 77
0796:          : store $0038, z           ; 28 38 00
0799:          : load z, i                ; 14
079A:          : store $0039, z           ; 28 39 00
079D:          : load i, $04C7            ; 1E C7 04
07A0:          : inc i                    ; 77
07A1:          : inc i                    ; 77
07A2:          : store $04C7, i           ; 2B C7 04
07A5:          : load a, $04C9            ; 1D C9 04
07A8:          : inc a                    ; 76
07A9:          : store $04C9, a           ; 2A C9 04
07AC:          : store $0037, a           ; 2A 37 00
07AF:          : set a, $01               ; 41 01
07B1:          : store $003A, a           ; 2A 3A 00
07B4:          : int $D0                  ; E9 D0
07B6:          : return                   ; 34
07B7:          : return                   ; 34
07B8:          : set a, $03               ; 41 03
07BA:          : store $04C6, a           ; 2A C6 04
07BD:          : set i, $05F1             ; 42 F1 05
07C0:          : store $0002, i           ; 2B 02 00
07C3:          : set i, $05F1             ; 42 F1 05
07C6:          : store $0004, i           ; 2B 04 00
07C9:          : set i, $05F1             ; 42 F1 05
07CC:          : store $0006, i           ; 2B 06 00
07CF:          : set i, $05F1             ; 42 F1 05
07D2:          : store $0008, i           ; 2B 08 00
07D5:          : set i, $05EA             ; 42 EA 05
07D8:          : store $000E, i           ; 2B 0E 00
07DB:          : set i, $1400             ; 42 00 14
07DE:          : store $0000, i           ; 2B 00 00
07E1:          : dbn $5252                ; F2 52 52
07E4:          : int $FF                  ; E9 FF
07E6:          : return                   ; 34
07E7:          : load a, $04C4            ; 1D C4 04
07EA:          : bcall $063A, a           ; E4 3A 06
07ED:          : return                   ; 34
07EE:          : call $04D6               ; 2D D6 04  FUN_1238 $04D6
07F1:          : set a, $00               ; 41 00
07F3:          : store $0080, a           ; 2A 80 00
07F6:          : set a, $01               ; 41 01
07F8:          : store $0081, a           ; 2A 81 00
07FB:          : set a, $02               ; 41 02
07FD:          : store $0082, a           ; 2A 82 00
0800:          : set a, $03               ; 41 03
0802:          : store $0083, a           ; 2A 83 00
0805:          : set a, $04               ; 41 04
0807:          : store $0084, a           ; 2A 84 00
080A:          : set a, $05               ; 41 05
080C:          : store $0085, a           ; 2A 85 00
080F:          : set a, $06               ; 41 06
0811:          : store $0086, a           ; 2A 86 00
0814:          : set a, $07               ; 41 07
0816:          : store $0087, a           ; 2A 87 00
0819:          : set a, $08               ; 41 08
081B:          : store $0088, a           ; 2A 88 00
081E:          : set a, $35               ; 41 35(5)
0820:          : store $00B5, a           ; 2A B5 00
0823:          : set a, $46               ; 41 46(F)
0825:          : store $00A0, a           ; 2A A0 00
0828:          : set a, $47               ; 41 47(G)
082A:          : store $00A1, a           ; 2A A1 00
082D:          : set a, $48               ; 41 48(H)
082F:          : store $00A2, a           ; 2A A2 00
0832:          : set a, $49               ; 41 49(I)
0834:          : store $00A3, a           ; 2A A3 00
0837:          : set a, $4A               ; 41 4A(J)
0839:          : store $00A4, a           ; 2A A4 00
083C:          : set a, $4B               ; 41 4B(K)
083E:          : store $00A5, a           ; 2A A5 00
0841:          : set a, $4C               ; 41 4C(L)
0843:          : store $00A6, a           ; 2A A6 00
0846:          : set a, $4D               ; 41 4D(M)
0848:          : store $00A7, a           ; 2A A7 00
084B:          : set a, $4E               ; 41 4E(N)
084D:          : store $00A8, a           ; 2A A8 00
0850:          : set a, $4F               ; 41 4F(O)
0852:          : store $00A9, a           ; 2A A9 00
0855:          : set i, $08C3             ; 42 C3 08
0858:          : store $0030, i           ; 2B 30 00
085B:          : set a, $00               ; 41 00
085D:          : store $0019, a           ; 2A 19 00
0860:          : set a, $01               ; 41 01
0862:          : store $0018, a           ; 2A 18 00
0865:          : set a, $00               ; 41 00
0867:          : store $00E0, a           ; 2A E0 00
086A:          : rti                      ; F5
086B:          : int $FE                  ; E9 FE
086D: LBL_2157 : set i, $8000             ; 42 00 80
0870:          : set j, $2800             ; 43 00 28
0873:          : set a, $20               ; 41 20
0875:          : call $041D               ; 2D 1D 04  LBL_1053 $041D
0878:          : call $040F               ; 2D 0F 04  LBL_1039 $040F
087B:          : call $05F6               ; 2D F6 05  FUN_1526 $05F6
087E:          : call $06C6               ; 2D C6 06  FUN_1734 $06C6
0881:          : set i, $C000             ; 42 00 C0
0884:          : store $04D3, i           ; 2B D3 04
0887:          : set x, $00               ; 3D 00
0889:          : store $04D5, x           ; 26 D5 04
088C:          : set x, $0F               ; 3D 0F
088E:          : store $003E, x           ; 26 3E 00
0891:          : set x, $3C               ; 3D 3C(<)
0893:          : store $003F, x           ; 26 3F 00
0896:          : set a, $48               ; 41 48(H)
0898:          : store $8000, a           ; 2A 00 80
089B:          : set a, $69               ; 41 69(i)
089D:          : store $8001, a           ; 2A 01 80
08A0:          : set a, $52               ; 41 52(R)
08A2:          : store $8032, a           ; 2A 32 80
08A5:          : set a, $46               ; 41 46(F)
08A7:          : store $8015, a           ; 2A 15 80
08AA:          : set a, $4F               ; 41 4F(O)
08AC:          : store $8016, a           ; 2A 16 80
08AF:          : set a, $4F               ; 41 4F(O)
08B1:          : store $8017, a           ; 2A 17 80
08B4: LBL_2228 : call $0615               ; 2D 15 06  FUN_1557 $0615
08B7:          : load a, $04C4            ; 1D C4 04
08BA:          : cmpi a, $00              ; 8D 00
08BC:          : call.neq $07E7           ; 2F E7 07
08BF:          : jmp $08B4                ; C9 B4 08  LBL_2228 $08B4
08C2:          : nop                      ; 00
08C3:          : nop                      ; 00
08C4:          : load y, j                ; 18
08C5:          : mul j, $186C             ; 66 6C 18
08C8:          : add a, z                 ; 46
08C9:          : cpy a, w                 ; 38
08CA:          : load y, j                ; 18
08CB:          : call.gt $360C            ; 30 0C 36
08CE:          : nop                      ; 00
08CF:          : nop                      ; 00
08D0:          : nop                      ; 00
08D1:          : nop                      ; 00
08D2:          : set w, $3C               ; 40 3C(<)
08D4:          : load y, j                ; 18
08D5:          : cpy w, a                 ; 3C
08D6:          : cpy w, a                 ; 3C
08D7:          : cpy a, w                 ; 38
08D8:          : dec i                    ; 7E
08D9:          : cpy w, a                 ; 3C
08DA:          : dec i                    ; 7E
08DB:          : cpy w, a                 ; 3C
08DC:          : cpy w, a                 ; 3C
08DD:          : nop                      ; 00
08DE:          : nop                      ; 00
08DF:          : sub w, $00               ; 60 00
08E1:          : pop y                    ; 0C
08E2:          : cpy w, a                 ; 3C
08E3:          : cpy w, a                 ; 3C
08E4:          : cpy w, a                 ; 3C
08E5:          : set y, $3C               ; 3E 3C(<)
08E7:          : set y, $7E               ; 3E 7E(~)
08E9:          : dec i                    ; 7E
08EA:          : cpy w, a                 ; 3C
08EB:          : mul j, $603C             ; 66 3C 60
08EE:          : mul j, $6306             ; 66 06 63
08F1:          : mul j, $3E3C             ; 66 3C 3E
08F4:          : cpy w, a                 ; 3C
08F5:          : set y, $3C               ; 3E 3C(<)
08F7:          : dec i                    ; 7E
08F8:          : mul j, $6366             ; 66 66 63
08FB:          : mul j, $7E66             ; 66 66 7E
08FE:          : cpy w, a                 ; 3C
08FF:          : push y                   ; 02
0900:          : cpy w, a                 ; 3C
0901:          : pop i                    ; 10
0902:          : nop                      ; 00
0903:          : load y, j                ; 18
0904:          : nop                      ; 00
0905:          : push i                   ; 06
0906:          : nop                      ; 00
0907:          : sub w, $00               ; 60 00
0909:          : mod j, $0600             ; 70 00 06
090C:          : load y, j                ; 18
090D:          : sub w, $06               ; 60 06
090F:          : cpy a, w                 ; 38
0910:          : nop                      ; 00
0911:          : nop                      ; 00
0912:          : nop                      ; 00
0913:          : nop                      ; 00
0914:          : nop                      ; 00
0915:          : nop                      ; 00
0916:          : nop                      ; 00
0917:          : load y, j                ; 18
0918:          : nop                      ; 00
0919:          : nop                      ; 00
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
0924:          : load y, j                ; 18
0925:          : mul j, $7CFE             ; 66 FE 7C
0928:          : mul j, $186C             ; 66 6C 18
092B:          : load y, j                ; 18
092C:          : load y, j                ; 18
092D:          : load w, $0010            ; 1C 10 00
0930:          : nop                      ; 00
0931:          : nop                      ; 00
0932:          : sub w, $66               ; 60 66(f)
0934:          : load w, $6666            ; 1C 66 66
0937:          : cpy w, a                 ; 3C
0938:          : push i                   ; 06
0939:          : mul j, $6660             ; 66 60 66
093C:          : mul j, $1818             ; 66 18 18
093F:          : call.gt $1800            ; 30 00 18
0942:          : mul a, x                 ; 62
0943:          : set i, $6666             ; 42 66 66
0946:          : mul j, $0666             ; 66 66 06
0949:          : push i                   ; 06
094A:          : mul j, $1866             ; 66 66 18
094D:          : sub w, $36               ; 60 36(6)
094F:          : push i                   ; 06
0950:          : inc i                    ; 77
0951:          : mul j, $6666             ; 66 66 66
0954:          : mul j, $6666             ; 66 66 66
0957:          : load y, j                ; 18
0958:          : mul j, $6366             ; 66 66 63
095B:          : mul j, $6066             ; 66 66 60
095E:          : pop y                    ; 0C
095F:          : push i                   ; 06
0960:          : call.gt $0038            ; 30 38 00
0963:          : call.gt $0600            ; 30 00 06
0966:          : nop                      ; 00
0967:          : sub w, $00               ; 60 00
0969:          : load y, j                ; 18
096A:          : nop                      ; 00
096B:          : push i                   ; 06
096C:          : nop                      ; 00
096D:          : nop                      ; 00
096E:          : push i                   ; 06
096F:          : call.gt $0000            ; 30 00 00
0972:          : nop                      ; 00
0973:          : nop                      ; 00
0974:          : nop                      ; 00
0975:          : nop                      ; 00
0976:          : nop                      ; 00
0977:          : load y, j                ; 18
0978:          : nop                      ; 00
0979:          : nop                      ; 00
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
0984:          : load y, j                ; 18
0985:          : mul j, $066C             ; 66 6C 06
0988:          : call.gt $186C            ; 30 6C 18
098B:          : pop y                    ; 0C
098C:          : call.gt $107F            ; 30 7F 10
098F:          : nop                      ; 00
0990:          : nop                      ; 00
0991:          : nop                      ; 00
0992:          : call.gt $1866            ; 30 66 18
0995:          : sub w, $60               ; 60 60(`)
0997:          : cpy a, y                 ; 36
0998:          : set y, $06               ; 3E 06
099A:          : call.gt $6666            ; 30 66 66
099D:          : load y, j                ; 18
099E:          : load y, j                ; 18
099F:          : load y, j                ; 18
09A0:          : dec i                    ; 7E
09A1:          : call.gt $9960            ; 30 60 99
09A4:          : mul j, $0666             ; 66 66 06
09A7:          : mul j, $0606             ; 66 06 06
09AA:          : push i                   ; 06
09AB:          : mul j, $6018             ; 66 18 60
09AE:          : load i, $7F06            ; 1E 06 7F
09B1:          : mod i, j                 ; 6E
09B2:          : mul j, $6666             ; 66 66 66
09B5:          : mul j, $1806             ; 66 06 18
09B8:          : mul j, $6366             ; 66 66 63
09BB:          : cpy w, a                 ; 3C
09BC:          : mul j, $0C30             ; 66 30 0C
09BF:          : pop y                    ; 0C
09C0:          : call.gt $006C            ; 30 6C 00
09C3:          : nop                      ; 00
09C4:          : cpy w, a                 ; 3C
09C5:          : set y, $3C               ; 3E 3C(<)
09C7:          : dec w                    ; 7C
09C8:          : cpy w, a                 ; 3C
09C9:          : cpy w, a                 ; 3C
09CA:          : dec w                    ; 7C
09CB:          : set y, $1C               ; 3E 1C
09CD:          : mod j, $3066             ; 70 66 30
09D0:          : cpy a, z                 ; 37
09D1:          : set y, $3C               ; 3E 3C(<)
09D3:          : set y, $7C               ; 3E 7C(|)
09D5:          : inc a                    ; 76
09D6:          : dec w                    ; 7C
09D7:          : cpy w, a                 ; 3C
09D8:          : mul j, $6B66             ; 66 66 6B
09DB:          : mul j, $7E66             ; 66 66 7E
09DE:          : nop                      ; 00
09DF:          : nop                      ; 00
09E0:          : nop                      ; 00
09E1:          : nop                      ; 00
09E2:          : nop                      ; 00
09E3:          : nop                      ; 00
09E4:          : load y, j                ; 18
09E5:          : nop                      ; 00
09E6:          : mod a, x                 ; 6C
09E7:          : cpy w, a                 ; 3C
09E8:          : load y, j                ; 18
09E9:          : cpy a, w                 ; 38
09EA:          : nop                      ; 00
09EB:          : pop y                    ; 0C
09EC:          : call.gt $7C1C            ; 30 1C 7C
09EF:          : nop                      ; 00
09F0:          : dec i                    ; 7E
09F1:          : nop                      ; 00
09F2:          : load y, j                ; 18
09F3:          : mul j, $3818             ; 66 18 38
09F6:          : cpy a, w                 ; 38
09F7:          : cpy a, y                 ; 36
09F8:          : sub w, $3E               ; 60 3E(>)
09FA:          : load y, j                ; 18
09FB:          : cpy w, a                 ; 3C
09FC:          : dec w                    ; 7C
09FD:          : nop                      ; 00
09FE:          : nop                      ; 00
09FF:          : pop y                    ; 0C
0A00:          : nop                      ; 00
0A01:          : sub w, $38               ; 60 38(8)
0A03:          : or w, $7E                ; A5 7E(~)
0A05:          : set y, $06               ; 3E 06
0A07:          : mul j, $1E1E             ; 66 1E 1E
0A0A:          : inc a                    ; 76
0A0B:          : dec i                    ; 7E
0A0C:          : load y, j                ; 18
0A0D:          : sub w, $0E               ; 60 0E
0A0F:          : push i                   ; 06
0A10:          : div j, $667E             ; 6B 7E 66
0A13:          : set y, $66               ; 3E 66(f)
0A15:          : set y, $3C               ; 3E 3C(<)
0A17:          : load y, j                ; 18
0A18:          : mul j, $6B66             ; 66 66 6B
0A1B:          : load y, j                ; 18
0A1C:          : cpy w, a                 ; 3C
0A1D:          : load y, j                ; 18
0A1E:          : pop y                    ; 0C
0A1F:          : load y, j                ; 18
0A20:          : call.gt $0044            ; 30 44 00
0A23:          : nop                      ; 00
0A24:          : sub w, $66               ; 60 66(f)
0A26:          : mul j, $6666             ; 66 66 66
0A29:          : load y, j                ; 18
0A2A:          : mul j, $1866             ; 66 66 18
0A2D:          : sub w, $36               ; 60 36(6)
0A2F:          : call.gt $667F            ; 30 7F 66
0A32:          : mul j, $6666             ; 66 66 66
0A35:          : pop w                    ; 0E
0A36:          : push i                   ; 06
0A37:          : load y, j                ; 18
0A38:          : mul j, $6B66             ; 66 66 6B
0A3B:          : cpy w, a                 ; 3C
0A3C:          : mul j, $0030             ; 66 30 00
0A3F:          : nop                      ; 00
0A40:          : nop                      ; 00
0A41:          : nop                      ; 00
0A42:          : nop                      ; 00
0A43:          : nop                      ; 00
0A44:          : load y, j                ; 18
0A45:          : nop                      ; 00
0A46:          : mod a, x                 ; 6C
0A47:          : sub w, $0C               ; 60 0C
0A49:          : clc                      ; EC
0A4A:          : nop                      ; 00
0A4B:          : pop y                    ; 0C
0A4C:          : call.gt $1036            ; 30 36 10
0A4F:          : load y, j                ; 18
0A50:          : nop                      ; 00
0A51:          : nop                      ; 00
0A52:          : pop y                    ; 0C
0A53:          : mul j, $0C18             ; 66 18 0C
0A56:          : sub w, $7E               ; 60 7E(~)
0A58:          : sub w, $66               ; 60 66(f)
0A5A:          : load y, j                ; 18
0A5B:          : mul j, $1860             ; 66 60 18
0A5E:          : load y, j                ; 18
0A5F:          : load y, j                ; 18
0A60:          : dec i                    ; 7E
0A61:          : call.gt $A518            ; 30 18 A5
0A64:          : mul j, $0666             ; 66 66 06
0A67:          : mul j, $0606             ; 66 06 06
0A6A:          : mul j, $1866             ; 66 66 18
0A6D:          : sub w, $1E               ; 60 1E
0A6F:          : push i                   ; 06
0A70:          : mul a, $76               ; 63 76(v)
0A72:          : mul j, $6606             ; 66 06 66
0A75:          : load i, $1860            ; 1E 60 18
0A78:          : mul j, $7F66             ; 66 66 7F
0A7B:          : cpy w, a                 ; 3C
0A7C:          : load y, j                ; 18
0A7D:          : pop y                    ; 0C
0A7E:          : pop y                    ; 0C
0A7F:          : call.gt $0030            ; 30 30 00
0A82:          : nop                      ; 00
0A83:          : nop                      ; 00
0A84:          : dec w                    ; 7C
0A85:          : mul j, $6606             ; 66 06 66
0A88:          : set y, $18               ; 3E 18
0A8A:          : mul j, $1866             ; 66 66 18
0A8D:          : sub w, $1E               ; 60 1E
0A8F:          : call.gt $666B            ; 30 6B 66
0A92:          : mul j, $6666             ; 66 66 66
0A95:          : push i                   ; 06
0A96:          : cpy w, a                 ; 3C
0A97:          : load y, j                ; 18
0A98:          : mul j, $7F66             ; 66 66 7F
0A9B:          : load y, j                ; 18
0A9C:          : mul j, $0018             ; 66 18 00
0A9F:          : nop                      ; 00
0AA0:          : nop                      ; 00
0AA1:          : nop                      ; 00
0AA2:          : nop                      ; 00
0AA3:          : nop                      ; 00
0AA4:          : nop                      ; 00
0AA5:          : nop                      ; 00
0AA6:          : nop                      ; FE
0AA7:          : set y, $66               ; 3E 66(f)
0AA9:          : mul j, $1800             ; 66 00 18
0AAC:          : load y, j                ; 18
0AAD:          : nop                      ; 00
0AAE:          : pop i                    ; 10
0AAF:          : load y, j                ; 18
0AB0:          : nop                      ; 00
0AB1:          : load y, j                ; 18
0AB2:          : push i                   ; 06
0AB3:          : mul j, $0618             ; 66 18 06
0AB6:          : mul j, $6630             ; 66 30 66
0AB9:          : mul j, $6618             ; 66 18 66
0ABC:          : mul j, $1818             ; 66 18 18
0ABF:          : call.gt $1800            ; 30 00 18
0AC2:          : nop                      ; 00
0AC3:          : dec x                    ; 79
0AC4:          : mul j, $6666             ; 66 66 66
0AC7:          : mul j, $0606             ; 66 06 06
0ACA:          : mul j, $1866             ; 66 66 18
0ACD:          : mul j, $0636             ; 66 36 06
0AD0:          : mul a, $66               ; 63 66(f)
0AD2:          : mul j, $6606             ; 66 06 66
0AD5:          : cpy a, y                 ; 36
0AD6:          : mul j, $6618             ; 66 18 66
0AD9:          : cpy w, a                 ; 3C
0ADA:          : inc i                    ; 77
0ADB:          : mul j, $0618             ; 66 18 06
0ADE:          : pop y                    ; 0C
0ADF:          : sub w, $30               ; 60 30(0)
0AE1:          : nop                      ; 00
0AE2:          : nop                      ; 00
0AE3:          : nop                      ; 00
0AE4:          : mul j, $6666             ; 66 66 66
0AE7:          : mul j, $1806             ; 66 06 18
0AEA:          : dec w                    ; 7C
0AEB:          : mul j, $6018             ; 66 18 60
0AEE:          : cpy a, y                 ; 36
0AEF:          : call.gt $666B            ; 30 6B 66
0AF2:          : mul j, $6666             ; 66 66 66
0AF5:          : push i                   ; 06
0AF6:          : sub w, $18               ; 60 18
0AF8:          : mul j, $3E3C             ; 66 3C 3E
0AFB:          : cpy w, a                 ; 3C
0AFC:          : dec w                    ; 7C
0AFD:          : pop y                    ; 0C
0AFE:          : nop                      ; 00
0AFF:          : nop                      ; 00
0B00:          : nop                      ; 00
0B01:          : nop                      ; 00
0B02:          : nop                      ; 00
0B03:          : nop                      ; 00
0B04:          : load y, j                ; 18
0B05:          : nop                      ; 00
0B06:          : mod a, x                 ; 6C
0B07:          : load y, j                ; 18
0B08:          : mul a, x                 ; 62
0B09:          : nop                      ; FC
0B0A:          : nop                      ; 00
0B0B:          : call.gt $000C            ; 30 0C 00
0B0E:          : nop                      ; 00
0B0F:          : pop y                    ; 0C
0B10:          : nop                      ; 00
0B11:          : load y, j                ; 18
0B12:          : push y                   ; 02
0B13:          : cpy w, a                 ; 3C
0B14:          : dec i                    ; 7E
0B15:          : dec i                    ; 7E
0B16:          : cpy w, a                 ; 3C
0B17:          : inc j                    ; 78
0B18:          : cpy w, a                 ; 3C
0B19:          : cpy w, a                 ; 3C
0B1A:          : load y, j                ; 18
0B1B:          : cpy w, a                 ; 3C
0B1C:          : cpy w, a                 ; 3C
0B1D:          : nop                      ; 00
0B1E:          : push f                   ; 08
0B1F:          : sub w, $00               ; 60 00
0B21:          : pop y                    ; 0C
0B22:          : load y, j                ; 18
0B23:          : push y                   ; 02
0B24:          : mul j, $3C3E             ; 66 3E 3C
0B27:          : set y, $7E               ; 3E 7E(~)
0B29:          : push i                   ; 06
0B2A:          : cpy w, a                 ; 3C
0B2B:          : mul j, $3C3C             ; 66 3C 3C
0B2E:          : mul j, $637E             ; 66 7E 63
0B31:          : mul j, $063C             ; 66 3C 06
0B34:          : cpy w, a                 ; 3C
0B35:          : mul j, $183C             ; 66 3C 18
0B38:          : cpy w, a                 ; 3C
0B39:          : load y, j                ; 18
0B3A:          : mul a, $66               ; 63 66(f)
0B3C:          : load y, j                ; 18
0B3D:          : dec i                    ; 7E
0B3E:          : cpy w, a                 ; 3C
0B3F:          : set w, $3C               ; 40 3C(<)
0B41:          : nop                      ; 00
0B42:          : nop                      ; 00
0B43:          : nop                      ; 00
0B44:          : dec w                    ; 7C
0B45:          : set y, $3C               ; 3E 3C(<)
0B47:          : dec w                    ; 7C
0B48:          : dec w                    ; 7C
0B49:          : load y, j                ; 18
0B4A:          : sub w, $66               ; 60 66(f)
0B4C:          : cpy w, a                 ; 3C
0B4D:          : mul j, $7866             ; 66 66 78
0B50:          : div j, $3C66             ; 6B 66 3C
0B53:          : set y, $7C               ; 3E 7C(|)
0B55:          : push i                   ; 06
0B56:          : set y, $30               ; 3E 30(0)
0B58:          : dec w                    ; 7C
0B59:          : load y, j                ; 18
0B5A:          : cpy a, y                 ; 36
0B5B:          : mul j, $7E60             ; 66 60 7E
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
0B83:          : cpy w, a                 ; 3C
0B84:          : nop                      ; 00
0B85:          : nop                      ; 00
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
0B94:          : sub w, $00               ; 60 00
0B96:          : nop                      ; 00
0B97:          : nop                      ; 00
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
0BA2:          : nop                      ; FF
0BA3:          : nop                      ; 00
0BA4:          : nop                      ; 00
0BA5:          : nop                      ; 00
0BA6:          : nop                      ; 00
0BA7:          : nop                      ; 00
0BA8:          : nop                      ; 00
0BA9:          : nop                      ; 00
0BAA:          : cpy w, a                 ; 3C
0BAB:          : nop                      ; 00
0BAC:          : nop                      ; 00
0BAD:          : cpy w, a                 ; 3C
0BAE:          : nop                      ; 00
0BAF:          : nop                      ; 00
0BB0:          : nop                      ; 00
0BB1:          : nop                      ; 00
0BB2:          : nop                      ; 00
0BB3:          : push i                   ; 06
0BB4:          : sub w, $00               ; 60 00
0BB6:          : nop                      ; 00
0BB7:          : nop                      ; 00
0BB8:          : nop                      ; 00
0BB9:          : nop                      ; 00
0BBA:          : nop                      ; 00
0BBB:          : nop                      ; 00
0BBC:          : cpy w, a                 ; 3C
0BBD:          : nop                      ; 00
0BBE:          : nop                      ; 00
0BBF:          : nop                      ; 00
0BC0:          : nop                      ; 00
0BC1:          : nop                      ; 00
0BC2:          : nop                      ; 00
0BC3:          : dec j                    ; 7F
0BC4:          : call.gt $3231            ; 30 31 32
0BC7:          : call.nz $3534            ; 33 34 35
0BCA:          : cpy a, y                 ; 36
0BCB:          : cpy a, z                 ; 37
0BCC:          : cpy a, w                 ; 38
0BCD:          : cpy x, a                 ; 39
0BCE:          : sub a, $62               ; 61 62(b)
0BD0:          : mul a, $64               ; 63 64(d)
0BD2:          : mul i, $6766             ; 65 66 67
0BD5:          : div a, $69               ; 68 69(i)
0BD7:          : div i, $6C6B             ; 6A 6B 6C
0BDA:          : mod a, $6E               ; 6D 6E(n)
0BDC:          : mod i, $7170             ; 6F 70 71
0BDF:          : inc x                    ; 72
0BE0:          : inc y                    ; 73
0BE1:          : inc z                    ; 74
0BE2:          : inc w                    ; 75
0BE3:          : inc a                    ; 76
0BE4:          : inc i                    ; 77
0BE5:          : inc j                    ; 78
0BE6:          : dec x                    ; 79
0BE7:          : dec y                    ; 7A
0BE8:          : set a, $42               ; 41 42(B)
0BEA:          : set j, $4544             ; 43 44 45
0BED:          : add a, z                 ; 46
0BEE:          : add a, w                 ; 47
0BEF:          : add i, j                 ; 48
0BF0:          : add i, a                 ; 49
0BF1:          : add i, z                 ; 4A
0BF2:          : add i, w                 ; 4B
0BF3:          : add j, a                 ; 4C
0BF4:          : add j, x                 ; 4D
0BF5:          : add j, y                 ; 4E
0BF6:          : add i, $5150             ; 4F 50 51
0BF9:          : add y, $53               ; 52 53(S)
0BFB:          : add w, $55               ; 54 55(U)
0BFD:          : sub a, x                 ; 56
0BFE:          : sub a, y                 ; 57
0BFF:          : sub a, z                 ; 58
0C00:          : sub a, w                 ; 59
0C01:          : sub i, $5155             ; 5A
0C02:          : store i, a               ; 20
0C03:          : store i, w               ; 21
0C04:          : store i, z               ; 22
0C05:          : store j, a               ; 23
0C06:          : store j, x               ; 24
0C07:          : store j, y               ; 25
0C08:          : store $2827, x           ; 26 27 28
0C0B:          : store $2B40, w           ; 29 40 2B
0C0E:          : call $3D2A               ; 2D 2A 3D  ERROR $3D2A
0C11:          : call.neq $2E2C           ; 2F 2C 2E
0C14:          : cpy z, a                 ; 3B
0C15:          : sub j, $2E2C             ; 5B
0C16:          : sub x, $7B               ; 5D 7B({)
0C18:          : dec a                    ; 7D
0C19:          : set z, $3C               ; 3F 3C(<)
0C1B:          : set y, $3A               ; 3E 3A(:)
0C1D:          : dec j                    ; 7F
0C1E:          : dec j                    ; 7F
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
13E8: LBL_5096 : dec a                    ; 7D
13E9:          : push a                   ; 05
13EA:          : set a, $FF               ; 41 FF
13EC: LBL_5100 : dec a                    ; 7D
13ED:          : push a                   ; 05
13EE:          : load a, j                ; 16
13EF:          : store i, a               ; 20
13F0:          : pop a                    ; 0F
13F1:          : inc i                    ; 77
13F2:          : inc j                    ; 78
13F3:          : cmp a                    ; 84
13F4:          : rjmp.nz $F8              ; DD F8     LBL_5100 $13EC
13F6:          : pop a                    ; 0F
13F7:          : cmp a                    ; 84
13F8:          : rjmp.nz $F0              ; DD F0     LBL_5096 $13E8
13FA:          : bjmp $0400, a            ; DF 00 04
13FD:          : nop                      ; 00
13FE:          : rjmp $E4                 ; D1 E4     LBL_5090 $13E2
