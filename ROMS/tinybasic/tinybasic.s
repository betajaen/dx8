include '../dx8.inc'
include '../dx8_crt.inc'
include '../dx8_6502.inc'
; v0.2.2
;
; Bill O'Neill - Last update: 2011/11/11
;
; Monitor code is Open License and can be used freely
; Tiny Basic code is Copyright, Tom Pitman
;
; Consist of a minimal terminal monitor and Tom
; Pitman's Tiny Basic as a high-level
; programming language
;
; This code assembles as-is with the macro assembler in the
; Michal Kowalski simulator.
;
; It should be easy enough to configure this to run any-
; where in memory or convert it to assemble with any 6502
; assembler.
;
; Next steps:
;        More comments to document this code
;
;
; Revision History:
;
; v0.2.2 - 2011/11/11
;        Reduced version containg only a terminal monitor
;        for an 6850 ACIA ad Tom Pitman's Tiny Basic
;
; v0.2.1 - 2011/05/18
;        Ported to Michal Kowalski's macro assembler
;
; v0.2.0 - 2011/01/04
;        Corrected some label problems
;        Added/corrected some comments
;
; v0.1.3 - 2009/11/28
;        Changed the look-up table for the IL op-code
;          handlers to use labels instead of literal addresses
;          this helps make the code re-locatable.
;        Added some comments to source
;
; v0.1.2 - 2009/01/12
;        Added BREAK routine
;        Fixed my bad reference to error string " AT "
;        Compressed gaps in monitor code
;        Added some comments to source
;
; v0.1.1 - 2008/12/15
;        Initial working version
;
;
; Notes:
;  - I changed the prompt character from a ":" ($3A) to a ">" ($3E) for no
;    other reason than I think it looks a bit better. The prompt character
;    is the second byte of the IL program table.
;
;  - This version is to run in the OMS-03,  The memory map is as follows.
;
;    $0000-$7FFF     RAM
;    $8000-$EFFF     ROM - Tiny Basic
;    $F000-$F7FF     I/O - ACIA is at $F000
;    $F800-$FFFF     ROM - Simple monitor
;
;  - Sta_6502_RTIng address in this version (referred to as "S" in the EXPERIMENTER'S
;    KIT) is $8000


;
; Tiny Basic starts here
;
;<<<          .org     $8000             ; Start of Basic.


CV:
         JMP      COLD_S            ; Cold start vector
WV:
         JMP      WARM_S            ; Warm start vector
IN_V:
         JMP      RCCHR             ; Input routine address.
OUT_V:
         JMP      SNDCHR            ; Output routine address.
BV:
         JMP      BREAK             ; Begin break routine

;
; Some codes
;
BSC:
          db $5f                   ; Backspace code
LSC:
          db $18                   ; Line cancel code
PCC:
          db $80                   ; Pad character control
TMC:
          db $00                   ; Tape mode control
SSS:
          db $04                   ; Spare Stack size. (was $04 but documentation suggests $20)

;
; Code fragment for 'PEEK' and 'POKE'
;
PEEK:
         STX $C3                   ; 'PEEK' - store X in $C3
         BCC LBL008                ; On carry clear goto LBL008
         STX $C3                   ; 'POKE' - store X in $C3
         STA ($C2),Y               ; Store A in location pointed to by $C3 (hi) and Y (lo)
         RTS                       ; Return
LBL008:
         LDA ($C2),Y               ; Load A with value pointed to by $C3 (hi) and Y (lo)
         LDY #$00                  ; Reset Y
         RTS                       ; Return

;
; The following table contains the addresses for the ML handlers for the IL opcodes.
;
SRVT:
          dw  IL_BBR               ; ($40-$5F) Backward Branch Relative
          dw  IL_FBR               ; ($60-$7F) Forward Branch Relative
          dw  IL__BC               ; ($80-$9F) String Match Branch
          dw  IL__BV               ; ($A0-$BF) Branch if not Variable
          dw  IL__BN               ; ($C0-$DF) Branch if not a Number
          dw  IL__BE               ; ($E0-$FF) Branch if not End of line
          dw  IL__NO               ; ($08) No Ope_6502_RTIon
          dw  IL__LB               ; ($09) Push Literal Byte onto Stack
          dw  IL__LN               ; ($0A) Push Literal Number
          dw  IL__DS               ; ($0B) Duplicate Top two bytes on Stack
          dw  IL__SP               ; ($0C) Stack Pop
          dw  IL__NO               ; ($0D) (Reserved)
          dw  IL__NO               ; ($0E) (Reserved)
          dw  IL__NO               ; ($0F) (Reserved)
          dw  IL__SB               ; ($10) Save Basic Pointer
          dw  IL__RB               ; ($11) Restore Basic Pointer
          dw  IL__FV               ; ($12) Fetch Variable
          dw  IL__SV               ; ($13) Store Variable
          dw  IL__GS               ; ($14) Save GOSUB line
          dw  IL__RS               ; ($15) Restore saved line
          dw  IL__GO               ; ($16) GOTO
          dw  IL__NE               ; ($17) Negate
          dw  IL__AD               ; ($18) Add
          dw  IL__SU               ; ($19) Subtract
          dw  IL__MP               ; ($1A) Multiply
          dw  IL__DV               ; ($1B) Divide
          dw  IL__CP               ; ($1C) Compare
          dw  IL__NX               ; ($1D) Next BASIC statement
          dw  IL__NO               ; ($1E) (Reserved)
          dw  IL__LS               ; ($1F) List the program
          dw  IL__PN               ; ($20) Print Number
          dw  IL__PQ               ; ($21) Print BASIC string
          dw  IL__PT               ; ($22) Print Tab
          dw  IL__NL               ; ($23) New Line
          dw  IL__PC               ; ($24) Print Literal String
          dw  IL__NO               ; ($25) (Reserved)
          dw  IL__NO               ; ($26) (Reserved)
          dw  IL__GL               ; ($27) Get input Line
          dw  ILRES1               ; ($28) (Seems to be reserved - No IL opcode calls this)
          dw  ILRES2               ; ($29) (Seems to be reserved - No IL opcode calls this)
          dw  IL__IL               ; ($2A) Insert BASIC Line
          dw  IL__MT               ; ($2B) Mark the BASIC program space Empty
          dw  IL__XQ               ; ($2C) Execute
          dw  WARM_S               ; ($2D) Stop (Warm Start)
          dw  IL__US               ; ($2E) Machine Language Subroutine Call
          dw  IL__RT               ; ($2F) IL subroutine return

ERRSTR:
          dd $2041, $5420          ; " AT " string used in error repo_6502_RTIng.  Tom was right about this.
          db $80                   ; String terminator

LBL002:
          dw  ILTBL                ; Address of IL program table

;
; Begin Cold Start
;
; Load start of free ram ($0200) into locations $20 and $21
; and initialize the address for end of free ram ($22 & $23)
;
COLD_S:
         _6502_LDA_IMM $00                   ; Load accumulator with $00
         _6502_STA_ZPG $20                    ; Store $00 in $20
         _6502_STA_ZPG $22                    ; Store $00 in $22
         _6502_LDA_IMM $02                   ; Load accumulator with $02
         _6502_STA_ZPG $21                    ; Store $02 in $21
         _6502_STA_ZPG $23                    ; Store $02 in $23
;
;
; Begin test for free ram
;
         _6502_LDY_IMM $01                   ; Load register Y with $01
MEM_T:
         lda ($22),Y                ; Load accumulator With the contents of a byte of memory
         _6502_TAX                        ; Save it to X
         eor #$FF                   ; Next 4 instuctions test to see if this memeory location
         sta ($22),Y                ; is ram by trying to write something new to it - new value
         cmp ($22),Y                ; gets created by XORing the old value with $FF - store the
         _6502_PHP                        ; result of the test on the stack to look at later
         _6502_TXA                        ; Retrieve the old memory value
         sta ($22),Y                ; Put it back where it came from
         inc $22                    ; Increment $22 (for next memory location)
         bne SKP_PI                 ; Skip if we don't need to increment page
         inc $23                    ; Increment $23 (for next memory page)
SKP_PI:
         plp                        ; Now look at the result of the memory test
         beq MEM_T                  ; Go test the next mempry location if the last one was ram
         dey                        ; If last memory location did not test as ram, decrement Y (should be $00 now)
IL__MT:
         cld                        ; Make sure we're not in decimal mode
         lda $20                    ; Load up the low-order by of the start of free ram
         adc SSS                    ; Add to the spare stack size
         _6502_STA_ZPG $24                    ; Store the result in $0024
         _6502_TYA                        ; Retrieve Y
         adc $21                    ; And add it to the high order byte of the start of free ram (this does not look right)
         _6502_STA_ZPG $25                    ; Store the result in $0025
         _6502_TYA                        ; Retrieve Y again
         sta ($20),Y                ; Store A in the first byte of program memory
         iny                        ; Increment Y
         sta ($20),Y                ; Store A in the second byte of program memory
;
;Begin Warm Start
;
WARM_S:
         lda $22
         _6502_STA_ZPG $C6
         _6502_STA_ZPG $26
         lda $23
         _6502_STA_ZPG $C7
         _6502_STA_ZPG $27
         jsr P_NWLN                 ; Go print CR, LF and pad charachters
LBL014:
         lda LBL002                 ; Load up the start of the IL Table
         _6502_STA_ZPG $2A                    ;
         lda LBL002+$01             ;
         _6502_STA_ZPG $2B
         _6502_LDA_IMM $80
         _6502_STA_ZPG $C1
         _6502_LDA_IMM $30
         _6502_STA_ZPG $C0
         _6502_LDX_IMM $00
         stx $BE
         stx $C2
         dex
         txs

;
; IL execution loop
;
LBL006:
         cld                        ; Make sure we're in binary mode
         jsr LBL004                 ; Go read a byte from the IL program table
         jsr LBL005                 ; Go decide what to do with it
         jmp LBL006                 ; Repeat
;
;
;
          db $83                   ; No idea about this
          db $65                   ; No idea about this
;
;
; Routine to service the TBIL Instructions
;
LBL005:
         _6502_CMP_IMM $30                   ;
         _6502_BCS_ABS LBL011                 ; If it's $30 or higher, it's a Branch or Jump - go handle it
         _6502_CMP_IMM $08                   ;
         _6502_BCC_ABS LBL007                 ; If it's less than $08 it's a stack exchange - go handle it
         _6502_ASL                        ; Multiply the OP code by 2
         _6502_TAX                        ; Transfer it to X
LBL022:
         lda SRVT-$03,X             ; Get the hi byte of the OP Code handling routine
         _6502_PHA                        ; and save it on the stack
         lda SRVT-$04,X             ; Get the lo byte
         _6502_PHA                        ; and save it on the stack
         _6502_PHP                        ; save the processor status too
         _6502_RTI                        ; now go execute the OP Code handling routine
;
;
; Routine to handle the stack exchange
;
LBL007:
         adc $C1
         _6502_TAX
         lda ($C1),Y
         _6502_PHA
         lda $00,X
         sta ($C1),Y
         pla
         _6502_STA_ZPG $00,X
         rts
;
;
;
LBL015:
         jsr P_NWLN                 ; Go print CR, LF and pad charachters
         _6502_LDA_IMM $21                   ; Load an ASCII DC2
         jsr OUT_V                  ; Go print it
         lda $2A                    ; Load the current TBIL pointer (lo)
         sec                        ; Set the carry flag
         sbc LBL002                 ; Subtract the TBIL table origin (lo)
         _6502_TAX                        ; Move the difference to X
         lda $2B                    ; Load the current TBIL pointer (hi)
         sbc LBL002+$01             ; Subtract the TBIL table origin (hi)
         jsr LBL010
         lda $BE
         beq LBL012
         lda #<ERRSTR               ; Get lo byte of error string address
         _6502_STA_ZPG $2A                    ; Put in $2A
         lda #>ERRSTR               ; Get hi byte of error string address
         _6502_STA_ZPG $2B                    ; Put in $2B
         jsr IL__PC                 ; Go report an error has been detected
         ldx $28
         lda $29
         jsr LBL010
LBL012:
         _6502_LDA_IMM $07                   ; ASCII Bell
         jsr OUT_V                  ; Go ring Bell
         jsr P_NWLN                 ; Go print CR, LF and pad charachters
LBL060:
         lda $26
         _6502_STA_ZPG $C6
         lda $27
         _6502_STA_ZPG $C7
         jmp LBL014
;
;
;
LBL115:
         _6502_LDX_IMM $7C
LBL048:
         cpx $C1
LBL019:
         _6502_BCC_ABS LBL015
         ldx $C1
         inc $C1
         inc $C1
         clc
         rts
;
;
;
IL_BBR:
         dec $BD                    ; Entry point for TBIL Backward Branch Relative
IL_FBR:
         lda $BD                    ; Entry point for TBIL Forward Branch Relative
         beq LBL015
LBL017:
         lda $BC
         _6502_STA_ZPG $2A
         lda $BD
         _6502_STA_ZPG $2B
         rts
;
; Jump handling routine
;
LBL011:
         _6502_CMP_IMM $40
         _6502_BCS_ABS LBL016                 ; If it's not a Jump, go to branch handler
         _6502_PHA
         jsr LBL004                 ; Go read a byte from the TBIL table
         adc LBL002
         _6502_STA_ZPG $BC
         pla
         _6502_PHA
         and #$07
         adc LBL002+$01
         _6502_STA_ZPG $BD
         pla
         and #$08
         bne LBL017
         lda $BC
         ldx $2A
         _6502_STA_ZPG $2A
         stx $BC
         lda $BD
         ldx $2B
         _6502_STA_ZPG $2B
         stx $BD
LBL126:
         lda $C6
         sbc #$01
         _6502_STA_ZPG $C6
         _6502_BCS_ABS LBL018
         dec $C7
LBL018:
         cmp $24
         lda $C7
         sbc $25
         _6502_BCC_ABS LBL019
         lda $BC
         sta ($C6),Y
         iny
         lda $BD
         sta ($C6),Y
         rts
;
;
; Branch Handler
;
LBL016:
         _6502_PHA
         lsr
         lsr
         lsr
         lsr
         and #$0E
         _6502_TAX
         pla
         _6502_CMP_IMM $60
         and #$1F
         _6502_BCS_ABS LBL020
         ora #$E0
LBL020:
         clc
         beq LBL021
         adc $2A
         _6502_STA_ZPG $BC
         _6502_TYA
         adc $2B
LBL021:
         _6502_STA_ZPG $BD
         jmp LBL022
;
;
;
IL__BC:
         lda $2C                    ; Entry point for TBIL BC (String Match Branch)
         _6502_STA_ZPG $B8
         lda $2D
         _6502_STA_ZPG $B9
LBL025:
         jsr LBL023
         jsr LBL024
         eor ($2A),Y
         _6502_TAX
         jsr LBL004                 ; Go read a byte from the TBIL table
         _6502_TXA
         beq LBL025
         _6502_ASL
         beq LBL026
         lda $B8
         _6502_STA_ZPG $2C
         lda $B9
         _6502_STA_ZPG $2D
LBL028:
         jmp IL_FBR
IL__BE:
         jsr LBL023                 ; Entry point for TBIL BE (Branch if not End of line)
         _6502_CMP_IMM $0D
         bne LBL028
LBL026:
         rts
;
;
;
IL__BV:
         jsr LBL023                 ; Entry point for TBIL BV (Branch if not Variable)
         _6502_CMP_IMM $5B
         _6502_BCS_ABS LBL028
         _6502_CMP_IMM $41
         _6502_BCC_ABS LBL028
         _6502_ASL
         jsr LBL029
LBL024:
         _6502_LDY_IMM $00
         lda ($2C),Y
         inc $2C
         bne LBL030
         inc $2D
LBL030:
         _6502_CMP_IMM $0D
         clc
         rts
;
;
;
LBL031:
         jsr LBL024
LBL023:
         lda ($2C),Y
         _6502_CMP_IMM $20
         beq LBL031
         _6502_CMP_IMM $3A
         clc
         bpl LBL032
         _6502_CMP_IMM $30
LBL032:
         rts
;
;
;
IL__BN:
         jsr LBL023                 ; Entry point for TBIL BN (Branch if not a Number)
         _6502_BCC_ABS LBL028
         sty $BC
         sty $BD
LBL033:
         lda $BC
         ldx $BD
         _6502_ASL $BC
         rol $BD
         _6502_ASL $BC
         rol $BD
         clc
         adc $BC
         _6502_STA_ZPG $BC
         _6502_TXA
         adc $BD
         _6502_ASL $BC
         rol
         _6502_STA_ZPG $BD
         jsr LBL024
         and #$0F
         adc $BC
         _6502_STA_ZPG $BC
         _6502_TYA
         adc $BD
         _6502_STA_ZPG $BD
         jsr LBL023
         _6502_BCS_ABS LBL033
         jmp LBL034
LBL061:
         jsr IL__SP
         lda $BC
         ora $BD
         beq LBL036
LBL065:
         lda $20
         _6502_STA_ZPG $2C
         lda $21
         _6502_STA_ZPG $2D
LBL040:
         jsr LBL037
         beq LBL038
         lda $28
         cmp $BC
         lda $29
         sbc $BD
         _6502_BCS_ABS LBL038
LBL039:
         jsr LBL024
         bne LBL039
         jmp LBL040
LBL038:
         lda $28
         eor $BC
         bne LBL041
         lda $29
         eor $BD
LBL041:
         rts
;
;
;
LBL043:
         jsr LBL042
IL__PC:
         jsr LBL004                 ; Entry point for TBIL PC (print literal) - Go read a byte from the TBIL table
         bpl LBL043
LBL042:
         inc $BF
         bmi LBL044
         jmp OUT_V                  ; Go print it
LBL044:
         dec $BF
LBL045:
         rts
;
;
;
LBL046:
         _6502_CMP_IMM $22
         beq LBL045
         jsr LBL042
IL__PQ:
         jsr LBL024                 ; Entry point for TBIL PQ
         bne LBL046
LBL036:
         jmp LBL015
IL__PT:
         _6502_LDA_IMM $20                   ; Entry point for TBIL PT
         jsr LBL042
         lda $BF
         and #$87
         bmi LBL045
         bne IL__PT
         rts
;
;
;
IL__CP:
         _6502_LDX_IMM $7B
         jsr LBL048
         inc $C1
         inc $C1
         inc $C1
         sec
         lda $03,X
         sbc $00,X
         _6502_STA_ZPG $00,X
         lda $04,X
         sbc $01,X
         bvc LBL052
         eor #$80
         ora #$01
LBL052:
         bmi LBL053
         bne LBL054
         ora $00,X
         beq LBL049
LBL054:
         lsr $02,X
LBL049:
         lsr $02,X
LBL053:
         lsr $02,X
         _6502_BCC_ABS LBL050
LBL004:
         _6502_LDY_IMM $00                   ; Read a byte from the TBIL Table
         lda ($2A),Y               ;
         inc $2A                    ; Increment TBIL Table pointer as required
         bne LBL051                 ;
         inc $2B                    ;
LBL051:
         ora #$00                   ; Check for $00 and set the 'Z' flag acordingly
LBL050:
         rts                        ; Return
;
;
;
IL__NX:
         lda $BE                    ; Entry point for TBIL NX
         beq LBL055
LBL056:
         jsr LBL024
         bne LBL056
         jsr LBL037
         beq LBL057
LBL062:
         jsr LBL058
         jsr BV                     ; Test for break
         _6502_BCS_ABS LBL059
         lda $C4
         _6502_STA_ZPG $2A
         lda $C5
         _6502_STA_ZPG $2B
         rts
;
;
;
LBL059:
         lda LBL002
         _6502_STA_ZPG $2A
         lda LBL002+$01
         _6502_STA_ZPG $2B
LBL057:
         jmp LBL015
LBL055:
         _6502_STA_ZPG $BF
         jmp LBL060
IL__XQ:
         lda $20                    ; Entry point fro TBIL XQ
         _6502_STA_ZPG $2C
         lda $21
         _6502_STA_ZPG $2D
         jsr LBL037
         beq LBL057
         lda $2A
         _6502_STA_ZPG $C4
         lda $2B
         _6502_STA_ZPG $C5
LBL058:
         _6502_LDA_IMM $01
         _6502_STA_ZPG $BE
         rts
;
;
;
IL__GO:
         jsr LBL061                 ; Entry point for TBIL GO
         beq LBL062
LBL066:
         lda $BC
         _6502_STA_ZPG $28
         lda $BD
         _6502_STA_ZPG $29
         jmp LBL015
IL__RS:
         jsr LBL063                 ; Entry point for TBIL RS
         jsr LBL064
         jsr LBL065
         bne LBL066
         rts
;
;
;
LBL037:
         jsr LBL024
         _6502_STA_ZPG $28
         jsr LBL024
         _6502_STA_ZPG $29
         ora $28
         rts
;
;
;
IL__DS:
         jsr IL__SP                 ; Entry point for TBIL DS
         jsr LBL034
LBL034:
         lda $BD
LBL131:
         jsr LBL029
         lda $BC
LBL029:
         ldx $C1
         dex
         _6502_STA_ZPG $00,X
         stx $C1
         cpx $C0
         bne IL__NO
LBL068:
         jmp LBL015
LBL097:
         ldx $C1
         cpx #$80
         bpl LBL068
         lda $00,X
         inc $C1
IL__NO:
         rts                        ; Entry point for the TBIL NO
;
;
;
LBL010:
         _6502_STA_ZPG $BD
         stx $BC
         jmp LBL069
IL__PN:
         ldx $C1                    ; Entry point for the TBIL PN
         lda $01,X
         bpl LBL070
         jsr IL__NE
         _6502_LDA_IMM $2D
         jsr LBL042
LBL070:
         jsr IL__SP
LBL069:
         _6502_LDA_IMM $1F
         _6502_STA_ZPG $B8
         _6502_STA_ZPG $BA
         _6502_LDA_IMM $2A
         _6502_STA_ZPG $B9
         _6502_STA_ZPG $BB
         ldx $BC
         ldy $BD
         sec
LBL072:
         inc $B8
         _6502_TXA
         sbc #$10
         _6502_TAX
         _6502_TYA
         sbc #$27
         _6502_TAY
         _6502_BCS_ABS LBL072
LBL073:
         dec $B9
         _6502_TXA
         adc #$E8
         _6502_TAX
         _6502_TYA
         adc #$03
         _6502_TAY
         _6502_BCC_ABS LBL073
         _6502_TXA
LBL074:
         sec
         inc $BA
         sbc #$64
         _6502_BCS_ABS LBL074
         dey
         bpl LBL074
LBL075:
         dec $BB
         adc #$0A
         _6502_BCC_ABS LBL075
         ora #$30
         _6502_STA_ZPG $BC
         _6502_LDA_IMM $20
         _6502_STA_ZPG $BD
         _6502_LDX_IMM $FB
LBL199:
         stx $C3
         lda $BD,X
         ora $BD
         _6502_CMP_IMM $20
         beq LBL076
         _6502_LDY_IMM $30
         sty $BD
         ora $BD
         jsr LBL042
LBL076:
         ldx $C3
         inx
         bne LBL199
         rts
;
;
;
IL__LS:
         lda $2D                    ; Entry point for TBIL LS
         _6502_PHA
         lda $2C
         _6502_PHA
         lda $20
         _6502_STA_ZPG $2C
         lda $21
         _6502_STA_ZPG $2D
         lda $24
         ldx $25
         jsr LBL077
         beq LBL078
         jsr LBL077
LBL078:
         lda $2C
         sec
         sbc $B6
         lda $2D
         sbc $B7
         _6502_BCS_ABS LBL079
         jsr LBL037
         beq LBL079
         ldx $28
         lda $29
         jsr LBL010
         _6502_LDA_IMM $20
LBL080:
         jsr LBL042
         jsr BV                     ; Test for break
         _6502_BCS_ABS LBL079
         jsr LBL024
         bne LBL080
         jsr IL__NL
         jmp LBL078
LBL077:
         _6502_STA_ZPG $B6
         inc $B6
         bne LBL082
         inx
LBL082:
         stx $B7
         ldy $C1
         cpy #$80
         beq LBL083
         jsr LBL061
LBL099:
         lda $2C
         ldx $2D
         sec
         sbc #$02
         _6502_BCS_ABS LBL084
         dex
LBL084:
         _6502_STA_ZPG $2C
         jmp LBL085
LBL079:
         pla
         _6502_STA_ZPG $2C
         pla
         _6502_STA_ZPG $2D
LBL083:
         rts
IL__NL:
         lda $BF                    ; Entry point for TBIL NL
         bmi LBL083
;
;
; Routine to print a new line.  It handles CR, LF
; and adds pad characters to the ouput
;
P_NWLN:
         _6502_LDA_IMM $0D                   ; Load up a CR
         jsr OUT_V                  ; Go print it
         lda PCC                    ; Load the pad character code
         and #$7F                   ; Test to see -
         _6502_STA_ZPG $BF                    ; how many pad charachters to print
         beq LBL086                 ; Skip if 0
LBL088:
         jsr LBL087                 ; Go print pad character
         dec $BF                    ; One less
         bne LBL088                 ; Loop until 0
LBL086:
         _6502_LDA_IMM $0A                   ; Load up a LF
         jmp LBL089                 ; Go print it
;
;
;
LBL092:
         ldy TMC
LBL091:
         sty $BF
         _6502_BCS_ABS LBL090
IL__GL:
         _6502_LDA_IMM $30                   ; Entry pont for TBIL GL
         _6502_STA_ZPG $2C
         _6502_STA_ZPG $C0
         sty $2D
         jsr LBL034
LBL090:
         eor $80
         _6502_STA_ZPG $80
         jsr IN_V
         _6502_LDY_IMM $00
         ldx $C0
         and #$7F
         beq LBL090
         _6502_CMP_IMM $7F
         beq LBL090
         _6502_CMP_IMM $13
         beq LBL091
         _6502_CMP_IMM $0A
         beq LBL092
         cmp LSC
         beq LBL093
         cmp BSC
         bne LBL094
         cpx #$30
         bne LBL095
LBL093:
         ldx $2C
         sty $BF
         _6502_LDA_IMM $0D
LBL094:
         cpx $C1
         bmi LBL096
         _6502_LDA_IMM $07
         jsr LBL042
         jmp LBL090
LBL096:
         _6502_STA_ZPG $00,X
         inx
         inx
LBL095:
         dex
         stx $C0
         _6502_CMP_IMM $0D
         bne LBL090
         jsr IL__NL
IL__SP:
         jsr LBL097                 ; Entry point for TBIL SP
         _6502_STA_ZPG $BC
         jsr LBL097
         _6502_STA_ZPG $BD
         rts
;
;
;
IL__IL:
         jsr LBL098                 ; Entry point for TBIL IL
         jsr LBL061
         _6502_PHP
         jsr LBL099
         _6502_STA_ZPG $B8
         stx $B9
         lda $BC
         _6502_STA_ZPG $B6
         lda $BD
         _6502_STA_ZPG $B7
         _6502_LDX_IMM $00
         plp
         bne LBL100
         jsr LBL037
         dex
         dex
LBL101:
         dex
         jsr LBL024
         bne LBL101
LBL100:
         sty $28
         sty $29
         jsr LBL098
         _6502_LDA_IMM $0D
         cmp ($2C),Y
         beq LBL102
         inx
         inx
         inx
LBL103:
         inx
         iny
         cmp ($2C),Y
         bne LBL103
         lda $B6
         _6502_STA_ZPG $28
         lda $B7
         _6502_STA_ZPG $29
LBL102:
         lda $B8
         _6502_STA_ZPG $BC
         lda $B9
         _6502_STA_ZPG $BD
         clc
         _6502_LDY_IMM $00
         _6502_TXA
         beq LBL104
         bpl LBL105
         adc $2E
         _6502_STA_ZPG $B8
         lda $2F
         sbc #$00
         _6502_STA_ZPG $B9
LBL109:
         lda ($2E),Y
         sta ($B8),Y
         ldx $2E
         cpx $24
         bne LBL106
         lda $2F
         cmp $25
         beq LBL107
LBL106:
         inx
         stx $2E
         bne LBL108
         inc $2F
LBL108:
         inc $B8
         bne LBL109
         inc $B9
         bne LBL109
LBL105:
         adc $24
         _6502_STA_ZPG $B8
         _6502_STA_ZPG $2E
         _6502_TYA
         adc $25
         _6502_STA_ZPG $B9
         _6502_STA_ZPG $2F
         lda $2E
         sbc $C6
         lda $2F
         sbc $C7
         _6502_BCC_ABS LBL110
         dec $2A
         jmp LBL015
LBL110:
         lda ($24),Y
         sta ($2E),Y
         ldx $24
         bne LBL111
         dec $25
LBL111:
         dec $24
         ldx $2E
         bne LBL112
         dec $2F
LBL112:
         dex
         stx $2E
         cpx $BC
         bne LBL110
         ldx $2F
         cpx $BD
         bne LBL110
LBL107:
         lda $B8
         _6502_STA_ZPG $24
         lda $B9
         _6502_STA_ZPG $25
LBL104:
         lda $28
         ora $29
         beq LBL113
         lda $28
         sta ($BC),Y
         iny
         lda $29
         sta ($BC),Y
LBL114:
         iny
         sty $B6
         jsr LBL024
         _6502_PHP
         ldy $B6
         sta ($BC),Y
         plp
         bne LBL114
LBL113:
         jmp LBL014
IL__DV:
         jsr LBL115
         lda $03,X
         and #$80
         beq LBL116
         _6502_LDA_IMM $FF
LBL116:
         _6502_STA_ZPG $BC
         _6502_STA_ZPG $BD
         _6502_PHA
         adc $02,X
         _6502_STA_ZPG $02,X
         pla
         _6502_PHA
         adc $03,X
         _6502_STA_ZPG $03,X
         pla
         eor $01,X
         _6502_STA_ZPG $BB
         bpl LBL117
         jsr LBL118
LBL117:
         _6502_LDY_IMM $11
         lda $00,X
         ora $01,X
         bne LBL119
         jmp LBL015
LBL119:
         sec
         lda $BC
         sbc $00,X
         _6502_PHA
         lda $BD
         sbc $01,X
         _6502_PHA
         eor $BD
         bmi LBL120
         pla
         _6502_STA_ZPG $BD
         pla
         _6502_STA_ZPG $BC
         sec
         jmp LBL121
LBL120:
         pla
         pla
         clc
LBL121:
         rol $02,X
         rol $03,X
         rol $BC
         rol $BD
         dey
         bne LBL119
         lda $BB
         bpl LBL122
IL__NE:
         ldx $C1                    ; Entry point for TBIL NE
LBL118:
         sec
         _6502_TYA
         sbc $00,X
         _6502_STA_ZPG $00,X
         _6502_TYA
         sbc $01,X
         _6502_STA_ZPG $01,X
LBL122:
         rts
;
;
;
IL__SU:
         jsr IL__NE                 ; Entry point for TBIL SU
IL__AD:
         jsr LBL115                 ; Entry point for TBIL AD
         lda $00,X
         adc $02,X
         _6502_STA_ZPG $02,X
         lda $01,X
         adc $03,X
         _6502_STA_ZPG $03,X
         rts
;
;
;
IL__MP:
         jsr LBL115                 ; Entry point for TBIL MP
         _6502_LDY_IMM $10
         lda $02,X
         _6502_STA_ZPG $BC
         lda $03,X
         _6502_STA_ZPG $BD
LBL124:
         _6502_ASL $02,X
         rol $03,X
         rol $BC
         rol $BD
         _6502_BCC_ABS LBL123
         clc
         lda $02,X
         adc $00,X
         _6502_STA_ZPG $02,X
         lda $03,X
         adc $01,X
         _6502_STA_ZPG $03,X
LBL123:
         dey
         bne LBL124
         rts
;
;
;
IL__FV:
         jsr LBL097                 ; Entry point for TBIL FV
         _6502_TAX
         lda $00,X
         ldy $01,X
         dec $C1
         ldx $C1
         sty $00,X
         jmp LBL029
IL__SV:
         _6502_LDX_IMM $7D                   ; Entry point for TBIL SV
         jsr LBL048
         lda $01,X
         _6502_PHA
         lda $00,X
         _6502_PHA
         jsr LBL097
         _6502_TAX
         pla
         _6502_STA_ZPG $00,X
         pla
         _6502_STA_ZPG $01,X
         rts
IL__RT:
         jsr LBL063
         lda $BC
         _6502_STA_ZPG $2A
         lda $BD
         _6502_STA_ZPG $2B
         rts
;
;
;
IL__SB:
         _6502_LDX_IMM $2C                   ; Entry point for TBIL SB
         bne LBL125
IL__RB:
         _6502_LDX_IMM $2E                   ; Entry point for TBIL RB
LBL125:
         lda $00,X
         _6502_CMP_IMM $80
         _6502_BCS_ABS LBL098
         lda $01,X
         bne LBL098
         lda $2C
         _6502_STA_ZPG $2E
         lda $2D
         _6502_STA_ZPG $2F
         rts
;
;
;
LBL098:
         lda $2C
         ldy $2E
         sty $2C
         _6502_STA_ZPG $2E
         lda $2D
         ldy $2F
         sty $2D
         _6502_STA_ZPG $2F
         _6502_LDY_IMM $00
         rts
;
;
;
IL__GS:
         lda $28                    ; Entry point for TBIL GS
         _6502_STA_ZPG $BC
         lda $29
         _6502_STA_ZPG $BD
         jsr LBL126
         lda $C6
         _6502_STA_ZPG $26
         lda $C7
LBL064:
         _6502_STA_ZPG $27
LBL129:
         rts
;
;
;
LBL063:
         lda ($C6),Y
         _6502_STA_ZPG $BC
         jsr LBL127
         lda ($C6),Y
         _6502_STA_ZPG $BD
LBL127:
         inc $C6
         bne LBL128
         inc $C7
LBL128:
         lda $22
         cmp $C6
         lda $23
         sbc $C7
         _6502_BCS_ABS LBL129
         jmp LBL015
IL__US:
         jsr LBL130
         _6502_STA_ZPG $BC
         _6502_TYA
         jmp LBL131
LBL130:
         jsr IL__SP
         lda $BC
         _6502_STA_ZPG $B6
         jsr IL__SP
         lda $BD
         _6502_STA_ZPG $B7
         ldy $BC
         jsr IL__SP
         ldx $B7
         lda $B6
         clc
         jmp ($00BC)
IL__LN:
         jsr IL__LB                 ; Entry point for TBIL LN
IL__LB:
         jsr LBL004                 ; Entry point for TBIL LB - Go read a byte from the IL table
         jmp LBL029
LBL085:
         stx $2D
         cpx #$00
         rts
;
;
;
ILRES2:
         _6502_LDY_IMM $02                   ; These two entry points are for code that
ILRES1:
         sty $BC                    ;  does not seem to get called.  Need more research.
         _6502_LDY_IMM $29
         sty $BD
         _6502_LDY_IMM $00
         lda ($BC),Y
         _6502_CMP_IMM $08
         bne LBL133
         jmp LBL117
LBL133:
         rts
;
;
; Subroutine to decide which pad characters to print
;
LBL089:
         jsr OUT_V                  ; Entry point with a character to print first
LBL087:
         _6502_LDA_IMM $FF                   ; Normal entry point - Set pad to $FF
         bit PCC                    ; Check if the pad flag is on
         bmi LBL134                 ; Skip it if not
         _6502_LDA_IMM $00                   ; set pad to $00
LBL134:
         jmp OUT_V                  ; Go print it


;
; TBIL program table
;
ILTBL:
          db $24, $3E, $91, $27, $10, $E1, $59, $C5, $2A, $56, $10, $11, $2C, $8B, $4C
          db $45, $D4, $A0, $80, $BD, $30, $BC, $E0, $13, $1D, $94, $47, $CF, $88, $54
          db $CF, $30, $BC, $E0, $10, $11, $16, $80, $53, $55, $C2, $30, $BC, $E0, $14
          db $16, $90, $50, $D2, $83, $49, $4E, $D4, $E5, $71, $88, $BB, $E1, $1D, $8F
          db $A2, $21, $58, $6F, $83, $AC, $22, $55, $83, $BA, $24, $93, $E0, $23, $1D
          db $30, $BC, $20, $48, $91, $49, $C6, $30, $BC, $31, $34, $30, $BC, $84, $54
          db $48, $45, $CE, $1C, $1D, $38, $0D, $9A, $49, $4E, $50, $55, $D4, $A0, $10
          db $E7, $24, $3F, $20, $91, $27, $E1, $59, $81, $AC, $30, $BC, $13, $11, $82
          db $AC, $4D, $E0, $1D, $89, $52, $45, $54, $55, $52, $CE, $E0, $15, $1D, $85
          db $45, $4E, $C4, $E0, $2D, $98, $4C, $49, $53, $D4, $EC, $24, $00, $00, $00
          db $00, $0A, $80, $1F, $24, $93, $23, $1D, $30, $BC, $E1, $50, $80, $AC, $59
          db $85, $52, $55, $CE, $38, $0A, $86, $43, $4C, $45, $41, $D2, $2B, $84, $52
          db $45, $CD, $1D, $A0, $80, $BD, $38, $14, $85, $AD, $30, $D3, $17, $64, $81
          db $AB, $30, $D3, $85, $AB, $30, $D3, $18, $5A, $85, $AD, $30, $D3, $19, $54
          db $2F, $30, $E2, $85, $AA, $30, $E2, $1A, $5A, $85, $AF, $30, $E2, $1B, $54
          db $2F, $98, $52, $4E, $C4, $0A, $80, $80, $12, $0A, $09, $29, $1A, $0A, $1A
          db $85, $18, $13, $09, $80, $12, $01, $0B, $31, $30, $61, $72, $0B, $04, $02
          db $03, $05, $03, $1B, $1A, $19, $0B, $09, $06, $0A, $00, $00, $1C, $17, $2F
          db $8F, $55, $53, $D2, $80, $A8, $30, $BC, $31, $2A, $31, $2A, $80, $A9, $2E
          db $2F, $A2, $12, $2F, $C1, $2F, $80, $A8, $30, $BC, $80, $A9, $2F, $83, $AC
          db $38, $BC, $0B, $2F, $80, $A8, $52, $2F, $84, $BD, $09, $02, $2F, $8E, $BC
          db $84, $BD, $09, $93, $2F, $84, $BE, $09, $05, $2F, $09, $91, $2F, $80, $BE
          db $84, $BD, $09, $06, $2F, $84, $BC, $09, $95, $2F, $09, $04, $2F, $00, $00
          db $00
;
; End of Tiny Basic



; Start of the OMS-03 Monitor - under contruction.....
;
; Set some symbols
;
ACIAregs:
         = $F000                    ; Base address of 6850
ACIAdata:
         = ACIAregs+$01             ; 6850 registers


         .ORG  $F800

;
; Begin base system initialization
;
FBLK:
         LDA #$03                   ; Reset the ACIA
         STA ACIAregs               ; Do the reset
         LDA #$11                   ; 8 bits, 2 stop, divide by 16
         STA ACIAregs               ; Do the configuration
         jsr CLRSC                  ; Go clear the screen
         _6502_LDX_IMM $00                   ; Offset for welcome message and prompt
         jsr SNDMSG                 ; Go print it
ST_LP:
         jsr RCCHR                  ; Go get a character from the console
         _6502_CMP_IMM $43                   ; Check for 'C'
         bne IS_WRM                 ; If not branch to next check
         jmp COLD_S                 ; Otherwise cold-start Tiny Basic
IS_WRM:
         _6502_CMP_IMM $57                   ; Check for 'W'
         bne PRMPT                  ; If not, branch to re-prompt them
         jmp WARM_S                 ; Otherwise warm-start Tiny Basic
PRMPT:
         LDX #$51                   ; Offset of prompt in message block
         jsr SNDMSG                 ; Go print the prompt
         jmp ST_LP                  ; Go get the response

;
; The message block. It terminates with an FF.
;
MBLK:
               db  "Open License Monitor, by Bill O'Neill V0.2.2"
          db  $0D, $0A, $0A
          db  "TINY BASIC - Copyright, Tom Pitman"
          db  $0D, $0A, $0A
          db  "Boot (C/W)? "
          db  $07, $FF

;
; Begin BIOS subroutines
;

;
; Clear the screen
;
CLRSC:
         _6502_LDX_IMM $19                   ; Load X - we're going tp print 25 lines
         _6502_LDA_IMM $0D                   ; CR
         jsr SNDCHR                 ; Send a carriage return
         _6502_LDA_IMM $0A                   ; LF
CSLP:
         jsr SNDCHR                 ; Send the line feed
         dex                        ; One less to do
         bne CSLP                   ; Go send another untill we're done
         rts                        ; Return

;
; Print a message.
; This sub expects the message offset from MBLK in X.
;
SNDMSG:
         lda MBLK,X                 ; Get a character from the message block
         _6502_CMP_IMM $FF                   ; Look for end of message marker
         beq EXSM                   ; Finish up if it is
         jsr SNDCHR                 ; Otherwise send the character
         inx                        ; Increment the pointer
         jmp SNDMSG                 ; Go get next character
EXSM:
         rts                        ; Return

;
; Get a character from the ACIA
; Runs into SNDCHR to provide echo
;
RCCHR:
         lda ACIAregs               ; GET STATUS FROM ACIA
         lsr                        ; CHECK FOR A CHARACTER
         _6502_BCC_ABS RCCHR                  ; Loop until we get one
         LDA ACIAdata               ; GET CHARACTER

;
;Send a character to the ACIA
;
SNDCHR:
         _6502_STA_ZPG $FE                    ; Save the character to be printed
         _6502_CMP_IMM $FF                   ; Check for a bunch of characters
         BEQ EXSC                   ; that we don't want to print to
         _6502_CMP_IMM $00                   ; the terminal and discard them to
         beq EXSC                   ; clean up the output
         _6502_CMP_IMM $91                   ;
         beq EXSC                   ;
         _6502_CMP_IMM $93                   ;
         beq EXSC                   ;
         _6502_CMP_IMM $80                   ;
         beq EXSC                   ;
GETSTS:
         lda ACIAregs               ; GET ACIA STATUS
         lsr                        ; CHECK TO SEE IF TRANSMITER IS BUSY
         lsr                        ;
         _6502_BCC_ABS GETSTS                 ; IF STILL BUSY GO GET STATUS AGAIN
         lda $FE                    ; Restore the character
         STA ACIAdata               ; SEND CHARACTER
EXSC:
         rts                        ; Return

;
; Break routine
; Any keystroke will produce a break condition (carry set)
;
BREAK:
         _6502_STA_ZPG $FE                    ; Save A
         clc                        ; Clear carry
         lda ACIAregs               ; Read the ACAI status to
         lsr                        ; Check if there is character in the receiver
         BCC NO_CHR                 ; Finnish up if no character typed
         sec                        ; Set carry (break detected)
         lda ACIAdata               ; Get the character to reset ACIA status
NO_CHR:
         lda $FE                    ; Restore the saved A value
         rts                        ; Return

;
; Setup reset vector
;
         .ORG $FFFC                 ; Address of reset vector

         .DW  FBLK                  ; Reset vector
