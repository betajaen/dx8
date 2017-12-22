0400:          : push a                   ; 05
0401:          : push i                   ; 06
0402:          : push f                   ; 08
0403:          : push w                   ; 04
0404:          : load a, j                ; 16
0405:          : push w                   ; 04
0406:          : load j, $0F04            ; 1F 04 0F
0409:          : pop j                    ; 11
040A:          : pop i                    ; 10
040B: LBL_1035 : dec a                    ; 77
040C:          : push a                   ; 05
040D:          : load a, j                ; 16
040E:          : store i, a               ; 20
040F:          : pop a                    ; 0F
0410:          : inc i                    ; 75
0411:          : inc j                    ; 76
0412:          : cmp a                    ; 82
0413:          : rjmp.nz $F8              ; CC F8     LBL_1035 $040B
0415:          : return                   ; 34
0416:          : pop j                    ; 11
0417:          : pop a                    ; 0F
0418:          : pop i                    ; 10
0419: LBL_1049 : store i, a               ; 20
041A:          : inc i                    ; 75
041B:          : dec j                    ; 7D
041C:          : rjmp.nz $FD              ; CC FD     LBL_1049 $0419
041E:          : return                   ; 34
041F:          : pop i                    ; 10
0420:          : pop j                    ; 11
0421:          : div i, $0400             ; 67 00 04
0424:          : div j, $0400             ; 68 00 04
0427:          : add i, $0080             ; 4F 80 00
042A:          : store i, z               ; 22
042B:          : return                   ; 34
042C:          : nop                      ; 00
042D:          : nop                      ; 00
042E:          : nop                      ; 00
042F:          : nop                      ; 00
0430:          : nop                      ; 00
0431:          : nop                      ; 00
0432:          : nop                      ; 00
0433:          : nop                      ; 00
0434:          : cmp a, z                 ; 80
0435:          : cpy z, a                 ; 3B
0436:          : set z, $42               ; 3F 42(B)
0438:          : nop                      ; FF
0439:          : xor a, z                 ; AA
043A: LBL_1082 : rjmp.nz $00              ; CC 00     LBL_1082 $043A
043C:          : nop                      ; 00
043D:          : nop                      ; 00
043E: FUN_1086 : set i, $046F             ; 42 6F 04
0441:          : store $0000, i           ; 2B 00 00
0444:          : set i, $0472             ; 42 72 04
0447:          : store $0002, i           ; 2B 02 00
044A:          : set i, $0473             ; 42 73 04
044D:          : store $0004, i           ; 2B 04 00
0450:          : set i, $0475             ; 42 75 04
0453:          : store $0006, i           ; 2B 06 00
0456:          : set i, $0481             ; 42 81 04
0459:          : store $0008, i           ; 2B 08 00
045C:          : set i, $048A             ; 42 8A 04
045F:          : store $000A, i           ; 2B 0A 00
0462:          : set i, $048A             ; 42 8A 04
0465:          : store $000C, i           ; 2B 0C 00
0468:          : set i, $0483             ; 42 83 04
046B:          : store $000E, i           ; 2B 0E 00
046E:          : return                   ; 34
046F:          : jmp $0695                ; B8 95 06  LBL_1685 $0695
0472:          : resume                   ; CF
0473:          : nop                      ; 00
0474:          : resume                   ; CF
0475:          : load a, $0023            ; 1D 23 00
0478:          : store $042C, a           ; 2A 2C 04
047B:          : set a, $00               ; 41 00
047D:          : store $0023, a           ; 2A 23 00
0480:          : resume                   ; CF
0481:          : nop                      ; 00
0482:          : resume                   ; CF
0483:          : nop                      ; 00
0484:          : dbn $4C48                ; D5 48 4C
0487:          : int $FF                  ; CE FF
0489:          : resume                   ; CF
048A:          : dbn $4C44                ; D5 44 4C
048D:          : nop                      ; 00
048E:          : resume                   ; CF
048F:          : return                   ; 34
0490:          : return                   ; 34
0491:          : xor y, $04               ; AD 04
0493:          : not w                    ; B4
0494:          : push w                   ; 04
0495:          : nop                      ; E1
0496:          : push w                   ; 04
0497:          : nop                      ; EC
0498:          : push w                   ; 04
0499:          : push w                   ; 04
049A:          : push a                   ; 05
049B:          : pop i                    ; 10
049C:          : push a                   ; 05
049D:          : load x, j                ; 17
049E:          : push a                   ; 05
049F:          : cpy a, x                 ; 35
04A0:          : push a                   ; 05
04A1:          : cpy w, a                 ; 3C
04A2:          : push a                   ; 05
04A3:          : add a, y                 ; 45
04A4:          : push a                   ; 05
04A5:          : add a, $05               ; 55 05
04A7:          : sub z, $05               ; 5C 05
04A9:          : cmp a                    ; 82
04AA:          : push a                   ; 05
04AB:          : cmp x                    ; 83
04AC:          : push a                   ; 05
04AD:          : set a, $00               ; 41 00
04AF:          : store $042C, a           ; 2A 2C 04
04B2:          : nop                      ; 00
04B3:          : return                   ; 34
04B4:          : set a, $00               ; 41 00
04B6:          : store $042C, a           ; 2A 2C 04
04B9:          : set a, $01               ; 41 01
04BB:          : store $042D, a           ; 2A 2D 04
04BE:          : set a, $00               ; 41 00
04C0:          : store $042E, a           ; 2A 2E 04
04C3:          : set i, $D400             ; 42 00 D4
04C6:          : store $042F, i           ; 2B 2F 04
04C9:          : set a, $FF               ; 41 FF
04CB:          : store $0431, a           ; 2A 31 04
04CE:          : set a, $FF               ; 41 FF
04D0:          : store $0026, a           ; 2A 26 00
04D3:          : set i, $D400             ; 42 00 D4
04D6:          : store $0027, i           ; 2B 27 00
04D9:          : set a, $01               ; 41 01
04DB:          : store $0029, a           ; 2A 29 00
04DE:          : int $D0                  ; CE D0
04E0:          : return                   ; 34
04E1:          : set a, $00               ; 41 00
04E3:          : store $042C, a           ; 2A 2C 04
04E6:          : set a, $00               ; 41 00
04E8:          : store $042D, a           ; 2A 2D 04
04EB:          : return                   ; 34
04EC:          : load a, $00E1            ; 1D E1 00
04EF:          : store $0435, a           ; 2A 35 04
04F2:          : load a, $00E1            ; 1D E1 00
04F5:          : store $0436, a           ; 2A 36 04
04F8:          : load a, $00E1            ; 1D E1 00
04FB:          : store $0437, a           ; 2A 37 04
04FE:          : set a, $00               ; 41 00
0500:          : store $042C, a           ; 2A 2C 04
0503:          : return                   ; 34
0504:          : set a, $00               ; 41 00
0506:          : store $042C, a           ; 2A 2C 04
0509:          : load a, $042E            ; 1D 2E 04
050C:          : callt $04A1, a           ; C0 A1 04
050F:          : return                   ; 34
0510:          : set a, $00               ; 41 00
0512:          : store $042C, a           ; 2A 2C 04
0515:          : nop                      ; 00
0516:          : return                   ; 34
0517:          : load a, $00E1            ; 1D E1 00
051A:          : mod a, $7F               ; 6A 7F()
051C:          : store $0435, a           ; 2A 35 04
051F:          : load a, $00E1            ; 1D E1 00
0522:          : mod a, $7F               ; 6A 7F()
0524:          : store $0436, a           ; 2A 36 04
0527:          : load a, $00E1            ; 1D E1 00
052A:          : mod a, $7F               ; 6A 7F()
052C:          : store $0437, a           ; 2A 37 04
052F:          : set a, $00               ; 41 00
0531:          : store $042C, a           ; 2A 2C 04
0534:          : return                   ; 34
0535:          : set a, $00               ; 41 00
0537:          : store $042C, a           ; 2A 2C 04
053A:          : nop                      ; 00
053B:          : return                   ; 34
053C:          : set a, $01               ; 41 01
053E:          : store $042E, a           ; 2A 2E 04
0541:          : call $0549               ; 2D 49 05  FUN_1353 $0549
0544:          : return                   ; 34
0545:          : call $0549               ; 2D 49 05  FUN_1353 $0549
0548:          : return                   ; 34
0549: FUN_1353 : load i, $042F            ; 1E 2F 04
054C:          : load a, i                ; 13
054D:          : inc i                    ; 75
054E:          : store $042F, i           ; 2B 2F 04
0551:          : callt $04A5, a           ; C0 A5 04
0554:          : return                   ; 34
0555:          : nop                      ; 00
0556:          : set a, $03               ; 41 03
0558:          : store $042E, a           ; 2A 2E 04
055B:          : return                   ; 34
055C:          : load i, $042F            ; 1E 2F 04
055F:          : load z, i                ; 14
0560:          : inc i                    ; 75
0561:          : store $0027, z           ; 28 27 00
0564:          : load z, i                ; 14
0565:          : store $0028, z           ; 28 28 00
0568:          : load i, $042F            ; 1E 2F 04
056B:          : inc i                    ; 75
056C:          : inc i                    ; 75
056D:          : store $042F, i           ; 2B 2F 04
0570:          : load a, $0431            ; 1D 31 04
0573:          : inc a                    ; 70
0574:          : store $0431, a           ; 2A 31 04
0577:          : store $0026, a           ; 2A 26 00
057A:          : set a, $01               ; 41 01
057C:          : store $0029, a           ; 2A 29 00
057F:          : int $D0                  ; CE D0
0581:          : return                   ; 34
0582:          : return                   ; 34
0583:          : set a, $03               ; 41 03
0585:          : store $042E, a           ; 2A 2E 04
0588:          : set i, $048A             ; 42 8A 04
058B:          : store $0002, i           ; 2B 02 00
058E:          : set i, $048A             ; 42 8A 04
0591:          : store $0004, i           ; 2B 04 00
0594:          : set i, $048A             ; 42 8A 04
0597:          : store $0006, i           ; 2B 06 00
059A:          : set i, $048A             ; 42 8A 04
059D:          : store $0008, i           ; 2B 08 00
05A0:          : set i, $0483             ; 42 83 04
05A3:          : store $000E, i           ; 2B 0E 00
05A6:          : set i, $1400             ; 42 00 14
05A9:          : store $0000, i           ; 2B 00 00
05AC:          : dbn $5252                ; D5 52 52
05AF:          : int $FF                  ; CE FF
05B1:          : return                   ; 34
05B2:          : load a, $042C            ; 1D 2C 04
05B5:          : callt $0491, a           ; C0 91 04
05B8:          : return                   ; 34
05B9: FUN_1465 : set a, $00               ; 41 00
05BB:          : store $0080, a           ; 2A 80 00
05BE:          : set a, $01               ; 41 01
05C0:          : store $0081, a           ; 2A 81 00
05C3:          : set a, $02               ; 41 02
05C5:          : store $0082, a           ; 2A 82 00
05C8:          : set a, $03               ; 41 03
05CA:          : store $0083, a           ; 2A 83 00
05CD:          : set a, $04               ; 41 04
05CF:          : store $0084, a           ; 2A 84 00
05D2:          : set a, $05               ; 41 05
05D4:          : store $0085, a           ; 2A 85 00
05D7:          : set a, $06               ; 41 06
05D9:          : store $0086, a           ; 2A 86 00
05DC:          : set a, $07               ; 41 07
05DE:          : store $0087, a           ; 2A 87 00
05E1:          : set a, $48               ; 41 48(H)
05E3:          : store $00B8, a           ; 2A B8 00
05E6:          : set a, $49               ; 41 49(I)
05E8:          : store $00B9, a           ; 2A B9 00
05EB:          : set a, $4A               ; 41 4A(J)
05ED:          : store $00BA, a           ; 2A BA 00
05F0:          : set a, $4B               ; 41 4B(K)
05F2:          : store $00BB, a           ; 2A BB 00
05F5:          : set a, $4C               ; 41 4C(L)
05F7:          : store $00BC, a           ; 2A BC 00
05FA:          : set a, $4D               ; 41 4D(M)
05FC:          : store $00BD, a           ; 2A BD 00
05FF:          : set a, $35               ; 41 35(5)
0601:          : store $00B5, a           ; 2A B5 00
0604:          : return                   ; 34
0605:          : call $043E               ; 2D 3E 04  FUN_1086 $043E
0608:          : call $05B9               ; 2D B9 05  FUN_1465 $05B9
060B:          : set a, $00               ; 41 00
060D:          : store $00E0, a           ; 2A E0 00
0610:          : push.w $F800             ; 0A 00 F8
0613:          : push.w $06E2             ; 0A E2 06
0616:          : push.b $FF               ; 09 FF
0618:          : set a, $01               ; 41 01
061A:          : callt $0400, a           ; C0 00 04
061D:          : push.w $F8FF             ; 0A FF F8
0620:          : push.w $07E1             ; 0A E1 07
0623:          : push.b $FF               ; 09 FF
0625:          : set a, $01               ; 41 01
0627:          : callt $0400, a           ; C0 00 04
062A:          : push.w $F9FE             ; 0A FE F9
062D:          : push.w $08E0             ; 0A E0 08
0630:          : push.b $FF               ; 09 FF
0632:          : set a, $01               ; 41 01
0634:          : callt $0400, a           ; C0 00 04
0637:          : push.w $FAFD             ; 0A FD FA
063A:          : push.w $09DF             ; 0A DF 09
063D:          : push.b $FF               ; 09 FF
063F:          : set a, $01               ; 41 01
0641:          : callt $0400, a           ; C0 00 04
0644:          : push.w $FBFC             ; 0A FC FB
0647:          : push.w $0ADE             ; 0A DE 0A
064A:          : push.b $FF               ; 09 FF
064C:          : set a, $01               ; 41 01
064E:          : callt $0400, a           ; C0 00 04
0651:          : push.w $FCFB             ; 0A FB FC
0654:          : push.w $0BDD             ; 0A DD 0B
0657:          : push.b $FF               ; 09 FF
0659:          : set a, $01               ; 41 01
065B:          : callt $0400, a           ; C0 00 04
065E:          : push.w $FDFA             ; 0A FA FD
0661:          : push.w $0CDC             ; 0A DC 0C
0664:          : push.b $FF               ; 09 FF
0666:          : set a, $01               ; 41 01
0668:          : callt $0400, a           ; C0 00 04
066B:          : push.w $FEF9             ; 0A F9 FE
066E:          : push.w $0DDB             ; 0A DB 0D
0671:          : push.b $FF               ; 09 FF
0673:          : set a, $01               ; 41 01
0675:          : callt $0400, a           ; C0 00 04
0678:          : push.w $E000             ; 0A 00 E0
067B:          : push.b $78               ; 09 78(x)
067D:          : push.w $0500             ; 0A 00 05
0680:          : set a, $02               ; 41 02
0682:          : callt $0400, a           ; C0 00 04
0685:          : push.w $E500             ; 0A 00 E5
0688:          : push.b $07               ; 09 07
068A:          : push.w $0280             ; 0A 80 02
068D:          : set a, $02               ; 41 02
068F:          : callt $0400, a           ; C0 00 04
0692:          : rti                      ; D8
0693:          : int $FE                  ; CE FE
0695: LBL_1685 : set i, $C000             ; 42 00 C0
0698:          : store $043B, i           ; 2B 3B 04
069B:          : set x, $00               ; 3D 00
069D:          : store $043D, x           ; 26 3D 04
06A0:          : set x, $0F               ; 3D 0F
06A2:          : store $002D, x           ; 26 2D 00
06A5:          : set x, $3C               ; 3D 3C(<)
06A7:          : store $002E, x           ; 26 2E 00
06AA:          : set a, $48               ; 41 48(H)
06AC:          : store $E000, a           ; 2A 00 E0
06AF:          : set a, $69               ; 41 69(i)
06B1:          : store $E001, a           ; 2A 01 E0
06B4:          : set a, $05               ; 41 05
06B6:          : store $E500, a           ; 2A 00 E5
06B9:          : set a, $05               ; 41 05
06BB:          : store $E501, a           ; 2A 01 E5
06BE: LBL_1726 : load a, $042C            ; 1D 2C 04
06C1:          : cmp a, $00               ; 8D 00
06C3:          : call.neq $05B2           ; 2F B2 05
06C6:          : jmp $06BE                ; B8 BE 06  LBL_1726 $06BE
06C9:          : nop                      ; 00
06CA:          : or w, $BF                ; A6 BF
06CC:          : nop                      ; E8
06CD:          : clc                      ; D1
06CE:          : pop i                    ; 10
06CF:          : nop                      ; 00
06D0:          : nop                      ; 00
06D1:          : pop a                    ; 0F
06D2:          : pop j                    ; 11
06D3:          : nop                      ; E3
06D4:          : set z, $00               ; 3F 00
06D6:          : or w, $6B                ; A6 6B(k)
06D8:          : call.nz $5EF5            ; 33 F5 5E
06DB:          : store i, z               ; 22
06DC:          : or a, w                  ; A2
06DD:          : store $F93F, i           ; 2B 3F F9
06E0:          : and a, $44               ; 9E 44(D)
06E2:          : nop                      ; 00
06E3:          : load y, j                ; 18
06E4:          : div i, j                 ; 66
06E5:          : mod i, $4618             ; 6C 18 46
06E8:          : cpy a, w                 ; 38
06E9:          : load y, j                ; 18
06EA:          : call.gt $360C            ; 30 0C 36
06ED:          : nop                      ; 00
06EE:          : nop                      ; 00
06EF:          : nop                      ; 00
06F0:          : nop                      ; 00
06F1:          : set w, $3C               ; 40 3C(<)
06F3:          : load y, j                ; 18
06F4:          : cpy w, a                 ; 3C
06F5:          : cpy w, a                 ; 3C
06F6:          : cpy a, w                 ; 38
06F7:          : cmp a, x                 ; 7E
06F8:          : cpy w, a                 ; 3C
06F9:          : cmp a, x                 ; 7E
06FA:          : cpy w, a                 ; 3C
06FB:          : cpy w, a                 ; 3C
06FC:          : nop                      ; 00
06FD:          : nop                      ; 00
06FE:          : mul a, $00               ; 60 00
0700:          : pop y                    ; 0C
0701:          : cpy w, a                 ; 3C
0702:          : cpy w, a                 ; 3C
0703:          : cpy w, a                 ; 3C
0704:          : set y, $3C               ; 3E 3C(<)
0706:          : set y, $7E               ; 3E 7E(~)
0708:          : cmp a, x                 ; 7E
0709:          : cpy w, a                 ; 3C
070A:          : div i, j                 ; 66
070B:          : cpy w, a                 ; 3C
070C:          : mul a, $66               ; 60 66(f)
070E:          : push i                   ; 06
070F:          : mul j, $3C66             ; 63 66 3C
0712:          : set y, $3C               ; 3E 3C(<)
0714:          : set y, $3C               ; 3E 3C(<)
0716:          : cmp a, x                 ; 7E
0717:          : div i, j                 ; 66
0718:          : div i, j                 ; 66
0719:          : mul j, $6666             ; 63 66 66
071C:          : cmp a, x                 ; 7E
071D:          : cpy w, a                 ; 3C
071E:          : push y                   ; 02
071F:          : cpy w, a                 ; 3C
0720:          : pop i                    ; 10
0721:          : nop                      ; 00
0722:          : load y, j                ; 18
0723:          : nop                      ; 00
0724:          : push i                   ; 06
0725:          : nop                      ; 00
0726:          : mul a, $00               ; 60 00
0728:          : inc a                    ; 70
0729:          : nop                      ; 00
072A:          : push i                   ; 06
072B:          : load y, j                ; 18
072C:          : mul a, $06               ; 60 06
072E:          : cpy a, w                 ; 38
072F:          : nop                      ; 00
0730:          : nop                      ; 00
0731:          : nop                      ; 00
0732:          : nop                      ; 00
0733:          : nop                      ; 00
0734:          : nop                      ; 00
0735:          : nop                      ; 00
0736:          : load y, j                ; 18
0737:          : nop                      ; 00
0738:          : nop                      ; 00
0739:          : nop                      ; 00
073A:          : nop                      ; 00
073B:          : nop                      ; 00
073C:          : nop                      ; 00
073D:          : nop                      ; 00
073E:          : nop                      ; 00
073F:          : nop                      ; 00
0740:          : nop                      ; 00
0741:          : nop                      ; 00
0742:          : nop                      ; 00
0743:          : load y, j                ; 18
0744:          : div i, j                 ; 66
0745:          : nop                      ; FE
0746:          : dec i                    ; 7C
0747:          : div i, j                 ; 66
0748:          : mod i, $1818             ; 6C 18 18
074B:          : load y, j                ; 18
074C:          : load w, $0010            ; 1C 10 00
074F:          : nop                      ; 00
0750:          : nop                      ; 00
0751:          : mul a, $66               ; 60 66(f)
0753:          : load w, $6666            ; 1C 66 66
0756:          : cpy w, a                 ; 3C
0757:          : push i                   ; 06
0758:          : div i, j                 ; 66
0759:          : mul a, $66               ; 60 66(f)
075B:          : div i, j                 ; 66
075C:          : load y, j                ; 18
075D:          : load y, j                ; 18
075E:          : call.gt $1800            ; 30 00 18
0761:          : mul i, $6642             ; 62 42 66
0764:          : div i, j                 ; 66
0765:          : div i, j                 ; 66
0766:          : div i, j                 ; 66
0767:          : push i                   ; 06
0768:          : push i                   ; 06
0769:          : div i, j                 ; 66
076A:          : div i, j                 ; 66
076B:          : load y, j                ; 18
076C:          : mul a, $36               ; 60 36(6)
076E:          : push i                   ; 06
076F:          : dec a                    ; 77
0770:          : div i, j                 ; 66
0771:          : div i, j                 ; 66
0772:          : div i, j                 ; 66
0773:          : div i, j                 ; 66
0774:          : div i, j                 ; 66
0775:          : div i, j                 ; 66
0776:          : load y, j                ; 18
0777:          : div i, j                 ; 66
0778:          : div i, j                 ; 66
0779:          : mul j, $6666             ; 63 66 66
077C:          : mul a, $0C               ; 60 0C
077E:          : push i                   ; 06
077F:          : call.gt $0038            ; 30 38 00
0782:          : call.gt $0600            ; 30 00 06
0785:          : nop                      ; 00
0786:          : mul a, $00               ; 60 00
0788:          : load y, j                ; 18
0789:          : nop                      ; 00
078A:          : push i                   ; 06
078B:          : nop                      ; 00
078C:          : nop                      ; 00
078D:          : push i                   ; 06
078E:          : call.gt $0000            ; 30 00 00
0791:          : nop                      ; 00
0792:          : nop                      ; 00
0793:          : nop                      ; 00
0794:          : nop                      ; 00
0795:          : nop                      ; 00
0796:          : load y, j                ; 18
0797:          : nop                      ; 00
0798:          : nop                      ; 00
0799:          : nop                      ; 00
079A:          : nop                      ; 00
079B:          : nop                      ; 00
079C:          : nop                      ; 00
079D:          : nop                      ; 00
079E:          : nop                      ; 00
079F:          : nop                      ; 00
07A0:          : nop                      ; 00
07A1:          : nop                      ; 00
07A2:          : nop                      ; 00
07A3:          : load y, j                ; 18
07A4:          : div i, j                 ; 66
07A5:          : mod i, $3006             ; 6C 06 30
07A8:          : mod i, $0C18             ; 6C 18 0C
07AB:          : call.gt $107F            ; 30 7F 10
07AE:          : nop                      ; 00
07AF:          : nop                      ; 00
07B0:          : nop                      ; 00
07B1:          : call.gt $1866            ; 30 66 18
07B4:          : mul a, $60               ; 60 60(`)
07B6:          : cpy a, y                 ; 36
07B7:          : set y, $06               ; 3E 06
07B9:          : call.gt $6666            ; 30 66 66
07BC:          : load y, j                ; 18
07BD:          : load y, j                ; 18
07BE:          : load y, j                ; 18
07BF:          : cmp a, x                 ; 7E
07C0:          : call.gt $9960            ; 30 60 99
07C3:          : div i, j                 ; 66
07C4:          : div i, j                 ; 66
07C5:          : push i                   ; 06
07C6:          : div i, j                 ; 66
07C7:          : push i                   ; 06
07C8:          : push i                   ; 06
07C9:          : push i                   ; 06
07CA:          : div i, j                 ; 66
07CB:          : load y, j                ; 18
07CC:          : mul a, $1E               ; 60 1E
07CE:          : push i                   ; 06
07CF:          : cmp a, y                 ; 7F
07D0:          : neg a                    ; 6E
07D1:          : div i, j                 ; 66
07D2:          : div i, j                 ; 66
07D3:          : div i, j                 ; 66
07D4:          : div i, j                 ; 66
07D5:          : push i                   ; 06
07D6:          : load y, j                ; 18
07D7:          : div i, j                 ; 66
07D8:          : div i, j                 ; 66
07D9:          : mul j, $663C             ; 63 3C 66
07DC:          : call.gt $0C0C            ; 30 0C 0C
07DF:          : call.gt $006C            ; 30 6C 00
07E2:          : nop                      ; 00
07E3:          : cpy w, a                 ; 3C
07E4:          : set y, $3C               ; 3E 3C(<)
07E6:          : dec i                    ; 7C
07E7:          : cpy w, a                 ; 3C
07E8:          : cpy w, a                 ; 3C
07E9:          : dec i                    ; 7C
07EA:          : set y, $1C               ; 3E 1C
07EC:          : inc a                    ; 70
07ED:          : div i, j                 ; 66
07EE:          : call.gt $3E37            ; 30 37 3E
07F1:          : cpy w, a                 ; 3C
07F2:          : set y, $7C               ; 3E 7C(|)
07F4:          : inc j                    ; 76
07F5:          : dec i                    ; 7C
07F6:          : cpy w, a                 ; 3C
07F7:          : div i, j                 ; 66
07F8:          : div i, j                 ; 66
07F9:          : mod i, j                 ; 6B
07FA:          : div i, j                 ; 66
07FB:          : div i, j                 ; 66
07FC:          : cmp a, x                 ; 7E
07FD:          : nop                      ; 00
07FE:          : nop                      ; 00
07FF:          : nop                      ; 00
0800:          : nop                      ; 00
0801:          : nop                      ; 00
0802:          : nop                      ; 00
0803:          : load y, j                ; 18
0804:          : nop                      ; 00
0805:          : mod i, $183C             ; 6C 3C 18
0808:          : cpy a, w                 ; 38
0809:          : nop                      ; 00
080A:          : pop y                    ; 0C
080B:          : call.gt $7C1C            ; 30 1C 7C
080E:          : nop                      ; 00
080F:          : cmp a, x                 ; 7E
0810:          : nop                      ; 00
0811:          : load y, j                ; 18
0812:          : div i, j                 ; 66
0813:          : load y, j                ; 18
0814:          : cpy a, w                 ; 38
0815:          : cpy a, w                 ; 38
0816:          : cpy a, y                 ; 36
0817:          : mul a, $3E               ; 60 3E(>)
0819:          : load y, j                ; 18
081A:          : cpy w, a                 ; 3C
081B:          : dec i                    ; 7C
081C:          : nop                      ; 00
081D:          : nop                      ; 00
081E:          : pop y                    ; 0C
081F:          : nop                      ; 00
0820:          : mul a, $38               ; 60 38(8)
0822:          : or z, $7E                ; A5 7E(~)
0824:          : set y, $06               ; 3E 06
0826:          : div i, j                 ; 66
0827:          : load i, $761E            ; 1E 1E 76
082A:          : cmp a, x                 ; 7E
082B:          : load y, j                ; 18
082C:          : mul a, $0E               ; 60 0E
082E:          : push i                   ; 06
082F:          : mod i, j                 ; 6B
0830:          : cmp a, x                 ; 7E
0831:          : div i, j                 ; 66
0832:          : set y, $66               ; 3E 66(f)
0834:          : set y, $3C               ; 3E 3C(<)
0836:          : load y, j                ; 18
0837:          : div i, j                 ; 66
0838:          : div i, j                 ; 66
0839:          : mod i, j                 ; 6B
083A:          : load y, j                ; 18
083B:          : cpy w, a                 ; 3C
083C:          : load y, j                ; 18
083D:          : pop y                    ; 0C
083E:          : load y, j                ; 18
083F:          : call.gt $0044            ; 30 44 00
0842:          : nop                      ; 00
0843:          : mul a, $66               ; 60 66(f)
0845:          : div i, j                 ; 66
0846:          : div i, j                 ; 66
0847:          : div i, j                 ; 66
0848:          : load y, j                ; 18
0849:          : div i, j                 ; 66
084A:          : div i, j                 ; 66
084B:          : load y, j                ; 18
084C:          : mul a, $36               ; 60 36(6)
084E:          : call.gt $667F            ; 30 7F 66
0851:          : div i, j                 ; 66
0852:          : div i, j                 ; 66
0853:          : div i, j                 ; 66
0854:          : pop w                    ; 0E
0855:          : push i                   ; 06
0856:          : load y, j                ; 18
0857:          : div i, j                 ; 66
0858:          : div i, j                 ; 66
0859:          : mod i, j                 ; 6B
085A:          : cpy w, a                 ; 3C
085B:          : div i, j                 ; 66
085C:          : call.gt $0000            ; 30 00 00
085F:          : nop                      ; 00
0860:          : nop                      ; 00
0861:          : nop                      ; 00
0862:          : nop                      ; 00
0863:          : load y, j                ; 18
0864:          : nop                      ; 00
0865:          : mod i, $0C60             ; 6C 60 0C
0868:          : nop                      ; EC
0869:          : nop                      ; 00
086A:          : pop y                    ; 0C
086B:          : call.gt $1036            ; 30 36 10
086E:          : load y, j                ; 18
086F:          : nop                      ; 00
0870:          : nop                      ; 00
0871:          : pop y                    ; 0C
0872:          : div i, j                 ; 66
0873:          : load y, j                ; 18
0874:          : pop y                    ; 0C
0875:          : mul a, $7E               ; 60 7E(~)
0877:          : mul a, $66               ; 60 66(f)
0879:          : load y, j                ; 18
087A:          : div i, j                 ; 66
087B:          : mul a, $18               ; 60 18
087D:          : load y, j                ; 18
087E:          : load y, j                ; 18
087F:          : cmp a, x                 ; 7E
0880:          : call.gt $A518            ; 30 18 A5
0883:          : div i, j                 ; 66
0884:          : div i, j                 ; 66
0885:          : push i                   ; 06
0886:          : div i, j                 ; 66
0887:          : push i                   ; 06
0888:          : push i                   ; 06
0889:          : div i, j                 ; 66
088A:          : div i, j                 ; 66
088B:          : load y, j                ; 18
088C:          : mul a, $1E               ; 60 1E
088E:          : push i                   ; 06
088F:          : mul j, $6676             ; 63 76 66
0892:          : push i                   ; 06
0893:          : div i, j                 ; 66
0894:          : load i, $1860            ; 1E 60 18
0897:          : div i, j                 ; 66
0898:          : div i, j                 ; 66
0899:          : cmp a, y                 ; 7F
089A:          : cpy w, a                 ; 3C
089B:          : load y, j                ; 18
089C:          : pop y                    ; 0C
089D:          : pop y                    ; 0C
089E:          : call.gt $0030            ; 30 30 00
08A1:          : nop                      ; 00
08A2:          : nop                      ; 00
08A3:          : dec i                    ; 7C
08A4:          : div i, j                 ; 66
08A5:          : push i                   ; 06
08A6:          : div i, j                 ; 66
08A7:          : set y, $18               ; 3E 18
08A9:          : div i, j                 ; 66
08AA:          : div i, j                 ; 66
08AB:          : load y, j                ; 18
08AC:          : mul a, $1E               ; 60 1E
08AE:          : call.gt $666B            ; 30 6B 66
08B1:          : div i, j                 ; 66
08B2:          : div i, j                 ; 66
08B3:          : div i, j                 ; 66
08B4:          : push i                   ; 06
08B5:          : cpy w, a                 ; 3C
08B6:          : load y, j                ; 18
08B7:          : div i, j                 ; 66
08B8:          : div i, j                 ; 66
08B9:          : cmp a, y                 ; 7F
08BA:          : load y, j                ; 18
08BB:          : div i, j                 ; 66
08BC:          : load y, j                ; 18
08BD:          : nop                      ; 00
08BE:          : nop                      ; 00
08BF:          : nop                      ; 00
08C0:          : nop                      ; 00
08C1:          : nop                      ; 00
08C2:          : nop                      ; 00
08C3:          : nop                      ; 00
08C4:          : nop                      ; 00
08C5:          : nop                      ; FE
08C6:          : set y, $66               ; 3E 66(f)
08C8:          : div i, j                 ; 66
08C9:          : nop                      ; 00
08CA:          : load y, j                ; 18
08CB:          : load y, j                ; 18
08CC:          : nop                      ; 00
08CD:          : pop i                    ; 10
08CE:          : load y, j                ; 18
08CF:          : nop                      ; 00
08D0:          : load y, j                ; 18
08D1:          : push i                   ; 06
08D2:          : div i, j                 ; 66
08D3:          : load y, j                ; 18
08D4:          : push i                   ; 06
08D5:          : div i, j                 ; 66
08D6:          : call.gt $6666            ; 30 66 66
08D9:          : load y, j                ; 18
08DA:          : div i, j                 ; 66
08DB:          : div i, j                 ; 66
08DC:          : load y, j                ; 18
08DD:          : load y, j                ; 18
08DE:          : call.gt $1800            ; 30 00 18
08E1:          : nop                      ; 00
08E2:          : dec y                    ; 79
08E3:          : div i, j                 ; 66
08E4:          : div i, j                 ; 66
08E5:          : div i, j                 ; 66
08E6:          : div i, j                 ; 66
08E7:          : push i                   ; 06
08E8:          : push i                   ; 06
08E9:          : div i, j                 ; 66
08EA:          : div i, j                 ; 66
08EB:          : load y, j                ; 18
08EC:          : div i, j                 ; 66
08ED:          : cpy a, y                 ; 36
08EE:          : push i                   ; 06
08EF:          : mul j, $6666             ; 63 66 66
08F2:          : push i                   ; 06
08F3:          : div i, j                 ; 66
08F4:          : cpy a, y                 ; 36
08F5:          : div i, j                 ; 66
08F6:          : load y, j                ; 18
08F7:          : div i, j                 ; 66
08F8:          : cpy w, a                 ; 3C
08F9:          : dec a                    ; 77
08FA:          : div i, j                 ; 66
08FB:          : load y, j                ; 18
08FC:          : push i                   ; 06
08FD:          : pop y                    ; 0C
08FE:          : mul a, $30               ; 60 30(0)
0900:          : nop                      ; 00
0901:          : nop                      ; 00
0902:          : nop                      ; 00
0903:          : div i, j                 ; 66
0904:          : div i, j                 ; 66
0905:          : div i, j                 ; 66
0906:          : div i, j                 ; 66
0907:          : push i                   ; 06
0908:          : load y, j                ; 18
0909:          : dec i                    ; 7C
090A:          : div i, j                 ; 66
090B:          : load y, j                ; 18
090C:          : mul a, $36               ; 60 36(6)
090E:          : call.gt $666B            ; 30 6B 66
0911:          : div i, j                 ; 66
0912:          : div i, j                 ; 66
0913:          : div i, j                 ; 66
0914:          : push i                   ; 06
0915:          : mul a, $18               ; 60 18
0917:          : div i, j                 ; 66
0918:          : cpy w, a                 ; 3C
0919:          : set y, $3C               ; 3E 3C(<)
091B:          : dec i                    ; 7C
091C:          : pop y                    ; 0C
091D:          : nop                      ; 00
091E:          : nop                      ; 00
091F:          : nop                      ; 00
0920:          : nop                      ; 00
0921:          : nop                      ; 00
0922:          : nop                      ; 00
0923:          : load y, j                ; 18
0924:          : nop                      ; 00
0925:          : mod i, $6218             ; 6C 18 62
0928:          : nop                      ; FC
0929:          : nop                      ; 00
092A:          : call.gt $000C            ; 30 0C 00
092D:          : nop                      ; 00
092E:          : pop y                    ; 0C
092F:          : nop                      ; 00
0930:          : load y, j                ; 18
0931:          : push y                   ; 02
0932:          : cpy w, a                 ; 3C
0933:          : cmp a, x                 ; 7E
0934:          : cmp a, x                 ; 7E
0935:          : cpy w, a                 ; 3C
0936:          : dec x                    ; 78
0937:          : cpy w, a                 ; 3C
0938:          : cpy w, a                 ; 3C
0939:          : load y, j                ; 18
093A:          : cpy w, a                 ; 3C
093B:          : cpy w, a                 ; 3C
093C:          : nop                      ; 00
093D:          : push f                   ; 08
093E:          : mul a, $00               ; 60 00
0940:          : pop y                    ; 0C
0941:          : load y, j                ; 18
0942:          : push y                   ; 02
0943:          : div i, j                 ; 66
0944:          : set y, $3C               ; 3E 3C(<)
0946:          : set y, $7E               ; 3E 7E(~)
0948:          : push i                   ; 06
0949:          : cpy w, a                 ; 3C
094A:          : div i, j                 ; 66
094B:          : cpy w, a                 ; 3C
094C:          : cpy w, a                 ; 3C
094D:          : div i, j                 ; 66
094E:          : cmp a, x                 ; 7E
094F:          : mul j, $3C66             ; 63 66 3C
0952:          : push i                   ; 06
0953:          : cpy w, a                 ; 3C
0954:          : div i, j                 ; 66
0955:          : cpy w, a                 ; 3C
0956:          : load y, j                ; 18
0957:          : cpy w, a                 ; 3C
0958:          : load y, j                ; 18
0959:          : mul j, $1866             ; 63 66 18
095C:          : cmp a, x                 ; 7E
095D:          : cpy w, a                 ; 3C
095E:          : set w, $3C               ; 40 3C(<)
0960:          : nop                      ; 00
0961:          : nop                      ; 00
0962:          : nop                      ; 00
0963:          : dec i                    ; 7C
0964:          : set y, $3C               ; 3E 3C(<)
0966:          : dec i                    ; 7C
0967:          : dec i                    ; 7C
0968:          : load y, j                ; 18
0969:          : mul a, $66               ; 60 66(f)
096B:          : cpy w, a                 ; 3C
096C:          : div i, j                 ; 66
096D:          : div i, j                 ; 66
096E:          : dec x                    ; 78
096F:          : mod i, j                 ; 6B
0970:          : div i, j                 ; 66
0971:          : cpy w, a                 ; 3C
0972:          : set y, $7C               ; 3E 7C(|)
0974:          : push i                   ; 06
0975:          : set y, $30               ; 3E 30(0)
0977:          : dec i                    ; 7C
0978:          : load y, j                ; 18
0979:          : cpy a, y                 ; 36
097A:          : div i, j                 ; 66
097B:          : mul a, $7E               ; 60 7E(~)
097D:          : nop                      ; 00
097E:          : nop                      ; 00
097F:          : nop                      ; 00
0980:          : nop                      ; 00
0981:          : nop                      ; 00
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
0998:          : nop                      ; 00
0999:          : nop                      ; 00
099A:          : nop                      ; 00
099B:          : nop                      ; 00
099C:          : nop                      ; 00
099D:          : nop                      ; 00
099E:          : nop                      ; 00
099F:          : nop                      ; 00
09A0:          : nop                      ; 00
09A1:          : nop                      ; 00
09A2:          : cpy w, a                 ; 3C
09A3:          : nop                      ; 00
09A4:          : nop                      ; 00
09A5:          : nop                      ; 00
09A6:          : nop                      ; 00
09A7:          : nop                      ; 00
09A8:          : nop                      ; 00
09A9:          : nop                      ; 00
09AA:          : nop                      ; 00
09AB:          : nop                      ; 00
09AC:          : nop                      ; 00
09AD:          : nop                      ; 00
09AE:          : nop                      ; 00
09AF:          : nop                      ; 00
09B0:          : nop                      ; 00
09B1:          : nop                      ; 00
09B2:          : nop                      ; 00
09B3:          : mul a, $00               ; 60 00
09B5:          : nop                      ; 00
09B6:          : nop                      ; 00
09B7:          : nop                      ; 00
09B8:          : nop                      ; 00
09B9:          : nop                      ; 00
09BA:          : nop                      ; 00
09BB:          : nop                      ; 00
09BC:          : nop                      ; 00
09BD:          : nop                      ; 00
09BE:          : nop                      ; 00
09BF:          : nop                      ; 00
09C0:          : nop                      ; 00
09C1:          : nop                      ; FF
09C2:          : nop                      ; 00
09C3:          : nop                      ; 00
09C4:          : nop                      ; 00
09C5:          : nop                      ; 00
09C6:          : nop                      ; 00
09C7:          : nop                      ; 00
09C8:          : nop                      ; 00
09C9:          : cpy w, a                 ; 3C
09CA:          : nop                      ; 00
09CB:          : nop                      ; 00
09CC:          : cpy w, a                 ; 3C
09CD:          : nop                      ; 00
09CE:          : nop                      ; 00
09CF:          : nop                      ; 00
09D0:          : nop                      ; 00
09D1:          : nop                      ; 00
09D2:          : push i                   ; 06
09D3:          : mul a, $00               ; 60 00
09D5:          : nop                      ; 00
09D6:          : nop                      ; 00
09D7:          : nop                      ; 00
09D8:          : nop                      ; 00
09D9:          : nop                      ; 00
09DA:          : nop                      ; 00
09DB:          : cpy w, a                 ; 3C
09DC:          : nop                      ; 00
09DD:          : nop                      ; 00
09DE:          : nop                      ; 00
09DF:          : nop                      ; 00
09E0:          : nop                      ; 00
09E1:          : nop                      ; 00
09E2:          : cmp a, y                 ; 7F
09E3:          : call.gt $3231            ; 30 31 32
09E6:          : call.nz $3534            ; 33 34 35
09E9:          : cpy a, y                 ; 36
09EA:          : cpy a, z                 ; 37
09EB:          : cpy a, w                 ; 38
09EC:          : cpy x, a                 ; 39
09ED:          : mul i, j                 ; 61
09EE:          : mul i, $6463             ; 62 63 64
09F1:          : div a, $66               ; 65 66(f)
09F3:          : div i, $6968             ; 67 68 69
09F6:          : mod a, $6B               ; 6A 6B(k)
09F8:          : mod i, $6E6D             ; 6C 6D 6E
09FB:          : neg x                    ; 6F
09FC:          : inc a                    ; 70
09FD:          : inc x                    ; 71
09FE:          : inc y                    ; 72
09FF:          : inc z                    ; 73
0A00:          : inc w                    ; 74
0A01:          : inc i                    ; 75
0A02:          : inc j                    ; 76
0A03:          : dec a                    ; 77
0A04:          : dec x                    ; 78
0A05:          : dec y                    ; 79
0A06:          : dec z                    ; 7A
0A07:          : set a, $42               ; 41 42(B)
0A09:          : set j, $4544             ; 43 44 45
0A0C:          : add a, z                 ; 46
0A0D:          : add a, w                 ; 47
0A0E:          : add i, j                 ; 48
0A0F:          : add i, a                 ; 49
0A10:          : add i, z                 ; 4A
0A11:          : add i, w                 ; 4B
0A12:          : add j, a                 ; 4C
0A13:          : add j, x                 ; 4D
0A14:          : add j, y                 ; 4E
0A15:          : add i, $5150             ; 4F 50 51
0A18:          : add y, $53               ; 52 53(S)
0A1A:          : add w, $55               ; 54 55(U)
0A1C:          : sub a, x                 ; 56
0A1D:          : sub a, y                 ; 57
0A1E:          : sub a, z                 ; 58
0A1F:          : sub a, w                 ; 59
0A20:          : sub x, $20               ; 5A 20
0A22:          : store i, w               ; 21
0A23:          : store i, z               ; 22
0A24:          : store j, a               ; 23
0A25:          : store j, x               ; 24
0A26:          : store j, y               ; 25
0A27:          : store $2827, x           ; 26 27 28
0A2A:          : store $2B40, w           ; 29 40 2B
0A2D:          : call $3D2A               ; 2D 2A 3D  ERROR $3D2A
0A30:          : call.neq $2E2C           ; 2F 2C 2E
0A33:          : cpy z, a                 ; 3B
0A34:          : sub y, $5D               ; 5B 5D(])
0A36:          : dec w                    ; 7B
0A37:          : dec j                    ; 7D
0A38:          : set z, $3C               ; 3F 3C(<)
0A3A:          : set y, $3A               ; 3E 3A(:)
0A3C:          : cmp a, y                 ; 7F
0A3D:          : cmp a, y                 ; 7F
0A3E:          : cmp a, y                 ; 7F
0A3F:          : cmp a, y                 ; 7F
0A40:          : cmp a, y                 ; 7F
0A41:          : cmp a, y                 ; 7F
0A42:          : cmp a, y                 ; 7F
0A43:          : cmp a, y                 ; 7F
0A44:          : cmp a, y                 ; 7F
0A45:          : cmp a, y                 ; 7F
0A46:          : cmp a, y                 ; 7F
0A47:          : cmp a, y                 ; 7F
0A48:          : cmp a, y                 ; 7F
0A49:          : cmp a, y                 ; 7F
0A4A:          : cmp a, y                 ; 7F
0A4B:          : cmp a, y                 ; 7F
0A4C:          : cmp a, y                 ; 7F
0A4D:          : cmp a, y                 ; 7F
0A4E:          : cmp a, y                 ; 7F
0A4F:          : cmp a, y                 ; 7F
0A50:          : nop                      ; 00
0A51:          : nop                      ; 00
0A52:          : nop                      ; 00
0A53:          : nop                      ; 00
0A54:          : nop                      ; 00
0A55:          : nop                      ; 00
0A56:          : nop                      ; 00
0A57:          : nop                      ; 00
0A58:          : nop                      ; 00
0A59:          : nop                      ; 00
0A5A:          : nop                      ; 00
0A5B:          : nop                      ; 00
0A5C:          : nop                      ; 00
0A5D:          : nop                      ; 00
0A5E:          : nop                      ; 00
0A5F:          : nop                      ; 00
0A60:          : nop                      ; 00
0A61:          : nop                      ; 00
0A62:          : nop                      ; 00
0A63:          : nop                      ; 00
0A64:          : nop                      ; 00
0A65:          : nop                      ; 00
0A66:          : nop                      ; 00
0A67:          : nop                      ; 00
0A68:          : nop                      ; 00
0A69:          : nop                      ; 00
0A6A:          : nop                      ; 00
0A6B:          : nop                      ; 00
0A6C:          : nop                      ; 00
0A6D:          : nop                      ; 00
0A6E:          : nop                      ; 00
0A6F:          : nop                      ; 00
0A70:          : nop                      ; 00
0A71:          : nop                      ; 00
0A72:          : nop                      ; 00
0A73:          : nop                      ; 00
0A74:          : nop                      ; 00
0A75:          : nop                      ; 00
0A76:          : nop                      ; 00
0A77:          : nop                      ; 00
0A78:          : nop                      ; 00
0A79:          : nop                      ; 00
0A7A:          : nop                      ; 00
0A7B:          : nop                      ; 00
0A7C:          : nop                      ; 00
0A7D:          : nop                      ; 00
0A7E:          : nop                      ; 00
0A7F:          : nop                      ; 00
0A80:          : nop                      ; 00
0A81:          : nop                      ; 00
0A82:          : nop                      ; 00
0A83:          : nop                      ; 00
0A84:          : nop                      ; 00
0A85:          : nop                      ; 00
0A86:          : nop                      ; 00
0A87:          : nop                      ; 00
0A88:          : nop                      ; 00
0A89:          : nop                      ; 00
0A8A:          : nop                      ; 00
0A8B:          : nop                      ; 00
0A8C:          : nop                      ; 00
0A8D:          : nop                      ; 00
0A8E:          : nop                      ; 00
0A8F:          : nop                      ; 00
0A90:          : nop                      ; 00
0A91:          : nop                      ; 00
0A92:          : nop                      ; 00
0A93:          : nop                      ; 00
0A94:          : nop                      ; 00
0A95:          : nop                      ; 00
0A96:          : nop                      ; 00
0A97:          : nop                      ; 00
0A98:          : nop                      ; 00
0A99:          : nop                      ; 00
0A9A:          : nop                      ; 00
0A9B:          : nop                      ; 00
0A9C:          : nop                      ; 00
0A9D:          : nop                      ; 00
0A9E:          : nop                      ; 00
0A9F:          : nop                      ; 00
0AA0:          : nop                      ; 00
0AA1:          : nop                      ; 00
0AA2:          : nop                      ; 00
0AA3:          : nop                      ; 00
0AA4:          : nop                      ; 00
0AA5:          : nop                      ; 00
0AA6:          : nop                      ; 00
0AA7:          : nop                      ; 00
0AA8:          : nop                      ; 00
0AA9:          : nop                      ; 00
0AAA:          : nop                      ; 00
0AAB:          : nop                      ; 00
0AAC:          : nop                      ; 00
0AAD:          : nop                      ; 00
0AAE:          : nop                      ; 00
0AAF:          : nop                      ; 00
0AB0:          : nop                      ; 00
0AB1:          : nop                      ; 00
0AB2:          : nop                      ; 00
0AB3:          : nop                      ; 00
0AB4:          : nop                      ; 00
0AB5:          : nop                      ; 00
0AB6:          : nop                      ; 00
0AB7:          : nop                      ; 00
0AB8:          : nop                      ; 00
0AB9:          : nop                      ; 00
0ABA:          : nop                      ; 00
0ABB:          : nop                      ; 00
0ABC:          : nop                      ; 00
0ABD:          : nop                      ; 00
0ABE:          : nop                      ; 00
0ABF:          : nop                      ; 00
0AC0:          : nop                      ; 00
0AC1:          : nop                      ; 00
0AC2:          : nop                      ; 00
0AC3:          : nop                      ; 00
0AC4:          : nop                      ; 00
0AC5:          : nop                      ; 00
0AC6:          : nop                      ; 00
0AC7:          : nop                      ; 00
0AC8:          : nop                      ; 00
0AC9:          : nop                      ; 00
0ACA:          : nop                      ; 00
0ACB:          : nop                      ; 00
0ACC:          : nop                      ; 00
0ACD:          : nop                      ; 00
0ACE:          : nop                      ; 00
0ACF:          : nop                      ; 00
0AD0:          : nop                      ; 00
0AD1:          : nop                      ; 00
0AD2:          : nop                      ; 00
0AD3:          : nop                      ; 00
0AD4:          : nop                      ; 00
0AD5:          : nop                      ; 00
0AD6:          : nop                      ; 00
0AD7:          : nop                      ; 00
0AD8:          : nop                      ; 00
0AD9:          : nop                      ; 00
0ADA:          : nop                      ; 00
0ADB:          : nop                      ; 00
0ADC:          : nop                      ; 00
0ADD:          : nop                      ; 00
0ADE:          : nop                      ; 00
0ADF:          : nop                      ; 00
0AE0:          : nop                      ; 00
0AE1:          : nop                      ; 00
0AE2:          : nop                      ; 00
0AE3:          : nop                      ; 00
0AE4:          : nop                      ; 00
0AE5:          : nop                      ; 00
0AE6:          : nop                      ; 00
0AE7:          : nop                      ; 00
0AE8:          : nop                      ; 00
0AE9:          : nop                      ; 00
0AEA:          : nop                      ; 00
0AEB:          : nop                      ; 00
0AEC:          : nop                      ; 00
0AED:          : nop                      ; 00
0AEE:          : nop                      ; 00
0AEF:          : nop                      ; 00
0AF0:          : nop                      ; 00
0AF1:          : nop                      ; 00
0AF2:          : nop                      ; 00
0AF3:          : nop                      ; 00
0AF4:          : nop                      ; 00
0AF5:          : nop                      ; 00
0AF6:          : nop                      ; 00
0AF7:          : nop                      ; 00
0AF8:          : nop                      ; 00
0AF9:          : nop                      ; 00
0AFA:          : nop                      ; 00
0AFB:          : nop                      ; 00
0AFC:          : nop                      ; 00
0AFD:          : nop                      ; 00
0AFE:          : nop                      ; 00
0AFF:          : nop                      ; 00
0B00:          : nop                      ; 00
0B01:          : nop                      ; 00
0B02:          : nop                      ; 00
0B03:          : nop                      ; 00
0B04:          : nop                      ; 00
0B05:          : nop                      ; 00
0B06:          : nop                      ; 00
0B07:          : nop                      ; 00
0B08:          : nop                      ; 00
0B09:          : nop                      ; 00
0B0A:          : nop                      ; 00
0B0B:          : nop                      ; 00
0B0C:          : nop                      ; 00
0B0D:          : nop                      ; 00
0B0E:          : nop                      ; 00
0B0F:          : nop                      ; 00
0B10:          : nop                      ; 00
0B11:          : nop                      ; 00
0B12:          : nop                      ; 00
0B13:          : nop                      ; 00
0B14:          : nop                      ; 00
0B15:          : nop                      ; 00
0B16:          : nop                      ; 00
0B17:          : nop                      ; 00
0B18:          : nop                      ; 00
0B19:          : nop                      ; 00
0B1A:          : nop                      ; 00
0B1B:          : nop                      ; 00
0B1C:          : nop                      ; 00
0B1D:          : nop                      ; 00
0B1E:          : nop                      ; 00
0B1F:          : nop                      ; 00
0B20:          : nop                      ; 00
0B21:          : nop                      ; 00
0B22:          : nop                      ; 00
0B23:          : nop                      ; 00
0B24:          : nop                      ; 00
0B25:          : nop                      ; 00
0B26:          : nop                      ; 00
0B27:          : nop                      ; 00
0B28:          : nop                      ; 00
0B29:          : nop                      ; 00
0B2A:          : nop                      ; 00
0B2B:          : nop                      ; 00
0B2C:          : nop                      ; 00
0B2D:          : nop                      ; 00
0B2E:          : nop                      ; 00
0B2F:          : nop                      ; 00
0B30:          : nop                      ; 00
0B31:          : nop                      ; 00
0B32:          : nop                      ; 00
0B33:          : nop                      ; 00
0B34:          : nop                      ; 00
0B35:          : nop                      ; 00
0B36:          : nop                      ; 00
0B37:          : nop                      ; 00
0B38:          : nop                      ; 00
0B39:          : nop                      ; 00
0B3A:          : nop                      ; 00
0B3B:          : nop                      ; 00
0B3C:          : nop                      ; 00
0B3D:          : nop                      ; 00
0B3E:          : nop                      ; 00
0B3F:          : nop                      ; 00
0B40:          : nop                      ; 00
0B41:          : nop                      ; 00
0B42:          : nop                      ; 00
0B43:          : nop                      ; 00
0B44:          : nop                      ; 00
0B45:          : nop                      ; 00
0B46:          : nop                      ; 00
0B47:          : nop                      ; 00
0B48:          : nop                      ; 00
0B49:          : nop                      ; 00
0B4A:          : nop                      ; 00
0B4B:          : nop                      ; 00
0B4C:          : nop                      ; 00
0B4D:          : nop                      ; 00
0B4E:          : nop                      ; 00
0B4F:          : nop                      ; 00
0B50:          : nop                      ; 00
0B51:          : nop                      ; 00
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
0BB6:          : nop                      ; 00
0BB7:          : nop                      ; 00
0BB8:          : nop                      ; 00
0BB9:          : nop                      ; 00
0BBA:          : nop                      ; 00
0BBB:          : nop                      ; 00
0BBC:          : nop                      ; 00
0BBD:          : nop                      ; 00
0BBE:          : nop                      ; 00
0BBF:          : nop                      ; 00
0BC0:          : nop                      ; 00
0BC1:          : nop                      ; 00
0BC2:          : nop                      ; 00
0BC3:          : nop                      ; 00
0BC4:          : nop                      ; 00
0BC5:          : nop                      ; 00
0BC6:          : nop                      ; 00
0BC7:          : nop                      ; 00
0BC8:          : nop                      ; 00
0BC9:          : nop                      ; 00
0BCA:          : nop                      ; 00
0BCB:          : nop                      ; 00
0BCC:          : nop                      ; 00
0BCD:          : nop                      ; 00
0BCE:          : nop                      ; 00
0BCF:          : nop                      ; 00
0BD0:          : nop                      ; 00
0BD1:          : nop                      ; 00
0BD2:          : nop                      ; 00
0BD3:          : nop                      ; 00
0BD4:          : nop                      ; 00
0BD5:          : nop                      ; 00
0BD6:          : nop                      ; 00
0BD7:          : nop                      ; 00
0BD8:          : nop                      ; 00
0BD9:          : nop                      ; 00
0BDA:          : nop                      ; 00
0BDB:          : nop                      ; 00
0BDC:          : nop                      ; 00
0BDD:          : nop                      ; 00
0BDE:          : nop                      ; 00
0BDF:          : nop                      ; 00
0BE0:          : nop                      ; 00
0BE1:          : nop                      ; 00
0BE2:          : nop                      ; 00
0BE3:          : nop                      ; 00
0BE4:          : nop                      ; 00
0BE5:          : nop                      ; 00
0BE6:          : nop                      ; 00
0BE7:          : nop                      ; 00
0BE8:          : nop                      ; 00
0BE9:          : nop                      ; 00
0BEA:          : nop                      ; 00
0BEB:          : nop                      ; 00
0BEC:          : nop                      ; 00
0BED:          : nop                      ; 00
0BEE:          : nop                      ; 00
0BEF:          : nop                      ; 00
0BF0:          : nop                      ; 00
0BF1:          : nop                      ; 00
0BF2:          : nop                      ; 00
0BF3:          : nop                      ; 00
0BF4:          : nop                      ; 00
0BF5:          : nop                      ; 00
0BF6:          : nop                      ; 00
0BF7:          : nop                      ; 00
0BF8:          : nop                      ; 00
0BF9:          : nop                      ; 00
0BFA:          : nop                      ; 00
0BFB:          : nop                      ; 00
0BFC:          : nop                      ; 00
0BFD:          : nop                      ; 00
0BFE:          : nop                      ; 00
0BFF:          : nop                      ; 00
0C00:          : nop                      ; 00
0C01:          : nop                      ; 00
0C02:          : nop                      ; 00
0C03:          : nop                      ; 00
0C04:          : nop                      ; 00
0C05:          : nop                      ; 00
0C06:          : nop                      ; 00
0C07:          : nop                      ; 00
0C08:          : nop                      ; 00
0C09:          : nop                      ; 00
0C0A:          : nop                      ; 00
0C0B:          : nop                      ; 00
0C0C:          : nop                      ; 00
0C0D:          : nop                      ; 00
0C0E:          : nop                      ; 00
0C0F:          : nop                      ; 00
0C10:          : nop                      ; 00
0C11:          : nop                      ; 00
0C12:          : nop                      ; 00
0C13:          : nop                      ; 00
0C14:          : nop                      ; 00
0C15:          : nop                      ; 00
0C16:          : nop                      ; 00
0C17:          : nop                      ; 00
0C18:          : nop                      ; 00
0C19:          : nop                      ; 00
0C1A:          : nop                      ; 00
0C1B:          : nop                      ; 00
0C1C:          : nop                      ; 00
0C1D:          : nop                      ; 00
0C1E:          : nop                      ; 00
0C1F:          : nop                      ; 00
0C20:          : nop                      ; 00
0C21:          : nop                      ; 00
0C22:          : nop                      ; 00
0C23:          : nop                      ; 00
0C24:          : nop                      ; 00
0C25:          : nop                      ; 00
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
13E0:          : set a, $07               ; 41 07
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
