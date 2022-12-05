;indicates where the program starts to the linker
section .text
global _start
_start:
;allocates 1 byte of memory
alloc_char:
	mov eax, 45
	xor ebx, ebx
	int 0x80
	add eax, 1
	mov ebx, eax
	mov eax, 45
	int 0x80
	cmp eax, 0
	jl exit
	mov edi, eax
;puts the next char from stdin into stdout and then jumps back repeatedly until there are no more chars in stdin
echoChar:
	mov eax, 0x03
	mov ebx, 0
	mov ecx, edi
	mov edx, 1
	int 0x80
	cmp eax, 0
	jle exit
	mov eax, 0x04
	mov ebx,1
	mov ecx, edi
	mov edx,1
	int 0x80
	jmp echoChar
;exits the program
exit:
	mov eax, 1
	xor ebx, ebx
	int 0x80
