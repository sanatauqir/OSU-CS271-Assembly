TITLE Program Template     (template.asm)

; Author: Sana Tauqir
; Course 271 / Project ID 1                Date: 7/3/16
; Description: Print out name, get in 2 user inputs and perform some arithmetic operations

INCLUDE Irvine32.inc

; (insert constant definitions here)


.data

msg1 BYTE "Sana Tauqir    Project 1", 0
msg3 BYTE "Enter two numbers and I'll show you the sum, difference, production, quotient and remainder.", 0
number1 BYTE "First Number: ", 0
number2 BYTE "Second Number: ", 0
addmsg BYTE " + ", 0
submsg BYTE " - ", 0
multmsg BYTE " * ", 0
divmsg BYTE " / ", 0
equals BYTE " = ", 0

num1 DWORD 0
num2 DWORD 0
sum DWORD 0
diff DWORD 0
prod DWORD 0
quot DWORD 0

.code
main PROC

;Introduction
mov edx, OFFSET msg1
CALL WriteString
CALL CrLF
mov edx, OFFSET msg3
CALL WriteString
CALL CrLF
 

;Ask for Input1
mov edx, OFFSET number1
CALL WriteString
CALL ReadInt
mov num1, eax

;Ask for input2
mov edx, OFFSET number2
CALL WriteString
CALL ReadInt
mov num2, eax

;does the summation
add eax, num1
mov sum, eax

; prints the formatted addition operation
mov eax, num1
CALL WriteDec
mov edx, OFFSET addmsg
CALL WriteString
mov eax, num2
CALL WriteDec
mov edx, OFFSET equals
CALL WriteString
mov eax, sum
CALL WriteDec
CALL CrLF


invoke ExitProcess, NULL

	exit	; exit to operating system
main ENDP

; (insert additional procedures here)

END main
