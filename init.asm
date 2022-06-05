
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL
.STACK 100h

.DATA
; INCLUDE VARIABLES
.CODE

MAIN PROC
;INITIALIZE DS    
    MOV AX,@DATA
    ;MOV DS,AX
;INITIALIZE CODE    

 ;TASK->1
    ;MOV AX, 5
    ;MOV AX, BX
 ;TASK->2
    ;MOV AX, 5
    ;MOV BX, 6
    ;MOV CX,AX
    ;MOV AX,BX
    ;MOV BX,CX
 ;TASK->3  
 MOV AX, 5
 MOV BX, 6
 ;ADD AX,BX
 XOR AX, AX
;INC DC
;DEC DX
;NEG DX
;MUL BX
;XOR, 
 
 




MOV AX,4C00H
INT 21H
    
MAIN ENDP 
    END MAIN


                                    
                                   



