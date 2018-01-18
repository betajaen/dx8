use16

CPU16_OPERAND_A equ $0
CPU16_OPERAND_X equ $1
CPU16_OPERAND_Y equ $2
CPU16_OPERAND_Z equ $3
CPU16_OPERAND_W equ $4
CPU16_OPERAND_A_POSTFIX equ $5
CPU16_OPERAND_X_POSTFIX equ $6
CPU16_OPERAND_Y_POSTFIX equ $7
CPU16_OPERAND_Z_POSTFIX equ $8
CPU16_OPERAND_W_POSTFIX equ $9
CPU16_OPERAND_A_PREFIX equ $A
CPU16_OPERAND_X_PREFIX equ $B
CPU16_OPERAND_Y_PREFIX equ $C
CPU16_OPERAND_Z_PREFIX equ $D
CPU16_OPERAND_W_PREFIX equ $E
CPU16_OPERAND_SRC_SHIFT equ 4
CPU16_OPERAND_DST_SHIFT equ 0

macro _cpu16_operand_1 operand, shift {
  local status
  define status 0

  match =a+, operand  \{
    db (CPU16_OPERAND_A_POSTFIX shl shift)
    define status 1
  \}
  match -=a, operand  \{
    db (CPU16_OPERAND_A_POSTFIX shl shift)
    define status 1
  \}
  match =a, operand  \{
    db (CPU16_OPERAND_A_PREFIX shl shift)
    define status 1
  \}

  match =x+, operand  \{
    db (CPU16_OPERAND_X_POSTFIX shl shift)
    define status 1
  \}
  match -=x, operand  \{
    db (CPU16_OPERAND_X_POSTFIX shl shift)
    define status 1
  \}
  match =x, operand  \{
    db (CPU16_OPERAND_X_PREFIX shl shift)
    define status 1
  \}

  match =y+, operand  \{
    db (CPU16_OPERAND_Y_POSTFIX shl shift)
    define status 1
  \}
  match -=y, operand  \{
    db (CPU16_OPERAND_Y_POSTFIX shl shift)
    define status 1
  \}
  match =y, operand  \{
    db (CPU16_OPERAND_Y_PREFIX shl shift)
    define status 1
  \}

  match =z+, operand  \{
    db (CPU16_OPERAND_Z_POSTFIX shl shift)
    define status 1
  \}
  match -=z, operand  \{
    db (CPU16_OPERAND_Z_POSTFIX shl shift)
    define status 1
  \}
  match =z, operand  \{
    db (CPU16_OPERAND_Z_PREFIX shl shift)
    define status 1
  \}

  match =w+, operand  \{
    db (CPU16_OPERAND_W_POSTFIX shl shift)
    define status 1
  \}
  match -=w, operand  \{
    db (CPU16_OPERAND_W_POSTFIX shl shift)
    define status 1
  \}
  match =w, operand  \{
    db (CPU16_OPERAND_W_PREFIX shl shift)
    define status 1
  \}

  match =0 any , status param \{
     err
  \}
}

macro push r* {
  db $0
  _cpu16_operand_1 r, CPU16_OPERAND_SRC_SHIFT
}

macro pop r* {
  db $1
  _cpu16_operand_1 r, CPU16_OPERAND_DST_SHIFT
}

push a
push a+
push -a
push w+
