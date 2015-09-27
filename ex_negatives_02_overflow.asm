; Sandbox asm file template to start experimenting from
; Show that the largest positive and largest negative value are just one value apart
; Set the insight register to display decimal to get the full effect.

SECTION .data
SECTION .text

	global _start

_start:
	nop

	mov eax,7FFFFFFFh
	inc eax			; Becomes 80000000h, the largest negative number	

	mov eax,1		; Code for Exit Syscall
	mov ebx,0		; Return a code of zero	
	int 80H		; Make kernel call

SECTION .bss

