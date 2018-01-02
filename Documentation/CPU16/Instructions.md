# CPU16 Opcodes

# Add

`adc <p, q>`

Description Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $09  | word  | r : p | r : q | ` `
| $49  | byte  | r : p | r : q | ` `
| $89  | word  | r : p | $FFFFu : q | ` `
| $C9  | byte  | r : p | $FFu : q | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Add

`add <p, q>`

Add two unsigned values together and place the result the `p` register.
`p = p + q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $07  | word  | r : p | r : q | ` `
| $47  | byte  | r : p | r : q | ` `
| $87  | word  | r : p | $FFFFu : q | ` `
| $C7  | byte  | r : p | $FFu : q | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Add Quick

`adq <p, q>`

Add two unsigned values together and place the result the `p` register.
`p = p + q`
This is a quicker version of `add` but the range of the andem `q` can only be between $0 and $F.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $0A  | word  | r : p | $Fu : q | ` `
| $4A  | byte  | r : p | $Fu : q | ` `
| $8A  | word  | r : p | $Fs : q | ` `
| $CA  | byte  | r : p | $Fs : q | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Add Signed

`ads <p, q>`

Add two signed values together and place the result the `p` register.
`p = p + q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $08  | word  | r : p | r : q | ` `
| $48  | byte  | r : p | r : q | ` `
| $88  | word  | r : p | $FFFFs : q | ` `
| $C8  | byte  | r : p | $FFs : q | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# And

`and <p, q>`

Performs a logical And on p and q. `p = p ∧ q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $13  | word  | r : p | r : q | ` `
| $53  | byte  | r : p | r : q | ` `
| $93  | word  | r : p | $FFFFu : q | ` `
| $D3  | byte  | r : p | $FFu : q | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | 0 | * | 0

# Branch if Above or Equals (signed)

`bae <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $22  | none  | (PC + $FFFFs) : address |  : none | ` `
| $62  | none  | (PC + $FFs) : address |  : none | ` `

# Branch if Above Than (signed)

`bat <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $20  | none  | (PC + $FFFFs) : address |  : none | ` `
| $60  | none  | (PC + $FFs) : address |  : none | ` `

# Branch if Below or Equals (signed)

`bbe <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $A2  | none  | (PC + $FFFFs) : address |  : none | ` `
| $E2  | none  | (PC + $FFs) : address |  : none | ` `

# Branch if Below Than (signed)

`bbt <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $A0  | none  | (PC + $FFFFs) : address |  : none | ` `
| $E0  | none  | (PC + $FFs) : address |  : none | ` `

# Branch if EQuals

`beq <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $1E  | none  | (PC + $FFFFs) : address |  : none | ` `
| $5E  | none  | (PC + $FFs) : address |  : none | ` `

# Branch if Less than or Equals (unsigned)

`ble <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $A1  | none  | (PC + $FFFFs) : address |  : none | ` `
| $E1  | none  | (PC + $FFs) : address |  : none | ` `

# Branch if Less Than (unsigned)

`blt <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $9F  | none  | (PC + $FFFFs) : address |  : none | ` `
| $DF  | none  | (PC + $FFs) : address |  : none | ` `

# Branch if More than or Equals (unsigned)

`bme <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $21  | none  | (PC + $FFFFs) : address |  : none | ` `
| $61  | none  | (PC + $FFs) : address |  : none | ` `

# Branch if More Than (unsigned)

`bmt <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $1F  | none  | (PC + $FFFFs) : address |  : none | ` `
| $5F  | none  | (PC + $FFs) : address |  : none | ` `

# Branch if Not Equals

`bne <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $9E  | none  | (PC + $FFFFs) : address |  : none | ` `
| $DE  | none  | (PC + $FFs) : address |  : none | ` `

# Branch if Not Zero

`bnz <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $A3  | none  | (PC + $FFFFs) : address |  : none | ` `
| $E3  | none  | (PC + $FFs) : address |  : none | ` `

# BRanch Always

`bra <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $1A  | none  | (PC + r) : address |  : none | ` `
| $5A  | none  | (PC + $FFFFs) : address |  : none | ` `
| $9A  | none  | (PC + $FFs) : address |  : none | ` `

# BRanch if Carry

`brc <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $24  | none  | (PC + $FFFFs) : address |  : none | ` `
| $64  | none  | (PC + $FFs) : address |  : none | ` `

# BRanch if Negative

`brn <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $A5  | none  | (PC + $FFFFs) : address |  : none | ` `
| $E5  | none  | (PC + $FFs) : address |  : none | ` `

# BRanch if Overflow

`bro <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $A4  | none  | (PC + $FFFFs) : address |  : none | ` `
| $E4  | none  | (PC + $FFs) : address |  : none | ` `

# BRanch if Positive

`brp <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $25  | none  | (PC + $FFFFs) : address |  : none | ` `
| $65  | none  | (PC + $FFs) : address |  : none | ` `

# Branch if Zero

`bz <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $23  | none  | (PC + $FFFFs) : address |  : none | ` `
| $63  | none  | (PC + $FFs) : address |  : none | ` `

# Clear

`clr `

Sets the `p` to zero.



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $84  | word  | r : p |  : none | ` `
| $C4  | byte  | r : p |  : none | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| 0 | 0 | 1 | 0

# Compare

`cmp `

Compare two values, and set the NZVC registers based on their differences




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $1B  | word  | r : p | r : q | ` `
| $5B  | byte  | r : p | r : q | ` `
| $9B  | word  | r : p | $FFFFu : q | ` `
| $DB  | byte  | r : p | $FFu : q | ` `
| $1C  | word  | r : p | $Fu : q | ` `
| $5C  | byte  | r : p | $Fu : q | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Copy

`cpy `

Copy the value of `q` into `p`.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $04  | word  | r : p | r : q | ` `
| $44  | byte  | r : p | r : q | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | 0 | * | 0

# Decrease and Compare

`dcp `

Decrease p, and then compare it against another values, and set the NZVC registers based on their differences




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $1D  | word  | r : p | $FFFFu : q | ` `
| $5D  | byte  | r : p | $FFu : q | ` `
| $9D  | word  | r : p | r : q | ` `
| $DD  | byte  | r : p | r : q | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Instruction for div

`div `

Decription Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $11  | word  | r : p | r : q | ` `
| $51  | byte  | r : p | r : q | ` `
| $91  | word  | r : p | $FFFFu : q | ` `
| $D1  | byte  | r : p | $FFu : q | ` `

# Instruction for dvs

`dvs `

Decription Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $12  | word  | r : p | r : q | ` `
| $52  | byte  | r : p | r : q | ` `
| $92  | word  | r : p | $FFFFs : q | ` `
| $D2  | byte  | r : p | $FFs : q | ` `

# Leave protected mode

`ent `

Enter protected mode, and denying access to the opcodes; enter, io. The 'enter protection' interrupt is also called.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $67  | none  |  : none |  : none | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| 0 | 0 | 0 | 0

# Exchange

`exc `

Swap two values around




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $05  | word  | r : p | r : p | ` `
| $45  | byte  | r : q | r : q | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| 0 | 0 | 0 | 0

# IO

`io `

Set the IO pins to a given 2-bit value


Forbidden in Protected Mode!

#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $E7  | none  | $Fu : data |  : none | ` `

# Jump

`jmp `

Set the Program Counter to the given address




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $19  | none  | (r) : address |  : none | ` `
| $59  | none  | $FFFFu : address |  : none | ` `

# Jump Subroutine

`jsr `

Push `(Program Counter + 4)` to the PC Stack, and then to Set the PC the given address




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $99  | none  | (r) : address |  : none | ` `
| $D9  | none  | $FFFFu : address |  : none | ` `

# Load Memory into register

`l `

Load a value from memory and put it in a register




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $02  | word  | r : p | (r) : address | ` `
| $42  | word  | r : p | $FFFFu : address | ` `
| $82  | byte  | r : p | (r) : address | ` `
| $C2  | byte  | r : p | $FFFFu : address | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | 0 | * | 0

# Leave protected mode

`lve `

Leave protected mode, and allowing access to the opcodes; enter, io. The 'leave protection' interrupt is also called.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $A7  | none  |  : none |  : none | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| 0 | 0 | 0 | 0

# Instruction for mls

`mls `

Decription Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $10  | word  | r : p | r : q | ` `
| $50  | byte  | r : p | r : q | ` `
| $90  | word  | r : p | $FFFFs : q | ` `
| $D0  | byte  | r : p | $FFs : q | ` `

# Instruction for mul

`mul `

Decription Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $0F  | word  | r : p | r : q | ` `
| $4F  | byte  | r : p | r : q | ` `
| $8F  | word  | r : p | $FFFFu : q | ` `
| $CF  | byte  | r : p | $FFu : q | ` `

# Negate register

`neg `

Description Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $96  | word  | r : p |  : none | ` `
| $D6  | byte  | r : p |  : none | ` `

# Not

`not <p>`

Performs a logical Not on p. `p = ¬p`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $16  | word  | r : p |  : none | ` `
| $56  | byte  | r : p |  : none | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | 0 | * | 0

# Or

`or <p, q>`

Performs a logical Or on p and q. `p = p ∨ q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $14  | word  | r : p | r : q | ` `
| $54  | byte  | r : p | r : q | ` `
| $94  | word  | r : p | $FFFFu : q | ` `
| $D4  | byte  | r : p | $FFu : q | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | 0 | * | 0

# Pop value from Stack

`pop `

Decription Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $01  | word  | r : p |  : none | ` `
| $41  | byte  | r : p |  : none | ` `

# Push value to stack

`psh `

Decription Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $00  | word  | r : q |  : none | ` `
| $40  | byte  | r : q |  : none | ` `
| $80  | word  | $FFFFu : q |  : none | ` `
| $C0  | byte  | $FFu : q |  : none | ` `

# 

`ret `





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $DA  | none  |  : none |  : none | ` `

# Instruction for rol

`rol `

Decription Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $18  | word  | r : p | $Fu : shift | ` `
| $58  | byte  | r : b | $Fu : shift | ` `

# Instruction for ror

`ror `

Decription Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $98  | word  | r : p | $Fu : shift | ` `
| $D8  | byte  | r : p | $Fu : shift | ` `

# Instruction for rti

`rti `

Decription Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $27  | none  |  : none |  : none | ` `

# Store

`s <address, q>`

Store a value from a register and put it in a register




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $03  | word  | (r) : address | r : q | ` `
| $43  | word  | $FFFFu : address | r : q | ` `
| $83  | byte  | (r) : address | r : q | ` `
| $C3  | byte  | $FFFFu : address | r : q | ` `

# Subtract Signed

`sbc `

Description Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $0D  | word  | r : p | r : q | ` `
| $4D  | byte  | r : p | r : q | ` `
| $8D  | word  | r : p | $FFFFu : q | ` `
| $CD  | byte  | r : p | $FFu : q | ` `

# Subtract Signed

`sbq `

Description Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $0E  | word  | r : p | $Fu : q | ` `
| $4E  | byte  | r : p | $Fu : q | ` `
| $8E  | word  | r : p | $Fs : q | ` `
| $CE  | byte  | r : p | $Fs : q | ` `

# Subtract Signed

`sbs `

Description Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $0C  | word  | r : p | r : q | ` `
| $4C  | byte  | r : p | r : q | ` `
| $8C  | word  | r : p | $FFFFs : q | ` `
| $CC  | byte  | r : p | $FFs : q | ` `

# Shift Left

`shl <p, shift>`

Shifts the bits of the value `p` left by `shift` amount. For any overflowing bits, the C flag is set.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $17  | word  | r : p | $Fu : shift | ` `
| $57  | byte  | r : b | $Fu : shift | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
|   |   |   | *

# Shift Right

`shr <p, shift>`

Shifts the bits of the value `p` left by `shift` amount. For any underflowing bits, the C flag is set




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $97  | word  | r : p | $Fu : shift | ` `
| $D7  | byte  | r : p | $Fu : shift | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
|   |   |   | *

# Set Quick

`stq <p, q>`

Sets a value of a register to a value, the value can only be between $0 and $F in range. `p = q`.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $06  | word  | r : p | $Fu : q | ` `
| $46  | byte  | r : p | $Fu : q | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
|   |   | * |  

# Add

`sub `

Description Text



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $0B  | word  | r : p | r : q | ` `
| $4B  | byte  | r : p | r : q | ` `
| $8B  | word  | r : p | $FFFFu : q | ` `
| $CB  | byte  | r : p | $FFu : q | ` `

# Instruction for swp

`swp <p>`

Swaps the upper and lower halves of the value




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $85  | word  | r : p |  : none | ` `
| $C5  | byte  | r : q |  : none | ` `

# Transfer Program counter stack to Register

`tpr <p>`

Copies an the Program Counter Register to an all purpose register




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $A6  | none  | r : address |  : none | ` `

# Transfer Register to Program stack register

`trp <p>`

Copies an all purpose register to the Program stack register




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $E6  | none  | r : address |  : none | ` `

# Transfer Register to Stack

`trs <p>`

Copies an all purpose register to the stack register




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $66  | none  | r : address |  : none | ` `

# Transfer Stack to Register

`tsr <p>`

Copies the stack register to a given all purpose register




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $26  | none  | r : address |  : none | ` `

# Xor

`xor <p, q>`

Performs a logical Exclusive-Or on p and q. `p = p ⊕ q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $15  | word  | r : p | r : q | ` `
| $55  | byte  | r : p | r : q | ` `
| $95  | word  | r : p | $FFFFu : q | ` `
| $D5  | byte  | r : p | $FFu : q | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | 0 | * | 0

# Zero Compare

`zcp <p>`

Compares a value to zero.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|------|----------| --------------|---------------|---------
| $9C  | word  | r : p |  : none | ` `
| $DC  | byte  | r : p |  : none | ` `
#### Flags:

| N | V | Z | C
|---|---|---|---
|   |   | * |  

