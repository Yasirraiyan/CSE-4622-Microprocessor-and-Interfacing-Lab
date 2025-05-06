ORG 100h        

.DATA
RESULT DW ?            

.CODE

START:  
    MOV AX, 30  // MOV diye kono variable store kori value exa: a=30 here AX=30
    ADD AX, 15  // ADD AX,15 means a=a+15 mane a=30+15=45     

    MOV BX, 575 //MOV diye kono variable store kori value exa: b=575 here BX=575
    SUB BX, 225    // SUB BX,225 means b=b-225 mane a=575-225=350     

    MUL BX         //MUL BX mane AXer value BX er Sathe multiply kori, maeans=AX*BX

    ADD AX, 210  //ADD,AX 210 mane AX*BX+210       
    MOV RESULT, AX     //MOV RESULT,AX Mane RESULT E AX ER value assign kori

END START// PROGRAM END;
