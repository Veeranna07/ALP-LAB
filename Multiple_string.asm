ASSUME CS:CODE, DS:DATA
DATA SEGMENT
MSG DB "Geethanjali College of Engineering and Technology$"
MSG1 DB 0AH, "CSE-AIML$"
msg2 db 0AH, "Good morning$";
msg3 db 0ah, "Bye$";
DATA ENDS

CODE SEGMENT
START:
MOV AX,DATA
MOV DS,AX
MOV DX,OFFSET MSG

MOV AH,09H
INT 21H
LEA DX,MSG1
INT 21H
lea dx,msg2
int 21h
lea dx,msg3
int 21h
MOV AH,4CH
INT 21H
CODE ENDS
END START
