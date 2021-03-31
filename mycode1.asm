.model small
.stack 200h
.data
.code
main:
    mov ax, @data
    mov ds, ax
    
    mov ah, 01
    int 21h
    
    mov ax, 4c00h
    int 21h
end main