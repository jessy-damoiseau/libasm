global ft_read
section .text
extern __errno_location

ft_read:
    mov rax, 0;
    syscall
    cmp rax, 0;
    jl err_exit;
    ret

    err_exit:
        neg rax;
        push rax;
        call __errno_location wrt ..plt;
        pop qword[rax];
        mov rax, -1;
        ret