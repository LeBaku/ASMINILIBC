BITS 64

SECTION .text

GLOBAL memset

memset :
    mov rcx, 0      ; init rcx à 0

.loop :
    cmp rdx, rcx                ; compteur différent du nombre d'occurence
    je .end                     ; finir
    mov BYTE[rdi + rcx], sil    ; affecter carac à rdi
    inc rcx                     ; rcx +1
    jmp .loop                   ;boucle

.end :
    mov rax, rdi
    ret