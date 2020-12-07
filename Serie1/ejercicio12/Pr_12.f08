!--------------------------------------------------------------------------------------------------!
! UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
! FACULTAD DE INGENIERÍA
! DIVISIÓN DE INGENIERÍA EN CIENCIAS DE LA TIERRA
! DEPARTAMENTO DE GEOFÍSICA
!
! Asignatura: Inversión de Datos Geofísicos
!   Profesor: Dr. Mauricio Nava Flores
!
! SERIE 1
!  
! Número de ejercicio: 12
!
! Integrantes:
!     Casillas Muñoz, Diego Armando
!     García Santiago, Berenice Elisama
!     Solana Mejía, Haydee Amairany
!
! Fecha de entrega: 11/diciembre/2020
!--------------------------------------------------------------------------------------------------!
program Pr_12

   use modRW
   use modSEL
   
   implicit none
   real(dp), allocatable:: Dat(:,:), A(:,:), b(:), bsol(:), x(:)

   call system('clear')

   Dat=readMat('sistema12.dat')
   A=Dat(:,1:3)
   b=Dat(:,4)

   x=Gauss_S(A, b, 250_il, 1.e-6_dp)

   bsol=matmul(A, x)

   call writeVect('x_GS.dat', x)
   call writeVect('bsol_GS.dat', bsol)

   print '(a)', 'Fin del programa!!!'

end program Pr_12
!--------------------------------------------------------------------------------------------------!