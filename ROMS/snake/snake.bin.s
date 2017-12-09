1400:          : jmp $1703                ; C9 03 17  LBL_5891 $1703
1403:          : nop                      ; 00
1404:          : load y, j                ; 18
1405:          : mul j, $186C             ; 66 6C 18
1408:          : add a, z                 ; 46
1409:          : cpy a, w                 ; 38
140A:          : load y, j                ; 18
140B:          : call.gt $410C            ; 30 0C 41
140E:          : nop                      ; 00
140F:          : nop                      ; 00
1410:          : nop                      ; 00
1411:          : nop                      ; 00
1412:          : set w, $3C               ; 40 3C(<)
1414:          : load y, j                ; 18
1415:          : cpy w, a                 ; 3C
1416:          : cpy w, a                 ; 3C
1417:          : cpy a, w                 ; 38
1418:          : dec i                    ; 7E
1419:          : cpy w, a                 ; 3C
141A:          : dec i                    ; 7E
141B:          : cpy w, a                 ; 3C
141C:          : cpy w, a                 ; 3C
141D:          : nop                      ; 00
141E:          : nop                      ; 00
141F:          : sub w, $00               ; 60 00
1421:          : pop y                    ; 0C
1422:          : cpy w, a                 ; 3C
1423:          : cpy w, a                 ; 3C
1424:          : cpy w, a                 ; 3C
1425:          : set y, $3C               ; 3E 3C(<)
1427:          : set y, $7E               ; 3E 7E(~)
1429:          : dec i                    ; 7E
142A:          : cpy w, a                 ; 3C
142B:          : mul j, $603C             ; 66 3C 60
142E:          : mul j, $6306             ; 66 06 63
1431:          : mul j, $3E3C             ; 66 3C 3E
1434:          : cpy w, a                 ; 3C
1435:          : set y, $3C               ; 3E 3C(<)
1437:          : nop                      ; FF
1438:          : nop                      ; FC
1439:          : set z, $63               ; 3F 63(c)
143B:          : mul j, $7E66             ; 66 66 7E
143E:          : cpy w, a                 ; 3C
143F:          : push y                   ; 02
1440:          : cpy w, a                 ; 3C
1441:          : pop i                    ; 10
1442:          : nop                      ; 00
1443:          : load y, j                ; 18
1444:          : nop                      ; 00
1445:          : push i                   ; 06
1446:          : nop                      ; 00
1447:          : sub w, $00               ; 60 00
1449:          : mod j, $0600             ; 70 00 06
144C:          : load y, j                ; 18
144D:          : sub w, $06               ; 60 06
144F:          : cpy a, w                 ; 38
1450:          : nop                      ; 00
1451:          : nop                      ; 00
1452:          : nop                      ; 00
1453:          : nop                      ; 00
1454:          : nop                      ; 00
1455:          : nop                      ; 00
1456:          : nop                      ; FF
1457:          : load y, j                ; 18
1458:          : nop                      ; 00
1459:          : nop                      ; 00
145A:          : nop                      ; 00
145B:          : nop                      ; 00
145C:          : nop                      ; 00
145D:          : nop                      ; 00
145E:          : nop                      ; 00
145F:          : nop                      ; 00
1460:          : nop                      ; 00
1461:          : nop                      ; 00
1462:          : nop                      ; 00
1463:          : nop                      ; 00
1464:          : load y, j                ; 18
1465:          : mul j, $7CFE             ; 66 FE 7C
1468:          : mul j, $186C             ; 66 6C 18
146B:          : load y, j                ; 18
146C:          : load y, j                ; 18
146D:          : store i, z               ; 22
146E:          : pop i                    ; 10
146F:          : nop                      ; 00
1470:          : nop                      ; 00
1471:          : nop                      ; 00
1472:          : sub w, $66               ; 60 66(f)
1474:          : load w, $6666            ; 1C 66 66
1477:          : cpy w, a                 ; 3C
1478:          : push i                   ; 06
1479:          : mul j, $6660             ; 66 60 66
147C:          : mul j, $1818             ; 66 18 18
147F:          : call.gt $1800            ; 30 00 18
1482:          : mul a, x                 ; 62
1483:          : set i, $6666             ; 42 66 66
1486:          : mul j, $0666             ; 66 66 06
1489:          : push i                   ; 06
148A:          : mul j, $1866             ; 66 66 18
148D:          : sub w, $36               ; 60 36(6)
148F:          : push i                   ; 06
1490:          : inc i                    ; 77
1491:          : mul j, $6666             ; 66 66 66
1494:          : mul j, $7E66             ; 66 66 7E
1497:          : nop                      ; FF
1498:          : nop                      ; FE
1499:          : dec j                    ; 7F
149A:          : mul a, $66               ; 63 66(f)
149C:          : mul j, $0C60             ; 66 60 0C
149F:          : push i                   ; 06
14A0:          : call.gt $0038            ; 30 38 00
14A3:          : call.gt $0600            ; 30 00 06
14A6:          : nop                      ; 00
14A7:          : sub w, $00               ; 60 00
14A9:          : load y, j                ; 18
14AA:          : nop                      ; 00
14AB:          : push i                   ; 06
14AC:          : nop                      ; 00
14AD:          : nop                      ; 00
14AE:          : push i                   ; 06
14AF:          : call.gt $0000            ; 30 00 00
14B2:          : set y, $00               ; 3E 00
14B4:          : nop                      ; 00
14B5:          : nop                      ; 00
14B6:          : nop                      ; FF
14B7:          : load y, j                ; 18
14B8:          : nop                      ; 00
14B9:          : nop                      ; 00
14BA:          : nop                      ; 00
14BB:          : nop                      ; 00
14BC:          : nop                      ; 00
14BD:          : nop                      ; 00
14BE:          : nop                      ; 00
14BF:          : nop                      ; 00
14C0:          : nop                      ; 00
14C1:          : nop                      ; 00
14C2:          : nop                      ; 00
14C3:          : nop                      ; 00
14C4:          : load y, j                ; 18
14C5:          : mul j, $066C             ; 66 6C 06
14C8:          : call.gt $186C            ; 30 6C 18
14CB:          : pop y                    ; 0C
14CC:          : call.gt $1014            ; 30 14 10
14CF:          : nop                      ; 00
14D0:          : nop                      ; 00
14D1:          : nop                      ; 00
14D2:          : call.gt $1866            ; 30 66 18
14D5:          : sub w, $60               ; 60 60(`)
14D7:          : cpy a, y                 ; 36
14D8:          : set y, $06               ; 3E 06
14DA:          : call.gt $6666            ; 30 66 66
14DD:          : load y, j                ; 18
14DE:          : load y, j                ; 18
14DF:          : load y, j                ; 18
14E0:          : dec i                    ; 7E
14E1:          : call.gt $9960            ; 30 60 99
14E4:          : mul j, $0666             ; 66 66 06
14E7:          : mul j, $0606             ; 66 06 06
14EA:          : push i                   ; 06
14EB:          : mul j, $6018             ; 66 18 60
14EE:          : load i, $7F06            ; 1E 06 7F
14F1:          : mod i, j                 ; 6E
14F2:          : mul j, $6666             ; 66 66 66
14F5:          : mul j, $FFF3             ; 66 F3 FF
14F8:          : dbo $CF                  ; F3 CF
14FA:          : mul a, $3C               ; 63 3C(<)
14FC:          : mul j, $0C30             ; 66 30 0C
14FF:          : pop y                    ; 0C
1500:          : call.gt $006C            ; 30 6C 00
1503:          : nop                      ; 00
1504:          : cpy w, a                 ; 3C
1505:          : set y, $3C               ; 3E 3C(<)
1507:          : dec w                    ; 7C
1508:          : cpy w, a                 ; 3C
1509:          : cpy w, a                 ; 3C
150A:          : dec w                    ; 7C
150B:          : set y, $1C               ; 3E 1C
150D:          : mod j, $3066             ; 70 66 30
1510:          : cpy a, z                 ; 37
1511:          : set y, $7F               ; 3E 7F()
1513:          : set y, $7C               ; 3E 7C(|)
1515:          : inc a                    ; 76
1516:          : nop                      ; FF
1517:          : cpy w, a                 ; 3C
1518:          : mul j, $6B66             ; 66 66 6B
151B:          : mul j, $7E66             ; 66 66 7E
151E:          : nop                      ; 00
151F:          : nop                      ; 00
1520:          : nop                      ; 00
1521:          : nop                      ; 00
1522:          : nop                      ; 00
1523:          : nop                      ; 00
1524:          : load y, j                ; 18
1525:          : nop                      ; 00
1526:          : mod a, x                 ; 6C
1527:          : cpy w, a                 ; 3C
1528:          : load y, j                ; 18
1529:          : cpy a, w                 ; 38
152A:          : nop                      ; 00
152B:          : pop y                    ; 0C
152C:          : call.gt $7C7F            ; 30 7F 7C
152F:          : nop                      ; 00
1530:          : dec i                    ; 7E
1531:          : nop                      ; 00
1532:          : load y, j                ; 18
1533:          : mul j, $3818             ; 66 18 38
1536:          : cpy a, w                 ; 38
1537:          : cpy a, y                 ; 36
1538:          : sub w, $3E               ; 60 3E(>)
153A:          : load y, j                ; 18
153B:          : cpy w, a                 ; 3C
153C:          : dec w                    ; 7C
153D:          : nop                      ; 00
153E:          : nop                      ; 00
153F:          : pop y                    ; 0C
1540:          : nop                      ; 00
1541:          : sub w, $38               ; 60 38(8)
1543:          : or w, $7E                ; A5 7E(~)
1545:          : set y, $06               ; 3E 06
1547:          : mul j, $1E1E             ; 66 1E 1E
154A:          : inc a                    ; 76
154B:          : dec i                    ; 7E
154C:          : load y, j                ; 18
154D:          : sub w, $0E               ; 60 0E
154F:          : push i                   ; 06
1550:          : div j, $667E             ; 6B 7E 66
1553:          : set y, $66               ; 3E 66(f)
1555:          : set y, $F3               ; 3E F3
1557:          : or a, y                  ; 9F
1558:          : dbo $CF                  ; F3 CF
155A:          : div j, $3C18             ; 6B 18 3C
155D:          : load y, j                ; 18
155E:          : pop y                    ; 0C
155F:          : load y, j                ; 18
1560:          : call.gt $0044            ; 30 44 00
1563:          : nop                      ; 00
1564:          : sub w, $66               ; 60 66(f)
1566:          : mul j, $6666             ; 66 66 66
1569:          : load y, j                ; 18
156A:          : mul j, $1866             ; 66 66 18
156D:          : sub w, $36               ; 60 36(6)
156F:          : call.gt $667F            ; 30 7F 66
1572:          : dec j                    ; 7F
1573:          : mul j, $0E66             ; 66 66 0E
1576:          : nop                      ; FF
1577:          : load y, j                ; 18
1578:          : mul j, $6B66             ; 66 66 6B
157B:          : cpy w, a                 ; 3C
157C:          : mul j, $0030             ; 66 30 00
157F:          : nop                      ; 00
1580:          : nop                      ; 00
1581:          : nop                      ; 00
1582:          : nop                      ; 00
1583:          : nop                      ; 00
1584:          : load y, j                ; 18
1585:          : nop                      ; 00
1586:          : mod a, x                 ; 6C
1587:          : sub w, $0C               ; 60 0C
1589:          : clc                      ; EC
158A:          : nop                      ; 00
158B:          : pop y                    ; 0C
158C:          : call.gt $1014            ; 30 14 10
158F:          : load y, j                ; 18
1590:          : nop                      ; 00
1591:          : nop                      ; 00
1592:          : pop y                    ; 0C
1593:          : mul j, $0C18             ; 66 18 0C
1596:          : sub w, $7E               ; 60 7E(~)
1598:          : sub w, $66               ; 60 66(f)
159A:          : load y, j                ; 18
159B:          : mul j, $1860             ; 66 60 18
159E:          : load y, j                ; 18
159F:          : load y, j                ; 18
15A0:          : dec i                    ; 7E
15A1:          : call.gt $A518            ; 30 18 A5
15A4:          : mul j, $0666             ; 66 66 06
15A7:          : mul j, $0606             ; 66 06 06
15AA:          : mul j, $1866             ; 66 66 18
15AD:          : sub w, $1E               ; 60 1E
15AF:          : push i                   ; 06
15B0:          : mul a, $76               ; 63 76(v)
15B2:          : mul j, $6606             ; 66 06 66
15B5:          : load i, $9FFF            ; 1E FF 9F
15B8:          : nop                      ; FF
15B9:          : nop                      ; FF
15BA:          : dec j                    ; 7F
15BB:          : cpy w, a                 ; 3C
15BC:          : load y, j                ; 18
15BD:          : pop y                    ; 0C
15BE:          : pop y                    ; 0C
15BF:          : call.gt $0030            ; 30 30 00
15C2:          : nop                      ; 00
15C3:          : nop                      ; 00
15C4:          : dec w                    ; 7C
15C5:          : mul j, $6606             ; 66 06 66
15C8:          : set y, $18               ; 3E 18
15CA:          : mul j, $1866             ; 66 66 18
15CD:          : sub w, $1E               ; 60 1E
15CF:          : call.gt $666B            ; 30 6B 66
15D2:          : dec j                    ; 7F
15D3:          : mul j, $0666             ; 66 66 06
15D6:          : nop                      ; FF
15D7:          : load y, j                ; 18
15D8:          : mul j, $7F66             ; 66 66 7F
15DB:          : load y, j                ; 18
15DC:          : mul j, $0018             ; 66 18 00
15DF:          : nop                      ; 00
15E0:          : nop                      ; 00
15E1:          : nop                      ; 00
15E2:          : nop                      ; 00
15E3:          : nop                      ; 00
15E4:          : nop                      ; 00
15E5:          : nop                      ; 00
15E6:          : nop                      ; FE
15E7:          : set y, $66               ; 3E 66(f)
15E9:          : mul j, $1800             ; 66 00 18
15EC:          : load y, j                ; 18
15ED:          : store i, z               ; 22
15EE:          : pop i                    ; 10
15EF:          : load y, j                ; 18
15F0:          : nop                      ; 00
15F1:          : load y, j                ; 18
15F2:          : push i                   ; 06
15F3:          : mul j, $0618             ; 66 18 06
15F6:          : mul j, $6630             ; 66 30 66
15F9:          : mul j, $6618             ; 66 18 66
15FC:          : mul j, $1818             ; 66 18 18
15FF:          : call.gt $1800            ; 30 00 18
1602:          : nop                      ; 00
1603:          : dec x                    ; 79
1604:          : mul j, $6666             ; 66 66 66
1607:          : mul j, $0606             ; 66 06 06
160A:          : mul j, $1866             ; 66 66 18
160D:          : mul j, $0636             ; 66 36 06
1610:          : mul a, $66               ; 63 66(f)
1612:          : mul j, $6606             ; 66 06 66
1615:          : cpy a, y                 ; 36
1616:          : nop                      ; FF
1617:          : nop                      ; FF
1618:          : nop                      ; FF
1619:          : nop                      ; FF
161A:          : inc i                    ; 77
161B:          : mul j, $0618             ; 66 18 06
161E:          : pop y                    ; 0C
161F:          : sub w, $30               ; 60 30(0)
1621:          : nop                      ; 00
1622:          : nop                      ; 00
1623:          : nop                      ; 00
1624:          : mul j, $6666             ; 66 66 66
1627:          : mul j, $1806             ; 66 06 18
162A:          : dec w                    ; 7C
162B:          : mul j, $6018             ; 66 18 60
162E:          : cpy a, y                 ; 36
162F:          : call.gt $666B            ; 30 6B 66
1632:          : dec j                    ; 7F
1633:          : mul j, $0666             ; 66 66 06
1636:          : nop                      ; FF
1637:          : load y, j                ; 18
1638:          : mul j, $3E3C             ; 66 3C 3E
163B:          : cpy w, a                 ; 3C
163C:          : dec w                    ; 7C
163D:          : pop y                    ; 0C
163E:          : nop                      ; 00
163F:          : nop                      ; 00
1640:          : nop                      ; 00
1641:          : nop                      ; 00
1642:          : nop                      ; 00
1643:          : nop                      ; 00
1644:          : load y, j                ; 18
1645:          : nop                      ; 00
1646:          : mod a, x                 ; 6C
1647:          : load y, j                ; 18
1648:          : mul a, x                 ; 62
1649:          : nop                      ; FC
164A:          : nop                      ; 00
164B:          : call.gt $410C            ; 30 0C 41
164E:          : nop                      ; 00
164F:          : pop y                    ; 0C
1650:          : nop                      ; 00
1651:          : load y, j                ; 18
1652:          : push y                   ; 02
1653:          : cpy w, a                 ; 3C
1654:          : dec i                    ; 7E
1655:          : dec i                    ; 7E
1656:          : cpy w, a                 ; 3C
1657:          : inc j                    ; 78
1658:          : cpy w, a                 ; 3C
1659:          : cpy w, a                 ; 3C
165A:          : load y, j                ; 18
165B:          : cpy w, a                 ; 3C
165C:          : cpy w, a                 ; 3C
165D:          : nop                      ; 00
165E:          : push f                   ; 08
165F:          : sub w, $00               ; 60 00
1661:          : pop y                    ; 0C
1662:          : load y, j                ; 18
1663:          : push y                   ; 02
1664:          : mul j, $3C3E             ; 66 3E 3C
1667:          : set y, $7E               ; 3E 7E(~)
1669:          : push i                   ; 06
166A:          : cpy w, a                 ; 3C
166B:          : mul j, $3C3C             ; 66 3C 3C
166E:          : mul j, $637E             ; 66 7E 63
1671:          : mul j, $063C             ; 66 3C 06
1674:          : cpy w, a                 ; 3C
1675:          : mul j, $7EFF             ; 66 FF 7E
1678:          : nop                      ; FE
1679:          : dec j                    ; 7F
167A:          : mul a, $66               ; 63 66(f)
167C:          : load y, j                ; 18
167D:          : dec i                    ; 7E
167E:          : cpy w, a                 ; 3C
167F:          : set w, $3C               ; 40 3C(<)
1681:          : nop                      ; 00
1682:          : nop                      ; 00
1683:          : nop                      ; 00
1684:          : dec w                    ; 7C
1685:          : set y, $3C               ; 3E 3C(<)
1687:          : dec w                    ; 7C
1688:          : dec w                    ; 7C
1689:          : load y, j                ; 18
168A:          : sub w, $66               ; 60 66(f)
168C:          : cpy w, a                 ; 3C
168D:          : mul j, $7866             ; 66 66 78
1690:          : div j, $3E66             ; 6B 66 3E
1693:          : set y, $7C               ; 3E 7C(|)
1695:          : push i                   ; 06
1696:          : nop                      ; FF
1697:          : call.gt $187C            ; 30 7C 18
169A:          : cpy a, y                 ; 36
169B:          : mul j, $7E60             ; 66 60 7E
169E:          : nop                      ; 00
169F:          : nop                      ; 00
16A0:          : nop                      ; 00
16A1:          : nop                      ; 00
16A2:          : nop                      ; 00
16A3:          : nop                      ; 00
16A4:          : nop                      ; 00
16A5:          : nop                      ; 00
16A6:          : nop                      ; 00
16A7:          : nop                      ; 00
16A8:          : nop                      ; 00
16A9:          : nop                      ; 00
16AA:          : nop                      ; 00
16AB:          : nop                      ; 00
16AC:          : nop                      ; 00
16AD:          : nop                      ; 00
16AE:          : nop                      ; 00
16AF:          : nop                      ; 00
16B0:          : nop                      ; 00
16B1:          : nop                      ; 00
16B2:          : nop                      ; 00
16B3:          : nop                      ; 00
16B4:          : nop                      ; 00
16B5:          : nop                      ; 00
16B6:          : nop                      ; 00
16B7:          : nop                      ; 00
16B8:          : nop                      ; 00
16B9:          : nop                      ; 00
16BA:          : nop                      ; 00
16BB:          : nop                      ; 00
16BC:          : nop                      ; 00
16BD:          : nop                      ; 00
16BE:          : nop                      ; 00
16BF:          : nop                      ; 00
16C0:          : nop                      ; 00
16C1:          : nop                      ; 00
16C2:          : nop                      ; 00
16C3:          : cpy w, a                 ; 3C
16C4:          : nop                      ; 00
16C5:          : nop                      ; 00
16C6:          : nop                      ; 00
16C7:          : nop                      ; 00
16C8:          : nop                      ; 00
16C9:          : nop                      ; 00
16CA:          : nop                      ; 00
16CB:          : nop                      ; 00
16CC:          : nop                      ; 00
16CD:          : nop                      ; 00
16CE:          : nop                      ; 00
16CF:          : nop                      ; 00
16D0:          : nop                      ; 00
16D1:          : nop                      ; 00
16D2:          : nop                      ; 00
16D3:          : nop                      ; 00
16D4:          : sub w, $00               ; 60 00
16D6:          : nop                      ; FF
16D7:          : cpy w, a                 ; 3C
16D8:          : nop                      ; FC
16D9:          : set z, $00               ; 3F 00
16DB:          : nop                      ; 00
16DC:          : nop                      ; 00
16DD:          : nop                      ; 00
16DE:          : nop                      ; 00
16DF:          : nop                      ; 00
16E0:          : nop                      ; 00
16E1:          : nop                      ; 00
16E2:          : nop                      ; FF
16E3:          : nop                      ; 00
16E4:          : nop                      ; 00
16E5:          : nop                      ; 00
16E6:          : nop                      ; 00
16E7:          : nop                      ; 00
16E8:          : nop                      ; 00
16E9:          : nop                      ; 00
16EA:          : cpy w, a                 ; 3C
16EB:          : nop                      ; 00
16EC:          : nop                      ; 00
16ED:          : cpy w, a                 ; 3C
16EE:          : nop                      ; 00
16EF:          : nop                      ; 00
16F0:          : nop                      ; 00
16F1:          : nop                      ; 00
16F2:          : nop                      ; 00
16F3:          : push i                   ; 06
16F4:          : sub w, $00               ; 60 00
16F6:          : nop                      ; FF
16F7:          : nop                      ; 00
16F8:          : nop                      ; 00
16F9:          : nop                      ; 00
16FA:          : nop                      ; 00
16FB:          : nop                      ; 00
16FC:          : cpy w, a                 ; 3C
16FD:          : nop                      ; 00
16FE:          : nop                      ; 00
16FF:          : nop                      ; 00
1700:          : nop                      ; 00
1701:          : nop                      ; 00
1702:          : nop                      ; 00
1703: LBL_5891 : set i, $1718             ; 42 18 17
1706:          : store $0008, i           ; 2B 08 00
1709:          : set i, $17FA             ; 42 FA 17
170C:          : store $0002, i           ; 2B 02 00
170F:          : set i, $1403             ; 42 03 14
1712:          : store $0030, i           ; 2B 30 00
1715:          : jmp $1A90                ; C9 90 1A  LBL_6800 $1A90
1718:          : load a, $003B            ; 1D 3B 00
171B:          : cmpi a, $01              ; 8D 01
171D:          : jmp.eq $1720             ; D2 20 17  LBL_5920 $1720
1720: LBL_5920 : load z, $003D            ; 1B 3D 00
1723:          : cmpi z, $01              ; 8B 01
1725:          : jmp.neq $1788            ; D4 88 17  LBL_6024 $1788
1728:          : load z, $003C            ; 1B 3C 00
172B:          : cmpi z, $15              ; 8B 15
172D:          : jmp.eq $1760             ; D2 60 17  LBL_5984 $1760
1730:          : cmpi z, $2F              ; 8B 2F(/)
1732:          : jmp.eq $1760             ; D2 60 17  LBL_5984 $1760
1735:          : cmpi z, $17              ; 8B 17
1737:          : jmp.eq $1768             ; D2 68 17  LBL_5992 $1768
173A:          : cmpi z, $31              ; 8B 31(1)
173C:          : jmp.eq $1768             ; D2 68 17  LBL_5992 $1768
173F:          : cmpi z, $24              ; 8B 24($)
1741:          : jmp.eq $1770             ; D2 70 17  LBL_6000 $1770
1744:          : cmpi z, $3E              ; 8B 3E(>)
1746:          : jmp.eq $1770             ; D2 70 17  LBL_6000 $1770
1749:          : cmpi z, $22              ; 8B 22(")
174B:          : jmp.eq $1778             ; D2 78 17  LBL_6008 $1778
174E:          : cmpi z, $3C              ; 8B 3C(<)
1750:          : jmp.eq $1778             ; D2 78 17  LBL_6008 $1778
1753:          : cmpi z, $0D              ; 8B 0D
1755:          : jmp.eq $1780             ; D2 80 17  LBL_6016 $1780
1758:          : cmpi z, $27              ; 8B 27(')
175A:          : jmp.eq $1780             ; D2 80 17  LBL_6016 $1780
175D:          : jmp $1788                ; C9 88 17  LBL_6024 $1788
1760: LBL_5984 : set a, $00               ; 41 00
1762:          : store $178A, a           ; 2A 8A 17
1765:          : jmp $1788                ; C9 88 17  LBL_6024 $1788
1768: LBL_5992 : set a, $01               ; 41 01
176A:          : store $178A, a           ; 2A 8A 17
176D:          : jmp $1788                ; C9 88 17  LBL_6024 $1788
1770: LBL_6000 : set a, $02               ; 41 02
1772:          : store $178A, a           ; 2A 8A 17
1775:          : jmp $1788                ; C9 88 17  LBL_6024 $1788
1778: LBL_6008 : set a, $03               ; 41 03
177A:          : store $178A, a           ; 2A 8A 17
177D:          : jmp $1788                ; C9 88 17  LBL_6024 $1788
1780: LBL_6016 : set a, $01               ; 41 01
1782:          : store $178C, a           ; 2A 8C 17
1785:          : jmp $1788                ; C9 88 17  LBL_6024 $1788
1788: LBL_6024 : resume                   ; EA
1789:          : nop                      ; 00
178A:          : push f                   ; 08
178B:          : push x                   ; 01
178C:          : push x                   ; 01
178D:          : nop                      ; 00
178E:          : nop                      ; 00
178F:          : nop                      ; 00
1790:          : nop                      ; 00
1791:          : nop                      ; 00
1792:          : nop                      ; 00
1793:          : nop                      ; 00
1794:          : nop                      ; 00
1795:          : nop                      ; 00
1796:          : nop                      ; 00
1797:          : nop                      ; 00
1798:          : nop                      ; 00
1799:          : nop                      ; 00
179A:          : nop                      ; 00
179B:          : nop                      ; 00
179C:          : nop                      ; 00
179D:          : nop                      ; 00
179E:          : nop                      ; 00
179F:          : nop                      ; 00
17A0:          : nop                      ; 00
17A1:          : nop                      ; 00
17A2:          : nop                      ; 00
17A3:          : nop                      ; 00
17A4:          : nop                      ; 00
17A5:          : nop                      ; 00
17A6:          : nop                      ; 00
17A7:          : nop                      ; 00
17A8:          : nop                      ; 00
17A9:          : nop                      ; 00
17AA:          : nop                      ; 00
17AB:          : nop                      ; 00
17AC:          : nop                      ; 00
17AD:          : nop                      ; 00
17AE:          : push x                   ; 01
17AF:          : nop                      ; 00
17B0:          : nop                      ; 00
17B1:          : nop                      ; 00
17B2:          : nop                      ; 00
17B3:          : nop                      ; 00
17B4:          : nop                      ; 00
17B5:          : nop                      ; 00
17B6:          : nop                      ; 00
17B7:          : nop                      ; 00
17B8:          : nop                      ; 00
17B9:          : nop                      ; 00
17BA:          : nop                      ; 00
17BB:          : nop                      ; 00
17BC:          : nop                      ; 00
17BD:          : nop                      ; 00
17BE:          : nop                      ; 00
17BF:          : nop                      ; 00
17C0:          : nop                      ; 00
17C1:          : nop                      ; 00
17C2:          : nop                      ; 00
17C3:          : nop                      ; 00
17C4:          : nop                      ; 00
17C5:          : nop                      ; 00
17C6:          : nop                      ; 00
17C7:          : nop                      ; 00
17C8:          : nop                      ; 00
17C9:          : nop                      ; 00
17CA:          : nop                      ; 00
17CB:          : nop                      ; 00
17CC:          : nop                      ; 00
17CD:          : nop                      ; 00
17CE:          : nop                      ; 00
17CF:          : nop                      ; 00
17D0:          : push x                   ; 01
17D1:          : nop                      ; 00
17D2:          : nop                      ; 00
17D3:          : nop                      ; 00
17D4:          : nop                      ; 00
17D5:          : nop                      ; 00
17D6:          : nop                      ; 00
17D7:          : nop                      ; 00
17D8:          : nop                      ; 00
17D9:          : nop                      ; 00
17DA:          : nop                      ; 00
17DB:          : nop                      ; 00
17DC:          : nop                      ; 00
17DD:          : nop                      ; 00
17DE:          : nop                      ; 00
17DF:          : nop                      ; 00
17E0:          : nop                      ; 00
17E1:          : nop                      ; 00
17E2:          : nop                      ; 00
17E3:          : nop                      ; 00
17E4:          : nop                      ; 00
17E5:          : nop                      ; 00
17E6:          : nop                      ; 00
17E7:          : nop                      ; 00
17E8:          : nop                      ; 00
17E9:          : nop                      ; 00
17EA:          : nop                      ; 00
17EB:          : nop                      ; 00
17EC:          : nop                      ; 00
17ED:          : nop                      ; 00
17EE:          : nop                      ; 00
17EF:          : nop                      ; 00
17F0:          : nop                      ; 00
17F1:          : nop                      ; 00
17F2:          : nop                      ; 00
17F3:          : nop                      ; 00
17F4:          : nop                      ; 00
17F5:          : nop                      ; 00
17F6:          : nop                      ; 00
17F7:          : push.w $0000             ; 0A 00 00
17FA:          : load a, $17F5            ; 1D F5 17
17FD:          : add a, x                 ; 44
17FE:          : store $001E, a           ; 2A 1E 00
1801:          : neg a                    ; 71
1802:          : store $0021, a           ; 2A 21 00
1805:          : load a, $17F6            ; 1D F6 17
1808:          : add a, x                 ; 44
1809:          : store $001F, a           ; 2A 1F 00
180C:          : neg a                    ; 71
180D:          : store $0022, a           ; 2A 22 00
1810:          : load a, $17F7            ; 1D F7 17
1813:          : add a, x                 ; 44
1814:          : store $0020, a           ; 2A 20 00
1817:          : neg a                    ; 71
1818:          : store $0023, a           ; 2A 23 00
181B:          : resume                   ; EA
181C: FUN_6172 : load a, $00E1            ; 1D E1 00
181F:          : mod a, $5A               ; 6D 5A(Z)
1821:          : store $17F4, a           ; 2A F4 17
1824:          : load a, $00E1            ; 1D E1 00
1827:          : mod a, $5A               ; 6D 5A(Z)
1829:          : store $17F5, a           ; 2A F5 17
182C:          : load a, $00E1            ; 1D E1 00
182F:          : mod a, $5A               ; 6D 5A(Z)
1831:          : store $17F6, a           ; 2A F6 17
1834:          : load a, $1789            ; 1D 89 17
1837:          : add a, $0A               ; 55 0A
1839:          : set x, $08               ; 3D 08
183B:          : call $185A               ; 2D 5A 18  FUN_6234 $185A
183E:          : return                   ; 34
183F: FUN_6207 : set j, $FFFF             ; 43 FF FF
1842: LBL_6210 : dec j                    ; 7F
1843:          : jmp.nz $1842             ; DC 42 18  LBL_6210 $1842
1846:          : return                   ; 34
1847: FUN_6215 : set i, $0010             ; 42 10 00
184A: LBL_6218 : call $183F               ; 2D 3F 18  FUN_6207 $183F
184D:          : dec i                    ; 7E
184E:          : jmp.nz $184A             ; DC 4A 18  LBL_6218 $184A
1851:          : return                   ; 34
1852: FUN_6226 : push.b $20               ; 09 20
1854:          : set a, $03               ; 41 03
1856:          : bcall $0400, a           ; E4 00 04
1859:          : return                   ; 34
185A: FUN_6234 : store $003F, a           ; 2A 3F 00
185D:          : store $003E, x           ; 26 3E 00
1860:          : return                   ; 34
1861:          : set j, $0000             ; 43 00 00
1864:          : add j, y                 ; 4E
1865:          : mul j, $0028             ; 66 28 00
1868:          : add j, x                 ; 4D
1869:          : add j, $8000             ; 50 00 80
186C:          : add a, $30               ; 55 30(0)
186E:          : store j, a               ; 23
186F:          : return                   ; 34
1870: FUN_6256 : set j, $0000             ; 43 00 00
1873:          : add j, y                 ; 4E
1874:          : mul j, $0028             ; 66 28 00
1877:          : add j, x                 ; 4D
1878:          : add j, $8000             ; 50 00 80
187B:          : store j, a               ; 23
187C:          : return                   ; 34
187D: FUN_6269 : set j, $0000             ; 43 00 00
1880:          : add j, y                 ; 4E
1881:          : mul j, $0028             ; 66 28 00
1884:          : add j, x                 ; 4D
1885:          : add j, $8000             ; 50 00 80
1888:          : load a, j                ; 16
1889:          : return                   ; 34
188A: FUN_6282 : load a, $1789            ; 1D 89 17
188D:          : cmp a                    ; 84
188E:          : jmp.eq $1895             ; D2 95 18  LBL_6293 $1895
1891:          : inc a                    ; 76
1892:          : store $1789, a           ; 2A 89 17
1895: LBL_6293 : return                   ; 34
1896: FUN_6294 : load a, $00E1            ; 1D E1 00
1899:          : mod a, $28               ; 6D 28(()
189B:          : cpy x, a                 ; 39
189C:          : load a, $00E1            ; 1D E1 00
189F:          : mod a, $20               ; 6D 20
18A1:          : cpy y, a                 ; 3A
18A2:          : set a, $6F               ; 41 6F(o)
18A4:          : call $1870               ; 2D 70 18  FUN_6256 $1870
18A7:          : return                   ; 34
18A8: FUN_6312 : load a, $00E1            ; 1D E1 00
18AB:          : mod a, $28               ; 6D 28(()
18AD:          : cpy x, a                 ; 39
18AE:          : load a, $00E1            ; 1D E1 00
18B1:          : mod a, $20               ; 6D 20
18B3:          : cpy y, a                 ; 3A
18B4:          : set a, $2A               ; 41 2A(*)
18B6:          : call $1870               ; 2D 70 18  FUN_6256 $1870
18B9:          : return                   ; 34
18BA: FUN_6330 : call $1847               ; 2D 47 18  FUN_6215 $1847
18BD:          : call $1852               ; 2D 52 18  FUN_6226 $1852
18C0:          : call $181C               ; 2D 1C 18  FUN_6172 $181C
18C3:          : set a, $03               ; 41 03
18C5:          : store $178A, a           ; 2A 8A 17
18C8:          : set a, $03               ; 41 03
18CA:          : store $1789, a           ; 2A 89 17
18CD:          : set a, $00               ; 41 00
18CF:          : store $178B, a           ; 2A 8B 17
18D2:          : load a, $00E1            ; 1D E1 00
18D5:          : mod a, $0A               ; 6D 0A
18D7:          : inc a                    ; 76
18D8:          : store $17F7, a           ; 2A F7 17
18DB:          : set a, $0F               ; 41 0F
18DD:          : store $178E, a           ; 2A 8E 17
18E0:          : store $178D, a           ; 2A 8D 17
18E3:          : set a, $0F               ; 41 0F
18E5:          : store $17B0, a           ; 2A B0 17
18E8:          : store $17AF, a           ; 2A AF 17
18EB:          : push.w $178E             ; 0A 8E 17
18EE:          : push.b $00               ; 09 00
18F0:          : push.w $0020             ; 0A 20 00
18F3:          : set a, $02               ; 41 02
18F5:          : bcall $0400, a           ; E4 00 04
18F8:          : push.w $17B0             ; 0A B0 17
18FB:          : push.b $00               ; 09 00
18FD:          : push.w $0020             ; 0A 20 00
1900:          : set a, $02               ; 41 02
1902:          : bcall $0400, a           ; E4 00 04
1905:          : push.w $17D1             ; 0A D1 17
1908:          : push.b $00               ; 09 00
190A:          : push.w $0021             ; 0A 21 00
190D:          : set a, $02               ; 41 02
190F:          : bcall $0400, a           ; E4 00 04
1912:          : call $1896               ; 2D 96 18  FUN_6294 $1896
1915:          : call $1896               ; 2D 96 18  FUN_6294 $1896
1918:          : call $1896               ; 2D 96 18  FUN_6294 $1896
191B:          : call $1896               ; 2D 96 18  FUN_6294 $1896
191E:          : call $1896               ; 2D 96 18  FUN_6294 $1896
1921:          : return                   ; 34
1922: FUN_6434 : load x, $178D            ; 19 8D 17
1925:          : load y, $17AF            ; 1A AF 17
1928:          : cmpi x, $28              ; 89 28(()
192A:          : jmp.eq $1963             ; D2 63 19  LBL_6499 $1963
192D:          : jmp.gt $1963             ; D6 63 19  LBL_6499 $1963
1930:          : cmpi y, $20              ; 8A 20
1932:          : jmp.eq $1963             ; D2 63 19  LBL_6499 $1963
1935:          : jmp.gt $1963             ; D6 63 19  LBL_6499 $1963
1938:          : call $187D               ; 2D 7D 18  FUN_6269 $187D
193B:          : cmpi a, $20              ; 8D 20
193D:          : jmp.eq $1972             ; D2 72 19  LBL_6514 $1972
1940:          : cmpi a, $73              ; 8D 73(s)
1942:          : jmp.eq $1963             ; D2 63 19  LBL_6499 $1963
1945:          : cmpi a, $2A              ; 8D 2A(*)
1947:          : jmp.eq $1963             ; D2 63 19  LBL_6499 $1963
194A:          : cmpi a, $6F              ; 8D 6F(o)
194C:          : jmp.eq $1952             ; D2 52 19  LBL_6482 $1952
194F:          : jmp $1972                ; C9 72 19  LBL_6514 $1972
1952: LBL_6482 : set a, $20               ; 41 20
1954:          : call $1870               ; 2D 70 18  FUN_6256 $1870
1957:          : call $188A               ; 2D 8A 18  FUN_6282 $188A
195A:          : call $1896               ; 2D 96 18  FUN_6294 $1896
195D:          : call $181C               ; 2D 1C 18  FUN_6172 $181C
1960:          : jmp $1972                ; C9 72 19  LBL_6514 $1972
1963: LBL_6499 : set a, $18               ; 41 18
1965:          : set x, $50               ; 3D 50(P)
1967:          : call $185A               ; 2D 5A 18  FUN_6234 $185A
196A:          : set a, $01               ; 41 01
196C:          : store $178B, a           ; 2A 8B 17
196F:          : jmp $1972                ; C9 72 19  LBL_6514 $1972
1972: LBL_6514 : return                   ; 34
1973: FUN_6515 : push.w $17D1             ; 0A D1 17
1976:          : push.w $178E             ; 0A 8E 17
1979:          : load a, $1789            ; 1D 89 17
197C:          : push a                   ; 05
197D:          : set a, $01               ; 41 01
197F:          : bcall $0400, a           ; E4 00 04
1982:          : push.w $178F             ; 0A 8F 17
1985:          : push.w $17D1             ; 0A D1 17
1988:          : load a, $1789            ; 1D 89 17
198B:          : push a                   ; 05
198C:          : set a, $01               ; 41 01
198E:          : bcall $0400, a           ; E4 00 04
1991:          : push.w $17D1             ; 0A D1 17
1994:          : push.w $17B0             ; 0A B0 17
1997:          : load a, $1789            ; 1D 89 17
199A:          : push a                   ; 05
199B:          : set a, $01               ; 41 01
199D:          : bcall $0400, a           ; E4 00 04
19A0:          : push.w $17B1             ; 0A B1 17
19A3:          : push.w $17D1             ; 0A D1 17
19A6:          : load a, $1789            ; 1D 89 17
19A9:          : push a                   ; 05
19AA:          : set a, $01               ; 41 01
19AC:          : bcall $0400, a           ; E4 00 04
19AF:          : load a, $178D            ; 1D 8D 17
19B2:          : store $178E, a           ; 2A 8E 17
19B5:          : load a, $17AF            ; 1D AF 17
19B8:          : store $17B0, a           ; 2A B0 17
19BB:          : return                   ; 34
19BC: FUN_6588 : load a, $178A            ; 1D 8A 17
19BF:          : set x, $01               ; 3D 01
19C1:          : set y, $01               ; 3E 01
19C3:          : load a, $1789            ; 1D 89 17
19C6:          : set x, $05               ; 3D 05
19C8:          : set y, $01               ; 3E 01
19CA:          : load a, $178B            ; 1D 8B 17
19CD:          : set x, $08               ; 3D 08
19CF:          : set y, $01               ; 3E 01
19D1:          : load a, $178D            ; 1D 8D 17
19D4:          : set x, $01               ; 3D 01
19D6:          : set y, $00               ; 3E 00
19D8:          : load a, $17AF            ; 1D AF 17
19DB:          : set x, $04               ; 3D 04
19DD:          : set y, $00               ; 3E 00
19DF:          : load x, $17F2            ; 19 F2 17
19E2:          : load y, $17F3            ; 1A F3 17
19E5:          : set a, $6F               ; 41 6F(o)
19E7:          : call $1870               ; 2D 70 18  FUN_6256 $1870
19EA:          : load a, $1789            ; 1D 89 17
19ED:          : set j, $178E             ; 43 8E 17
19F0:          : add j, a                 ; 4C
19F1:          : load x, j                ; 17
19F2:          : set j, $17B0             ; 43 B0 17
19F5:          : add j, a                 ; 4C
19F6:          : load y, j                ; 18
19F7:          : set a, $20               ; 41 20
19F9:          : call $1870               ; 2D 70 18  FUN_6256 $1870
19FC:          : set a, $00               ; 41 00
19FE: LBL_6654 : set j, $178E             ; 43 8E 17
1A01:          : add j, a                 ; 4C
1A02:          : load x, j                ; 17
1A03:          : set j, $17B0             ; 43 B0 17
1A06:          : add j, a                 ; 4C
1A07:          : load y, j                ; 18
1A08:          : push a                   ; 05
1A09:          : set a, $73               ; 41 73(s)
1A0B:          : call $1870               ; 2D 70 18  FUN_6256 $1870
1A0E:          : pop a                    ; 0F
1A0F:          : inc a                    ; 76
1A10:          : load x, $1789            ; 19 89 17
1A13:          : cmp a, x                 ; 80
1A14:          : jmp.neq $19FE            ; D4 FE 19  LBL_6654 $19FE
1A17:          : set a, $53               ; 41 53(S)
1A19:          : load x, $178A            ; 19 8A 17
1A1C:          : add a, x                 ; 44
1A1D:          : load x, $178D            ; 19 8D 17
1A20:          : load y, $17AF            ; 1A AF 17
1A23:          : call $1870               ; 2D 70 18  FUN_6256 $1870
1A26:          : return                   ; 34
1A27: FUN_6695 : load a, $178C            ; 1D 8C 17
1A2A:          : jmp.z $1A35              ; DA 35 1A  LBL_6709 $1A35
1A2D:          : set a, $00               ; 41 00
1A2F:          : store $178C, a           ; 2A 8C 17
1A32:          : call $188A               ; 2D 8A 18  FUN_6282 $188A
1A35: LBL_6709 : return                   ; 34
1A36: FUN_6710 : load a, $178A            ; 1D 8A 17
1A39:          : load x, $178D            ; 19 8D 17
1A3C:          : load y, $17AF            ; 1A AF 17
1A3F:          : cmpi a, $00              ; 8D 00
1A41:          : jmp.neq $1A48            ; D4 48 1A  LBL_6728 $1A48
1A44:          : dec y                    ; 7A
1A45:          : jmp $1A60                ; C9 60 1A  LBL_6752 $1A60
1A48: LBL_6728 : cmpi a, $01              ; 8D 01
1A4A:          : jmp.neq $1A51            ; D4 51 1A  LBL_6737 $1A51
1A4D:          : inc y                    ; 73
1A4E:          : jmp $1A60                ; C9 60 1A  LBL_6752 $1A60
1A51: LBL_6737 : cmpi a, $02              ; 8D 02
1A53:          : jmp.neq $1A5A            ; D4 5A 1A  LBL_6746 $1A5A
1A56:          : dec x                    ; 79
1A57:          : jmp $1A60                ; C9 60 1A  LBL_6752 $1A60
1A5A: LBL_6746 : cmpi a, $03              ; 8D 03
1A5C:          : jmp.neq $1A60            ; D4 60 1A  LBL_6752 $1A60
1A5F:          : inc x                    ; 72
1A60: LBL_6752 : store $178D, x           ; 26 8D 17
1A63:          : store $17AF, y           ; 27 AF 17
1A66:          : return                   ; 34
1A67: FUN_6759 : load a, $17F7            ; 1D F7 17
1A6A:          : cmp a                    ; 84
1A6B:          : jmp.nz $1A8B             ; DC 8B 1A  LBL_6795 $1A8B
1A6E:          : load a, $00E1            ; 1D E1 00
1A71:          : mod a, $02               ; 6D 02
1A73:          : cmp a                    ; 84
1A74:          : jmp.eq $1A7D             ; D2 7D 1A  LBL_6781 $1A7D
1A77:          : call $18A8               ; 2D A8 18  FUN_6312 $18A8
1A7A:          : jmp $1A80                ; C9 80 1A  LBL_6784 $1A80
1A7D: LBL_6781 : call $1896               ; 2D 96 18  FUN_6294 $1896
1A80: LBL_6784 : load a, $00E1            ; 1D E1 00
1A83:          : mod a, $03               ; 6D 03
1A85:          : add a, $01               ; 55 01
1A87:          : store $17F7, a           ; 2A F7 17
1A8A:          : return                   ; 34
1A8B: LBL_6795 : dec a                    ; 7D
1A8C:          : store $17F7, a           ; 2A F7 17
1A8F:          : return                   ; 34
1A90: LBL_6800 : call $18BA               ; 2D BA 18  FUN_6330 $18BA
1A93: LBL_6803 : call $1A27               ; 2D 27 1A  FUN_6695 $1A27
1A96:          : call $1A67               ; 2D 67 1A  FUN_6759 $1A67
1A99:          : call $1A36               ; 2D 36 1A  FUN_6710 $1A36
1A9C:          : call $1973               ; 2D 73 19  FUN_6515 $1973
1A9F:          : call $1922               ; 2D 22 19  FUN_6434 $1922
1AA2:          : load a, $178B            ; 1D 8B 17
1AA5:          : cmpi a, $01              ; 8D 01
1AA7:          : call.eq $18BA            ; 2E BA 18
1AAA:          : call $19BC               ; 2D BC 19  FUN_6588 $19BC
1AAD:          : call $1847               ; 2D 47 18  FUN_6215 $1847
1AB0:          : jmp $1A93                ; C9 93 1A  LBL_6803 $1A93
