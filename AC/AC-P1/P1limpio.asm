.MODEL SMALL
.STACK 100H
.DATA   ;seccion de datos
color DB 01h,02h,03h,04h,05h,06h,07h,08h,09h,0ah,0bh,0ch,0dh,0eh,0fh,00h  ;array con colores
.CODE   ;Seccion de codigo
MAIN PROC     
    ;cargamos los datos
    MOV AX, @DATA       ; 1 instruccion
    MOV DS, AX          ; 1 instruccion
    MOV SI, 0           ; 1 instruccion
    ; Establecer modo de video 13h (320x200, 256 colores)
    MOV AH, 0           ; 1 instruccion
    MOV AL, 13H         ; 1 instruccion
    INT 10H             ; 1 instruccion
    ; Bucle para recorrer todas las filas (Y: 0 - 199)
    MOV DX, 0           ; 1 instruccion     ; Y = 0
Y_LOOP:
    MOV CX, 0           ; 1 instruccion     ; X = 0 en cada nueva fila 
X_LOOP:
    ; Dibujar pixel en (CX, DX) con color 10h
    MOV AH, 0CH         ; 1 instruccion
    MOV AL, color[SI]   ; 1 instruccion    ; Color en array
    INT 10H             ; 1 instruccion
    ; Avanzar en X
    INC CX              ; 1 instruccion
    INC CX              ; 1 instruccion
    CMP CX, 320         ; 1 instruccion
    JL X_LOOP           ; 1 instruccion    ; Si CX < 320, seguir dibujando fila 
    ; Avanzar en Y
    INC DX              ; 1 instruccion
    INC DX              ; 1 instruccion
    CMP DX, 200         ; 1 instruccion
    JL Y_LOOP           ; 1 instruccion    ; Si DX < 200, seguir pintando pantalla   
    ;gestiono el color que toca
    INC SI              ; 1 instruccion
    CMP SI, 16          ; 1 instruccion
    JL NOSIRESET        ; 1 instruccion
    MOV SI, 0           ; 1 instruccion
NOSIRESET:     
    ;reinicio
    MOV DX, 0           ; 1 instruccion
    MOV CX, 0           ; 1 instruccion
    CMP CX, 0           ; 1 instruccion
    JNL X_LOOP          ; 1 instruccion
    ; Restaurar modo de texto
    MOV AH, 0           ; 1 instruccion
    MOV AL, 03H         ; 1 instruccion
    INT 10H             ; 1 instruccion
    ; Salir del programa
    MOV AX, 4C00H       ; 1 instruccion
    INT 21H             ; 1 instruccion
MAIN ENDP
END MAIN
