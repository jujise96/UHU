.data
I: .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
.text
.start:
ADDI R1, R0, I
ADDI R2, R1, #4
ADDI R3, R2, #4
ADDI R8, R0, #8
bucle:
LW R4, 0(R3)
LW R5, 0(R2)
LW R6, 0(R1)
ADD R4, R5, R6
SW 0(R3), R4
ADDI R1, R1, #4
ADDI R2, R2, #4
ADDI R3, R3, #4
SUBI R8, R8, #1
BNEZ R8,bucle
NOP
trap #0