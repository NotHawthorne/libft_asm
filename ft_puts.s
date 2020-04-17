BITS 64

section	.text
	GLOBAL	_ft_puts
	GLOBAL	_debug_output
	extern	_ft_strlen

_debug_output:
	push	r9
	push	r10
	push	r11
	push	r12
	mov		r9, rax
	mov		r10, rdi
	mov		r11, rsi
	mov		r12, rdx
	mov		rax, 0x2000004
	mov		rdi, 1
	mov		rsi, msg
	mov		rdx, msg.len
	syscall
	mov		rax, r9
	mov		rdi, r10
	mov		rsi, r11
	mov		rdi, r12
	pop		r9
	pop		r10
	pop		r11
	pop		r12
	ret

_ft_puts:
	sub		rsp, 24			; space for local var

	mov		[rsp + 16], rdi ; store current value of pointer
	call	_ft_strlen		; get length of string to rax
	mov		rdx, rax		; put length of string in arg 3
	mov		rax, 0x2000004	; write syscall
	mov		rdi, 1			; put fd of 1 in arg 1
	mov		rsi, [rsp + 16] ; put pointer in arg 2
	syscall					; call write
	mov		rdi, [rsp + 16]	; restore pointer
	add		rsp, 24			; restore stack
	ret						; return

section	.data

msg:	db		"Im here", 10
.len:	equ		$ - msg
