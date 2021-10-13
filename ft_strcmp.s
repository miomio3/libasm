section .text
global ft_strcmp

ft_strcmp:
	push rbp
	mov rbp, rsp
	mov rax, 0

.loop:
	mov r8b, byte[rdi+rax]
	cmp r8b, byte[rsi+rax]
	jne .end
	cmp r8b, 0
	je .end
	cmp byte[rsi+rax], 0
	je .end
	inc rax
	jmp .loop
.end:
	sub r8b, byte[rsi+rax]
	movsx rax, r8b
	mov rsp, rbp
	pop rbp
	ret
