section	.text
	GLOBAL _ft_strdup
	extern _ft_strlen
	extern _malloc
	extern _debug_output

_ft_strdup:
	cmp	rdi, 0
	je	fail
	sub	rsp, 32
	push	rbx
	mov		rbx, rdi
	call	_ft_strlen
	mov		rcx, rax
	mov	[rsp + 16], rax
	call	_malloc
	mov	rcx, [rsp + 16]
	mov	rsi, rbx
	mov	rdi, rax
	cld
	rep	movsb
	pop rbx
	add	rsp, 32
	ret

fail:
	mov	rax, 0
	ret
