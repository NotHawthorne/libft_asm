section	.text
	GLOBAL _ft_isdigit

_ft_isdigit:
	cmp	rdi, 48
	jl	ret_false
	cmp	rdi, 58
	jl	ret_true
	jmp	ret_false

ret_true:
	mov	rax, 1
	ret

ret_false:
	mov	rax, 0
	ret
