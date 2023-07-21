.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 'ENTER TWO LOWER CASE CHARACTERS: $'
    MSG2 DB 'IN UPPER CASE: $'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Display MSG1
    LEA DX, MSG1
    MOV AH, 9
    INT 21H

    ; Read first lowercase character
    MOV AH, 1
    INT 21H
    SUB AL, 32

    ; Store the first character in a register
    MOV BL, AL

    ; Read second lowercase character
    MOV AH, 1
    INT 21H
    SUB AL, 32   
    
    MOV AH,2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H

    ; Display MSG2
    LEA DX, MSG2
    MOV AH, 9
    INT 21H

    ; Display first uppercase character
    MOV DL, BL
    MOV AH, 2
    INT 21H

    ; Display second uppercase character
    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
