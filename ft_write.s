global ft_write
extern __errno_location

ft_write:
    mov rax, 1;
    syscall
    cmp rax, 0;
    jl err_exit;
    ret

    err_exit:
        neg rax;
        mov rbx, rax;
        call __errno_location;
        mov [rax], rbx;
        mov rax, -1;
        ret
