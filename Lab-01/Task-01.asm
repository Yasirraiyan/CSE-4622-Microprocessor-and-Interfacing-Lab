ORG 100h        

.DATA
RESULT DW ?            

.CODE

START:  
    MOV AX, 30
    ADD AX, 15           

    MOV BX, 575
    SUB BX, 225          

    MUL BX              

    ADD AX, 210         
    MOV RESULT, AX     

END START
