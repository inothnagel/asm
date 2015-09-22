; Sandbox asm file template to start experimenting from

SECTION .data
SECTION .text

  global _start

_start:
  nop

  mov eax,'WXYZ'	; You can use a string as an immediate value
			; in a soure operand. Debugger will show 0x5A595857
			; which is the binary ascii equivalent.

  mov eax,1		; Code for Exit Syscall
  mov ebx,0		; Return a code of zero	
  int 80H		; Make kernel call

SECTION .bss

