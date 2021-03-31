.data
    m0 db "nhap so a: $"
    m1 db 10,13,"nhap so b: $"
    m2 db 10,13,"nhap phep toan: $"
    m3 db 10,13,"ket qua la: $"
    a db ?
    b db ?
    pt db ?
    kq dw ?
    tb db " true $"
.code
main:
    mov ax, @data
    mov ds, ax
    
    ;macro
    @print macro msg
    mov dx, offset msg
    mov ah, 09h    
    int 21h
    endm
        
;nhap a
    @print m0
    mov ah, 01
    int 21h
    sub al, "0"
    mov a, al
    
;nhap b
    @print m1
    mov ah, 01
    int 21h
    sub al, "0"
    mov b, al
    
;nhap phep toan
    @print m2
    mov ah, 01
    int 21h
    mov pt, al


    mov dx, offset m3
    mov ah, 09h
    int 21h

;thuc hien phep tinh

    cmp pt,"+"
    je k1
    cmp pt,"-"
    je k2
    cmp pt,"*"
    je k3
    cmp pt,"/"
    je k4
    
    jmp kt:

;phep cong
    k1:
    mov al, b
    add a, al
    mov al, a    
    mov kq, al
    

;phep tru
    k2:
    mov al, b
    sub a, al
    mov al, a    
    mov kq, al
    
;phep nhan
    k3:
    mov al, b
    mov bl, a
    mul bl
    mov kq, dx
    
;phep chia
    k4:
    mov al, b
    mov bl, a
    div bl
    mov kq, ax

;ket thuc
    kt:
    
    mov dl, kq
    add dl, "0"
    mov ah, 02
    int 21h
    
    mov ax, 4c00h
    int 21h
end main