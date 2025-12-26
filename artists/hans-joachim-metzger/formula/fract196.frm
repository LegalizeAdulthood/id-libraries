Carr2289 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Modified for if..else logic 3/17/97 by Sylvie Gallet
                  ; Added variable "newpixel". G.Martin 6/15/99
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter
   ; periodicity=0
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  c = newpixel + newpixel - flip(0.001/newpixel) - conj(0.01/newpixel)
  z = zorig = newpixel - conj(asin(newpixel+newpixel+0.32))
  d1 = flip(-0.0005935/newpixel), d4 = 4 * d1, d5 = d1 + d4
  bailout = 4, iter = 0 :
  IF (iter == p1)
    z = c = 1.5 * zorig + d5
  ELSEIF (iter == imag(p1))
    z = c = 2.25 * zorig + d5
  ELSEIF (iter == p2)
    z = c = 3.375 * zorig + d5
  ELSEIF (iter == imag(p2))
    z = c = 5.0625 * zorig + d5
  ELSE
    z = z + d4, c = c + d4
  ENDIF
  z = z*z + c
  iter = iter + 1
  abs(z) <= bailout
  ;SOURCE: fract196.frm
}
 
Five-Mandels (XAXIS) {; Sylvie Gallet [101324,3444], 1996
   ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
   ; Modified for if..else logic 3/17/97 by Sylvie Gallet
  c = z = zorig = pixel
  bailout = 16, iter = 0 :
  IF (iter == p1)
     z = c = 1.5 * zorig
  ELSEIF (iter == imag(p1))
     z = c = 2.25 * zorig
  ELSEIF (iter == p2)
     z = c = 3.375 * zorig
  ELSEIF (iter == imag(p2))
     z = c = 5.0625 * zorig
  ENDIF
  z = z*z + c
  iter = iter + 1
  |z| <= bailout
  ;SOURCE: fract196.frm
}
 
Fractint {; Sylvie Gallet [101324,3444], 1996
          ; Modified for if..else logic 3/21/97 by Sylvie Gallet
          ; requires 'periodicity=0'
   z = pixel-0.025, x = real(z), y = imag(z), text = 0
   IF (y > -0.225 && y < 0.225)
      x1 = x*1.8, x3 = 3*x
      ty2 = y < 0.025 && y > -0.025 || y > 0.175
      IF ( x < -1.2 || ty2 && x > -1.25 && x < -1 )
         text = 1
      ELSEIF ( x < -0.9 || ty2 && x > -0.95 && x < -0.8                  \
               || (cabs(sqrt(|z+(0.8,-0.1)|)-0.1) < 0.025 && x > -0.8)   \
               || (y < -x1-1.44 && y > -x1-1.53 && y < 0.025) )
         text = 1
      ELSEIF ( y > x3+1.5 || y > -x3-1.2 || (y > -0.125 && y < -0.075)   \
               && y < x3+1.65 && y < -x3-1.05 )
         text = 1
      ELSEIF ( cabs(sqrt(|z+0.05|)-0.2) < 0.025 && x < 0.05 )
         text = 1
      ELSEIF ( (x > 0.225 && x < 0.275 || y > 0.175) && x > 0.1 && x < 0.4 )
         text = 1
      ELSEIF ( x > 0.45 && x < 0.5 )
         text = 1
      ELSEIF ( x < 0.6 || x > 0.8 || ((y > -x1+1.215) && (y < -x1+1.305))  \
               && x > 0.55 && x < 0.85 )
         text = 1
      ELSEIF ( x > 1.025 && x < 1.075 || y > 0.175 && x > 0.9 && x < 1.2 )
         text = 1
      ENDIF
   ENDIF
   z = 1 + (0.0,-0.65) / (pixel+(0.0,.75))
   :
   IF (text == 0)
      z2 = z*z, z4 = z2*z2, n = z4*z2-1, z = z-n/(6*z4*z)
      IF (|n| >= 0.0001)
         continue = 1
      ELSE
         continue = 0
      ENDIF
   ENDIF
   continue
  ;SOURCE: fract196.frm
}
 
Gallet-8-21 {; Sylvie Gallet [101324,3444], Apr 1997
             ; Requires periodicity = 0 and decomp = 256
             ; p1 = parameter for a Julia set (0 for the Mandelbrot set)
             ; 0 < real(p2) , 0 < imag(p2)
   im2 = imag(p2)
   IF (p1 || imag(p1))
      c = p1
   ELSE
      c = pixel
   ENDIF
   z = -1, zn = pixel, zmin = zmin0 = abs(real(p2))
   cmax = trunc(abs(real(p3)))
   IF (cmax < 2)
      cmax = 2
   ENDIF
   k = flip(6.28318530718/(zmin*real(cmax))), cnt = -1
   :
   cnt = cnt + 1
   IF (cnt == cmax)
      cnt = 0
   ENDIF
   zn = zn*zn + c, znc = cabs(im2*real(zn) + flip(imag(zn)))
   IF (znc < zmin)
      zmin = znc, z = exp((cnt*zmin0 + zmin)*k)
   ENDIF
   znc <= 4
  ;SOURCE: fract196.frm
}
 
Graph {; Sylvie Gallet [101324,3444], 1996
       ; Modified for if..else logic 3/17/97 by Sylvie Gallet
       ; 2 parameters: curves thickness = real(p1)
       ;                 axes thickness = imag(p1)
       ; choose for example real(p1) = 0.002 and imag(p1) = 0.001
   epsilon = abs(real(p1)), axes = abs(imag(p1))
   z = 0, x = round(real(pixel)/epsilon) * epsilon
   IF ((|real(pixel)| <= axes) || (|imag(pixel)| <= axes))
      z = z + 1
   ENDIF
   IF (|x + flip(fn1(x))-pixel| <= epsilon)
      z = z + 2
   ENDIF
   IF (|x + flip(fn2(x))-pixel| <= epsilon)
      z = z + 4
   ENDIF
   IF (|x + flip(fn3(x))-pixel| <= epsilon)
      z = z + 8
   ENDIF
   IF (|x + flip(fn4(x))-pixel| <= epsilon)
      z = z + 16
   ENDIF
   IF (z == 0)
      z = z + 100
   ENDIF
   :
   z = z - 1
   z > 0
  ;SOURCE: fract196.frm
}
 
JD-SG-04-1 {; Sylvie Gallet [101324,3444], 1996
    ; On an original idea by Jim Deutch [104074,3171]
    ; Modified for if..else logic 3/21/97 by Sylvie Gallet
    ; use p1 and p2 to adjust the inverted Mandel
    ; 16-bit Pseudo-HiColor
  IF (whitesq)
    z = c = pixel
  ELSE
    z = c = p1 / (pixel+p2)
  ENDIF
  :
  z = z*z + c
  |z| < 4
  ;SOURCE: fract196.frm
}
 
ptc+4mandels {; Sylvie Gallet [101324,3444], 1996
              ; 32-bit Pseudo-TrueColor
              ; Modified for if..else logic 3/21/97 by Sylvie Gallet
   cr = real(scrnpix) + 2*imag(scrnpix)
   r = cr - 4 * trunc(cr / 4)
   IF (r == 0)
      z = c = pixel
   ELSEIF (r == 1)
      z = c = pixel * p1
   ELSEIF (r == 2)
      z = c = pixel * p2
   ELSE
      z = c = pixel * p3
   ENDIF
   :
   z = z * z + c
   |z| <= 4
  ;SOURCE: fract196.frm
}
 
ptc+mjn {; Sylvie Gallet [101324,3444], 1996
         ; Modified for if..else logic 3/19/97 by Sylvie Gallet
         ; 24-bit Pseudo-TrueColor
         ; Mandel: z^2 + c , Julia: z^2 + p1 , Newton: z^p2 - 1 = 0
   cr = real(scrnpix) + imag(scrnpix)
   r = cr - 3 * trunc(cr / real(3)), z = pixel
   IF (r == 0)
      c = pixel, b1 = 256
   ELSEIF (r == 1)
      c = p1, b1 = 256
   ELSE
      c = 0, b2 = 0.000001, ex = p2 - 1
   ENDIF
   :
   IF (r == 2)
      zd = z^ex, n = zd*z - 1
      z = z - n / (p2*zd), continue = (|n| >= b2)
   ELSE
      z = z*z + c, continue = (|z| <= b1)
   ENDIF
   continue
  ;SOURCE: fract196.frm
}
 
shifter01 {; After shift, switch from z*z to z*z*z
           ; Bradley Beacham  [74223,2745]
           ; Modified for if..else logic 3/18/97 by Sylvie Gallet
           ; P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2 :
  IF (iter <= shift)
     z = z*z + c
  ELSE
     z = z*z*z + c
  ENDIF
  iter = iter + 1
  |z| < test
  ;SOURCE: fract196.frm
}
 
TileJulia {; Terren Suydam (terren@io.com), 1996
           ; modified by Sylvie Gallet [101324,3444]
           ; Modified for if..else logic 3/19/97 by Sylvie Gallet
   ; p1 = center = coordinates for a good Julia
   ; 0 <= real(p2) = magnification. Default for magnification is 1/3
   ; 0 <= imag(p2) = numtiles. Default for numtiles is 3
   ; p3 is the Julia set parameter
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
  x = asin(sin(omega*real(pixel))), y = asin(sin(omega*imag(pixel)))
  z = (x+flip(y)) / mag + center:
  z = z*z + p3
  |z| <= 4
  ;SOURCE: fract196.frm
}
 
TileMandel {; Terren Suydam (terren@io.com), 1996
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
  x = asin(sin(omega*real(pixel))), y = asin(sin(omega*imag(pixel)))
  z = c = (x+flip(y)) / mag + center:
  z = z*z + c
  |z| <= 4
  ;SOURCE: fract196.frm
}
 
