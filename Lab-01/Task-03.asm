ORG 100h               ; Start of the program (required for .COM file)

.DATA
    C DW 260            ; Celsius value: 260 (Stored as a word)
    F DW ?              ; Fahrenheit result (2-byte variable to store result)

.CODE
START:
    ; Set up data segment (optional for clarity, needed for .COM files)
    MOV AX, @DATA       ; Load the data segment address into AX
    MOV DS, AX          ; Initialize DS register with the address

    ; Step 1: Load Celsius value into AX (16-bit register to handle larger values)
    MOV AX, C           ; Load the value of Celsius (260) into AX

    ; Step 2: Multiply by 9
    MOV BX, 9           ; Load the multiplier (9) into BX
    MUL BX              ; AX = AX * BX (AX = 260 * 9 = 2340)

    ; Step 3: Divide by 5
    MOV BX, 5           ; Load the divisor (5) into BX
    DIV BX              ; AX = AX / 5 (AX = 2340 / 5 = 468)

    ; Step 4: Add 32 to the result
    ADD AX, 32          ; AX = 468 + 32 = 500

    ; Step 5: Store the result (Fahrenheit) into variable F
    MOV F, AX           ; Store the final result (500) into Fahrenheit variable F

    ; Exit the program
    MOV AH, 4Ch         ; DOS interrupt to exit
    INT 21h             ; Call DOS interrupt to exit the program

END START
