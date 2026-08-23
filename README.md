# AC-Practicas

> Prácticas de la asignatura **Arquitectura de Computadores** — Grado en Ingeniería Informática
> Autor: **Juan Jiménez Serrano**

Este repositorio recoge las cuatro prácticas realizadas en la asignatura de Arquitectura de Computadores, cubriendo desde la programación en ensamblador 8086 hasta la segmentación (pipeline) de procesadores RISC académicos, pasando por la jerarquía de memoria y los modos de direccionamiento.

Cada práctica está en su propia carpeta, con el código/ficheros de la simulación, la presentación en `.pptx` correspondiente y un `README.md` con el enlace a la presentación en Google Slides.

## Estructura del repositorio

```
AC-Practicas/
├── AC 1/    # Ensamblador 8086: gráficos por modo de vídeo y rutina residente (TSR)
├── AC 2/    # Jerarquía de memoria: análisis de caché a partir de trazas de acceso
├── AC 3/    # Modos de direccionamiento y microprogramación
└── AC 4/    # Segmentación (pipeline): ensamblador DLX y desenrollado de bucles
```

## AC 1 — Ensamblador 8086

Dos programas en ensamblador x86 (sintaxis MASM/TASM) que se ejecutan en modo real de MS-DOS:

- **P1** (`P1limpio.asm` → `P1.EXE`): cambia a modo de vídeo gráfico VGA (13h, 320×200, 256 colores) y recorre toda la pantalla dibujando píxeles con un array de colores.
- **P2** (`P2limpio.asm` → `P2.COM`): rutina residente en memoria (TSR) que se engancha a la interrupción del temporizador (`INT 1Ch`), cuenta las interrupciones recibidas y, al llegar a un número determinado, espera una pulsación de tecla antes de finalizar el programa.
- `Lote.bat` lanza ambos ejecutables.

**Archivos:** `P1limpio.asm`, `P2limpio.asm`, `P1.EXE`, `P2.COM`, `Lote.bat`, `AC Practica 1.pptx`.

## AC 2 — Jerarquía de memoria (caché)

Estudio del comportamiento de una memoria caché a partir de trazas de acceso a memoria:

- `fichero1.prg`, `fichero2.prg`, `fichero3.prg`: trazas de acceso (tipo de operación + dirección hexadecimal por línea) usadas como entrada del simulador de caché.
- `Tablas/`: seis hojas de cálculo (`.xlsx`) con los gráficos de columnas resultantes del análisis (tasas de aciertos/fallos según configuración de caché).

**Archivos:** `fichero1.prg`, `fichero2.prg`, `fichero3.prg`, `Tablas/*.xlsx`, `AC Practica 2 Juan Jimenez Serrano.pptx`.

## AC 3 — Modos de direccionamiento

Ejercicios sobre los distintos modos de direccionamiento de un procesador:

- `AC Tema 3 Plantilla Ejercicios y Modos Direccionamiento.docx`: plantilla de ejercicios resueltos.
- `P3EJ9.CRO`: fichero de microprograma/cronograma correspondiente al ejercicio 9, con instrucciones de bajo nivel (`SUB`, `BNZ`, `ST`, `CLE`, `END`).

**Archivos:** `AC Tema 3 Plantilla Ejercicios y Modos Direccionamiento.docx`, `P3EJ9.CRO`, `AC Practica 3.pptx`.

## AC 4 — Segmentación (pipeline)

Programas en ensamblador para la arquitectura académica **DLX** (instrucciones como `ADDI`, `LW`, `SW`, `ADD`, `LF`, `ADDF`, `SF`, `BNEZ`), usados para estudiar riesgos de datos/estructurales y el rendimiento del pipeline al sumar los elementos de un vector:

- `EnteroB.s`: suma en bucle de un vector de enteros.
- `FloatB.s`: misma operación con datos en coma flotante.
- `OpBucle.s`: versión con el bucle desenrollado manualmente (10 iteraciones explícitas) para reducir las paradas del pipeline por dependencias.

**Archivos:** `EnteroB.s`, `FloatB.s`, `OpBucle.s`, `AC Practica 4.pptx`.

## Cómo usar este repositorio

- **AC 1:** ensamblar `P1limpio.asm`/`P2limpio.asm` con MASM/TASM y ejecutar `P1.EXE`/`P2.COM` (o `Lote.bat`) en un emulador de MS-DOS como DOSBox.
- **AC 2:** cargar los ficheros `.prg` en el simulador de caché usado en la asignatura para reproducir los resultados de `Tablas/`.
- **AC 3:** consultar la plantilla `.docx` para el enunciado y resolución de los ejercicios, y el fichero `.CRO` con el simulador correspondiente de la asignatura.
- **AC 4:** cargar los ficheros `.s` en un simulador de la arquitectura DLX para trazar la ejecución del pipeline.

Cada carpeta incluye además la presentación de la práctica (`.pptx`) y un enlace directo a la misma en Google Slides dentro de su propio `README.md`.

## Autor

**Juan Jiménez Serrano** — Grado en Ingeniería Informática.
