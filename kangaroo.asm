; Sandbox asm file template to start experimenting from
; converts the Snippet string in memory to lowercase by looping and
; adding 32 to each byte in the string

SECTION .data
	Snippet db "KANGAROO"
SECTION .text

  global _start

_start:
		nop

		mov ebx,Snippet
		mov eax,8
	DoMore: add byte [ebx],32
		inc ebx
		dec eax
		jnz DoMore

		mov eax,1		; Code for Exit Syscall
		mov ebx,0		; Return a code of zero	
		int 80H		; Make kernel call

SECTION .bss

