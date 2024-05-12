.Model small
.stack 100h
.data
newLine equ 10
print_byte equ 02
input equ 01
exit equ 4ch
.code
start:
mov ax, @data
mov ds,ax

mov ah,print_byte
mov dl,'A'
int 21h
mov ah,newLine

mov ah,print_byte
mov dl,newLine
int 21h

mov ah,print_byte
mov dl,'B'
int 21h

mov ah,print_byte
mov dl,newLine
int 21h

mov ah,input
int 21h

mov ah,exit
int 21h


end start