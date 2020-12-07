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
! Generación de la matriz usada en el ejercicio 15
!
! Integrantes:
!     Casillas Muñoz, Diego Armando
!     García Santiago, Berenice Elisama
!     Solana Mejía, Haydee Amairany
!
! Fecha de entrega: 11/diciembre/2020
!--------------------------------------------------------------------------------------------------!
program genMat15

   use modRW
   
   implicit none
   integer::UnEsc,i,j
   double precision, dimension(40,41):: Sist
   double precision, dimension(40):: b=(/ -4.5, -3.0, -1.5, 0.0, 1.5, 3.0, 4.5, 6.0, 7.5, 9.0, 10.5,&
                                         &12.0, 13.5, 15.0, 16.5, 18.0, 19.5, 21.0, 22.5, 24.0,&
                                         &25.5, 27.0, 28.5, 30.0, 31.5, 33.0, 34.5, 36.0, 37.5, &
                                         &39.0, 40.5, 42.0, 43.5, 45.0, 46.5, 48.0, 49.5, 51.0,&
                                         &52.5, 54.0 /)
!El vector b se generó mediante una lista por comprensión en python: [1.5*i-6 for i in range(1,41)]

   call system('clear')

   do i=1,40
      do j=1,41
         if (i==j .AND. i<=40) then
            Sist(i,j)=2.*i
         else if (j==i+1 .AND. i<=39) then
            Sist(i,j)=-1.
         else if (j==i-1 .AND. i>1 .AND. i<41) then
            Sist(i,j)=-1.
         else if (j==41) then
            Sist(i,j)=b(i)
         else
            Sist(i,j)=0.
         endif
      end do
   end do

   call writeMat('mat15.dat', Sist)


end program genMat15
!--------------------------------------------------------------------------------------------------!