bits 64
section .text
global ft_write
extern __errno_location

ft_write:
    mov rax, 1;
    syscall;

    cmp rax, 0;
    jge done;

    neg rax;
    mov rdi, rax;
    call [re1 __errno_location wrt ..got];
    mov [rax], edi;

    mov rax, -1;
    ret;

done:
    ret;