.model small
.stack 100h
.data
var1 db '			 Flight Management System $'
var2 db '1. Plans $'
var3 db '2. Exit $'
var4 db 'Select Any One: $'
var5 db '1. International $'
var6 db '2. Domestic  $'
var7 db '3. Northern  $'
b1 db '1. United States $'
b2 db '2. China $'
b3 db '3. South Africa $'
l1 db '1. Lahore $'
l2 db '2. Multan $'
l3 db '3. Islamabad $'
d1 db '1. Gilgit $'
d2 db '2. Hunza $'
d3 db '3. Baltistan $'
pb01 db 'Your Ticket has been booked, Travel Safe!. Thank you! $'
pb02 db 'Your Ticket has been booked, Travel Safe!. Thank you! $'
pb03 db 'Your Ticket has been booked, Travel Safe!. Thank you! $'
pl01 db 'Your Ticket has been booked, Travel Safe!. Thank you! $'
pl02 db 'Your Ticket has been booked, Travel Safe!. Thank you! $'
pl03 db 'Your Ticket has been booked, Travel Safe!. Thank you! $'
pd01 db 'Your Ticket has been booked, Travel Safe!. Thank you! $'
pd02 db 'Your Ticket has been booked, Travel Safe!. Thank you! $'
pd03 db 'Your Ticket has been booked, Travel Safe!. Thank you! $'
no db 'illegal command $'
.code
.386 

Start:

mov ax,@data
mov ds,ax

	mov ah, 06h
	mov al, 1
	mov bh, 11000000b
	mov ch, 0
	mov cl, 0
	mov dh, 180
	mov dl, 180
	int 10h

mov ah, 09
mov dx, offset var1
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 06h
	mov al, 1
	mov bh, 000100000b
	mov ch, 0
	mov cl, 0
	mov dh, 180
	mov dl, 180
	int 10h
mov ah, 09
mov dx, offset var2
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h


mov ah, 06h
	mov al, 1
	mov bh, 00010000b
	mov ch, 0
	mov cl, 0
	mov dh, 180
	mov dl, 180
	int 10h
mov ah, 09
mov dx, offset var3
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 01 
int 21h

cmp al, 49
je plans

cmp al, 50
je exit

cmp al, 51
jae illegal

plans:
mov ah, 06h
	mov al, 1
	mov bh, 01000000b
	mov ch, 0
	mov cl, 0
	mov dh, 180
	mov dl, 180
	int 10h
mov ah, 09
mov dx, offset var4
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 06h
	mov al, 1
	mov bh, 00010000b
	mov ch, 0
	mov cl, 0
	mov dh, 180
	mov dl, 180
	int 10h
mov ah, 09
mov dx, offset var5
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 06h
	mov al, 1
	mov bh, 00100000b
	mov ch, 0
	mov cl, 0
	mov dh, 180
	mov dl, 180
	int 10h
mov ah, 09
mov dx, offset var6
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 06h
	mov al, 1
	mov bh, 01000000b
	mov ch, 0
	mov cl, 0
	mov dh, 180
	mov dl, 180
	int 10h
mov ah, 09
mov dx, offset var7
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 01
int 21h

cmp al, 49
je international

cmp al, 50
je domestic

cmp al, 51
je northern

cmp al, 52
jae illegal

international:
mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset b1
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset b2
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset b3
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 01
int 21h

cmp al, 49
je pb1

cmp al, 50
je pb2

cmp al, 51
je pb3

cmp al, 52
jae illegal

domestic:
mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset l1
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset l2
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset l3
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 01
int 21h

cmp al, 49
je pl1

cmp al, 50
je pl2

cmp al, 51
je pl3

cmp al, 52
jae illegal

northern :
mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset d1
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset d2
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset d3
int 21h

mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 01
int 21h

cmp al, 49
je pd1

cmp al, 50
je pd2

cmp al, 51
je pd3

cmp al, 52
jae illegal

pb1:
mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset pb01
int 21h

jmp exit

pb2:
mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset pb02
int 21h

jmp exit

pb3:
mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset pb03
int 21h

jmp exit

pl1:
mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset pl01
int 21h

jmp exit

pl2:
mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset pl02
int 21h

jmp exit

pl3:
mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset pl03
int 21h

jmp exit

pd1:
mov ah, 09
mov dx, offset pd01
int 21h

jmp exit

pd2:
mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset pd02
int 21h

jmp exit

pd3:
mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset pd03
int 21h

jmp exit

illegal:
mov ah,02
mov dl, 0ah
int 21h

mov ah,02
mov dl, 0dh
int 21h

mov ah, 09
mov dx, offset no
int 21h

jmp exit

exit:
mov ah, 4ch
int 21h

end Start