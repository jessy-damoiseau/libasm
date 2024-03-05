global ft_atoi_base
extern ft_strlen





ft_atoi_base:
    cmp rdi, 0;
    je err_exit;
    cmp rsi, 0;
    je err_exit;
    cmp rsi, '-';
    je err_exit;

    for1:
        mov rcx, 0;
        jmp test1;
    next1:
        cmp [rsi + rcx], '-';
        je err_exit;
        cmp [rsi + rcx], '+';
        je err_exit;
        cmp [rsi + rcx], ' ';
        je err_exit;
        inc rcx;
        for1_1:
            mov r8, rcx;
            inc r8;
            jmp test1_1:
        next1_1:
            cmp [rsi + rcx], [rsi + r8];
            je err_exit;
            inc r8;
        test1_1:
            cmp [rsi + r8], 0;
            jne next1_1;
    test1:
        cmp [rsi + rcx], 0;
        jne next1;

    



    err_exit:
        mov rax, 0;
        ret
