0400:          : nop                      ; F8
0401:          : push j                   ; 07
0402:          : pop w                    ; 0E
0403:          : push w                   ; 04
0404:          : load w, $C304            ; 1C 04 C3
0407:          : push w                   ; 04
0408:          : add i, w                 ; 4B
0409:          : push w                   ; 04
040A:          : store j, y               ; 25
040B:          : push w                   ; 04
040C:          : cmp a, x                 ; 80
040D:          : push w                   ; 04
040E:          : pop a                    ; 0F
040F:          : pop j                    ; 11
0410:          : pop i                    ; 10
0411: LBL_1041 : dec a                    ; 7D
0412:          : push a                   ; 05
0413:          : load a, j                ; 16
0414:          : store i, a               ; 20
0415:          : pop a                    ; 0F
0416:          : inc i                    ; 77
0417:          : inc j                    ; 78
0418:          : cmp a                    ; 84
0419:          : rjmp.nz $F8              ; DD F8     LBL_1041 $0411
041B:          : return                   ; 34
041C:          : pop j                    ; 11
041D:          : pop a                    ; 0F
041E:          : pop i                    ; 10
041F: LBL_1055 : store i, a               ; 20
0420:          : inc i                    ; 77
0421:          : dec j                    ; 7F
0422:          : rjmp.nz $FD              ; DD FD     LBL_1055 $041F
0424:          : return                   ; 34
0425:          : pop a                    ; 0F
0426:          : pop y                    ; 0C
0427:          : pop x                    ; 0B
0428:          : cmpi x, $28              ; 89 28(()
042A:          : rjmp.gt $1E              ; D7 1E     LBL_1096 $0448
042C:          : cmpi y, $20              ; 8A 20
042E:          : rjmp.gt $1A              ; D7 1A     LBL_1096 $0448
0430:          : cmpi a, $20              ; 8D 20
0432:          : rjmp.lt $16              ; D9 16     LBL_1096 $0448
0434:          : cmpi a, $7F              ; 8D 7F()
0436:          : rjmp.gt $12              ; D7 12     LBL_1096 $0448
0438:          : set j, $0000             ; 43 00 00
043B:          : add j, y                 ; 4E
043C:          : mul j, $0028             ; 66 28 00
043F:          : add j, x                 ; 4D
0440:          : add j, $8000             ; 50 00 80
0443:          : store j, a               ; 23
0444:          : set a, $01               ; 41 01
0446:          : rjmp $04                 ; D1 04     LBL_1098 $044A
0448: LBL_1096 : set a, $00               ; 41 00
044A: LBL_1098 : return                   ; 34
044B:          : pop j                    ; 11
044C:          : pop y                    ; 0C
044D:          : pop x                    ; 0B
044E: LBL_1102 : load a, j                ; 16
044F:          : cmp a                    ; 84
0450:          : rjmp.z $2F               ; DB 2F(/)  LBL_1151 $047F
0452:          : push z                   ; 03
0453:          : push w                   ; 04
0454:          : cmpi x, $28              ; 89 28(()
0456:          : rjmp.gt $1E              ; D7 1E     LBL_1140 $0474
0458:          : cmpi y, $20              ; 8A 20
045A:          : rjmp.gt $1A              ; D7 1A     LBL_1140 $0474
045C:          : cmpi a, $20              ; 8D 20
045E:          : rjmp.lt $16              ; D9 16     LBL_1140 $0474
0460:          : cmpi a, $7F              ; 8D 7F()
0462:          : rjmp.gt $12              ; D7 12     LBL_1140 $0474
0464:          : set j, $0000             ; 43 00 00
0467:          : add j, y                 ; 4E
0468:          : mul j, $0028             ; 66 28 00
046B:          : add j, x                 ; 4D
046C:          : add j, $8000             ; 50 00 80
046F:          : store j, a               ; 23
0470:          : set a, $01               ; 41 01
0472:          : rjmp $04                 ; D1 04     LBL_1142 $0476
0474: LBL_1140 : set a, $00               ; 41 00
0476: LBL_1142 : pop w                    ; 0E
0477:          : pop z                    ; 0D
0478:          : cmp a                    ; 84
0479:          : rjmp.z $06               ; DB 06     LBL_1151 $047F
047B:          : inc j                    ; 78
047C:          : inc x                    ; 72
047D:          : rjmp $D1                 ; D1 D1     LBL_1102 $044E
047F: LBL_1151 : return                   ; 34
0480:          : pop a                    ; 0F
0481:          : pop y                    ; 0C
0482:          : pop x                    ; 0B
0483: FUN_1155 : cmpi a, $0A              ; 8D 0A
0485:          : rjmp.lt $0B              ; D9 0B     LBL_1168 $0490
0487:          : cmpi a, $64              ; 8D 64(d)
0489:          : rjmp.lt $06              ; D9 06     LBL_1167 $048F
048B:          : inc x                    ; 72
048C:          : inc x                    ; 72
048D:          : rjmp $03                 ; D1 03     LBL_1168 $0490
048F: LBL_1167 : inc x                    ; 72
0490: LBL_1168 : cpy z, a                 ; 3B
0491:          : mod a, $0A               ; 6D 0A
0493:          : add a, $30               ; 55 30(0)
0495:          : push z                   ; 03
0496:          : cmpi x, $28              ; 89 28(()
0498:          : rjmp.gt $1E              ; D7 1E     LBL_1206 $04B6
049A:          : cmpi y, $20              ; 8A 20
049C:          : rjmp.gt $1A              ; D7 1A     LBL_1206 $04B6
049E:          : cmpi a, $20              ; 8D 20
04A0:          : rjmp.lt $16              ; D9 16     LBL_1206 $04B6
04A2:          : cmpi a, $7F              ; 8D 7F()
04A4:          : rjmp.gt $12              ; D7 12     LBL_1206 $04B6
04A6:          : set j, $0000             ; 43 00 00
04A9:          : add j, y                 ; 4E
04AA:          : mul j, $0028             ; 66 28 00
04AD:          : add j, x                 ; 4D
04AE:          : add j, $8000             ; 50 00 80
04B1:          : store j, a               ; 23
04B2:          : set a, $01               ; 41 01
04B4:          : rjmp $04                 ; D1 04     LBL_1208 $04B8
04B6: LBL_1206 : set a, $00               ; 41 00
04B8: LBL_1208 : pop z                    ; 0D
04B9:          : dec x                    ; 79
04BA:          : cpy a, z                 ; 37
04BB:          : div a, $0A               ; 68 0A
04BD:          : cmp a                    ; 84
04BE:          : rjmp.z $04               ; DB 04     LBL_1218 $04C2
04C0:          : rjmp $D0                 ; D1 D0     LBL_1168 $0490
04C2: LBL_1218 : return                   ; 34
04C3:          : pop a                    ; 0F
04C4:          : set i, $8000             ; 42 00 80
04C7:          : set j, $2800             ; 43 00 28
04CA:          : call $041F               ; 2D 1F 04  LBL_1055 $041F
04CD:          : return                   ; 34
04CE:          : nop                      ; 00
04CF:          : nop                      ; 00
04D0:          : nop                      ; 00
04D1:          : nop                      ; 00
04D2:          : nop                      ; 00
04D3:          : nop                      ; 00
04D4:          : nop                      ; 00
04D5:          : nop                      ; 00
04D6:          : cmp a, x                 ; 80
04D7:          : cpy z, a                 ; 3B
04D8:          : set z, $42               ; 3F 42(B)
04DA:          : nop                      ; FF
04DB:          : not w                    ; AA
04DC:          : jmp $0000, x             ; CC 00 00  ERROR $0000
04DF:          : nop                      ; 00
04E0: FUN_1248 : set i, $0511             ; 42 11 05
04E3:          : store $0000, i           ; 2B 00 00
04E6:          : set i, $0514             ; 42 14 05
04E9:          : store $0002, i           ; 2B 02 00
04EC:          : set i, $057C             ; 42 7C 05
04EF:          : store $0004, i           ; 2B 04 00
04F2:          : set i, $05E6             ; 42 E6 05
04F5:          : store $0006, i           ; 2B 06 00
04F8:          : set i, $05F2             ; 42 F2 05
04FB:          : store $0008, i           ; 2B 08 00
04FE:          : set i, $05FB             ; 42 FB 05
0501:          : store $000A, i           ; 2B 0A 00
0504:          : set i, $05FB             ; 42 FB 05
0507:          : store $000C, i           ; 2B 0C 00
050A:          : set i, $05F4             ; 42 F4 05
050D:          : store $000E, i           ; 2B 0E 00
0510:          : return                   ; 34
0511:          : jmp $0877                ; C9 77 08  LBL_2167 $0877
0514:          : load a, $002C            ; 1D 2C 00
0517:          : cpy x, a                 ; 39
0518:          : cmpi a, $E8              ; 8D E8
051A:          : jmp.gt $0547             ; D6 47 05  LBL_1351 $0547
051D:          : jmp.eq $0566             ; D2 66 05  LBL_1382 $0566
0520:          : not x                    ; A7
0521:          : and x, $E0               ; 99 E0
0523:          : shr x, $02               ; BA 02
0525:          : load a, $04D8            ; 1D D8 04
0528:          : add a, x                 ; 44
0529:          : store $001E, a           ; 2A 1E 00
052C:          : neg a                    ; 71
052D:          : store $0021, a           ; 2A 21 00
0530:          : load a, $04D9            ; 1D D9 04
0533:          : add a, x                 ; 44
0534:          : store $001F, a           ; 2A 1F 00
0537:          : neg a                    ; 71
0538:          : store $0022, a           ; 2A 22 00
053B:          : load a, $04DA            ; 1D DA 04
053E:          : add a, x                 ; 44
053F:          : store $0020, a           ; 2A 20 00
0542:          : neg a                    ; 71
0543:          : store $0023, a           ; 2A 23 00
0546:          : resume                   ; EA
0547: LBL_1351 : set a, $3B               ; 41 3B(;)
0549:          : store $001D, a           ; 2A 1D 00
054C:          : set a, $3F               ; 41 3F(?)
054E:          : store $001E, a           ; 2A 1E 00
0551:          : set a, $42               ; 41 42(B)
0553:          : store $001F, a           ; 2A 1F 00
0556:          : set a, $FE               ; 41 FE
0558:          : store $0020, a           ; 2A 20 00
055B:          : set a, $FE               ; 41 FE
055D:          : store $0021, a           ; 2A 21 00
0560:          : set a, $FE               ; 41 FE
0562:          : store $0022, a           ; 2A 22 00
0565:          : resume                   ; EA
0566: LBL_1382 : set a, $00               ; 41 00
0568:          : store $001D, a           ; 2A 1D 00
056B:          : store $001E, a           ; 2A 1E 00
056E:          : store $001F, a           ; 2A 1F 00
0571:          : store $0020, a           ; 2A 20 00
0574:          : store $0021, a           ; 2A 21 00
0577:          : store $0022, a           ; 2A 22 00
057A:          : resume                   ; EA
057B:          : resume                   ; EA
057C:          : load a, $04D7            ; 1D D7 04
057F:          : load x, $04DA            ; 19 DA 04
0582:          : cmp a, x                 ; 80
0583:          : jmp.lt $0594             ; D8 94 05  LBL_1428 $0594
0586:          : jmp.gt $059B             ; D6 9B 05  LBL_1435 $059B
0589:          : load a, $00E1            ; 1D E1 00
058C:          : mod a, $7F               ; 6D 7F()
058E:          : store $04DA, a           ; 2A DA 04
0591:          : jmp $059F                ; C9 9F 05  LBL_1439 $059F
0594: LBL_1428 : inc a                    ; 76
0595:          : store $04D7, a           ; 2A D7 04
0598:          : jmp $059F                ; C9 9F 05  LBL_1439 $059F
059B: LBL_1435 : dec a                    ; 7D
059C:          : store $04D7, a           ; 2A D7 04
059F: LBL_1439 : load a, $04D8            ; 1D D8 04
05A2:          : load x, $04DB            ; 19 DB 04
05A5:          : cmp a, x                 ; 80
05A6:          : jmp.lt $05B7             ; D8 B7 05  LBL_1463 $05B7
05A9:          : jmp.gt $05BE             ; D6 BE 05  LBL_1470 $05BE
05AC:          : load a, $00E1            ; 1D E1 00
05AF:          : mod a, $7F               ; 6D 7F()
05B1:          : store $04DB, a           ; 2A DB 04
05B4:          : jmp $05C2                ; C9 C2 05  LBL_1474 $05C2
05B7: LBL_1463 : inc a                    ; 76
05B8:          : store $04D8, a           ; 2A D8 04
05BB:          : jmp $05C2                ; C9 C2 05  LBL_1474 $05C2
05BE: LBL_1470 : dec a                    ; 7D
05BF:          : store $04D8, a           ; 2A D8 04
05C2: LBL_1474 : load a, $04D9            ; 1D D9 04
05C5:          : load x, $04DC            ; 19 DC 04
05C8:          : cmp a, x                 ; 80
05C9:          : jmp.lt $05DA             ; D8 DA 05  LBL_1498 $05DA
05CC:          : jmp.gt $05E1             ; D6 E1 05  LBL_1505 $05E1
05CF:          : load a, $00E1            ; 1D E1 00
05D2:          : mod a, $7F               ; 6D 7F()
05D4:          : store $04DC, a           ; 2A DC 04
05D7:          : jmp $05E5                ; C9 E5 05  LBL_1509 $05E5
05DA: LBL_1498 : inc a                    ; 76
05DB:          : store $04D9, a           ; 2A D9 04
05DE:          : jmp $05C2                ; C9 C2 05  LBL_1474 $05C2
05E1: LBL_1505 : dec a                    ; 7D
05E2:          : store $04D9, a           ; 2A D9 04
05E5: LBL_1509 : resume                   ; EA
05E6:          : load a, $0034            ; 1D 34 00
05E9:          : store $04CE, a           ; 2A CE 04
05EC:          : set a, $00               ; 41 00
05EE:          : store $0034, a           ; 2A 34 00
05F1:          : resume                   ; EA
05F2:          : nop                      ; 00
05F3:          : resume                   ; EA
05F4:          : nop                      ; 00
05F5:          : dbn $4C48                ; F2 48 4C
05F8:          : int $FF                  ; E9 FF
05FA:          : resume                   ; EA
05FB:          : dbn $4C44                ; F2 44 4C
05FE:          : nop                      ; 00
05FF:          : resume                   ; EA
0600: FUN_1536 : set a, $44               ; 41 44(D)
0602:          : store $84C1, a           ; 2A C1 84
0605:          : set a, $58               ; 41 58(X)
0607:          : store $84C2, a           ; 2A C2 84
060A:          : set a, $38               ; 41 38(8)
060C:          : store $84C3, a           ; 2A C3 84
060F:          : set a, $2F               ; 41 2F(/)
0611:          : store $84C5, a           ; 2A C5 84
0614:          : set a, $2F               ; 41 2F(/)
0616:          : store $84C6, a           ; 2A C6 84
0619:          : set a, $2F               ; 41 2F(/)
061B:          : store $84C7, a           ; 2A C7 84
061E:          : return                   ; 34
061F: FUN_1567 : load x, $002F            ; 19 2F 00
0622:          : cmpbit x, $40            ; 90 40(@)
0624:          : jmp.z $062A              ; DA 2A 06  LBL_1578 $062A
0627:          : jmp $0638                ; C9 38 06  LBL_1592 $0638
062A: LBL_1578 : set x, $20               ; 3D 20
062C:          : store $84C5, x           ; 26 C5 84
062F:          : store $84C6, x           ; 26 C6 84
0632:          : store $84C7, x           ; 26 C7 84
0635:          : jmp $0643                ; C9 43 06  LBL_1603 $0643
0638: LBL_1592 : set x, $2F               ; 3D 2F(/)
063A:          : store $84C5, x           ; 26 C5 84
063D:          : store $84C6, x           ; 26 C6 84
0640:          : store $84C7, x           ; 26 C7 84
0643: LBL_1603 : return                   ; 34
0644:          : sub w, $06               ; 60 06
0646:          : div a, x                 ; 67
0647:          : push i                   ; 06
0648:          : jmp $1706, a             ; D0 06 17  ERROR $1706
064B:          : push j                   ; 07
064C:          : set j, $4F07             ; 43 07 4F
064F:          : push j                   ; 07
0650:          : sub a, x                 ; 56
0651:          : push j                   ; 07
0652:          : inc z                    ; 74
0653:          : push j                   ; 07
0654:          : dec z                    ; 7B
0655:          : push j                   ; 07
0656:          : cmp a                    ; 84
0657:          : push j                   ; 07
0658:          : cmpbit a, $07            ; 94 07
065A:          : and z, $07               ; 9B 07
065C:          : rol z                    ; C1
065D:          : push j                   ; 07
065E:          : rol w                    ; C2
065F:          : push j                   ; 07
0660:          : set a, $00               ; 41 00
0662:          : store $04CE, a           ; 2A CE 04
0665:          : nop                      ; 00
0666:          : return                   ; 34
0667:          : set a, $00               ; 41 00
0669:          : store $04CE, a           ; 2A CE 04
066C:          : set a, $01               ; 41 01
066E:          : store $04CF, a           ; 2A CF 04
0671:          : set a, $20               ; 41 20
0673:          : store $8269, a           ; 2A 69 82
0676:          : set a, $20               ; 41 20
0678:          : store $826A, a           ; 2A 6A 82
067B:          : set a, $20               ; 41 20
067D:          : store $826B, a           ; 2A 6B 82
0680:          : set a, $20               ; 41 20
0682:          : store $826C, a           ; 2A 6C 82
0685:          : set a, $20               ; 41 20
0687:          : store $826D, a           ; 2A 6D 82
068A:          : set a, $20               ; 41 20
068C:          : store $826E, a           ; 2A 6E 82
068F:          : set a, $20               ; 41 20
0691:          : store $8291, a           ; 2A 91 82
0694:          : set a, $20               ; 41 20
0696:          : store $8292, a           ; 2A 92 82
0699:          : set a, $20               ; 41 20
069B:          : store $8293, a           ; 2A 93 82
069E:          : set a, $20               ; 41 20
06A0:          : store $8294, a           ; 2A 94 82
06A3:          : set a, $20               ; 41 20
06A5:          : store $8295, a           ; 2A 95 82
06A8:          : set a, $20               ; 41 20
06AA:          : store $8296, a           ; 2A 96 82
06AD:          : set a, $00               ; 41 00
06AF:          : store $04D0, a           ; 2A D0 04
06B2:          : set i, $D400             ; 42 00 D4
06B5:          : store $04D1, i           ; 2B D1 04
06B8:          : set a, $FF               ; 41 FF
06BA:          : store $04D3, a           ; 2A D3 04
06BD:          : set a, $FF               ; 41 FF
06BF:          : store $0037, a           ; 2A 37 00
06C2:          : set i, $D400             ; 42 00 D4
06C5:          : store $0038, i           ; 2B 38 00
06C8:          : set a, $01               ; 41 01
06CA:          : store $003A, a           ; 2A 3A 00
06CD:          : int $D0                  ; E9 D0
06CF:          : return                   ; 34
06D0: FUN_1744 : set a, $00               ; 41 00
06D2:          : store $04CE, a           ; 2A CE 04
06D5:          : set a, $00               ; 41 00
06D7:          : store $04CF, a           ; 2A CF 04
06DA:          : set a, $49               ; 41 49(I)
06DC:          : store $8269, a           ; 2A 69 82
06DF:          : set a, $4E               ; 41 4E(N)
06E1:          : store $826A, a           ; 2A 6A 82
06E4:          : set a, $53               ; 41 53(S)
06E6:          : store $826B, a           ; 2A 6B 82
06E9:          : set a, $45               ; 41 45(E)
06EB:          : store $826C, a           ; 2A 6C 82
06EE:          : set a, $52               ; 41 52(R)
06F0:          : store $826D, a           ; 2A 6D 82
06F3:          : set a, $54               ; 41 54(T)
06F5:          : store $826E, a           ; 2A 6E 82
06F8:          : set a, $46               ; 41 46(F)
06FA:          : store $8291, a           ; 2A 91 82
06FD:          : set a, $4C               ; 41 4C(L)
06FF:          : store $8292, a           ; 2A 92 82
0702:          : set a, $4F               ; 41 4F(O)
0704:          : store $8293, a           ; 2A 93 82
0707:          : set a, $50               ; 41 50(P)
0709:          : store $8294, a           ; 2A 94 82
070C:          : set a, $50               ; 41 50(P)
070E:          : store $8295, a           ; 2A 95 82
0711:          : set a, $59               ; 41 59(Y)
0713:          : store $8296, a           ; 2A 96 82
0716:          : return                   ; 34
0717:          : load a, $00E1            ; 1D E1 00
071A:          : store $04D7, a           ; 2A D7 04
071D:          : load a, $00E1            ; 1D E1 00
0720:          : store $04D8, a           ; 2A D8 04
0723:          : load a, $00E1            ; 1D E1 00
0726:          : store $04D9, a           ; 2A D9 04
0729:          : load a, $0036            ; 1D 36 00
072C:          : set x, $02               ; 3D 02
072E:          : set y, $02               ; 3E 02
0730:          : call $0483               ; 2D 83 04  FUN_1155 $0483
0733:          : load a, $0037            ; 1D 37 00
0736:          : set x, $07               ; 3D 07
0738:          : set y, $02               ; 3E 02
073A:          : call $0483               ; 2D 83 04  FUN_1155 $0483
073D:          : set a, $00               ; 41 00
073F:          : store $04CE, a           ; 2A CE 04
0742:          : return                   ; 34
0743:          : set a, $00               ; 41 00
0745:          : store $04CE, a           ; 2A CE 04
0748:          : load a, $04D0            ; 1D D0 04
074B:          : bcall $0654, a           ; E4 54 06
074E:          : return                   ; 34
074F:          : set a, $00               ; 41 00
0751:          : store $04CE, a           ; 2A CE 04
0754:          : nop                      ; 00
0755:          : return                   ; 34
0756:          : load a, $00E1            ; 1D E1 00
0759:          : mod a, $7F               ; 6D 7F()
075B:          : store $04D7, a           ; 2A D7 04
075E:          : load a, $00E1            ; 1D E1 00
0761:          : mod a, $7F               ; 6D 7F()
0763:          : store $04D8, a           ; 2A D8 04
0766:          : load a, $00E1            ; 1D E1 00
0769:          : mod a, $7F               ; 6D 7F()
076B:          : store $04D9, a           ; 2A D9 04
076E:          : set a, $00               ; 41 00
0770:          : store $04CE, a           ; 2A CE 04
0773:          : return                   ; 34
0774:          : set a, $00               ; 41 00
0776:          : store $04CE, a           ; 2A CE 04
0779:          : nop                      ; 00
077A:          : return                   ; 34
077B:          : set a, $01               ; 41 01
077D:          : store $04D0, a           ; 2A D0 04
0780:          : call $0788               ; 2D 88 07  FUN_1928 $0788
0783:          : return                   ; 34
0784:          : call $0788               ; 2D 88 07  FUN_1928 $0788
0787:          : return                   ; 34
0788: FUN_1928 : load i, $04D1            ; 1E D1 04
078B:          : load a, i                ; 13
078C:          : inc i                    ; 77
078D:          : store $04D1, i           ; 2B D1 04
0790:          : bcall $0658, a           ; E4 58 06
0793:          : return                   ; 34
0794:          : nop                      ; 00
0795:          : set a, $03               ; 41 03
0797:          : store $04D0, a           ; 2A D0 04
079A:          : return                   ; 34
079B:          : load i, $04D1            ; 1E D1 04
079E:          : load z, i                ; 14
079F:          : inc i                    ; 77
07A0:          : store $0038, z           ; 28 38 00
07A3:          : load z, i                ; 14
07A4:          : store $0039, z           ; 28 39 00
07A7:          : load i, $04D1            ; 1E D1 04
07AA:          : inc i                    ; 77
07AB:          : inc i                    ; 77
07AC:          : store $04D1, i           ; 2B D1 04
07AF:          : load a, $04D3            ; 1D D3 04
07B2:          : inc a                    ; 76
07B3:          : store $04D3, a           ; 2A D3 04
07B6:          : store $0037, a           ; 2A 37 00
07B9:          : set a, $01               ; 41 01
07BB:          : store $003A, a           ; 2A 3A 00
07BE:          : int $D0                  ; E9 D0
07C0:          : return                   ; 34
07C1:          : return                   ; 34
07C2:          : set a, $03               ; 41 03
07C4:          : store $04D0, a           ; 2A D0 04
07C7:          : set i, $05FB             ; 42 FB 05
07CA:          : store $0002, i           ; 2B 02 00
07CD:          : set i, $05FB             ; 42 FB 05
07D0:          : store $0004, i           ; 2B 04 00
07D3:          : set i, $05FB             ; 42 FB 05
07D6:          : store $0006, i           ; 2B 06 00
07D9:          : set i, $05FB             ; 42 FB 05
07DC:          : store $0008, i           ; 2B 08 00
07DF:          : set i, $05F4             ; 42 F4 05
07E2:          : store $000E, i           ; 2B 0E 00
07E5:          : set i, $1400             ; 42 00 14
07E8:          : store $0000, i           ; 2B 00 00
07EB:          : dbn $5252                ; F2 52 52
07EE:          : int $FF                  ; E9 FF
07F0:          : return                   ; 34
07F1:          : load a, $04CE            ; 1D CE 04
07F4:          : bcall $0644, a           ; E4 44 06
07F7:          : return                   ; 34
07F8:          : call $04E0               ; 2D E0 04  FUN_1248 $04E0
07FB:          : set a, $00               ; 41 00
07FD:          : store $0080, a           ; 2A 80 00
0800:          : set a, $01               ; 41 01
0802:          : store $0081, a           ; 2A 81 00
0805:          : set a, $02               ; 41 02
0807:          : store $0082, a           ; 2A 82 00
080A:          : set a, $03               ; 41 03
080C:          : store $0083, a           ; 2A 83 00
080F:          : set a, $04               ; 41 04
0811:          : store $0084, a           ; 2A 84 00
0814:          : set a, $05               ; 41 05
0816:          : store $0085, a           ; 2A 85 00
0819:          : set a, $06               ; 41 06
081B:          : store $0086, a           ; 2A 86 00
081E:          : set a, $07               ; 41 07
0820:          : store $0087, a           ; 2A 87 00
0823:          : set a, $08               ; 41 08
0825:          : store $0088, a           ; 2A 88 00
0828:          : set a, $35               ; 41 35(5)
082A:          : store $00B5, a           ; 2A B5 00
082D:          : set a, $46               ; 41 46(F)
082F:          : store $00A0, a           ; 2A A0 00
0832:          : set a, $47               ; 41 47(G)
0834:          : store $00A1, a           ; 2A A1 00
0837:          : set a, $48               ; 41 48(H)
0839:          : store $00A2, a           ; 2A A2 00
083C:          : set a, $49               ; 41 49(I)
083E:          : store $00A3, a           ; 2A A3 00
0841:          : set a, $4A               ; 41 4A(J)
0843:          : store $00A4, a           ; 2A A4 00
0846:          : set a, $4B               ; 41 4B(K)
0848:          : store $00A5, a           ; 2A A5 00
084B:          : set a, $4C               ; 41 4C(L)
084D:          : store $00A6, a           ; 2A A6 00
0850:          : set a, $4D               ; 41 4D(M)
0852:          : store $00A7, a           ; 2A A7 00
0855:          : set a, $4E               ; 41 4E(N)
0857:          : store $00A8, a           ; 2A A8 00
085A:          : set a, $4F               ; 41 4F(O)
085C:          : store $00A9, a           ; 2A A9 00
085F:          : set i, $08CD             ; 42 CD 08
0862:          : store $0030, i           ; 2B 30 00
0865:          : set a, $00               ; 41 00
0867:          : store $0019, a           ; 2A 19 00
086A:          : set a, $01               ; 41 01
086C:          : store $0018, a           ; 2A 18 00
086F:          : set a, $00               ; 41 00
0871:          : store $00E0, a           ; 2A E0 00
0874:          : rti                      ; F5
0875:          : int $FE                  ; E9 FE
0877: LBL_2167 : set i, $8000             ; 42 00 80
087A:          : set j, $2800             ; 43 00 28
087D:          : set a, $20               ; 41 20
087F:          : call $041F               ; 2D 1F 04  LBL_1055 $041F
0882:          : call $0411               ; 2D 11 04  LBL_1041 $0411
0885:          : call $0600               ; 2D 00 06  FUN_1536 $0600
0888:          : call $06D0               ; 2D D0 06  FUN_1744 $06D0
088B:          : set i, $C000             ; 42 00 C0
088E:          : store $04DD, i           ; 2B DD 04
0891:          : set x, $00               ; 3D 00
0893:          : store $04DF, x           ; 26 DF 04
0896:          : set x, $0F               ; 3D 0F
0898:          : store $003E, x           ; 26 3E 00
089B:          : set x, $3C               ; 3D 3C(<)
089D:          : store $003F, x           ; 26 3F 00
08A0:          : set a, $48               ; 41 48(H)
08A2:          : store $8000, a           ; 2A 00 80
08A5:          : set a, $69               ; 41 69(i)
08A7:          : store $8001, a           ; 2A 01 80
08AA:          : set a, $52               ; 41 52(R)
08AC:          : store $8032, a           ; 2A 32 80
08AF:          : set a, $46               ; 41 46(F)
08B1:          : store $8015, a           ; 2A 15 80
08B4:          : set a, $4F               ; 41 4F(O)
08B6:          : store $8016, a           ; 2A 16 80
08B9:          : set a, $4F               ; 41 4F(O)
08BB:          : store $8017, a           ; 2A 17 80
08BE: LBL_2238 : call $061F               ; 2D 1F 06  FUN_1567 $061F
08C1:          : load a, $04CE            ; 1D CE 04
08C4:          : cmpi a, $00              ; 8D 00
08C6:          : call.neq $07F1           ; 2F F1 07
08C9:          : jmp $08BE                ; C9 BE 08  LBL_2238 $08BE
08CC:          : nop                      ; 00
08CD:          : nop                      ; 00
08CE:          : load y, j                ; 18
08CF:          : mul j, $186C             ; 66 6C 18
08D2:          : add a, z                 ; 46
08D3:          : cpy a, w                 ; 38
08D4:          : load y, j                ; 18
08D5:          : call.gt $360C            ; 30 0C 36
08D8:          : nop                      ; 00
08D9:          : nop                      ; 00
08DA:          : nop                      ; 00
08DB:          : nop                      ; 00
08DC:          : set w, $3C               ; 40 3C(<)
08DE:          : load y, j                ; 18
08DF:          : cpy w, a                 ; 3C
08E0:          : cpy w, a                 ; 3C
08E1:          : cpy a, w                 ; 38
08E2:          : dec i                    ; 7E
08E3:          : cpy w, a                 ; 3C
08E4:          : dec i                    ; 7E
08E5:          : cpy w, a                 ; 3C
08E6:          : cpy w, a                 ; 3C
08E7:          : nop                      ; 00
08E8:          : nop                      ; 00
08E9:          : sub w, $00               ; 60 00
08EB:          : pop y                    ; 0C
08EC:          : cpy w, a                 ; 3C
08ED:          : cpy w, a                 ; 3C
08EE:          : cpy w, a                 ; 3C
08EF:          : set y, $3C               ; 3E 3C(<)
08F1:          : set y, $7E               ; 3E 7E(~)
08F3:          : dec i                    ; 7E
08F4:          : cpy w, a                 ; 3C
08F5:          : mul j, $603C             ; 66 3C 60
08F8:          : mul j, $6306             ; 66 06 63
08FB:          : mul j, $3E3C             ; 66 3C 3E
08FE:          : cpy w, a                 ; 3C
08FF:          : set y, $3C               ; 3E 3C(<)
0901:          : dec i                    ; 7E
0902:          : mul j, $6366             ; 66 66 63
0905:          : mul j, $7E66             ; 66 66 7E
0908:          : cpy w, a                 ; 3C
0909:          : push y                   ; 02
090A:          : cpy w, a                 ; 3C
090B:          : pop i                    ; 10
090C:          : nop                      ; 00
090D:          : load y, j                ; 18
090E:          : nop                      ; 00
090F:          : push i                   ; 06
0910:          : nop                      ; 00
0911:          : sub w, $00               ; 60 00
0913:          : mod j, $0600             ; 70 00 06
0916:          : load y, j                ; 18
0917:          : sub w, $06               ; 60 06
0919:          : cpy a, w                 ; 38
091A:          : nop                      ; 00
091B:          : nop                      ; 00
091C:          : nop                      ; 00
091D:          : nop                      ; 00
091E:          : nop                      ; 00
091F:          : nop                      ; 00
0920:          : nop                      ; 00
0921:          : load y, j                ; 18
0922:          : nop                      ; 00
0923:          : nop                      ; 00
0924:          : nop                      ; 00
0925:          : nop                      ; 00
0926:          : nop                      ; 00
0927:          : nop                      ; 00
0928:          : nop                      ; 00
0929:          : nop                      ; 00
092A:          : nop                      ; 00
092B:          : nop                      ; 00
092C:          : nop                      ; 00
092D:          : nop                      ; 00
092E:          : load y, j                ; 18
092F:          : mul j, $7CFE             ; 66 FE 7C
0932:          : mul j, $186C             ; 66 6C 18
0935:          : load y, j                ; 18
0936:          : load y, j                ; 18
0937:          : load w, $0010            ; 1C 10 00
093A:          : nop                      ; 00
093B:          : nop                      ; 00
093C:          : sub w, $66               ; 60 66(f)
093E:          : load w, $6666            ; 1C 66 66
0941:          : cpy w, a                 ; 3C
0942:          : push i                   ; 06
0943:          : mul j, $6660             ; 66 60 66
0946:          : mul j, $1818             ; 66 18 18
0949:          : call.gt $1800            ; 30 00 18
094C:          : mul a, x                 ; 62
094D:          : set i, $6666             ; 42 66 66
0950:          : mul j, $0666             ; 66 66 06
0953:          : push i                   ; 06
0954:          : mul j, $1866             ; 66 66 18
0957:          : sub w, $36               ; 60 36(6)
0959:          : push i                   ; 06
095A:          : inc i                    ; 77
095B:          : mul j, $6666             ; 66 66 66
095E:          : mul j, $6666             ; 66 66 66
0961:          : load y, j                ; 18
0962:          : mul j, $6366             ; 66 66 63
0965:          : mul j, $6066             ; 66 66 60
0968:          : pop y                    ; 0C
0969:          : push i                   ; 06
096A:          : call.gt $0038            ; 30 38 00
096D:          : call.gt $0600            ; 30 00 06
0970:          : nop                      ; 00
0971:          : sub w, $00               ; 60 00
0973:          : load y, j                ; 18
0974:          : nop                      ; 00
0975:          : push i                   ; 06
0976:          : nop                      ; 00
0977:          : nop                      ; 00
0978:          : push i                   ; 06
0979:          : call.gt $0000            ; 30 00 00
097C:          : nop                      ; 00
097D:          : nop                      ; 00
097E:          : nop                      ; 00
097F:          : nop                      ; 00
0980:          : nop                      ; 00
0981:          : load y, j                ; 18
0982:          : nop                      ; 00
0983:          : nop                      ; 00
0984:          : nop                      ; 00
0985:          : nop                      ; 00
0986:          : nop                      ; 00
0987:          : nop                      ; 00
0988:          : nop                      ; 00
0989:          : nop                      ; 00
098A:          : nop                      ; 00
098B:          : nop                      ; 00
098C:          : nop                      ; 00
098D:          : nop                      ; 00
098E:          : load y, j                ; 18
098F:          : mul j, $066C             ; 66 6C 06
0992:          : call.gt $186C            ; 30 6C 18
0995:          : pop y                    ; 0C
0996:          : call.gt $107F            ; 30 7F 10
0999:          : nop                      ; 00
099A:          : nop                      ; 00
099B:          : nop                      ; 00
099C:          : call.gt $1866            ; 30 66 18
099F:          : sub w, $60               ; 60 60(`)
09A1:          : cpy a, y                 ; 36
09A2:          : set y, $06               ; 3E 06
09A4:          : call.gt $6666            ; 30 66 66
09A7:          : load y, j                ; 18
09A8:          : load y, j                ; 18
09A9:          : load y, j                ; 18
09AA:          : dec i                    ; 7E
09AB:          : call.gt $9960            ; 30 60 99
09AE:          : mul j, $0666             ; 66 66 06
09B1:          : mul j, $0606             ; 66 06 06
09B4:          : push i                   ; 06
09B5:          : mul j, $6018             ; 66 18 60
09B8:          : load i, $7F06            ; 1E 06 7F
09BB:          : mod i, j                 ; 6E
09BC:          : mul j, $6666             ; 66 66 66
09BF:          : mul j, $1806             ; 66 06 18
09C2:          : mul j, $6366             ; 66 66 63
09C5:          : cpy w, a                 ; 3C
09C6:          : mul j, $0C30             ; 66 30 0C
09C9:          : pop y                    ; 0C
09CA:          : call.gt $006C            ; 30 6C 00
09CD:          : nop                      ; 00
09CE:          : cpy w, a                 ; 3C
09CF:          : set y, $3C               ; 3E 3C(<)
09D1:          : dec w                    ; 7C
09D2:          : cpy w, a                 ; 3C
09D3:          : cpy w, a                 ; 3C
09D4:          : dec w                    ; 7C
09D5:          : set y, $1C               ; 3E 1C
09D7:          : mod j, $3066             ; 70 66 30
09DA:          : cpy a, z                 ; 37
09DB:          : set y, $3C               ; 3E 3C(<)
09DD:          : set y, $7C               ; 3E 7C(|)
09DF:          : inc a                    ; 76
09E0:          : dec w                    ; 7C
09E1:          : cpy w, a                 ; 3C
09E2:          : mul j, $6B66             ; 66 66 6B
09E5:          : mul j, $7E66             ; 66 66 7E
09E8:          : nop                      ; 00
09E9:          : nop                      ; 00
09EA:          : nop                      ; 00
09EB:          : nop                      ; 00
09EC:          : nop                      ; 00
09ED:          : nop                      ; 00
09EE:          : load y, j                ; 18
09EF:          : nop                      ; 00
09F0:          : mod a, x                 ; 6C
09F1:          : cpy w, a                 ; 3C
09F2:          : load y, j                ; 18
09F3:          : cpy a, w                 ; 38
09F4:          : nop                      ; 00
09F5:          : pop y                    ; 0C
09F6:          : call.gt $7C1C            ; 30 1C 7C
09F9:          : nop                      ; 00
09FA:          : dec i                    ; 7E
09FB:          : nop                      ; 00
09FC:          : load y, j                ; 18
09FD:          : mul j, $3818             ; 66 18 38
0A00:          : cpy a, w                 ; 38
0A01:          : cpy a, y                 ; 36
0A02:          : sub w, $3E               ; 60 3E(>)
0A04:          : load y, j                ; 18
0A05:          : cpy w, a                 ; 3C
0A06:          : dec w                    ; 7C
0A07:          : nop                      ; 00
0A08:          : nop                      ; 00
0A09:          : pop y                    ; 0C
0A0A:          : nop                      ; 00
0A0B:          : sub w, $38               ; 60 38(8)
0A0D:          : or w, $7E                ; A5 7E(~)
0A0F:          : set y, $06               ; 3E 06
0A11:          : mul j, $1E1E             ; 66 1E 1E
0A14:          : inc a                    ; 76
0A15:          : dec i                    ; 7E
0A16:          : load y, j                ; 18
0A17:          : sub w, $0E               ; 60 0E
0A19:          : push i                   ; 06
0A1A:          : div j, $667E             ; 6B 7E 66
0A1D:          : set y, $66               ; 3E 66(f)
0A1F:          : set y, $3C               ; 3E 3C(<)
0A21:          : load y, j                ; 18
0A22:          : mul j, $6B66             ; 66 66 6B
0A25:          : load y, j                ; 18
0A26:          : cpy w, a                 ; 3C
0A27:          : load y, j                ; 18
0A28:          : pop y                    ; 0C
0A29:          : load y, j                ; 18
0A2A:          : call.gt $0044            ; 30 44 00
0A2D:          : nop                      ; 00
0A2E:          : sub w, $66               ; 60 66(f)
0A30:          : mul j, $6666             ; 66 66 66
0A33:          : load y, j                ; 18
0A34:          : mul j, $1866             ; 66 66 18
0A37:          : sub w, $36               ; 60 36(6)
0A39:          : call.gt $667F            ; 30 7F 66
0A3C:          : mul j, $6666             ; 66 66 66
0A3F:          : pop w                    ; 0E
0A40:          : push i                   ; 06
0A41:          : load y, j                ; 18
0A42:          : mul j, $6B66             ; 66 66 6B
0A45:          : cpy w, a                 ; 3C
0A46:          : mul j, $0030             ; 66 30 00
0A49:          : nop                      ; 00
0A4A:          : nop                      ; 00
0A4B:          : nop                      ; 00
0A4C:          : nop                      ; 00
0A4D:          : nop                      ; 00
0A4E:          : load y, j                ; 18
0A4F:          : nop                      ; 00
0A50:          : mod a, x                 ; 6C
0A51:          : sub w, $0C               ; 60 0C
0A53:          : clc                      ; EC
0A54:          : nop                      ; 00
0A55:          : pop y                    ; 0C
0A56:          : call.gt $1036            ; 30 36 10
0A59:          : load y, j                ; 18
0A5A:          : nop                      ; 00
0A5B:          : nop                      ; 00
0A5C:          : pop y                    ; 0C
0A5D:          : mul j, $0C18             ; 66 18 0C
0A60:          : sub w, $7E               ; 60 7E(~)
0A62:          : sub w, $66               ; 60 66(f)
0A64:          : load y, j                ; 18
0A65:          : mul j, $1860             ; 66 60 18
0A68:          : load y, j                ; 18
0A69:          : load y, j                ; 18
0A6A:          : dec i                    ; 7E
0A6B:          : call.gt $A518            ; 30 18 A5
0A6E:          : mul j, $0666             ; 66 66 06
0A71:          : mul j, $0606             ; 66 06 06
0A74:          : mul j, $1866             ; 66 66 18
0A77:          : sub w, $1E               ; 60 1E
0A79:          : push i                   ; 06
0A7A:          : mul a, $76               ; 63 76(v)
0A7C:          : mul j, $6606             ; 66 06 66
0A7F:          : load i, $1860            ; 1E 60 18
0A82:          : mul j, $7F66             ; 66 66 7F
0A85:          : cpy w, a                 ; 3C
0A86:          : load y, j                ; 18
0A87:          : pop y                    ; 0C
0A88:          : pop y                    ; 0C
0A89:          : call.gt $0030            ; 30 30 00
0A8C:          : nop                      ; 00
0A8D:          : nop                      ; 00
0A8E:          : dec w                    ; 7C
0A8F:          : mul j, $6606             ; 66 06 66
0A92:          : set y, $18               ; 3E 18
0A94:          : mul j, $1866             ; 66 66 18
0A97:          : sub w, $1E               ; 60 1E
0A99:          : call.gt $666B            ; 30 6B 66
0A9C:          : mul j, $6666             ; 66 66 66
0A9F:          : push i                   ; 06
0AA0:          : cpy w, a                 ; 3C
0AA1:          : load y, j                ; 18
0AA2:          : mul j, $7F66             ; 66 66 7F
0AA5:          : load y, j                ; 18
0AA6:          : mul j, $0018             ; 66 18 00
0AA9:          : nop                      ; 00
0AAA:          : nop                      ; 00
0AAB:          : nop                      ; 00
0AAC:          : nop                      ; 00
0AAD:          : nop                      ; 00
0AAE:          : nop                      ; 00
0AAF:          : nop                      ; 00
0AB0:          : nop                      ; FE
0AB1:          : set y, $66               ; 3E 66(f)
0AB3:          : mul j, $1800             ; 66 00 18
0AB6:          : load y, j                ; 18
0AB7:          : nop                      ; 00
0AB8:          : pop i                    ; 10
0AB9:          : load y, j                ; 18
0ABA:          : nop                      ; 00
0ABB:          : load y, j                ; 18
0ABC:          : push i                   ; 06
0ABD:          : mul j, $0618             ; 66 18 06
0AC0:          : mul j, $6630             ; 66 30 66
0AC3:          : mul j, $6618             ; 66 18 66
0AC6:          : mul j, $1818             ; 66 18 18
0AC9:          : call.gt $1800            ; 30 00 18
0ACC:          : nop                      ; 00
0ACD:          : dec x                    ; 79
0ACE:          : mul j, $6666             ; 66 66 66
0AD1:          : mul j, $0606             ; 66 06 06
0AD4:          : mul j, $1866             ; 66 66 18
0AD7:          : mul j, $0636             ; 66 36 06
0ADA:          : mul a, $66               ; 63 66(f)
0ADC:          : mul j, $6606             ; 66 06 66
0ADF:          : cpy a, y                 ; 36
0AE0:          : mul j, $6618             ; 66 18 66
0AE3:          : cpy w, a                 ; 3C
0AE4:          : inc i                    ; 77
0AE5:          : mul j, $0618             ; 66 18 06
0AE8:          : pop y                    ; 0C
0AE9:          : sub w, $30               ; 60 30(0)
0AEB:          : nop                      ; 00
0AEC:          : nop                      ; 00
0AED:          : nop                      ; 00
0AEE:          : mul j, $6666             ; 66 66 66
0AF1:          : mul j, $1806             ; 66 06 18
0AF4:          : dec w                    ; 7C
0AF5:          : mul j, $6018             ; 66 18 60
0AF8:          : cpy a, y                 ; 36
0AF9:          : call.gt $666B            ; 30 6B 66
0AFC:          : mul j, $6666             ; 66 66 66
0AFF:          : push i                   ; 06
0B00:          : sub w, $18               ; 60 18
0B02:          : mul j, $3E3C             ; 66 3C 3E
0B05:          : cpy w, a                 ; 3C
0B06:          : dec w                    ; 7C
0B07:          : pop y                    ; 0C
0B08:          : nop                      ; 00
0B09:          : nop                      ; 00
0B0A:          : nop                      ; 00
0B0B:          : nop                      ; 00
0B0C:          : nop                      ; 00
0B0D:          : nop                      ; 00
0B0E:          : load y, j                ; 18
0B0F:          : nop                      ; 00
0B10:          : mod a, x                 ; 6C
0B11:          : load y, j                ; 18
0B12:          : mul a, x                 ; 62
0B13:          : nop                      ; FC
0B14:          : nop                      ; 00
0B15:          : call.gt $000C            ; 30 0C 00
0B18:          : nop                      ; 00
0B19:          : pop y                    ; 0C
0B1A:          : nop                      ; 00
0B1B:          : load y, j                ; 18
0B1C:          : push y                   ; 02
0B1D:          : cpy w, a                 ; 3C
0B1E:          : dec i                    ; 7E
0B1F:          : dec i                    ; 7E
0B20:          : cpy w, a                 ; 3C
0B21:          : inc j                    ; 78
0B22:          : cpy w, a                 ; 3C
0B23:          : cpy w, a                 ; 3C
0B24:          : load y, j                ; 18
0B25:          : cpy w, a                 ; 3C
0B26:          : cpy w, a                 ; 3C
0B27:          : nop                      ; 00
0B28:          : push f                   ; 08
0B29:          : sub w, $00               ; 60 00
0B2B:          : pop y                    ; 0C
0B2C:          : load y, j                ; 18
0B2D:          : push y                   ; 02
0B2E:          : mul j, $3C3E             ; 66 3E 3C
0B31:          : set y, $7E               ; 3E 7E(~)
0B33:          : push i                   ; 06
0B34:          : cpy w, a                 ; 3C
0B35:          : mul j, $3C3C             ; 66 3C 3C
0B38:          : mul j, $637E             ; 66 7E 63
0B3B:          : mul j, $063C             ; 66 3C 06
0B3E:          : cpy w, a                 ; 3C
0B3F:          : mul j, $183C             ; 66 3C 18
0B42:          : cpy w, a                 ; 3C
0B43:          : load y, j                ; 18
0B44:          : mul a, $66               ; 63 66(f)
0B46:          : load y, j                ; 18
0B47:          : dec i                    ; 7E
0B48:          : cpy w, a                 ; 3C
0B49:          : set w, $3C               ; 40 3C(<)
0B4B:          : nop                      ; 00
0B4C:          : nop                      ; 00
0B4D:          : nop                      ; 00
0B4E:          : dec w                    ; 7C
0B4F:          : set y, $3C               ; 3E 3C(<)
0B51:          : dec w                    ; 7C
0B52:          : dec w                    ; 7C
0B53:          : load y, j                ; 18
0B54:          : sub w, $66               ; 60 66(f)
0B56:          : cpy w, a                 ; 3C
0B57:          : mul j, $7866             ; 66 66 78
0B5A:          : div j, $3C66             ; 6B 66 3C
0B5D:          : set y, $7C               ; 3E 7C(|)
0B5F:          : push i                   ; 06
0B60:          : set y, $30               ; 3E 30(0)
0B62:          : dec w                    ; 7C
0B63:          : load y, j                ; 18
0B64:          : cpy a, y                 ; 36
0B65:          : mul j, $7E60             ; 66 60 7E
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
0B85:          : nop                      ; 00
0B86:          : nop                      ; 00
0B87:          : nop                      ; 00
0B88:          : nop                      ; 00
0B89:          : nop                      ; 00
0B8A:          : nop                      ; 00
0B8B:          : nop                      ; 00
0B8C:          : nop                      ; 00
0B8D:          : cpy w, a                 ; 3C
0B8E:          : nop                      ; 00
0B8F:          : nop                      ; 00
0B90:          : nop                      ; 00
0B91:          : nop                      ; 00
0B92:          : nop                      ; 00
0B93:          : nop                      ; 00
0B94:          : nop                      ; 00
0B95:          : nop                      ; 00
0B96:          : nop                      ; 00
0B97:          : nop                      ; 00
0B98:          : nop                      ; 00
0B99:          : nop                      ; 00
0B9A:          : nop                      ; 00
0B9B:          : nop                      ; 00
0B9C:          : nop                      ; 00
0B9D:          : nop                      ; 00
0B9E:          : sub w, $00               ; 60 00
0BA0:          : nop                      ; 00
0BA1:          : nop                      ; 00
0BA2:          : nop                      ; 00
0BA3:          : nop                      ; 00
0BA4:          : nop                      ; 00
0BA5:          : nop                      ; 00
0BA6:          : nop                      ; 00
0BA7:          : nop                      ; 00
0BA8:          : nop                      ; 00
0BA9:          : nop                      ; 00
0BAA:          : nop                      ; 00
0BAB:          : nop                      ; 00
0BAC:          : nop                      ; FF
0BAD:          : nop                      ; 00
0BAE:          : nop                      ; 00
0BAF:          : nop                      ; 00
0BB0:          : nop                      ; 00
0BB1:          : nop                      ; 00
0BB2:          : nop                      ; 00
0BB3:          : nop                      ; 00
0BB4:          : cpy w, a                 ; 3C
0BB5:          : nop                      ; 00
0BB6:          : nop                      ; 00
0BB7:          : cpy w, a                 ; 3C
0BB8:          : nop                      ; 00
0BB9:          : nop                      ; 00
0BBA:          : nop                      ; 00
0BBB:          : nop                      ; 00
0BBC:          : nop                      ; 00
0BBD:          : push i                   ; 06
0BBE:          : sub w, $00               ; 60 00
0BC0:          : nop                      ; 00
0BC1:          : nop                      ; 00
0BC2:          : nop                      ; 00
0BC3:          : nop                      ; 00
0BC4:          : nop                      ; 00
0BC5:          : nop                      ; 00
0BC6:          : cpy w, a                 ; 3C
0BC7:          : nop                      ; 00
0BC8:          : nop                      ; 00
0BC9:          : nop                      ; 00
0BCA:          : nop                      ; 00
0BCB:          : nop                      ; 00
0BCC:          : nop                      ; 00
0BCD:          : dec j                    ; 7F
0BCE:          : call.gt $3231            ; 30 31 32
0BD1:          : call.nz $3534            ; 33 34 35
0BD4:          : cpy a, y                 ; 36
0BD5:          : cpy a, z                 ; 37
0BD6:          : cpy a, w                 ; 38
0BD7:          : cpy x, a                 ; 39
0BD8:          : sub a, $62               ; 61 62(b)
0BDA:          : mul a, $64               ; 63 64(d)
0BDC:          : mul i, $6766             ; 65 66 67
0BDF:          : div a, $69               ; 68 69(i)
0BE1:          : div i, $6C6B             ; 6A 6B 6C
0BE4:          : mod a, $6E               ; 6D 6E(n)
0BE6:          : mod i, $7170             ; 6F 70 71
0BE9:          : inc x                    ; 72
0BEA:          : inc y                    ; 73
0BEB:          : inc z                    ; 74
0BEC:          : inc w                    ; 75
0BED:          : inc a                    ; 76
0BEE:          : inc i                    ; 77
0BEF:          : inc j                    ; 78
0BF0:          : dec x                    ; 79
0BF1:          : dec y                    ; 7A
0BF2:          : set a, $42               ; 41 42(B)
0BF4:          : set j, $4544             ; 43 44 45
0BF7:          : add a, z                 ; 46
0BF8:          : add a, w                 ; 47
0BF9:          : add i, j                 ; 48
0BFA:          : add i, a                 ; 49
0BFB:          : add i, z                 ; 4A
0BFC:          : add i, w                 ; 4B
0BFD:          : add j, a                 ; 4C
0BFE:          : add j, x                 ; 4D
0BFF:          : add j, y                 ; 4E
0C00:          : add i, $5150             ; 4F 50 51
0C03:          : add y, $53               ; 52 53(S)
0C05:          : add w, $55               ; 54 55(U)
0C07:          : sub a, x                 ; 56
0C08:          : sub a, y                 ; 57
0C09:          : sub a, z                 ; 58
0C0A:          : sub a, w                 ; 59
0C0B:          : sub i, $5155             ; 5A
0C0C:          : store i, a               ; 20
0C0D:          : store i, w               ; 21
0C0E:          : store i, z               ; 22
0C0F:          : store j, a               ; 23
0C10:          : store j, x               ; 24
0C11:          : store j, y               ; 25
0C12:          : store $2827, x           ; 26 27 28
0C15:          : store $2B40, w           ; 29 40 2B
0C18:          : call $3D2A               ; 2D 2A 3D  ERROR $3D2A
0C1B:          : call.neq $2E2C           ; 2F 2C 2E
0C1E:          : cpy z, a                 ; 3B
0C1F:          : sub j, $2E2C             ; 5B
0C20:          : sub x, $7B               ; 5D 7B({)
0C22:          : dec a                    ; 7D
0C23:          : set z, $3C               ; 3F 3C(<)
0C25:          : set y, $3A               ; 3E 3A(:)
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
0C33:          : dec j                    ; 7F
0C34:          : dec j                    ; 7F
0C35:          : dec j                    ; 7F
0C36:          : dec j                    ; 7F
0C37:          : dec j                    ; 7F
0C38:          : dec j                    ; 7F
0C39:          : dec j                    ; 7F
0C3A:          : dec j                    ; 7F
