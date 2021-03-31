.model small
.stack 100h
.data
    hkha0 db "nhap n: $"
    hkha2 db 10,13,"nhap m: $"
    hkha1 db 10,13,"nhap ki tu: $"
    n db ?
    m db ?
    char db ?
.code
    mov ax, @data
    mov ds, ax      
    
    ;nhap so n    
    mov dl, offset hkha0
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    sub al, "0"
    mov n, al
    
    ;nhap so m    
    mov dl, offset hkha2
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    sub al, "0"
    mov m, al
    
    ;nhap ki tu lap
    mov dl, offset hkha1
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h
    mov char, al
    
    
    mov bl, n
    lap:        ;vong lap me
    
    mov ch, 0
    mov cl, m           
    
    ;in ki tu xuong dong    
    mov dl, 0Ah
    mov ah, 02h
    int 21h
    mov dl, 0dh
    mov ah,02h
    int 21h
    
    lp:     ;vong lap con
    ;in ki tu lap
    mov dl, char
    mov ah, 02h
    int 21h
    mov dl, " "
    mov ah, 02h
    int 21h
    
    loop lp ;het vong lap con

    dec bl
    cmp bl, 0
    jne lap  ;het vong lap me
    
    mov ah, 4ch
    int 21h 