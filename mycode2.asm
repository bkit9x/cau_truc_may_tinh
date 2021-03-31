.model small
.stack 200h
.data
msg db "hello world$"
.code
main:
    mov ax, @data
    mov ds, ax
    
    mov dx, offset msg
    mov ah, 09h
    int 21h
    
    mov ax, 4c00h
    int 21h
end main
    