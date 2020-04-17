BITS 64

section .text
	GLOBAL _ft_strlen

_ft_strlen:
	mov		rcx, -1
	mov		al, 0
	cld
	repne	scasb
	mov		rax, -2
	sub		rax, rcx
	xor		rcx, rcx
	ret
