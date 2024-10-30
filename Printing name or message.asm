.model small
.stack 100h
.data 
namee db 'Nasim$'
.code
.main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,namee
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
  
ret
