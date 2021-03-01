global _ft_strlen
section .text

_ft_strlen:
            xor rax, rax ; int i = 0;
            jmp check   ; go to check

check:
        cmp byte [rdi + rax], 0; str[i] ==  0
        jne incr    ;if str[i] != 0 go to incr
        ret         ; return i

incr:
        inc rax     ; i++;
        jmp check   ; go to check