0400:          : push y                   ; 02
0401:          : push f                   ; 08
0402:          : pop w                    ; 0E
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
041A:          : push x                   ; 01
041B:          : push y                   ; 02
041C:          : push z                   ; 03
041D:          : push w                   ; 04
041E:          : push a                   ; 05
041F:          : load a, $0406            ; 1D 06 04
0422:          : load i, $0407            ; 1E 07 04
0425:          : load j, $0409            ; 1F 09 04
0428:          : call $0431               ; 2D 31 04  FUN_1073 $0431
042B:          : pop a                    ; 0F
042C:          : pop w                    ; 0E
042D:          : pop z                    ; 0D
042E:          : pop y                    ; 0C
042F:          : pop x                    ; 0B
0430:          : return                   ; 34
0431: FUN_1073 : store i, a               ; 20
0432:          : inc i                    ; 77
0433:          : dec j                    ; 7F
0434:          : rjmp.nz $FD              ; DD FD     FUN_1073 $0431
0436:          : return                   ; 34
0437:          : cmpi x, $28              ; 89 28(()
0439:          : rjmp.gt $1E              ; D7 1E     LBL_1111 $0457
043B:          : cmpi y, $20              ; 8A 20
043D:          : rjmp.gt $1A              ; D7 1A     LBL_1111 $0457
043F:          : cmpi a, $20              ; 8D 20
0441:          : rjmp.lt $16              ; D9 16     LBL_1111 $0457
0443:          : cmpi a, $7F              ; 8D 7F()
0445:          : rjmp.gt $12              ; D7 12     LBL_1111 $0457
0447:          : set j, $0000             ; 43 00 00
044A:          : add j, y                 ; 4E
044B:          : mul j, $0028             ; 66 28 00
044E:          : add j, x                 ; 4D
044F:          : add j, $8000             ; 50 00 80
0452:          : store j, a               ; 23
0453:          : set a, $01               ; 41 01
0455:          : rjmp $04                 ; D1 04     LBL_1113 $0459
0457: LBL_1111 : set a, $00               ; 41 00
0459: LBL_1113 : return                   ; 34
045A: LBL_1114 : load a, j                ; 16
045B:          : cmp a                    ; 84
045C:          : rjmp.z $2F               ; DB 2F(/)  LBL_1163 $048B
045E:          : push z                   ; 03
045F:          : push w                   ; 04
0460:          : cmpi x, $28              ; 89 28(()
0462:          : rjmp.gt $1E              ; D7 1E     LBL_1152 $0480
0464:          : cmpi y, $20              ; 8A 20
0466:          : rjmp.gt $1A              ; D7 1A     LBL_1152 $0480
0468:          : cmpi a, $20              ; 8D 20
046A:          : rjmp.lt $16              ; D9 16     LBL_1152 $0480
046C:          : cmpi a, $7F              ; 8D 7F()
046E:          : rjmp.gt $12              ; D7 12     LBL_1152 $0480
0470:          : set j, $0000             ; 43 00 00
0473:          : add j, y                 ; 4E
0474:          : mul j, $0028             ; 66 28 00
0477:          : add j, x                 ; 4D
0478:          : add j, $8000             ; 50 00 80
047B:          : store j, a               ; 23
047C:          : set a, $01               ; 41 01
047E:          : rjmp $04                 ; D1 04     LBL_1154 $0482
0480: LBL_1152 : set a, $00               ; 41 00
0482: LBL_1154 : pop w                    ; 0E
0483:          : pop z                    ; 0D
0484:          : cmp a                    ; 84
0485:          : rjmp.z $06               ; DB 06     LBL_1163 $048B
0487:          : inc j                    ; 78
0488:          : inc x                    ; 72
0489:          : rjmp $D1                 ; D1 D1     LBL_1114 $045A
048B: LBL_1163 : return                   ; 34
048C: FUN_1164 : cmpi a, $0A              ; 8D 0A
048E:          : rjmp.lt $0B              ; D9 0B     LBL_1177 $0499
0490:          : cmpi a, $64              ; 8D 64(d)
0492:          : rjmp.lt $06              ; D9 06     LBL_1176 $0498
0494:          : inc x                    ; 72
0495:          : inc x                    ; 72
0496:          : rjmp $03                 ; D1 03     LBL_1177 $0499
0498: LBL_1176 : inc x                    ; 72
0499: LBL_1177 : cpy z, a                 ; 3B
049A:          : mod a, $0A               ; 6D 0A
049C:          : add a, $30               ; 55 30(0)
049E:          : push z                   ; 03
049F:          : cmpi x, $28              ; 89 28(()
04A1:          : rjmp.gt $1E              ; D7 1E     LBL_1215 $04BF
04A3:          : cmpi y, $20              ; 8A 20
04A5:          : rjmp.gt $1A              ; D7 1A     LBL_1215 $04BF
04A7:          : cmpi a, $20              ; 8D 20
04A9:          : rjmp.lt $16              ; D9 16     LBL_1215 $04BF
04AB:          : cmpi a, $7F              ; 8D 7F()
04AD:          : rjmp.gt $12              ; D7 12     LBL_1215 $04BF
04AF:          : set j, $0000             ; 43 00 00
04B2:          : add j, y                 ; 4E
04B3:          : mul j, $0028             ; 66 28 00
04B6:          : add j, x                 ; 4D
04B7:          : add j, $8000             ; 50 00 80
04BA:          : store j, a               ; 23
04BB:          : set a, $01               ; 41 01
04BD:          : rjmp $04                 ; D1 04     LBL_1217 $04C1
04BF: LBL_1215 : set a, $00               ; 41 00
04C1: LBL_1217 : pop z                    ; 0D
04C2:          : dec x                    ; 79
04C3:          : cpy a, z                 ; 37
04C4:          : div a, $0A               ; 68 0A
04C6:          : cmp a                    ; 84
04C7:          : rjmp.z $04               ; DB 04     LBL_1227 $04CB
04C9:          : rjmp $D0                 ; D1 D0     LBL_1177 $0499
04CB: LBL_1227 : return                   ; 34
04CC:          : set i, $8000             ; 42 00 80
04CF:          : set j, $2800             ; 43 00 28
04D2:          : set a, $20               ; 41 20
04D4:          : call $0431               ; 2D 31 04  FUN_1073 $0431
04D7:          : return                   ; 34
04D8:          : nop                      ; 00
04D9:          : nop                      ; 00
04DA:          : nop                      ; 00
04DB:          : nop                      ; 00
04DC:          : nop                      ; 00
04DD:          : nop                      ; 00
04DE:          : nop                      ; 00
04DF:          : nop                      ; 00
04E0:          : cmp a, x                 ; 80
04E1:          : cpy z, a                 ; 3B
04E2:          : set z, $42               ; 3F 42(B)
04E4:          : nop                      ; FF
04E5:          : not w                    ; AA
04E6:          : jmp $0000, x             ; CC 00 00  ERROR $0000
04E9:          : nop                      ; 00
04EA: FUN_1258 : set i, $051B             ; 42 1B 05
04ED:          : store $0000, i           ; 2B 00 00
04F0:          : set i, $051E             ; 42 1E 05
04F3:          : store $0002, i           ; 2B 02 00
04F6:          : set i, $0586             ; 42 86 05
04F9:          : store $0004, i           ; 2B 04 00
04FC:          : set i, $05F0             ; 42 F0 05
04FF:          : store $0006, i           ; 2B 06 00
0502:          : set i, $05FC             ; 42 FC 05
0505:          : store $0008, i           ; 2B 08 00
0508:          : set i, $0605             ; 42 05 06
050B:          : store $000A, i           ; 2B 0A 00
050E:          : set i, $0605             ; 42 05 06
0511:          : store $000C, i           ; 2B 0C 00
0514:          : set i, $05FE             ; 42 FE 05
0517:          : store $000E, i           ; 2B 0E 00
051A:          : return                   ; 34
051B:          : jmp $0881                ; C9 81 08  LBL_2177 $0881
051E:          : load a, $002C            ; 1D 2C 00
0521:          : cpy x, a                 ; 39
0522:          : cmpi a, $E8              ; 8D E8
0524:          : jmp.gt $0551             ; D6 51 05  LBL_1361 $0551
0527:          : jmp.eq $0570             ; D2 70 05  LBL_1392 $0570
052A:          : not x                    ; A7
052B:          : and x, $E0               ; 99 E0
052D:          : shr x, $02               ; BA 02
052F:          : load a, $04E2            ; 1D E2 04
0532:          : add a, x                 ; 44
0533:          : store $001E, a           ; 2A 1E 00
0536:          : neg a                    ; 71
0537:          : store $0021, a           ; 2A 21 00
053A:          : load a, $04E3            ; 1D E3 04
053D:          : add a, x                 ; 44
053E:          : store $001F, a           ; 2A 1F 00
0541:          : neg a                    ; 71
0542:          : store $0022, a           ; 2A 22 00
0545:          : load a, $04E4            ; 1D E4 04
0548:          : add a, x                 ; 44
0549:          : store $0020, a           ; 2A 20 00
054C:          : neg a                    ; 71
054D:          : store $0023, a           ; 2A 23 00
0550:          : resume                   ; EA
0551: LBL_1361 : set a, $3B               ; 41 3B(;)
0553:          : store $001D, a           ; 2A 1D 00
0556:          : set a, $3F               ; 41 3F(?)
0558:          : store $001E, a           ; 2A 1E 00
055B:          : set a, $42               ; 41 42(B)
055D:          : store $001F, a           ; 2A 1F 00
0560:          : set a, $FE               ; 41 FE
0562:          : store $0020, a           ; 2A 20 00
0565:          : set a, $FE               ; 41 FE
0567:          : store $0021, a           ; 2A 21 00
056A:          : set a, $FE               ; 41 FE
056C:          : store $0022, a           ; 2A 22 00
056F:          : resume                   ; EA
0570: LBL_1392 : set a, $00               ; 41 00
0572:          : store $001D, a           ; 2A 1D 00
0575:          : store $001E, a           ; 2A 1E 00
0578:          : store $001F, a           ; 2A 1F 00
057B:          : store $0020, a           ; 2A 20 00
057E:          : store $0021, a           ; 2A 21 00
0581:          : store $0022, a           ; 2A 22 00
0584:          : resume                   ; EA
0585:          : resume                   ; EA
0586:          : load a, $04E1            ; 1D E1 04
0589:          : load x, $04E4            ; 19 E4 04
058C:          : cmp a, x                 ; 80
058D:          : jmp.lt $059E             ; D8 9E 05  LBL_1438 $059E
0590:          : jmp.gt $05A5             ; D6 A5 05  LBL_1445 $05A5
0593:          : load a, $00E1            ; 1D E1 00
0596:          : mod a, $7F               ; 6D 7F()
0598:          : store $04E4, a           ; 2A E4 04
059B:          : jmp $05A9                ; C9 A9 05  LBL_1449 $05A9
059E: LBL_1438 : inc a                    ; 76
059F:          : store $04E1, a           ; 2A E1 04
05A2:          : jmp $05A9                ; C9 A9 05  LBL_1449 $05A9
05A5: LBL_1445 : dec a                    ; 7D
05A6:          : store $04E1, a           ; 2A E1 04
05A9: LBL_1449 : load a, $04E2            ; 1D E2 04
05AC:          : load x, $04E5            ; 19 E5 04
05AF:          : cmp a, x                 ; 80
05B0:          : jmp.lt $05C1             ; D8 C1 05  LBL_1473 $05C1
05B3:          : jmp.gt $05C8             ; D6 C8 05  LBL_1480 $05C8
05B6:          : load a, $00E1            ; 1D E1 00
05B9:          : mod a, $7F               ; 6D 7F()
05BB:          : store $04E5, a           ; 2A E5 04
05BE:          : jmp $05CC                ; C9 CC 05  LBL_1484 $05CC
05C1: LBL_1473 : inc a                    ; 76
05C2:          : store $04E2, a           ; 2A E2 04
05C5:          : jmp $05CC                ; C9 CC 05  LBL_1484 $05CC
05C8: LBL_1480 : dec a                    ; 7D
05C9:          : store $04E2, a           ; 2A E2 04
05CC: LBL_1484 : load a, $04E3            ; 1D E3 04
05CF:          : load x, $04E6            ; 19 E6 04
05D2:          : cmp a, x                 ; 80
05D3:          : jmp.lt $05E4             ; D8 E4 05  LBL_1508 $05E4
05D6:          : jmp.gt $05EB             ; D6 EB 05  LBL_1515 $05EB
05D9:          : load a, $00E1            ; 1D E1 00
05DC:          : mod a, $7F               ; 6D 7F()
05DE:          : store $04E6, a           ; 2A E6 04
05E1:          : jmp $05EF                ; C9 EF 05  LBL_1519 $05EF
05E4: LBL_1508 : inc a                    ; 76
05E5:          : store $04E3, a           ; 2A E3 04
05E8:          : jmp $05CC                ; C9 CC 05  LBL_1484 $05CC
05EB: LBL_1515 : dec a                    ; 7D
05EC:          : store $04E3, a           ; 2A E3 04
05EF: LBL_1519 : resume                   ; EA
05F0:          : load a, $0034            ; 1D 34 00
05F3:          : store $04D8, a           ; 2A D8 04
05F6:          : set a, $00               ; 41 00
05F8:          : store $0034, a           ; 2A 34 00
05FB:          : resume                   ; EA
05FC:          : nop                      ; 00
05FD:          : resume                   ; EA
05FE:          : nop                      ; 00
05FF:          : dbn $4C48                ; F2 48 4C
0602:          : int $FF                  ; E9 FF
0604:          : resume                   ; EA
0605:          : dbn $4C44                ; F2 44 4C
0608:          : nop                      ; 00
0609:          : resume                   ; EA
060A: FUN_1546 : set a, $44               ; 41 44(D)
060C:          : store $84C1, a           ; 2A C1 84
060F:          : set a, $58               ; 41 58(X)
0611:          : store $84C2, a           ; 2A C2 84
0614:          : set a, $38               ; 41 38(8)
0616:          : store $84C3, a           ; 2A C3 84
0619:          : set a, $2F               ; 41 2F(/)
061B:          : store $84C5, a           ; 2A C5 84
061E:          : set a, $2F               ; 41 2F(/)
0620:          : store $84C6, a           ; 2A C6 84
0623:          : set a, $2F               ; 41 2F(/)
0625:          : store $84C7, a           ; 2A C7 84
0628:          : return                   ; 34
0629: FUN_1577 : load x, $002F            ; 19 2F 00
062C:          : cmpbit x, $40            ; 90 40(@)
062E:          : jmp.z $0634              ; DA 34 06  LBL_1588 $0634
0631:          : jmp $0642                ; C9 42 06  LBL_1602 $0642
0634: LBL_1588 : set x, $20               ; 3D 20
0636:          : store $84C5, x           ; 26 C5 84
0639:          : store $84C6, x           ; 26 C6 84
063C:          : store $84C7, x           ; 26 C7 84
063F:          : jmp $064D                ; C9 4D 06  LBL_1613 $064D
0642: LBL_1602 : set x, $2F               ; 3D 2F(/)
0644:          : store $84C5, x           ; 26 C5 84
0647:          : store $84C6, x           ; 26 C6 84
064A:          : store $84C7, x           ; 26 C7 84
064D: LBL_1613 : return                   ; 34
064E:          : div i, $7106             ; 6A 06 71
0651:          : push i                   ; 06
0652:          : jmp.z $2106              ; DA 06 21  ERROR $2106
0655:          : push j                   ; 07
0656:          : add j, x                 ; 4D
0657:          : push j                   ; 07
0658:          : sub a, w                 ; 59
0659:          : push j                   ; 07
065A:          : sub w, $07               ; 60 07
065C:          : dec i                    ; 7E
065D:          : push j                   ; 07
065E:          : cmp x                    ; 85
065F:          : push j                   ; 07
0660:          : cmpi i, $9E07            ; 8E 07 9E
0663:          : push j                   ; 07
0664:          : or w, $07                ; A5 07
0666:          : jmp j                    ; CB        ERROR $9E07
0667:          : push j                   ; 07
0668:          : jmp $4107, x             ; CC 07 41  ERROR $4107
066B:          : nop                      ; 00
066C:          : store $04D8, a           ; 2A D8 04
066F:          : nop                      ; 00
0670:          : return                   ; 34
0671:          : set a, $00               ; 41 00
0673:          : store $04D8, a           ; 2A D8 04
0676:          : set a, $01               ; 41 01
0678:          : store $04D9, a           ; 2A D9 04
067B:          : set a, $20               ; 41 20
067D:          : store $8269, a           ; 2A 69 82
0680:          : set a, $20               ; 41 20
0682:          : store $826A, a           ; 2A 6A 82
0685:          : set a, $20               ; 41 20
0687:          : store $826B, a           ; 2A 6B 82
068A:          : set a, $20               ; 41 20
068C:          : store $826C, a           ; 2A 6C 82
068F:          : set a, $20               ; 41 20
0691:          : store $826D, a           ; 2A 6D 82
0694:          : set a, $20               ; 41 20
0696:          : store $826E, a           ; 2A 6E 82
0699:          : set a, $20               ; 41 20
069B:          : store $8291, a           ; 2A 91 82
069E:          : set a, $20               ; 41 20
06A0:          : store $8292, a           ; 2A 92 82
06A3:          : set a, $20               ; 41 20
06A5:          : store $8293, a           ; 2A 93 82
06A8:          : set a, $20               ; 41 20
06AA:          : store $8294, a           ; 2A 94 82
06AD:          : set a, $20               ; 41 20
06AF:          : store $8295, a           ; 2A 95 82
06B2:          : set a, $20               ; 41 20
06B4:          : store $8296, a           ; 2A 96 82
06B7:          : set a, $00               ; 41 00
06B9:          : store $04DA, a           ; 2A DA 04
06BC:          : set i, $D400             ; 42 00 D4
06BF:          : store $04DB, i           ; 2B DB 04
06C2:          : set a, $FF               ; 41 FF
06C4:          : store $04DD, a           ; 2A DD 04
06C7:          : set a, $FF               ; 41 FF
06C9:          : store $0037, a           ; 2A 37 00
06CC:          : set i, $D400             ; 42 00 D4
06CF:          : store $0038, i           ; 2B 38 00
06D2:          : set a, $01               ; 41 01
06D4:          : store $003A, a           ; 2A 3A 00
06D7:          : int $D0                  ; E9 D0
06D9:          : return                   ; 34
06DA: FUN_1754 : set a, $00               ; 41 00
06DC:          : store $04D8, a           ; 2A D8 04
06DF:          : set a, $00               ; 41 00
06E1:          : store $04D9, a           ; 2A D9 04
06E4:          : set a, $49               ; 41 49(I)
06E6:          : store $8269, a           ; 2A 69 82
06E9:          : set a, $4E               ; 41 4E(N)
06EB:          : store $826A, a           ; 2A 6A 82
06EE:          : set a, $53               ; 41 53(S)
06F0:          : store $826B, a           ; 2A 6B 82
06F3:          : set a, $45               ; 41 45(E)
06F5:          : store $826C, a           ; 2A 6C 82
06F8:          : set a, $52               ; 41 52(R)
06FA:          : store $826D, a           ; 2A 6D 82
06FD:          : set a, $54               ; 41 54(T)
06FF:          : store $826E, a           ; 2A 6E 82
0702:          : set a, $46               ; 41 46(F)
0704:          : store $8291, a           ; 2A 91 82
0707:          : set a, $4C               ; 41 4C(L)
0709:          : store $8292, a           ; 2A 92 82
070C:          : set a, $4F               ; 41 4F(O)
070E:          : store $8293, a           ; 2A 93 82
0711:          : set a, $50               ; 41 50(P)
0713:          : store $8294, a           ; 2A 94 82
0716:          : set a, $50               ; 41 50(P)
0718:          : store $8295, a           ; 2A 95 82
071B:          : set a, $59               ; 41 59(Y)
071D:          : store $8296, a           ; 2A 96 82
0720:          : return                   ; 34
0721:          : load a, $00E1            ; 1D E1 00
0724:          : store $04E1, a           ; 2A E1 04
0727:          : load a, $00E1            ; 1D E1 00
072A:          : store $04E2, a           ; 2A E2 04
072D:          : load a, $00E1            ; 1D E1 00
0730:          : store $04E3, a           ; 2A E3 04
0733:          : load a, $0036            ; 1D 36 00
0736:          : set x, $02               ; 3D 02
0738:          : set y, $02               ; 3E 02
073A:          : call $048C               ; 2D 8C 04  FUN_1164 $048C
073D:          : load a, $0037            ; 1D 37 00
0740:          : set x, $07               ; 3D 07
0742:          : set y, $02               ; 3E 02
0744:          : call $048C               ; 2D 8C 04  FUN_1164 $048C
0747:          : set a, $00               ; 41 00
0749:          : store $04D8, a           ; 2A D8 04
074C:          : return                   ; 34
074D:          : set a, $00               ; 41 00
074F:          : store $04D8, a           ; 2A D8 04
0752:          : load a, $04DA            ; 1D DA 04
0755:          : bcall $065E, a           ; E4 5E 06
0758:          : return                   ; 34
0759:          : set a, $00               ; 41 00
075B:          : store $04D8, a           ; 2A D8 04
075E:          : nop                      ; 00
075F:          : return                   ; 34
0760:          : load a, $00E1            ; 1D E1 00
0763:          : mod a, $7F               ; 6D 7F()
0765:          : store $04E1, a           ; 2A E1 04
0768:          : load a, $00E1            ; 1D E1 00
076B:          : mod a, $7F               ; 6D 7F()
076D:          : store $04E2, a           ; 2A E2 04
0770:          : load a, $00E1            ; 1D E1 00
0773:          : mod a, $7F               ; 6D 7F()
0775:          : store $04E3, a           ; 2A E3 04
0778:          : set a, $00               ; 41 00
077A:          : store $04D8, a           ; 2A D8 04
077D:          : return                   ; 34
077E:          : set a, $00               ; 41 00
0780:          : store $04D8, a           ; 2A D8 04
0783:          : nop                      ; 00
0784:          : return                   ; 34
0785:          : set a, $01               ; 41 01
0787:          : store $04DA, a           ; 2A DA 04
078A:          : call $0792               ; 2D 92 07  FUN_1938 $0792
078D:          : return                   ; 34
078E:          : call $0792               ; 2D 92 07  FUN_1938 $0792
0791:          : return                   ; 34
0792: FUN_1938 : load i, $04DB            ; 1E DB 04
0795:          : load a, i                ; 13
0796:          : inc i                    ; 77
0797:          : store $04DB, i           ; 2B DB 04
079A:          : bcall $0662, a           ; E4 62 06
079D:          : return                   ; 34
079E:          : nop                      ; 00
079F:          : set a, $03               ; 41 03
07A1:          : store $04DA, a           ; 2A DA 04
07A4:          : return                   ; 34
07A5:          : load i, $04DB            ; 1E DB 04
07A8:          : load z, i                ; 14
07A9:          : inc i                    ; 77
07AA:          : store $0038, z           ; 28 38 00
07AD:          : load z, i                ; 14
07AE:          : store $0039, z           ; 28 39 00
07B1:          : load i, $04DB            ; 1E DB 04
07B4:          : inc i                    ; 77
07B5:          : inc i                    ; 77
07B6:          : store $04DB, i           ; 2B DB 04
07B9:          : load a, $04DD            ; 1D DD 04
07BC:          : inc a                    ; 76
07BD:          : store $04DD, a           ; 2A DD 04
07C0:          : store $0037, a           ; 2A 37 00
07C3:          : set a, $01               ; 41 01
07C5:          : store $003A, a           ; 2A 3A 00
07C8:          : int $D0                  ; E9 D0
07CA:          : return                   ; 34
07CB:          : return                   ; 34
07CC:          : set a, $03               ; 41 03
07CE:          : store $04DA, a           ; 2A DA 04
07D1:          : set i, $0605             ; 42 05 06
07D4:          : store $0002, i           ; 2B 02 00
07D7:          : set i, $0605             ; 42 05 06
07DA:          : store $0004, i           ; 2B 04 00
07DD:          : set i, $0605             ; 42 05 06
07E0:          : store $0006, i           ; 2B 06 00
07E3:          : set i, $0605             ; 42 05 06
07E6:          : store $0008, i           ; 2B 08 00
07E9:          : set i, $05FE             ; 42 FE 05
07EC:          : store $000E, i           ; 2B 0E 00
07EF:          : set i, $1400             ; 42 00 14
07F2:          : store $0000, i           ; 2B 00 00
07F5:          : dbn $5252                ; F2 52 52
07F8:          : int $FF                  ; E9 FF
07FA:          : return                   ; 34
07FB:          : load a, $04D8            ; 1D D8 04
07FE:          : bcall $064E, a           ; E4 4E 06
0801:          : return                   ; 34
0802:          : call $04EA               ; 2D EA 04  FUN_1258 $04EA
0805:          : set a, $00               ; 41 00
0807:          : store $0080, a           ; 2A 80 00
080A:          : set a, $01               ; 41 01
080C:          : store $0081, a           ; 2A 81 00
080F:          : set a, $02               ; 41 02
0811:          : store $0082, a           ; 2A 82 00
0814:          : set a, $03               ; 41 03
0816:          : store $0083, a           ; 2A 83 00
0819:          : set a, $04               ; 41 04
081B:          : store $0084, a           ; 2A 84 00
081E:          : set a, $05               ; 41 05
0820:          : store $0085, a           ; 2A 85 00
0823:          : set a, $06               ; 41 06
0825:          : store $0086, a           ; 2A 86 00
0828:          : set a, $07               ; 41 07
082A:          : store $0087, a           ; 2A 87 00
082D:          : set a, $08               ; 41 08
082F:          : store $0088, a           ; 2A 88 00
0832:          : set a, $35               ; 41 35(5)
0834:          : store $00B5, a           ; 2A B5 00
0837:          : set a, $46               ; 41 46(F)
0839:          : store $00A0, a           ; 2A A0 00
083C:          : set a, $47               ; 41 47(G)
083E:          : store $00A1, a           ; 2A A1 00
0841:          : set a, $48               ; 41 48(H)
0843:          : store $00A2, a           ; 2A A2 00
0846:          : set a, $49               ; 41 49(I)
0848:          : store $00A3, a           ; 2A A3 00
084B:          : set a, $4A               ; 41 4A(J)
084D:          : store $00A4, a           ; 2A A4 00
0850:          : set a, $4B               ; 41 4B(K)
0852:          : store $00A5, a           ; 2A A5 00
0855:          : set a, $4C               ; 41 4C(L)
0857:          : store $00A6, a           ; 2A A6 00
085A:          : set a, $4D               ; 41 4D(M)
085C:          : store $00A7, a           ; 2A A7 00
085F:          : set a, $4E               ; 41 4E(N)
0861:          : store $00A8, a           ; 2A A8 00
0864:          : set a, $4F               ; 41 4F(O)
0866:          : store $00A9, a           ; 2A A9 00
0869:          : set i, $08D7             ; 42 D7 08
086C:          : store $0030, i           ; 2B 30 00
086F:          : set a, $00               ; 41 00
0871:          : store $0019, a           ; 2A 19 00
0874:          : set a, $01               ; 41 01
0876:          : store $0018, a           ; 2A 18 00
0879:          : set a, $00               ; 41 00
087B:          : store $00E0, a           ; 2A E0 00
087E:          : rti                      ; F5
087F:          : int $FE                  ; E9 FE
0881: LBL_2177 : set i, $8000             ; 42 00 80
0884:          : set j, $2800             ; 43 00 28
0887:          : set a, $20               ; 41 20
0889:          : call $0431               ; 2D 31 04  FUN_1073 $0431
088C:          : call $040F               ; 2D 0F 04  LBL_1039 $040F
088F:          : call $060A               ; 2D 0A 06  FUN_1546 $060A
0892:          : call $06DA               ; 2D DA 06  FUN_1754 $06DA
0895:          : set i, $C000             ; 42 00 C0
0898:          : store $04E7, i           ; 2B E7 04
089B:          : set x, $00               ; 3D 00
089D:          : store $04E9, x           ; 26 E9 04
08A0:          : set x, $0F               ; 3D 0F
08A2:          : store $003E, x           ; 26 3E 00
08A5:          : set x, $3C               ; 3D 3C(<)
08A7:          : store $003F, x           ; 26 3F 00
08AA:          : set a, $48               ; 41 48(H)
08AC:          : store $8000, a           ; 2A 00 80
08AF:          : set a, $69               ; 41 69(i)
08B1:          : store $8001, a           ; 2A 01 80
08B4:          : set a, $52               ; 41 52(R)
08B6:          : store $8032, a           ; 2A 32 80
08B9:          : set a, $46               ; 41 46(F)
08BB:          : store $8015, a           ; 2A 15 80
08BE:          : set a, $4F               ; 41 4F(O)
08C0:          : store $8016, a           ; 2A 16 80
08C3:          : set a, $4F               ; 41 4F(O)
08C5:          : store $8017, a           ; 2A 17 80
08C8: LBL_2248 : call $0629               ; 2D 29 06  FUN_1577 $0629
08CB:          : load a, $04D8            ; 1D D8 04
08CE:          : cmpi a, $00              ; 8D 00
08D0:          : call.neq $07FB           ; 2F FB 07
08D3:          : jmp $08C8                ; C9 C8 08  LBL_2248 $08C8
08D6:          : nop                      ; 00
08D7:          : nop                      ; 00
08D8:          : load y, j                ; 18
08D9:          : mul j, $186C             ; 66 6C 18
08DC:          : add a, z                 ; 46
08DD:          : cpy a, w                 ; 38
08DE:          : load y, j                ; 18
08DF:          : call.gt $360C            ; 30 0C 36
08E2:          : nop                      ; 00
08E3:          : nop                      ; 00
08E4:          : nop                      ; 00
08E5:          : nop                      ; 00
08E6:          : set w, $3C               ; 40 3C(<)
08E8:          : load y, j                ; 18
08E9:          : cpy w, a                 ; 3C
08EA:          : cpy w, a                 ; 3C
08EB:          : cpy a, w                 ; 38
08EC:          : dec i                    ; 7E
08ED:          : cpy w, a                 ; 3C
08EE:          : dec i                    ; 7E
08EF:          : cpy w, a                 ; 3C
08F0:          : cpy w, a                 ; 3C
08F1:          : nop                      ; 00
08F2:          : nop                      ; 00
08F3:          : sub w, $00               ; 60 00
08F5:          : pop y                    ; 0C
08F6:          : cpy w, a                 ; 3C
08F7:          : cpy w, a                 ; 3C
08F8:          : cpy w, a                 ; 3C
08F9:          : set y, $3C               ; 3E 3C(<)
08FB:          : set y, $7E               ; 3E 7E(~)
08FD:          : dec i                    ; 7E
08FE:          : cpy w, a                 ; 3C
08FF:          : mul j, $603C             ; 66 3C 60
0902:          : mul j, $6306             ; 66 06 63
0905:          : mul j, $3E3C             ; 66 3C 3E
0908:          : cpy w, a                 ; 3C
0909:          : set y, $3C               ; 3E 3C(<)
090B:          : dec i                    ; 7E
090C:          : mul j, $6366             ; 66 66 63
090F:          : mul j, $7E66             ; 66 66 7E
0912:          : cpy w, a                 ; 3C
0913:          : push y                   ; 02
0914:          : cpy w, a                 ; 3C
0915:          : pop i                    ; 10
0916:          : nop                      ; 00
0917:          : load y, j                ; 18
0918:          : nop                      ; 00
0919:          : push i                   ; 06
091A:          : nop                      ; 00
091B:          : sub w, $00               ; 60 00
091D:          : mod j, $0600             ; 70 00 06
0920:          : load y, j                ; 18
0921:          : sub w, $06               ; 60 06
0923:          : cpy a, w                 ; 38
0924:          : nop                      ; 00
0925:          : nop                      ; 00
0926:          : nop                      ; 00
0927:          : nop                      ; 00
0928:          : nop                      ; 00
0929:          : nop                      ; 00
092A:          : nop                      ; 00
092B:          : load y, j                ; 18
092C:          : nop                      ; 00
092D:          : nop                      ; 00
092E:          : nop                      ; 00
092F:          : nop                      ; 00
0930:          : nop                      ; 00
0931:          : nop                      ; 00
0932:          : nop                      ; 00
0933:          : nop                      ; 00
0934:          : nop                      ; 00
0935:          : nop                      ; 00
0936:          : nop                      ; 00
0937:          : nop                      ; 00
0938:          : load y, j                ; 18
0939:          : mul j, $7CFE             ; 66 FE 7C
093C:          : mul j, $186C             ; 66 6C 18
093F:          : load y, j                ; 18
0940:          : load y, j                ; 18
0941:          : load w, $0010            ; 1C 10 00
0944:          : nop                      ; 00
0945:          : nop                      ; 00
0946:          : sub w, $66               ; 60 66(f)
0948:          : load w, $6666            ; 1C 66 66
094B:          : cpy w, a                 ; 3C
094C:          : push i                   ; 06
094D:          : mul j, $6660             ; 66 60 66
0950:          : mul j, $1818             ; 66 18 18
0953:          : call.gt $1800            ; 30 00 18
0956:          : mul a, x                 ; 62
0957:          : set i, $6666             ; 42 66 66
095A:          : mul j, $0666             ; 66 66 06
095D:          : push i                   ; 06
095E:          : mul j, $1866             ; 66 66 18
0961:          : sub w, $36               ; 60 36(6)
0963:          : push i                   ; 06
0964:          : inc i                    ; 77
0965:          : mul j, $6666             ; 66 66 66
0968:          : mul j, $6666             ; 66 66 66
096B:          : load y, j                ; 18
096C:          : mul j, $6366             ; 66 66 63
096F:          : mul j, $6066             ; 66 66 60
0972:          : pop y                    ; 0C
0973:          : push i                   ; 06
0974:          : call.gt $0038            ; 30 38 00
0977:          : call.gt $0600            ; 30 00 06
097A:          : nop                      ; 00
097B:          : sub w, $00               ; 60 00
097D:          : load y, j                ; 18
097E:          : nop                      ; 00
097F:          : push i                   ; 06
0980:          : nop                      ; 00
0981:          : nop                      ; 00
0982:          : push i                   ; 06
0983:          : call.gt $0000            ; 30 00 00
0986:          : nop                      ; 00
0987:          : nop                      ; 00
0988:          : nop                      ; 00
0989:          : nop                      ; 00
098A:          : nop                      ; 00
098B:          : load y, j                ; 18
098C:          : nop                      ; 00
098D:          : nop                      ; 00
098E:          : nop                      ; 00
098F:          : nop                      ; 00
0990:          : nop                      ; 00
0991:          : nop                      ; 00
0992:          : nop                      ; 00
0993:          : nop                      ; 00
0994:          : nop                      ; 00
0995:          : nop                      ; 00
0996:          : nop                      ; 00
0997:          : nop                      ; 00
0998:          : load y, j                ; 18
0999:          : mul j, $066C             ; 66 6C 06
099C:          : call.gt $186C            ; 30 6C 18
099F:          : pop y                    ; 0C
09A0:          : call.gt $107F            ; 30 7F 10
09A3:          : nop                      ; 00
09A4:          : nop                      ; 00
09A5:          : nop                      ; 00
09A6:          : call.gt $1866            ; 30 66 18
09A9:          : sub w, $60               ; 60 60(`)
09AB:          : cpy a, y                 ; 36
09AC:          : set y, $06               ; 3E 06
09AE:          : call.gt $6666            ; 30 66 66
09B1:          : load y, j                ; 18
09B2:          : load y, j                ; 18
09B3:          : load y, j                ; 18
09B4:          : dec i                    ; 7E
09B5:          : call.gt $9960            ; 30 60 99
09B8:          : mul j, $0666             ; 66 66 06
09BB:          : mul j, $0606             ; 66 06 06
09BE:          : push i                   ; 06
09BF:          : mul j, $6018             ; 66 18 60
09C2:          : load i, $7F06            ; 1E 06 7F
09C5:          : mod i, j                 ; 6E
09C6:          : mul j, $6666             ; 66 66 66
09C9:          : mul j, $1806             ; 66 06 18
09CC:          : mul j, $6366             ; 66 66 63
09CF:          : cpy w, a                 ; 3C
09D0:          : mul j, $0C30             ; 66 30 0C
09D3:          : pop y                    ; 0C
09D4:          : call.gt $006C            ; 30 6C 00
09D7:          : nop                      ; 00
09D8:          : cpy w, a                 ; 3C
09D9:          : set y, $3C               ; 3E 3C(<)
09DB:          : dec w                    ; 7C
09DC:          : cpy w, a                 ; 3C
09DD:          : cpy w, a                 ; 3C
09DE:          : dec w                    ; 7C
09DF:          : set y, $1C               ; 3E 1C
09E1:          : mod j, $3066             ; 70 66 30
09E4:          : cpy a, z                 ; 37
09E5:          : set y, $3C               ; 3E 3C(<)
09E7:          : set y, $7C               ; 3E 7C(|)
09E9:          : inc a                    ; 76
09EA:          : dec w                    ; 7C
09EB:          : cpy w, a                 ; 3C
09EC:          : mul j, $6B66             ; 66 66 6B
09EF:          : mul j, $7E66             ; 66 66 7E
09F2:          : nop                      ; 00
09F3:          : nop                      ; 00
09F4:          : nop                      ; 00
09F5:          : nop                      ; 00
09F6:          : nop                      ; 00
09F7:          : nop                      ; 00
09F8:          : load y, j                ; 18
09F9:          : nop                      ; 00
09FA:          : mod a, x                 ; 6C
09FB:          : cpy w, a                 ; 3C
09FC:          : load y, j                ; 18
09FD:          : cpy a, w                 ; 38
09FE:          : nop                      ; 00
09FF:          : pop y                    ; 0C
0A00:          : call.gt $7C1C            ; 30 1C 7C
0A03:          : nop                      ; 00
0A04:          : dec i                    ; 7E
0A05:          : nop                      ; 00
0A06:          : load y, j                ; 18
0A07:          : mul j, $3818             ; 66 18 38
0A0A:          : cpy a, w                 ; 38
0A0B:          : cpy a, y                 ; 36
0A0C:          : sub w, $3E               ; 60 3E(>)
0A0E:          : load y, j                ; 18
0A0F:          : cpy w, a                 ; 3C
0A10:          : dec w                    ; 7C
0A11:          : nop                      ; 00
0A12:          : nop                      ; 00
0A13:          : pop y                    ; 0C
0A14:          : nop                      ; 00
0A15:          : sub w, $38               ; 60 38(8)
0A17:          : or w, $7E                ; A5 7E(~)
0A19:          : set y, $06               ; 3E 06
0A1B:          : mul j, $1E1E             ; 66 1E 1E
0A1E:          : inc a                    ; 76
0A1F:          : dec i                    ; 7E
0A20:          : load y, j                ; 18
0A21:          : sub w, $0E               ; 60 0E
0A23:          : push i                   ; 06
0A24:          : div j, $667E             ; 6B 7E 66
0A27:          : set y, $66               ; 3E 66(f)
0A29:          : set y, $3C               ; 3E 3C(<)
0A2B:          : load y, j                ; 18
0A2C:          : mul j, $6B66             ; 66 66 6B
0A2F:          : load y, j                ; 18
0A30:          : cpy w, a                 ; 3C
0A31:          : load y, j                ; 18
0A32:          : pop y                    ; 0C
0A33:          : load y, j                ; 18
0A34:          : call.gt $0044            ; 30 44 00
0A37:          : nop                      ; 00
0A38:          : sub w, $66               ; 60 66(f)
0A3A:          : mul j, $6666             ; 66 66 66
0A3D:          : load y, j                ; 18
0A3E:          : mul j, $1866             ; 66 66 18
0A41:          : sub w, $36               ; 60 36(6)
0A43:          : call.gt $667F            ; 30 7F 66
0A46:          : mul j, $6666             ; 66 66 66
0A49:          : pop w                    ; 0E
0A4A:          : push i                   ; 06
0A4B:          : load y, j                ; 18
0A4C:          : mul j, $6B66             ; 66 66 6B
0A4F:          : cpy w, a                 ; 3C
0A50:          : mul j, $0030             ; 66 30 00
0A53:          : nop                      ; 00
0A54:          : nop                      ; 00
0A55:          : nop                      ; 00
0A56:          : nop                      ; 00
0A57:          : nop                      ; 00
0A58:          : load y, j                ; 18
0A59:          : nop                      ; 00
0A5A:          : mod a, x                 ; 6C
0A5B:          : sub w, $0C               ; 60 0C
0A5D:          : clc                      ; EC
0A5E:          : nop                      ; 00
0A5F:          : pop y                    ; 0C
0A60:          : call.gt $1036            ; 30 36 10
0A63:          : load y, j                ; 18
0A64:          : nop                      ; 00
0A65:          : nop                      ; 00
0A66:          : pop y                    ; 0C
0A67:          : mul j, $0C18             ; 66 18 0C
0A6A:          : sub w, $7E               ; 60 7E(~)
0A6C:          : sub w, $66               ; 60 66(f)
0A6E:          : load y, j                ; 18
0A6F:          : mul j, $1860             ; 66 60 18
0A72:          : load y, j                ; 18
0A73:          : load y, j                ; 18
0A74:          : dec i                    ; 7E
0A75:          : call.gt $A518            ; 30 18 A5
0A78:          : mul j, $0666             ; 66 66 06
0A7B:          : mul j, $0606             ; 66 06 06
0A7E:          : mul j, $1866             ; 66 66 18
0A81:          : sub w, $1E               ; 60 1E
0A83:          : push i                   ; 06
0A84:          : mul a, $76               ; 63 76(v)
0A86:          : mul j, $6606             ; 66 06 66
0A89:          : load i, $1860            ; 1E 60 18
0A8C:          : mul j, $7F66             ; 66 66 7F
0A8F:          : cpy w, a                 ; 3C
0A90:          : load y, j                ; 18
0A91:          : pop y                    ; 0C
0A92:          : pop y                    ; 0C
0A93:          : call.gt $0030            ; 30 30 00
0A96:          : nop                      ; 00
0A97:          : nop                      ; 00
0A98:          : dec w                    ; 7C
0A99:          : mul j, $6606             ; 66 06 66
0A9C:          : set y, $18               ; 3E 18
0A9E:          : mul j, $1866             ; 66 66 18
0AA1:          : sub w, $1E               ; 60 1E
0AA3:          : call.gt $666B            ; 30 6B 66
0AA6:          : mul j, $6666             ; 66 66 66
0AA9:          : push i                   ; 06
0AAA:          : cpy w, a                 ; 3C
0AAB:          : load y, j                ; 18
0AAC:          : mul j, $7F66             ; 66 66 7F
0AAF:          : load y, j                ; 18
0AB0:          : mul j, $0018             ; 66 18 00
0AB3:          : nop                      ; 00
0AB4:          : nop                      ; 00
0AB5:          : nop                      ; 00
0AB6:          : nop                      ; 00
0AB7:          : nop                      ; 00
0AB8:          : nop                      ; 00
0AB9:          : nop                      ; 00
0ABA:          : nop                      ; FE
0ABB:          : set y, $66               ; 3E 66(f)
0ABD:          : mul j, $1800             ; 66 00 18
0AC0:          : load y, j                ; 18
0AC1:          : nop                      ; 00
0AC2:          : pop i                    ; 10
0AC3:          : load y, j                ; 18
0AC4:          : nop                      ; 00
0AC5:          : load y, j                ; 18
0AC6:          : push i                   ; 06
0AC7:          : mul j, $0618             ; 66 18 06
0ACA:          : mul j, $6630             ; 66 30 66
0ACD:          : mul j, $6618             ; 66 18 66
0AD0:          : mul j, $1818             ; 66 18 18
0AD3:          : call.gt $1800            ; 30 00 18
0AD6:          : nop                      ; 00
0AD7:          : dec x                    ; 79
0AD8:          : mul j, $6666             ; 66 66 66
0ADB:          : mul j, $0606             ; 66 06 06
0ADE:          : mul j, $1866             ; 66 66 18
0AE1:          : mul j, $0636             ; 66 36 06
0AE4:          : mul a, $66               ; 63 66(f)
0AE6:          : mul j, $6606             ; 66 06 66
0AE9:          : cpy a, y                 ; 36
0AEA:          : mul j, $6618             ; 66 18 66
0AED:          : cpy w, a                 ; 3C
0AEE:          : inc i                    ; 77
0AEF:          : mul j, $0618             ; 66 18 06
0AF2:          : pop y                    ; 0C
0AF3:          : sub w, $30               ; 60 30(0)
0AF5:          : nop                      ; 00
0AF6:          : nop                      ; 00
0AF7:          : nop                      ; 00
0AF8:          : mul j, $6666             ; 66 66 66
0AFB:          : mul j, $1806             ; 66 06 18
0AFE:          : dec w                    ; 7C
0AFF:          : mul j, $6018             ; 66 18 60
0B02:          : cpy a, y                 ; 36
0B03:          : call.gt $666B            ; 30 6B 66
0B06:          : mul j, $6666             ; 66 66 66
0B09:          : push i                   ; 06
0B0A:          : sub w, $18               ; 60 18
0B0C:          : mul j, $3E3C             ; 66 3C 3E
0B0F:          : cpy w, a                 ; 3C
0B10:          : dec w                    ; 7C
0B11:          : pop y                    ; 0C
0B12:          : nop                      ; 00
0B13:          : nop                      ; 00
0B14:          : nop                      ; 00
0B15:          : nop                      ; 00
0B16:          : nop                      ; 00
0B17:          : nop                      ; 00
0B18:          : load y, j                ; 18
0B19:          : nop                      ; 00
0B1A:          : mod a, x                 ; 6C
0B1B:          : load y, j                ; 18
0B1C:          : mul a, x                 ; 62
0B1D:          : nop                      ; FC
0B1E:          : nop                      ; 00
0B1F:          : call.gt $000C            ; 30 0C 00
0B22:          : nop                      ; 00
0B23:          : pop y                    ; 0C
0B24:          : nop                      ; 00
0B25:          : load y, j                ; 18
0B26:          : push y                   ; 02
0B27:          : cpy w, a                 ; 3C
0B28:          : dec i                    ; 7E
0B29:          : dec i                    ; 7E
0B2A:          : cpy w, a                 ; 3C
0B2B:          : inc j                    ; 78
0B2C:          : cpy w, a                 ; 3C
0B2D:          : cpy w, a                 ; 3C
0B2E:          : load y, j                ; 18
0B2F:          : cpy w, a                 ; 3C
0B30:          : cpy w, a                 ; 3C
0B31:          : nop                      ; 00
0B32:          : push f                   ; 08
0B33:          : sub w, $00               ; 60 00
0B35:          : pop y                    ; 0C
0B36:          : load y, j                ; 18
0B37:          : push y                   ; 02
0B38:          : mul j, $3C3E             ; 66 3E 3C
0B3B:          : set y, $7E               ; 3E 7E(~)
0B3D:          : push i                   ; 06
0B3E:          : cpy w, a                 ; 3C
0B3F:          : mul j, $3C3C             ; 66 3C 3C
0B42:          : mul j, $637E             ; 66 7E 63
0B45:          : mul j, $063C             ; 66 3C 06
0B48:          : cpy w, a                 ; 3C
0B49:          : mul j, $183C             ; 66 3C 18
0B4C:          : cpy w, a                 ; 3C
0B4D:          : load y, j                ; 18
0B4E:          : mul a, $66               ; 63 66(f)
0B50:          : load y, j                ; 18
0B51:          : dec i                    ; 7E
0B52:          : cpy w, a                 ; 3C
0B53:          : set w, $3C               ; 40 3C(<)
0B55:          : nop                      ; 00
0B56:          : nop                      ; 00
0B57:          : nop                      ; 00
0B58:          : dec w                    ; 7C
0B59:          : set y, $3C               ; 3E 3C(<)
0B5B:          : dec w                    ; 7C
0B5C:          : dec w                    ; 7C
0B5D:          : load y, j                ; 18
0B5E:          : sub w, $66               ; 60 66(f)
0B60:          : cpy w, a                 ; 3C
0B61:          : mul j, $7866             ; 66 66 78
0B64:          : div j, $3C66             ; 6B 66 3C
0B67:          : set y, $7C               ; 3E 7C(|)
0B69:          : push i                   ; 06
0B6A:          : set y, $30               ; 3E 30(0)
0B6C:          : dec w                    ; 7C
0B6D:          : load y, j                ; 18
0B6E:          : cpy a, y                 ; 36
0B6F:          : mul j, $7E60             ; 66 60 7E
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
0B94:          : nop                      ; 00
0B95:          : nop                      ; 00
0B96:          : nop                      ; 00
0B97:          : cpy w, a                 ; 3C
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
0BA4:          : nop                      ; 00
0BA5:          : nop                      ; 00
0BA6:          : nop                      ; 00
0BA7:          : nop                      ; 00
0BA8:          : sub w, $00               ; 60 00
0BAA:          : nop                      ; 00
0BAB:          : nop                      ; 00
0BAC:          : nop                      ; 00
0BAD:          : nop                      ; 00
0BAE:          : nop                      ; 00
0BAF:          : nop                      ; 00
0BB0:          : nop                      ; 00
0BB1:          : nop                      ; 00
0BB2:          : nop                      ; 00
0BB3:          : nop                      ; 00
0BB4:          : nop                      ; 00
0BB5:          : nop                      ; 00
0BB6:          : nop                      ; FF
0BB7:          : nop                      ; 00
0BB8:          : nop                      ; 00
0BB9:          : nop                      ; 00
0BBA:          : nop                      ; 00
0BBB:          : nop                      ; 00
0BBC:          : nop                      ; 00
0BBD:          : nop                      ; 00
0BBE:          : cpy w, a                 ; 3C
0BBF:          : nop                      ; 00
0BC0:          : nop                      ; 00
0BC1:          : cpy w, a                 ; 3C
0BC2:          : nop                      ; 00
0BC3:          : nop                      ; 00
0BC4:          : nop                      ; 00
0BC5:          : nop                      ; 00
0BC6:          : nop                      ; 00
0BC7:          : push i                   ; 06
0BC8:          : sub w, $00               ; 60 00
0BCA:          : nop                      ; 00
0BCB:          : nop                      ; 00
0BCC:          : nop                      ; 00
0BCD:          : nop                      ; 00
0BCE:          : nop                      ; 00
0BCF:          : nop                      ; 00
0BD0:          : cpy w, a                 ; 3C
0BD1:          : nop                      ; 00
0BD2:          : nop                      ; 00
0BD3:          : nop                      ; 00
0BD4:          : nop                      ; 00
0BD5:          : nop                      ; 00
0BD6:          : nop                      ; 00
0BD7:          : dec j                    ; 7F
0BD8:          : call.gt $3231            ; 30 31 32
0BDB:          : call.nz $3534            ; 33 34 35
0BDE:          : cpy a, y                 ; 36
0BDF:          : cpy a, z                 ; 37
0BE0:          : cpy a, w                 ; 38
0BE1:          : cpy x, a                 ; 39
0BE2:          : sub a, $62               ; 61 62(b)
0BE4:          : mul a, $64               ; 63 64(d)
0BE6:          : mul i, $6766             ; 65 66 67
0BE9:          : div a, $69               ; 68 69(i)
0BEB:          : div i, $6C6B             ; 6A 6B 6C
0BEE:          : mod a, $6E               ; 6D 6E(n)
0BF0:          : mod i, $7170             ; 6F 70 71
0BF3:          : inc x                    ; 72
0BF4:          : inc y                    ; 73
0BF5:          : inc z                    ; 74
0BF6:          : inc w                    ; 75
0BF7:          : inc a                    ; 76
0BF8:          : inc i                    ; 77
0BF9:          : inc j                    ; 78
0BFA:          : dec x                    ; 79
0BFB:          : dec y                    ; 7A
0BFC:          : set a, $42               ; 41 42(B)
0BFE:          : set j, $4544             ; 43 44 45
0C01:          : add a, z                 ; 46
0C02:          : add a, w                 ; 47
0C03:          : add i, j                 ; 48
0C04:          : add i, a                 ; 49
0C05:          : add i, z                 ; 4A
0C06:          : add i, w                 ; 4B
0C07:          : add j, a                 ; 4C
0C08:          : add j, x                 ; 4D
0C09:          : add j, y                 ; 4E
0C0A:          : add i, $5150             ; 4F 50 51
0C0D:          : add y, $53               ; 52 53(S)
0C0F:          : add w, $55               ; 54 55(U)
0C11:          : sub a, x                 ; 56
0C12:          : sub a, y                 ; 57
0C13:          : sub a, z                 ; 58
0C14:          : sub a, w                 ; 59
0C15:          : sub i, $5155             ; 5A
0C16:          : store i, a               ; 20
0C17:          : store i, w               ; 21
0C18:          : store i, z               ; 22
0C19:          : store j, a               ; 23
0C1A:          : store j, x               ; 24
0C1B:          : store j, y               ; 25
0C1C:          : store $2827, x           ; 26 27 28
0C1F:          : store $2B40, w           ; 29 40 2B
0C22:          : call $3D2A               ; 2D 2A 3D  ERROR $3D2A
0C25:          : call.neq $2E2C           ; 2F 2C 2E
0C28:          : cpy z, a                 ; 3B
0C29:          : sub j, $2E2C             ; 5B
0C2A:          : sub x, $7B               ; 5D 7B({)
0C2C:          : dec a                    ; 7D
0C2D:          : set z, $3C               ; 3F 3C(<)
0C2F:          : set y, $3A               ; 3E 3A(:)
0C31:          : dec j                    ; 7F
0C32:          : dec j                    ; 7F
0C33:          : dec j                    ; 7F
0C34:          : dec j                    ; 7F
0C35:          : dec j                    ; 7F
0C36:          : dec j                    ; 7F
0C37:          : dec j                    ; 7F
0C38:          : dec j                    ; 7F
0C39:          : dec j                    ; 7F
0C3A:          : dec j                    ; 7F
0C3B:          : dec j                    ; 7F
0C3C:          : dec j                    ; 7F
0C3D:          : dec j                    ; 7F
0C3E:          : dec j                    ; 7F
0C3F:          : dec j                    ; 7F
0C40:          : dec j                    ; 7F
0C41:          : dec j                    ; 7F
0C42:          : dec j                    ; 7F
0C43:          : dec j                    ; 7F
0C44:          : dec j                    ; 7F
