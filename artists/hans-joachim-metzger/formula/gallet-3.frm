Gallet-3-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y*y+p2*fn2(y))
  y1 = y - p1*fn1(x*x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}
 
Gallet-3-04 {; Sylvie Gallet [101324,3444], 1996
             ; choose p1, p2 such as
             ; 0 < real(p1) < imag(p1) < real(p2) < maxiter
  z = c = 1/(pixel-conj(1/pixel)-flip(1/pixel))
  z1 = c1=1.5*z, z2 = c2=2.25*z, z3 = c3=3.375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  tt = 1 - (t1||t2||t3), z = z * real(tt)
  c = c * real(tt) + c1*real(t1) + c2*real(t2) + c3*real(t3)
  z = z*z+c, iter = iter+1
  |z| <= bailout
  ;SOURCE: gallet-3.frm
}
 
Gallet-3-05 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel, c = p1, bailout = real(p3) :
  test = (flip(c*z) >= 0)
  a = (z-p2)*test, b = (z+flip(p2))*(1-test), z = (a+b)*c 
  (sqr(real(z)) < bailout) || (sqr(imag(z)) < bailout)
  ;SOURCE: gallet-3.frm
}
 
Gallet-3-11 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel^p1/p2 + p2^pixel/(p1*pixel), p = p2/p1 :
  z = z*p
  z <= p1
  ;SOURCE: gallet-3.frm
}
 
Gallet-3-13 {; Sylvie Gallet [101324,3444], 1996 
  z = pixel/(pixel*pixel+1) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y+p2*fn2(y))
  y1 = y - p1*fn1(x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}
 
Gallet-3-14 {; Sylvie Gallet [101324,3444], 1996 
  z = Pixel:
  z = fn1(z)+flip(fn2(z))
  (|real(z)| <= 4) || (|imag(z)| <= 4) 
  ;SOURCE: gallet-3.frm
}
 
Gallet-3-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y+p2*fn2(y))
  y1 = y - p1*fn1(x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}
 
