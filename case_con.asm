.Model small
.stack 100h
.data
var db 10, "Case Conversion: $"
sm db 10, "enter your small latter: $"
lr db 10, "enter capital latter: $"
con db 10, "Your letter after conversion: $"
dsh db 10, "===========================$"
exit equ 4ch
.code
start:

mov ax,@data
mov ds,ax

mov ah,09
lea dx,var
int 21h
mov ah,09
lea dx,dsh
int 21h
mov ah,09
lea dx,dsh
int 21h
mov ah,09
lea dx,sm
int 21h
mov ah,01
int 21h
mov ah,09
lea dx,con
int 21h
sub al,32
mov ah,02
mov dl,al
int 21h

mov ah,09
lea dx,dsh
int 21h
mov ah,09
lea dx,dsh
int 21h
mov ah,09
lea dx,lr
int 21h
mov ah,01
int 21h
mov ah,09
lea dx,con
int 21h
add al,32
mov ah,02
mov dl,al
int 21h

mov ah,exit
int 21h

end start


