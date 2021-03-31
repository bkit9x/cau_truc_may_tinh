.model small
.stack 100h
.data
    hkha0 db "nhap 1 ki tu: $"
    hkha1 db 10,13,"Good morning! $"
    hkha2 db 10,13,"Good afternoon $"
    hkha3 db 10,13,"Good everning $"
    kt db ?
.code
    mov ax, @data
    mov ds, ax

    ;nhap 1 ki tu
    mov dl, offset hkha0
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    mov kt, al
    
    cmp kt, "Z"
    jbe xl
    jmp next
    ;neu nhap chu hoa, chuyen thanh chu thuong
    xl:
    add kt, 32
    next: 
    
    cmp kt, "s"
    je s
    cmp kt, "t"
    je t
    cmp kt, "c"
    je c
    jmp next2
    s:
    mov dl, offset hkha1
    mov ah, 09h
    int 21h
    jmp next2
    t:
    mov dl, offset hkha2
    mov ah, 09h
    int 21h
    jmp next2
    c:
    mov dl, offset hkha3
    mov ah, 09h
    int 21h
    next2:

    mov ax, 4c00h
    int 21h