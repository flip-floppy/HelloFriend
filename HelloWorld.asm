; Example of a hello world program in assembly
; ld -m elf_i386 -s -o hello hello.o
section .text align=0
global _start
mensagem db 'Hello world', 0x0a
len equ $ - mensagem
_start:
mov eax, 4 ;SYS_write
mov ebx, 1 ;File descriptor number (1=stdout)
mov ecx, mensagem ;String pointer.
mov edx, len ; Message length
int 0x80
mov eax, 1
int 0x8
