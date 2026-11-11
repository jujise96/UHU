.MODEL SMALL
.CODE
     org 100h
Programa_Int:
     JMP Reside                 ; 1 instruccion  
contador_int db 0

Rutina_Servicio PROC
    CLI                         ; 1 instruccion 
    INC contador_int            ; 1 instruccion 
    CMP contador_int, 90        ; 1 instruccion 
    JNE fin                     ; 1 instruccion 
     
    MOV AH, 0                   ; 1 instruccion
    INT 16h                     ; 1 instruccion (esperar tecla)
    
    MOV AH, 4ch                 ; 1 instruccion
    INT 21h                     ; 1 instruccion (salida a MS-DOS)
fin:
   STI                          ; 1 instruccion
   IRET                         ; 1 instruccion
ENDP

Reside: ;etiqueta para determinar la direccion siguiente a la última de la rutina  que debe quedar residente
  MOV DX, offset Rutina_Servicio; 1 instruccion
  MOV AX, 0                     ; 1 instruccion
  MOV ES, AX                    ; 1 instruccion
  MOV SI, 1ch*4                 ; 1 instruccion
  CLI                           ; 1 instruccion
  MOV ES:[SI], DX               ; 1 instruccion
  MOV ES:[SI+2], CS             ; 1 instruccion
  STI                           ; 1 instruccion
  MOV DX, offset Reside         ; 1 instruccion
  INT 27h                       ; 1 instruccion (esta interrupcion deja residente todo el codigo que hay desde 'Reside' hacia arriba)
END Programa_Int