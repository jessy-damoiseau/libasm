section .text
global ft_strcpy

ft_strcpy:
    mov rcx, 0;

    loop:
        cmp BYTE[rsi + rcx], 0;
        je exit;
        mov bl, BYTE[rsi + rcx];
        mov BYTE[rdi + rcx], bl;
        inc rcx;
        jmp loop


    exit:
        mov BYTE[rdi + rcx], 0;
        mov rax, rdi;
        ret 
