.Model small
.stack 100h
.data
.code
start:
;==========pattern====122 22 22 22==================
; mov cx,2
; mov ah,02
; mov dl,'1'
; l1:
; int 21h
; mov bx,cx
; mov cx,2
; l2:
; mov dl,'2'
; int 21h
; loop l2
; mov cx,bx
; loop l1
; mov ah,4ch
; int 21h

;==========pattern====122 122 122 122==================
; mov cx,4
; l1:
; mov ah,02
; mov dl,'1'
; int 21h																
; mov bx,cx
; mov cx,2	
; l2:
; mov dl,'2'
; int 21h
; loop l2
; mov cx,bx					
; loop l1

;==================Pattern==*****1****1***1**1*1==============================
; mov cx,5
; l1:															
; mov bx,cx	
; l2:
; mov ah,02
; mov dl,'*'
; int 21h	
; loop l2
; mov ah,02
; mov dl,'1'
; int 21h	
; mov cx,bx					
; loop l1
; ==========================================

mov cx,5
l1:															
mov bx,cx
mov ah,02			;12345
mov dl,'1'			;1234
l2:					;123
int 21h				;12
inc dl				;1
	
loop l2

mov ah,02
mov dl,10
int 21h	
mov ah,02
mov dl,13
int 21h

mov cx,bx					
loop l1



mov ah,4ch
int 21h
end start