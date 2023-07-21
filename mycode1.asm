.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 'ENTER TWO DECIMAL DIGITS: $'
    MSG2 DB 'TWO DIFFERENCE OF $' 
    MSG3 DB ' AND $' 
    MSG4 DB ' IS $'
    MSG5 DB 'ENTER AN ALPHABET: $'
    MSG6 DB 'OUTPUT: $'
    MSG7 DB 'SMALL$'
    MSG8 DB 'CAPITAL$'
.CODE
MAIN PROC    
    MOV AX, @DATA;
    MOV DS, AX;
    
    LEA DX, MSG1;
    MOV AH, 9; 
    INT 21H;     
                 
    MOV AH, 1;
    INT 21H;   
    
    MOV CL, AL;
    
    MOV AH, 1;
    INT 21H;  
    
    MOV BL, AL;
    
    MOV AH, 2;
    MOV DL, 0DH;
    INT 21H;
    MOV AH, 2;
    MOV DL, 0AH;
    INT 21H;
    
    LEA DX, MSG2;
    MOV AH, 9;
    INT 21H;  
    
    MOV DL, CL;
    MOV AH, 2; 
    INT 21H;  
    
    LEA DX, MSG3;
    MOV AH, 9;
    INT 21H;
    
    MOV DL, BL;
    MOV AH, 2; 
    INT 21H;  
    
    LEA DX, MSG4;
    MOV AH, 9;
    INT 21H;   
    
    SUB CL, BL;   
    
    ADD CL, 48;
    
    MOV DL, CL;
    MOV AH, 2;
    INT 21H; 
    
    MOV AH, 2;
    MOV DL, 0DH;
    INT 21H;
    MOV AH, 2;
    MOV DL, 0AH;
    INT 21H;
    
    LEA DX, MSG5;
    MOV AH, 9;
    INT 21H;
    
    MOV AH, 1;
    INT 21H;    
    
    MOV BL, AL;  
    
    MOV AH, 2;
    MOV DL, 0DH;
    INT 21H;
    MOV AH, 2;
    MOV DL, 0AH;
    INT 21H;
    
    
    LEA DX, MSG6;
    MOV AH, 9;
    INT 21H;
    
    CMP BL, 96;
    JGE GREATER;
    
    
    LEA DX, MSG8;
    MOV AH, 9;
    INT 21H;   
    JMP END_IF;
    
    
    GREATER: 
    LEA DX, MSG7;
    MOV AH, 9;
    INT 21H;  
    
    END_IF:
    
    MOV AH, 4CH;
    INT 21H;
    
MAIN ENDP
END MAIN