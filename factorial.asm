ASSUME CS:CODE
CODE SEGMENT
START:
MOV CX,05H
MOV AX,01H
NEXT:
MUL CX
DEC CX
CMP CX,01H

MOV AH,4CH
MOV BL,AL
MOV AL,0H
INT 03H

CODE ENDS
END START
