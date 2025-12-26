Gallet-7-02 {; Sylvie Gallet [101324,3444], 1997
  j = -0.5 + flip(0.5*sqrt(3)), j2 = j*j
  z = pixel:
   x = z*j, y = z*j2
   x1 = x - p1*fn1(y*z + p2*fn2(x))
   y1 = y - p1*fn1(z*x + p2*fn2(y))
   z1 = z - p1*fn1(x*y + p2*fn2(z))
   z = z1 + x1*j + y1*j2
    |z| <= 32
  ;SOURCE: gallet-7.frm
}
 
Gallet-7-04 {; Sylvie Gallet [101324,3444], 1997
  j = -0.5 + flip(0.5*sqrt(3)), j2 = j*j
  z = pixel:
   x = z*j, y = z*j2
   x1 = x - p1*fn1(x + fn2(p2*y) + fn3(p3*z))
   y1 = y - p1*fn1(y + fn2(p2*z) + fn3(p3*x))
   z1 = z - p1*fn1(z + fn2(p2*x) + fn3(p3*y))
   z = z1 + x1*j + y1*j2
    |z| <= 32
  ;SOURCE: gallet-7.frm
}
 
Gallet-7-05 {; Sylvie Gallet [101324,3444], 1997
  x = real(pixel), y = imag(pixel):
   dx = p1 * fn1(fn2(y)), dy = p1 * fn3(fn4(x))
   x = x + dx, y = y + dy
   z = x + flip(y)
    (|dx| + |dy|) >= p2
  ;SOURCE: gallet-7.frm
}
 
Gallet-7-06 {; Sylvie Gallet [101324,3444], 1997
  x = real(pixel), y = imag(pixel):
   dx = p1 * fn1(y)*x, dy = p1 * fn2(x)*y
   x = x + dx, y = y + dy
   z = x + flip(y)
    (|dx| + |dy|) >= p2
    ;SOURCE: gallet-7.frm
}
 
Gallet-7-07 {; Sylvie Gallet [101324,3444], 1997
  x = real(pixel), y = imag(pixel), z = pixel:
   dx = p1 * fn1(y*z), dy = p1 * fn2(x*z)
   x = x + dx, y = y + dy
   z = x + flip(y)
    (|dx| + |dy|) >= p2
  ;SOURCE: gallet-7.frm
}
 
Gallet-7-01 {; Sylvie Gallet [101324,3444], 1996
  j = -0.5 + flip(0.5*sqrt(3)), j2 = j*j
  z = pixel :
   x = z*j, y = z*j2
   x1 = x - p1*fn1(y + fn2(p2*z))
   y1 = y - p1*fn1(z + fn2(p2*x))
   z1 = z - p1*fn1(x + fn2(p2*y))
   z = z1 + x1*j + y1*j2
    |z| <= 32
  ;SOURCE: gallet-7.frm
}
 
