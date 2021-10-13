section .text
global ft_strcpy

ft_strcpy:
	push rbp
	mov rbp, rsp
	mov rax, 0

.loop:
	mov r8b, byte[rsi+rax]
	mov byte[rdi+rax], r8b
	cmp byte[rsi+rax], 0
	je .end
	inc rax
	jmp .loop
.end:
	mov rax, rdi
	mov rsp, rbp
	pop rbp
	ret
