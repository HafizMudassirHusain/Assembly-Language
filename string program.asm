.model small
.stack 100h
.data
string1 db 100 dup('$')
.code
start:

mov ax, @data
mov ds,ax

mov si,offset string1
f1:
mov ah,1
int 21h
cmp al,13
je program

mov[si],al
inc si
jmp f1


program:

mov dx,offset string1
mov ah,9
int 21h

mov ah,4ch
int 21h

end start