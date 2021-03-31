.data
    m1 db "nhap 2 so: $"
    m2 db "nhap phep toan: $"
    m3 db "ket qua la: $"
    a db ?
    b db ?
    pt db ?
    
.code
main:
    mov ax, @data
    mov ds, ax
    
    mov dx, offset m1
    mov ah, 09h
    int 21h
    
    mov ah, 01
    int 21h
    
    sub al, "0"
    
    mov a, al
    
    mov ah, 01
    int 21h
    
    sub al, "0"
    
    mov b, al
    
    mov dx, offset m2
    mov ah, 09h
    int 21h
    
     
    
    mov dx, offset m3
    mov ah, 09h
    int 21h
    
;    mov dl, char
;    mov ah, 02
 ;   int 21h
    
    mov ax, 4c00h
    int 21h
end main