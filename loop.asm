.Model small
.stack
.data
var db "Mudassir$"
.code
start:
mov ax,@data
mov ds,ax
mov cx,5
mov ah,09 
lea dx,var
int 21h
label1:

mov ah,02
mov dl,'A'
int 21h
loop label1

mov ah,4ch
int 21h

end start