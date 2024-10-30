.model small
.stack 100h
.data 
newline db 0ah,0dh,'$'
char1 db ?
.code
.main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
  
    mov char1,al 
  
    lea dx,newline
    mov ah,9
    int 21h 
    
    mov dl,char1
  
    mov ah,2
    int 21h
  
    mov ah,4ch
    int 21h
  
ret
