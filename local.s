section .text
global main

main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov dword[rbp-8], 8
	mov dword[rbp-16], 16
	mov eax, dword[rbp-16]
	sub eax, dword[rbp-8]
	mov rsp, rbp
	pop rbp
	ret
