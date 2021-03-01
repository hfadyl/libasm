global _ft_strcpy
section .text

_ft_strcpy:
            xor rax, rax
            jmp loop
loop:
        mov cl, byte [rsi + rax]
        mov byte [rdi + rax], cl
        cmp cl, 0
        je return
        inc rax
        jmp loop

return:
        mov byte [rdi + rax], 0
        mov rax, rdi
        ret


        
