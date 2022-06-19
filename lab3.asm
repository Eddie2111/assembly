.MODEL SMALL
stack segment


.DATA        
; add your data here!
pkey db "press any key...$"
a db "Enter an alphabet: $"
v db "it is a vowel.$"
c db "it is a consonant.$"
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
mov bl,al ;move input to bl


cmp bl,097
je line1
cmp bl,101
je line1
cmp bl,105
je line1
cmp bl,111
je line1
cmp bl,117
je line1



int 21h
jmp e



line1:    
mov ah,2
int 21h  
mov dx,10
mov ah,2
int 21h

lea dx, v
mov ah,9
int 21h  


e:

mov ah,2
int 21h  
mov dx,10
mov ah,2
int 21h

lea dx, c
mov ah, 9
int 21h ;output string at 



mov ax, 4c00h ;exit to operating system.
int 21h
ends




MOV AX,4C00H
INT 21H
    
MAIN ENDP 
    END MAIN                          
