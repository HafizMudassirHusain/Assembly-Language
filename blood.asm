.model small
.stack 100h
.data
var db 10,"===================================$"
var1 db 10,"==========ASK BLOOD GROUP=========$"
var2 db 10,"======================================$"
var3 db 10,"=========MAIN MENU==========$"
var4 db 10, "1. A+",10, "2. A-",10, "3. B+",10,"4. B-",10,"5. O+",10,"6. O-$"

var5 db 10,"your blood group A+ and it is common blood$"
var6 db 10,"your blood group A- and it is common blood$"
var7 db 10,"your blood group B+ and it is common blood$"
var8 db 10,"your blood group B- and it is common blood$"
var9 db 10,"your blood group O+ and it is common blood$"
var0 db 10,"your blood group O- and it is not common blood and it is very rare human body$"
var12 db 10,"Thank you for using this APP:$"
.code
start:
mov ax,@data
mov ds,ax


mov ah,09
lea dx,var
int 21h
mov ah,09
lea dx,var1
int 21h
mov ah,09
lea dx,var2
int 21h
mov ah,09
lea dx,var3
int 21h
mov ah,09
lea dx,var4
int 21h

mov ah,01
int 21h

mov bl,10
 cmp al,49
 je one
 
 ;mov al,30
 cmp al,50
 je two
 
 ;mov al,50
 cmp al,51
 je three
 
 ;mov al,70
 cmp al,52
 je four
 
 ;mov al,90
 cmp al,53
 je five 
 ;mov al,92
 cmp al,54
 je six
jmp exit

 
one:
mov ah,09
lea dx,var5
int 21h
mov ah,09
lea dx,var12
int 21h
jmp exit 
 
two:
mov ah,09
lea dx,var6
int 21h
mov ah,09
lea dx,var12
int 21h
jmp exit

three:
mov ah,09
lea dx,var7
int 21h
mov ah,09
lea dx,var12
int 21h
jmp exit

four:
mov ah,09
lea dx,var8
int 21h
mov ah,09
lea dx,var12
int 21h
jmp exit

five:
mov ah,09
lea dx,var9
int 21h
mov ah,09
lea dx,var12
int 21h
jmp exit

six:
mov ah,09
lea dx,var0
int 21h
mov ah,09
lea dx,var12
int 21h
jmp exit



exit:
mov ah,4ch
int 21h

end start