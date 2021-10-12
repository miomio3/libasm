section .text
global ft_strlen

ft_strlen:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	jmp .loop

.loop:
	mov al, byte[rsi]
	cmp al, 0
	je .end
	inc dword[rbp-8]
	inc rsi
	jmp .loop

.end:
	mov eax, dword[rbp-8]
	mov rsp, rbp
	pop rbp
	ret
