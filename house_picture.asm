.model small
.stack 100h
.data
.code
main :

;set graphic mode
Mov ax,6
int 10h		; int 10h used for screen manipulation 
;draw line
Mov ah,0ch
Mov al,1
Mov cx,100
mov dx,160
L1: 
int 10h
inc  cx
cmp cx,600
jle l1

Mov ah,0ch
Mov al,1
Mov cx,100
mov dx,90
L2: 
int 10h
inc  cx
cmp cx,250
jle l2

Mov ah,0ch
Mov al,1
Mov cx,100
mov dx,90
L3: 
int 10h
inc  dx
cmp dx,160
jle l3

Mov ah,0ch
Mov al,1
Mov cx,260
mov dx,90
L4: 
int 10h
inc  dx
cmp dx,160
jle l4

Mov ah,0ch
Mov al,1
Mov cx,600
mov dx,10
L5: 
int 10h
inc  dx
cmp dx,160
jle l5

Mov ah,0ch
Mov al,1
Mov cx,100
mov dx,90
L6: 
int 10h
inc  cx
cmp cx,600
jle l6

;triangle
Mov ah,0ch
Mov al,1
Mov cx,180
mov dx,10
L7: 
int 10h
inc dx
inc cx
cmp cx,0
cmp dx,90
jle l7

Mov ah,0ch
Mov al,1
Mov cx,180
mov dx,10
L8: 
int 10h
inc  dx
dec cx
cmp cx,0
cmp dx,90
jle l8

;upper straight line
Mov ah,0ch
Mov al,1
Mov cx,180
mov dx,10
L9: 
int 10h
inc  cx
cmp cx,600
jle l9

;door

Mov ah,0ch
Mov al,1
Mov cx,140
mov dx,120
L10: 
int 10h
inc  cx
cmp cx,220
jle l10

Mov ah,0ch
Mov al,1
Mov cx,140
mov dx,120
L11: 
int 10h
inc  dx
cmp dx,160
jle l11

Mov ah,0ch
Mov al,1
Mov cx,220
mov dx,120
L12: 
int 10h
inc  dx
cmp dx,160
jle l12

;window
Mov ah,0ch
Mov al,1
Mov cx,380
mov dx,110
L13: 
int 10h
inc  cx
cmp cx,480
jle l13

Mov ah,0ch
Mov al,1
Mov cx,380
mov dx,110
L14: 
int 10h
inc  dx
cmp dx,140
jle l14

Mov ah,0ch
Mov al,1
Mov cx,480
mov dx,110
L15: 
int 10h
inc  dx
cmp dx,140
jle l15

Mov ah,0ch
Mov al,1
Mov cx,380
mov dx,140
L16: 
int 10h
inc  cx
cmp cx,480
jle l16

Mov ah,0ch
Mov al,1
Mov cx,430
mov dx,110
L17: 
int 10h
inc  dx
cmp dx,140
jle l17

Mov ah,0ch
Mov al,1
Mov cx,380
mov dx,125
L18: 
int 10h
inc  cx
cmp cx,480
jle l18

; print "HOUSE"    
       

       mov ah,02h
       mov dl,"H"
       int 21h
       
	   mov ah,02h
       mov dl,"o"
       int 21h
	   
	   mov ah,02h
       mov dl,"u"
       int 21h
	   
	   mov ah,02h
       mov dl,"s"
       int 21h
	   
	   mov ah,02h
       mov dl,"e"
       int 21h
	   
     

; read keyboard 
Mov ah,0
int 16h			; int 16h will communicate with keyboard
; set text mode
Mov ax,3
int 10h

Mov ah,4ch
int 21h
end main
