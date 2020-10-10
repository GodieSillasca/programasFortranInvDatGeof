!--------------------------------------------------------------------------------------------------!
! UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
! FACULTAD DE INGENIERÍA
! DIVISIÓN DE INGENIERÍA EN CIENCIAS DE LA TIERRA
! DEPARTAMENTO DE GEOFÍSICA
!
! Asignatura: Inversión de Datos Geofísicos
! Profesor: Dr. Mauricio Nava Flores
! 
! Programa Pr_05.f08 del curso introductorio de Fortran 2008
! Modificación del programa Pr_04.f08
!Los valores de a, b, i y j se introducen por el teclado.
! 
! Fecha de elaboración: 23/Sep/2020
! Autor: Casillas Muñoz, Diego Armando
!--------------------------------------------------------------------------------------------------!
program Pr_05

   ! Sección de inclusión de módulos (no aplica en este caso)

   ! Seccion de declaración de variables
   implicit none
   integer:: a,b,c,d,e,f,g
   real:: i,j,k,l,m,n,o,p,h

   ! Limpieza de terminal:
   call system('clear')

   ! Sección del programa principal: Asignación de valores a las variables.

   print*,'Por favor, inserta los valores solicitados según la sintaxis de FORTRAN.'
   print*,'Inserta el valor de "a" (entero): '
   read*,a
   print*,'Inserta el valor de "b" (entero): '
   read*,b
   print*,'Inserta el valor de "i" (real): '
   read*,i
   print*,'Inserta el valor de "j" (real): '
   read*,j
   

   c=a+b; d=a-b; k=i+j; l=i-j
   e=a*b; f=a/b; m=i*j; n=i/j
   g=a**3; h=b**(1.0/2.0); o=i**3; p=j**(1.0/2.0)
   
   print*,'c=a+b=',c
   print*,'d=a-b=',d
   print*,'k=i+j=',k
   print*,'l=i-j=',l
   print*,'e=a*b=',e
   print*,'f=a/b=',f
   print*,'m=i*j=',m
   print*,'n=i/j=',n
   print*,'g=a**3=',g
   print*,'h=b**(1.0/2.0)',h
   print*,'o=i**3=',o
   print*,'p=j**(1.0/2.0)=',p

end program Pr_05
!--------------------------------------------------------------------------------------------------!