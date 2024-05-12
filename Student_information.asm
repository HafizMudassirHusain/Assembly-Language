.model small
.stack 100h
.data
msg1 db 'Registeration Of University Students are:$'
msg101 db 0dh, 0ah, '1. 20CSC100$'
msg102 db 0dh, 0ah, '2. 20CSC101$'
msg103 db 0dh, 0ah, '3. 20CSC102$'
msg104 db 0dh, 0ah, '4. 20CSC103$'
msg105 db 0dh, 0ah, '5. 20CSC104$'
msg106 db 0dh, 0ah, '6. 20CSC105$'
msgs db 0dh, 0ah, 'Enter the serial number of the student you want to get information of:$'
Stud1 db 'AALIYAN$'
Stud2 db 'SAMEER$'
Stud3 db 'MUSHTAQ$'
Stud4 db 'AMMAD ALI$'
Stud5 db 'GRESH KUMAR$'
Stud6 db 'SHEHRAYAR$'
Addressno1 db 0dh, 0ah, 'Mill Road, street 47, Karachi$'
Contactinfono1 db 0dh, 0ah, '03328373819$'
Fnameno1 db 0dh, 0ah, 'Malik Husain$'
Addressno2 db 0dh, 0ah, 'Minahs Road, street 38, Karachi$'
Contactinfono2 db 0dh, 0ah, '03395820952$'
Fnameno2 db 0dh, 0ah, 'Quddoos Ahmed$'
Addressno3 db 0dh, 0ah, 'Khyban Road, street 53, Karachi$'
Contactinfono3 db 0dh, 0ah, '03104928593$'
Fnameno3 db 0dh, 0ah, 'Bilal Najam$'
Addressno4 db 0dh, 0ah, 'Defence, street 91, Karachi$'
Contactinfono4 db 0dh, 0ah, '033892048292$'
Fnameno4 db 0dh, 0ah, 'Majeed Saleem$'
Addressno5 db 0dh, 0ah, 'Safari road, street 32, Karachi$'
Contactinfono5 db 0dh, 0ah, '03482940229$'
Fnameno5 db 0dh, 0ah, 'Abdul Rafay$'
Addressno6 db 0dh, 0ah, 'Shair road, street 20, Karachi$'
Contactinfono6 db 0dh, 0ah, '03049294810$'
Fnameno6 db 0dh, 0ah, 'Allah Dino$'
Bioname1 db 0dh, 0ah, 'Student_Name:  AALIYAN$'
Bioname2 db 0dh, 0ah, 'Student_Name:  SAMEER$'
Bioname3 db 0dh, 0ah, 'Student_Name:  MUSHTAQ$'
Bioname4 db 0dh, 0ah, 'Student_Name:  AMMAD ALI$'
Bioname5 db 0dh, 0ah, 'Student_Name:  GRESH KUMAR$'
Bioname6 db 0dh, 0ah, 'Student_Name:  SHEHRAYAR$'
BioFnameno1 db 0dh, 0ah, 'Father Name:   Malik Husain$'
BioFnameno2 db 0dh, 0ah, 'Father Name:   Quddoos Ahmed$'
BioFnameno3 db 0dh, 0ah, 'Father Name:   Bilal Najam$'
BioFnameno4 db 0dh, 0ah, 'Father Name:   Majeed Saleem$'
BioFnameno5 db 0dh, 0ah, 'Father Name:   Abdul Rafay$'
BioFnameno6 db 0dh, 0ah, 'Father Name:   Allah Dino$'
BioAddressno1 db 0dh, 0ah, 'Address:       Mill Road, street 47, Karachi$'
BioAddressno2 db 0dh, 0ah, 'Address:       Minahs Road, street 38, Karachi$'
BioAddressno3 db 0dh, 0ah, 'Address:       Khyban Road, street 53, Karachi$'
BioAddressno4 db 0dh, 0ah, 'Address:       Defence, street 91, Karachi$'
BioAddressno5 db 0dh, 0ah, 'Address:       Safari road, street 32, Karachi$'
BioAddressno6 db 0dh, 0ah, 'Address:       Shair road, street 20, Karachi$'
BioContactinfono1 db 0dh, 0ah, 'Contact No:    03328373819$'
BioContactinfono2 db 0dh, 0ah, 'Contact No:    03395820952$'
BioContactinfono3 db 0dh, 0ah, 'Contact No:    03104928593$'
BioContactinfono4 db 0dh, 0ah, 'Contact No:    033892048292$'
BioContactinfono5 db 0dh, 0ah, 'Contact No:    03482940229$'
BioContactinfono6 db 0dh, 0ah, 'Contact No:    03049294810$'
sg db 0dh, 0ah, 'grade is:$'
Msg2 db 0dh, 0ah, 'Enter the correct input$'
Msg3 db 0dh, 0ah, 'Invalid$' 
Optn1 db 0dh, 0ah, 'a. Father Name.    b. Address.   c. Contact No.    d. Grade       e. Biodata.$' 
.code
start:

;Graphic Mode Start
MOV AH,0     ;SET MODE
MOV AL,6    ;MODE 4
INT 10H

;graphics mode for 2nd page
MOV AH,0BH ;background
MOV BH,00H  ;change bg         
MOV BL,10    ;change color
INT 10H 
Mov ax, @data

Mov ds, ax

Lea dx, msg1      ;msg
Mov ah, 09
int 21h
Lea dx, msg101    ;1
Mov ah, 09
int 21h
Lea dx, msg102    ;2
Mov ah, 09
int 21h
Lea dx, msg103    ;3
Mov ah, 09
int 21h
Lea dx, msg104    ;4
Mov ah, 09
int 21h
Lea dx, msg105    ;5
Mov ah, 09
int 21h
Lea dx, msg106    ;6
Mov ah, 09
int 21h
Lea dx, msgs      ;msg
Mov ah, 09
int 21h

Mov dl, 10        ;next line
Mov ah, 02h
int 21h

Mov ah, 01       ;user input
int 21h  

Cmp al, 49      ;compare: Here jumps begin
Je stdn1        ;if user-input is 1 then it will go to stdn1 statement
jmp Comp1       ;if user-input is not 1 then it will go to Comp1 statement

stdn1:          ;stdn1 label will show the information of 1st student
Lea dx, Stud1   ;name of 1st student
Mov ah, 09
int 21h

Mov dl, 10     ;next line
Mov ah, 02h
int 21h

Lea dx, optn1   ;msg to get user-input to display further information
Mov ah, 09
int 21h

Mov dl, 10     ;next line
Mov ah, 02
int 21h

Mov ah, 01    ;user-input
int 21h

cmp al, 98   ;Compare: Here inner jumps begin

Je Address1 ;if user-input is a which then it will go to address1 statement
cmp al, 99  ;if user-input is not a then it will compare again
Je Cntct1   ;if user-input is b which then it will go to Cntct1 statement
cmp al, 97  ;if user-input is not b then it will compare again
Je Fname1   ;if user-input is c which then it will go to Fname1 statement
cmp al, 100 ;if user-input is not c then it will compare again
je grade1   ;if user-input is d which then it will go to grade1 statement
cmp al, 101 ;if user-input is not d then it will compare again
Jne jmpmsg1 ;if user-input is not e then it will go to jmpmsg1 statement
Bio1:       ;if user-input is e then it will execute Bio1 label which show the Bio-data of 1st student
Lea dx, Bioname1
Mov ah, 09
int 21h
Lea dx, BioFnameno1
Mov ah, 09
int 21h
Lea dx, BioAddressno1
Mov ah, 09
int 21h
Lea dx, BioContactinfono1
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h


jmpmsg1:      ;msg that tells your input is invalid
Lea dx, msg3
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Address1:     ;address1 statement displays the address of 1st student
Lea dx, Addressno1
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Cntct1:       ;cntct1 statement displays the contact of 1st student
Lea dx, Contactinfono1
Mov ah, 09
int 21h 

Mov ah, 4ch
int 21h

Fname1:       ;Fname1 statement displays the Father name of 1st student
Lea dx, Fnameno1
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Grade1:       ;grade1 statement displays the grade of 1st student
Mov dl, 10
Mov ah, 02
int 21h

Mov ah, 0   ;set the mode
mov al, 12  ;mode 12 VGA 16 colors
int 10h

mov ah, 01  ;set cursor   
mov bh, 0   ;at very first page
mov dh, 0   ;at very first row
mov dl, 01  ;at column no 1   
int 10h
mov ah, 09  ;write character  
mov al, 'C'
mov bl, 11  ;character color blue   
mov cx, 1   ;write 1 character
int 10h

Mov ah, 4ch
int 21h

Comp1:       ;comp1 statemtent will again compare whether the input is 2 3 4 5 or 6 
Cmp al, 50
Je stdn2
jmp Comp2

stdn2:
Mov dl, 10
Mov ah, 02h
int 21h
Lea dx, Stud2
Mov ah, 09
int 21h

Mov dl, 10
Mov ah, 02h
int 21h

Lea dx, optn1
Mov ah, 09
int 21h

Mov dl, 10
Mov ah, 02
int 21h

Mov ah, 01
int 21h

cmp al, 98

Je Address2
cmp al, 99
Je Cntct2
cmp al, 97
Je Fname2
cmp al, 100
je grade2
cmp al, 101
Jne jmpmsg2
Bio2:
Lea dx, Bioname2
Mov ah, 09
int 21h
Lea dx, BioFnameno2
Mov ah, 09
int 21h
Lea dx, BioAddressno2
Mov ah, 09
int 21h
Lea dx, BioContactinfono2
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h


jmpmsg2:
Lea dx, msg3
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h


Address2:
Lea dx, Addressno2
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Cntct2:
Lea dx, Contactinfono2
Mov ah, 09
int 21h 

Mov ah, 4ch
int 21h

Fname2:
Lea dx, Fnameno2
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Grade2:
Mov dl, 10
Mov ah, 02
int 21h

Mov ah, 0 
mov al, 12  
int 10h

mov ah, 01    
mov bh, 0   
mov dh, 0    
mov dl, 01     
int 10h
mov ah, 09    
mov al, 'F'
mov bl, 12     
mov cx, 1    
int 10h

Mov ah, 4ch
int 21h

Comp2:
Cmp al, 51
Je stdn3
jmp Comp3

stdn3:
Mov dl, 10
Mov ah, 02h
int 21h
Lea dx, Stud3
Mov ah, 09
int 21h


Mov dl, 10
Mov ah, 02h
int 21h

Lea dx, optn1
Mov ah, 09
int 21h

Mov dl, 10
Mov ah, 02
int 21h

Mov ah, 01
int 21h

cmp al, 98

Je Address3
cmp al, 99
Je Cntct3
cmp al, 97
Je Fname3
cmp al, 100
je grade3
cmp al, 101
Jne jmpmsg3
Bio3:
Lea dx, Bioname3
Mov ah, 09
int 21h
Lea dx, BioFnameno3
Mov ah, 09
int 21h
Lea dx, BioAddressno3
Mov ah, 09
int 21h
Lea dx, BioContactinfono3
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

jmpmsg3:
Lea dx, msg3
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h


Address3:
Lea dx, Addressno3
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Cntct3:
Lea dx, Contactinfono3
Mov ah, 09
int 21h 

Mov ah, 4ch
int 21h

Fname3:
Lea dx, Fnameno3
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Grade3:
Mov dl, 10
Mov ah, 02
int 21h

Mov ah, 0 
mov al, 12  
int 10h

mov ah, 01    
mov bh, 0   
mov dh, 0    
mov dl, 01     
int 10h
mov ah, 09    
mov al, 'D'
mov bl, 5     
mov cx, 1    
int 10h

Mov ah, 4ch
int 21h

Comp3:
Cmp al, 52
Je stdn4
jmp Comp4

stdn4:
Mov dl, 10
Mov ah, 02h
int 21h
Lea dx, Stud4
Mov ah, 09
int 21h


Mov dl, 10
Mov ah, 02h
int 21h

Lea dx, optn1
Mov ah, 09
int 21h

Mov dl, 10
Mov ah, 02
int 21h

Mov ah, 01
int 21h

cmp al, 98

Je Address4
cmp al, 99
Je Cntct4
cmp al, 97
Je Fname4
cmp al, 100
je grade4
cmp al, 101
Jne jmpmsg4
Bio4:
Lea dx, Bioname4
Mov ah, 09
int 21h
Lea dx, BioFnameno4
Mov ah, 09
int 21h
Lea dx, BioAddressno4
Mov ah, 09
int 21h
Lea dx, BioContactinfono4
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

jmpmsg4:
Lea dx, msg3
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h


Address4:
Lea dx, Addressno4
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Cntct4:
Lea dx, Contactinfono4
Mov ah, 09
int 21h 

Mov ah, 4ch
int 21h

Fname4:
Lea dx, Fnameno4
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Grade4:

Mov dl, 10
Mov ah, 02
int 21h

Mov ah, 0 
mov al, 12  
int 10h

mov ah, 01    
mov bh, 0   
mov dh, 0    
mov dl, 01     
int 10h
mov ah, 09    
mov al, 'B'
mov bl, 10     
mov cx, 1    
int 10h

Mov ah, 4ch
int 21h

Comp4:
cmp al, 53
Je stdn5
jmp Comp5

Stdn5:
Mov dl, 10
Mov ah, 02h
int 21h
Lea dx, Stud5
Mov ah, 09
int 21h


Mov dl, 10
Mov ah, 02h
int 21h

Lea dx, optn1
Mov ah, 09
int 21h

Mov dl, 10
Mov ah, 02
int 21h

Mov ah, 01
int 21h

cmp al, 98

Je Address5
cmp al, 99
Je Cntct5
cmp al, 97
Je Fname5
cmp al, 100
je grade5
cmp al, 101
Jne jmpmsg5
Bio5:
Lea dx, Bioname5
Mov ah, 09
int 21h
Lea dx, BioFnameno5
Mov ah, 09
int 21h
Lea dx, BioAddressno5
Mov ah, 09
int 21h
Lea dx, BioContactinfono5
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

jmpmsg5:
Lea dx, msg3
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h


Address5:
Lea dx, Addressno5
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Cntct5:
Lea dx, Contactinfono5
Mov ah, 09
int 21h 

Mov ah, 4ch
int 21h

Fname5:
Lea dx, Fnameno5
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Grade5:

Mov dl, 10
Mov ah, 02
int 21h

Mov ah, 0 
mov al, 12  
int 10h

mov ah, 01    
mov bh, 0   
mov dh, 0    
mov dl, 01     
int 10h
mov ah, 09    
mov al, 'C'
mov bl, 11     
mov cx, 1    
int 10h


Mov ah, 4ch
int 21h

Comp5:
cmp al, 54
Je stdn6
Lea dx, msg3
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Stdn6:
Mov dl, 10
Mov ah, 02h
int 21h
Lea dx, Stud6
Mov ah, 09
int 21h


Mov dl, 10
Mov ah, 02h
int 21h

Lea dx, optn1
Mov ah, 09
int 21h

Mov dl, 10
Mov ah, 02
int 21h

Mov ah, 01
int 21h

cmp al, 98

Je Address6
cmp al, 99
Je Cntct6
cmp al, 97
Je Fname6
cmp al, 100
je grade6
cmp al, 101
Jne jmpmsg6
Bio6:
Lea dx, Bioname6
Mov ah, 09
int 21h
Lea dx, BioFnameno6
Mov ah, 09
int 21h
Lea dx, BioAddressno6
Mov ah, 09
int 21h
Lea dx, BioContactinfono6
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

jmpmsg6:
Lea dx, msg3
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Address6:
Lea dx, Addressno6
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Cntct6:
Lea dx, Contactinfono6
Mov ah, 09
int 21h 

Mov ah, 4ch
int 21h

Fname6:
Lea dx, Fnameno6
Mov ah, 09
int 21h

Mov ah, 4ch
int 21h

Grade6:

Mov dl, 10
Mov ah, 02
int 21h

Mov ah, 0 
mov al, 12  
int 10h

mov ah, 01    
mov bh, 0   
mov dh, 0    
mov dl, 01     
int 10h
mov ah, 09    
mov al, 'A'
mov bl, 13     
mov cx, 1    
int 10h

mov ah,4ch
int 21h


Mov ah, 4ch
int 21h

End start
