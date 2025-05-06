ORG 100h

.DATA
RESULT DW ?          

.CODE
START: 
    MOV AX, 0FFFh
    MOV BX, 10h
    MUL BX             

    ADD AX, 1111b       
    MOV RESULT, AX     


END START
