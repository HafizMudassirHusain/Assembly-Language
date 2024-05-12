; Create a program take input from user and check user already register or not.
.model small
.stack 100h
	nl macro ; function, it is used with input parameter
	mov ah,02
	mov dl,0ah ;Oah=Line Feed character in ASCII 10= line feed
	int 21h
	mov ah,02
	mov dl,0dh ;Odh=Carriage Return character in ASCII 13= carriage return
	int 21h
	endm
	.data
						
	LINE1 DB 10,10,10,10,9,9,9,'   PROJECT BY: SYED ALIYAN  $' 
	LINE2 DB 10,10,10,10,10,10,9,9,'     A PROJECT FOR NAME REGISTRATION FORM$'
	LINE3 DB 10,10,10,10,10,10,10,9,9,'      PRESS ENTER KEY TO START THE PROGRAM $'
	
	
	
	var db 10,13, "Enter a Your name i will tell You, 'Youre register or not'$"
	user db 100 dup('$') ;array, 100= No. of char and dup= duplicate char 
	reg1 db 'Syed Aliyan Ahmed$'
	reg2 db 'Sameer Khan$'
	reg3 db 'Tayyab$'
	reg4 db 'Maaz$'

	cmp1 db 'Youre already Registered!$'
	cmp2 db 'Youre not Registered!$'
.code
main proc

		
    MOV AX,6 ;graphics mode
	INT 10H  ; INT 10H USED FOR SCREEN MANIPULATION

	MOV AX,@DATA    
	MOV DS,AX
		
	MOV AH,0    ;SET MODE 
	MOV AL,6    ;MODE 4
	INT 10H

	MOV AH,0BH ;background 
	MOV BH,00H ;change bg        
	MOV BL,7   ;color of bg
	INT 10H
 
	MOV AH, 09 ;char print 
	LEA DX, LINE1
	INT 21H
		
	MOV AH, 09 ;char print 
	LEA DX, LINE2
	INT 21H
		
	MOV AH, 09 ;char print 
	LEA DX, LINE3
	INT 21H


	;bottom line		
		Mov ah,0ch ;pixel draw
		Mov al,1   ;pallet
		Mov cx,100  ;coloum
		mov dx,180  ;row
		L11: 
		int 10h
		inc cx
		inc al
		cmp cx,550 ;set line size
		jle l11
		
		;Top line
		Mov ah,0ch ;draw a pixel
		Mov al,1
		Mov cx,100 
		mov dx,10 ;row  
		L2: 
		int 10h
		inc cx
		cmp cx,550 ;set line size
		jle l2
		
	
		; left side line
		Mov ah,0ch
		Mov al,1
		Mov cx,100  ;coloum 
		mov dx,10    ;row
		L3: 
		int 10h
		inc dx
		cmp dx,180 ;set line size   
		jle l3

		
		; Right side line
		Mov ah,0ch
		Mov al,1
		Mov cx,550  ;coloum
		mov dx,10
		L4: 
		int 10h
		inc dx
		cmp dx,180   ;set line size
		jle l4
		
		
		;2nd line
		Mov ah,0ch ;draw a pixel
		Mov al,1   ;pallet
		Mov cx,100 
		mov dx,40 ;row  
		L222: 
		int 10h
		inc cx
		cmp cx,550 ;set line size
		jle l222
		
		;3rd line
		Mov ah,0ch ;draw a pixel
		Mov al,1   ;pallet
		Mov cx,100 
		mov dx,90 ;row  
		L2222: 
		int 10h
		inc cx
		cmp cx,550 ;set line size
		jle l2222
		
		;4th line
		Mov ah,0ch ;draw a pixel
		Mov al,1   ;pallet
		Mov cx,100 
		mov dx,145 ;row  
		L22222: 
		int 10h
		inc cx
		cmp cx,550 ;set line size
		jle l22222
		
		
		MOV AH, 01 ; input
		INT 21H
			
			
		MOV AH,0     ;SET MODE
		MOV AL,6    ;MODE 4
		INT 10H

        ;graphics mode for 2nd page
		MOV AH,0BH ;background
		MOV BH,00H  ;change bg         
		MOV BL,6  ;8
		INT 10H   




		lea dx,var
		mov ah,09
		int 21h
		nl
		nl

		lea si,user ;SI is used to hold the address  here it is used as a pointer to access array

		l1:

		mov ah,01 ; input 
		int 21h

		cmp al,13 ;13 is a ASCII code of enter key, 
		je check_

		mov [si],al ;to access value of address 
		inc si
		jmp l1


		check_:

		mov al,user
		mov bl,reg1

		cmp al,bl
		je equal


		mov al,user
		mov bl,reg2

		cmp al,bl
		je equal


		mov al,user
		mov bl,reg3

		cmp al,bl
		je equal



		mov al,user
		mov bl,reg4

		cmp al,bl
		je equal


		lea dx,cmp2
		mov ah,09
		int 21h
		jmp end_

		equal:

		lea dx,cmp1
		mov ah,09
		int 21h
		jmp end_

		end_:
		mov ah,4ch
		int 21h


main endp
end
