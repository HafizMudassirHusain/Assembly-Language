.model small
.stack 100h
 .data
    result db 0

.code
_start:
    ; Get two numbers from the user
    mov ah, 01h     ; Input function
    int 21h
    sub al, '0'     ; Convert ASCII to integer
    mov bl, al      ; Store the first number in bl

    mov ah, 01h     ; Input function
    int 21h
    sub al, '0'     ; Convert ASCII to integer
    mov cl, al      ; Store the second number in cl

    ; Get the operation from the user (1 for add, 2 for subtract, 3 for multiply, 4 for divide)
    mov ah, 01h     ; Input function
    int 21h
    sub al, '0'     ; Convert ASCII to integer

    ; Perform the selected operation
    cmp al, 1       ; Add
    je add_numbers

    cmp al, 2       ; Subtract
    je subtract_numbers

    cmp al, 3       ; Multiply
    je multiply_numbers

    cmp al, 4       ; Divide
    je divide_numbers

    ; Display the result
    mov ah, 02h     ; Output function
    mov dl, result  ; Display the result
    add dl, '0'     ; Convert to ASCII
    int 21h

    ; Exit the program
    mov ah, 4ch
    int 21h

add_numbers:
    add bl, cl      ; Add numbers
    mov result, bl  ; Store result
    jmp display_result

subtract_numbers:
    sub bl, cl      ; Subtract numbers
    mov result, bl  ; Store result
    jmp display_result

multiply_numbers:
    imul bl,cl     ; Multiply numbers
    mov result, bl  ; Store result
    jmp display_result

divide_numbers:
    mov ah, 0       ; Clear AH for division
    mov al, bl      ; Move dividend into AL
    mov bl, cl      ; Move divisor into BL
    idiv bl         ; Divide AL by BL, result in AL, remainder in AH
    mov result, al  ; Store quotient
    jmp display_result

display_result:
    ; Display the result
    mov ah, 02h     ; Output function
    mov dl, result  ; Display the result
    add dl, '0'     ; Convert to ASCII
    int 21h

    ; Exit the program
    mov ah, 4ch
    int 21h

 end _start