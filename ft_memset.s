section	.text
	GLOBAL _ft_memset
	extern	_debug_output

_ft_memset:
	sub	rsp, 16
	mov	[rsp + 8], rdi
	mov	rcx, rdx
	mov	rax, rsi
	cld
	rep	stosb
	mov	rax, [rsp + 8]
	add	rsp, 16
	ret
