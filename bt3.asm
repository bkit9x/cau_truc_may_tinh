.model small
.stack 100h
.data
    hkha db 13,"nhap 1 ki tu thuong: $"
    char db ?
    hkha1 db 10,13,"ket qua: $"
    
.code
    mov ax, @data
    mov ds, ax
    
    nhap:
    
    mov dl, offset hkha
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h
    mov char, al
    
    cmp char, "a"
    jb nhap
    cmp char, "z"
    ja nhap
      
    mov dl, offset hkha1
    mov ah, 09h
    int 21h
    
    mov ch, 0
    mov cl, 123
    sub cl, char 
    
   
    print:
    mov dl, char
    mov ah, 02h
    int 21h
    mov dl, " "
    mov ah, 02h
    int 21h
    inc char
    loop print
    
    mov dl, cl
    mov ah, 02h
    int 21h
    
    mov ah, 4ch
    int 21h