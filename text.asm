.model small
.stack 100h
.data

note_freqs dw 3822, 3608, 3405, 3214, 3034, 2863, 2703, 2551, 2408, 2273, 2145, 2024 ; Frequencies for C4 to B4
delay_val dw 600 ; Adjust this value to control note duration

.code
start:
    mov ax, @data
    mov ds, ax

    mov cx, 12 ; Number of notes in the melody

    mov si, 0 ; Index for note_freqs array

play_music:
    mov dx, note_freqs[si]
    call play_note

    mov cx, delay_val
    call delay

    inc si
    loop play_music

    mov ah, 4Ch ; Exit program
    int 21h

play_note:
    mov al, 0B6h ; Set the PIT to play a square wave
    out 43h, al

    mov ax, 11865 ; Set the frequency
    div dx
    out 42h, al
    mov al, ah
    out 42h, al

    ret

delay:
    mov dx, cx
delay_loop:
    dec dx
    jnz delay_loop
    ret


end start
