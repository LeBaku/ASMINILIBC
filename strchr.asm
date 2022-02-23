BITS 64

SECTION .text

GLOBAL strchr

strchr :
    cmp rdi, 0
    je .terminator
    mov rcx, 0          ; init rcx à 0

.loop :
    cmp BYTE[rdi + rcx], 0      ; verif si string fini
    je .notfind                 ; si fini on envoit a notfind
    cmp BYTE[rdi + rcx], sil    ; vérif si string == charac
    je .end                     ; si == on envoit a end
    inc rcx                     ; rcx +1
    jmp .loop                   ; on boucle

.terminator
    xor rax, rax
    ret

.notfind :
    inc rcx
    cmp BYTE[rdi + rcx], sil
    je .end
    mov rax, rdi        ; rax <- rdi
    ret

.end :
    mov rax, rdi        ; rax <- rdi
    add rax, rcx        ; déplace le début de rcx
    ret