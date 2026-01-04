comment {

 This formula file contains five formulas based on an idea briefly described
 on Kerry Mitchell's Web page:
                  http://www.primenet.com/~lkmitch/

 The triangle inequality states that the modulus of a complex sum a + b is
 bounded as follow:
                 ||a| - |b|| <= |a + b| <= |a| + |b|

 In the classic Mandel and Julia formula:
                      znew = zold * zold + c
 since znew, zold, and c are all complex numbers, the triangle inequality
 applies, therefore:
       ||zold * zold| - |c|| <= |znew| <= |zold * zold| + |c|
 and:
                  |znew| - ||zold * zold| - |c||
       0 <= --------------------------------------------- <= 1
             |zold * zold| + |c| - ||zold * zold| - |c||

 The previous expression, averaged over the total number of iterations for
 each pixel, is used as a coloring index.  Let's call it "theta".

 The easiest way to have Fractint use theta instead of the iterations count
 is to set z to:
                       e^(2 * i * pi * theta)
 and to use decomp=256.

 Since in most images, theta doesn't take all the values between 0 and 1
 (this may entail a too small range of colors), I introduced a parameter
 (imag(p1)) for adjusting theta.

 All five formulas use the algorithm described above but whereas the first
 versions (tri-mandel and tri-julia) produce color banding, the second
 versions use a trick that reduces the banding: theta is the average of 11
 values produced by 11 different bailout values.

}

tri-mandel   { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; Thanks to Kerry Mitchell for the idea!
               ; real(p1) = bailout (10^10 recommended)
               ; imag(p1) must be different from 0 (>=1 recommended)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
   c = z1 = pixel , b = mz1 = cabs(z1) , summ = 1
   iter = 1 , bailout = real(p1) , k = imag(p1)*(0.0,6.28319530718)
   :
   iter = iter + 1
   a = mz1 * mz1
   z1 = z1 * z1 + c
   mz1 = cabs(z1)
   IF (mz1 > bailout)
      z = exp (summ * k / iter)
   ELSE
      summ = summ + (mz1-abs(a-b)) / (a+b - abs(a-b))
   ENDIF
   mz1 <= bailout
   }

tri-mandel-2 { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; Thanks to Kerry Mitchell for the idea!
               ; real(p1) = bailout (1024 recommended)
               ; imag(p1) must be different from 0 (>=1 recommended)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
   c = z1 = pixel , b = mz1 = cabs(z1) , summ = iter = 1
   b1 = abs(real(p1)) , f = b1^0.1
   b2 = b1*f , b3 = b2*f , b4 = b3*f , b5 = b4*f , b6 = b5*f
   b7 = b6*f , b8 = b7*f , b9 = b8*f , b10 = b9*f , b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1 , a = mz1 * mz1
   z1 = z1 * z1 + c , mz1 = cabs(z1) , a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1 , summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2 , summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3 , summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4 , summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5 , summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6 , summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7 , summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8 , summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9 , summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10 , summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter , summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
   }

tri-julia    { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; Thanks to Kerry Mitchell for the idea!
               ; real(p1) = bailout (10^10 recommended)
               ; imag(p1) must be different from 0 (>=1 recommended)
               ; p2 = parameter for the Julia set
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
   z1 = pixel , mz1 = cabs(z1) , b = cabs(p2) , summ = 0
   iter = 0 , bailout = real(p1) , k = imag(p1)*(0.0,6.28319530718)
   :
   iter = iter + 1
   a = mz1 * mz1
   z1 = z1 * z1 + p2
   mz1 = cabs(z1)
   IF (mz1 > bailout)
      z = exp (summ * k / iter)
   ELSE
      summ = summ + (mz1-abs(a-b)) / (a+b - abs(a-b))
   ENDIF
   mz1 <= bailout
   }

tri-julia-2  { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; Thanks to Kerry Mitchell for the idea!
               ; real(p1) = bailout (1024 recommended)
               ; imag(p1) must be different from 0 (>=1 recommended)
               ; p2 = parameter for the Julia set
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
   z1 = pixel , mz1 = cabs(z1) , b = cabs(p2) , summ = iter = 0
   b1 = abs(real(p1)) , f = b1^0.1
   b2 = b1*f , b3 = b2*f , b4 = b3*f , b5 = b4*f , b6 = b5*f
   b7 = b6*f , b8 = b7*f , b9 = b8*f , b10 = b9*f , b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1 , a = mz1 * mz1
   z1 = z1 * z1 + p2 , mz1 = cabs(z1) , a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1 , summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2 , summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3 , summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4 , summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5 , summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6 , summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7 , summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8 , summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9 , summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10 , summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter , summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
   }

tri-fn+fn    { ; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
               ; Thanks to Kerry Mitchell for the idea!
               ; real(p1) = bailout
               ; imag(p1) must be different from 0 (>=1 recommended)
               ; z=fn1(z) + p2*fn2(z)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
   z1 = pixel , mz1 = cabs(z1) , summ = iter = 0
   b1 = abs(real(p1)) , f = b1^0.1
   b2 = b1*f , b3 = b2*f , b4 = b3*f , b5 = b4*f , b6 = b5*f
   b7 = b6*f , b8 = b7*f , b9 = b8*f , b10 = b9*f , b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1 , za = fn1(z1) , a = cabs(za)
   zb = p2*fn2(z1) , b = cabs(zb)
   z1 = za + zb , mz1 = cabs(z1) , a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1 , summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2 , summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3 , summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4 , summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5 , summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6 , summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7 , summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8 , summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9 , summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10 , summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter , summ_tot = summ_tot + summ
              z = exp (summ_tot * k / iter_tot)
             ENDIF
            ENDIF
           ENDIF
          ENDIF
         ENDIF
        ENDIF
       ENDIF
      ENDIF
     ENDIF
    ENDIF
   ENDIF
   mz1 <= b11
   }
