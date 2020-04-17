section	.text
	GLOBAL _ft_memcpy

_ft_memcpy:
	cmp	rdx, 0
	je	ret_fail
	sub	rsp, 16
	mov	[rsp + 8], rdi
	mov	rcx, rdx
	mov	rax, rdi
	cld
	rep	movsb
	mov	rax, [rsp + 8]
	add	rsp, 16
	ret

ret_fail:
	mov	rax, rdi
	ret
