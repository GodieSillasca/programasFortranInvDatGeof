!Este módulo sirve para llamar funciones y subrutinas para la resolución de sistemas de ecuaciones
!lineaes mediante distintos métodos numéricos.
!No incluyo el módulo como tal porque es propiedad del Doctor Nava y es lo mínimo que los
!estudiantes del curso deberían tener al entrar a sus clases. El resto de los códigos necesitan 
!de este módulo para funcionar. 
!Debería incluir:


module modSEL

   use NumKind

   contains

   function gauss(A, b, tol) result(x)

      implicit none
      integer(il):: i, j, n, err 
      real(dp):: tol
      real(dp), allocatable:: s(:) 
      real(dp), allocatable:: A_aux(:,:), b_aux(:) 
      real(dp), intent(in):: A(:,:), b(:) 
      real(dp),allocatable::x(:)

      !Función para resolver un sistema de ecuaciones lineales mediante eliminación gaussiana.
      !Recibe la matriz de coeficientes A, el vector de términos independientes b, un valor de
      !tolerancia y devuelve el vector solución x.

   end function gauss
   !-----------------------------------------------------------------------------------------------!

 
   function LU_decomp(A, b, tol) result(x)

      implicit none
      integer(il):: err ! se recomienda IL para enteros
      integer(il), allocatable::o(:) !vector aux real
      real(dp),  allocatable::s(:) !vector aux real
      real(dp):: tol ! valor de tolerancia mucho menor a 1
      real(dp), allocatable:: A_aux(:,:), b_aux(:) ! para hacer los cálculos
      real(dp), intent(in):: A(:,:), b(:) ! son los datos de entrada
      real(dp),allocatable::x(:) !para los resultados

      !Función para resolver un sistema de ecuaciones lineales mediante factorización LU.
      !Recibe la matriz de coeficientes A, el vector de términos independientes b, un valor de
      !tolerancia y devuelve el vector solución x.

   end function LU_decomp
   !-----------------------------------------------------------------------------------------------!

 
   function Chol_decomp(A, b) result(x)

      implicit none
      integer(il)::i,j,n,err
      real(dp),intent(in)::A(:,:), b(:)
      real(dp),allocatable::A_aux(:,:), L(:,:), y(:)
      real(dp),allocatable::x(:)

      !Función para resolver un sistema de ecuaciones lineales mediante factorización Cholesky.
      !Recibe la matriz de coeficientes A, el vector de términos independientes b y devuelve el vector 
      !solución x.

   end function Chol_decomp
  
   function Jacobi(A, b, nIter, tol) result(x)

      implicit none
      integer(il)::i,j,k,n 
      integer(il),intent(in)::nIter
      real(dp):: l2
      real(dp), intent(in):: tol
      real(dp), intent(in)::A(:,:), b(:)
      real(dp),allocatable::x(:), x0(:)

      !Función para resolver un sistema de ecuaciones lineales mediante el método de Jacobi.
      !Recibe la matriz de coeficientes A, el vector de términos independientes b, el número de
      !iteraciones y devuelve el vector solución x.

   end function Jacobi
 

   function Inv(A, method) result(X)
      
      implicit none
      integer(il)::i,n
      character(len=*),intent(in)::method
      real(dp), intent(in):: A(:,:) 
      real(dp), allocatable:: b(:)
      real(dp), allocatable:: X(:,:)

      !Esta función sirve para calcular la inversa de una matriz con distintos métodos
      !numéricos. Necesita del resto de las funciones en este módulo.
      !Recibe la matriz A y el método que se quiere usar.


   end function Inv
   !-----------------------------------------------------------------------------------------------!

   function Gauss_S(A, b, nIter, tol) result(x)

      implicit none
      integer(il):: i, j, k, n
      integer(il), intent(in):: nIter
      real(dp):: l2, suma
      real(dp), intent(in):: tol
      real(dp), intent(in):: A(:,:), b(:)
      real(dp), allocatable:: x(:), x0(:)

      !Función para resolver un sistema de ecuaciones lineales mediante el método de Gauss-Seidel.
      !Recibe la matriz de coeficientes A, el vector de términos independientes b, el número de
      !iteraciones, una tolerancia y devuelve el vector solución x.

   end function Gauss_S
   !-----------------------------------------------------------------------------------------------!

   function SOR(A, b, nIter, tol, w) result(x)

      implicit none
      integer(il):: i, j, k, n
      integer(il), intent(in):: nIter
      real(dp):: l2, suma, w
      real(dp), intent(in):: tol
      real(dp), intent(in):: A(:,:), b(:)
      real(dp), allocatable:: x(:), x0(:), x1(:)

      !Función para resolver un sistema de ecuaciones lineales mediante el método de sobrerrelajación
      !sucesiva.
      !Recibe la matriz de coeficientes A, el vector de términos independientes b, el número de
      !iteraciones, una tolerancia, el factor de relajación y devuelve el vector solución x.

   end function SOR
   !-----------------------------------------------------------------------------------------------!


end module modSEL
!--------------------------------------------------------------------------------------------------!