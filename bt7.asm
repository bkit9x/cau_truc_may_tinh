.model small
.stack 100h
.data
    hkha0 db "nhap n: $"
    hkha1 db 10,13,"ket qua: $"
    n db ?
    kq db 1
.code
    mov ax, @data
    mov ds, ax
    
    mov dl, offset hkha0
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    sub al, "0"
    mov n, al
        
    mov ch, 0
    mov cl, n
    kloop:
    mov al, kq
    mul cl
    mov kq, al
    loop kloop
    
    mov dl, offset hkha1
    mov ah, 09h
    int 21h
    add kq, "0"
    mov dl, kq
    mov ah, 02h
    int 21h
    
    
    mov ah, 4ch
    int 21h