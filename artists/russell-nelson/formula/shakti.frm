;; All formulas by Vincent Damion Presogna
;; 76455.2222@Compuserve.com
;; June 16, 1996
;; Some formulas may require periodicity=0 
;; depending on which user selectable function you use


Gita {
z = pixel + p1:
r = fn1(tan(1/z)) + pixel + 1
z = (z*r)/fn2(r)
|z| < 4
}

Sattva {
z = pixel + p1:
r = fn1(tan(1/z)) + pixel 
z = z * fn2(r)
|z| < 4
}

Veda {
z = pixel + p1:
r = tan(1/z) + pixel
z = fn1(z * r)
|z| < 4
}

Sutra {
z = pixel + p1:
r = tan((1/z) + 1)
z = fn1(z * r)/fn2(r) 
|z| < 4
}

Dharma {
z = pixel:
z = z + p1
r = tan(1/z) + pixel
z = fn1(r) * z 
|z| < 4
}

Brahmin {
z = pixel:
z = z + p1
r = tan(1/z)^fn1(e)
z = r * fn2(z) 
|z| <= 4
}

Devotion {
z = pixel:
z = z + p1
r = fn1(z) * z * z  
q = z^e 
z = (z - imag(1/r)/z - real(1/q))
|z| <= 4
}

Shakti {
z = pixel:
z = z + p1
r = z * z * z 
q = z^e 
z = z * (r/q)
|z| <= 4
}

Bhakti {
z = pixel:
z = z + p1
r = fn2(z) * z  
q = z^pi 
z = fn1(z) * (r/q)
|z| <= 4
}

TileMandel { ; Terren Suydam (terren@io.com), 1996
             ; modified by Sylvie Gallet [101324,3444]
             ; Modified for if..else logic 3/19/97 by Sylvie Gallet
   ; p1 = center = coordinates for a good Mandel
   ; 0 <= real(p2) = magnification. Default for magnification is 1/3
   ; 0 <= imag(p2) = numtiles. Default for numtiles is 3
   center = p1
   IF (p2 > 0)
      mag = real(p2)
   ELSE
      mag = 1/3
   ENDIF
   IF (imag(p2) > 0)
      numtiles = imag(p2)
   ELSE
      numtiles = 3
   ENDIF
   omega = numtiles*2*pi/3
   x = asin(sin(omega*real(pixel))) , y = asin(sin(omega*imag(pixel)))
   z = c = (x+flip(y)) / mag + center :
   z = z*z + c
   |z| <= 4
   }
