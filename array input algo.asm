.model small
.stack 100h

.data
a db ?
C DB ?
.code
main proc
    mov AX, @data
    mov DS, AX
    
    MOV SI, OFFSET ARR
    MOV CX,5
    
    INPUT:
    MOV AH,01
    INT 21H
    MOV [SI],AL
    INC SI
    LOOP INPUT;
    
    MOV[SI],'$'
    MOV SI, OFFSET ARR
    MOV CX,5
    
    OUTPUT:
    MOV AH,02
    MOV DL, [SI]
    INT 21H
    INC SI
    LOOP OUTPUT
    
    

    
    mov AH, 4CH
    int 21h ;return 0
    
main endp

end main
