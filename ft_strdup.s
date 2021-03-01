global _ft_strdup
section .text
	extern _malloc
	extern _ft_strcpy
	extern _ft_strlen
_ft_strdup:
	push rdi		;first argument
	call _ft_strlen ;return value will be stored on rax register
	pop rdi
	mov r13, rax
	inc r13
	push rdi
	mov rdi, r13
	call _malloc
	pop rdi
	cmp rax, 0
	je _end

	mov rsi, rdi	;rsi is the second argument
	mov rdi, rax
	call _ft_strcpy
	ret
_end:
	ret				;rax is the return value