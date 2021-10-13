extern malloc
extern ft_strlen
extern ft_strcpy

section .text
global ft_strdup

ft_strdup:
	push rbp
	mov rbp, rsp
	call ft_strlen
	push rdi
	mov rdi, rax
	call malloc wrt ..plt
	pop rsi
	mov rdi, rax
	call ft_strcpy
	mov rax, rdi
	mov rsp, rbp
	pop rbp
	ret
	
