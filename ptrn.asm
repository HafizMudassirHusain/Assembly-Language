.model small
.stack 100h
.data
msg1 db 10,"your are false$"
msg2 db 10,"your are true$"
.code 
start:
mov ax,@data 
mov ds,ax

mov al,10
mov bl,10
cmp al,bl

;je equal
jne equal
;jle equal
;jge equal

mov ah,09
lea dx,msg1
int 21h 
jmp exit

equal:
mov ah,09
lea dx,msg2
int 21h
jmp exit

exit:
mov ah,4ch
int 21h

end start
