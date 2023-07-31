.MODEL SMALL
.STACK 100H
.DATA  
PROMPT DB 'Type a line of text:', 0DH,0AH,'$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX, PROMPT
    INT 21H       
    
    
MAIN ENDP
END MAIN