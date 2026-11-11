.data
I: .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
.text
.start:
ADDI R1, R0, I
ADDI R2, R1, #4
ADDI R3, R2, #4

;Iteracion 0
LW R4, 0(R3)
LW R5, 0(R2)
LW R6, 0(R1)
ADD R4, R5, R6
SW 0(R3), R4
ADDI R1, R1, #4
ADDI R2, R2, #4
ADDI R3, R3, #4
NOP

;Iteracion 1
LW R4, 0(R3)
LW R5, 0(R2)
LW R6, 0(R1)
ADD R4, R5, R6
SW 0(R3), R4
ADDI R1, R1, #4
ADDI R2, R2, #4
ADDI R3, R3, #4
NOP

;Iteracion 2
LW R4, 0(R3)
LW R5, 0(R2)
LW R6, 0(R1)
ADD R4, R5, R6
SW 0(R3), R4
ADDI R1, R1, #4
ADDI R2, R2, #4
ADDI R3, R3, #4
NOP

;Iteracion 3
LW R4, 0(R3)
LW R5, 0(R2)
LW R6, 0(R1)
ADD R4, R5, R6
SW 0(R3), R4
ADDI R1, R1, #4
ADDI R2, R2, #4
ADDI R3, R3, #4
NOP

;Iteracion 4
LW R4, 0(R3)
LW R5, 0(R2)
LW R6, 0(R1)
ADD R4, R5, R6
SW 0(R3), R4
ADDI R1, R1, #4
ADDI R2, R2, #4
ADDI R3, R3, #4
NOP

;Iteracion 5
LW R4, 0(R3)
LW R5, 0(R2)
LW R6, 0(R1)
ADD R4, R5, R6
SW 0(R3), R4
ADDI R1, R1, #4
ADDI R2, R2, #4
ADDI R3, R3, #4
NOP

;Iteracion 6
LW R4, 0(R3)
LW R5, 0(R2)
LW R6, 0(R1)
ADD R4, R5, R6
SW 0(R3), R4
ADDI R1, R1, #4
ADDI R2, R2, #4
ADDI R3, R3, #4
NOP

;Iteracion 7
LW R4, 0(R3)
LW R5, 0(R2)
LW R6, 0(R1)
ADD R4, R5, R6
SW 0(R3), R4
ADDI R1, R1, #4
ADDI R2, R2, #4
ADDI R3, R3, #4
NOP

;Iteracion 8
LW R4, 0(R3)
LW R5, 0(R2)
LW R6, 0(R1)
ADD R4, R5, R6
SW 0(R3), R4
ADDI R1, R1, #4
ADDI R2, R2, #4
ADDI R3, R3, #4
NOP

;Iteracion 9
LW R4, 0(R3)
LW R5, 0(R2)
LW R6, 0(R1)
ADD R4, R5, R6
SW 0(R3), R4
ADDI R1, R1, #4
ADDI R2, R2, #4
ADDI R3, R3, #4
NOP
trap #0
