section .text
	GLOBAL _ft_bzero

_ft_bzero:
	cmp	rsi, 0
	je	final

_ft_bzero_loop:
	cmp	rsi, 0
	je	final
	mov	byte[rdi], 0
	inc	rdi
	sub	rsi, 1
	loop	_ft_bzero_loop

final:
	ret
