model small
.stack 100h
.data
var1 db 10,"one : $"
var2 db 10,"Two : $"
var3 db 10,"Three : $"
var4 db 10,"Four : $"
var5 db 10,"Five : $"
var6 db 10,"Invalid : $"
.code
start:
mov ax,@data
mov ds, ax

mov ah, 01
int 21h
cmp al, 49
je one
cmp al, 50
je  two
cmp al, 51
je three
cmp al, 52
je four
cmp al,53
je five
jmp invalid
one:
mov ah , 09
lea dx, var1
int 21h
jmp exit
two:
mov ah , 09
lea dx, var2
int 21h
jmp exit
three:
mov ah , 09
lea dx, var3
int 21h
jmp exit
four:
mov ah , 09
lea dx, var4
int 21h
jmp exit
five:
mov ah , 09
lea dx, var5
int 21h
jmp exit

invalid:
mov ah , 09
lea dx, var6
int 21h
jmp exit

exit:
mov ah, 4ch 
int 21h 
end start