bits 64
global ft_strcpy
section .text
ft_strcpy:
    mov rax,rdi;
loop:
    mov dl, BYTE [rsi];
    mov BYTE [rdi], dl;
    inc rsi;
    inc rdi;
    test dl, dl;
    jnz loop;
    ret;