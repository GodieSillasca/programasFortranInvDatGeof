#--------------------------------------------------------------------------------------------------!
# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# FACULTAD DE INGENIERÍA
# DIVISIÓN DE INGENIERÍA EN CIENCIAS DE LA TIERRA
# DEPARTAMENTO DE GEOFÍSICA
#
# Asignatura: Inversión de Datos Geofísicos
#   Profesor: Dr. Mauricio Nava Flores
#
# SERIE 1
#  
# Archivo 'readme.txt' del ejercicio 14 de la serie 1.
#
# Integrantes:
#     Casillas Muñoz, Diego Armando
#     García Santiago, Berenice Elisama
#     Solana Mejía, Haydee Amairany
#
# Fecha de entrega: 11/diciembre/2020
#--------------------------------------------------------------------------------------------------!

Contenido:
	1.- Instrucciones de ejecución.
	2.- Organización de los resultados obtenidos.
	3.- Clasificación de los métodos usados según su rendimiento computacional.

#--------------------------------------------------------------------------------------------------!

1.- Instrucciones de ejecución.

Primero que nada, verificar que se encuentran disponibles los archivos y directorios indispensables
para la ejecución del script principal:

   a. exe.sh
   b. Pr_14.f08
   c. readme.txt
   d. generacionMatriz (directorio)
   e. genMat14.f08 (dentro de generacionMatriz)
   f. resultados (directorio)
   g. elim_gauss, gauss_seidel, jacobi, LU y SOR (directorios dentro de resultados)

El resto de los archivos de texto se generan tras la ejecución de los programas.

Dentro de una terminal de Linux y ubicado a la altura de este script (al usar el comando 'ls' 
debería verse este archivo 'readme.txt' enlistado) ejecute alguno de los siguientes comandos:

   1) sh exe.sh
   2) bash exe.sh

Cualquiera de ambos debería funcionar en la terminal, sin embargo preferentemente usar el comando
correspondiente a la shell que posea el usuario.

Automáticamente se generarán los archivos con los resultados, se limpiará la terminal y se van a
eliminar los archivos generados por la compilación y ejecución para conservar únicamente los 
resultados.

Para mayores referencias respecto a la ejecución revisar el archivo 'exe.sh' ubicado en la carpeta
'ejercicio14' a la misma altura de este documento.


#--------------------------------------------------------------------------------------------------!

2.- Organización de los resultados obtenidos.

Tras ejecutar el script 'exe.sh' se ejecutarán dos programas. El primero de ellos se ubica dentro
del directorio 'generacionMatriz' (genMat14.f08) y se encarga de generar el archivo de texto con la
matriz que representa el sistema de ecuaciones planteado para este ejercicio. El segundo programa
en ejecutarse (Pr_14.f08) lee el archivo de texto generado por el programa anterior (o sea, lee la 
matriz que representa el sistema de ecuaciones) y calcula el vector solución mediante los métodos 
solicitados, así como también calcula la matriz inversa de la matriz 'a' y el tiempo de cálculo 
para cada métoodo numérico utilizado.

a. La matriz generada se almacena en el documento llamado mat14.dat y se encuentra en el directorio
   'ejercicio14' a la misma altura de este documento.
b. Los vectores solución, la comprobación de los mismos y la matriz inversa calculada se encuentran
   dentro del directorio 'resultados', y se encuentran organizados dentro de directorios nombrados
   según el método numérico utilizado.
c. Los documentos están nombrados de la siguiente manera, dependiendo del método numérico usado:
		* Vector solución ---> '*_x.dat'
		* Comprobación del vector solución (b calculada) ---> '*_bSol.dat'
		* Matriz inversa de la matriz 'a' ---> '*_matInv14.dat'
   Recordar que estos se encuentran organizados dentro del directorio 'resultados' según el método
   numérico usado para el cálculo.
d. El tiempo de ejecución para calcular la matriz inversa se especifica en el archivo
   'tiemposMedidos.dat' generado durante la ejecución del programa principal. Se encuentra en 
   el directorio 'ejercicio14' a la misma altura de este documento.

#--------------------------------------------------------------------------------------------------!

3.- Clasificación de los métodos usados según su rendimiento computacional.

Los métodos que se utilizaron se enlistan a continuación del más rápido al más lento según los 
resultados del archivo 'tiemposMedidos.dat':

   1. Gauss-Seidel
   2. SOR
   3. Eliminación Gaussiana
   4. Jacobi
   5. LU