; Moving around 8 bit and 16 bit subsections of eax, ebx, and ecx
; Swap 32, then 16, then upper 8, then lower 8 bit registers

SECTION .data
SECTION .text

  global _start

_start:
  nop

  mov eax,0h
  mov ebx,0ffffffffh
  xchg eax,ebx
  xchg ax,bx
  xchg ah,bh
  xchg al,bl

  mov eax,1		; Code for Exit Syscall
  mov ebx,0		; Return a code of zero	
  int 80H		; Make kernel call

SECTION .bss

