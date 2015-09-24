; Sandbox asm file template to start experimenting from

SECTION .data
SECTION .text

  global _start

_start:
  nop

  mov eax,0FFFFFFFFh
  mov ebx,02Dh
  dec ebx
  inc eax

  mov eax,1		; Code for Exit Syscall
  mov bx,0		; Return a code of zero	
  int 80H		; Make kernel call

SECTION .bss

