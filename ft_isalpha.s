section	.text
	GLOBAL _ft_isalpha

_ft_isalpha:
	cmp	rdi, 65
	jl	ret_false
	cmp	rdi, 91
	jl	ret_true
	cmp	rdi, 97
	jl	ret_false
	cmp	rdi, 123
	jl	ret_true
	jmp	ret_false

ret_true:
	mov	rax, 1
	ret

ret_false:
	mov	rax, 0
	ret
