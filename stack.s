section .text
global main

main:
	push 5
	push 7
	call test
	add rsp, 16
	ret

test:
	push rbp
	mov rbp, rsp
	mov rax, [rsp+16]
	add rax, [rsp+24]
	mov rsp, rbp
	pop rbp
	ret
