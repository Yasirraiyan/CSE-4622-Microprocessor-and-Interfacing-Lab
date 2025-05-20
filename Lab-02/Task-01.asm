Skip to main content
Google Classroom
Classroom
CSE 4621/22: Microprocessor and Interfacing Theory & Lab
SWE 21, Summer 2023-24
Home
Calendar
Enrolled
To-do
S
SWE 4602 SDA
A
C
CSE 4618: Atificial Intelligence Lab
Section-B | Summer 2023-2024
S
SWE 4604
B
C
CSE 4621/22: Microprocessor and Interfacing Theory & Lab
SWE 21, Summer 2023-24
S
SWE 4602 SDA
B
S
SWE 4601 SDA
S
SWE 4603
C
CSE 4618: Atificial Intelligence Lab
Section-A | Summer 2023-2024
S
SWE 4637: Web and Mobile Application Development.
2023/2024 Summer
C
CSE 4617: Artificial Intelligence
Summer 2023-2024
S
SWE 4502
Group A
S
SWE 4502
Group B
C
CSE 4502: Operating Systems Lab
SWE-B
S
SWE 4503/SWE 4504
C
CSE 4749/CSE 4559: Introduction to Cloud Computing
S
SWE 4537 - Batch 21
S
SWE 4538 - Batch 21
A (ML)
S
SWE 4538 - Batch 21
B (CC)
S
SWE 4501_SWE21_DP
M
Math 4544: Numerical Methods Lab (Winter 2024)
SWE B
M
Math 4544: Numerical Methods Lab (Winter 2024)
SWE A
M
Math 4543: Numerical Methods (Winter 2024)
SWE
C
CSE 4501(SWE): Operating Systems
Winter 2023-2024
S
SWE 4404
C
CSE 4410 [SWE'21]
SWE B
Archived classes
Settings
Turning in…
Lab 2
Aashnan Rahman, Junior Lecturer, CSE
•
3:06 PM
100 points

IUT MPAL Lab-2 (1A).pdf
PDF
Class comments
Your work
Turned in

210042152 Task-01.asm
Text
Private comments
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
