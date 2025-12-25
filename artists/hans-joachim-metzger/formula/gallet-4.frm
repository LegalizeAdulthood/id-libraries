BEJ-N219 {; Revised by G. Martin to eliminate assignment to "pixel"
  newpixel=fn2(sqrt(pixel/.5)*pixel)
  z=c=newpixel, zc=newpixel/sqr(newpixel*.5):
  c=((zc/p1)/newpixel)/(zc*sqrt(fn1(real(z))))
  z=z*z+c
  |imag(z)|<4
  ;SOURCE: bj-phc02.frm
}
 
Gallet-4-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, h = p1, a = p2 :
   x = real(z), y = imag(z)
   y1 = y + fn2(x + a*fn1(x+h))
   x1 = x - fn2(y + a*fn1(y+h))
   z = x1 + flip(y1)
    |z| <= 16
  ;SOURCE: gallet-4.frm
}
 
Gallet-4-14 {; Sylvie Gallet [101324,3444], 1996
             ; Hypercomplex Newton formula applied to h^p2 - 1 = 0
   ; h(0) = real(pixel) + i*imag(pixel) + j*real(p1) + k*imag(p1)
   ; h(n+1) = h(n) - (h(n)^p2-1) / (p2*h(n)^(p2-1))
   ; |h| >= 0.0000005
  p = (0,1)*p1, ex = p2 - 1
  a = pixel + p, b = pixel - p :
   a2 = a^ex, b2 = b^ex
   na = a2*a - 1, da = p2*a2
   nb = b2*b - 1, db = p2*b2
   a = a - na/da, b = b - nb/db
    |na| + |nb| >= 0.000001
  ;SOURCE: gallet-4.frm
}
 
Gallet-4-06 {; Sylvie Gallet [101324,3444], 1996
             ; PTC formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y*y + p2*fn2(y))
   y1 = y - p1 * fn1(x*x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}
 
