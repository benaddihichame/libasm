bits 64

global ft_strcmp
section .text
ft_strcmp:
loop:
    mov al, byte [rdi];
    mov bl, byte [rsi];

    cmp al, bl;
    jne return_diff;

    cmp al, 0;
    je strings_equal;

    inc rdi;
    inc rsi;
    jmp loop;

strings_equal:
    xor rax, rax;
    ret;
return_diff:
    movsx rax, al;
    movsx rbx, bl;
    sub rax, rbx;
    ret;
