ASSUME CS:CODE, DS:DATA
DATA SEGMENT
MSGE DB "Geethanjali College Of Engineering and Technology$"
DATA ENDS

CODE SEGMENT
START:
MOV AX,DATA
MOV DS,AX

MOV DX,OFFSET MSGE
MOV AH,09H
INT 21H
MOV AH,4CH
INT 21H

CODE ENDS
END START

;OUTPUT
;"Geethanjali College Of Engineering and Technology"