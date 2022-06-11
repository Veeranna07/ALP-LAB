.MODEL
.DATA
       M DB 01H,02H,03H,04H
       N DB 05H,06H,07H,08H
       CNT DB 04H
       RES DB ?

.CODE
       START: MOV AX,@DATA
              MOV DS,AX
              MOV CL,CNT
              LEA SI ,M
              LEA DI,N

;Matrix Adiition Part

        L1:MOV AL,[SI]
        MOV BL,[DI]
        ADD AL,BL
        DAA
        PUSH AX
        INC SI
        INC DI
        LOOP L1
        CALL STORE

;Store Part

        STORE PROC
        POP AX
        LEA SI,RES
        ADD SI,04H
        MOV CL,04H
        L2:POP AX
       MOV [SI],AL
       DEC SI
       LOOP L2
       INT 3H
       RET

STORE ENDP
END START
