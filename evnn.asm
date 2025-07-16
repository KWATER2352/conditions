section .text
        global _start

_start:
        mov eax, 2        

increase_even:
    
        push eax        

        mov eax, 4
        mov ebx, 1
        mov ecx, space
        mov edx, space_len
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, space
        mov edx, 1
        int 0x80

        pop eax        
        add eax, 2
        cmp eax, 20       
        jl increase_even

        mov eax, 1
        int 0x80

section .bss
        tmp resb 16

section .data
        space db 10
        space_len equ 1

