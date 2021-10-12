section .text
global main

main:
	push rbp
	mov rbp, rsp
	mov rax, 1
	cmp rax, 10
	jl .low
	je .eq
	ja .high

.high:
	mov rax, 1
	mov rsp, rbp
	pop rbp
	ret
.eq:
	mov rax, 0
	mov rsp, rbp
	pop rbp
	ret
.low:
	mov rax, 2
	mov rsp, rbp
	pop rbp
	ret
