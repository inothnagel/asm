; Sandbox asm file template to start experimenting from

SECTION .data
SECTION .text

  global _start

_start:
  nop

  mov eax,42
  neg eax
  add eax,42

  mov eax,1		; Code for Exit Syscall
  mov ebx,0		; Return a code of zero	
  int 80H		; Make kernel call

SECTION .bss

