!--------------------------------------------------------------------------------------------------!
! UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
! FACULTAD DE INGENIERÍA
! DIVISIÓN DE INGENIERÍA EN CIENCIAS DE LA TIERRA
! DEPARTAMENTO DE GEOFÍSICA
!
! Asignatura: Inversión de Datos Geofísicos
!   Profesor: Dr. Mauricio Nava Flores
!
! Programa 16 del curso introductorio de Fortran 2008
!
! Fecha de elaboración: 09/Oct/2020
! Autor: Casillas Muñoz, Diego Armando
!--------------------------------------------------------------------------------------------------!
program p16

   implicit none
   !real:: d, f, modA, modB
   integer::i,j,UnEsc
   real, dimension(3,3):: A,B,E,G
   real, dimension(3)::d=(/1.,2.5,3.9/)
   real,dimension(1,3)::dTranspuesta
   real, dimension(9):: vecA=(/ 1.2,0.5,0.1,-3.1,2.7,2.4,2.,-5.5,8. /), &
                       &vecB=(/ 0.,2.2,-.4,5.,-1.,3.8,-1.5,6.5,4.2 /)
   real, dimension(1,3)::C
   real,dimension(3,1)::dProductoA,dProductoB,F


   ! Insertando los elementos de A:
   A = reshape(vecA, (/ 3,3 /), order=(/ 1,2 /))
   B = reshape(vecB, (/ 3,3 /), order=(/ 1,2 /))

   !Abriendo la unidad de escritura
   open(NewUnit=UnEsc, file='Result_Pr_16.dat', status='replace', action='write')

   write(UnEsc,'(a)') '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)') '$$$$$  Presentando los Datos  $$$$$$$$$$$$$$$'
   write(UnEsc,'(a)') '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)') ''

   !Escribiendo la Matriz A en el documento
   write(UnEsc,'(a)') 'Matriz A: '
   do i=1,3
      write(UnEsc,'(3(f8.5,1x))') (A(i,j), j=1,3)
   end do
   write(UnEsc,'(a)') ''

   !Escribiendo la matriz B en el documento
   write(UnEsc,'(a)') 'Matriz B: '
   do i=1,3
      write(UnEsc,'(3(f8.5,1x))') (B(i,j), j=1,3)
   end do
   write(UnEsc,'(a)') ''

   !Escribiendo el vector d e el documento
   write(UnEsc,'(a)') 'Matriz d: '
   do i=1,3
      write(UnEsc,'(f8.5)') d(i)
   end do
   write(UnEsc,'(a)') ''

   !!!!!!!!!!!!!!!!!!!!!!!!Calculando C!!!!!!!!!!!!!!!!!!!!!!!
   write(UnEsc,'(a)')'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)')'$$$$$$$$$$$$$$$$$  Matriz C  $$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)')'$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)') ''
   dTranspuesta=reshape(d,(/ 1,3 /))

   !Por si se quiere imprimir d transpuesta:
   !print '(a)', 'Vector d Transpuesto: '
   !do i=1,1
   !   print '(3(f8.5,1x))', (dTranspuesta(i,j),j=1,3)
   !end do

   C=matmul(dTranspuesta,A)

   write(UnEsc,'(a)')''
   write(UnEsc,'(a)') 'Matriz C: '
   do i=1,1
      write(UnEsc,'(3(f10.5,1x))') (C(i,j), j=1,3)
   end do
   write(UnEsc,'(a)')''

   write(UnEsc,'(a)') '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)') '$$$$$$$$$$$$$$  Matriz E  $$$$$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)') '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)') ''

   E=matmul(A,B)
   write(UnEsc,'(a)')''
   write(UnEsc,'(a)') 'Matriz E: '
   do i=1,3
      write(UnEsc,'(3(f12.5,1x))') (E(i,j), j=1,3)
   end do
   write(UnEsc,'(a)')''

   write(UnEsc,'(a)') '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)') '$$$$$$$$$$$$$$  Matriz F  $$$$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)') '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)') ''
   
   dProductoA=matmul(A,reshape(d,(/ 3,1 /)))
   dProductoB=matmul(B,reshape(d,(/ 3,1 /)))
   F = dProductoB+dProductoA

   write(UnEsc,'(a)') 'Matriz F: '
   do i=1,3
      write(UnEsc,'(f8.5)') F(i,1)
   end do
   write(UnEsc,'(a)') ''


   write(UnEsc,'(a)') '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)') '$$$$$$$$$$$$$$  Matriz G  $$$$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)') '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
   write(UnEsc,'(a)') ''

   G=(A*B)/matmul(A,B)

   write(UnEsc,'(a)')''
   write(UnEsc,'(a)') 'Matriz G: '
   do i=1,3
      write(UnEsc,'(3(f12.5,1x))') (G(i,j), j=1,3)
   end do
   write(UnEsc,'(a)')''

   !Cerrando la unidad de escritura
   close(UnEsc)


end program p16
!--------------------------------------------------------------------------------------------------!