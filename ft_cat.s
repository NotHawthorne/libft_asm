section	.text
	GLOBAL	_ft_cat
	extern	_debug_output

_ft_cat:					; prologue
	push	rbp
	mov		rbp, rsp
	sub		rsp, 32

	push	rbx
	mov		rbx, rdi

readloop:
	mov		rax, 0x2000003	; read
	mov		rdi, rbx		; fd
	lea		rsi, [rsp]		; pointer to buffer
	mov		rdx, 8			; read one byte
	syscall					; call
	mov		rbx, rdi		; 
	cmp		rax, 0			; compare result to 0
	jle		end				; if less than or equal, jump to end
	mov		[rsp + 16], rax
	mov		rax, 0x2000004	; write
	mov		rdi, 1			; stdout
	mov		rdx, [rsp + 16]	; amt of read bytes
	syscall					; call
	jmp		readloop		; loop

end:						; epilogue
	pop		rbx	
	add		rsp, 32
	mov		rsp, rbp
	pop		rbp
	ret
