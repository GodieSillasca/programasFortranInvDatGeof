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
! Número de ejercicio: 14
!
! Integrantes:
!     Casillas Muñoz, Diego Armando
!     García Santiago, Berenice Elisama
!     Solana Mejía, Haydee Amairany
!
! Fecha de entrega: 11/diciembre/2020
!--------------------------------------------------------------------------------------------------!
program Pr_14

   use modRW
   use modSEL
   use NumKind
   
   implicit none
   real(dp), allocatable:: Dat(:,:), A(:,:), b(:), bsol(:), x(:), InvA(:,:)
   real :: start, finish
   integer ::UnEsc

   call system('clear')

   Dat=readMat('mat14.dat')
   A=Dat(:,1:25)
   b=Dat(:,26)

   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   !!!!!!!!!!!!!!!!!!!!!PARTE !: Obtener vector solución!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

   !Por método de eliminación gaussiana

   x=gauss(A, b, 1.e-6_dp)

   bsol=matmul(A, x)

   call writeVect('resultados/elim_gauss/ElGauss_x.dat', x)
   call writeVect('resultados/elim_gauss/ElGaus_bSol.dat', bsol)

   !Por Gauss-Seidel

   x=Gauss_S(A, b, 250_il, 1.e-6_dp)

   bsol=matmul(A, x)

   call writeVect('resultados/gauss_seidel/GaussSeid_x.dat', x)
   call writeVect('resultados/gauss_seidel/GausSeid_bSol.dat', bsol)

   !Por LU

   x=LU_decomp(A, b, 1.e-6_dp)

   bsol=matmul(A, x)

   call writeVect('resultados/LU/LU_x.dat', x)
   call writeVect('resultados/LU/LU_bSol.dat', bsol)

   !Por Jacobi

   x=Jacobi(A, b, 250_il, 1.e-6_dp)

   bsol=matmul(A, x)

   call writeVect('resultados/jacobi/jacobi_x.dat', x)
   call writeVect('resultados/jacobi/jacobi_bSol.dat', bsol)

   call system('clear')

   !Por SOR

   x=SOR(A, b, 250_il, 1.e-6_dp,1.3_dp)

   bsol=matmul(A, x)

   call writeVect('resultados/SOR/SOR_x.dat', x)
   call writeVect('resultados/SOR/SOR_bSol.dat', bsol)

   call system('clear')

   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   !!!!!!!!!!!!!!PARTE 2: Matriz inversa y medición de tiempo de ejecución!!!!!!!!!!!!!!!
   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

   open(NewUnit=UnEsc, file='tiemposMedidos.dat', status='replace', action='write')
   write(UnEsc,*) 'Tiempo de cálculo de la matriz inversa'
   write(UnEsc,*) ''
   write(UnEsc,*) ''

   !Cálculo de la matriz inversa (gauss-seidel):
   call cpu_time(start)
      InvA=Inv(A, 'GS')
   call cpu_time(finish)
   !print '("Tiempo de ejecución (Gauss-Seidel) = ",f20.10," segundos.")',finish-start
   write(UnEsc,*) 'Tiempo de ejecución (Gauss-Seidel) = ',finish-start,' segundos'
   call writeMat('resultados/gauss_seidel/gaussSeid_matInv14.dat', InvA)

      !Cálculo de la matriz inversa (SOR):
   call cpu_time(start)
      InvA=Inv(A, 'SOR')
   call cpu_time(finish)
   !print '("Tiempo de ejecución (SOR) = ",f20.10," segundos.")',finish-start
   write(UnEsc,*) 'Tiempo de ejecución (SOR) = ',finish-start,' segundos'
   call writeMat('resultados/SOR/SOR_matInv14.dat', InvA)

   !Cálculo de la matriz inversa (eliminación Gaussiana):
   call cpu_time(start)
      InvA=Inv(A, 'gauss')
   call cpu_time(finish)
   write(UnEsc,*) 'Tiempo de ejecución (elim_gauss) = ',finish-start,' segundos'
   call writeMat('resultados/elim_gauss/elim_gauss_matInv14.dat', InvA)

   !Cálculo de la matriz inversa (jacobi):
   call cpu_time(start)
      InvA=Inv(A, 'jacobi')
   call cpu_time(finish)
   !print '("Tiempo de ejecución (Jacobi) = ",f20.10," segundos.")',finish-start
   write(UnEsc,*) 'Tiempo de ejecución (Jacobi) = ',finish-start,' segundos'
   call writeMat('resultados/jacobi/jacobi_matInv14.dat', InvA)

   !Cálculo de la matriz inversa (LU):
   call cpu_time(start)
      InvA=Inv(A, 'LU')
   call cpu_time(finish)
   !print '("Tiempo de ejecución (LU) = ",f20.10," segundos.")',finish-start
   write(UnEsc,*) 'Tiempo de ejecución (LU) = ',finish-start,' segundos'
   call writeMat('resultados/LU/LU_matInv14.dat', InvA)

   close(UnEsc)


end program Pr_14
!--------------------------------------------------------------------------------------------------!