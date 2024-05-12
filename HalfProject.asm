NEW MACRO
MOV AH, 02
MOV DL,0AH
INT 21H
MOV DL, 0DH
INT 21H
ENDM
.MODEL SMALL
.STACK 100H
.DATA
SCHDULE db '======================NAMAZ TIME SCHEDULE=====================$'
FAJR db '1. FAJAR$'
ZHR db '2. ZOHAR$'
ASR db '3. ASAR$'
MGRB db '4. MAGHRIB$'
ISHA1 db '5. ISHA$'
ALL db '6. FOR ALL NAMAZ TIMES$'
CHOIC db 'ENTER YOUR CHOICE:$'
FAJRT db 'THE TIME OF NAMAZ E FAJAR IS 4:14 AM $'
ZHRT db 'THE TIME OF NAMAZ E ZOHAR IS 12:34 PM $'
ASRT db 'THE TIME OF NAMAZ E ASAR IS 5:17 PM $'
MGRBT db 'THE TIME OF NAMAZ E MAGHRIB IS 7:25 PM $'
ISHAT db 'THE TIME OF NAMAZ E ISHA IS 8:56 PM $'
ILLEGAL1 db 'WRONG INPUT, KINDLY SELECT FROM THE GIVEN OPTIONS $'


Black equ 0
White equ 15
sky equ 1
brown equ 6
.386
.CODE
start:
MOV AX,@data
MOV DS,AX

call graph

MOV AH, 09
MOV DX, OFFSET SCHDULE
INT 21H

NEW

MOV AH, 09
MOV DX, OFFSET FAJR
INT 21H

NEW

MOV AH, 09
MOV DX, OFFSET ZHR
INT 21H

NEW

MOV AH, 09
MOV DX, OFFSET ASR
INT 21H

NEW

MOV AH, 09
MOV DX, OFFSET MGRB
INT 21H

NEW

MOV AH, 09
MOV DX, OFFSET ISHA1
INT 21H

NEW

MOV AH, 09
MOV DX, OFFSET ALL
INT 21H

NEW

MOV AH, 09
MOV DX, OFFSET CHOIC
INT 21H

MOV AH, 01
INT 21H

CMP AL, 49
JE FAJR1

CMP AL, 50
JE ZOHR1

CMP AL, 51
JE ASR1

CMP AL, 52
JE MGRB1

CMP AL, 53
JE ISHA2

CMP AL, 54
JE ALL1

CMP AL, 55
JAE ILLEGAL

FAJR1:
NEW
MOV AH, 09
MOV DX, OFFSET FAJRT
INT 21H
JMP EXIT

ZOHR1:
NEW
MOV AH, 09
MOV DX, OFFSET ZHRT
INT 21H
JMP EXIT

ASR1:
NEW
MOV AH, 09
MOV DX, OFFSET ASRT
INT 21H
JMP EXIT

MGRB1:
NEW
MOV AH, 09
MOV DX, OFFSET MGRBT
INT 21H
JMP EXIT

ISHA2:
NEW
MOV AH, 09
MOV DX, OFFSET ISHAT
INT 21H
JMP EXIT

ALL1:
NEW
MOV AH, 09
MOV DX, OFFSET FAJRT
INT 21H

NEW

MOV AH, 09
MOV DX, OFFSET ZHRT
INT 21H

NEW

MOV AH, 09
MOV DX, OFFSET ASRT
INT 21H

NEW

MOV AH, 09
MOV DX, OFFSET MGRBT
INT 21H

NEW

MOV AH, 09
MOV DX, OFFSET ISHAT
INT 21H
JMP EXIT

ILLEGAL:
NEW

MOV AH, 09
MOV DX, OFFSET ILLEGAL1
INT 21H

JMP EXIT

EXIT:
MOV AH, 4CH
INT 21H


graph proc
mov ah,0
mov al,4
int 10h

mov ah,0bh
mov bh,00h
mov bl,black
int 10h            ;background color

mov ah,0ch  ;create line
mov al,white
mov cx,100 ;start colum
mov dx,75  ;start row

l1:
int 10h
inc dx
cmp dx,180
jle l1

;rightcornerline
mov ah,0ch  ;create line
mov al,white
mov cx,220 ;start colum
mov dx,75  ;start row

l2:
int 10h
inc dx
cmp dx,180
jle l2



;baseline
mov ah,0ch  ;create line
mov al,white
mov cx,100 ;start colum
mov dx,180  ;start row

l4:
int 10h
inc cx
cmp cx,220
jle l4


;skyline2
mov ah,0ch  ;create line
mov al,sky
mov cx,100 ;start colum
mov dx,110  ;start row

l5:
int 10h
inc cx
cmp cx,220
jle l5


;skyline1
mov ah,0ch  ;create line
mov al,sky
mov cx,100 ;start colum
mov dx,95  ;start row

l6:
int 10h
inc cx
cmp cx,220
jle l6


;skylineIN_1
mov ah,0ch  ;create line
mov al,sky
mov cx,105 ;start colum
mov dx,97  ;start row

skylinein:
int 10h
inc cx
cmp cx,115
jle skylinein


;skylineIN_2
mov ah,0ch  ;create line
mov al,sky
mov cx,105 ;start colum
mov dx,100  ;start row

skylinein2:
int 10h
inc cx
cmp cx,115
jle skylinein2


;skylineIN_3
mov ah,0ch  ;create line
mov al,sky
mov cx,105 ;start colum
mov dx,102  ;start row

skylinein3:
int 10h
inc cx
cmp cx,115
jle skylinein3


;skylineIN_4
mov ah,0ch  ;create line
mov al,sky
mov cx,105 ;start colum
mov dx,105  ;start row

skylinein4:
int 10h
inc cx
cmp cx,115
jle skylinein4


;skylineIN_2.1
mov ah,0ch  ;create line
mov al,sky
mov cx,125 ;start colum
mov dx,97  ;start row

skylinein21:
int 10h
inc cx
cmp cx,145
jle skylinein21


;skylineIN_2.2
mov ah,0ch  ;create line
mov al,sky
mov cx,125 ;start colum
mov dx,100  ;start row

skylinein22:
int 10h
inc cx
cmp cx,145
jle skylinein22


;skylineIN_2.3
mov ah,0ch  ;create line
mov al,sky
mov cx,125 ;start colum
mov dx,102  ;start row

skylinein23:
int 10h
inc cx
cmp cx,145
jle skylinein23


;skylineIN_2.4
mov ah,0ch  ;create line
mov al,sky
mov cx,125 ;start colum
mov dx,105  ;start row

skylinein24:
int 10h
inc cx
cmp cx,145
jle skylinein24


;skylineIN_3.1
mov ah,0ch  ;create line
mov al,sky
mov cx,155 ;start colum
mov dx,97  ;start row

skylinein31:
int 10h
inc cx
cmp cx,165
jle skylinein31


;skylineIN_3.2
mov ah,0ch  ;create line
mov al,sky
mov cx,155 ;start colum
mov dx,100  ;start row

skylinein32:
int 10h
inc cx
cmp cx,165
jle skylinein32


;skylineIN_3.3
mov ah,0ch  ;create line
mov al,sky
mov cx,155 ;start colum
mov dx,102  ;start row

skylinein33:
int 10h
inc cx
cmp cx,165
jle skylinein33


;skylineIN_3.4
mov ah,0ch  ;create line
mov al,sky
mov cx,155 ;start colum
mov dx,105  ;start row

skylinein34:
int 10h
inc cx
cmp cx,165
jle skylinein34


;skylineIN_4.1
mov ah,0ch  ;create line
mov al,sky
mov cx,175 ;start colum
mov dx,97  ;start row

skylinein41:
int 10h
inc cx
cmp cx,185
jle skylinein41


;skylineIN_4.2
mov ah,0ch  ;create line
mov al,sky
mov cx,175 ;start colum
mov dx,100  ;start row

skylinein42:
int 10h
inc cx
cmp cx,185
jle skylinein42


;skylineIN_4.3
mov ah,0ch  ;create line
mov al,sky
mov cx,175 ;start colum
mov dx,102  ;start row

skylinein43:
int 10h
inc cx
cmp cx,185
jle skylinein43


;skylineIN_4.4
mov ah,0ch  ;create line
mov al,sky
mov cx,175 ;start colum
mov dx,105  ;start row

skylinein44:
int 10h
inc cx
cmp cx,185
jle skylinein44


;skylineIN_5.1
mov ah,0ch  ;create line
mov al,sky
mov cx,195 ;start colum
mov dx,97  ;start row

skylinein51:
int 10h
inc cx
cmp cx,215
jle skylinein51


;skylineIN_5.2
mov ah,0ch  ;create line
mov al,sky
mov cx,195 ;start colum
mov dx,100  ;start row

skylinein52:
int 10h
inc cx
cmp cx,215
jle skylinein52


;skylineIN_5.3
mov ah,0ch  ;create line
mov al,sky
mov cx,195 ;start colum
mov dx,102  ;start row

skylinein53:
int 10h
inc cx
cmp cx,215
jle skylinein53


;skylineIN_5.4
mov ah,0ch  ;create line
mov al,sky
mov cx,195 ;start colum
mov dx,105  ;start row

skylinein54:
int 10h
inc cx
cmp cx,215
jle skylinein54


;head_baseline
mov ah,0ch  ;create line
mov al,white
mov cx,100 ;start colum
mov dx,75  ;start row

l7:
int 10h
inc cx
cmp cx,220
jle l7

;minar one left line
mov ah,0ch  ;create line
mov al,white
mov cx,110 ;start colum
mov dx,40  ;start row

l8:
int 10h
inc dx
cmp dx,75
jle l8

;minar one right line
mov ah,0ch  ;create line
mov al,white
mov cx,130 ;start colum
mov dx,40  ;start row

l9:
int 10h
inc dx
cmp dx,75
jle l9


       ;minar one baseline line
mov ah,0ch  ;create line
mov al,white
mov cx,107 ;start colum
mov dx,40  ;start row

l10:
int 10h
inc cx
cmp cx,133
jle l10


;minar one baseline1 line
mov ah,0ch  ;create line
mov al,white
mov cx,107 ;start colum
mov dx,38  ;start row

lg:
int 10h
inc cx
cmp cx,133
jle lg


;triangle
Mov ah,0ch
Mov al,1
Mov cx,120
mov dx,0
La: 
int 10h
inc dx
inc cx
cmp cx,0
cmp dx,13
jle la

;triangle
Mov ah,0ch
Mov al,1
Mov cx,120
mov dx,0
Lb: 
int 10h
inc dx
dec cx
cmp cx,10
cmp dx,13
jle lb

;Smaltriangle1.1
Mov ah,0ch
Mov al,1
Mov cx,115
mov dx,15
tri: 
int 10h
inc dx
dec cx
cmp cx,0
cmp dx,20
jle tri

;Smaltriangle1.2
Mov ah,0ch
Mov al,1
Mov cx,115
mov dx,15
tri2: 
int 10h
inc dx
inc cx
cmp cx,0
cmp dx,20
jle tri2

;Smaltriangle2.1
Mov ah,0ch
Mov al,1
Mov cx,126
mov dx,15
tri21: 
int 10h
inc dx
dec cx
cmp cx,0
cmp dx,20
jle tri21

;Smaltriangle2.2
Mov ah,0ch
Mov al,1
Mov cx,126
mov dx,15
tri22: 
int 10h
inc dx
inc cx
cmp cx,0
cmp dx,20
jle tri22

;minar one head_baseline line
mov ah,0ch  ;create line
mov al,white
mov cx,110 ;start colum
mov dx,10  ;start row

lc:
int 10h
inc cx
cmp cx,130
jle lc

;minar one head_baseline2 line
; mov ah,0ch  ;create line
; mov al,white
; mov cx,107 ;start colum
; mov dx,14  ;start row

; lf:
; int 10h
; inc cx
; cmp cx,133
; jle lf


;minar one head_left line
mov ah,0ch  ;create line
mov al,white
mov cx,107 ;start colum
mov dx,15  ;start row

ld:
int 10h
inc dx
cmp dx,40
jle ld

;minar one head_right_left line
mov ah,0ch  ;create line
mov al,white
mov cx,133 ;start colum
mov dx,15  ;start row

lef:
int 10h
inc dx
cmp dx,40
jle lef

;minar one head_IN_Square line
mov ah,0ch  ;create line
mov al,white
mov cx,131 ;start colum
mov dx,20  ;start row

leg:
int 10h
inc dx
cmp dx,38
jle leg

;minar one head_IN_MidSquare line
mov ah,0ch  ;create line
mov al,white
mov cx,121 ;start colum
mov dx,20  ;start row

lh:
int 10h
inc dx
cmp dx,38
jle lh

;minar one head_IN_Left_Square line
mov ah,0ch  ;create line
mov al,white
mov cx,110 ;start colum
mov dx,20  ;start row

li:
int 10h
inc dx
cmp dx,38
jle li

Mov ah,01						
int 21h
cmp al ,13
je N

N:
Mov ax,3							;set text mode
int 10h  
							 
ret 
graph endp

END START