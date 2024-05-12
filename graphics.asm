
;=================================================__HOW TO CHANGE BACKGROUND COLOR__==================================================================

.model small
.stack 100h
.data
.code

start:

; mov ah,0    ;this line use for changing mode  and here 0 show grafic mode
; mov al,4    ;this show CGA mode
; int 10h

; mov ah,0bh  ;this is function which is used for background color
; mov bh,00h  ;this function is used for selection of color  
; mov bl,2    ;this is for color  ,in CGA 1 show blue color
; int 10h



;=================__HOW TO SET BACKGROUND COLOR USING PALETTE__========================================================

; mov ah,0    ;this line use for changing mode  and here 0 show grafic mode
; mov al,4    ;this show CGA mode
; int 10h

; mov ah,0bh  ;this is function which is used for background color

; mov bh,0    ;this is show palette 
; mov bl,6    ;this is show pixel value  mean selection of value for color, and 2 for green color
; int 10h
	

;=================__Lines In GRAPHICS__================================================================================

;Task: create a line with white color and blue background 

; mov ah,0
; mov al,4
; int 10h

; mov ah,0bh
; mov bh,00h    ;these three line for set background color
; mov bl,6
; int 10h

; mov ah,0ch          ;function for creating pixel
; mov al,7       ;set color for pixel
; mov cx,100     ;cx show colom                       ;these four line for pixel ,ab zahir c baat hai pixel to nazar
; mov dx,100     ;dx show rows                        ;ni aye gaa to ham isko loop se he display krwa sakty hain

; l1:
; int 10h
; inc cx
; cmp cx,200      ;this show k pixel kahan tak draw kna hai
; jle l1

; mov ah,0    ;ye 2 line screen ko hold krny lye used hoti hain i mean k is k bagair out put gaib ho jaye 
; int 16h

;=====================Task#2==========================

;Task:Display the letter "A" in red at the upper right comer of the screen.
;Use mode 4 (medium resolution)and a background color of blue.

; mov ah,0
; mov al,4
; int 10h

; mov ah,0bh
; mov bh,00h
; mov bl,1
; int 10h

; mov ah,02     ;set cursor
; mov bh,0      ;page number
; mov dh,0      ;row number
; mov dl,30     ;col number
; int 10h

; mov ah,09
; mov al,'A'
; mov bl,2     ;character color
; mov cx,1     ;character number
; int 10h

;=====================Task#3==========================
;make a square using line in graphics

; mov ah,0
; mov al,4
; int 10h

; mov ah,0bh
; mov bh,00h
; mov bl,1
; int 10h

; mov ah,0ch
; mov al,7
; mov cx,60
; mov dx,160

; l1:
; int 10h
; inc cx
; cmp cx,260
; jle l1


; mov ah,0ch
; mov al,7
; mov cx,60
; mov dx,30

; l2:
; int 10h
; inc cx
; cmp cx,260
; jle l2


; mov ah,0ch
; mov al,7
; mov cx,60
; mov dx,30

; l3:
; int 10h
; inc dx
; cmp dx,160
; jle l3


; mov ah,0ch
; mov al,7
; mov cx,260
; mov dx,30

; l4:
; int 10h
; inc dx
; cmp dx,160
; jle l4

; mov ah,0
; int 16h


;=====================Task#4==========================
;make following pattern using line in graphics

;===================================

;===================================

; mov ah,0
; mov al,4
; int 10h

; mov ah,0bh
; mov bh,00h
; mov bl,1
; int 10h

; mov ah,0ch
; mov al,7
; mov cx,60
; mov dx,160

; l1:
; int 10h
; inc cx
; cmp cx,260
; jle l1


; mov ah,0ch
; mov al,7
; mov cx,60
; mov dx,30

; l2:
; int 10h
; inc cx
; cmp cx,260
; jle l2

; mov ah,0
; int 16h


mov ah,4ch
int 21h

end start