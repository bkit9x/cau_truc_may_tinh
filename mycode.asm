.model small
.stack 200h
.data
a db "h$"
.code

begin:
        mov ax, @data
        mov ds, ax
        
        mov dx, offset a
        mov ah, 09h 
        int 21h

        mov ax, 4c00h
        int 21h  

end begin