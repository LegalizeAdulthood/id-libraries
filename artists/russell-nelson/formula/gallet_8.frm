Comment {

   Most of these formulas use the new IF..ELSE logic implemented in Fractint
 19.6.  They are not sorted in a logical order but just in chronological
 order!  I tried various coloring schemes for the Mandelbrot and Julia sets
 that require the use of decomp = 256 (see Gallet_8.par for examples).

 Have fun!

      Sylvie Gallet
            CompuServe: sylvie_gallet or 101324,3444
              Internet: sylvie_gallet@compuserve.com

   }

Gallet-8-01 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; real(p2) = bailout value
   z = c = pixel , zc = 0 :
   IF (zc < 0)
      z = z - p1
   ELSE
      z = z - zc - p1
   ENDIF
   zc = z*c
   |z| <= p2
   }

Gallet-8-02 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; real(p2) = bailout value
   z = c = pixel :
   z = 1 / (z*z + c)
   |z| <= p2
   }

Gallet-8-03 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
   z = c = zn = pixel :
   zn = zn*zn + c
   IF (|zn| < |z|)
      z = 0.6*zn
   ENDIF
   |zn| <= 4
   }

Gallet-8-04 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; p1 = exponent
              ; p2 > 1
   z = zn = pixel , ex = p1 - 1
   IF (p2 || imag(p2))
      k = p2
   ELSE
      k = 1
   ENDIF
   :
   znex = zn^ex , num = znex*zn - 1 , mnum = |num|
   den = p1*znex , zn = zn - num/den
   IF ( mnum > |z^p1-1|)
      z = zn * k
   ENDIF
   mnum >= 0.001
   }

Gallet-8-05 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
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
   IF (abs(zn) < abs(z) || flip(abs(zn)) < flip(abs(z)))
      z = k*zn
   ENDIF
   |zn| <= 4
   }

Gallet-8-06 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
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
   IF (abs(zn) < abs(z) && flip(abs(zn)) < flip(abs(z)))
      z = k*zn
   ENDIF
   |zn| <= 4
   }

Gallet-8-07 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
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
      z = real(z) + k*flip(imag(zn))
   ENDIF
   |zn| <= 4
   }

Gallet-8-08 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; 0 < p2 <= 1 (default = 1)
   z = zn = pixel
   IF (p2 || imag(p2))
      k = p2
   ELSE
      k = 1
   ENDIF
   :
   zn = zn*zn + p1
   IF (abs(zn) < abs(z) && flip(abs(zn)) < flip(abs(z)))
      z = k*zn
   ENDIF
   |zn| <= 4
   }

Gallet-8-09 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; a = p1 , b = p2
              ; Try a = 0.5, b = (0.563, 0.0) or (0.56667, 0.0)
   z = x = y  = pixel , a = p1 , b = p2 :
   z = z*z - a*z + b , x = z*z - a*y + b , y = z , z = x
   |z| <= 16
   }

Gallet-8-10 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; a = p1 , b = p2
   z = x = y  = pixel , a = p1 , b = p2 :
   z = z*(z*z - a) + b , x = z*z*z - a*y + b , y = z , z = x
   |z| <= 16
   }

Gallet-8-11 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; PHC, requires periodicity = 0 and passes = 1
              ; p1 = parameter for a Julia set
              ; p2 not used
              ; p3: real part = radius
              ;     imag part = refraction index
   h = cabs(pixel) , r = real(p3) , ir = imag(p3)
   IF (h >= r)
      IF (whitesq)
         z = pixel , c = p1
      ELSE
         z = 200
      ENDIF
   ELSE
      beta = asin(h/r) , alpha = asin(h/r/ir)
      h2 = h - sqrt(r*r - h*h) * tan(beta - alpha)
      z = h2*pixel/h, c = p1
   ENDIF
   :
   z = z*z + c
   |z| <= 128
   }

Gallet-8-12 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; p2: real part = radius
              ;     imag part = refraction index
   h = cabs(pixel) , pinv = 1/p1
   bailout = 2*p1 , r = real(p2) , ir = imag(p2)
   IF (h >= r)
      z = pixel
   ELSE
      beta = asin(h/r) , alpha = asin(h/(r*ir))
      z = (h - sqrt(r*r - h*h) * tan(beta - alpha)) * pixel / h
   ENDIF
   center = round(p1*z) * pinv
   IF (cabs(z-center) < 0.45*pinv)
      z = cabs(center)
   ELSE
      z = cabs(center) + p1
   ENDIF
   :
   z = z + pinv
   z <= bailout
   }

Gallet-8-13 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; a = p1 , b = p2
   z = x = y  = pixel , a = p1 , b = p2 :
   z = z*z - a*z + b , x = z*z - a*y + b , y = z , z = x
   b = b + 0.00001
   |z| <= 16
   }

Gallet-8-14 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0 and decomp = 256
              ; 0 < p1 <= 1
   z = 0 , c = zn = pixel , zmin = p1 , k = flip(2*pi/zmin) :
   zn = zn*zn + c , znc = cabs(zn)
   IF (znc < zmin)
      zmin = znc , z = exp(zmin*k)
   ENDIF
   znc <= 4
   }

Gallet-8-15 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0 and decomp = 256
              ; bailout = real(p2)
              ; 0 < imag(p2)
   z = 0 , zn = x = y = pixel , zmin = imag(p2) , k = flip(2*pi/zmin) :
   zn = zn*zn - 0.5*zn + p1 , x = zn*zn - 0.5*y + p1
   y = zn , zn = x , znc = cabs(zn)
   IF (znc < zmin)
      zmin = znc , z = exp(zmin*k)
   ENDIF
   znc <= real(p2)
   }

Gallet-8-16 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0 and decomp = 256
              ; 0 < p1
   z = -1 , c = zn = pixel , xmin = ymin = real(p1)
   odd = 0 , k = flip(pi/real(xmin)) :
   zn = zn*zn + c , odd = odd==0
   IF (odd)
      IF (abs(zn) < xmin)
         xmin = abs(zn) , z = exp(xmin*k)
      ENDIF
   ELSE
      IF (abs(imag(zn)) < ymin)
         ymin = abs(imag(zn)) , z = exp(-ymin*k)
      ENDIF
   ENDIF
   |zn| <= 16
   }

Gallet-8-17 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0 and decomp = 256
              ; p1 = parameter for a Julia set (0 for the Mandelbrot set)
              ; 0 < p2
   IF (p1 || imag(p1))
      c = p1
   ELSE
      c = pixel
   ENDIF
   z = -1 , zn = pixel , zmin = abs(real(p2))
   k = flip(pi/zmin) , odd = 0 :
   zn = zn*zn + c , znc = abs(real(zn)) + abs(imag(zn))
   IF (znc < zmin)
      zmin = znc
      IF (odd)
         z = exp(zmin*k)
      ELSE
         z = exp(-zmin*k)
      ENDIF
   ENDIF
   odd = odd==0
   znc <= 4
   }

Gallet-8-18 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
              ; Requires periodicity = 0
              ; 0 < real(p3) < imag(p3)
   z = pixel , iter = 0 , ex1 = p1-1 , ex2 = p2-1
   c = 1 , it = imag(p3) - real(p3) , p = (p2-p1)/it :
   IF (iter < p3)
      zex = z^ex1 , n = zex*z - 1 , d = p1*zex , z = z - n/d
   ELSEIF (iter > imag(p3))
      zex = z^ex2 , n = zex*z - 1 , d = p2*zex , z = z - n/d
   ELSE
      pc = c*p , ex = ex1 + pc ,
      zex = z^ex , n = zex*z - 1 , d = pc*zex , z = z - n/d
      c = c+1
   ENDIF
   iter = iter + 1
   |n| >= 0.0000000001
   }

Gallet-8-19 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Apr 1997
              ; Choose 0 < real(p1) < imag(p1)
              ; Requires periodicity = 0
   z = c = pixel , count = 0 , im1 = imag(p1) :
   count = count + 1
   IF (count > im1)
      count = 1
   ENDIF
   IF (count <= p1)
      z = z*z + c
   ELSE
      z = z*z*z + c
   ENDIF
   |z| <= 16
   }

Gallet-8-20 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0 and decomp = 256
             ; real(p2) > 0
             ; Revised for Fractint v20 by Sylvie Gallet
   h = cabs(pixel), pinv = 1/real(p1)
   r = real(p2)
   IF (h >= r)
      z = -1
   ELSE
      z = pixel*real(p2) / sqrt(real(p2)*real(p2) - |pixel|)
      center = round(real(p1)*z) * pinv
      IF (cabs(z-center) < 0.45*pinv)
         z = exp(flip(atan(cabs(center))))
      ELSE
         z = exp(flip(atan(cabs(center))-pi))
      ENDIF
   ENDIF
   :
   z < -1
  ;SOURCE: gallet_8.frm
}

Gallet-8-21 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Apr 1997
              ; Requires periodicity = 0 and decomp=256
              ; p1 = parameter for a Julia set (0 for the Mandelbrot set)
              ; 0 < real(p2) , 0 < imag(p2)
   im2 = imag(p2)
   IF (p1 || imag(p1))
      c = p1
   ELSE
      c = pixel
   ENDIF
   z = -1 , zn = pixel , zmin = zmin0 = abs(real(p2))
   cmax = trunc(abs(real(p3)))
   IF (cmax < 2)
      cmax = 2
   ENDIF
   k = flip(6.28318530718/(zmin*real(cmax))) , cnt = -1
   :
   cnt = cnt + 1
   IF (cnt == cmax)
      cnt = 0
   ENDIF
   zn = zn*zn + c , znc = cabs(im2*real(zn) + flip(imag(zn)))
   IF (znc < zmin)
      zmin = znc , z = exp((cnt*zmin0 + zmin)*k)
   ENDIF
   znc <= 4
   }

Gallet-8-22 { ; Sylvie Gallet, sylvie_gallet@compuserve.com, Apr 1997
              ; Requires periodicity = 0 and decomp=256
              ; 0 < real(p2) , 0 < imag(p2)
   im2 = imag(p2)
   IF (p1 || imag(p1))
      c = p1
   ELSE
      c = pixel
   ENDIF
   z = -1 , zn = pixel , zmin = zmin0 = abs(real(p2))
   cmax = trunc(abs(real(p3)))
   IF (cmax < 2)
      cmax = 2
   ENDIF
   k = flip(6.28318530718/(zmin*real(cmax))) , cnt = -1
   :
   cnt = cnt + 1
   IF (cnt == cmax)
      cnt = 0
   ENDIF
   zn = c*fn1(zn) , znc = cabs(im2*real(zn) + flip(imag(zn)))
   IF (znc < zmin)
      zmin = znc , z = exp((cnt*zmin0 + zmin)*k)
   ENDIF
   znc <= 256
   }
