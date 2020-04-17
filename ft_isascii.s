section	.text
	GLOBAL _ft_isascii

_ft_isascii:
	cmp	rdi, 0
	jl	ret_false
	cmp	rdi, 128
	jl	ret_true
	jmp	ret_false

ret_true:
	mov	rax, 1
	ret

ret_false:
	mov	rax, 0
	ret
