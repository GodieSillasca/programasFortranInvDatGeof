!--------------------------------------------------------------------------------------------------!
! UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
! FACULTAD DE INGENIERÍA
! DIVISIÓN DE INGENIERÍA EN CIENCIAS DE LA TIERRA
! DEPARTAMENTO DE GEOFÍSICA
!
! Asignatura: Inversión de Datos Geofísicos
! Profesor: Dr. Mauricio Nava Flores
! 
! Programa Pr_03.f08 del curso introductorio de Fortran 2008
!  Modificación del programa Pr_02 con todos los valores asignados mediante el teclado.
! 
! Fecha de elaboración: 23/Sep/2020
! Autor: Casillas Muñoz, Diego Armando
!--------------------------------------------------------------------------------------------------!
program Pr_03

   ! Sección de inclusión de módulos

   ! Seccion de declaración de variables
   implicit none
   integer:: entera
   real:: real_sp
   double precision:: real_dp
   character(len=20):: cadena
   logical:: decision
   complex:: i

   ! Limpieza de terminal:
   call system('clear')

   ! Sección del programa principal: Asignación de valores a las variables.
   print*,'Por favor inserta los valores que se piden. Cuida que el formato que proporciones sea &
   &acorde a la sintaxis de FORTRAN para evitar errores de ejecución.',''
   print*,'Inserta un entero: '
   read*,entera
   print*,'Inserta un real: '
   read*,real_sp
   print*,'Inserta un real de precisión doble: '
   read*,real_dp
   print*,'Inserta una cadena de caracteres: '
   read*,cadena
   print*,'Inserta un booleano: '
   read*,decision
   print*,'Inserta un imaginario: '
   read*,i

   ! Despliegue en terminal de las variables y sus valores:
   print*,'variable tipo integer: entera = ', entera
   write(*,*)'variable tipo real: real_sp = ', real_sp
   print*,'variable tipo double precision: real_dp = ', real_dp
   write(*,*)'variable tipo character(len=20): cadena = ', cadena
   print*,'variable tipo logical: decision = ', decision
   write(*,*)'variable tipo complex: i = ', i

end program Pr_03
!--------------------------------------------------------------------------------------------------!