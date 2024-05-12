.model small
.stack 100h
.data
.code
start:

mov cx,26
mov ah,02
mov dl,'A'

label1:
int 21h 
inc dl
loop label1
mov ah,4ch
int 21h

end start