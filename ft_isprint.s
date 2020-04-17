section	.text
	GLOBAL _ft_isprint

_ft_isprint:
	cmp	rdi, 32
	jl	ret_false
	cmp	rdi, 127
	jl	ret_true
	jmp	ret_false

ret_true:
	mov	rax, 1
	ret

ret_false:
	mov	rax, 0
	ret
