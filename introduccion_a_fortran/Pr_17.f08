!--------------------------------------------------------------------------------------------------!
! UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
! FACULTAD DE INGENIERÍA
! DIVISIÓN DE INGENIERÍA EN CIENCIAS DE LA TIERRA
! DEPARTAMENTO DE GEOFÍSICA
!
! Asignatura: Inversión de Datos Geofísicos
!   Profesor: Dr. Mauricio Nava Flores
!
! Programa 17 del curso introductorio de Fortran 2008
!
! Fecha de elaboración: 08/Oct/2020
! Autor: Casillas Muñoz, Diego Armando
!--------------------------------------------------------------------------------------------------!
program p17

   !Declaración de variables
   implicit none
   integer::i,j
   real, dimension(3,3):: A
   real, dimension(3,1):: be,B

   ! Limpieza de terminal:
   call system('clear')

   !Pidiendo los elementos de la matriz A
   print*, 'Hola usuario, por favor ingresa los valores de los elementos (1,1), (1,2) y (1,3) de&
            &la matriz A'
   print*,
   read *, A(1,1), A(1,2), A(1,3)
   print*,
   print*, 'Ahora, por favor ingresa los valores de los elementos (2,1), (2,2) y (2,3) de la&
            & matriz A'
    print*,
   read *, A(2,1), A(2,2), A(2,3)
   print*,
   print*, 'Ahora, por favor ingresa los valores de los elementos (3,1), (3,2) y (3,3) de la&
            & matriz A'
   print*,
   read *, A(3,1), A(3,2), A(3,3)
   print*,
   print*, 'Ahora ingresa los valores (1,1), (2,1) y (3,1) del vector b:'
   print*,
   read *, be(1,1), be(2,1), be(3,1)
   print*,
   print*,
   print*,
   print*, 'La matriz B = [A]{b} es:'
   print*,
   B=matmul(A,be)
   write(*,'(a)') 'Matriz B: '
   do i=1,3
      write(*,'(f11.6)') B(i,1)
   end do
   write(*,'(a)') ''

end program p17
!--------------------------------------------------------------------------------------------------!