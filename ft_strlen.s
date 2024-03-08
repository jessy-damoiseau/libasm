section .text
global ft_strlen

ft_strlen:
    mov rax, 0;

    loop:
        cmp BYTE[rdi + rax], 0;
        je exit
        inc rax;
        jmp loop;
    
    exit:
        ret

    
  
