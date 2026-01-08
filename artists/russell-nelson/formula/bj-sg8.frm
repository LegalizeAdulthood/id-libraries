BJ-SG8-0701 { ; Modified Sylvie Gallet frm by Brian E. Jones
	      ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; 0 < p1 <= 1 (default = 1)
   z = c = zn = pixel
   IF (p1 || imag(p1))
      k = p1
   ELSE
      k = 1
   ENDIF
   :
   zn = zn*zn + c
   IF (abs(zn) < abs(z))
      z = k*real(zn) + fn1(flip(imag(z)))
   ENDIF
   IF (flip(abs(zn)) < flip(abs(z)))
      z = real(z) + k*flip(imag(zn))
   ENDIF
   |zn| <= 4
   }

BJ-SG8-0702 { ; Modified Sylvie Gallet frm by Brian E. Jones
	      ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; 0 < p1 <= 1 (default = 1)
   z = c = zn = pixel
   IF (p1 || imag(p1))
      k = p1
   ELSE
      k = 1
   ENDIF
   :
   zn = zn*zn + c
   IF (abs(zn) < abs(z))
      z = k*real(zn) + flip(imag(z))
   ENDIF
   IF (flip(abs(zn)) < flip(abs(z)))
      z = fn1(real(z) + k*flip(imag(zn)))
   ENDIF
   |zn| <= 4
   }

BJ-SG8-0703 { ; Modified Sylvie Gallet frm by Brian E. Jones
	      ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; 0 < p1 <= 1 (default = 1)
   z = c = zn = pixel
   IF (p1 || imag(p1))
      k = p1
   ELSE
      k = 1
   ENDIF
   :
   zn = zn*zn + c
   IF (abs(zn) < abs(z))
      z = k*real(zn) + flip(imag(z))
   ENDIF
   IF (flip(abs(zn)) < flip(abs(z)))
      z = fn1(real(z)) + k*flip(fn2(imag(zn)))
   ENDIF
   |zn| <= 4
   }

BJ-SG-8-1205b { ; Sylvie Gallet [101324,3444], Mar 1997
              ; Requires periodicity = 0
  h = cabs(pixel) , pinv = 1/p1
  bailout = 2*p1 , r = real(p2) , ir = imag(p2)
  beta = asin(h/r) , alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = fn2(round(p1*z) * pinv)
  test = cabs(z-center) < 0.45*pinv
  z = fn1(cabs(center) + p1 * (test == 0)):
  z = z * z + pixel - (pinv/p3)
  z <= bailout
  }

BJ-SG8-1401 { ; Modified Sylvie Gallet frm by Brian E. Jones
	      ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0 and decomp = 256
              ; 0 < p1 <= 1
   z = 0 , c = zn = pixel , zmin = p1 , k = flip(2*pi/zmin) :
   zn = zn*zn + c , znc = fn1(cabs(zn))
   IF (znc < zmin)
      zmin = fn2(znc) , z = exp(zmin*k)
   ENDIF
   znc <= 4
   }

BJ-SG8-1402 { ; Modified Sylvie Gallet frm by Brian E. Jones
	      ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0 and decomp = 256
              ; 0 < p1 <= 1
   z = 0 , c = zn = pixel , zmin = p1 , k = fn1(flip(2*pi/zmin)) :
   zn = zn*zn + c , znc = fn2(cabs(zn))
   IF (znc < zmin)
      zmin = fn3(znc) , z = fn4(exp(zmin*k))
   ENDIF
   znc <= 4
   }

BJ-SG8-1403 { ; Modified Sylvie Gallet frm by Brian E. Jones
	      ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0 and decomp = 256
              ; 0 < p1 <= 1
   z = 0 , c = zn = pixel , zmin = p1 , k = flip(2*pi/zmin) :
   zn = zn*zn + c , znc = cabs(zn)
   IF (znc < zmin)
      zmin = (znc/p2)*fn1(zn) , z = exp(zmin*k)
   ENDIF
   znc <= 4
   }

BJ-SG8-1404a{ ; Modified Sylvie Gallet frm by Brian E. Jones
              ; Requires periodicity = 0 and decomp = 256
              ; 0 < p1 <= 1
   z = 0 , c = zn = pixel , zmin = p1 , k = flip(2*pi/zmin) :
   zn = zn*zn + c , znc = cabs(real(zn))
   IF (znc < zmin)
      zmin = znc , z = exp(znc*k)
   ENDIF
   znc <= 4
   }

