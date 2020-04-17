section	.text
	GLOBAL	_ft_strcat

_ft_strcat:
	sub	rsp, 16
	mov	rcx, 0
	mov	rdx, 0
	mov	[rsp + 8], rdi

it_first_str:
	cmp byte[rdi], 0
	je	it_second_str
	add	rcx, 1
	inc	rdi
	jmp	it_first_str

it_second_str:
	cmp	byte[rsi], 0
	je	end
	mov	al, byte[rsi]
	mov	byte[rdi], al
	inc	rdi
	inc	rsi
	jmp	it_second_str

end:
	mov	byte[rdi], 0
	mov	rax, [rsp + 8]
	add	rsp, 16
	ret
