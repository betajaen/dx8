
;
; DX8 Software Developer Kit
;
; CPU Instruction Macros for Flat Assembler
;
;

; push.w r
; push.w #$FFFF
macro push.w [r1] {
  local status
  define status 0


      match BEGIN
    db $0
  db r
    define status 1
    match END
      match BEGIN
    db $80
  db 0
  dw word
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; pop.w r
macro pop.w r {
  db $1
  db r
}

; move.w r1, (r2)
; move.w (r1), r2
; move.w r1, r2
; move.w r, #$FFFF
; move.w (r1), (r2)
; move.w r1, $FFFF
; move.w $FFFF, r2
; move.w $FFFF, (r2)
; move.w (r1), $FFFF
macro move.w {
  local status
  define status 0


      match BEGIN
    db $2
    define status 1
    match END
      match BEGIN
    db $3
    define status 1
    match END
      match BEGIN
    db $4
    define status 1
    match END
      match BEGIN
    db $5
    define status 1
    match END
      match BEGIN
    db $6
    define status 1
    match END
      match BEGIN
    db $42
    define status 1
    match END
      match BEGIN
    db $43
  db 0
  dw address
    define status 1
    match END
      match BEGIN
    db $46
  db 0
  dw address
    define status 1
    match END
      match BEGIN
    db $86
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; move.b z, #$FF
; move.b r1, r2
; move.b a, #$FF
; move.b w, #$FF
; move.b r1, (r2)
; move.b (r1), r2
; move.b x, #$FF
; move.b r1, $FFFF
; move.b $FFFF, r2
; move.b y, #$FF
macro move.b {
  local status
  define status 0


      match BEGIN
    db $7
    define status 1
    match END
      match BEGIN
    db $44
    define status 1
    match END
      match BEGIN
    db $45
    define status 1
    match END
      match BEGIN
    db $47
    define status 1
    match END
      match BEGIN
    db $82
    define status 1
    match END
      match BEGIN
    db $83
    define status 1
    match END
      match BEGIN
    db $85
    define status 1
    match END
      match BEGIN
    db $c2
    define status 1
    match END
      match BEGIN
    db $c3
  db 0
  dw address
    define status 1
    match END
      match BEGIN
    db $c5
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; add.w r1, r2
macro add.w dst, src {
  db $8
}

; sub.w r1, r2
; sub.w r1, #$FFFF
macro sub.w {
  local status
  define status 0


      match BEGIN
    db $9
    define status 1
    match END
      match BEGIN
    db $89
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; adc.w r1, r2
; adc.w r1, #$FFFF
macro adc.w {
  local status
  define status 0


      match BEGIN
    db $a
    define status 1
    match END
      match BEGIN
    db $8a
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; sbc.w r1, r2
; sbc.w r1, #$FFFF
macro sbc.w {
  local status
  define status 0


      match BEGIN
    db $b
    define status 1
    match END
      match BEGIN
    db $8b
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; adq.w a, #$FF
; adq.w w, #$FF
; adq.w x, #$FF
; adq.w y, #$FF
; adq.w z, #$FF
macro adq.w {
  local status
  define status 0


      match BEGIN
    db $c
    define status 1
    match END
      match BEGIN
    db $d
    define status 1
    match END
      match BEGIN
    db $4c
    define status 1
    match END
      match BEGIN
    db $8c
    define status 1
    match END
      match BEGIN
    db $cc
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; sbq z, #$FF
; sbq a, #$FF
; sbq w, #$FF
; sbq x, #$FF
; sbq y, #$FF
macro sbq {
  local status
  define status 0


      match BEGIN
    db $e
    define status 1
    match END
      match BEGIN
    db $4d
    define status 1
    match END
      match BEGIN
    db $4e
    define status 1
    match END
      match BEGIN
    db $8d
    define status 1
    match END
      match BEGIN
    db $cd
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; if
macro if {
  db $f
}

; mul r1, r2
; mul r1, #$FFFF
macro mul {
  local status
  define status 0


      match BEGIN
    db $10
    define status 1
    match END
      match BEGIN
    db $90
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; div r1, r2
; div r1, #$FFFF
macro div {
  local status
  define status 0


      match BEGIN
    db $11
    define status 1
    match END
      match BEGIN
    db $91
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; mod r1, r2
; mod r1, #$FFFF
macro mod {
  local status
  define status 0


      match BEGIN
    db $12
    define status 1
    match END
      match BEGIN
    db $92
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; neg r
macro neg r {
  db $13
  db r
}

; abcd r1, r2
; abcd r1, #$FFFF
macro abcd {
  local status
  define status 0


      match BEGIN
    db $14
    define status 1
    match END
      match BEGIN
    db $54
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; sbcd r1, r2
; sbcd r1, #$FFFF
macro sbcd {
  local status
  define status 0


      match BEGIN
    db $15
    define status 1
    match END
      match BEGIN
    db $55
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; nbcd r
macro nbcd r {
  db $16
  db r
}

; i17
macro i17 {
  db $17
}

; and r1, r2
; and r1, #$FFFF
macro and {
  local status
  define status 0


      match BEGIN
    db $18
    define status 1
    match END
      match BEGIN
    db $98
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; or r1, r2
; or r1, #$FFFF
macro or {
  local status
  define status 0


      match BEGIN
    db $19
    define status 1
    match END
      match BEGIN
    db $99
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; xor r1, r2
; xor r1, #$FFFF
macro xor {
  local status
  define status 0


      match BEGIN
    db $1a
    define status 1
    match END
      match BEGIN
    db $9a
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; not r
macro not r {
  db $1b
  db r
}

; shl r, #$0F
macro shl dst, nibble {
  db $1c
}

; shr r, #$0F
macro shr dst, nibble {
  db $1d
}

; rol r, #$0F
macro rol dst, nibble {
  db $1e
}

; ror r, #$0F
macro ror dst, nibble {
  db $1f
}

; jmp r
; jmp $FFFF
macro jmp [r1] {
  local status
  define status 0


      match BEGIN
    db $20
  db r
    define status 1
    match END
      match BEGIN
    db $60
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; jta $FFFF, r
macro jta address, src {
  db $21
  db 0
  dw address
}

; jsr r
; jsr $FFFF
macro jsr [r1] {
  local status
  define status 0


      match BEGIN
    db $22
  db r
    define status 1
    match END
      match BEGIN
    db $62
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; ret
macro ret {
  db $23
}

; cmp r1, r2
; cmp r1, #$FFFF
macro cmp {
  local status
  define status 0


      match BEGIN
    db $24
    define status 1
    match END
      match BEGIN
    db $a4
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; cmpb r1, #$0F
macro cmpb dst, nibble {
  db $25
}

; scf.or #$0F
macro scf.or nibble {
  db $26
}

; i27
macro i27 {
  db $27
}

; bra r
; bra $FFFF
macro bra [r1] {
  local status
  define status 0


      match BEGIN
    db $28
  db r
    define status 1
    match END
      match BEGIN
    db $a8
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; i29
macro i29 {
  db $29
}

; bsr r
; bsr $FFFF
macro bsr [r1] {
  local status
  define status 0


      match BEGIN
    db $2a
  db r
    define status 1
    match END
      match BEGIN
    db $aa
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; i2b
macro i2b {
  db $2b
}

; i2c
macro i2c {
  db $2c
}

; i2d
macro i2d {
  db $2d
}

; i2e
macro i2e {
  db $2e
}

; i2f
macro i2f {
  db $2f
}

; i30
macro i30 {
  db $30
}

; i31
macro i31 {
  db $31
}

; i32
macro i32 {
  db $32
}

; i33
macro i33 {
  db $33
}

; i34
macro i34 {
  db $34
}

; i35
macro i35 {
  db $35
}

; i36
macro i36 {
  db $36
}

; i37
macro i37 {
  db $37
}

; i38
macro i38 {
  db $38
}

; i39
macro i39 {
  db $39
}

; i3a
macro i3a {
  db $3a
}

; i3b
macro i3b {
  db $3b
}

; io #$0F
macro io nibble {
  db $3c
}

; int.set #$FF
macro int.set byte {
  db $3d
}

; rti
macro rti {
  db $3e
}

; brk.r #$01
macro brk.r r {
  db $3f
  db bit
}

; push.b r
; push.b #$FF
macro push.b [r1] {
  local status
  define status 0


      match BEGIN
    db $40
  db r
    define status 1
    match END
      match BEGIN
    db $c0
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; pop.b r
macro pop.b r {
  db $41
  db r
}

; add.b r1, r2
; add.b r1, #$FF
macro add.b {
  local status
  define status 0


      match BEGIN
    db $48
    define status 1
    match END
      match BEGIN
    db $c8
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; sub.b r1, r2
; sub.b r1, #$FF
macro sub.b {
  local status
  define status 0


      match BEGIN
    db $49
    define status 1
    match END
      match BEGIN
    db $c9
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; adc.b r1, r2
; adc.b r1, #$FF
macro adc.b {
  local status
  define status 0


      match BEGIN
    db $4a
    define status 1
    match END
      match BEGIN
    db $ca
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; sbc.b r1, r2
; sbc.b r1, #$FF
macro sbc.b {
  local status
  define status 0


      match BEGIN
    db $4b
    define status 1
    match END
      match BEGIN
    db $cb
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; i4f
macro i4f {
  db $4f
}

; mul.b r1, r2
; mul.b r1, #$FF
macro mul.b {
  local status
  define status 0


      match BEGIN
    db $50
    define status 1
    match END
      match BEGIN
    db $d0
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; div.b r1, r2
; div.b r1, #$FF
macro div.b {
  local status
  define status 0


      match BEGIN
    db $51
    define status 1
    match END
      match BEGIN
    db $d1
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; mod.b r1, r2
; mod.b r1, #$FF
macro mod.b {
  local status
  define status 0


      match BEGIN
    db $52
    define status 1
    match END
      match BEGIN
    db $d2
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; neg.b r
macro neg.b r {
  db $53
  db r
}

; i56
macro i56 {
  db $56
}

; i57
macro i57 {
  db $57
}

; and.b r1, r2
; and.b r1, #$FF
macro and.b {
  local status
  define status 0


      match BEGIN
    db $58
    define status 1
    match END
      match BEGIN
    db $d8
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; or.b r1, r2
; or.b r1, #$FF
macro or.b {
  local status
  define status 0


      match BEGIN
    db $59
    define status 1
    match END
      match BEGIN
    db $d9
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; xor.b r1, r2
; xor.b r1, #$FF
macro xor.b {
  local status
  define status 0


      match BEGIN
    db $5a
    define status 1
    match END
      match BEGIN
    db $da
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; not.b r
macro not.b r {
  db $5b
  db r
}

; shl.b r, #$0F
macro shl.b dst, nibble {
  db $5c
}

; shr.b r, #$0F
macro shr.b dst, nibble {
  db $5d
}

; rol.b r, #$0F
macro rol.b dst, nibble {
  db $5e
}

; ror.b r, #$0F
macro ror.b dst, nibble {
  db $5f
}

; i61
macro i61 {
  db $61
}

; i63
macro i63 {
  db $63
}

; cmp.b r1, r2
; cmp.b r1, #$FF
macro cmp.b {
  local status
  define status 0


      match BEGIN
    db $64
    define status 1
    match END
      match BEGIN
    db $e4
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; i65
macro i65 {
  db $65
}

; scf.and #$0F
macro scf.and nibble {
  db $66
}

; i67
macro i67 {
  db $67
}

; bra.b $FF
macro bra.b small_address {
  db $68
}

; i69
macro i69 {
  db $69
}

; bsr.b $FF
macro bsr.b small_address {
  db $6a
}

; i6b
macro i6b {
  db $6b
}

; beq $FF
; beq $FFFF
macro beq [r1] {
  local status
  define status 0


      match BEGIN
    db $6c
    define status 1
    match END
      match BEGIN
    db $ac
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; bne $FF
; bne $FFFF
macro bne [r1] {
  local status
  define status 0


      match BEGIN
    db $6d
    define status 1
    match END
      match BEGIN
    db $ad
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; bro $FF
; bro $FFFF
macro bro [r1] {
  local status
  define status 0


      match BEGIN
    db $6e
    define status 1
    match END
      match BEGIN
    db $ae
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; brc $FF
; brc $FFFF
macro brc [r1] {
  local status
  define status 0


      match BEGIN
    db $6f
    define status 1
    match END
      match BEGIN
    db $af
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; blt $FF
; blt $FFFF
macro blt [r1] {
  local status
  define status 0


      match BEGIN
    db $70
    define status 1
    match END
      match BEGIN
    db $b0
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; bgt $FF
; bgt $FFFF
macro bgt [r1] {
  local status
  define status 0


      match BEGIN
    db $71
    define status 1
    match END
      match BEGIN
    db $b1
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; ble $FF
; ble $FF
; ble $FFFF
; ble $FFFF
macro ble [r1] {
  local status
  define status 0


      match BEGIN
    db $72
    define status 1
    match END
      match BEGIN
    db $77
    define status 1
    match END
      match BEGIN
    db $b2
  db 0
  dw address
    define status 1
    match END
      match BEGIN
    db $b7
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; bge $FF
; bge $FFFF
macro bge [r1] {
  local status
  define status 0


      match BEGIN
    db $73
    define status 1
    match END
      match BEGIN
    db $b3
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; brm $FF
; brm $FFFF
macro brm [r1] {
  local status
  define status 0


      match BEGIN
    db $74
    define status 1
    match END
      match BEGIN
    db $b4
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; brl $FF
; brl $FFFF
macro brl [r1] {
  local status
  define status 0


      match BEGIN
    db $75
    define status 1
    match END
      match BEGIN
    db $b5
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; bme $FF
; bme $FFFF
macro bme [r1] {
  local status
  define status 0


      match BEGIN
    db $76
    define status 1
    match END
      match BEGIN
    db $b6
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; brz $FF
; brz $FFFF
macro brz [r1] {
  local status
  define status 0


      match BEGIN
    db $78
    define status 1
    match END
      match BEGIN
    db $b8
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; bnz $FF
; bnz $FFFF
macro bnz [r1] {
  local status
  define status 0


      match BEGIN
    db $79
    define status 1
    match END
      match BEGIN
    db $b9
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; brp $FF
; brp $FFFF
macro brp [r1] {
  local status
  define status 0


      match BEGIN
    db $7a
    define status 1
    match END
      match BEGIN
    db $ba
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; brn $FF
; brn $FFFF
macro brn [r1] {
  local status
  define status 0


      match BEGIN
    db $7b
    define status 1
    match END
      match BEGIN
    db $bb
  db 0
  dw address
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; i7c
macro i7c {
  db $7c
}

; int.clear #$FF
macro int.clear byte {
  db $7d
}

; i7e
macro i7e {
  db $7e
}

; brk.m $FFFF
macro brk.m address {
  db $7f
  db 0
  dw address
}

; i81
macro i81 {
  db $81
}

; i84
macro i84 {
  db $84
}

; clr.w r
; clr.w r1, r2
macro clr.w {
  local status
  define status 0


      match BEGIN
    db $87
  db r
    define status 1
    match END
      match BEGIN
    db $c7
    define status 1
    match END
  
  match =0 any , status param \{
     err
  \}
}

; add r1, #$FFFF
macro add dst, word {
  db $88
}

; i8e
macro i8e {
  db $8e
}

; i8f
macro i8f {
  db $8f
}

; i93
macro i93 {
  db $93
}

; i94
macro i94 {
  db $94
}

; i95
macro i95 {
  db $95
}

; i96
macro i96 {
  db $96
}

; i97
macro i97 {
  db $97
}

; i9b
macro i9b {
  db $9b
}

; i9c
macro i9c {
  db $9c
}

; i9d
macro i9d {
  db $9d
}

; i9e
macro i9e {
  db $9e
}

; i9f
macro i9f {
  db $9f
}

; ia0
macro ia0 {
  db $a0
}

; ia1
macro ia1 {
  db $a1
}

; ia2
macro ia2 {
  db $a2
}

; ia3
macro ia3 {
  db $a3
}

; ia5
macro ia5 {
  db $a5
}

; ia6
macro ia6 {
  db $a6
}

; ia7
macro ia7 {
  db $a7
}

; ia9
macro ia9 {
  db $a9
}

; iab
macro iab {
  db $ab
}

; ibc
macro ibc {
  db $bc
}

; int #$FF
macro int byte {
  db $bd
}

; ibe
macro ibe {
  db $be
}

; brk.c #$FFFF
macro brk.c word {
  db $bf
  db 0
  dw word
}

; ic1
macro ic1 {
  db $c1
}

; ic4
macro ic4 {
  db $c4
}

; ic6
macro ic6 {
  db $c6
}

; ice
macro ice {
  db $ce
}

; icf
macro icf {
  db $cf
}

; id3
macro id3 {
  db $d3
}

; id4
macro id4 {
  db $d4
}

; id5
macro id5 {
  db $d5
}

; id6
macro id6 {
  db $d6
}

; id7
macro id7 {
  db $d7
}

; idb
macro idb {
  db $db
}

; idc
macro idc {
  db $dc
}

; idd
macro idd {
  db $dd
}

; ide
macro ide {
  db $de
}

; idf
macro idf {
  db $df
}

; ie0
macro ie0 {
  db $e0
}

; ie1
macro ie1 {
  db $e1
}

; ie2
macro ie2 {
  db $e2
}

; ie3
macro ie3 {
  db $e3
}

; ie5
macro ie5 {
  db $e5
}

; ie6
macro ie6 {
  db $e6
}

; ie7
macro ie7 {
  db $e7
}

; ie8
macro ie8 {
  db $e8
}

; ie9
macro ie9 {
  db $e9
}

; iea
macro iea {
  db $ea
}

; ieb
macro ieb {
  db $eb
}

; iec
macro iec {
  db $ec
}

; ied
macro ied {
  db $ed
}

; iee
macro iee {
  db $ee
}

; ief
macro ief {
  db $ef
}

; if0
macro if0 {
  db $f0
}

; if1
macro if1 {
  db $f1
}

; if2
macro if2 {
  db $f2
}

; if3
macro if3 {
  db $f3
}

; if4
macro if4 {
  db $f4
}

; if5
macro if5 {
  db $f5
}

; if6
macro if6 {
  db $f6
}

; if7
macro if7 {
  db $f7
}

; if8
macro if8 {
  db $f8
}

; if9
macro if9 {
  db $f9
}

; ifa
macro ifa {
  db $fa
}

; ifb
macro ifb {
  db $fb
}

; ifc
macro ifc {
  db $fc
}

; int.ivt $FFFF
macro int.ivt address {
  db $fd
  db 0
  dw address
}

; ife
macro ife {
  db $fe
}

; brk.halt
macro brk.halt {
  db $ff
}

