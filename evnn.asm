section .text
        global _start

_start:
        mov eax, 2        

increase_even:
    
        push eax        ;push eax value

        mov eax, 4
        mov ebx, 1
        mov ecx, space
        mov edx, space_len
        int 0x80

        ;the following code add extra line
        mov eax, 4
        mov ebx, 1
        mov ecx, space
        mov edx, 1
        int 0x80

        pop eax        ;restore eax value
        add eax, 2
        cmp eax, 20        ;end number
        jl increase_even

        mov eax, 1
        int 0x80

section .bss
        tmp resb 16

section .data
        space db 10
        space_len equ 1

