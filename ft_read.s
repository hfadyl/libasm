global _ft_read
section .text
    
_ft_read:
        mov rax, 0x02000003
        syscall
        jnc return
        push rax
        extern ___error
        call ___error
        pop r10
        mov [rax], r10
        mov rax, -1

return:
        ret