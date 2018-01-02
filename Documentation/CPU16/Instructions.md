# CPU16 Opcodes

# Add

`add <p, q>`

Add two unsigned values together and place the result the `p` register.
`p = p + q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $07  | word  | r → p | r → q | `0000 0111 REG. REG. `
| $47  | byte  | r → p | r → q | `0100 0111 REG. REG. `
| $87  | word  | r → p | $FFFFu → q | `1000 0111 REG. 0000 0000 0000 0000 0000 `
| $C7  | byte  | r → p | $FFu → q | `1100 0111 REG. 0000 0000 0000 0000 0000 `
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
|:----:|:--------:| --------------|---------------|---------
| $09  | word  | r → p | $Fu → q | `0000 1001 REG.  `
| $49  | byte  | r → p | $Fu → q | `0100 1001 REG.  `
| $89  | word  | r → p | $Fs → q | `1000 1001 REG.  `
| $C9  | byte  | r → p | $Fs → q | `1100 1001 REG.  `
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
|:----:|:--------:| --------------|---------------|---------
| $08  | word  | r → p | r → q | `0000 1000 REG. REG. `
| $48  | byte  | r → p | r → q | `0100 1000 REG. REG. `
| $88  | word  | r → p | $FFFFs → q | `1000 1000 REG. 0000 0000 0000 0000 0000 `
| $C8  | byte  | r → p | $FFs → q | `1100 1000 REG. 0000 0000 0000 0000 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# And

`and <p, q>`

Performs a logical And on p and q. `p = p ∧ q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $11  | word  | r → p | r → q | `0001 0001 REG. REG. `
| $51  | byte  | r → p | r → q | `0101 0001 REG. REG. `
| $91  | word  | r → p | $FFFFu → q | `1001 0001 REG. 0000 0000 0000 0000 0000 `
| $D1  | byte  | r → p | $FFu → q | `1101 0001 REG. 0000 0000 0000 0000 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | 0 | * | 0

# Branch if Above or Equals (signed)

`bae <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $20  | none  | (PC + $FFFFs) → address |  → none | `0010 0000 0000 0000 0000 0000 0000 0000 `
| $60  | none  | (PC + $FFs) → address |  → none | `0110 0000 IMM. BYTE 0000 `

# Branch if Above Than (signed)

`bat <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $1E  | none  | (PC + $FFFFs) → address |  → none | `0001 1110 0000 0000 0000 0000 0000 0000 `
| $5E  | none  | (PC + $FFs) → address |  → none | `0101 1110 IMM. BYTE 0000 `

# Branch if Below or Equals (signed)

`bbe <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $A0  | none  | (PC + $FFFFs) → address |  → none | `1010 0000 0000 0000 0000 0000 0000 0000 `
| $E0  | none  | (PC + $FFs) → address |  → none | `1110 0000 IMM. BYTE 0000 `

# Branch if Below Than (signed)

`bbt <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $9E  | none  | (PC + $FFFFs) → address |  → none | `1001 1110 0000 0000 0000 0000 0000 0000 `
| $DE  | none  | (PC + $FFs) → address |  → none | `1101 1110 IMM. BYTE 0000 `

# Branch if EQuals

`beq <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $1C  | none  | (PC + $FFFFs) → address |  → none | `0001 1100 0000 0000 0000 0000 0000 0000 `
| $5C  | none  | (PC + $FFs) → address |  → none | `0101 1100 IMM. BYTE 0000 `

# Branch if Less than or Equals (unsigned)

`ble <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $9F  | none  | (PC + $FFFFs) → address |  → none | `1001 1111 0000 0000 0000 0000 0000 0000 `
| $DF  | none  | (PC + $FFs) → address |  → none | `1101 1111 IMM. BYTE 0000 `

# Branch if Less Than (unsigned)

`blt <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $9D  | none  | (PC + $FFFFs) → address |  → none | `1001 1101 0000 0000 0000 0000 0000 0000 `
| $DD  | none  | (PC + $FFs) → address |  → none | `1101 1101 IMM. BYTE 0000 `

# Branch if More than or Equals (unsigned)

`bme <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $1F  | none  | (PC + $FFFFs) → address |  → none | `0001 1111 0000 0000 0000 0000 0000 0000 `
| $5F  | none  | (PC + $FFs) → address |  → none | `0101 1111 IMM. BYTE 0000 `

# Branch if More Than (unsigned)

`bmt <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $1D  | none  | (PC + $FFFFs) → address |  → none | `0001 1101 0000 0000 0000 0000 0000 0000 `
| $5D  | none  | (PC + $FFs) → address |  → none | `0101 1101 IMM. BYTE 0000 `

# Branch if Not Equals

`bne <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $9C  | none  | (PC + $FFFFs) → address |  → none | `1001 1100 0000 0000 0000 0000 0000 0000 `
| $DC  | none  | (PC + $FFs) → address |  → none | `1101 1100 IMM. BYTE 0000 `

# Branch if Not Zero

`bnz <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $A1  | none  | (PC + $FFFFs) → address |  → none | `1010 0001 0000 0000 0000 0000 0000 0000 `
| $E1  | none  | (PC + $FFs) → address |  → none | `1110 0001 IMM. BYTE 0000 `

# BRanch Always

`bra <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $18  | none  | (PC + r) → address |  → none | `0001 1000 0000 `
| $58  | none  | (PC + $FFFFs) → address |  → none | `0101 1000 0000 0000 0000 0000 0000 0000 `
| $98  | none  | (PC + $FFs) → address |  → none | `1001 1000 IMM. BYTE 0000 `

# BRanch if Carry

`brc <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $22  | none  | (PC + $FFFFs) → address |  → none | `0010 0010 0000 0000 0000 0000 0000 0000 `
| $62  | none  | (PC + $FFs) → address |  → none | `0110 0010 IMM. BYTE 0000 `

# BRanch if Negative

`brn <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $A3  | none  | (PC + $FFFFs) → address |  → none | `1010 0011 0000 0000 0000 0000 0000 0000 `
| $E3  | none  | (PC + $FFs) → address |  → none | `1110 0011 IMM. BYTE 0000 `

# BRanch if Overflow

`bro <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $A2  | none  | (PC + $FFFFs) → address |  → none | `1010 0010 0000 0000 0000 0000 0000 0000 `
| $E2  | none  | (PC + $FFs) → address |  → none | `1110 0010 IMM. BYTE 0000 `

# BRanch if Positive

`brp <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $23  | none  | (PC + $FFFFs) → address |  → none | `0010 0011 0000 0000 0000 0000 0000 0000 `
| $63  | none  | (PC + $FFs) → address |  → none | `0110 0011 IMM. BYTE 0000 `

# Branch if Zero

`bz <address>`





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $21  | none  | (PC + $FFFFs) → address |  → none | `0010 0001 0000 0000 0000 0000 0000 0000 `
| $61  | none  | (PC + $FFs) → address |  → none | `0110 0001 IMM. BYTE 0000 `

# Clear

`clr `

Sets the `p` to zero.



#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $84  | word  | r → p |  → none | `1000 0100 REG. 0000 `
| $C4  | byte  | r → p |  → none | `1100 0100 REG. 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| 0 | 0 | 1 | 0

# Compare

`cmp `

Compare two values, and set the NZVC registers based on their differences




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $19  | word  | r → p | r → q | `0001 1001 REG. REG. `
| $59  | byte  | r → p | r → q | `0101 1001 REG. REG. `
| $99  | word  | r → p | $FFFFu → q | `1001 1001 REG. 0000 0000 0000 0000 0000 `
| $D9  | byte  | r → p | $FFu → q | `1101 1001 REG. 0000 0000 0000 0000 0000 `
| $1A  | word  | r → p | $Fu → q | `0001 1010 REG.  `
| $5A  | byte  | r → p | $Fu → q | `0101 1010 REG.  `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Copy

`cpy `

Copy the value of `q` into `p`.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $04  | word  | r → p | r → q | `0000 0100 REG. REG. `
| $44  | byte  | r → p | r → q | `0100 0100 REG. REG. `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | 0 | * | 0

# Decrease and Compare

`dcp `

Decrease p, and then compare it against another values, and set the NZVC registers based on their differences




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $1B  | word  | r → p | $FFFFu → q | `0001 1011 REG. 0000 0000 0000 0000 0000 `
| $5B  | byte  | r → p | $FFu → q | `0101 1011 REG. 0000 0000 0000 0000 0000 `
| $9B  | word  | r → p | r → q | `1001 1011 REG. REG. `
| $DB  | byte  | r → p | r → q | `1101 1011 REG. REG. `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Divide

`div <p, q>`

Divide two unsigned values together and place the result the `p` register.
`p = p / q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $0F  | word  | r → p | r → q | `0000 1111 REG. REG. `
| $4F  | byte  | r → p | r → q | `0100 1111 REG. REG. `
| $8F  | word  | r → p | $FFFFu → q | `1000 1111 REG. 0000 0000 0000 0000 0000 `
| $CF  | byte  | r → p | $FFu → q | `1100 1111 REG. 0000 0000 0000 0000 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Divide Signed

`dvs <p, q>`

Divide two signed values together and place the result the `p` register.
`p = p / q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $10  | word  | r → p | r → q | `0001 0000 REG. REG. `
| $50  | byte  | r → p | r → q | `0101 0000 REG. REG. `
| $90  | word  | r → p | $FFFFs → q | `1001 0000 REG. 0000 0000 0000 0000 0000 `
| $D0  | byte  | r → p | $FFs → q | `1101 0000 REG. 0000 0000 0000 0000 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Leave protected mode

`ent `

Enter protected mode, and denying access to the opcodes; enter, io. The 'enter protection' interrupt is also called.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $65  | none  |  → none |  → none | `0110 0101 0000 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| 0 | 0 | 0 | 0

# Exchange

`exc `

Swap two values around




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $05  | word  | r → p | r → p | `0000 0101 REG. REG. `
| $45  | byte  | r → q | r → q | `0100 0101 REG. REG. `
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
|:----:|:--------:| --------------|---------------|---------
| $E5  | none  | $Fu → data |  → none | `1110 0101  0000 `

# Jump

`jmp `

Set the Program Counter to the given address




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $17  | none  | (r) → address |  → none | `0001 0111 0000 0000 0000 0000 0000 0000 `
| $57  | none  | $FFFFu → address |  → none | `0101 0111 0000 0000 0000 0000 0000 0000 `

# Jump Subroutine

`jsr `

Push `(Program Counter + 4)` to the PC Stack, and then to Set the PC the given address




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $97  | none  | (r) → address |  → none | `1001 0111 0000 0000 0000 0000 0000 0000 `
| $D7  | none  | $FFFFu → address |  → none | `1101 0111 0000 0000 0000 0000 0000 0000 `

# Load Memory into register

`l `

Load a value from memory and put it in a register




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $02  | word  | r → p | (r) → address | `0000 0010 REG. 0000 0000 0000 0000 0000 `
| $42  | word  | r → p | $FFFFu → address | `0100 0010 REG. 0000 0000 0000 0000 0000 `
| $82  | byte  | r → p | (r) → address | `1000 0010 REG. 0000 0000 0000 0000 0000 `
| $C2  | byte  | r → p | $FFFFu → address | `1100 0010 REG. 0000 0000 0000 0000 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | 0 | * | 0

# Leave protected mode

`lve `

Leave protected mode, and allowing access to the opcodes; enter, io. The 'leave protection' interrupt is also called.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $A5  | none  |  → none |  → none | `1010 0101 0000 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| 0 | 0 | 0 | 0

# Multiply Signed

`mls <p, q>`

Multiply two signed values together and place the result the `p` register.
`p = p * q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $0E  | word  | r → p | r → q | `0000 1110 REG. REG. `
| $4E  | byte  | r → p | r → q | `0100 1110 REG. REG. `
| $8E  | word  | r → p | $FFFFs → q | `1000 1110 REG. 0000 0000 0000 0000 0000 `
| $CE  | byte  | r → p | $FFs → q | `1100 1110 REG. 0000 0000 0000 0000 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Multiply

`mul <p, q>`

Multiply two unsigned values together and place the result the `p` register.
`p = p * q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $0D  | word  | r → p | r → q | `0000 1101 REG. REG. `
| $4D  | byte  | r → p | r → q | `0100 1101 REG. REG. `
| $8D  | word  | r → p | $FFFFu → q | `1000 1101 REG. 0000 0000 0000 0000 0000 `
| $CD  | byte  | r → p | $FFu → q | `1100 1101 REG. 0000 0000 0000 0000 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Negate

`neg `

Negate value `p = -p`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $94  | word  | r → p |  → none | `1001 0100 REG. 0000 `
| $D4  | byte  | r → p |  → none | `1101 0100 REG. 0000 `

# Not

`not <p>`

Performs a logical Not on p. `p = ¬p`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $14  | word  | r → p |  → none | `0001 0100 REG. 0000 `
| $54  | byte  | r → p |  → none | `0101 0100 REG. 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | 0 | * | 0

# Or

`or <p, q>`

Performs a logical Or on p and q. `p = p ∨ q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $12  | word  | r → p | r → q | `0001 0010 REG. REG. `
| $52  | byte  | r → p | r → q | `0101 0010 REG. REG. `
| $92  | word  | r → p | $FFFFu → q | `1001 0010 REG. 0000 0000 0000 0000 0000 `
| $D2  | byte  | r → p | $FFu → q | `1101 0010 REG. 0000 0000 0000 0000 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | 0 | * | 0

# Pop

`pop `

Pop value from stack into a register




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $01  | word  | r → p |  → none | `0000 0001 REG. 0000 `
| $41  | byte  | r → p |  → none | `0100 0001 REG. 0000 `

# Push

`psh `

Push value to stack




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $00  | word  | r → q |  → none | `0000 0000 REG. 0000 `
| $40  | byte  | r → q |  → none | `0100 0000 REG. 0000 `
| $80  | word  | $FFFFu → q |  → none | `1000 0000 0000 0000 0000 0000 0000 0000 `
| $C0  | byte  | $FFu → q |  → none | `1100 0000 IMM. BYTE 0000 `

# 

`ret `





#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $D8  | none  |  → none |  → none | `1101 1000 0000 0000 `

# Roll Left

`rol `

Roll Left




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $16  | word  | r → p | $Fu → shift | `0001 0110 REG.  `
| $56  | byte  | r → b | $Fu → shift | `0101 0110 REG.  `

# Roll Right

`ror `

Roll Right




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $96  | word  | r → p | $Fu → shift | `1001 0110 REG.  `
| $D6  | byte  | r → p | $Fu → shift | `1101 0110 REG.  `

# Return from Interrupt

`rti `

Return from interrupt




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $25  | none  |  → none |  → none | `0010 0101 0000 0000 `

# Store

`s <address, q>`

Store a value from a register and put it in a register




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $03  | word  | (r) → address | r → q | `0000 0011 0000 REG. 0000 0000 0000 0000 `
| $43  | word  | $FFFFu → address | r → q | `0100 0011 0000 REG. 0000 0000 0000 0000 `
| $83  | byte  | (r) → address | r → q | `1000 0011 0000 REG. 0000 0000 0000 0000 `
| $C3  | byte  | $FFFFu → address | r → q | `1100 0011 0000 REG. 0000 0000 0000 0000 `

# Subtract Quick

`sbq <p, q>`

Subtract two unsigned values together and place the result the `p` register.
`p = p + q`
This is a quicker version of `add` but the range of the andem `q` can only be between $0 and $F.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $0C  | word  | r → p | $Fu → q | `0000 1100 REG.  `
| $4C  | byte  | r → p | $Fu → q | `0100 1100 REG.  `
| $8C  | word  | r → p | $Fs → q | `1000 1100 REG.  `
| $CC  | byte  | r → p | $Fs → q | `1100 1100 REG.  `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Subtract Signed

`sbs <p, q>`

Subtract two signed values together and place the result the `p` register.
`p = p - q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $0B  | word  | r → p | r → q | `0000 1011 REG. REG. `
| $4B  | byte  | r → p | r → q | `0100 1011 REG. REG. `
| $8B  | word  | r → p | $FFFFs → q | `1000 1011 REG. 0000 0000 0000 0000 0000 `
| $CB  | byte  | r → p | $FFs → q | `1100 1011 REG. 0000 0000 0000 0000 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Shift Left

`shl <p, shift>`

Shifts the bits of the value `p` left by `shift` amount. For any overflowing bits, the C flag is set.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $15  | word  | r → p | $Fu → shift | `0001 0101 REG.  `
| $55  | byte  | r → b | $Fu → shift | `0101 0101 REG.  `
#### Flags:

| N | V | Z | C
|---|---|---|---
|   |   |   | *

# Shift Right

`shr <p, shift>`

Shifts the bits of the value `p` left by `shift` amount. For any underflowing bits, the C flag is set




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $95  | word  | r → p | $Fu → shift | `1001 0101 REG.  `
| $D5  | byte  | r → p | $Fu → shift | `1101 0101 REG.  `
#### Flags:

| N | V | Z | C
|---|---|---|---
|   |   |   | *

# Set Quick

`stq <p, q>`

Sets a value of a register to a value, the value can only be between $0 and $F in range. `p = q`.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $06  | word  | r → p | $Fu → q | `0000 0110 REG.  `
| $46  | byte  | r → p | $Fu → q | `0100 0110 REG.  `
#### Flags:

| N | V | Z | C
|---|---|---|---
|   |   | * |  

# Subtract

`sub <p, q>`

Subtract two unsigned values together and place the result the `p` register.
`p = p - q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $0A  | word  | r → p | r → q | `0000 1010 REG. REG. `
| $4A  | byte  | r → p | r → q | `0100 1010 REG. REG. `
| $8A  | word  | r → p | $FFFFu → q | `1000 1010 REG. 0000 0000 0000 0000 0000 `
| $CA  | byte  | r → p | $FFu → q | `1100 1010 REG. 0000 0000 0000 0000 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | * | * | *

# Instruction for swp

`swp <p>`

Swaps the upper and lower halves of the value




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $85  | word  | r → p |  → none | `1000 0101 REG. 0000 `
| $C5  | byte  | r → q |  → none | `1100 0101 REG. 0000 `

# Transfer Program counter stack to Register

`tpr <p>`

Copies an the Program Counter Register to an all purpose register




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $A4  | none  | r → address |  → none | `1010 0100 REG. 0000 `

# Transfer Register to Program stack register

`trp <p>`

Copies an all purpose register to the Program stack register




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $E4  | none  | r → address |  → none | `1110 0100 REG. 0000 `

# Transfer Register to Stack

`trs <p>`

Copies an all purpose register to the stack register




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $64  | none  | r → address |  → none | `0110 0100 REG. 0000 `

# Transfer Stack to Register

`tsr <p>`

Copies the stack register to a given all purpose register




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $24  | none  | r → address |  → none | `0010 0100 REG. 0000 `

# Xor

`xor <p, q>`

Performs a logical Exclusive-Or on p and q. `p = p ⊕ q`




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $13  | word  | r → p | r → q | `0001 0011 REG. REG. `
| $53  | byte  | r → p | r → q | `0101 0011 REG. REG. `
| $93  | word  | r → p | $FFFFu → q | `1001 0011 REG. 0000 0000 0000 0000 0000 `
| $D3  | byte  | r → p | $FFu → q | `1101 0011 REG. 0000 0000 0000 0000 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
| * | 0 | * | 0

# Zero Compare

`zcp <p>`

Compares a value to zero.




#### Opcodes:
|Opcode| Type     | Operand 1     | Operand 2     | Encoding
|:----:|:--------:| --------------|---------------|---------
| $9A  | word  | r → p |  → none | `1001 1010 REG. 0000 `
| $DA  | byte  | r → p |  → none | `1101 1010 REG. 0000 `
#### Flags:

| N | V | Z | C
|---|---|---|---
|   |   | * |  

