#!/bin/bash
# -*- ENCODING: utf-8 -*-

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
# Script para la ejecución del ejercicio 13 de la serie 1.
#
# Integrantes:
#     Casillas Muñoz, Diego Armando
#     García Santiago, Berenice Elisama
#     Solana Mejía, Haydee Amairany
#
# Fecha de entrega: 11/diciembre/2020

############################################INSTRUCCIONES###########################################

#Dentro de una terminal y ubicado a la altura de este script (al usar el comando 'ls' debería verse
#este script 'exe.sh' enlistado) ejecute alguno de los siguientes comandos:

#	1) sh exe.sh
#   2) bash exe.sh

#Cualquiera de ambos debería funcionar en la terminal, sin embargo preferentemente usar el comando
#correspondiente a la shell que posea el usuario.
####################################################################################################

#Compilación y ejecución de la generación de la matriz del sistema de ecuaciones
gfortran ../modRW.f08 generacionMatriz/genMat13.f08 -o exe
./exe
rm exe modrw.mod

#Compilación y ejecución de la generación del programa principal
gfortran -O3 ../NumKind.f08 ../modSEL.f08 ../modRW.f08 Pr_13.f08 -o exe
./exe
rm exe modrw.mod modsel.mod numkind.mod

echo '¡Programas compilados y ejecutados correctamente!'
echo 'Revisar el archivo "readme.txt" para consultar los resultados.'
