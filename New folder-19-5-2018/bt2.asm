.model small
.stack 100h
.data
    hkha0 db "nhap 1 ki tu: $"
    k1 db 10,13," chu hoa $"
    k2 db 10,13,"chu thuong $"
    k3 db 10,13,"ki tu so $"
    k4 db 10,13,"ki tu khac $"
    kt db ?
.code
    mov ax, @data
    mov ds, ax
    mov dl, offset hkha0
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    mov kt, al
       
    ;so sanh
    cmp kt, "0"
    jb lb4
    cmp kt,"9"
    jbe lb3
    cmp kt,"A"
    jb lb4
    cmp kt, "Z"
    jbe lb1
    cmp kt,"a"
    jb lb4
    cmp kt,"z"
    jbe lb2
    jmp lb4
    
    lb1:
    mov dl, offset k1
    mov ah, 09h
    int 21h
    jmp end
    lb2:
    mov dl, offset k2
    mov ah, 09h
    int 21h
    jmp end
    lb3:
    mov dl, offset k3
    mov ah, 09h
    int 21h
    jmp end
    lb4:
    mov dl, offset k4
    mov ah, 09h
    int 21h
    
    end:
    mov ah, 4ch
    int 21h