.Model small
.stack 100h
.data
.code
start:
mov ah,02
mov dl,'M'
int 21h
mov ah,02 
mov dl,'U'
int 21h
mov ah,02
mov dl,'D'
int 21h
mov ah,02
mov dl,'A'
int 21h
mov ah,02
mov dl,'S'
int 21h
 mov ah,02
 mov dl,'S'
 int 21h
 mov ah,02
 mov dl,'I'
 int 21h
 mov ah,02
 mov dl,'R'
 int 21h
mov ah,4ch
int 21h
end start