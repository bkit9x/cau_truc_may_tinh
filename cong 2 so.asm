.data
    m0 db "nhap phep toan: $"
    m1 db " + $"
    m2 db " = $"
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
 
    mov dx, offset m1
    mov ah, 09h
    int 21h
    
     
    mov ah, 01
    int 21h
    sub al, "0"
    

;thuc hien phep toan
    add a, al
    
;in kq
    mov dx, offset m2
    mov ah, 09h
    int 21h

    mov dl, a
    add dl, "0"
    mov ah, 02
    int 21h
    
    mov ax, 4c00h
    int 21h
end main