global _ft_strcmp
section .text

_ft_strcmp:
            xor rax, rax

loop:
            mov cl, byte [rdi + rax]
            mov dl, byte [rsi + rax]
            cmp cl, 0
            je return
            cmp dl, 0
            je return
            cmp cl, dl
            je incr
            jmp return
incr:
    inc rax
    jmp loop

return:
        movzx rax, cl
        movzx r8, dl
        sub rax, r8
        ret
       
