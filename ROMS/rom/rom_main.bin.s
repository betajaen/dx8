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
