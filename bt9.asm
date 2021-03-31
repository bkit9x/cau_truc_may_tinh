.model small
.stack 100h
.data
.code
    mov ax, @data
    mov ds, ax
    
    nhap:
    mov ah, 01h
    int 21h
    cmp al, 0dh
    jne nhap
    
    mov ah, 4ch
    int 21h