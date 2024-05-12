.Model small
.stack 100h
.data
name1 db 10, "enter your name: $"
Fname db 10, "enter your Father name: $"
id db 10, "enter your id: $"
sec db 10, "which semester: $"
.code
start:
mov ax, @data
mov ds,ax

mov ah,09
lea dx,name1
int 21h
mov ah,3fh
int 21h

mov ah,09
lea dx,fname
int 21h
mov ah,3fh
int 21h

mov ah,09
lea dx,id
int 21h
mov ah,3fh
int 21h

mov ah,09
lea dx,sec
int 21h
mov ah,3fh
int 21h

mov ah,4ch
int 21h

end start 
