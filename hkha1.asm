.model small
.stack 100h
.data
    hkha0 db "nhap a: $"
    hkha1 db 10,13,"nhap x: $"
    hkha2 db 10,13,"nhap b: $"
    hkha3 db 10,13,"ket qua: $"
    a db ?
    b db ?
    x db ?
    
.code
    mov ax, @data
    mov ds, ax

    mov dx, offset hkha0
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    mov a, al 

    mov dx, offset hkha1
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    mov x, al 
  
    mov dx, offset hkha2
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    mov b, al
     
    mov dx, offset hkha3
    mov ah, 09h
    int 21h
 
    mov dl, a
    mov ah, 02h
    int 21h
    mov dl, "-"
    mov ah, 02h
    int 21h
    mov dl, x
    mov ah, 02h
    int 21h
    mov dl, "+"
    mov ah, 02h
    int 21h
    mov dl, "("
    mov ah, 02h
    int 21h
    
    mov dl, b
    mov ah, 02h
    int 21h
    mov dl, "*"
    mov ah, 02h
    int 21h
    mov dl, "2"
    mov ah, 02h
    int 21h
    mov dl, ")"
    mov ah, 02h
    int 21h
    
      
    mov ax, 4c00h
    int 21h
    

