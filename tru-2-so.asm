.data
    m0 db "nhap 2 so: $"
    m3 db 10,13,"ket qua la: $"
    a db ?
    b db ?
.code
main:
    mov ax, @data
    mov ds, ax
      
;nhap phep toan
    mov dx, offset m0
    mov ah, 09h
    int 21h
    
    mov ah, 01
    int 21h
    sub al, "0"
    mov a, al
    
    mov ah, 01
    int 21h
    sub al, "0"
    

;thuc hien phep toan
    sub a, al
    
;in kq
    mov dx, offset m3
    mov ah, 09h
    int 21h

    mov dl, a
    add dl, "0"
    mov ah, 02
    int 21h
    
    mov ax, 4c00h
    int 21h
end main