 .model small
.stack 100h
.data
    file_name db 'image.bin', 0
    buffer db 256
    widt dw 0
    height dw 0
    scale dw 2  ; Adjust the scale for better ASCII representation

.code

_start:
    ; Load image file
    mov ah, 3dh     ; Open file
    mov al, 0       ; Read-only mode
    lea dx, [file_name]
    int 21h
    mov bx, ax      ; File handle

    ; Read image dimensions
    mov ah, 3fh     ; Read from file
    mov cx, 4       ; Read 4 bytes (width)
    lea dx, [widt]
    int 21h
    mov cx, 4       ; Read 4 bytes (height)
    lea dx, [height]
    int 21h

    ; Display ASCII art
    mov ah, 3fh     ; Read from file
    mov cx, widt*height  ; Read entire file
    lea dx, [buffer]
    int 21h

    mov si, [buffer]
    mov di, 0       ; Index for buffer

draw_ascii:
    ; Convert pixel to ASCII character (simplified)
    mov al, [si]
    mov ah, 0       ; Clear upper bits
    imul ax,scale  ; Scale for better representation
    add al, ' '     ; Offset to start ASCII from space
    mov ah, 0eh     ; Teletype
    int 10h

    ; Move to the next pixel
    inc si
    inc di

    ; Check for end of buffer
    cmp di, cx
    jl draw_ascii

    ; Close the file
    mov ah, 3eh
    int 21h

    ; Terminate program
    mov ah, 4ch
    int 21h
 end _start