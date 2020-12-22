# ¿Qué? ¿Aún hay quien programa en FORTRAN?

Así es, este lenguaje de programación fue dejado a su suerte por la mayoría de los desarrolladores de software, pero la comunidad científica lo lleva en el corazón :hearts:.


Los programas en este repositorio fueron elaborados como tarea para la asignatura de Inversión de Datos Geofísicos impartida en la Facultad de Ingeniería de la UNAM. Me tomo la libertad de subirlos porque son de mi autoría y creo que podrían ser de ayuda para los estudiantes de nuevas generaciones. 


**OJO**: Lo que menos quiero es que estos códigos sean plagiados y entregados tal cual al profesor, pero sí espero que sirvan como fuente de consulta si alguna duda llega a surgir. Además, probablemente algunos de los códigos aquí presentados estén mal resueltos... si yo fuera estudiante revisaría 5 veces un programa antes de siquiera intentar plagiarlo.


Si bien estos programas son de mi autoría, es necesario mencionar que varios están basados principalmente en los ejercicios realizados en clase bajo la tutela del Dr. Mauricio Nava. De hecho, podría decir que se trata de complementos y modificaciones de los programas que él propone durante el curso (si están tomando esta materia sabrán de lo que hablo).

Sin más preámbulos, los programas en este repositorio corresponden a los siguientes problemas:

## Introducción a Fortran

### Pr_03.f08
Escribir un programa en Fortran 2008 en el que se asignen valores a los seis tipos básicos de variables (integer, real, double precision, character, logical y complex; una variable por cada tipo) desde el teclado y se desplieguen las variables y sus valores en terminal al ejecutarlo.

### Pr_04.f08
Codificar, compilar y ejecutar un programa que efectúe las siguientes operaciones básicas y despliegue los resultados en terminal:


c=a+b; d=a-b; k=i+j; l=i-j


e=a*b; f=a/b; m=i*j; n=i/j


g=a\**3; h=b\**(1.0/2.0); o=i\**3; p=j\**(1.0/2.0)


Las variables **a**, **b**, **c**, **d**, **e**, **f** y **g** deben ser enteras, mientras que las variables **i**, **j**, **k**, **l**, **m**, **n**, **o** y **p** deben ser reales.
Asignar valores arbitrarios (válidos) a todas las variables en el código.

### Pr_05.f08
Modificar el programa Pr 04.f08 para que pida los valores de **a**, **b**, **i** y **j** desde el teclado.

### Pr_12.f08
Escribir un programa (Pr 12.f08) para calcular las raı́ces de una ecuación de segundo grado con coeficientes reales, a partir de la fórmula cuadrática:


![Aquí deberías ver la chicharronera xd](/imagenes/pr12.jpeg)


Los coeficientes reales a, b y c se deben introducir desde el teclado y las soluciones deben desplegarse en la terminal con seis decimales de precisión. El programa debe tener la capacidad de calcular raı́ces reales y complejas.

### Pr_13.f08

Escribir un programa (Pr 13.f08) para obtener muestras discretas de la señal:


![Aquí deberías ver una senoidal xd](/imagenes/pr13.jpeg)


Almacenarlas en archivos de dos columnas: t y f (t). 
* Discretizar la señal con un intervalo de muestreo adecuado para evitar aliasing y almacenar las muestras en un archivo nombrado fd_no_aliasing.dat.
* Discretizar la señal con un intervalo de muestreo no adecuado, de tal forma que la señal discreta contenga aliasing y almacenar las muestras en un archivo nombrado fd_aliasing.dat.

### Pr_16.f08

Dadas las matrices (y vector) con elementos reales:


![Aquí deberías ver una imagen xd](/imagenes/pr16.jpeg)


Escribir un programa (Pr 16.f08) para realizar las siguientes operaciones:


![Aquí deberías ver una imagen xd](/imagenes/pr16_1.jpeg)


![Aquí deberías ver una imagen xd](/imagenes/pr16_2.jpeg)


El programa debe generar un archivo de nombre Result_Pr_16.dat con los resultados de las operaciones indicadas (5 decimales de precisión).

### Pr_17.f08

Escribir un programa (Pr 17.f08) que solicite ingresar los elementos de una matriz [A] 3×3 y un vector {b} 3×1 desde el teclado, indicando la posición que tendrá cada elemento en el arreglo correspondiente (ı́ndices). Posteriormente, deberá realizar la operación [B] = [A] {b} y desplegar la matriz resultante [B] en terminal. Los resultados en terminal deben desplegarse con 6 decimales de precisión.


## Serie 1

Si bien los programas enlistados los realicé yo, debo decir que es gracias a [Any Solana](https://www.linkedin.com/in/haydee-amairany-solana-mej%C3%ADa-b848b21bb/) fue un trabajo mucho más sencillo, pues se encargó de tener a punto la mayor parte de los módulos que se usaron para poder resolver los ejercicios.


### Ejercicios 07, 08 y 09

Resolver los siguientes sistemas de ecuaciones con el algoritmo de Jacobi:

7. Sistema de ecuaciones:

* 20x+y-2z = 12

* 3x+20y-z=-18

* 2x-3y+20z=25


8. Sistema de ecuaciones:

* 10x-y+2z = 6

* -1x+11y+z= 22

* 2x-y+10z=-10


9. Sistema de ecuaciones:

* 10w+x+2y = 6

* -w+11x-y-3z=25

* 2w-x-10y-z=-1

* 3x-y+8z=15















