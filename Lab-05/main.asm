.MODEL SMALL
.STACK 100H
.DATA
    red_msg     DB 'RED   - STOP', 0DH,0AH,'$'
    yellow_msg  DB 'YELLOW - WAIT', 0DH,0AH,'$'
    green_msg   DB 'GREEN - GO', 0DH,0AH,'$'

.CODE
MAIN:
    MOV AX, @DATA
    MOV DS, AX

Traffic_Loop:

    ; RED LED ON
    MOV AH, 09H
    LEA DX, red_msg
    INT 21H
    CALL Delay5Sec

    ; YELLOW LED ON
    MOV AH, 09H
    LEA DX, yellow_msg
    INT 21H
    CALL Delay2Sec

    ; GREEN LED ON
    MOV AH, 09H
    LEA DX, green_msg
    INT 21H
    CALL Delay5Sec

    ; YELLOW LED ON again before RED
    MOV AH, 09H
    LEA DX, yellow_msg
    INT 21H
    CALL Delay2Sec

    JMP Traffic_Loop  ; Repeat forever

;--------------------------------------
; Delay Procedures
;--------------------------------------
Delay5Sec:
    MOV CX, 5000   ; approx delay count
D5_LOOP:
    NOP
    LOOP D5_LOOP
    RET

Delay2Sec:
    MOV CX, 2000   ; approx delay count
D2_LOOP:
    NOP
    LOOP D2_LOOP
    RET

END MAIN
