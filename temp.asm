.MODEL SMALL
stack segment
dw 128 dup(0)

.DATA        
; add your data here!
pkey db "press any key...$"
a db "Enter a number: $"
b db "Enter second number$"
c db "it is a positive number$"
ends    

; INCLUDE VARIABLES
.CODE  



MAIN PROC



mov ax, @data
mov ds, ax
mov es, ax


lea dx, a ;Print a
mov ah,9
int 21h
mov ah,1
int 21h
mov bl,al ;move input to bl ;check here

mov BX, 0

cmp bl,30 ;compare the two inputs
jl line1


line1:    
mov ah,2
int 21h  
mov dx,10
mov ah,2
int 21h

lea dx, c
mov ah,9
int 21h    



MOV AX,4C00H
INT 21H
    
MAIN ENDP 
    END MAIN
