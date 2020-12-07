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
# Makefile del ejercicio: 8
#
# Integrantes:
#     Casillas Muñoz, Diego Armando
#     García Santiago, Berenice Elisama
#     Solana Mejía, Haydee Amairany
#
# Fecha de entrega: 11/diciembre/2020
#--------------------------------------------------------------------------------------------------!
# Variables:
CF = gfortran
OC = -Wall -O3 -Wno-uninitialized
DE = ..

DExec = DirExe
DComp = DirComp

VPATH = $(DE)

# Acciones:
all: dir comp
	$(CF) $(OC) $(DComp)/NumKind.o $(DComp)/modRW.o $(DComp)/modSEL.o $(DComp)/Pr_08.o \
	-o $(DExec)/exe

dir:
	- mkdir -p $(DExec) $(DComp) $(DRes)

comp: NumKind.o modRW.o modSEL.o Pr_08.f08
	$(CF) -I$(DComp) $(OC) -c Pr_08.f08 -o $(DComp)/Pr_08.o

NumKind.o: NumKind.f08
	$(CF) -J$(DComp) $(OC) -c $(DE)/NumKind.f08 -o $(DComp)/NumKind.o

modRW.o: modRW.f08
	$(CF) -J$(DComp) $(OC) -c $(DE)/modRW.f08 -o $(DComp)/modRW.o

modSEL.o: modSEL.f08
	$(CF) -J$(DComp) $(OC) -c $(DE)/modSEL.f08 -o $(DComp)/modSEL.o

exe:
	$(DExec)/exe

# Limpieza de directorio:
.PHONY: clean
clean:
	- rm -r $(DExec) $(DComp) $(DRes)
	clear
#--------------------------------------------------------------------------------------------------#