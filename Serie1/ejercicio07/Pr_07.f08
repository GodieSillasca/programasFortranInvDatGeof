!!--------------------------------------------------------------------------------------------------!
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
! Número de ejercicio: 7
!
! Integrantes:
!     Casillas Muñoz, Diego Armando
!     García Santiago, Berenice Elisama
!     Solana Mejía, Haydee Amairany
!
! Fecha de entrega: 11/diciembre/2020
!--------------------------------------------------------------------------------------------------!
program Pr_07

   use modRW
   use modSEL

   implicit none
   real(dp), allocatable:: Dat(:,:), A(:,:), b(:), bsol(:), x(:)

   ! Limpieza de terminal:
   call system('clear')

   ! Carga de datos:
   Dat=readMat('Sistema_Jacobi.dat')

   ! Asignación de variables para resolver el sistema [A]{x}={b}:
   A=Dat(:,1:3)
   b=Dat(:,4)

   ! Solución del sistema de ecuaciones por el método de Jacobi:
   x=Jacobi(A, b, 1000_il, 1.e-6_dp)

   ! Comprobación de la solución
   bsol=matmul(A, x)

   ! Almacenamiento de resultados en archivos ASCII:
   ! 1. Vector solución del sistema:
   call writeVect('x.dat', x)

   ! 2. Vector bsol para comprobar solución:
   call writeVect('bsol.dat', bsol)

   ! Fin del programa:
   print '(a)', 'Fin del programa!!!'

end program Pr_07
!--------------------------------------------------------------------------------------------------!