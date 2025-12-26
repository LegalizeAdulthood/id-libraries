Zeppo {; Mutation of 'Liar4'.
    ; Original formula by Chuck Ebbert [76306,1226]
    ; Modified for if..else logic 3/19/97 by Sylvie Gallet
    ; For 'Liar4' set FN1 & FN2 =IDENT and P1 & P2 = default
    ; p1 & p2 = Parameters (default 1,0 and 0,0)
   z = pixel
    ; The next line sets p=default if p1=0, else p=p1
   IF (real(p1) || imag(p1))
      p = p1
   ELSE
      p = 1
   ENDIF
   :
   z = fn1(1-abs(imag(z)*p-real(z))) +          \
       flip(fn2(1-abs(1-real(z)-imag(z)))) - p2
   |z| <= 1
  ;SOURCE: fract196.frm
}
 
Chico {; Mutation of 'M-SetInNewton'. Mutated by Bradley Beacham [74223,2745]
       ; Original formula by Jon Horner [100112,1700]
       ; For 'M-SetInNewton' set FN1 & FN2 =IDENT and P1 & P2 = default
       ; p1 & p2 = Parameters (default 3,0 and 0,0)
  z = 0, c = fn1(pixel), cminusone = c-1
   ; The next line sets k=default if p1=0, else k=p1
  k = (3 * (|p1|<=0) + p1)
  kminusone = k - 1:
  oldz = z
  nm = k*c-kminusone*z*cminusone
  dn = k*(k*z*z+cminusone)
  z = fn2(nm/dn)+kminusone*z/k + p2
  0.01 <= |(z-oldz)|
  ;SOURCE: dons.frm
}
 
