!--------------------------------------------------------------------------------------------------!
! UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
! FACULTAD DE INGENIERÍA
! DIVISIÓN DE INGENIERÍA EN CIENCIAS DE LA TIERRA
! DEPARTAMENTO DE GEOFÍSICA
!
! Asignatura: Inversión de Datos Geofísicos
!  Profesor: Dr. Mauricio Nava Flores
! 
! Programa Pr_12.f08 del curso introductorio de Fortran 2008
! 
! Fecha de elaboración: 02/octubre/2020
! Autor: Casillas Muñoz, Diego Armando
!--------------------------------------------------------------------------------------------------!
program Pr_12

   implicit none
   complex:: x1, x2
   real:: a, b, c,parteReal,parteImaginaria,raiz

   print*,'Este programa calcula las raíces de una ecuación de segundo grado con coeficientes &
   &reales.'
   print*,'Inserta el coeficiente "a": '
   read*,a
   print*,'Inserta el coeficiente "b": '
   read*,b
   print*,'Inserta el coeficiente "c": '
   read*,c

   !Para el caso de raíces reales
   IF(((b**2.)-(4.*a*c))>=0) then
      ! Calculando raíz 1:
      raiz=((b**2.)-(4.*a*c))**.5
      x1= (-b+raiz)/(2.*a)
      ! Calculando raíz 2:
      x2= (-b-raiz)/(2.*a)
      print*,'-----------------------------------------------------------------------------'
      write(*,*) 'Las raíces son:'
      write(*,'(a,f15.6)') "Raíz 1: ",x1
      write(*,'(a,f15.6)') "Raíz 2: ",x2
   ELSE IF(((b**2.)-(4.*a*c))<0) then
      !Parte real
      parteReal=-b/(2.*a)
      !Parte imaginaria
      parteImaginaria=(abs(((b**2.)-(4.*a*c)))**.5/(2.*a))
      !Presentando en pantalla
      print*,'-----------------------------------------------------------------------------'
      write(*,*) 'Las raíces son:'
      write(*,'(a,f10.6,a,f10.6)') "Raíz 1: ",parteReal," + i",abs(parteImaginaria)
      write(*,'(a,f10.6,a,f10.6)') "Raíz 2: ",parteReal," - i",abs(parteImaginaria)
   END IF 

end program Pr_12
!--------------------------------------------------------------------------------------------------!