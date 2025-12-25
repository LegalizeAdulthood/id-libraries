CompareRayfilMandl    { ; Hiram Berry <burningb@burningbridges.com>
                        ;  Fri, 7 May 2004 00:51:06
          ; compare C-scaled M-set with Raymond's generator
          ; initial conditions: p1 = A, p2 = B, real(p3) = bailout - 4
          ; imag(p3) = extra iterations of z->z^2+C for scaled set (to see outside fx)
          ; inside colors:1=classic set only,2=scaled set only,3=both(use inside=zmag)
  IF(isinit==0)
     A = p1, B = p2
     bailout = real(p3) + 4
     extra = imag(p3)
     true = 1, false = 0
     isinit = true
  ENDIF
  z = z_r = C_r = pixel, z_s = 0
  C_s = A * pixel + B
  r_notdiv = s_notdiv = true
  :
  IF(r_notdiv)
     z = z_r = sqr(sqr(fn1(z_r))) + C_r
     r_notdiv = ( |z_r| <= bailout )
  ENDIF
  IF(s_notdiv)
     z = z_s = sqr(z_s) + C_s
     IF(extra>=1)
        z = z_s = sqr(z_s) + C_s
     ENDIF
     IF(extra>=2)
        z = z_s = sqr(z_s) + C_s
     ENDIF
     IF(extra>=3)
        z = z_s = sqr(z_s) + C_s
     ENDIF
     IF(extra>=4)
        z = z_s = sqr(z_s) + C_s
     ENDIF
     IF(extra>=5)
        z = z_s = sqr(z_s) + C_s
     ENDIF
  s_notdiv = ( |z_s| <= bailout )
  ENDIF
  ins_col = r_notdiv + 2 * s_notdiv
  IF(ins_col)
     z = sqrt( (ins_col*2-1) / maxit )
  ENDIF
  ins_col
}
 
