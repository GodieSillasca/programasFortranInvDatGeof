!--------------------------------------------------------------------------------------------------!
! UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
! FACULTAD DE INGENIERÍA
! DIVISIÓN DE INGENIERÍA EN CIENCIAS DE LA TIERRA
! DEPARTAMENTO DE GEOFÍSICA
!
! Asignatura: Inversión de Datos Geofísicos
!  Profesor: Dr. Mauricio Nava Flores
! 
! Programa Pr_13.f08 del curso introductorio de Fortran 2008
! 
! Fecha de elaboración: 3/oct/2020
! Autor: Diego Armando Casillas Muñoz
!--------------------------------------------------------------------------------------------------!
program Pr_13

   !La frecuencia máxima presente en la señal dada es de 25 Hz.
   !Para realizar un muestreo sin aliasing se debe evaluar la señal cada 0.02 segundos.
   !Una tasa mayor implicaría aliasing, para este caso propongo un muestreo cada 0.2 segundos.

   implicit none
   integer:: i, Naliasing,Nnoaliasing, UnEsc, UnEsc2
   real:: t, dtConAlias=0.2,dtSinAlias=0.02,valorT
   real, parameter:: pi=4.0*atan(1.0)

   ! Definición del número de datos por calcular (puntos del dominio CON ALIASING):
   Naliasing=int(5/dtConAlias)+1

   ! Definición del número de datos por calcular (puntos del dominio SIN ALIASING):
   Nnoaliasing=int(5/dtSinAlias)+1

   !----------------------Escribiendo el archivo CON aliasing-------------------------------------!

   ! Apertura de unidad de escritura (archivo):
   open(NewUnit=UnEsc, file='fd_aliasing.dat', status='replace', action='write')

   ! Escritura en el archivo:
   write(UnEsc,*) 'Señal muestreada con aliasing'
   write(UnEsc,'(2(a11,6x))') 't','f(t)'

   ! Ciclo de cómputo - escritura:
   do i=1,Naliasing
      t=(0+(i-1))*dtConAlias
      valorT=(((2*sin(20*pi*t)))-((3*cos(50*pi*t))))
      write(UnEsc,*) t, valorT
   end do

   ! Se cierra la unidad de escritura:
   close(UnEsc)

   !----------------------Escribiendo el archivo SIN aliasing-------------------------------------!

   ! Apertura de unidad de escritura (archivo):
   open(NewUnit=UnEsc2, file='fd_no_aliasing.dat', status='replace', action='write')

   ! Escritura en el archivo:
   write(UnEsc,*) 'Señal muestreada sin aliasing'
   write(UnEsc,'(2(a11,6x))') 't','f(t)'

   ! Ciclo de cómputo - escritura:
   do i=1,Nnoaliasing
      t=(0+(i-1))*dtSinAlias
      write(UnEsc2,*) t, ((2*sin(20*pi*t))-(3*cos(50*pi*t)))
   end do

   ! Se cierra la unidad de escritura:
   close(UnEsc2)

end program Pr_13
!--------------------------------------------------------------------------------------------------!