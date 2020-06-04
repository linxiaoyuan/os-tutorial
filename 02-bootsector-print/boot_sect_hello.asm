mov ah, 0x0e ; tty mode
mov al, 'G'
int 0x10
mov al, 'o'
int 0x10
int 0x10
mov al, 'd'
int 0x10 ; 'l' is still on al, remember?
mov al, ' '
int 0x10
mov al, 'J'
int 0x10
mov al, 'o'
int 0x10
mov al, 'b'
int 0x10
jmp $ ; jump to current address = infinite loop

; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55 
