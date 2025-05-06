 You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

ORG 100h               ; Start of the program

.DATA
    RESULT DW ?        ; Variable to store the result (2 bytes)

.CODE
START:
    ; Set up data segment (optional, for clarity)
    MOV AX, @DATA
    MOV DS, AX

    ; Step 1: Load the values
    MOV AX, 0FFFh       ; AX = 0F F Fh = 4095
    MOV BX, 10h         ; BX = 10h = 16

    ; Step 2: Multiply AX by BX (4095 * 16)
    MUL BX              ; AX = AX * BX (AX = 4095 * 16 = 65520)

    ; Step 3: Add 1111b (15) to AX (65520 + 15)
    ADD AX, 15          ; AX = 65520 + 15 = 65535

    ; Store the result in the RESULT variable
    MOV RESULT, AX      ; Store final result in RESULT

    ; Optional: Display the result (not implemented here, but can be done with a string conversion)
    
    ; Exit the program
    MOV AH, 4Ch         ; DOS interrupt to exit
    INT 21h             ; Call DOS interrupt to exit the program

END START




