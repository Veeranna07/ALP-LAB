ASSUME CS:CODE,DS:DATA
DATA SEGMENT
             LIST DB 2H,3H,5H,8H
             E DB ?
             COUNT DB 4H
             M DB 10,"ENTER ELEMENT $"
             MSG DB 10," ELEMENT FOUND $"
             MSG1 DB 10,"ELEMENT NOT FOUND $"
DATA ENDS

CODE SEGMENT
START:
         MOV AX,DATA
         MOV DS,AX
         LEA DX,M
         MOV AH,09H
         INT 21H
         MOV AH,01H
         INT 21H

          SUB AL,30H
          MOV E,AL
          MOV SI, OFFSET LIST
          MOV CL,COUNT
          MOV AL,E

FIRST:
         CMP AL,[SI]
         JE NEXT
         INC SI
         LOOP FIRST
         LEA DX,MSG1
         MOV AH,09H
         INT 21H
         MOV AH,4CH
         INT 21H

NEXT:
        LEA DX,MSG
        MOV AH,09H
        INT 21H
        MOV AH,4CH
        INT 21H

CODE ENDS
END START