global ft_write
section .text

extern __errno_location

ft_write:
    mov rax, 1;
    syscall
    cmp rax, 0;
    jl err_exit;
    ret

    err_exit:
        neg rax;
        push rax;
        call __errno_location;
        pop qword[rax];
        mov rax, -1;
        ret
