Whatever_04m (XYAXIS) {; Original formula Whatever_the_name
                       ; corrected and modified by 
                       ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(z)*z+a2+pixel
  |z|>=0.05
  ;SOURCE: jo_we_32.frm
}
 
Whatever_05m {; Original formula Whatever_the_name
              ; corrected and modified by 
              ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(a1)+a2+pixel
  |z|>=0.05
  ;SOURCE: jo_we_32.frm
}
 
Whatever_06m (XYAXIS) {; Original formula Whatever_the_name
                       ; corrected and modified by 
                       ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(a1)+a2+pixel
  |z|>=0.05
  ;SOURCE: jo_we_32.frm
}
 
Whatever_07m  {; Original formula Whatever_the_name
               ; corrected and modified by 
               ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(z)*fn2(z)+a2+pixel
  ;SOURCE: jo_we_32.frm
}
 
Whatever_08m (XYAXIS) {; Original formula Whatever_the_name
                       ; corrected and modified by 
                       ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(z)*fn2(z)+a2+pixel
  ;SOURCE: jo_we_32.frm
}
 
Whatever_09m (XYAXIS) {; Original formula Whatever_the_name
                       ; corrected and modified by 
                       ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=p1/a1
  z=fn1(z)*fn2(z)+a2+pixel
  ;SOURCE: jo_we_32.frm
}
 
Whatever_10m {; Original formula Whatever_the_name
              ; corrected and modified by 
              ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=p1/a1
  z=fn1(z)*fn2(z)+a2+pixel
  ;SOURCE: jo_we_32.frm
}
 
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
 
Whatever_the_name (XAXIS) {
  z = pixel:
  z=z*z+(1/z*z)+pixel
  ;SOURCE: whatever.frm
}
 
