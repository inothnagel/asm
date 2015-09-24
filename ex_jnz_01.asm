; eax is decremented until it becomes zero, at which point zf is set,
; and jnz will no longer jump.

SECTION .data
SECTION .text

  global _start

_start:
		nop

		mov eax,5
	DoMore:	dec eax
		jnz DoMore

		mov eax,1		; Code for Exit Syscall
		mov ebx,0		; Return a code of zero	
		int 80H		; Make kernel call

SECTION .bss

