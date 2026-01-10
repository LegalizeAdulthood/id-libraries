conic { ; Kerry Mitchell 11may98
        a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
        e=real(p3), f=imag(p3), iter=-1:
        x=real(pixel), y=imag(pixel)
        t=x*(a*x+b)+y*(c*y+d)+e*x*y+f
        t=log(cabs(t))
	z=cos(t)+flip(sin(t))
        iter>0
        }
conic-near_juli {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by nearest approach to conic section
      ;    Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;  Julia parameter set to (0,1)
      ;  bailout set to 10^12
      ;
  cc=(0,1), zc=pixel, maxr=1e12, minr=maxr, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=|x*(a*x+b)+y*(c*y+d)+ee*x*y+f|
  IF (conic<minr)
    minr=conic
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    t=log(minr)
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
conic-mag_jul2 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by magnitude of "conic quantity"
      ;   Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), E=imag(p3).  use decomp=256 coloring
      ;   Julia parameter set to -2
      ;   bailout set to 4
      ;
  cc=-2, zc=pixel, maxr=4, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc
  IF ((|zc|>maxr)||(iter==maxit))
    iter=-1
    x=real(zc), y=imag(zc)
    t=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
    z=cos(t)+flip(sin(t))
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
conic-count_jul16 {; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; colors Julia set by how often orbit is outside section
      ;   Ax^2 + Bx + Cy^2 + Dy + Exy + F = 0
      ;   A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;   E=real(p3), F=imag(p3).  use decomp=256 coloring
      ;   Julia parameter set to near 1/16 disk
      ;   bailout set to 10^12
      ;
  cc=(0.2882,0.0106), zc=pixel, maxr=1e12, iter=1
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  ee=real(p3), f=imag(p3), kount=0, scale=6.2832:
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF (conic>0)
    kount=kount+1
  ENDIF
  IF ((|zc|>maxr)||(iter==maxit))
    t=scale*kount/iter
    z=cos(t)+flip(sin(t))
    iter=-1
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
conic-bail_man { ; Kerry Mitchell 12may98
      ; Replaced variable "e" with "ee" 5/6/99, G. Martin
      ; See formula "conic" for Kerry Mitchell's explanation of his
      ; conic formulas
      ;
      ; Mandelbrot set, escapes "conic quantity" Q > 0
      ;    Q = Ax^2 + Bx + Cy^2 + Dy + Exy + F
      ;  A=real(p1), B=imag(p1), C=real(p2), D=imag(p2)
      ;  E=real(p3), F=imag(p3).
      ;
  a=real(p1), b=imag(p1), c=real(p2), d=imag(p2)
  zc=0, cc=pixel, iter=1, ee=real(p3), f=imag(p3):
  iter=iter+1, zc=sqr(zc)+cc, x=real(zc), y=imag(zc)
  conic=x*(a*x+b)+y*(c*y+d)+ee*x*y+f
  IF ((conic>0)||(iter==maxit))
    iter=-1
    z=zc
  ENDIF
  iter>0
  ;SOURCE: 98msg.frm
}
