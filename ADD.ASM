DATA SEGMENT
NUM1 DB 4
NUM2 DB 3
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:
       MOV AX,DATA
       MOV DS,AX
       MOV BL,NUM1
       MOV DL,NUM2
       ADD DL,BL
       ADD DL,48
       MOV AH,2
       INT 21H

       MOV AH,4CH
       INT 21H
       CODE ENDS
       END START
