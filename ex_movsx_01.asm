; Sandbox asm file template to start experimenting from
; MOVSX moves a number with file extension between registers
; meaning you can copy a 16 bit negative number into a 32 bit register
; and still have the correct negative number. With MOV, the sign bit
; would be copied as is, and the resulting interpretation would no longer
; be the correct negative number.
 
SECTION .data
SECTION .text

	global _start

_start:
	nop

	mov ax,-42
	movsx ebx,ax

	
	mov eax,1		; Code for Exit Syscall
	mov ebx,0		; Return a code of zero	
	int 80H		; Make kernel call

SECTION .bss

