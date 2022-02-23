BITS 64

SECTION .text

GLOBAL strlen

strlen :
    mov rcx, 0    ; init rcx à 0
    cmp rdi, 0      ; vérif argument non NULL
    je .end         ; si cmp == 1 on envoit a end

.loop :
    cmp BYTE[rdi + rcx], 0  ; vérif si string fini
    je .end                 ; si cmp == 1 on envoit a end
    inc rcx                 ; incrémente rcx
    jmp .loop               ; relance la boucle

.end :
    mov rax, rcx            ; rax <- rcx
    ret