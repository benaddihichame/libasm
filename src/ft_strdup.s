bits 64
extern malloc
extern ft_strlen
extern ft_strcpy


section .text
global ft_strdup
ft_strdup:
    mov rbx, rdi;

    call ft_strlen;

    inc rax;
    mov rdi, rax;
    call malloc wrt ..plt;

    test rax, rax;
    je ft_fail;
    
    mov r15,rax;

    mov rdi, rax;
    mov rsi, rbx;
    call ft_strcpy;

    mov rax, r15;
    ret;
ft_fail:
    xor rax,rax;
    ret;

