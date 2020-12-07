!Este módulo sirve para escribir y leer vectores y matrices en archivos de texto.
!No incluyo el módulo como tal porque es propiedad del Doctor Nava y es lo mínimo que los
!estudiantes del curso deberían tener al entrar a sus clases. El resto de los códigos necesitan 
!de este módulo para funcionar. 
!Debería incluir:


module modRW

   contains

   function readVect(Arch) result(x)
      
      implicit none
      character(len=*):: Arch
      integer:: i, N, UnLec, stat
      double precision, allocatable:: x(:)

      !Función para leer vectores de archivos de texto.
      !Recibe un archivo y devuelve el vector.

   end function readVect

   function readMat(Arch) result(x)
      
      implicit none
      logical:: delimitador=.false.
      character(len=*):: Arch
      character(len=1000000):: buffer
      integer:: i, j, M, N, UnLec, stat
      double precision, allocatable:: x(:,:)

      !Función para leer y matrices de archivos de texto.
      !Recibe un archivo y devuelve la matriz.

   end function readMat

   subroutine writeVect(Arch, Vector)

      implicit none
      character(len=*):: Arch
      integer:: UnEsc, i, N
      double precision:: Vector(:)

      !Śubrutina que escribe un vector en un archivo.
      !Recibe el nombre del archivo y un Vector.


   end subroutine writeVect

   subroutine writeMat(Arch, Matriz)

      implicit none
      character(len=*):: Arch
      integer:: UnEsc, i, j, N, M
      double precision:: Matriz(:,:)

      !Subrutina que escribe una matriz en un archivo.
      !Recibe el nombre del archivo y una Matriz.

   end subroutine writeMat

end module modRW
!--------------------------------------------------------------------------------------------------!