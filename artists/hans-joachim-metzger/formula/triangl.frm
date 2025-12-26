tri-fn+fn {; Sylvie Gallet <sylvie_gallet@compuserve.com>, May 1997
           ; Thanks to Kerry Mitchell for the idea!
           ; real(p1) = bailout
           ; imag(p1) must be different from 0 (>=1 recommended)
           ; z=fn1(z) + p2*fn2(z)
   ; This formula must be used with decomp = 256 and periodicity = 0
   ;
   z1 = pixel, mz1 = cabs(z1), summ = iter = 0
   b1 = abs(real(p1)), f = b1^0.1
   b2 = b1*f, b3 = b2*f, b4 = b3*f, b5 = b4*f, b6 = b5*f
   b7 = b6*f, b8 = b7*f, b9 = b8*f, b10 = b9*f, b11 = b10*f
   iter1 = iter2 = iter3 = iter4 = iter5 = iter6 = iter7       \
         = iter8 = iter9 = iter10 = summ_tot = iter_tot = 0
   k = imag(p1) * (0.0,6.28319530718)
   :
   iter = iter + 1, za = fn1(z1), a = cabs(za)
   zb = p2*fn2(z1), b = cabs(zb)
   z1 = za + zb, mz1 = cabs(z1), a_b = abs(a - b)
   summ = summ + (mz1 - a_b) / (a+b - a_b)
   IF (mz1 > b1)
    IF (iter1==0)
     iter1 = iter
     iter_tot = iter_tot + iter1, summ_tot = summ_tot + summ
    ENDIF
    IF (mz1 > b2)
     IF (iter2==0)
      iter2 = iter
      iter_tot = iter_tot + iter2, summ_tot = summ_tot + summ
     ENDIF
     IF (mz1 > b3)
      IF (iter3==0)
       iter3 = iter
       iter_tot = iter_tot + iter3, summ_tot = summ_tot + summ
      ENDIF
      IF (mz1 > b4)
       IF (iter4==0)
        iter4 = iter
        iter_tot = iter_tot + iter4, summ_tot = summ_tot + summ
       ENDIF
       IF (mz1 > b5)
        IF (iter5==0)
         iter5 = iter
         iter_tot = iter_tot + iter5, summ_tot = summ_tot + summ
        ENDIF
        IF (mz1 > b6)
         IF (iter6==0)
          iter6 = iter
          iter_tot = iter_tot + iter6, summ_tot = summ_tot + summ
         ENDIF
         IF (mz1 > b7)
          IF (iter7==0)
           iter7 = iter
           iter_tot = iter_tot + iter7, summ_tot = summ_tot + summ
          ENDIF
          IF (mz1 > b8)
           IF (iter8==0)
            iter8 = iter
            iter_tot = iter_tot + iter8, summ_tot = summ_tot + summ
           ENDIF
           IF (mz1 > b9)
            IF (iter9==0)
             iter9 = iter
             iter_tot = iter_tot + iter9, summ_tot = summ_tot + summ
            ENDIF
            IF (mz1 > b10)
             IF (iter10==0)
              iter10 = iter
              iter_tot = iter_tot + iter10, summ_tot = summ_tot + summ
             ENDIF
             IF (mz1 > b11)
              iter_tot = iter_tot + iter, summ_tot = summ_tot + summ
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
  ;SOURCE: triangl.frm
}
 
