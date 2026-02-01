ORG 100h

    MOV CX, 5        
    DEC CX            

L1:                    
    PUSH CX            
    MOV SI, 0         

L2:                   
     MOV AL, SORT[SI]
    CMP AL, SORT[SI+1]
    JL  SKIP          
    
 
    XCHG AL, SORT[SI+1]
    MOV  SORT[SI], AL

SKIP:
    INC SI
    LOOP L2          

    POP CX
    LOOP L1         

RET                  
SORT DB 8, 2, 4, 1, 6 
