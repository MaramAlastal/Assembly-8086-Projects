ORG 100h

    MOV DI, OFFSET STRING 
    MOV AL, CHAR         
    MOV CX, 11           

SEARCH:
    CMP [DI], AL          
    JE FOUND              
    INC DI
    LOOP SEARCH


    MOV DX, OFFSET MSG2
    JMP PRINT

FOUND:
    MOV DX, OFFSET MSG1

PRINT:
    MOV AH, 09h         
    INT 21h

RET


STRING DB 'HELLO WORLD'
CHAR   DB 'l'
MSG1   DB 'CHAR FOUND$'
MSG2   DB 'CHAR NOT FOUND$'