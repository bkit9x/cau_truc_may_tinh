.data
    msg db "nhap ki tu: $"
    msg1 db 10,13,"ki tu vua nhap la: $"
    char db ?
.code
main:
    mov ax, @data
    mov ds, ax
    
    mov dx, offset msg
    mov ah, 09h
    int 21h
    
    mov ah, 01
    int 21h
    
    sub al, " "
    
    mov char, al
    
    mov dx, offset msg1
    mov ah, 09h
    int 21h
    
    mov dl, char
    mov ah, 02
    int 21h
    
    mov ax, 4c00h
    int 21h
end main