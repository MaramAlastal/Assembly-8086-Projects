ORG 100h


    MOV AH, 01h
    INT 21h 
    SUB AL, 30h 
    MOV BL, AL
     
    MOV AH, 01h 
    INT 21h 
    MOV BH, AL
  
    MOV AH, 01h 
    INT 21h 
    SUB AL, 30h 
    MOV CL, AL

    CMP BH, '+' 
    JE ADDITION
    CMP BH, '-' 
    JE SUBTRACTION
    CMP BH, '*' 
    JE MULTIPLICATION
    CMP BH, '/' 
    JE DIVISION
    
  
    MOV DX, OFFSET MSG 
     JMP DISP

ADDITION:
    ADD BL, CL 
    MOV AL, BL 
    JMP SHOW
    
SUBTRACTION:
    SUB BL, CL 
    MOV AL, BL 
    JMP SHOW 
    
MULTIPLICATION:
    MOV AL, BL 
    MUL CL 
    JMP SHOW 
    
DIVISION:
    MOV AL, BL 
    MOV AH, 0 
    DIV CL 
    JMP SHOW

SHOW:
    ADD AL, 30h 
    MOV DL, AL 
    MOV AH, 02h 
     INT 21h
    RET

DISP:
    MOV AH, 09h 
     INT 21h
RET


MSG DB 0Dh, 0Ah, 'Error: Wrong Sign!$'