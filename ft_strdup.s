global ft_strdup
extern malloc
extern ft_strlen
extern ft_strcpy
extern __errno_location

ft_strdup:
    call ft_strlen;
    push rdi;
    inc rax;
    mov rdi, rax;
    call malloc;
    cmp rax, 0;
    jz err_exit;
    mov rdi, rax;
    pop rsi;
    call ft_strcpy;
    ret

    err_exit:
        neg rax;
        mov rbx, rax;
        call __errno_location;
        mov [rax], rbx;
        mov rax, -1;
        ret
        

