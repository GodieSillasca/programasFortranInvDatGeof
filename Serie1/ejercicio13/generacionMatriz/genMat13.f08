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
! Generación de la matriz usada en el ejercicio 13
!
! Integrantes:
!     Casillas Muñoz, Diego Armando
!     García Santiago, Berenice Elisama
!     Solana Mejía, Haydee Amairany
!
! Fecha de entrega: 4/diciembre/2020
!--------------------------------------------------------------------------------------------------!
program genMat13

   use modRW
   
   implicit none
   integer::UnEsc,i,j
   double precision, dimension(16,17):: Sist
   double precision, dimension(16):: b=(/ 1.902207,1.051143,1.175689,3.480083,0.819600,-.264419,&
                                         &-.412789,1.175689,0.913337,-.150209,-.264419,1.051143,&
                                         &1.966694,0.913337,0.819600,1.902207 /)

   call system('clear')

   do i=1,16
      do j=1,17
         if (i==j .AND. i<=16) then
            Sist(i,j)=4.0
         else if (j==i+1 .AND. ANY((/ 1,2,3,5,7,9,10,11,13,14,15 /) == i)) then
            Sist(i,j)=-1.
         else if (j==i-1 .AND. ANY((/ 2,3,4,6,7,8,10,11,12,14,15,16 /) == i)) then
            Sist(i,j)=-1.
         else if (j==i+4 .AND. ANY((/ 1,2,3,4,5,6,7,8,9,10,11,12 /) == i)) then
            Sist(i,j)=-1.
         else if (j==i-4 .AND. ANY((/ 5,6,7,8,9,10,11,12,13,14,15,16 /) == i)) then
            Sist(i,j)=-1.
         else if (j==17) then
            Sist(i,j)=b(i)
         else
            Sist(i,j)=0.
         endif
      end do
   end do

   call writeMat('mat13.dat', Sist)


end program genMat13
!--------------------------------------------------------------------------------------------------!