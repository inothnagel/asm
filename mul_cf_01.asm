; Sandbox asm file template to start experimenting from
; Demonstrate that MUL sets the CF flag if the result carries
; over to EDX
; use 'info reg' in the console in insight to see the value of CF after each MUL

SECTION .data
SECTION .text

	global _start

_start:
	nop

	; mul without carry
	mov eax,447
	mov ebx,1739
	mul ebx

	; mul with carry	
	mov eax,0FFFFFFFFh
	mov ebx,03B72h
	mul ebx
	
	mov eax,1		; Code for Exit Syscall
	mov ebx,0		; Return a code of zero	
	int 80H		; Make kernel call

SECTION .bss

