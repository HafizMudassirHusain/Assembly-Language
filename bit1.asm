.Model small
.stack 100h
.data 
.code
main:
; mov al,6
; mov bl,2
; AND bl,al
; add al,48
; mov ah,02
; mov dl,al
; int 21h

mov al,4
SHL al,1
add al,48
mov ah,02
mov dl,al

mov ah,4ch
int 21h
end main