.model small
.stack
.data
.code 
start :
mov ah,01
int 21h
int 21h
int 21h

mov ah,02
mov dl,al
int 21h

mov ah,4ch
int 21h
end start;