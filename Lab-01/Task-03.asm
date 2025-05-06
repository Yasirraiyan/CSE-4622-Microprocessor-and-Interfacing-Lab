ORG 100h

.DATA
C DW 260        
F DW ?          

.CODE
START: 
    MOV AX, C      
    MOV BX, 2
    MUL BX         

    ADD AX, 32     

    MOV F, AX      

END START
