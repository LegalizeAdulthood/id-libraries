manjul_lace {; Requires passes=1   George Martin, 1996
             ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
             ; If Real(p1) is:
             ;    0 : formula draws PHC manjul_lace
             ;    1 : formula draws mandel component only
             ;    2 : formula draws julia component  only
  IF (p1==1 || p1 == whitesq)
    z = c = 1.5*pixel
  ELSE
    z = pixel, c = (-.75, .1234567)
  ENDIF :
  z = z*z + c
  |z| <= 4
  ;SOURCE: ifs196.frm
}
MTet (XAXIS) {; Mandelbrot form 1 of the Tetration formula --Lee Skinner
  z = pixel:
   z = (pixel ^ z) + pixel,
	|z| <= (P1 + 3)
  }
many_man_phc {; Modified Stephen C. Ferguson formula
              ; adapted for Fractint by Les St Clair, 1997
              ; phc variation by P. DiGiorgi
              ; use imag(p1) to set bailout
  z=0, c1=fn3(pixel), c0=fn4(pixel)
  IF (whitesq)
    v = (c1^p2)/p2
  ELSE
    v = (c0^p2)/p2
  ENDIF
  n = p3*fn1(fn2(v)):
  z = z^(real(p1)) + n
  |z| <= imag(p1)
  ;SOURCE: 97msg.frm
}
