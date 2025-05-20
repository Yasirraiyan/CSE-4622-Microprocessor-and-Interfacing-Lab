
ORG 0100h

MAIN PROC

    MOV AH, 1      
    INT 21h         
    MOV BL, AL     

    
    MOV AH, 2
    MOV DL, 0Dh   
    INT 21h
    MOV DL, 0Ah   
    INT 21h

    AND BL, 1    
    JZ EVEN       

ODD:
    MOV AH, 2
    MOV DL, 'O'
    INT 21h
    JMP END_PROGRAM

EVEN:
    MOV AH, 2
    MOV DL, 'E'
    INT 21h

END_PROGRAM:
    MOV AH, 4Ch
    INT 21h


210042152 Task-01.asm
Displaying 210042152 Task-01.asm.
