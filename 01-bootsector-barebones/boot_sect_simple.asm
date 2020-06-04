; A simple boot sector program that loops forever
loop:
    jmp loop

;NASM supports two special tokens in expressions, allowing calculations to involve the current assembly position: 
;the $ and $$ tokens. $ evaluates to the assembly position at the beginning of the line containing the expression; 
;so you can code an infinite loop using JMP $. $$ evaluates to the beginning of the current section; 
;so you can tell how far into the section you are by using ($-$$).

times 510-($-$$) db 0
dw 0xaa55
