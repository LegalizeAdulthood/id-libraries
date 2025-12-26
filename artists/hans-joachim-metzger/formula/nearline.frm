nearline-theta_man {; Kerry Mitchell
        ; See the end of nearline_theta_jul for Kerry Mitchell's 
        ; explanation of the development of these "nearline" formulas.
        ;
        ; color Mandelbrot set with nearest approach to a given line
        ; line through origin has angle theta to x-axis
        ;
        ; use outside=iter, decomp=256
        ; real(p1) = bailout (large--try 1e12)
        ; imag(p1) = angle of line, in degrees (try 45)
        ; zc is the variable used for iteration, z for coloring
        ;
  zc=0, c=pixel, maxr=real(p1), minr=maxr, iter=1
  theta=imag(p1)*pi/180, ct=cos(theta), st=sin(theta):
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
  iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
  r=|ct*imag(zc)-st*real(zc)|
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
  IF ((rzc>maxr)||(iter==maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
nearline01_jul {; Kerry Mitchell
        ; See the end of nearline_theta_jul for Kerry Mitchell's 
        ; explanation of the development of these "nearline" formulas.
        ;
        ; color Julia sets with nearest approach to a given line
        ; line given by parameter c (first iterate of 0)
        ; so color lines pass through 0 on first iteration
        ;
        ; use outside=iter, decomp=256
        ; p1 = Julia parameter
        ; real(p2) = bailout (large--try 1e12)
        ; zc is the variable used for iteration, z for coloring
        ;
  zc=pixel, c=p1, maxr=real(p2), minr=maxr
  ct=imag(c), st=real(c), iter=1:
        ;
        ; iteration
        ;   find distance to line, r
        ;   if r < minimum, update minimum to r
        ;
  iter=iter+1, zc=sqr(zc)+c, rzc=|zc|
  r=|ct*real(zc)-st*imag(zc)|
  IF (r<minr)
    minr=r
  ENDIF
        ;
        ; bailout--take log of minimum distance as decomp angle
        ;
  IF ((rzc>maxr)||(iter==maxit))
    iter=-1
    angle=log(minr)
    z=cos(angle)+flip(sin(angle))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
 
