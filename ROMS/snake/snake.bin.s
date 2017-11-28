0000:          : jmp $0303                ; C5 03 03  LBL_0771 $0303
0003:          : nop                      ; 00
0004:          : load w, $6C66            ; 18 66 6C
0007:          : load w, $3846            ; 18 46 38
000A:          : load w, $0C30            ; 18 30 0C
000D:          : add a, y                 ; 41
000E:          : nop                      ; 00
000F:          : nop                      ; 00
0010:          : nop                      ; 00
0011:          : nop                      ; 00
0012:          : add a, x                 ; 40
0013:          : set w, $18               ; 3C 18
0015:          : set w, $3C               ; 3C 3C(<)
0017:          : cpy w, a                 ; 38
0018:          : cmp a, z                 ; 7E
0019:          : set w, $7E               ; 3C 7E(~)
001B:          : set w, $3C               ; 3C 3C(<)
001D:          : nop                      ; 00
001E:          : nop                      ; 00
001F:          : mul i, j                 ; 60
0020:          : nop                      ; 00
0021:          : pop a                    ; 0C
0022:          : set w, $3C               ; 3C 3C(<)
0024:          : set w, $3E               ; 3C 3E(>)
0026:          : set w, $3E               ; 3C 3E(>)
0028:          : cmp a, z                 ; 7E
0029:          : cmp a, z                 ; 7E
002A:          : set w, $66               ; 3C 66(f)
002C:          : set w, $60               ; 3C 60(`)
002E:          : div i, $6306             ; 66 06 63
0031:          : div i, $3E3C             ; 66 3C 3E
0034:          : set w, $3E               ; 3C 3E(>)
0036:          : set w, $FF               ; 3C FF
0038:          : nop                      ; FC
0039:          : set j, $6663             ; 3F 63 66
003C:          : div i, $3C7E             ; 66 7E 3C
003F:          : push y                   ; 02
0040:          : set w, $10               ; 3C 10
0042:          : nop                      ; 00
0043:          : load w, $0600            ; 18 00 06
0046:          : nop                      ; 00
0047:          : mul i, j                 ; 60
0048:          : nop                      ; 00
0049:          : inc z                    ; 70
004A:          : nop                      ; 00
004B:          : push.f                   ; 06
004C:          : load w, $0660            ; 18 60 06
004F:          : cpy w, a                 ; 38
0050:          : nop                      ; 00
0051:          : nop                      ; 00
0052:          : nop                      ; 00
0053:          : nop                      ; 00
0054:          : nop                      ; 00
0055:          : nop                      ; 00
0056:          : nop                      ; FF
0057:          : load w, $0000            ; 18 00 00
005A:          : nop                      ; 00
005B:          : nop                      ; 00
005C:          : nop                      ; 00
005D:          : nop                      ; 00
005E:          : nop                      ; 00
005F:          : nop                      ; 00
0060:          : nop                      ; 00
0061:          : nop                      ; 00
0062:          : nop                      ; 00
0063:          : nop                      ; 00
0064:          : load w, $FE66            ; 18 66 FE
0067:          : cmp a, x                 ; 7C
0068:          : div i, $186C             ; 66 6C 18
006B:          : load w, $2218            ; 18 18 22
006E:          : load z, i                ; 10
006F:          : nop                      ; 00
0070:          : nop                      ; 00
0071:          : nop                      ; 00
0072:          : mul i, j                 ; 60
0073:          : div i, $661C             ; 66 1C 66
0076:          : div i, $063C             ; 66 3C 06
0079:          : div i, $6660             ; 66 60 66
007C:          : div i, $1818             ; 66 18 18
007F:          : return                   ; 30
0080:          : nop                      ; 00
0081:          : load w, $4262            ; 18 62 42
0084:          : div i, $6666             ; 66 66 66
0087:          : div i, $0606             ; 66 06 06
008A:          : div i, $1866             ; 66 66 18
008D:          : mul i, j                 ; 60
008E:          : cpy y, a                 ; 36
008F:          : push.f                   ; 06
0090:          : dec z                    ; 77
0091:          : div i, $6666             ; 66 66 66
0094:          : div i, $7E66             ; 66 66 7E
0097:          : nop                      ; FF
0098:          : nop                      ; FE
0099:          : cmp a, w                 ; 7F
009A:          : div a, x                 ; 63
009B:          : div i, $6066             ; 66 66 60
009E:          : pop a                    ; 0C
009F:          : push.f                   ; 06
00A0:          : return                   ; 30
00A1:          : cpy w, a                 ; 38
00A2:          : nop                      ; 00
00A3:          : return                   ; 30
00A4:          : nop                      ; 00
00A5:          : push.f                   ; 06
00A6:          : nop                      ; 00
00A7:          : mul i, j                 ; 60
00A8:          : nop                      ; 00
00A9:          : load w, $0600            ; 18 00 06
00AC:          : nop                      ; 00
00AD:          : nop                      ; 00
00AE:          : push.f                   ; 06
00AF:          : return                   ; 30
00B0:          : nop                      ; 00
00B1:          : nop                      ; 00
00B2:          : set i, $0000             ; 3E 00 00
00B5:          : nop                      ; 00
00B6:          : nop                      ; FF
00B7:          : load w, $0000            ; 18 00 00
00BA:          : nop                      ; 00
00BB:          : nop                      ; 00
00BC:          : nop                      ; 00
00BD:          : nop                      ; 00
00BE:          : nop                      ; 00
00BF:          : nop                      ; 00
00C0:          : nop                      ; 00
00C1:          : nop                      ; 00
00C2:          : nop                      ; 00
00C3:          : nop                      ; 00
00C4:          : load w, $6C66            ; 18 66 6C
00C7:          : push.f                   ; 06
00C8:          : return                   ; 30
00C9:          : mod j, $0C18             ; 6C 18 0C
00CC:          : return                   ; 30
00CD:          : load y, j                ; 14
00CE:          : load z, i                ; 10
00CF:          : nop                      ; 00
00D0:          : nop                      ; 00
00D1:          : nop                      ; 00
00D2:          : return                   ; 30
00D3:          : div i, $6018             ; 66 18 60
00D6:          : mul i, j                 ; 60
00D7:          : cpy y, a                 ; 36
00D8:          : set i, $3006             ; 3E 06 30
00DB:          : div i, $1866             ; 66 66 18
00DE:          : load w, $7E18            ; 18 18 7E
00E1:          : return                   ; 30
00E2:          : mul i, j                 ; 60
00E3:          : and a, $66               ; 99 66(f)
00E5:          : div i, $6606             ; 66 06 66
00E8:          : push.f                   ; 06
00E9:          : push.f                   ; 06
00EA:          : push.f                   ; 06
00EB:          : div i, $6018             ; 66 18 60
00EE:          : store i, z               ; 1E
00EF:          : push.f                   ; 06
00F0:          : cmp a, w                 ; 7F
00F1:          : inc x                    ; 6E
00F2:          : div i, $6666             ; 66 66 66
00F5:          : div i, $FFF3             ; 66 F3 FF
00F8:          : nop                      ; F3
00F9:          : rjmp.eq $63              ; CF 63(c)  ERROR $015C
00FB:          : set w, $66               ; 3C 66(f)
00FD:          : return                   ; 30
00FE:          : pop a                    ; 0C
00FF:          : pop a                    ; 0C
0100:          : return                   ; 30
0101:          : mod j, $0000             ; 6C 00 00
0104:          : set w, $3E               ; 3C 3E(>)
0106:          : set w, $7C               ; 3C 7C(|)
0108:          : set w, $3C               ; 3C 3C(<)
010A:          : cmp a, x                 ; 7C
010B:          : set i, $701C             ; 3E 1C 70
010E:          : div i, $3730             ; 66 30 37
0111:          : set i, $3E7F             ; 3E 7F 3E
0114:          : cmp a, x                 ; 7C
0115:          : dec y                    ; 76
0116:          : nop                      ; FF
0117:          : set w, $66               ; 3C 66(f)
0119:          : div i, $666B             ; 66 6B 66
011C:          : div i, $007E             ; 66 7E 00
011F:          : nop                      ; 00
0120:          : nop                      ; 00
0121:          : nop                      ; 00
0122:          : nop                      ; 00
0123:          : nop                      ; 00
0124:          : load w, $6C00            ; 18 00 6C
0127:          : set w, $18               ; 3C 18
0129:          : cpy w, a                 ; 38
012A:          : nop                      ; 00
012B:          : pop a                    ; 0C
012C:          : return                   ; 30
012D:          : cmp a, w                 ; 7F
012E:          : cmp a, x                 ; 7C
012F:          : nop                      ; 00
0130:          : cmp a, z                 ; 7E
0131:          : nop                      ; 00
0132:          : load w, $1866            ; 18 66 18
0135:          : cpy w, a                 ; 38
0136:          : cpy w, a                 ; 38
0137:          : cpy y, a                 ; 36
0138:          : mul i, j                 ; 60
0139:          : set i, $3C18             ; 3E 18 3C
013C:          : cmp a, x                 ; 7C
013D:          : nop                      ; 00
013E:          : nop                      ; 00
013F:          : pop a                    ; 0C
0140:          : nop                      ; 00
0141:          : mul i, j                 ; 60
0142:          : cpy w, a                 ; 38
0143:          : not z                    ; A5
0144:          : cmp a, z                 ; 7E
0145:          : set i, $6606             ; 3E 06 66
0148:          : store i, z               ; 1E
0149:          : store i, z               ; 1E
014A:          : dec y                    ; 76
014B:          : cmp a, z                 ; 7E
014C:          : load w, $0E60            ; 18 60 0E
014F:          : push.f                   ; 06
0150:          : mod i, $667E             ; 6B 7E 66
0153:          : set i, $3E66             ; 3E 66 3E
0156:          : nop                      ; F3
0157:          : or y, $F3                ; 9F F3
0159:          : rjmp.eq $6B              ; CF 6B(k)  LBL_0452 $01C4
015B:          : load w, $183C            ; 18 3C 18
015E:          : pop a                    ; 0C
015F:          : load w, $4430            ; 18 30 44
0162:          : nop                      ; 00
0163:          : nop                      ; 00
0164:          : mul i, j                 ; 60
0165:          : div i, $6666             ; 66 66 66
0168:          : div i, $6618             ; 66 18 66
016B:          : div i, $6018             ; 66 18 60
016E:          : cpy y, a                 ; 36
016F:          : return                   ; 30
0170:          : cmp a, w                 ; 7F
0171:          : div i, $667F             ; 66 7F 66
0174:          : div i, $FF0E             ; 66 0E FF
0177:          : load w, $6666            ; 18 66 66
017A:          : mod i, $663C             ; 6B 3C 66
017D:          : return                   ; 30
017E:          : nop                      ; 00
017F:          : nop                      ; 00
0180:          : nop                      ; 00
0181:          : nop                      ; 00
0182:          : nop                      ; 00
0183:          : nop                      ; 00
0184:          : load w, $6C00            ; 18 00 6C
0187:          : mul i, j                 ; 60
0188:          : pop a                    ; 0C
0189:          : dba $00                  ; EC 00 0C
018C:          : return                   ; 30
018D:          : load y, j                ; 14
018E:          : load z, i                ; 10
018F:          : load w, $0000            ; 18 00 00
0192:          : pop a                    ; 0C
0193:          : div i, $0C18             ; 66 18 0C
0196:          : mul i, j                 ; 60
0197:          : cmp a, z                 ; 7E
0198:          : mul i, j                 ; 60
0199:          : div i, $6618             ; 66 18 66
019C:          : mul i, j                 ; 60
019D:          : load w, $1818            ; 18 18 18
01A0:          : cmp a, z                 ; 7E
01A1:          : return                   ; 30
01A2:          : load w, $66A5            ; 18 A5 66
01A5:          : div i, $6606             ; 66 06 66
01A8:          : push.f                   ; 06
01A9:          : push.f                   ; 06
01AA:          : div i, $1866             ; 66 66 18
01AD:          : mul i, j                 ; 60
01AE:          : store i, z               ; 1E
01AF:          : push.f                   ; 06
01B0:          : div a, x                 ; 63
01B1:          : dec y                    ; 76
01B2:          : div i, $6606             ; 66 06 66
01B5:          : store i, z               ; 1E
01B6:          : nop                      ; FF
01B7:          : or y, $FF                ; 9F FF
01B9:          : nop                      ; FF
01BA:          : cmp a, w                 ; 7F
01BB:          : set w, $18               ; 3C 18
01BD:          : pop a                    ; 0C
01BE:          : pop a                    ; 0C
01BF:          : return                   ; 30
01C0:          : return                   ; 30
01C1:          : nop                      ; 00
01C2:          : nop                      ; 00
01C3:          : nop                      ; 00
01C4: LBL_0452 : cmp a, x                 ; 7C
01C5:          : div i, $6606             ; 66 06 66
01C8:          : set i, $6618             ; 3E 18 66
01CB:          : div i, $6018             ; 66 18 60
01CE:          : store i, z               ; 1E
01CF:          : return                   ; 30
01D0:          : mod i, $7F66             ; 6B 66 7F
01D3:          : div i, $0666             ; 66 66 06
01D6:          : nop                      ; FF
01D7:          : load w, $6666            ; 18 66 66
01DA:          : cmp a, w                 ; 7F
01DB:          : load w, $1866            ; 18 66 18
01DE:          : nop                      ; 00
01DF:          : nop                      ; 00
01E0:          : nop                      ; 00
01E1:          : nop                      ; 00
01E2:          : nop                      ; 00
01E3:          : nop                      ; 00
01E4:          : nop                      ; 00
01E5:          : nop                      ; 00
01E6:          : nop                      ; FE
01E7:          : set i, $6666             ; 3E 66 66
01EA:          : nop                      ; 00
01EB:          : load w, $2218            ; 18 18 22
01EE:          : load z, i                ; 10
01EF:          : load w, $1800            ; 18 00 18
01F2:          : push.f                   ; 06
01F3:          : div i, $0618             ; 66 18 06
01F6:          : div i, $6630             ; 66 30 66
01F9:          : div i, $6618             ; 66 18 66
01FC:          : div i, $1818             ; 66 18 18
01FF:          : return                   ; 30
0200:          : nop                      ; 00
0201:          : load w, $7900            ; 18 00 79
0204:          : div i, $6666             ; 66 66 66
0207:          : div i, $0606             ; 66 06 06
020A:          : div i, $1866             ; 66 66 18
020D:          : div i, $0636             ; 66 36 06
0210:          : div a, x                 ; 63
0211:          : div i, $0666             ; 66 66 06
0214:          : div i, $FF36             ; 66 36 FF
0217:          : nop                      ; FF
0218:          : nop                      ; FF
0219:          : nop                      ; FF
021A:          : dec z                    ; 77
021B:          : div i, $0618             ; 66 18 06
021E:          : pop a                    ; 0C
021F:          : mul i, j                 ; 60
0220:          : return                   ; 30
0221:          : nop                      ; 00
0222:          : nop                      ; 00
0223:          : nop                      ; 00
0224:          : div i, $6666             ; 66 66 66
0227:          : div i, $1806             ; 66 06 18
022A:          : cmp a, x                 ; 7C
022B:          : div i, $6018             ; 66 18 60
022E:          : cpy y, a                 ; 36
022F:          : return                   ; 30
0230:          : mod i, $7F66             ; 6B 66 7F
0233:          : div i, $0666             ; 66 66 06
0236:          : nop                      ; FF
0237:          : load w, $3C66            ; 18 66 3C
023A:          : set i, $7C3C             ; 3E 3C 7C
023D:          : pop a                    ; 0C
023E:          : nop                      ; 00
023F:          : nop                      ; 00
0240:          : nop                      ; 00
0241:          : nop                      ; 00
0242:          : nop                      ; 00
0243:          : nop                      ; 00
0244:          : load w, $6C00            ; 18 00 6C
0247:          : load w, $FC62            ; 18 62 FC
024A:          : nop                      ; 00
024B:          : return                   ; 30
024C:          : pop a                    ; 0C
024D:          : add a, y                 ; 41
024E:          : nop                      ; 00
024F:          : pop a                    ; 0C
0250:          : nop                      ; 00
0251:          : load w, $3C02            ; 18 02 3C
0254:          : cmp a, z                 ; 7E
0255:          : cmp a, z                 ; 7E
0256:          : set w, $78               ; 3C 78(x)
0258:          : set w, $3C               ; 3C 3C(<)
025A:          : load w, $3C3C            ; 18 3C 3C
025D:          : nop                      ; 00
025E:          : pop x                    ; 08
025F:          : mul i, j                 ; 60
0260:          : nop                      ; 00
0261:          : pop a                    ; 0C
0262:          : load w, $6602            ; 18 02 66
0265:          : set i, $3E3C             ; 3E 3C 3E
0268:          : cmp a, z                 ; 7E
0269:          : push.f                   ; 06
026A:          : set w, $66               ; 3C 66(f)
026C:          : set w, $3C               ; 3C 3C(<)
026E:          : div i, $637E             ; 66 7E 63
0271:          : div i, $063C             ; 66 3C 06
0274:          : set w, $66               ; 3C 66(f)
0276:          : nop                      ; FF
0277:          : cmp a, z                 ; 7E
0278:          : nop                      ; FE
0279:          : cmp a, w                 ; 7F
027A:          : div a, x                 ; 63
027B:          : div i, $7E18             ; 66 18 7E
027E:          : set w, $40               ; 3C 40(@)
0280:          : set w, $00               ; 3C 00
0282:          : nop                      ; 00
0283:          : nop                      ; 00
0284:          : cmp a, x                 ; 7C
0285:          : set i, $7C3C             ; 3E 3C 7C
0288:          : cmp a, x                 ; 7C
0289:          : load w, $6660            ; 18 60 66
028C:          : set w, $66               ; 3C 66(f)
028E:          : div i, $6B78             ; 66 78 6B
0291:          : div i, $3E3E             ; 66 3E 3E
0294:          : cmp a, x                 ; 7C
0295:          : push.f                   ; 06
0296:          : nop                      ; FF
0297:          : return                   ; 30
0298:          : cmp a, x                 ; 7C
0299:          : load w, $6636            ; 18 36 66
029C:          : mul i, j                 ; 60
029D:          : cmp a, z                 ; 7E
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
02C0:          : nop                      ; 00
02C1:          : nop                      ; 00
02C2:          : nop                      ; 00
02C3:          : set w, $00               ; 3C 00
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
02D1:          : nop                      ; 00
02D2:          : nop                      ; 00
02D3:          : nop                      ; 00
02D4:          : mul i, j                 ; 60
02D5:          : nop                      ; 00
02D6:          : nop                      ; FF
02D7:          : set w, $FC               ; 3C FC
02D9:          : set j, $0000             ; 3F 00 00
02DC:          : nop                      ; 00
02DD:          : nop                      ; 00
02DE:          : nop                      ; 00
02DF:          : nop                      ; 00
02E0:          : nop                      ; 00
02E1:          : nop                      ; 00
02E2:          : nop                      ; FF
02E3:          : nop                      ; 00
02E4:          : nop                      ; 00
02E5:          : nop                      ; 00
02E6:          : nop                      ; 00
02E7:          : nop                      ; 00
02E8:          : nop                      ; 00
02E9:          : nop                      ; 00
02EA:          : set w, $00               ; 3C 00
02EC:          : nop                      ; 00
02ED:          : set w, $00               ; 3C 00
02EF:          : nop                      ; 00
02F0:          : nop                      ; 00
02F1:          : nop                      ; 00
02F2:          : nop                      ; 00
02F3:          : push.f                   ; 06
02F4:          : mul i, j                 ; 60
02F5:          : nop                      ; 00
02F6:          : nop                      ; FF
02F7:          : nop                      ; 00
02F8:          : nop                      ; 00
02F9:          : nop                      ; 00
02FA:          : nop                      ; 00
02FB:          : nop                      ; 00
02FC:          : set w, $00               ; 3C 00
02FE:          : nop                      ; 00
02FF:          : nop                      ; 00
0300:          : nop                      ; 00
0301:          : nop                      ; 00
0302:          : nop                      ; 00
0303: LBL_0771 : set i, $0318             ; 3E 18 03
0306:          : store $0008, i           ; 27 08 00
0309:          : set i, $03FA             ; 3E FA 03
030C:          : store $0002, i           ; 27 02 00
030F:          : set i, $0803             ; 3E 03 08
0312:          : store $0030, i           ; 27 30 00
0315:          : jmp $0682                ; C5 82 06  LBL_1666 $0682
0318:          : load a, $003C            ; 19 3C 00
031B:          : cmpi a, $01              ; 89 01
031D:          : jmp.eq $0320             ; CE 20 03  LBL_0800 $0320
0320: LBL_0800 : load z, $003E            ; 17 3E 00
0323:          : cmpi z, $01              ; 87 01
0325:          : jmp.neq $0388            ; D0 88 03  LBL_0904 $0388
0328:          : load z, $003D            ; 17 3D 00
032B:          : cmpi z, $15              ; 87 15
032D:          : jmp.eq $0360             ; CE 60 03  LBL_0864 $0360
0330:          : cmpi z, $2F              ; 87 2F(/)
0332:          : jmp.eq $0360             ; CE 60 03  LBL_0864 $0360
0335:          : cmpi z, $17              ; 87 17
0337:          : jmp.eq $0368             ; CE 68 03  LBL_0872 $0368
033A:          : cmpi z, $31              ; 87 31(1)
033C:          : jmp.eq $0368             ; CE 68 03  LBL_0872 $0368
033F:          : cmpi z, $24              ; 87 24($)
0341:          : jmp.eq $0370             ; CE 70 03  LBL_0880 $0370
0344:          : cmpi z, $3E              ; 87 3E(>)
0346:          : jmp.eq $0370             ; CE 70 03  LBL_0880 $0370
0349:          : cmpi z, $22              ; 87 22(")
034B:          : jmp.eq $0378             ; CE 78 03  LBL_0888 $0378
034E:          : cmpi z, $3C              ; 87 3C(<)
0350:          : jmp.eq $0378             ; CE 78 03  LBL_0888 $0378
0353:          : cmpi z, $0D              ; 87 0D
0355:          : jmp.eq $0380             ; CE 80 03  LBL_0896 $0380
0358:          : cmpi z, $27              ; 87 27(')
035A:          : jmp.eq $0380             ; CE 80 03  LBL_0896 $0380
035D:          : jmp $0388                ; C5 88 03  LBL_0904 $0388
0360: LBL_0864 : set a, $00               ; 3D 00
0362:          : store $0B8A, a           ; 26 8A 0B
0365:          : jmp $0388                ; C5 88 03  LBL_0904 $0388
0368: LBL_0872 : set a, $01               ; 3D 01
036A:          : store $0B8A, a           ; 26 8A 0B
036D:          : jmp $0388                ; C5 88 03  LBL_0904 $0388
0370: LBL_0880 : set a, $02               ; 3D 02
0372:          : store $0B8A, a           ; 26 8A 0B
0375:          : jmp $0388                ; C5 88 03  LBL_0904 $0388
0378: LBL_0888 : set a, $03               ; 3D 03
037A:          : store $0B8A, a           ; 26 8A 0B
037D:          : jmp $0388                ; C5 88 03  LBL_0904 $0388
0380: LBL_0896 : set a, $01               ; 3D 01
0382:          : store $0B8C, a           ; 26 8C 0B
0385:          : jmp $0388                ; C5 88 03  LBL_0904 $0388
0388: LBL_0904 : resume                   ; E6
0389:          : nop                      ; 00
038A:          : pop x                    ; 08
038B:          : push x                   ; 01
038C:          : push x                   ; 01
038D:          : nop                      ; 00
038E:          : nop                      ; 00
038F:          : nop                      ; 00
0390:          : nop                      ; 00
0391:          : nop                      ; 00
0392:          : nop                      ; 00
0393:          : nop                      ; 00
0394:          : nop                      ; 00
0395:          : nop                      ; 00
0396:          : nop                      ; 00
0397:          : nop                      ; 00
0398:          : nop                      ; 00
0399:          : nop                      ; 00
039A:          : nop                      ; 00
039B:          : nop                      ; 00
039C:          : nop                      ; 00
039D:          : nop                      ; 00
039E:          : nop                      ; 00
039F:          : nop                      ; 00
03A0:          : nop                      ; 00
03A1:          : nop                      ; 00
03A2:          : nop                      ; 00
03A3:          : nop                      ; 00
03A4:          : nop                      ; 00
03A5:          : nop                      ; 00
03A6:          : nop                      ; 00
03A7:          : nop                      ; 00
03A8:          : nop                      ; 00
03A9:          : nop                      ; 00
03AA:          : nop                      ; 00
03AB:          : nop                      ; 00
03AC:          : nop                      ; 00
03AD:          : nop                      ; 00
03AE:          : push x                   ; 01
03AF:          : nop                      ; 00
03B0:          : nop                      ; 00
03B1:          : nop                      ; 00
03B2:          : nop                      ; 00
03B3:          : nop                      ; 00
03B4:          : nop                      ; 00
03B5:          : nop                      ; 00
03B6:          : nop                      ; 00
03B7:          : nop                      ; 00
03B8:          : nop                      ; 00
03B9:          : nop                      ; 00
03BA:          : nop                      ; 00
03BB:          : nop                      ; 00
03BC:          : nop                      ; 00
03BD:          : nop                      ; 00
03BE:          : nop                      ; 00
03BF:          : nop                      ; 00
03C0:          : nop                      ; 00
03C1:          : nop                      ; 00
03C2:          : nop                      ; 00
03C3:          : nop                      ; 00
03C4:          : nop                      ; 00
03C5:          : nop                      ; 00
03C6:          : nop                      ; 00
03C7:          : nop                      ; 00
03C8:          : nop                      ; 00
03C9:          : nop                      ; 00
03CA:          : nop                      ; 00
03CB:          : nop                      ; 00
03CC:          : nop                      ; 00
03CD:          : nop                      ; 00
03CE:          : nop                      ; 00
03CF:          : nop                      ; 00
03D0:          : push x                   ; 01
03D1:          : nop                      ; 00
03D2:          : nop                      ; 00
03D3:          : nop                      ; 00
03D4:          : nop                      ; 00
03D5:          : nop                      ; 00
03D6:          : nop                      ; 00
03D7:          : nop                      ; 00
03D8:          : nop                      ; 00
03D9:          : nop                      ; 00
03DA:          : nop                      ; 00
03DB:          : nop                      ; 00
03DC:          : nop                      ; 00
03DD:          : nop                      ; 00
03DE:          : nop                      ; 00
03DF:          : nop                      ; 00
03E0:          : nop                      ; 00
03E1:          : nop                      ; 00
03E2:          : nop                      ; 00
03E3:          : nop                      ; 00
03E4:          : nop                      ; 00
03E5:          : nop                      ; 00
03E6:          : nop                      ; 00
03E7:          : nop                      ; 00
03E8:          : nop                      ; 00
03E9:          : nop                      ; 00
03EA:          : nop                      ; 00
03EB:          : nop                      ; 00
03EC:          : nop                      ; 00
03ED:          : nop                      ; 00
03EE:          : nop                      ; 00
03EF:          : nop                      ; 00
03F0:          : nop                      ; 00
03F1:          : nop                      ; 00
03F2:          : nop                      ; 00
03F3:          : nop                      ; 00
03F4:          : nop                      ; 00
03F5:          : nop                      ; 00
03F6:          : nop                      ; 00
03F7:          : pop z                    ; 0A
03F8:          : nop                      ; 00
03F9:          : nop                      ; 00
03FA:          : load a, $0BF5            ; 19 F5 0B
03FD:          : add a, x                 ; 40
03FE:          : store $001E, a           ; 26 1E 00
0401:          : neg a                    ; 6D
0402:          : store $0021, a           ; 26 21 00
0405:          : load a, $0BF6            ; 19 F6 0B
0408:          : add a, x                 ; 40
0409:          : store $001F, a           ; 26 1F 00
040C:          : neg a                    ; 6D
040D:          : store $0022, a           ; 26 22 00
0410:          : load a, $0BF7            ; 19 F7 0B
0413:          : add a, x                 ; 40
0414:          : store $0020, a           ; 26 20 00
0417:          : neg a                    ; 6D
0418:          : store $0023, a           ; 26 23 00
041B:          : resume                   ; E6
041C: FUN_1052 : load a, $0034            ; 19 34 00
041F:          : mod a, $5A               ; 69 5A(Z)
0421:          : store $0BF4, a           ; 26 F4 0B
0424:          : load a, $0034            ; 19 34 00
0427:          : mod a, $5A               ; 69 5A(Z)
0429:          : store $0BF5, a           ; 26 F5 0B
042C:          : load a, $0034            ; 19 34 00
042F:          : mod a, $5A               ; 69 5A(Z)
0431:          : store $0BF6, a           ; 26 F6 0B
0434:          : load a, $0B89            ; 19 89 0B
0437:          : add a, $0A               ; 51 0A
0439:          : set x, $08               ; 39 08
043B:          : call $045E               ; 29 5E 04  FUN_1118 $045E
043E:          : return                   ; 30
043F: FUN_1087 : set j, $FFFF             ; 3F FF FF
0442: LBL_1090 : dec j                    ; 7B
0443:          : jmp.nz $0442             ; D8 42 04  LBL_1090 $0442
0446:          : return                   ; 30
0447: FUN_1095 : set i, $0010             ; 3E 10 00
044A: LBL_1098 : call $043F               ; 29 3F 04  FUN_1087 $043F
044D:          : dec i                    ; 7A
044E:          : jmp.nz $044A             ; D8 4A 04  LBL_1098 $044A
0451:          : return                   ; 30
0452: FUN_1106 : set i, $8000             ; 3E 00 80
0455:          : set j, $2800             ; 3F 00 28
0458:          : set a, $20               ; 3D 20
045A:          : call $6E79               ; 29 79 6E  ERROR $6E79
045D:          : return                   ; 30
045E: FUN_1118 : store $0040, a           ; 26 40 00
0461:          : store $003F, x           ; 22 3F 00
0464:          : return                   ; 30
0465:          : set j, $0000             ; 3F 00 00
0468:          : add j, y                 ; 4A
0469:          : mul j, $0028             ; 62 28 00
046C:          : add j, x                 ; 49
046D:          : add j, $8000             ; 4C 00 80
0470:          : add a, $30               ; 51 30(0)
0472:          : store j, a               ; 1F
0473:          : return                   ; 30
0474: FUN_1140 : set j, $0000             ; 3F 00 00
0477:          : add j, y                 ; 4A
0478:          : mul j, $0028             ; 62 28 00
047B:          : add j, x                 ; 49
047C:          : add j, $8000             ; 4C 00 80
047F:          : store j, a               ; 1F
0480:          : return                   ; 30
0481: FUN_1153 : set j, $0000             ; 3F 00 00
0484:          : add j, y                 ; 4A
0485:          : mul j, $0028             ; 62 28 00
0488:          : add j, x                 ; 49
0489:          : add j, $8000             ; 4C 00 80
048C:          : load a, j                ; 12
048D:          : return                   ; 30
048E: FUN_1166 : load a, $0B89            ; 19 89 0B
0491:          : cmp a                    ; 80
0492:          : jmp.eq $0499             ; CE 99 04  LBL_1177 $0499
0495:          : inc a                    ; 72
0496:          : store $0B89, a           ; 26 89 0B
0499: LBL_1177 : return                   ; 30
049A: FUN_1178 : load a, $0034            ; 19 34 00
049D:          : mod a, $28               ; 69 28(()
049F:          : cpy x, a                 ; 35
04A0:          : load a, $0034            ; 19 34 00
04A3:          : mod a, $20               ; 69 20
04A5:          : cpy y, a                 ; 36
04A6:          : set a, $6F               ; 3D 6F(o)
04A8:          : call $0474               ; 29 74 04  FUN_1140 $0474
04AB:          : return                   ; 30
04AC: FUN_1196 : load a, $0034            ; 19 34 00
04AF:          : mod a, $28               ; 69 28(()
04B1:          : cpy x, a                 ; 35
04B2:          : load a, $0034            ; 19 34 00
04B5:          : mod a, $20               ; 69 20
04B7:          : cpy y, a                 ; 36
04B8:          : set a, $2A               ; 3D 2A(*)
04BA:          : call $0474               ; 29 74 04  FUN_1140 $0474
04BD:          : return                   ; 30
04BE: FUN_1214 : call $0447               ; 29 47 04  FUN_1095 $0447
04C1:          : call $0452               ; 29 52 04  FUN_1106 $0452
04C4:          : call $041C               ; 29 1C 04  FUN_1052 $041C
04C7:          : set a, $03               ; 3D 03
04C9:          : store $0B8A, a           ; 26 8A 0B
04CC:          : set a, $03               ; 3D 03
04CE:          : store $0B89, a           ; 26 89 0B
04D1:          : set a, $00               ; 3D 00
04D3:          : store $0B8B, a           ; 26 8B 0B
04D6:          : load a, $0034            ; 19 34 00
04D9:          : mod a, $0A               ; 69 0A
04DB:          : inc a                    ; 72
04DC:          : store $0BF7, a           ; 26 F7 0B
04DF:          : set a, $0F               ; 3D 0F
04E1:          : store $0B8E, a           ; 26 8E 0B
04E4:          : store $0B8D, a           ; 26 8D 0B
04E7:          : set a, $0F               ; 3D 0F
04E9:          : store $0BB0, a           ; 26 B0 0B
04EC:          : store $0BAF, a           ; 26 AF 0B
04EF:          : set j, $0020             ; 3F 20 00
04F2:          : set i, $0B8E             ; 3E 8E 0B
04F5:          : set a, $00               ; 3D 00
04F7:          : call $6E79               ; 29 79 6E  ERROR $6E79
04FA:          : set j, $0020             ; 3F 20 00
04FD:          : set i, $0BB0             ; 3E B0 0B
0500:          : set a, $00               ; 3D 00
0502:          : call $6E79               ; 29 79 6E  ERROR $6E79
0505:          : set j, $0021             ; 3F 21 00
0508:          : set i, $0BD1             ; 3E D1 0B
050B:          : set a, $00               ; 3D 00
050D:          : call $6E79               ; 29 79 6E  ERROR $6E79
0510:          : call $049A               ; 29 9A 04  FUN_1178 $049A
0513:          : call $049A               ; 29 9A 04  FUN_1178 $049A
0516:          : call $049A               ; 29 9A 04  FUN_1178 $049A
0519:          : call $049A               ; 29 9A 04  FUN_1178 $049A
051C:          : call $049A               ; 29 9A 04  FUN_1178 $049A
051F:          : return                   ; 30
0520: FUN_1312 : load x, $0B8D            ; 15 8D 0B
0523:          : load y, $0BAF            ; 16 AF 0B
0526:          : cmpi x, $28              ; 85 28(()
0528:          : jmp.eq $0561             ; CE 61 05  LBL_1377 $0561
052B:          : jmp.gt $0561             ; D2 61 05  LBL_1377 $0561
052E:          : cmpi y, $20              ; 86 20
0530:          : jmp.eq $0561             ; CE 61 05  LBL_1377 $0561
0533:          : jmp.gt $0561             ; D2 61 05  LBL_1377 $0561
0536:          : call $0481               ; 29 81 04  FUN_1153 $0481
0539:          : cmpi a, $20              ; 89 20
053B:          : jmp.eq $0570             ; CE 70 05  LBL_1392 $0570
053E:          : cmpi a, $73              ; 89 73(s)
0540:          : jmp.eq $0561             ; CE 61 05  LBL_1377 $0561
0543:          : cmpi a, $2A              ; 89 2A(*)
0545:          : jmp.eq $0561             ; CE 61 05  LBL_1377 $0561
0548:          : cmpi a, $6F              ; 89 6F(o)
054A:          : jmp.eq $0550             ; CE 50 05  LBL_1360 $0550
054D:          : jmp $0570                ; C5 70 05  LBL_1392 $0570
0550: LBL_1360 : set a, $20               ; 3D 20
0552:          : call $0474               ; 29 74 04  FUN_1140 $0474
0555:          : call $048E               ; 29 8E 04  FUN_1166 $048E
0558:          : call $049A               ; 29 9A 04  FUN_1178 $049A
055B:          : call $041C               ; 29 1C 04  FUN_1052 $041C
055E:          : jmp $0570                ; C5 70 05  LBL_1392 $0570
0561: LBL_1377 : set a, $18               ; 3D 18
0563:          : set x, $50               ; 39 50(P)
0565:          : call $045E               ; 29 5E 04  FUN_1118 $045E
0568:          : set a, $01               ; 3D 01
056A:          : store $0B8B, a           ; 26 8B 0B
056D:          : jmp $0570                ; C5 70 05  LBL_1392 $0570
0570: LBL_1392 : return                   ; 30
0571: FUN_1393 : load a, $0B89            ; 19 89 0B
0574:          : set i, $0BD1             ; 3E D1 0B
0577:          : set j, $0B8E             ; 3F 8E 0B
057A:          : call $6E6E               ; 29 6E 6E  ERROR $6E6E
057D:          : load a, $0B89            ; 19 89 0B
0580:          : set i, $0B8F             ; 3E 8F 0B
0583:          : set j, $0BD1             ; 3F D1 0B
0586:          : call $6E6E               ; 29 6E 6E  ERROR $6E6E
0589:          : load a, $0B89            ; 19 89 0B
058C:          : set i, $0BD1             ; 3E D1 0B
058F:          : set j, $0BB0             ; 3F B0 0B
0592:          : call $6E6E               ; 29 6E 6E  ERROR $6E6E
0595:          : load a, $0B89            ; 19 89 0B
0598:          : set i, $0BB1             ; 3E B1 0B
059B:          : set j, $0BD1             ; 3F D1 0B
059E:          : call $6E6E               ; 29 6E 6E  ERROR $6E6E
05A1:          : load a, $0B8D            ; 19 8D 0B
05A4:          : store $0B8E, a           ; 26 8E 0B
05A7:          : load a, $0BAF            ; 19 AF 0B
05AA:          : store $0BB0, a           ; 26 B0 0B
05AD:          : return                   ; 30
05AE: FUN_1454 : load a, $0B8A            ; 19 8A 0B
05B1:          : set x, $01               ; 39 01
05B3:          : set y, $01               ; 3A 01
05B5:          : load a, $0B89            ; 19 89 0B
05B8:          : set x, $05               ; 39 05
05BA:          : set y, $01               ; 3A 01
05BC:          : load a, $0B8B            ; 19 8B 0B
05BF:          : set x, $08               ; 39 08
05C1:          : set y, $01               ; 3A 01
05C3:          : load a, $0B8D            ; 19 8D 0B
05C6:          : set x, $01               ; 39 01
05C8:          : set y, $00               ; 3A 00
05CA:          : load a, $0BAF            ; 19 AF 0B
05CD:          : set x, $04               ; 39 04
05CF:          : set y, $00               ; 3A 00
05D1:          : load x, $0BF2            ; 15 F2 0B
05D4:          : load y, $0BF3            ; 16 F3 0B
05D7:          : set a, $6F               ; 3D 6F(o)
05D9:          : call $0474               ; 29 74 04  FUN_1140 $0474
05DC:          : load a, $0B89            ; 19 89 0B
05DF:          : set j, $0B8E             ; 3F 8E 0B
05E2:          : add j, a                 ; 48
05E3:          : load x, j                ; 13
05E4:          : set j, $0BB0             ; 3F B0 0B
05E7:          : add j, a                 ; 48
05E8:          : load y, j                ; 14
05E9:          : set a, $20               ; 3D 20
05EB:          : call $0474               ; 29 74 04  FUN_1140 $0474
05EE:          : set a, $00               ; 3D 00
05F0: LBL_1520 : set j, $0B8E             ; 3F 8E 0B
05F3:          : add j, a                 ; 48
05F4:          : load x, j                ; 13
05F5:          : set j, $0BB0             ; 3F B0 0B
05F8:          : add j, a                 ; 48
05F9:          : load y, j                ; 14
05FA:          : push a                   ; 05
05FB:          : set a, $73               ; 3D 73(s)
05FD:          : call $0474               ; 29 74 04  FUN_1140 $0474
0600:          : pop a                    ; 0C
0601:          : inc a                    ; 72
0602:          : load x, $0B89            ; 15 89 0B
0605:          : cmp a, x                 ; 7C
0606:          : jmp.neq $05F0            ; D0 F0 05  LBL_1520 $05F0
0609:          : set a, $53               ; 3D 53(S)
060B:          : load x, $0B8A            ; 15 8A 0B
060E:          : add a, x                 ; 40
060F:          : load x, $0B8D            ; 15 8D 0B
0612:          : load y, $0BAF            ; 16 AF 0B
0615:          : call $0474               ; 29 74 04  FUN_1140 $0474
0618:          : return                   ; 30
0619: FUN_1561 : load a, $0B8C            ; 19 8C 0B
061C:          : jmp.z $0627              ; D6 27 06  LBL_1575 $0627
061F:          : set a, $00               ; 3D 00
0621:          : store $0B8C, a           ; 26 8C 0B
0624:          : call $048E               ; 29 8E 04  FUN_1166 $048E
0627: LBL_1575 : return                   ; 30
0628: FUN_1576 : load a, $0B8A            ; 19 8A 0B
062B:          : load x, $0B8D            ; 15 8D 0B
062E:          : load y, $0BAF            ; 16 AF 0B
0631:          : cmpi a, $00              ; 89 00
0633:          : jmp.neq $063A            ; D0 3A 06  LBL_1594 $063A
0636:          : dec y                    ; 76
0637:          : jmp $0652                ; C5 52 06  LBL_1618 $0652
063A: LBL_1594 : cmpi a, $01              ; 89 01
063C:          : jmp.neq $0643            ; D0 43 06  LBL_1603 $0643
063F:          : inc y                    ; 6F
0640:          : jmp $0652                ; C5 52 06  LBL_1618 $0652
0643: LBL_1603 : cmpi a, $02              ; 89 02
0645:          : jmp.neq $064C            ; D0 4C 06  LBL_1612 $064C
0648:          : dec x                    ; 75
0649:          : jmp $0652                ; C5 52 06  LBL_1618 $0652
064C: LBL_1612 : cmpi a, $03              ; 89 03
064E:          : jmp.neq $0652            ; D0 52 06  LBL_1618 $0652
0651:          : inc x                    ; 6E
0652: LBL_1618 : store $0B8D, x           ; 22 8D 0B
0655:          : store $0BAF, y           ; 23 AF 0B
0658:          : return                   ; 30
0659: FUN_1625 : load a, $0BF7            ; 19 F7 0B
065C:          : cmp a                    ; 80
065D:          : jmp.nz $067D             ; D8 7D 06  LBL_1661 $067D
0660:          : load a, $0034            ; 19 34 00
0663:          : mod a, $02               ; 69 02
0665:          : cmp a                    ; 80
0666:          : jmp.eq $066F             ; CE 6F 06  LBL_1647 $066F
0669:          : call $04AC               ; 29 AC 04  FUN_1196 $04AC
066C:          : jmp $0672                ; C5 72 06  LBL_1650 $0672
066F: LBL_1647 : call $049A               ; 29 9A 04  FUN_1178 $049A
0672: LBL_1650 : load a, $0034            ; 19 34 00
0675:          : mod a, $03               ; 69 03
0677:          : add a, $01               ; 51 01
0679:          : store $0BF7, a           ; 26 F7 0B
067C:          : return                   ; 30
067D: LBL_1661 : dec a                    ; 79
067E:          : store $0BF7, a           ; 26 F7 0B
0681:          : return                   ; 30
0682: LBL_1666 : call $04BE               ; 29 BE 04  FUN_1214 $04BE
0685: LBL_1669 : call $0619               ; 29 19 06  FUN_1561 $0619
0688:          : call $0659               ; 29 59 06  FUN_1625 $0659
068B:          : call $0628               ; 29 28 06  FUN_1576 $0628
068E:          : call $0571               ; 29 71 05  FUN_1393 $0571
0691:          : call $0520               ; 29 20 05  FUN_1312 $0520
0694:          : load a, $0B8B            ; 19 8B 0B
0697:          : cmpi a, $01              ; 89 01
0699:          : call.eq $04BE            ; 2A BE 04
069C:          : call $05AE               ; 29 AE 05  FUN_1454 $05AE
069F:          : call $0447               ; 29 47 04  FUN_1095 $0447
06A2:          : jmp $0685                ; C5 85 06  LBL_1669 $0685
