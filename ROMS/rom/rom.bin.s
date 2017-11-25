0000:          : nop                      ; 00
0001:          : load w, $6C66            ; 18 66 6C
0004:          : load w, $3846            ; 18 46 38
0007:          : load w, $0C30            ; 18 30 0C
000A:          : cpy y, a                 ; 36
000B:          : nop                      ; 00
000C:          : nop                      ; 00
000D:          : nop                      ; 00
000E:          : nop                      ; 00
000F:          : add a, x                 ; 40
0010:          : set w, $18               ; 3C 18
0012:          : set w, $3C               ; 3C 3C(<)
0014:          : cpy w, a                 ; 38
0015:          : cmp a, z                 ; 7E
0016:          : set w, $7E               ; 3C 7E(~)
0018:          : set w, $3C               ; 3C 3C(<)
001A:          : nop                      ; 00
001B:          : nop                      ; 00
001C:          : mul i, j                 ; 60
001D:          : nop                      ; 00
001E:          : pop a                    ; 0C
001F:          : set w, $3C               ; 3C 3C(<)
0021:          : set w, $3E               ; 3C 3E(>)
0023:          : set w, $3E               ; 3C 3E(>)
0025:          : cmp a, z                 ; 7E
0026:          : cmp a, z                 ; 7E
0027:          : set w, $66               ; 3C 66(f)
0029:          : set w, $60               ; 3C 60(`)
002B:          : div i, $6306             ; 66 06 63
002E:          : div i, $3E3C             ; 66 3C 3E
0031:          : set w, $3E               ; 3C 3E(>)
0033:          : set w, $7E               ; 3C 7E(~)
0035:          : div i, $6366             ; 66 66 63
0038:          : div i, $7E66             ; 66 66 7E
003B:          : set w, $02               ; 3C 02
003D:          : set w, $10               ; 3C 10
003F:          : nop                      ; 00
0040:          : load w, $0600            ; 18 00 06
0043:          : nop                      ; 00
0044:          : mul i, j                 ; 60
0045:          : nop                      ; 00
0046:          : inc z                    ; 70
0047:          : nop                      ; 00
0048:          : push.f                   ; 06
0049:          : load w, $0660            ; 18 60 06
004C:          : cpy w, a                 ; 38
004D:          : nop                      ; 00
004E:          : nop                      ; 00
004F:          : nop                      ; 00
0050:          : nop                      ; 00
0051:          : nop                      ; 00
0052:          : nop                      ; 00
0053:          : nop                      ; 00
0054:          : load w, $0000            ; 18 00 00
0057:          : nop                      ; 00
0058:          : nop                      ; 00
0059:          : nop                      ; 00
005A:          : nop                      ; 00
005B:          : nop                      ; 00
005C:          : nop                      ; 00
005D:          : nop                      ; 00
005E:          : nop                      ; 00
005F:          : nop                      ; 00
0060:          : nop                      ; 00
0061:          : load w, $FE66            ; 18 66 FE
0064:          : cmp a, x                 ; 7C
0065:          : div i, $186C             ; 66 6C 18
0068:          : load w, $1C18            ; 18 18 1C
006B:          : load z, i                ; 10
006C:          : nop                      ; 00
006D:          : nop                      ; 00
006E:          : nop                      ; 00
006F:          : mul i, j                 ; 60
0070:          : div i, $661C             ; 66 1C 66
0073:          : div i, $063C             ; 66 3C 06
0076:          : div i, $6660             ; 66 60 66
0079:          : div i, $1818             ; 66 18 18
007C:          : return                   ; 30
007D:          : nop                      ; 00
007E:          : load w, $4262            ; 18 62 42
0081:          : div i, $6666             ; 66 66 66
0084:          : div i, $0606             ; 66 06 06
0087:          : div i, $1866             ; 66 66 18
008A:          : mul i, j                 ; 60
008B:          : cpy y, a                 ; 36
008C:          : push.f                   ; 06
008D:          : dec z                    ; 77
008E:          : div i, $6666             ; 66 66 66
0091:          : div i, $6666             ; 66 66 66
0094:          : load w, $6666            ; 18 66 66
0097:          : div a, x                 ; 63
0098:          : div i, $6066             ; 66 66 60
009B:          : pop a                    ; 0C
009C:          : push.f                   ; 06
009D:          : return                   ; 30
009E:          : cpy w, a                 ; 38
009F:          : nop                      ; 00
00A0:          : return                   ; 30
00A1:          : nop                      ; 00
00A2:          : push.f                   ; 06
00A3:          : nop                      ; 00
00A4:          : mul i, j                 ; 60
00A5:          : nop                      ; 00
00A6:          : load w, $0600            ; 18 00 06
00A9:          : nop                      ; 00
00AA:          : nop                      ; 00
00AB:          : push.f                   ; 06
00AC:          : return                   ; 30
00AD:          : nop                      ; 00
00AE:          : nop                      ; 00
00AF:          : nop                      ; 00
00B0:          : nop                      ; 00
00B1:          : nop                      ; 00
00B2:          : nop                      ; 00
00B3:          : nop                      ; 00
00B4:          : load w, $0000            ; 18 00 00
00B7:          : nop                      ; 00
00B8:          : nop                      ; 00
00B9:          : nop                      ; 00
00BA:          : nop                      ; 00
00BB:          : nop                      ; 00
00BC:          : nop                      ; 00
00BD:          : nop                      ; 00
00BE:          : nop                      ; 00
00BF:          : nop                      ; 00
00C0:          : nop                      ; 00
00C1:          : load w, $6C66            ; 18 66 6C
00C4:          : push.f                   ; 06
00C5:          : return                   ; 30
00C6:          : mod j, $0C18             ; 6C 18 0C
00C9:          : return                   ; 30
00CA:          : cmp a, w                 ; 7F
00CB:          : load z, i                ; 10
00CC:          : nop                      ; 00
00CD:          : nop                      ; 00
00CE:          : nop                      ; 00
00CF:          : return                   ; 30
00D0:          : div i, $6018             ; 66 18 60
00D3:          : mul i, j                 ; 60
00D4:          : cpy y, a                 ; 36
00D5:          : set i, $3006             ; 3E 06 30
00D8:          : div i, $1866             ; 66 66 18
00DB:          : load w, $7E18            ; 18 18 7E
00DE:          : return                   ; 30
00DF:          : mul i, j                 ; 60
00E0:          : and a, $66               ; 99 66(f)
00E2:          : div i, $6606             ; 66 06 66
00E5:          : push.f                   ; 06
00E6:          : push.f                   ; 06
00E7:          : push.f                   ; 06
00E8:          : div i, $6018             ; 66 18 60
00EB:          : store i, z               ; 1E
00EC:          : push.f                   ; 06
00ED:          : cmp a, w                 ; 7F
00EE:          : inc x                    ; 6E
00EF:          : div i, $6666             ; 66 66 66
00F2:          : div i, $1806             ; 66 06 18
00F5:          : div i, $6366             ; 66 66 63
00F8:          : set w, $66               ; 3C 66(f)
00FA:          : return                   ; 30
00FB:          : pop a                    ; 0C
00FC:          : pop a                    ; 0C
00FD:          : return                   ; 30
00FE:          : mod j, $0000             ; 6C 00 00
0101:          : set w, $3E               ; 3C 3E(>)
0103:          : set w, $7C               ; 3C 7C(|)
0105:          : set w, $3C               ; 3C 3C(<)
0107:          : cmp a, x                 ; 7C
0108:          : set i, $701C             ; 3E 1C 70
010B:          : div i, $3730             ; 66 30 37
010E:          : set i, $3E3C             ; 3E 3C 3E
0111:          : cmp a, x                 ; 7C
0112:          : dec y                    ; 76
0113:          : cmp a, x                 ; 7C
0114:          : set w, $66               ; 3C 66(f)
0116:          : div i, $666B             ; 66 6B 66
0119:          : div i, $007E             ; 66 7E 00
011C:          : nop                      ; 00
011D:          : nop                      ; 00
011E:          : nop                      ; 00
011F:          : nop                      ; 00
0120:          : nop                      ; 00
0121:          : load w, $6C00            ; 18 00 6C
0124:          : set w, $18               ; 3C 18
0126:          : cpy w, a                 ; 38
0127:          : nop                      ; 00
0128:          : pop a                    ; 0C
0129:          : return                   ; 30
012A:          : store i, a               ; 1C
012B:          : cmp a, x                 ; 7C
012C:          : nop                      ; 00
012D:          : cmp a, z                 ; 7E
012E:          : nop                      ; 00
012F:          : load w, $1866            ; 18 66 18
0132:          : cpy w, a                 ; 38
0133:          : cpy w, a                 ; 38
0134:          : cpy y, a                 ; 36
0135:          : mul i, j                 ; 60
0136:          : set i, $3C18             ; 3E 18 3C
0139:          : cmp a, x                 ; 7C
013A:          : nop                      ; 00
013B:          : nop                      ; 00
013C:          : pop a                    ; 0C
013D:          : nop                      ; 00
013E:          : mul i, j                 ; 60
013F:          : cpy w, a                 ; 38
0140:          : not z                    ; A5
0141:          : cmp a, z                 ; 7E
0142:          : set i, $6606             ; 3E 06 66
0145:          : store i, z               ; 1E
0146:          : store i, z               ; 1E
0147:          : dec y                    ; 76
0148:          : cmp a, z                 ; 7E
0149:          : load w, $0E60            ; 18 60 0E
014C:          : push.f                   ; 06
014D:          : mod i, $667E             ; 6B 7E 66
0150:          : set i, $3E66             ; 3E 66 3E
0153:          : set w, $18               ; 3C 18
0155:          : div i, $6B66             ; 66 66 6B
0158:          : load w, $183C            ; 18 3C 18
015B:          : pop a                    ; 0C
015C:          : load w, $4430            ; 18 30 44
015F:          : nop                      ; 00
0160:          : nop                      ; 00
0161:          : mul i, j                 ; 60
0162:          : div i, $6666             ; 66 66 66
0165:          : div i, $6618             ; 66 18 66
0168:          : div i, $6018             ; 66 18 60
016B:          : cpy y, a                 ; 36
016C:          : return                   ; 30
016D:          : cmp a, w                 ; 7F
016E:          : div i, $6666             ; 66 66 66
0171:          : div i, $060E             ; 66 0E 06
0174:          : load w, $6666            ; 18 66 66
0177:          : mod i, $663C             ; 6B 3C 66
017A:          : return                   ; 30
017B:          : nop                      ; 00
017C:          : nop                      ; 00
017D:          : nop                      ; 00
017E:          : nop                      ; 00
017F:          : nop                      ; 00
0180:          : nop                      ; 00
0181:          : load w, $6C00            ; 18 00 6C
0184:          : mul i, j                 ; 60
0185:          : pop a                    ; 0C
0186:          : dba $00                  ; EC 00 0C
0189:          : return                   ; 30
018A:          : cpy y, a                 ; 36
018B:          : load z, i                ; 10
018C:          : load w, $0000            ; 18 00 00
018F:          : pop a                    ; 0C
0190:          : div i, $0C18             ; 66 18 0C
0193:          : mul i, j                 ; 60
0194:          : cmp a, z                 ; 7E
0195:          : mul i, j                 ; 60
0196:          : div i, $6618             ; 66 18 66
0199:          : mul i, j                 ; 60
019A:          : load w, $1818            ; 18 18 18
019D:          : cmp a, z                 ; 7E
019E:          : return                   ; 30
019F:          : load w, $66A5            ; 18 A5 66
01A2:          : div i, $6606             ; 66 06 66
01A5:          : push.f                   ; 06
01A6:          : push.f                   ; 06
01A7:          : div i, $1866             ; 66 66 18
01AA:          : mul i, j                 ; 60
01AB:          : store i, z               ; 1E
01AC:          : push.f                   ; 06
01AD:          : div a, x                 ; 63
01AE:          : dec y                    ; 76
01AF:          : div i, $6606             ; 66 06 66
01B2:          : store i, z               ; 1E
01B3:          : mul i, j                 ; 60
01B4:          : load w, $6666            ; 18 66 66
01B7:          : cmp a, w                 ; 7F
01B8:          : set w, $18               ; 3C 18
01BA:          : pop a                    ; 0C
01BB:          : pop a                    ; 0C
01BC:          : return                   ; 30
01BD:          : return                   ; 30
01BE:          : nop                      ; 00
01BF:          : nop                      ; 00
01C0:          : nop                      ; 00
01C1:          : cmp a, x                 ; 7C
01C2:          : div i, $6606             ; 66 06 66
01C5:          : set i, $6618             ; 3E 18 66
01C8:          : div i, $6018             ; 66 18 60
01CB:          : store i, z               ; 1E
01CC:          : return                   ; 30
01CD:          : mod i, $6666             ; 6B 66 66
01D0:          : div i, $0666             ; 66 66 06
01D3:          : set w, $18               ; 3C 18
01D5:          : div i, $7F66             ; 66 66 7F
01D8:          : load w, $1866            ; 18 66 18
01DB:          : nop                      ; 00
01DC:          : nop                      ; 00
01DD:          : nop                      ; 00
01DE:          : nop                      ; 00
01DF:          : nop                      ; 00
01E0:          : nop                      ; 00
01E1:          : nop                      ; 00
01E2:          : nop                      ; 00
01E3:          : nop                      ; FE
01E4:          : set i, $6666             ; 3E 66 66
01E7:          : nop                      ; 00
01E8:          : load w, $0018            ; 18 18 00
01EB:          : load z, i                ; 10
01EC:          : load w, $1800            ; 18 00 18
01EF:          : push.f                   ; 06
01F0:          : div i, $0618             ; 66 18 06
01F3:          : div i, $6630             ; 66 30 66
01F6:          : div i, $6618             ; 66 18 66
01F9:          : div i, $1818             ; 66 18 18
01FC:          : return                   ; 30
01FD:          : nop                      ; 00
01FE:          : load w, $7900            ; 18 00 79
0201:          : div i, $6666             ; 66 66 66
0204:          : div i, $0606             ; 66 06 06
0207:          : div i, $1866             ; 66 66 18
020A:          : div i, $0636             ; 66 36 06
020D:          : div a, x                 ; 63
020E:          : div i, $0666             ; 66 66 06
0211:          : div i, $6636             ; 66 36 66
0214:          : load w, $3C66            ; 18 66 3C
0217:          : dec z                    ; 77
0218:          : div i, $0618             ; 66 18 06
021B:          : pop a                    ; 0C
021C:          : mul i, j                 ; 60
021D:          : return                   ; 30
021E:          : nop                      ; 00
021F:          : nop                      ; 00
0220:          : nop                      ; 00
0221:          : div i, $6666             ; 66 66 66
0224:          : div i, $1806             ; 66 06 18
0227:          : cmp a, x                 ; 7C
0228:          : div i, $6018             ; 66 18 60
022B:          : cpy y, a                 ; 36
022C:          : return                   ; 30
022D:          : mod i, $6666             ; 6B 66 66
0230:          : div i, $0666             ; 66 66 06
0233:          : mul i, j                 ; 60
0234:          : load w, $3C66            ; 18 66 3C
0237:          : set i, $7C3C             ; 3E 3C 7C
023A:          : pop a                    ; 0C
023B:          : nop                      ; 00
023C:          : nop                      ; 00
023D:          : nop                      ; 00
023E:          : nop                      ; 00
023F:          : nop                      ; 00
0240:          : nop                      ; 00
0241:          : load w, $6C00            ; 18 00 6C
0244:          : load w, $FC62            ; 18 62 FC
0247:          : nop                      ; 00
0248:          : return                   ; 30
0249:          : pop a                    ; 0C
024A:          : nop                      ; 00
024B:          : nop                      ; 00
024C:          : pop a                    ; 0C
024D:          : nop                      ; 00
024E:          : load w, $3C02            ; 18 02 3C
0251:          : cmp a, z                 ; 7E
0252:          : cmp a, z                 ; 7E
0253:          : set w, $78               ; 3C 78(x)
0255:          : set w, $3C               ; 3C 3C(<)
0257:          : load w, $3C3C            ; 18 3C 3C
025A:          : nop                      ; 00
025B:          : pop x                    ; 08
025C:          : mul i, j                 ; 60
025D:          : nop                      ; 00
025E:          : pop a                    ; 0C
025F:          : load w, $6602            ; 18 02 66
0262:          : set i, $3E3C             ; 3E 3C 3E
0265:          : cmp a, z                 ; 7E
0266:          : push.f                   ; 06
0267:          : set w, $66               ; 3C 66(f)
0269:          : set w, $3C               ; 3C 3C(<)
026B:          : div i, $637E             ; 66 7E 63
026E:          : div i, $063C             ; 66 3C 06
0271:          : set w, $66               ; 3C 66(f)
0273:          : set w, $18               ; 3C 18
0275:          : set w, $18               ; 3C 18
0277:          : div a, x                 ; 63
0278:          : div i, $7E18             ; 66 18 7E
027B:          : set w, $40               ; 3C 40(@)
027D:          : set w, $00               ; 3C 00
027F:          : nop                      ; 00
0280:          : nop                      ; 00
0281:          : cmp a, x                 ; 7C
0282:          : set i, $7C3C             ; 3E 3C 7C
0285:          : cmp a, x                 ; 7C
0286:          : load w, $6660            ; 18 60 66
0289:          : set w, $66               ; 3C 66(f)
028B:          : div i, $6B78             ; 66 78 6B
028E:          : div i, $3E3C             ; 66 3C 3E
0291:          : cmp a, x                 ; 7C
0292:          : push.f                   ; 06
0293:          : set i, $7C30             ; 3E 30 7C
0296:          : load w, $6636            ; 18 36 66
0299:          : mul i, j                 ; 60
029A:          : cmp a, z                 ; 7E
029B:          : nop                      ; 00
029C:          : nop                      ; 00
029D:          : nop                      ; 00
029E:          : nop                      ; 00
029F:          : nop                      ; 00
02A0:          : nop                      ; 00
02A1:          : nop                      ; 00
02A2:          : nop                      ; 00
02A3:          : nop                      ; 00
02A4:          : nop                      ; 00
02A5:          : nop                      ; 00
02A6:          : nop                      ; 00
02A7:          : nop                      ; 00
02A8:          : nop                      ; 00
02A9:          : nop                      ; 00
02AA:          : nop                      ; 00
02AB:          : nop                      ; 00
02AC:          : nop                      ; 00
02AD:          : nop                      ; 00
02AE:          : nop                      ; 00
02AF:          : nop                      ; 00
02B0:          : nop                      ; 00
02B1:          : nop                      ; 00
02B2:          : nop                      ; 00
02B3:          : nop                      ; 00
02B4:          : nop                      ; 00
02B5:          : nop                      ; 00
02B6:          : nop                      ; 00
02B7:          : nop                      ; 00
02B8:          : nop                      ; 00
02B9:          : nop                      ; 00
02BA:          : nop                      ; 00
02BB:          : nop                      ; 00
02BC:          : nop                      ; 00
02BD:          : nop                      ; 00
02BE:          : nop                      ; 00
02BF:          : nop                      ; 00
02C0:          : set w, $00               ; 3C 00
02C2:          : nop                      ; 00
02C3:          : nop                      ; 00
02C4:          : nop                      ; 00
02C5:          : nop                      ; 00
02C6:          : nop                      ; 00
02C7:          : nop                      ; 00
02C8:          : nop                      ; 00
02C9:          : nop                      ; 00
02CA:          : nop                      ; 00
02CB:          : nop                      ; 00
02CC:          : nop                      ; 00
02CD:          : nop                      ; 00
02CE:          : nop                      ; 00
02CF:          : nop                      ; 00
02D0:          : nop                      ; 00
02D1:          : mul i, j                 ; 60
02D2:          : nop                      ; 00
02D3:          : nop                      ; 00
02D4:          : nop                      ; 00
02D5:          : nop                      ; 00
02D6:          : nop                      ; 00
02D7:          : nop                      ; 00
02D8:          : nop                      ; 00
02D9:          : nop                      ; 00
02DA:          : nop                      ; 00
02DB:          : nop                      ; 00
02DC:          : nop                      ; 00
02DD:          : nop                      ; 00
02DE:          : nop                      ; 00
02DF:          : nop                      ; FF
02E0:          : nop                      ; 00
02E1:          : nop                      ; 00
02E2:          : nop                      ; 00
02E3:          : nop                      ; 00
02E4:          : nop                      ; 00
02E5:          : nop                      ; 00
02E6:          : nop                      ; 00
02E7:          : set w, $00               ; 3C 00
02E9:          : nop                      ; 00
02EA:          : set w, $00               ; 3C 00
02EC:          : nop                      ; 00
02ED:          : nop                      ; 00
02EE:          : nop                      ; 00
02EF:          : nop                      ; 00
02F0:          : push.f                   ; 06
02F1:          : mul i, j                 ; 60
02F2:          : nop                      ; 00
02F3:          : nop                      ; 00
02F4:          : nop                      ; 00
02F5:          : nop                      ; 00
02F6:          : nop                      ; 00
02F7:          : nop                      ; 00
02F8:          : nop                      ; 00
02F9:          : set w, $00               ; 3C 00
02FB:          : nop                      ; 00
02FC:          : nop                      ; 00
02FD:          : nop                      ; 00
02FE:          : nop                      ; 00
02FF:          : nop                      ; 00
0300:          : add j, a                 ; 48
0301:          : div i, j                 ; 65
0302:          : mod j, $6F6C             ; 6C 6C 6F
0305:          : store j, y               ; 21
0306:          : cmp a, w                 ; 7F
0307:          : return                   ; 30
0308:          : cpy a, x                 ; 31
0309:          : cpy a, y                 ; 32
030A:          : cpy a, z                 ; 33
030B:          : cpy a, w                 ; 34
030C:          : cpy x, a                 ; 35
030D:          : cpy y, a                 ; 36
030E:          : cpy z, a                 ; 37
030F:          : cpy w, a                 ; 38
0310:          : set x, $61               ; 39 61(a)
0312:          : mul j, $6463             ; 62 63 64
0315:          : div i, j                 ; 65
0316:          : div i, $6867             ; 66 67 68
0319:          : mod a, $6A               ; 69 6A(j)
031B:          : mod i, $6D6C             ; 6B 6C 6D
031E:          : inc x                    ; 6E
031F:          : inc y                    ; 6F
0320:          : inc z                    ; 70
0321:          : inc w                    ; 71
0322:          : inc a                    ; 72
0323:          : inc i                    ; 73
0324:          : inc j                    ; 74
0325:          : dec x                    ; 75
0326:          : dec y                    ; 76
0327:          : dec z                    ; 77
0328:          : dec w                    ; 78
0329:          : dec a                    ; 79
032A:          : dec i                    ; 7A
032B:          : add a, y                 ; 41
032C:          : add a, z                 ; 42
032D:          : add a, w                 ; 43
032E:          : add i, j                 ; 44
032F:          : add i, a                 ; 45
0330:          : add i, z                 ; 46
0331:          : add i, w                 ; 47
0332:          : add j, a                 ; 48
0333:          : add j, x                 ; 49
0334:          : add j, y                 ; 4A
0335:          : add i, $4D4C             ; 4B 4C 4D
0338:          : add y, $4F               ; 4E 4F(O)
033A:          : add w, $51               ; 50 51(Q)
033C:          : sub a, x                 ; 52
033D:          : sub a, y                 ; 53
033E:          : sub a, z                 ; 54
033F:          : sub a, w                 ; 55
0340:          : sub i, $4D51             ; 56
0341:          : sub j, $4D51             ; 57
0342:          : sub i, j                 ; 58
0343:          : sub x, $5A               ; 59 5A(Z)
0345:          : store j, x               ; 20
0346:          : store j, y               ; 21
0347:          : store $2423, x           ; 22 23 24
034A:          : store $2726, w           ; 25 26 27
034D:          : store $4029, j           ; 28 29 40
0350:          : call.neq $2A2D           ; 2B 2D 2A
0353:          : set a, $2F               ; 3D 2F(/)
0355:          : call.gt $3B2E            ; 2C 2E 3B
0358:          : sub z, $5D               ; 5B 5D(])
035A:          : dec j                    ; 7B
035B:          : cmp a, y                 ; 7D
035C:          : set j, $3E3C             ; 3F 3C 3E
035F:          : set y, $7F               ; 3A 7F()
0361:          : cmp a, w                 ; 7F
0362:          : cmp a, w                 ; 7F
0363:          : cmp a, w                 ; 7F
0364:          : cmp a, w                 ; 7F
0365:          : cmp a, w                 ; 7F
0366:          : cmp a, w                 ; 7F
0367:          : cmp a, w                 ; 7F
0368:          : cmp a, w                 ; 7F
0369:          : cmp a, w                 ; 7F
036A:          : cmp a, w                 ; 7F
036B:          : cmp a, w                 ; 7F
036C:          : cmp a, w                 ; 7F
036D:          : cmp a, w                 ; 7F
036E:          : cmp a, w                 ; 7F
036F:          : cmp a, w                 ; 7F
0370:          : cmp a, w                 ; 7F
0371:          : cmp a, w                 ; 7F
0372:          : cmp a, w                 ; 7F
0373:          : cmp a, w                 ; 7F
0374: LBL_0884 : dec a                    ; 79
0375:          : push a                   ; 05
0376:          : load a, j                ; 12
0377:          : store i, a               ; 1C
0378:          : pop a                    ; 0C
0379:          : inc i                    ; 73
037A:          : inc j                    ; 74
037B:          : cmp a                    ; 80
037C:          : rjmp.nz $F8              ; D9 F8     LBL_0884 $0374
037E:          : return                   ; 30
037F: LBL_0895 : store i, a               ; 1C
0380:          : inc i                    ; 73
0381:          : dec j                    ; 7B
0382:          : rjmp.nz $FD              ; D9 FD     LBL_0895 $037F
0384:          : return                   ; 30
0385:          : nop                      ; 00
0386:          : nop                      ; 00
0387:          : nop                      ; 00
0388:          : nop                      ; 00
0389:          : nop                      ; 00
038A:          : nop                      ; 00
038B:          : nop                      ; 00
038C:          : nop                      ; 00
038D:          : cmp a                    ; 80
038E:          : set z, $3F               ; 3B 3F(?)
0390:          : add a, z                 ; 42
0391:          : set z, $3F               ; 3B 3F(?)
0393:          : add a, z                 ; 42
0394: FUN_0916 : set i, $03B3             ; 3E B3 03
0397:          : store $0000, i           ; 27 00 00
039A:          : set i, $03B6             ; 3E B6 03
039D:          : store $0002, i           ; 27 02 00
03A0:          : set i, $041A             ; 3E 1A 04
03A3:          : store $0004, i           ; 27 04 00
03A6:          : set i, $0484             ; 3E 84 04
03A9:          : store $0006, i           ; 27 06 00
03AC:          : set i, $0495             ; 3E 95 04
03AF:          : store $0008, i           ; 27 08 00
03B2:          : return                   ; 30
03B3:          : jmp $06F4                ; C5 F4 06  LBL_1780 $06F4
03B6:          : load a, $7B8F            ; 19 8F 7B
03B9:          : load x, $7B92            ; 15 92 7B
03BC:          : cmp a, x                 ; 7C
03BD:          : jmp.lt $03C6             ; D4 C6 03  LBL_0966 $03C6
03C0:          : jmp.gt $03C7             ; D2 C7 03  LBL_0967 $03C7
03C3:          : jmp $03D0                ; C5 D0 03  LBL_0976 $03D0
03C6: LBL_0966 : inc a                    ; 72
03C7: LBL_0967 : dec a                    ; 79
03C8:          : jmp.c $03CE              ; DA CE 03
03CB:          : jmp $03D0                ; C5 D0 03  LBL_0976 $03D0
03CE:          : set a, $FF               ; 3D FF
03D0: LBL_0976 : store $001E, a           ; 26 1E 00
03D3:          : neg a                    ; 6D
03D4:          : store $0021, a           ; 26 21 00
03D7:          : load a, $7B90            ; 19 90 7B
03DA:          : load x, $7B93            ; 15 93 7B
03DD:          : cmp a, x                 ; 7C
03DE:          : jmp.lt $03E7             ; D4 E7 03  LBL_0999 $03E7
03E1:          : jmp.gt $03E8             ; D2 E8 03  LBL_1000 $03E8
03E4:          : jmp $03F1                ; C5 F1 03  LBL_1009 $03F1
03E7: LBL_0999 : inc a                    ; 72
03E8: LBL_1000 : dec a                    ; 79
03E9:          : jmp.c $03EF              ; DA EF 03
03EC:          : jmp $03F1                ; C5 F1 03  LBL_1009 $03F1
03EF:          : set a, $FF               ; 3D FF
03F1: LBL_1009 : store $001F, a           ; 26 1F 00
03F4:          : neg a                    ; 6D
03F5:          : store $0022, a           ; 26 22 00
03F8:          : load a, $7B91            ; 19 91 7B
03FB:          : load x, $7B94            ; 15 94 7B
03FE:          : cmp a, x                 ; 7C
03FF:          : jmp.lt $0408             ; D4 08 04  LBL_1032 $0408
0402:          : jmp.gt $0409             ; D2 09 04  LBL_1033 $0409
0405:          : jmp $0412                ; C5 12 04  LBL_1042 $0412
0408: LBL_1032 : inc a                    ; 72
0409: LBL_1033 : dec a                    ; 79
040A:          : jmp.c $0410              ; DA 10 04
040D:          : jmp $0412                ; C5 12 04  LBL_1042 $0412
0410:          : set a, $FF               ; 3D FF
0412: LBL_1042 : store $0020, a           ; 26 20 00
0415:          : neg a                    ; 6D
0416:          : store $0023, a           ; 26 23 00
0419:          : resume                   ; E6
041A:          : load a, $7B8E            ; 19 8E 7B
041D:          : load x, $7B91            ; 15 91 7B
0420:          : cmp a, x                 ; 7C
0421:          : jmp.lt $0432             ; D4 32 04  LBL_1074 $0432
0424:          : jmp.gt $0439             ; D2 39 04  LBL_1081 $0439
0427:          : load a, $003E            ; 19 3E 00
042A:          : mod a, $30               ; 69 30(0)
042C:          : store $7B91, a           ; 26 91 7B
042F:          : jmp $043D                ; C5 3D 04  LBL_1085 $043D
0432: LBL_1074 : inc a                    ; 72
0433:          : store $7B8E, a           ; 26 8E 7B
0436:          : jmp $043D                ; C5 3D 04  LBL_1085 $043D
0439: LBL_1081 : dec a                    ; 79
043A:          : store $7B8E, a           ; 26 8E 7B
043D: LBL_1085 : load a, $7B8F            ; 19 8F 7B
0440:          : load x, $7B92            ; 15 92 7B
0443:          : cmp a, x                 ; 7C
0444:          : jmp.lt $0455             ; D4 55 04  LBL_1109 $0455
0447:          : jmp.gt $045C             ; D2 5C 04  LBL_1116 $045C
044A:          : load a, $003E            ; 19 3E 00
044D:          : mod a, $30               ; 69 30(0)
044F:          : store $7B92, a           ; 26 92 7B
0452:          : jmp $0460                ; C5 60 04  LBL_1120 $0460
0455: LBL_1109 : inc a                    ; 72
0456:          : store $7B8F, a           ; 26 8F 7B
0459:          : jmp $0460                ; C5 60 04  LBL_1120 $0460
045C: LBL_1116 : dec a                    ; 79
045D:          : store $7B8F, a           ; 26 8F 7B
0460: LBL_1120 : load a, $7B90            ; 19 90 7B
0463:          : load x, $7B93            ; 15 93 7B
0466:          : cmp a, x                 ; 7C
0467:          : jmp.lt $0478             ; D4 78 04  LBL_1144 $0478
046A:          : jmp.gt $047F             ; D2 7F 04  LBL_1151 $047F
046D:          : load a, $003E            ; 19 3E 00
0470:          : mod a, $30               ; 69 30(0)
0472:          : store $7B93, a           ; 26 93 7B
0475:          : jmp $0483                ; C5 83 04  LBL_1155 $0483
0478: LBL_1144 : inc a                    ; 72
0479:          : store $7B90, a           ; 26 90 7B
047C:          : jmp $0460                ; C5 60 04  LBL_1120 $0460
047F: LBL_1151 : dec a                    ; 79
0480:          : store $7B90, a           ; 26 90 7B
0483: LBL_1155 : resume                   ; E6
0484:          : dbn $4649                ; EE 49 46
0487:          : load a, $0034            ; 19 34 00
048A:          : dbr $0061                ; EB 61(a)
048C:          : store $7B85, a           ; 26 85 7B
048F:          : set a, $00               ; 3D 00
0491:          : store $0034, a           ; 26 34 00
0494:          : resume                   ; E6
0495:          : nop                      ; 00
0496:          : resume                   ; E6
0497:          : nop                      ; 00
0498:          : resume                   ; E6
0499: FUN_1177 : set a, $44               ; 3D 44(D)
049B:          : store $8499, a           ; 26 99 84
049E:          : set a, $58               ; 3D 58(X)
04A0:          : store $849A, a           ; 26 9A 84
04A3:          : set a, $38               ; 3D 38(8)
04A5:          : store $849B, a           ; 26 9B 84
04A8:          : set a, $2F               ; 3D 2F(/)
04AA:          : store $849D, a           ; 26 9D 84
04AD:          : set a, $2F               ; 3D 2F(/)
04AF:          : store $849E, a           ; 26 9E 84
04B2:          : set a, $2F               ; 3D 2F(/)
04B4:          : store $849F, a           ; 26 9F 84
04B7:          : return                   ; 30
04B8: FUN_1208 : load x, $002F            ; 15 2F 00
04BB:          : cmpbit x, $40            ; 8C 40(@)
04BD:          : jmp.z $04C3              ; D6 C3 04  LBL_1219 $04C3
04C0:          : jmp $04D1                ; C5 D1 04  LBL_1233 $04D1
04C3: LBL_1219 : set x, $20               ; 39 20
04C5:          : store $849D, x           ; 22 9D 84
04C8:          : store $849E, x           ; 22 9E 84
04CB:          : store $849F, x           ; 22 9F 84
04CE:          : jmp $04DC                ; C5 DC 04  LBL_1244 $04DC
04D1: LBL_1233 : set x, $2F               ; 39 2F(/)
04D3:          : store $849D, x           ; 22 9D 84
04D6:          : store $849E, x           ; 22 9E 84
04D9:          : store $849F, x           ; 22 9F 84
04DC: LBL_1244 : return                   ; 30
04DD:          : nop                      ; F9
04DE:          : push w                   ; 04
04DF:          : push z                   ; 03
04E0:          : push a                   ; 05
04E1:          : inc y                    ; 6F
04E2:          : push a                   ; 05
04E3:          : shr w, $05               ; B9 05
04E5:          : rjmp.neq $05             ; D1 05     LBL_1258 $04EA
04E7:          : bjmp $EA05, a            ; E0 05 EA
04EA: LBL_1258 : push a                   ; 05
04EB:          : push y                   ; 02
04EC:          : push.f                   ; 06
04ED:          : pop a                    ; 0C
04EE:          : push.f                   ; 06
04EF:          : load w, $2806            ; 18 06 28
04F2:          : push.f                   ; 06
04F3:          : cpy a, y                 ; 32
04F4:          : push.f                   ; 06
04F5:          : mul a, $06               ; 5F 06
04F7:          : mod a, x                 ; 68
04F8:          : push.f                   ; 06
04F9:          : dbn $6E46                ; EE 46 6E
04FC:          : set a, $00               ; 3D 00
04FE:          : store $7B85, a           ; 26 85 7B
0501:          : nop                      ; 00
0502:          : return                   ; 30
0503:          : dbn $6946                ; EE 46 69
0506:          : set a, $00               ; 3D 00
0508:          : store $7B85, a           ; 26 85 7B
050B:          : set a, $01               ; 3D 01
050D:          : store $7B86, a           ; 26 86 7B
0510:          : set a, $20               ; 3D 20
0512:          : store $8269, a           ; 26 69 82
0515:          : set a, $20               ; 3D 20
0517:          : store $826A, a           ; 26 6A 82
051A:          : set a, $20               ; 3D 20
051C:          : store $826B, a           ; 26 6B 82
051F:          : set a, $20               ; 3D 20
0521:          : store $826C, a           ; 26 6C 82
0524:          : set a, $20               ; 3D 20
0526:          : store $826D, a           ; 26 6D 82
0529:          : set a, $20               ; 3D 20
052B:          : store $826E, a           ; 26 6E 82
052E:          : set a, $20               ; 3D 20
0530:          : store $8291, a           ; 26 91 82
0533:          : set a, $20               ; 3D 20
0535:          : store $8292, a           ; 26 92 82
0538:          : set a, $20               ; 3D 20
053A:          : store $8293, a           ; 26 93 82
053D:          : set a, $20               ; 3D 20
053F:          : store $8294, a           ; 26 94 82
0542:          : set a, $20               ; 3D 20
0544:          : store $8295, a           ; 26 95 82
0547:          : set a, $20               ; 3D 20
0549:          : store $8296, a           ; 26 96 82
054C:          : set a, $00               ; 3D 00
054E:          : store $7B87, a           ; 26 87 7B
0551:          : set i, $FC00             ; 3E 00 FC
0554:          : store $7B88, i           ; 27 88 7B
0557:          : set a, $00               ; 3D 00
0559:          : store $7B8A, a           ; 26 8A 7B
055C:          : set a, $00               ; 3D 00
055E:          : store $0037, a           ; 26 37 00
0561:          : set i, $FC00             ; 3E 00 FC
0564:          : store $0038, i           ; 27 38 00
0567:          : set a, $01               ; 3D 01
0569:          : store $003A, a           ; 26 3A 00
056C:          : int $D0                  ; E5 D0
056E:          : return                   ; 30
056F: FUN_1391 : dbn $7846                ; EE 46 78
0572:          : set a, $00               ; 3D 00
0574:          : store $7B85, a           ; 26 85 7B
0577:          : set a, $00               ; 3D 00
0579:          : store $7B86, a           ; 26 86 7B
057C:          : set a, $49               ; 3D 49(I)
057E:          : store $8269, a           ; 26 69 82
0581:          : set a, $4E               ; 3D 4E(N)
0583:          : store $826A, a           ; 26 6A 82
0586:          : set a, $53               ; 3D 53(S)
0588:          : store $826B, a           ; 26 6B 82
058B:          : set a, $45               ; 3D 45(E)
058D:          : store $826C, a           ; 26 6C 82
0590:          : set a, $52               ; 3D 52(R)
0592:          : store $826D, a           ; 26 6D 82
0595:          : set a, $54               ; 3D 54(T)
0597:          : store $826E, a           ; 26 6E 82
059A:          : set a, $46               ; 3D 46(F)
059C:          : store $8291, a           ; 26 91 82
059F:          : set a, $4C               ; 3D 4C(L)
05A1:          : store $8292, a           ; 26 92 82
05A4:          : set a, $4F               ; 3D 4F(O)
05A6:          : store $8293, a           ; 26 93 82
05A9:          : set a, $50               ; 3D 50(P)
05AB:          : store $8294, a           ; 26 94 82
05AE:          : set a, $50               ; 3D 50(P)
05B0:          : store $8295, a           ; 26 95 82
05B3:          : set a, $59               ; 3D 59(Y)
05B5:          : store $8296, a           ; 26 96 82
05B8:          : return                   ; 30
05B9:          : load a, $003E            ; 19 3E 00
05BC:          : store $7B8E, a           ; 26 8E 7B
05BF:          : load a, $003E            ; 19 3E 00
05C2:          : store $7B8F, a           ; 26 8F 7B
05C5:          : load a, $003E            ; 19 3E 00
05C8:          : store $7B90, a           ; 26 90 7B
05CB:          : set a, $00               ; 3D 00
05CD:          : store $7B85, a           ; 26 85 7B
05D0:          : return                   ; 30
05D1:          : dbn $7246                ; EE 46 72
05D4:          : set a, $00               ; 3D 00
05D6:          : store $7B85, a           ; 26 85 7B
05D9:          : load a, $7B87            ; 19 87 7B
05DC:          : bcall $7CED, a           ; DB ED 7C
05DF:          : return                   ; 30
05E0:          : dbn $7746                ; EE 46 77
05E3:          : set a, $00               ; 3D 00
05E5:          : store $7B85, a           ; 26 85 7B
05E8:          : nop                      ; 00
05E9:          : return                   ; 30
05EA:          : load a, $003E            ; 19 3E 00
05ED:          : store $7B8E, a           ; 26 8E 7B
05F0:          : load a, $003E            ; 19 3E 00
05F3:          : store $7B8F, a           ; 26 8F 7B
05F6:          : load a, $003E            ; 19 3E 00
05F9:          : store $7B90, a           ; 26 90 7B
05FC:          : set a, $00               ; 3D 00
05FE:          : store $7B85, a           ; 26 85 7B
0601:          : return                   ; 30
0602:          : dbn $7746                ; EE 46 77
0605:          : set a, $00               ; 3D 00
0607:          : store $7B85, a           ; 26 85 7B
060A:          : nop                      ; 00
060B:          : return                   ; 30
060C:          : dbn $4872                ; EE 72 48
060F:          : set a, $01               ; 3D 01
0611:          : store $7B87, a           ; 26 87 7B
0614:          : call $061C               ; 29 1C 06  FUN_1564 $061C
0617:          : return                   ; 30
0618:          : call $061C               ; 29 1C 06  FUN_1564 $061C
061B:          : return                   ; 30
061C: FUN_1564 : load i, $7B88            ; 1A 88 7B
061F:          : load a, i                ; 0F
0620:          : inc i                    ; 73
0621:          : store $7B88, i           ; 27 88 7B
0624:          : bcall $7CF1, a           ; DB F1 7C
0627:          : return                   ; 30
0628:          : dbn $4E69                ; EE 69 4E
062B:          : nop                      ; 00
062C:          : set a, $03               ; 3D 03
062E:          : store $7B87, a           ; 26 87 7B
0631:          : return                   ; 30
0632:          : dbn $4C69                ; EE 69 4C
0635:          : load i, $7B88            ; 1A 88 7B
0638:          : load z, i                ; 10
0639:          : inc i                    ; 73
063A:          : store $0038, z           ; 24 38 00
063D:          : dbr $007A                ; EB 7A(z)
063F:          : load z, i                ; 10
0640:          : store $0039, z           ; 24 39 00
0643:          : dbr $007A                ; EB 7A(z)
0645:          : load i, $7B88            ; 1A 88 7B
0648:          : inc i                    ; 73
0649:          : inc i                    ; 73
064A:          : store $7B88, i           ; 27 88 7B
064D:          : load a, $7B8A            ; 19 8A 7B
0650:          : inc a                    ; 72
0651:          : store $7B8A, a           ; 26 8A 7B
0654:          : store $0037, a           ; 26 37 00
0657:          : set a, $01               ; 3D 01
0659:          : store $003A, a           ; 26 3A 00
065C:          : int $D0                  ; E5 D0
065E:          : return                   ; 30
065F:          : dbn $5569                ; EE 69 55
0662:          : return                   ; 30
0663:          : nop                      ; 00
0664:          : nop                      ; 00
0665:          : roffset $0800            ; EA 00 08
0668:          : dbn $4569                ; EE 69 45
066B:          : set a, $03               ; 3D 03
066D:          : store $7B87, a           ; 26 87 7B
0670:          : set i, $7497             ; 3E 97 74
0673:          : store $0002, i           ; 27 02 00
0676:          : set i, $7497             ; 3E 97 74
0679:          : store $0004, i           ; 27 04 00
067C:          : set i, $7497             ; 3E 97 74
067F:          : store $0006, i           ; 27 06 00
0682:          : set i, $7497             ; 3E 97 74
0685:          : store $0008, i           ; 27 08 00
0688:          : set i, $07FB             ; 3E FB 07
068B:          : store $0000, i           ; 27 00 00
068E:          : set i, $07FB             ; 3E FB 07
0691:          : set j, $7E63             ; 3F 63 7E
0694:          : set a, $05               ; 3D 05
0696:          : call $0374               ; 29 74 03  LBL_0884 $0374
0699:          : int $FF                  ; E5 FF
069B:          : return                   ; 30
069C:          : dbn $6866                ; EE 66 68
069F:          : load a, $7B85            ; 19 85 7B
06A2:          : dbr $7B61                ; EB 61(a)
06A4:          : bcall $7CDD, a           ; DB DD 7C
06A7:          : return                   ; 30
06A8: LBL_1704 : call $0394               ; 29 94 03  FUN_0916 $0394
06AB:          : set a, $00               ; 3D 00
06AD:          : store $0010, a           ; 26 10 00
06B0:          : set a, $00               ; 3D 00
06B2:          : store $0011, a           ; 26 11 00
06B5:          : set a, $00               ; 3D 00
06B7:          : store $0012, a           ; 26 12 00
06BA:          : set a, $00               ; 3D 00
06BC:          : store $0013, a           ; 26 13 00
06BF:          : set a, $00               ; 3D 00
06C1:          : store $0014, a           ; 26 14 00
06C4:          : set a, $00               ; 3D 00
06C6:          : store $0015, a           ; 26 15 00
06C9:          : set a, $00               ; 3D 00
06CB:          : store $0016, a           ; 26 16 00
06CE:          : set a, $00               ; 3D 00
06D0:          : store $0017, a           ; 26 17 00
06D3:          : set i, $7800             ; 3E 00 78
06D6:          : store $0030, i           ; 27 30 00
06D9:          : set a, $00               ; 3D 00
06DB:          : store $0019, a           ; 26 19 00
06DE:          : set a, $00               ; 3D 00
06E0:          : store $001A, a           ; 26 1A 00
06E3:          : set a, $00               ; 3D 00
06E5:          : store $001B, a           ; 26 1B 00
06E8:          : set a, $00               ; 3D 00
06EA:          : store $001C, a           ; 26 1C 00
06ED:          : set a, $04               ; 3D 04
06EF:          : store $0018, a           ; 26 18 00
06F2:          : int $FE                  ; E5 FE
06F4: LBL_1780 : set i, $8000             ; 3E 00 80
06F7:          : set j, $7800             ; 3F 00 78
06FA:          : set a, $20               ; 3D 20
06FC:          : call $037F               ; 29 7F 03  LBL_0895 $037F
06FF:          : set i, $8000             ; 3E 00 80
0702:          : set j, $7B00             ; 3F 00 7B
0705:          : set a, $06               ; 3D 06
0707:          : call $0374               ; 29 74 03  LBL_0884 $0374
070A:          : call $0499               ; 29 99 04  FUN_1177 $0499
070D:          : dba $85                  ; EC 85 7B
0710:          : call $056F               ; 29 6F 05  FUN_1391 $056F
0713: LBL_1811 : call $04B8               ; 29 B8 04  FUN_1208 $04B8
0716:          : load a, $7B85            ; 19 85 7B
0719:          : cmpi a, $00              ; 89 00
071B:          : call.neq $069C           ; 2B 9C 06
071E:          : jmp $0713                ; C5 13 07  LBL_1811 $0713
0721:          : nop                      ; 00
0722: LBL_1826 : set a, $FF               ; 3D FF
0724:          : set i, $7800             ; 3E 00 78
0727:          : set j, $F800             ; 3F 00 F8
072A:          : call $0374               ; 29 74 03  LBL_0884 $0374
072D:          : set a, $FF               ; 3D FF
072F:          : set i, $78FF             ; 3E FF 78
0732:          : set j, $F8FF             ; 3F FF F8
0735:          : call $0374               ; 29 74 03  LBL_0884 $0374
0738:          : set a, $FF               ; 3D FF
073A:          : set i, $79FE             ; 3E FE 79
073D:          : set j, $F9FE             ; 3F FE F9
0740:          : call $0374               ; 29 74 03  LBL_0884 $0374
0743:          : set a, $FF               ; 3D FF
0745:          : set i, $7AFD             ; 3E FD 7A
0748:          : set j, $FAFD             ; 3F FD FA
074B:          : call $0374               ; 29 74 03  LBL_0884 $0374
074E:          : set a, $FF               ; 3D FF
0750:          : set i, $7BFC             ; 3E FC 7B
0753:          : set j, $FBFC             ; 3F FC FB
0756:          : call $0374               ; 29 74 03  LBL_0884 $0374
0759:          : set a, $FF               ; 3D FF
075B:          : set i, $7CFB             ; 3E FB 7C
075E:          : set j, $FCFB             ; 3F FB FC
0761:          : call $0374               ; 29 74 03  LBL_0884 $0374
0764:          : set a, $FF               ; 3D FF
0766:          : set i, $7DFA             ; 3E FA 7D
0769:          : set j, $FDFA             ; 3F FA FD
076C:          : call $0374               ; 29 74 03  LBL_0884 $0374
076F:          : set a, $FF               ; 3D FF
0771:          : set i, $7EF9             ; 3E F9 7E
0774:          : set j, $FEF9             ; 3F F9 FE
0777:          : call $0374               ; 29 74 03  LBL_0884 $0374
077A:          : set a, $08               ; 3D 08
077C:          : set i, $7FF8             ; 3E F8 7F
077F:          : set j, $FFF8             ; 3F F8 FF
0782:          : call $0374               ; 29 74 03  LBL_0884 $0374
0785:          : offset $7800             ; E9 00 78
0788:          : jmp $06A8                ; C5 A8 06  LBL_1704 $06A8
078B:          : nop                      ; 00
078C:          : nop                      ; 00
078D:          : nop                      ; 00
078E:          : nop                      ; 00
078F:          : nop                      ; 00
0790:          : nop                      ; 00
0791:          : nop                      ; 00
0792:          : nop                      ; 00
0793:          : nop                      ; 00
0794:          : nop                      ; 00
0795:          : nop                      ; 00
0796:          : nop                      ; 00
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
07A3:          : nop                      ; 00
07A4:          : nop                      ; 00
07A5:          : nop                      ; 00
07A6:          : nop                      ; 00
07A7:          : nop                      ; 00
07A8:          : nop                      ; 00
07A9:          : nop                      ; 00
07AA:          : nop                      ; 00
07AB:          : nop                      ; 00
07AC:          : nop                      ; 00
07AD:          : nop                      ; 00
07AE:          : nop                      ; 00
07AF:          : nop                      ; 00
07B0:          : nop                      ; 00
07B1:          : nop                      ; 00
07B2:          : nop                      ; 00
07B3:          : nop                      ; 00
07B4:          : nop                      ; 00
07B5:          : nop                      ; 00
07B6:          : nop                      ; 00
07B7:          : nop                      ; 00
07B8:          : nop                      ; 00
07B9:          : nop                      ; 00
07BA:          : nop                      ; 00
07BB:          : nop                      ; 00
07BC:          : nop                      ; 00
07BD:          : nop                      ; 00
07BE:          : nop                      ; 00
07BF:          : nop                      ; 00
07C0:          : nop                      ; 00
07C1:          : nop                      ; 00
07C2:          : nop                      ; 00
07C3:          : nop                      ; 00
07C4:          : nop                      ; 00
07C5:          : nop                      ; 00
07C6:          : nop                      ; 00
07C7:          : nop                      ; 00
07C8:          : nop                      ; 00
07C9:          : nop                      ; 00
07CA:          : nop                      ; 00
07CB:          : nop                      ; 00
07CC:          : nop                      ; 00
07CD:          : nop                      ; 00
07CE:          : nop                      ; 00
07CF:          : nop                      ; 00
07D0:          : nop                      ; 00
07D1:          : nop                      ; 00
07D2:          : nop                      ; 00
07D3:          : nop                      ; 00
07D4:          : nop                      ; 00
07D5:          : nop                      ; 00
07D6:          : nop                      ; 00
07D7:          : nop                      ; 00
07D8:          : nop                      ; 00
07D9:          : nop                      ; 00
07DA:          : nop                      ; 00
07DB:          : nop                      ; 00
07DC:          : nop                      ; 00
07DD:          : nop                      ; 00
07DE:          : nop                      ; 00
07DF:          : nop                      ; 00
07E0:          : nop                      ; 00
07E1:          : nop                      ; 00
07E2:          : nop                      ; 00
07E3:          : nop                      ; 00
07E4:          : nop                      ; 00
07E5:          : nop                      ; 00
07E6:          : nop                      ; 00
07E7:          : nop                      ; 00
07E8:          : nop                      ; 00
07E9:          : nop                      ; 00
07EA:          : nop                      ; 00
07EB:          : nop                      ; 00
07EC:          : nop                      ; 00
07ED:          : nop                      ; 00
07EE:          : nop                      ; 00
07EF:          : nop                      ; 00
07F0:          : nop                      ; 00
07F1:          : nop                      ; 00
07F2:          : nop                      ; 00
07F3:          : nop                      ; 00
07F4:          : nop                      ; 00
07F5:          : nop                      ; 00
07F6:          : nop                      ; 00
07F7:          : nop                      ; 00
07F8: LBL_2040 : offset $F800             ; E9 00 F8
07FB:          : jmp $0722                ; C5 22 07  LBL_1826 $0722
07FE:          : rjmp $FA                 ; CD FA     LBL_2040 $07F8
