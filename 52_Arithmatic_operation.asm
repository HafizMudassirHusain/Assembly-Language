
;....................Addition with output in unit place ................................
.model small
.stack 100h
.data
m1 db "Enter your 1st number:$"
m2 db 10,13,"Enter your 2nd number:$"
m3 db 10,13,"Addition is:$"
a db 0

.code
start:
mov ax,@data
mov ds,ax

mov ah,09
lea dx,m1
int 21h

mov ah,01
int 21h

sub al,30h
mov a,al

mov ah,09
lea dx,m2
int 21h

mov ah,01
int 21h

sub al,30h

add al,a
add al,30h

mov ah,09
lea dx,m3
int 21h

mov ah,02
mov dl,al
int 21h


mov ah,4ch
int 21h
end start



;....................Addition with output in ten place................................
; .model small
; .stack 100h
; .data
; m1 db "Enter your 1st number:$"
; m2 db 10,13,"Enter your 2nd number:$"
; m3 db 10,13,"Addition is:$"
; a db 0

; .code
; start:
; mov ax,@data
; mov ds,ax

; mov ah,09
; lea dx,m1
; int 21h

; mov ah,01
; int 21h

; sub al,30h
; mov a,al

; mov ah,09
; lea dx,m2
; int 21h

; mov ah,01
; int 21h

; sub al,30h

; add al,a
; mov ah,0
; aaa               ;adjust after addition

; add al,48
; add ah,48

; mov bx,ax

; mov ah,09
; lea dx,m3
; int 21h

; mov ah,02
; mov dl,bh
; int 21h

; mov ah,02
; mov dl,bl
; int 21h

; mov ah,4ch
; int 21h
; end start




;....................subtraction with output in unit place................................
; .model small
; .stack 100h
; .data
; m1 db "Enter your 1st number:$"
; m2 db 10,13,"Enter your 2nd number:$"
; m3 db 10,13,"Subtraction is:$"
; a db 0
; b db 0
; .code
; start:
; mov ax,@data
; mov ds,ax

; mov ah,09
; lea dx,m1
; int 21h

; mov ah,01
; int 21h

; sub al,30h
; mov a,al

; mov ah,09
; lea dx,m2
; int 21h

; mov ah,01
; int 21h

; sub al,30h
; mov b,al
; mov al,a

; sub al,b
; add al,30h

; mov ah,09
; lea dx,m3
; int 21h

; mov ah,02
; mov dl,al
; int 21h

; mov ah,4ch
; int 21h
; end start




;....................multiplication with output in unit place................................
; .model small
; .stack 100h
; .data
; m1 db "Enter your 1st number:$"
; m2 db 10,13,"Enter your 2nd number:$"
; m3 db 10,13,"multiplication is:$"
; a db 0

; .code
; start:
; mov ax,@data
; mov ds,ax

; mov ah,09
; lea dx,m1
; int 21h

; mov ah,01
; int 21h

; sub al,30h
; mov a,al

; mov ah,09
; lea dx,m2
; int 21h

; mov ah,01
; int 21h

; sub al,30h

; mul a
; add al,30h

; mov ah,09
; lea dx,m3
; int 21h

; mov ah,02
; mov dl,al
; int 21h

; mov ah,4ch
; int 21h
; end start




;....................multiplication with output in ten place................................
; .model small
; .stack 100h
; .data
; m1 db "Enter your 1st number:$"
; m2 db 10,13,"Enter your 2nd number:$"
; m3 db 10,13,"multiplication is:$"
; a db 0

; .code
; start:
; mov ax,@data
; mov ds,ax

; mov ah,09
; lea dx,m1
; int 21h

; mov ah,01
; int 21h

; sub al,30h
; mov a,al

; mov ah,09
; lea dx,m2
; int 21h

; mov ah,01
; int 21h

; sub al,30h

; mul a
; mov ah,0
; aam

; add al,30h
; add ah,30h

; mov bx,ax

; mov ah,09
; lea dx,m3
; int 21h

; mov ah,02
; mov dl,bh
; int 21h

; mov ah,02
; mov dl,bl
; int 21h

; mov ah,4ch
; int 21h
; end start
