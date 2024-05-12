.model small 
.stack 100h
.data
 
.code 
start:
; set mode 
mov ah,0
mov al, 13h 
int 10h 
; display 256 pixel in row 100
mov ah ,0ch    ; write pixel function 
mov  al, 0    ; start with pixel color 0 
mov bh, 0   ; page 0
mov cx, 155   ; column 0 
mov dx, 60   ; row 100

l1:
int 10h 			; write pixel 
inc  al				; next color 
inc cx 				; next column 
inc dx
cmp cx, 215		; finished?
jl l1			; no repeat
 

mov ah ,0ch    ; write pixel function 
mov  al, 0    ; start with pixel color 0 
mov bh, 0   ; page 0
mov cx, 100   ; column 0 
mov dx, 120   ; row 100

l2:
int 10h 			; write pixel 
inc  al				; next color 
inc cx 				; next column 
cmp cx, 215		; finished?
jl l2			; no repeat


mov ah ,0ch    ; write pixel function 
mov  al, 0    ; start with pixel color 0 
mov bh, 0   ; page 0
mov cx, 100   ; column 0 
mov dx, 120   ; row 100

l3:
int 10h 			; write pixel 
inc  al				; next color 
inc cx 				; next column 
dec dx
cmp cx, 157		; finished?
jl l3			; no repeat

mov ah, 4ch 
int 21h 

end start