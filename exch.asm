.Model small
.stack 100h
.data
msg1 db 10, "this is the value of al after exchange: $"
msg2 db 10, "this is the value of bl after exchange: $"

.code
start:
mov ax, @data
mov ds,ax

mov al,'A'
mov bl,'B'
xchg al,bl

mov ah,09
mov dx,offset msg1
int 21h

mov ah,02
mov dl,al
int 21h

mov ah,09
mov dx,offset msg2
int 21h

mov ah,02
mov dl,bl
int 21h

mov ah,4ch
int 21h

end start