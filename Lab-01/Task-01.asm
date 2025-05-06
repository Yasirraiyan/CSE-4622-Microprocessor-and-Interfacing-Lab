
.DATA
    RESULT DW ?        ; 2-Byte result ????? ????

.CODE
START:
    ; Step 1: AX = (30 + 15) = 45
    MOV AX, 30
    ADD AX, 15          ; AX = 45

    ; Step 2: BX = (575 - 225) = 350
    MOV BX, 575
    SUB BX, 225         ; BX = 350

    ; Step 3: DX:AX = AX * BX = 45 * 350 = 15750
    MUL BX              ; AX * BX ? ????? DX:AX ??

    ; Step 4: ??? ??? 210 ? AX = AX + 210
    ADD AX, 210         ; final result AX = 15750 + 210 = 15960

    ; Store the final result
    MOV RESULT, AX

    ; End program
    MOV AH, 4CH
    INT 21H
