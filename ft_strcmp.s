global ft_strcmp

ft_strcmp:

    loop:
        mov al, BYTE[rdi];
        mov bl, BYTE[rsi];
        cmp al, bl;
        jne exit;
        cmp al, 0;
        je  exit;
        inc rdi;
        inc rsi;
        jmp loop;
        

    exit:
        movzx   rax, al;
        movzx   r8, bl;
        sub     rax, r8;
        ret