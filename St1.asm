.Model small
.Stack 100h
.data
s1 db "smiu$"
s2 db 4 dup('$')
.code
start:
mov ax,@data
mov ds,ax
mov es,ax

lea si,s1lea 




end start