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
! Generación de la matriz usada en el ejercicio 14
!
! Integrantes:
!     Casillas Muñoz, Diego Armando
!     García Santiago, Berenice Elisama
!     Solana Mejía, Haydee Amairany
!
! Fecha de entrega: 11/diciembre/2020
!--------------------------------------------------------------------------------------------------!
program genMat14

   use modRW
   
   implicit none
   integer::UnEsc,i,j
   double precision, dimension(25,26):: Sist
   double precision, dimension(25):: b=(/ 1.,0.,-1.,0.,2.,1.,0.,-1.,0.,2.,1.,0.,-1.,0.,2.,1.,0.,&
                                        &-1.,0.,2.,1.,0.,-1.,0.,2. /)

   call system('clear')

   do i=1,25
      do j=1,26
         if (i==j .AND. i<=25) then
            Sist(i,j)=4.0
         else if (j==i+1 .AND. ANY((/ 1,2,3,4,6,7,8,9,11,12,13,14,16,17,18,19,21,22,&
                                     &23,24 /)==i)) then
            Sist(i,j)=.5
         else if (j==i-1 .AND. ANY((/ 2,3,4,5,7,8,9,10,12,13,14,15,17,18,19,20,22,23,&
                                     &24,25 /) ==i)) then
            Sist(i,j)=.5
         else if (j==i+5 .AND. i<=20) then
            Sist(i,j)=.5
         else if (j==i-5 .AND. 5<i .AND. i<26 ) then
            Sist(i,j)=.5
         else if (j==26) then
            Sist(i,j)=b(i)
         else
            Sist(i,j)=0.
         endif
      end do
   end do

   call writeMat('mat14.dat', Sist)


end program genMat14
!--------------------------------------------------------------------------------------------------!