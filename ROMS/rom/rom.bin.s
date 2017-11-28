0000: LBL_0000 : nop                      ; 00
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
0300:          : cmp a, w                 ; 7F
0301:          : return                   ; 30
0302:          : cpy a, x                 ; 31
0303:          : cpy a, y                 ; 32
0304:          : cpy a, z                 ; 33
0305:          : cpy a, w                 ; 34
0306:          : cpy x, a                 ; 35
0307:          : cpy y, a                 ; 36
0308:          : cpy z, a                 ; 37
0309:          : cpy w, a                 ; 38
030A:          : set x, $61               ; 39 61(a)
030C:          : mul j, $6463             ; 62 63 64
030F:          : div i, j                 ; 65
0310:          : div i, $6867             ; 66 67 68
0313:          : mod a, $6A               ; 69 6A(j)
0315:          : mod i, $6D6C             ; 6B 6C 6D
0318:          : inc x                    ; 6E
0319:          : inc y                    ; 6F
031A:          : inc z                    ; 70
031B:          : inc w                    ; 71
031C:          : inc a                    ; 72
031D:          : inc i                    ; 73
031E:          : inc j                    ; 74
031F:          : dec x                    ; 75
0320:          : dec y                    ; 76
0321:          : dec z                    ; 77
0322:          : dec w                    ; 78
0323:          : dec a                    ; 79
0324:          : dec i                    ; 7A
0325:          : add a, y                 ; 41
0326:          : add a, z                 ; 42
0327:          : add a, w                 ; 43
0328:          : add i, j                 ; 44
0329:          : add i, a                 ; 45
032A:          : add i, z                 ; 46
032B:          : add i, w                 ; 47
032C:          : add j, a                 ; 48
032D:          : add j, x                 ; 49
032E:          : add j, y                 ; 4A
032F:          : add i, $4D4C             ; 4B 4C 4D
0332:          : add y, $4F               ; 4E 4F(O)
0334:          : add w, $51               ; 50 51(Q)
0336:          : sub a, x                 ; 52
0337:          : sub a, y                 ; 53
0338:          : sub a, z                 ; 54
0339:          : sub a, w                 ; 55
033A:          : sub i, $4D51             ; 56
033B:          : sub j, $4D51             ; 57
033C:          : sub i, j                 ; 58
033D:          : sub x, $5A               ; 59 5A(Z)
033F:          : store j, x               ; 20
0340:          : store j, y               ; 21
0341:          : store $2423, x           ; 22 23 24
0344:          : store $2726, w           ; 25 26 27
0347:          : store $4029, j           ; 28 29 40
034A:          : call.neq $2A2D           ; 2B 2D 2A
034D:          : set a, $2F               ; 3D 2F(/)
034F:          : call.gt $3B2E            ; 2C 2E 3B
0352:          : sub z, $5D               ; 5B 5D(])
0354:          : dec j                    ; 7B
0355:          : cmp a, y                 ; 7D
0356:          : set j, $3E3C             ; 3F 3C 3E
0359:          : set y, $7F               ; 3A 7F()
035B:          : cmp a, w                 ; 7F
035C:          : cmp a, w                 ; 7F
035D:          : cmp a, w                 ; 7F
035E:          : cmp a, w                 ; 7F
035F:          : cmp a, w                 ; 7F
0360:          : cmp a, w                 ; 7F
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
036E: LBL_0878 : dec a                    ; 79
036F:          : push a                   ; 05
0370:          : load a, j                ; 12
0371:          : store i, a               ; 1C
0372:          : pop a                    ; 0C
0373:          : inc i                    ; 73
0374:          : inc j                    ; 74
0375:          : cmp a                    ; 80
0376:          : rjmp.nz $F8              ; D9 F8     LBL_0878 $036E
0378:          : return                   ; 30
0379: LBL_0889 : store i, a               ; 1C
037A:          : inc i                    ; 73
037B:          : dec j                    ; 7B
037C:          : rjmp.nz $FD              ; D9 FD     LBL_0889 $0379
037E:          : return                   ; 30
037F: FUN_0895 : cmpi x, $28              ; 85 28(()
0381:          : jmp.gt $03A4             ; D2 A4 03  LBL_0932 $03A4
0384:          : cmpi y, $20              ; 86 20
0386:          : jmp.gt $03A4             ; D2 A4 03  LBL_0932 $03A4
0389:          : cmpi a, $20              ; 89 20
038B:          : jmp.lt $03A4             ; D4 A4 03  LBL_0932 $03A4
038E:          : cmpi a, $7F              ; 89 7F()
0390:          : jmp.gt $03A4             ; D2 A4 03  LBL_0932 $03A4
0393:          : set j, $0000             ; 3F 00 00
0396:          : add j, y                 ; 4A
0397:          : mul j, $0028             ; 62 28 00
039A:          : add j, x                 ; 49
039B:          : add j, $8000             ; 4C 00 80
039E:          : store j, a               ; 1F
039F:          : set a, $01               ; 3D 01
03A1:          : jmp $03A6                ; C5 A6 03  LBL_0934 $03A6
03A4: LBL_0932 : set a, $00               ; 3D 00
03A6: LBL_0934 : return                   ; 30
03A7: LBL_0935 : load a, j                ; 12
03A8:          : cmp a                    ; 80
03A9:          : jmp.z $03BC              ; D6 BC 03  LBL_0956 $03BC
03AC:          : push z                   ; 03
03AD:          : push w                   ; 04
03AE:          : call $037F               ; 29 7F 03  FUN_0895 $037F
03B1:          : pop w                    ; 0B
03B2:          : pop z                    ; 0A
03B3:          : cmp a                    ; 80
03B4:          : jmp.z $03BC              ; D6 BC 03  LBL_0956 $03BC
03B7:          : inc j                    ; 74
03B8:          : inc x                    ; 6E
03B9:          : jmp $03A7                ; C5 A7 03  LBL_0935 $03A7
03BC: LBL_0956 : return                   ; 30
03BD: FUN_0957 : cmp a                    ; 80
03BE:          : jmp.z $03E6              ; D6 E6 03  LBL_0998 $03E6
03C1:          : cmp a                    ; 80
03C2:          : jmp.lt $03D1             ; D4 D1 03  LBL_0977 $03D1
03C5:          : cmp a                    ; 80
03C6:          : jmp.lt $03CF             ; D4 CF 03  LBL_0975 $03CF
03C9:          : inc x                    ; 6E
03CA:          : inc x                    ; 6E
03CB:          : inc x                    ; 6E
03CC:          : jmp $03D1                ; C5 D1 03  LBL_0977 $03D1
03CF: LBL_0975 : inc x                    ; 6E
03D0:          : inc x                    ; 6E
03D1: LBL_0977 : cpy z, a                 ; 37
03D2:          : mod a, $0A               ; 69 0A
03D4:          : add a, $30               ; 51 30(0)
03D6:          : push z                   ; 03
03D7:          : call $037F               ; 29 7F 03  FUN_0895 $037F
03DA:          : pop z                    ; 0A
03DB:          : dec x                    ; 75
03DC:          : cpy a, z                 ; 33
03DD:          : div a, $0A               ; 64 0A
03DF:          : cmp a                    ; 80
03E0:          : jmp.z $03EB              ; D6 EB 03  LBL_1003 $03EB
03E3:          : jmp $03D1                ; C5 D1 03  LBL_0977 $03D1
03E6: LBL_0998 : set a, $30               ; 3D 30(0)
03E8:          : call $037F               ; 29 7F 03  FUN_0895 $037F
03EB: LBL_1003 : return                   ; 30
03EC:          : nop                      ; 00
03ED:          : nop                      ; 00
03EE:          : nop                      ; 00
03EF:          : nop                      ; 00
03F0:          : nop                      ; 00
03F1:          : nop                      ; 00
03F2:          : nop                      ; 00
03F3:          : nop                      ; 00
03F4:          : cmp a                    ; 80
03F5:          : set z, $3F               ; 3B 3F(?)
03F7:          : add a, z                 ; 42
03F8:          : nop                      ; FF
03F9:          : xor a, z                 ; AA
03FA:          : jmp $0000, a             ; CC 00 00  LBL_0000 $0000
03FD:          : nop                      ; 00
03FE: FUN_1022 : set i, $041D             ; 3E 1D 04
0401:          : store $0000, i           ; 27 00 00
0404:          : set i, $0420             ; 3E 20 04
0407:          : store $0002, i           ; 27 02 00
040A:          : set i, $0488             ; 3E 88 04
040D:          : store $0004, i           ; 27 04 00
0410:          : set i, $04F2             ; 3E F2 04
0413:          : store $0006, i           ; 27 06 00
0416:          : set i, $04FE             ; 3E FE 04
0419:          : store $0008, i           ; 27 08 00
041C:          : return                   ; 30
041D:          : jmp $0730                ; C5 30 07  LBL_1840 $0730
0420:          : load a, $002C            ; 19 2C 00
0423:          : cpy x, a                 ; 35
0424:          : cmpi a, $E8              ; 89 E8
0426:          : jmp.gt $0453             ; D2 53 04  LBL_1107 $0453
0429:          : jmp.eq $0472             ; CE 72 04  LBL_1138 $0472
042C:          : not x                    ; A3
042D:          : and x, $E0               ; 95 E0
042F:          : shr x, $02               ; B6 02
0431:          : load a, $73F6            ; 19 F6 73
0434:          : add a, x                 ; 40
0435:          : store $001E, a           ; 26 1E 00
0438:          : neg a                    ; 6D
0439:          : store $0021, a           ; 26 21 00
043C:          : load a, $73F7            ; 19 F7 73
043F:          : add a, x                 ; 40
0440:          : store $001F, a           ; 26 1F 00
0443:          : neg a                    ; 6D
0444:          : store $0022, a           ; 26 22 00
0447:          : load a, $73F8            ; 19 F8 73
044A:          : add a, x                 ; 40
044B:          : store $0020, a           ; 26 20 00
044E:          : neg a                    ; 6D
044F:          : store $0023, a           ; 26 23 00
0452:          : resume                   ; E6
0453: LBL_1107 : set a, $3B               ; 3D 3B(;)
0455:          : store $001D, a           ; 26 1D 00
0458:          : set a, $3F               ; 3D 3F(?)
045A:          : store $001E, a           ; 26 1E 00
045D:          : set a, $42               ; 3D 42(B)
045F:          : store $001F, a           ; 26 1F 00
0462:          : set a, $FE               ; 3D FE
0464:          : store $0020, a           ; 26 20 00
0467:          : set a, $FE               ; 3D FE
0469:          : store $0021, a           ; 26 21 00
046C:          : set a, $FE               ; 3D FE
046E:          : store $0022, a           ; 26 22 00
0471:          : resume                   ; E6
0472: LBL_1138 : set a, $00               ; 3D 00
0474:          : store $001D, a           ; 26 1D 00
0477:          : store $001E, a           ; 26 1E 00
047A:          : store $001F, a           ; 26 1F 00
047D:          : store $0020, a           ; 26 20 00
0480:          : store $0021, a           ; 26 21 00
0483:          : store $0022, a           ; 26 22 00
0486:          : resume                   ; E6
0487:          : resume                   ; E6
0488:          : load a, $73F5            ; 19 F5 73
048B:          : load x, $73F8            ; 15 F8 73
048E:          : cmp a, x                 ; 7C
048F:          : jmp.lt $04A0             ; D4 A0 04  LBL_1184 $04A0
0492:          : jmp.gt $04A7             ; D2 A7 04  LBL_1191 $04A7
0495:          : load a, $0034            ; 19 34 00
0498:          : mod a, $7F               ; 69 7F()
049A:          : store $73F8, a           ; 26 F8 73
049D:          : jmp $04AB                ; C5 AB 04  LBL_1195 $04AB
04A0: LBL_1184 : inc a                    ; 72
04A1:          : store $73F5, a           ; 26 F5 73
04A4:          : jmp $04AB                ; C5 AB 04  LBL_1195 $04AB
04A7: LBL_1191 : dec a                    ; 79
04A8:          : store $73F5, a           ; 26 F5 73
04AB: LBL_1195 : load a, $73F6            ; 19 F6 73
04AE:          : load x, $73F9            ; 15 F9 73
04B1:          : cmp a, x                 ; 7C
04B2:          : jmp.lt $04C3             ; D4 C3 04  LBL_1219 $04C3
04B5:          : jmp.gt $04CA             ; D2 CA 04  LBL_1226 $04CA
04B8:          : load a, $0034            ; 19 34 00
04BB:          : mod a, $7F               ; 69 7F()
04BD:          : store $73F9, a           ; 26 F9 73
04C0:          : jmp $04CE                ; C5 CE 04  LBL_1230 $04CE
04C3: LBL_1219 : inc a                    ; 72
04C4:          : store $73F6, a           ; 26 F6 73
04C7:          : jmp $04CE                ; C5 CE 04  LBL_1230 $04CE
04CA: LBL_1226 : dec a                    ; 79
04CB:          : store $73F6, a           ; 26 F6 73
04CE: LBL_1230 : load a, $73F7            ; 19 F7 73
04D1:          : load x, $73FA            ; 15 FA 73
04D4:          : cmp a, x                 ; 7C
04D5:          : jmp.lt $04E6             ; D4 E6 04  LBL_1254 $04E6
04D8:          : jmp.gt $04ED             ; D2 ED 04  LBL_1261 $04ED
04DB:          : load a, $0034            ; 19 34 00
04DE:          : mod a, $7F               ; 69 7F()
04E0:          : store $73FA, a           ; 26 FA 73
04E3:          : jmp $04F1                ; C5 F1 04  LBL_1265 $04F1
04E6: LBL_1254 : inc a                    ; 72
04E7:          : store $73F7, a           ; 26 F7 73
04EA:          : jmp $04CE                ; C5 CE 04  LBL_1230 $04CE
04ED: LBL_1261 : dec a                    ; 79
04EE:          : store $73F7, a           ; 26 F7 73
04F1: LBL_1265 : resume                   ; E6
04F2:          : load a, $0035            ; 19 35 00
04F5:          : store $73EC, a           ; 26 EC 73
04F8:          : set a, $00               ; 3D 00
04FA:          : store $0035, a           ; 26 35 00
04FD:          : resume                   ; E6
04FE:          : nop                      ; 00
04FF:          : resume                   ; E6
0500:          : nop                      ; 00
0501:          : resume                   ; E6
0502: FUN_1282 : set a, $44               ; 3D 44(D)
0504:          : store $84C1, a           ; 26 C1 84
0507:          : set a, $58               ; 3D 58(X)
0509:          : store $84C2, a           ; 26 C2 84
050C:          : set a, $38               ; 3D 38(8)
050E:          : store $84C3, a           ; 26 C3 84
0511:          : set a, $2F               ; 3D 2F(/)
0513:          : store $84C5, a           ; 26 C5 84
0516:          : set a, $2F               ; 3D 2F(/)
0518:          : store $84C6, a           ; 26 C6 84
051B:          : set a, $2F               ; 3D 2F(/)
051D:          : store $84C7, a           ; 26 C7 84
0520:          : return                   ; 30
0521: FUN_1313 : return                   ; 30
0522:          : set i, $4805             ; 3E 05 48
0525:          : push a                   ; 05
0526:          : shl w, $05               ; B4 05
0528:          : nop                      ; FE
0529:          : push a                   ; 05
052A:          : load y, $2506            ; 16 06 25
052D:          : push.f                   ; 06
052E:          : call.nz $4D06            ; 2F 06 4D
0531:          : push.f                   ; 06
0532:          : sub j, $4D06             ; 57
0533:          : push.f                   ; 06
0534:          : div a, x                 ; 63
0535:          : push.f                   ; 06
0536:          : inc i                    ; 73
0537:          : push.f                   ; 06
0538:          : cmp a, y                 ; 7D
0539:          : push.f                   ; 06
053A:          : xor a, z                 ; AA
053B:          : push.f                   ; 06
053C:          : shl z, $06               ; B3 06
053E:          : dbn $6E46                ; EE 46 6E
0541:          : set a, $00               ; 3D 00
0543:          : store $73EC, a           ; 26 EC 73
0546:          : nop                      ; 00
0547:          : return                   ; 30
0548:          : dbn $6946                ; EE 46 69
054B:          : set a, $00               ; 3D 00
054D:          : store $73EC, a           ; 26 EC 73
0550:          : set a, $01               ; 3D 01
0552:          : store $73ED, a           ; 26 ED 73
0555:          : set a, $20               ; 3D 20
0557:          : store $8269, a           ; 26 69 82
055A:          : set a, $20               ; 3D 20
055C:          : store $826A, a           ; 26 6A 82
055F:          : set a, $20               ; 3D 20
0561:          : store $826B, a           ; 26 6B 82
0564:          : set a, $20               ; 3D 20
0566:          : store $826C, a           ; 26 6C 82
0569:          : set a, $20               ; 3D 20
056B:          : store $826D, a           ; 26 6D 82
056E:          : set a, $20               ; 3D 20
0570:          : store $826E, a           ; 26 6E 82
0573:          : set a, $20               ; 3D 20
0575:          : store $8291, a           ; 26 91 82
0578:          : set a, $20               ; 3D 20
057A:          : store $8292, a           ; 26 92 82
057D:          : set a, $20               ; 3D 20
057F:          : store $8293, a           ; 26 93 82
0582:          : set a, $20               ; 3D 20
0584:          : store $8294, a           ; 26 94 82
0587:          : set a, $20               ; 3D 20
0589:          : store $8295, a           ; 26 95 82
058C:          : set a, $20               ; 3D 20
058E:          : store $8296, a           ; 26 96 82
0591:          : set a, $00               ; 3D 00
0593:          : store $73EE, a           ; 26 EE 73
0596:          : set i, $FC00             ; 3E 00 FC
0599:          : store $73EF, i           ; 27 EF 73
059C:          : set a, $00               ; 3D 00
059E:          : store $73F1, a           ; 26 F1 73
05A1:          : set a, $00               ; 3D 00
05A3:          : store $0038, a           ; 26 38 00
05A6:          : set i, $FC00             ; 3E 00 FC
05A9:          : store $0039, i           ; 27 39 00
05AC:          : set a, $01               ; 3D 01
05AE:          : store $003B, a           ; 26 3B 00
05B1:          : int $D0                  ; E5 D0
05B3:          : return                   ; 30
05B4: FUN_1460 : dbn $7846                ; EE 46 78
05B7:          : set a, $00               ; 3D 00
05B9:          : store $73EC, a           ; 26 EC 73
05BC:          : set a, $00               ; 3D 00
05BE:          : store $73ED, a           ; 26 ED 73
05C1:          : set a, $49               ; 3D 49(I)
05C3:          : store $8269, a           ; 26 69 82
05C6:          : set a, $4E               ; 3D 4E(N)
05C8:          : store $826A, a           ; 26 6A 82
05CB:          : set a, $53               ; 3D 53(S)
05CD:          : store $826B, a           ; 26 6B 82
05D0:          : set a, $45               ; 3D 45(E)
05D2:          : store $826C, a           ; 26 6C 82
05D5:          : set a, $52               ; 3D 52(R)
05D7:          : store $826D, a           ; 26 6D 82
05DA:          : set a, $54               ; 3D 54(T)
05DC:          : store $826E, a           ; 26 6E 82
05DF:          : set a, $46               ; 3D 46(F)
05E1:          : store $8291, a           ; 26 91 82
05E4:          : set a, $4C               ; 3D 4C(L)
05E6:          : store $8292, a           ; 26 92 82
05E9:          : set a, $4F               ; 3D 4F(O)
05EB:          : store $8293, a           ; 26 93 82
05EE:          : set a, $50               ; 3D 50(P)
05F0:          : store $8294, a           ; 26 94 82
05F3:          : set a, $50               ; 3D 50(P)
05F5:          : store $8295, a           ; 26 95 82
05F8:          : set a, $59               ; 3D 59(Y)
05FA:          : store $8296, a           ; 26 96 82
05FD:          : return                   ; 30
05FE:          : load a, $0034            ; 19 34 00
0601:          : store $73F5, a           ; 26 F5 73
0604:          : load a, $0034            ; 19 34 00
0607:          : store $73F6, a           ; 26 F6 73
060A:          : load a, $0034            ; 19 34 00
060D:          : store $73F7, a           ; 26 F7 73
0610:          : set a, $00               ; 3D 00
0612:          : store $73EC, a           ; 26 EC 73
0615:          : return                   ; 30
0616:          : dbn $7246                ; EE 46 72
0619:          : set a, $00               ; 3D 00
061B:          : store $73EC, a           ; 26 EC 73
061E:          : load a, $73EE            ; 19 EE 73
0621:          : bcall $7532, a           ; DB 32 75
0624:          : return                   ; 30
0625:          : dbn $7746                ; EE 46 77
0628:          : set a, $00               ; 3D 00
062A:          : store $73EC, a           ; 26 EC 73
062D:          : nop                      ; 00
062E:          : return                   ; 30
062F:          : load a, $0034            ; 19 34 00
0632:          : mod a, $7F               ; 69 7F()
0634:          : store $73F5, a           ; 26 F5 73
0637:          : load a, $0034            ; 19 34 00
063A:          : mod a, $7F               ; 69 7F()
063C:          : store $73F6, a           ; 26 F6 73
063F:          : load a, $0034            ; 19 34 00
0642:          : mod a, $7F               ; 69 7F()
0644:          : store $73F7, a           ; 26 F7 73
0647:          : set a, $00               ; 3D 00
0649:          : store $73EC, a           ; 26 EC 73
064C:          : return                   ; 30
064D:          : dbn $7746                ; EE 46 77
0650:          : set a, $00               ; 3D 00
0652:          : store $73EC, a           ; 26 EC 73
0655:          : nop                      ; 00
0656:          : return                   ; 30
0657:          : dbn $4872                ; EE 72 48
065A:          : set a, $01               ; 3D 01
065C:          : store $73EE, a           ; 26 EE 73
065F:          : call $0667               ; 29 67 06  FUN_1639 $0667
0662:          : return                   ; 30
0663:          : call $0667               ; 29 67 06  FUN_1639 $0667
0666:          : return                   ; 30
0667: FUN_1639 : load i, $73EF            ; 1A EF 73
066A:          : load a, i                ; 0F
066B:          : inc i                    ; 73
066C:          : store $73EF, i           ; 27 EF 73
066F:          : bcall $7536, a           ; DB 36 75
0672:          : return                   ; 30
0673:          : dbn $4E69                ; EE 69 4E
0676:          : nop                      ; 00
0677:          : set a, $03               ; 3D 03
0679:          : store $73EE, a           ; 26 EE 73
067C:          : return                   ; 30
067D:          : dbn $4C69                ; EE 69 4C
0680:          : load i, $73EF            ; 1A EF 73
0683:          : load z, i                ; 10
0684:          : inc i                    ; 73
0685:          : store $0039, z           ; 24 39 00
0688:          : dbr $007A                ; EB 7A(z)
068A:          : load z, i                ; 10
068B:          : store $003A, z           ; 24 3A 00
068E:          : dbr $007A                ; EB 7A(z)
0690:          : load i, $73EF            ; 1A EF 73
0693:          : inc i                    ; 73
0694:          : inc i                    ; 73
0695:          : store $73EF, i           ; 27 EF 73
0698:          : load a, $73F1            ; 19 F1 73
069B:          : inc a                    ; 72
069C:          : store $73F1, a           ; 26 F1 73
069F:          : store $0038, a           ; 26 38 00
06A2:          : set a, $01               ; 3D 01
06A4:          : store $003B, a           ; 26 3B 00
06A7:          : int $D0                  ; E5 D0
06A9:          : return                   ; 30
06AA:          : dbn $5569                ; EE 69 55
06AD:          : return                   ; 30
06AE:          : nop                      ; 00
06AF:          : nop                      ; 00
06B0:          : roffset $0800            ; EA 00 08
06B3:          : dbn $4569                ; EE 69 45
06B6:          : set a, $03               ; 3D 03
06B8:          : store $73EE, a           ; 26 EE 73
06BB:          : set i, $6800             ; 3E 00 68
06BE:          : store $0002, i           ; 27 02 00
06C1:          : set i, $6800             ; 3E 00 68
06C4:          : store $0004, i           ; 27 04 00
06C7:          : set i, $6800             ; 3E 00 68
06CA:          : store $0006, i           ; 27 06 00
06CD:          : set i, $6800             ; 3E 00 68
06D0:          : store $0008, i           ; 27 08 00
06D3:          : set i, $07FB             ; 3E FB 07
06D6:          : store $0000, i           ; 27 00 00
06D9:          : set i, $07FB             ; 3E FB 07
06DC:          : set j, $76AE             ; 3F AE 76
06DF:          : set a, $05               ; 3D 05
06E1:          : call $036E               ; 29 6E 03  LBL_0878 $036E
06E4:          : int $FF                  ; E5 FF
06E6:          : return                   ; 30
06E7:          : load a, $73EC            ; 19 EC 73
06EA:          : bcall $7522, a           ; DB 22 75
06ED:          : return                   ; 30
06EE: LBL_1774 : call $03FE               ; 29 FE 03  FUN_1022 $03FE
06F1:          : set a, $00               ; 3D 00
06F3:          : store $0010, a           ; 26 10 00
06F6:          : set a, $00               ; 3D 00
06F8:          : store $0011, a           ; 26 11 00
06FB:          : set a, $00               ; 3D 00
06FD:          : store $0012, a           ; 26 12 00
0700:          : set a, $00               ; 3D 00
0702:          : store $0013, a           ; 26 13 00
0705:          : set a, $00               ; 3D 00
0707:          : store $0014, a           ; 26 14 00
070A:          : set a, $00               ; 3D 00
070C:          : store $0015, a           ; 26 15 00
070F:          : set a, $00               ; 3D 00
0711:          : store $0016, a           ; 26 16 00
0714:          : set a, $00               ; 3D 00
0716:          : store $0017, a           ; 26 17 00
0719:          : set i, $7000             ; 3E 00 70
071C:          : store $0030, i           ; 27 30 00
071F:          : set a, $00               ; 3D 00
0721:          : store $0019, a           ; 26 19 00
0724:          : set a, $00               ; 3D 00
0726:          : store $001A, a           ; 26 1A 00
0729:          : set a, $01               ; 3D 01
072B:          : store $0018, a           ; 26 18 00
072E:          : int $FE                  ; E5 FE
0730: LBL_1840 : set i, $8000             ; 3E 00 80
0733:          : set j, $2800             ; 3F 00 28
0736:          : set a, $20               ; 3D 20
0738:          : call $0379               ; 29 79 03  LBL_0889 $0379
073B:          : call $036E               ; 29 6E 03  LBL_0878 $036E
073E:          : call $0502               ; 29 02 05  FUN_1282 $0502
0741:          : dba $EC                  ; EC EC 73
0744:          : call $05B4               ; 29 B4 05  FUN_1460 $05B4
0747:          : set i, $C000             ; 3E 00 C0
074A:          : store $73FB, i           ; 27 FB 73
074D:          : set x, $00               ; 39 00
074F:          : store $73FD, x           ; 22 FD 73
0752:          : set x, $0F               ; 39 0F
0754:          : store $003F, x           ; 22 3F 00
0757:          : set x, $3C               ; 39 3C(<)
0759:          : store $0040, x           ; 22 40 00
075C:          : set a, $01               ; 3D 01
075E:          : set x, $04               ; 39 04
0760:          : set y, $08               ; 3A 08
0762:          : call $03BD               ; 29 BD 03  FUN_0957 $03BD
0765:          : set a, $0C               ; 3D 0C
0767:          : set x, $04               ; 39 04
0769:          : set y, $09               ; 3A 09
076B:          : call $03BD               ; 29 BD 03  FUN_0957 $03BD
076E:          : set a, $7B               ; 3D 7B({)
0770:          : set x, $04               ; 39 04
0772:          : set y, $0A               ; 3A 0A
0774:          : call $03BD               ; 29 BD 03  FUN_0957 $03BD
0777: LBL_1911 : call $0521               ; 29 21 05  FUN_1313 $0521
077A:          : load a, $73EC            ; 19 EC 73
077D:          : cmpi a, $00              ; 89 00
077F:          : call.neq $06E7           ; 2B E7 06
0782:          : jmp $0777                ; C5 77 07  LBL_1911 $0777
0785:          : nop                      ; 00
0786: LBL_1926 : set a, $FF               ; 3D FF
0788:          : set i, $7000             ; 3E 00 70
078B:          : set j, $F000             ; 3F 00 F0
078E:          : call $036E               ; 29 6E 03  LBL_0878 $036E
0791:          : set a, $FF               ; 3D FF
0793:          : set i, $70FF             ; 3E FF 70
0796:          : set j, $F0FF             ; 3F FF F0
0799:          : call $036E               ; 29 6E 03  LBL_0878 $036E
079C:          : set a, $FF               ; 3D FF
079E:          : set i, $71FE             ; 3E FE 71
07A1:          : set j, $F1FE             ; 3F FE F1
07A4:          : call $036E               ; 29 6E 03  LBL_0878 $036E
07A7:          : set a, $FF               ; 3D FF
07A9:          : set i, $72FD             ; 3E FD 72
07AC:          : set j, $F2FD             ; 3F FD F2
07AF:          : call $036E               ; 29 6E 03  LBL_0878 $036E
07B2:          : set a, $FF               ; 3D FF
07B4:          : set i, $73FC             ; 3E FC 73
07B7:          : set j, $F3FC             ; 3F FC F3
07BA:          : call $036E               ; 29 6E 03  LBL_0878 $036E
07BD:          : set a, $FF               ; 3D FF
07BF:          : set i, $74FB             ; 3E FB 74
07C2:          : set j, $F4FB             ; 3F FB F4
07C5:          : call $036E               ; 29 6E 03  LBL_0878 $036E
07C8:          : set a, $FF               ; 3D FF
07CA:          : set i, $75FA             ; 3E FA 75
07CD:          : set j, $F5FA             ; 3F FA F5
07D0:          : call $036E               ; 29 6E 03  LBL_0878 $036E
07D3:          : set a, $FF               ; 3D FF
07D5:          : set i, $76F9             ; 3E F9 76
07D8:          : set j, $F6F9             ; 3F F9 F6
07DB:          : call $036E               ; 29 6E 03  LBL_0878 $036E
07DE:          : set a, $FF               ; 3D FF
07E0:          : set i, $77F8             ; 3E F8 77
07E3:          : set j, $F7F8             ; 3F F8 F7
07E6:          : call $036E               ; 29 6E 03  LBL_0878 $036E
07E9:          : set a, $FF               ; 3D FF
07EB:          : set i, $78F7             ; 3E F7 78
07EE:          : set j, $F8F7             ; 3F F7 F8
07F1:          : call $036E               ; 29 6E 03  LBL_0878 $036E
07F4:          : set a, $FF               ; 3D FF
07F6:          : set i, $79F6             ; 3E F6 79
07F9:          : set j, $F9F6             ; 3F F6 F9
07FC:          : call $036E               ; 29 6E 03  LBL_0878 $036E
07FF:          : set a, $FF               ; 3D FF
0801:          : set i, $7AF5             ; 3E F5 7A
0804:          : set j, $FAF5             ; 3F F5 FA
0807:          : call $036E               ; 29 6E 03  LBL_0878 $036E
080A:          : set a, $FF               ; 3D FF
080C:          : set i, $7BF4             ; 3E F4 7B
080F:          : set j, $FBF4             ; 3F F4 FB
0812:          : call $036E               ; 29 6E 03  LBL_0878 $036E
0815:          : set a, $FF               ; 3D FF
0817:          : set i, $7CF3             ; 3E F3 7C
081A:          : set j, $FCF3             ; 3F F3 FC
081D:          : call $036E               ; 29 6E 03  LBL_0878 $036E
0820:          : set a, $FF               ; 3D FF
0822:          : set i, $7DF2             ; 3E F2 7D
0825:          : set j, $FDF2             ; 3F F2 FD
0828:          : call $036E               ; 29 6E 03  LBL_0878 $036E
082B:          : set a, $FF               ; 3D FF
082D:          : set i, $7EF1             ; 3E F1 7E
0830:          : set j, $FEF1             ; 3F F1 FE
0833:          : call $036E               ; 29 6E 03  LBL_0878 $036E
0836:          : set a, $10               ; 3D 10
0838:          : set i, $7FF0             ; 3E F0 7F
083B:          : set j, $FFF0             ; 3F F0 FF
083E:          : call $036E               ; 29 6E 03  LBL_0878 $036E
0841:          : offset $7000             ; E9 00 70
0844:          : jmp $06EE                ; C5 EE 06  LBL_1774 $06EE
0847:          : nop                      ; 00
0848:          : nop                      ; 00
0849:          : nop                      ; 00
084A:          : nop                      ; 00
084B:          : nop                      ; 00
084C:          : nop                      ; 00
084D:          : nop                      ; 00
084E:          : nop                      ; 00
084F:          : nop                      ; 00
0850:          : nop                      ; 00
0851:          : nop                      ; 00
0852:          : nop                      ; 00
0853:          : nop                      ; 00
0854:          : nop                      ; 00
0855:          : nop                      ; 00
0856:          : nop                      ; 00
0857:          : nop                      ; 00
0858:          : nop                      ; 00
0859:          : nop                      ; 00
085A:          : nop                      ; 00
085B:          : nop                      ; 00
085C:          : nop                      ; 00
085D:          : nop                      ; 00
085E:          : nop                      ; 00
085F:          : nop                      ; 00
0860:          : nop                      ; 00
0861:          : nop                      ; 00
0862:          : nop                      ; 00
0863:          : nop                      ; 00
0864:          : nop                      ; 00
0865:          : nop                      ; 00
0866:          : nop                      ; 00
0867:          : nop                      ; 00
0868:          : nop                      ; 00
0869:          : nop                      ; 00
086A:          : nop                      ; 00
086B:          : nop                      ; 00
086C:          : nop                      ; 00
086D:          : nop                      ; 00
086E:          : nop                      ; 00
086F:          : nop                      ; 00
0870:          : nop                      ; 00
0871:          : nop                      ; 00
0872:          : nop                      ; 00
0873:          : nop                      ; 00
0874:          : nop                      ; 00
0875:          : nop                      ; 00
0876:          : nop                      ; 00
0877:          : nop                      ; 00
0878:          : nop                      ; 00
0879:          : nop                      ; 00
087A:          : nop                      ; 00
087B:          : nop                      ; 00
087C:          : nop                      ; 00
087D:          : nop                      ; 00
087E:          : nop                      ; 00
087F:          : nop                      ; 00
0880:          : nop                      ; 00
0881:          : nop                      ; 00
0882:          : nop                      ; 00
0883:          : nop                      ; 00
0884:          : nop                      ; 00
0885:          : nop                      ; 00
0886:          : nop                      ; 00
0887:          : nop                      ; 00
0888:          : nop                      ; 00
0889:          : nop                      ; 00
088A:          : nop                      ; 00
088B:          : nop                      ; 00
088C:          : nop                      ; 00
088D:          : nop                      ; 00
088E:          : nop                      ; 00
088F:          : nop                      ; 00
0890:          : nop                      ; 00
0891:          : nop                      ; 00
0892:          : nop                      ; 00
0893:          : nop                      ; 00
0894:          : nop                      ; 00
0895:          : nop                      ; 00
0896:          : nop                      ; 00
0897:          : nop                      ; 00
0898:          : nop                      ; 00
0899:          : nop                      ; 00
089A:          : nop                      ; 00
089B:          : nop                      ; 00
089C:          : nop                      ; 00
089D:          : nop                      ; 00
089E:          : nop                      ; 00
089F:          : nop                      ; 00
08A0:          : nop                      ; 00
08A1:          : nop                      ; 00
08A2:          : nop                      ; 00
08A3:          : nop                      ; 00
08A4:          : nop                      ; 00
08A5:          : nop                      ; 00
08A6:          : nop                      ; 00
08A7:          : nop                      ; 00
08A8:          : nop                      ; 00
08A9:          : nop                      ; 00
08AA:          : nop                      ; 00
08AB:          : nop                      ; 00
08AC:          : nop                      ; 00
08AD:          : nop                      ; 00
08AE:          : nop                      ; 00
08AF:          : nop                      ; 00
08B0:          : nop                      ; 00
08B1:          : nop                      ; 00
08B2:          : nop                      ; 00
08B3:          : nop                      ; 00
08B4:          : nop                      ; 00
08B5:          : nop                      ; 00
08B6:          : nop                      ; 00
08B7:          : nop                      ; 00
08B8:          : nop                      ; 00
08B9:          : nop                      ; 00
08BA:          : nop                      ; 00
08BB:          : nop                      ; 00
08BC:          : nop                      ; 00
08BD:          : nop                      ; 00
08BE:          : nop                      ; 00
08BF:          : nop                      ; 00
08C0:          : nop                      ; 00
08C1:          : nop                      ; 00
08C2:          : nop                      ; 00
08C3:          : nop                      ; 00
08C4:          : nop                      ; 00
08C5:          : nop                      ; 00
08C6:          : nop                      ; 00
08C7:          : nop                      ; 00
08C8:          : nop                      ; 00
08C9:          : nop                      ; 00
08CA:          : nop                      ; 00
08CB:          : nop                      ; 00
08CC:          : nop                      ; 00
08CD:          : nop                      ; 00
08CE:          : nop                      ; 00
08CF:          : nop                      ; 00
08D0:          : nop                      ; 00
08D1:          : nop                      ; 00
08D2:          : nop                      ; 00
08D3:          : nop                      ; 00
08D4:          : nop                      ; 00
08D5:          : nop                      ; 00
08D6:          : nop                      ; 00
08D7:          : nop                      ; 00
08D8:          : nop                      ; 00
08D9:          : nop                      ; 00
08DA:          : nop                      ; 00
08DB:          : nop                      ; 00
08DC:          : nop                      ; 00
08DD:          : nop                      ; 00
08DE:          : nop                      ; 00
08DF:          : nop                      ; 00
08E0:          : nop                      ; 00
08E1:          : nop                      ; 00
08E2:          : nop                      ; 00
08E3:          : nop                      ; 00
08E4:          : nop                      ; 00
08E5:          : nop                      ; 00
08E6:          : nop                      ; 00
08E7:          : nop                      ; 00
08E8:          : nop                      ; 00
08E9:          : nop                      ; 00
08EA:          : nop                      ; 00
08EB:          : nop                      ; 00
08EC:          : nop                      ; 00
08ED:          : nop                      ; 00
08EE:          : nop                      ; 00
08EF:          : nop                      ; 00
08F0:          : nop                      ; 00
08F1:          : nop                      ; 00
08F2:          : nop                      ; 00
08F3:          : nop                      ; 00
08F4:          : nop                      ; 00
08F5:          : nop                      ; 00
08F6:          : nop                      ; 00
08F7:          : nop                      ; 00
08F8:          : nop                      ; 00
08F9:          : nop                      ; 00
08FA:          : nop                      ; 00
08FB:          : nop                      ; 00
08FC:          : nop                      ; 00
08FD:          : nop                      ; 00
08FE:          : nop                      ; 00
08FF:          : nop                      ; 00
0900:          : nop                      ; 00
0901:          : nop                      ; 00
0902:          : nop                      ; 00
0903:          : nop                      ; 00
0904:          : nop                      ; 00
0905:          : nop                      ; 00
0906:          : nop                      ; 00
0907:          : nop                      ; 00
0908:          : nop                      ; 00
0909:          : nop                      ; 00
090A:          : nop                      ; 00
090B:          : nop                      ; 00
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
0938:          : nop                      ; 00
0939:          : nop                      ; 00
093A:          : nop                      ; 00
093B:          : nop                      ; 00
093C:          : nop                      ; 00
093D:          : nop                      ; 00
093E:          : nop                      ; 00
093F:          : nop                      ; 00
0940:          : nop                      ; 00
0941:          : nop                      ; 00
0942:          : nop                      ; 00
0943:          : nop                      ; 00
0944:          : nop                      ; 00
0945:          : nop                      ; 00
0946:          : nop                      ; 00
0947:          : nop                      ; 00
0948:          : nop                      ; 00
0949:          : nop                      ; 00
094A:          : nop                      ; 00
094B:          : nop                      ; 00
094C:          : nop                      ; 00
094D:          : nop                      ; 00
094E:          : nop                      ; 00
094F:          : nop                      ; 00
0950:          : nop                      ; 00
0951:          : nop                      ; 00
0952:          : nop                      ; 00
0953:          : nop                      ; 00
0954:          : nop                      ; 00
0955:          : nop                      ; 00
0956:          : nop                      ; 00
0957:          : nop                      ; 00
0958:          : nop                      ; 00
0959:          : nop                      ; 00
095A:          : nop                      ; 00
095B:          : nop                      ; 00
095C:          : nop                      ; 00
095D:          : nop                      ; 00
095E:          : nop                      ; 00
095F:          : nop                      ; 00
0960:          : nop                      ; 00
0961:          : nop                      ; 00
0962:          : nop                      ; 00
0963:          : nop                      ; 00
0964:          : nop                      ; 00
0965:          : nop                      ; 00
0966:          : nop                      ; 00
0967:          : nop                      ; 00
0968:          : nop                      ; 00
0969:          : nop                      ; 00
096A:          : nop                      ; 00
096B:          : nop                      ; 00
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
09A2:          : nop                      ; 00
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
09B3:          : nop                      ; 00
09B4:          : nop                      ; 00
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
09C1:          : nop                      ; 00
09C2:          : nop                      ; 00
09C3:          : nop                      ; 00
09C4:          : nop                      ; 00
09C5:          : nop                      ; 00
09C6:          : nop                      ; 00
09C7:          : nop                      ; 00
09C8:          : nop                      ; 00
09C9:          : nop                      ; 00
09CA:          : nop                      ; 00
09CB:          : nop                      ; 00
09CC:          : nop                      ; 00
09CD:          : nop                      ; 00
09CE:          : nop                      ; 00
09CF:          : nop                      ; 00
09D0:          : nop                      ; 00
09D1:          : nop                      ; 00
09D2:          : nop                      ; 00
09D3:          : nop                      ; 00
09D4:          : nop                      ; 00
09D5:          : nop                      ; 00
09D6:          : nop                      ; 00
09D7:          : nop                      ; 00
09D8:          : nop                      ; 00
09D9:          : nop                      ; 00
09DA:          : nop                      ; 00
09DB:          : nop                      ; 00
09DC:          : nop                      ; 00
09DD:          : nop                      ; 00
09DE:          : nop                      ; 00
09DF:          : nop                      ; 00
09E0:          : nop                      ; 00
09E1:          : nop                      ; 00
09E2:          : nop                      ; 00
09E3:          : nop                      ; 00
09E4:          : nop                      ; 00
09E5:          : nop                      ; 00
09E6:          : nop                      ; 00
09E7:          : nop                      ; 00
09E8:          : nop                      ; 00
09E9:          : nop                      ; 00
09EA:          : nop                      ; 00
09EB:          : nop                      ; 00
09EC:          : nop                      ; 00
09ED:          : nop                      ; 00
09EE:          : nop                      ; 00
09EF:          : nop                      ; 00
09F0:          : nop                      ; 00
09F1:          : nop                      ; 00
09F2:          : nop                      ; 00
09F3:          : nop                      ; 00
09F4:          : nop                      ; 00
09F5:          : nop                      ; 00
09F6:          : nop                      ; 00
09F7:          : nop                      ; 00
09F8:          : nop                      ; 00
09F9:          : nop                      ; 00
09FA:          : nop                      ; 00
09FB:          : nop                      ; 00
09FC:          : nop                      ; 00
09FD:          : nop                      ; 00
09FE:          : nop                      ; 00
09FF:          : nop                      ; 00
0A00:          : nop                      ; 00
0A01:          : nop                      ; 00
0A02:          : nop                      ; 00
0A03:          : nop                      ; 00
0A04:          : nop                      ; 00
0A05:          : nop                      ; 00
0A06:          : nop                      ; 00
0A07:          : nop                      ; 00
0A08:          : nop                      ; 00
0A09:          : nop                      ; 00
0A0A:          : nop                      ; 00
0A0B:          : nop                      ; 00
0A0C:          : nop                      ; 00
0A0D:          : nop                      ; 00
0A0E:          : nop                      ; 00
0A0F:          : nop                      ; 00
0A10:          : nop                      ; 00
0A11:          : nop                      ; 00
0A12:          : nop                      ; 00
0A13:          : nop                      ; 00
0A14:          : nop                      ; 00
0A15:          : nop                      ; 00
0A16:          : nop                      ; 00
0A17:          : nop                      ; 00
0A18:          : nop                      ; 00
0A19:          : nop                      ; 00
0A1A:          : nop                      ; 00
0A1B:          : nop                      ; 00
0A1C:          : nop                      ; 00
0A1D:          : nop                      ; 00
0A1E:          : nop                      ; 00
0A1F:          : nop                      ; 00
0A20:          : nop                      ; 00
0A21:          : nop                      ; 00
0A22:          : nop                      ; 00
0A23:          : nop                      ; 00
0A24:          : nop                      ; 00
0A25:          : nop                      ; 00
0A26:          : nop                      ; 00
0A27:          : nop                      ; 00
0A28:          : nop                      ; 00
0A29:          : nop                      ; 00
0A2A:          : nop                      ; 00
0A2B:          : nop                      ; 00
0A2C:          : nop                      ; 00
0A2D:          : nop                      ; 00
0A2E:          : nop                      ; 00
0A2F:          : nop                      ; 00
0A30:          : nop                      ; 00
0A31:          : nop                      ; 00
0A32:          : nop                      ; 00
0A33:          : nop                      ; 00
0A34:          : nop                      ; 00
0A35:          : nop                      ; 00
0A36:          : nop                      ; 00
0A37:          : nop                      ; 00
0A38:          : nop                      ; 00
0A39:          : nop                      ; 00
0A3A:          : nop                      ; 00
0A3B:          : nop                      ; 00
0A3C:          : nop                      ; 00
0A3D:          : nop                      ; 00
0A3E:          : nop                      ; 00
0A3F:          : nop                      ; 00
0A40:          : nop                      ; 00
0A41:          : nop                      ; 00
0A42:          : nop                      ; 00
0A43:          : nop                      ; 00
0A44:          : nop                      ; 00
0A45:          : nop                      ; 00
0A46:          : nop                      ; 00
0A47:          : nop                      ; 00
0A48:          : nop                      ; 00
0A49:          : nop                      ; 00
0A4A:          : nop                      ; 00
0A4B:          : nop                      ; 00
0A4C:          : nop                      ; 00
0A4D:          : nop                      ; 00
0A4E:          : nop                      ; 00
0A4F:          : nop                      ; 00
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
0FF8: LBL_4088 : offset $F000             ; E9 00 F0
0FFB:          : jmp $0786                ; C5 86 07  LBL_1926 $0786
0FFE:          : rjmp $FA                 ; CD FA     LBL_4088 $0FF8
