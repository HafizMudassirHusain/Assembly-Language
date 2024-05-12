.Model small
.stack 100h
.data
msg db "Enter the decimal number:$"
msg2 db 10,"Binary Number is:$"
.code
start:
mov ax,@data
mov ds,ax

mov ah,09
lea dx,msg
int 21h

mov ah,01
int 21h

sub al,48
mov ah,0
mov bx,2
mov dx,0
mov cx,0

again:
div bx
push dx
inc cx
cmp ax,0
jne again
mov ah,09
lea dx,msg2
int 21h

disp:
pop dx
add dx,48
mov ah,02
int 21h
loop disp

mov ah,4ch
int 21h

end Start