Gallet-3-01 (XAXIS) { ; Sylvie Gallet [101324,3444], 1996
            ; choose p1, p2 such as
            ; 0 < real(p1) < imag(p1) < real(p2) < maxiter
 z = c = pixel , z1 = c1=1.5*z , z2 = c2=2.25*z , z3 = c3=3.375*z
 l1=real(p1) , l2=imag(p1) , l3=real(p2) , bailout=16 , iter=0 :
 t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3)
 tt = 1 - (t1||t2||t3) , z = z * real(tt)
 c = c * real(tt) + c1*real(t1) + c2*real(t2) + c3*real(t3)
 z = z*z+c , iter = iter+1
 |z| <= bailout
}

Gallet-3-02 { ; Sylvie Gallet [101324,3444], 1996
 z = pixel :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(y+p2*fn2(y))
 y1 = y - p1*fn1(x+p2*fn2(x))
 z = x1+flip(y1)
 |z| <= 4
}

Gallet-3-03 { ; Sylvie Gallet [101324,3444], 1996
 z = pixel :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(y*y+p2*fn2(y))
 y1 = y - p1*fn1(x*x+p2*fn2(x))
 z = x1+flip(y1)
 |z| <= 4
}

Gallet-3-04 { ; Sylvie Gallet [101324,3444], 1996
            ; choose p1, p2 such as
            ; 0 < real(p1) < imag(p1) < real(p2) < maxiter
 z = c = 1/(pixel-conj(1/pixel)-flip(1/pixel))
 z1 = c1=1.5*z , z2 = c2=2.25*z , z3 = c3=3.375*z
 l1=real(p1) , l2=imag(p1) , l3=real(p2) , bailout=16 , iter=0 :
 t1=(iter==l1) , t2=(iter==l2) , t3=(iter==l3)
 tt = 1 - (t1||t2||t3) , z = z * real(tt)
 c = c * real(tt) + c1*real(t1) + c2*real(t2) + c3*real(t3)
 z = z*z+c , iter = iter+1
 |z| <= bailout
}

Gallet-3-05 { ; Sylvie Gallet [101324,3444], 1996 
 z = pixel , c = p1 , bailout = real(p3) :
 test = (flip(c*z) >= 0)
 a = (z-p2)*test , b = (z+flip(p2))*(1-test) , z = (a+b)*c 
 (sqr(real(z)) < bailout) || (sqr(imag(z)) < bailout)
}

Gallet-3-06 {; Sylvie Gallet [101324,3444], 1996
             ; Revised for Fractint v20 by Sylvie Gallet
  z = pixel, c = p1, bailout = sqrt(real(p3)):
  IF (z*(c-z) >= 0)
    z = z - p2
  ELSE
    z = z + p2
  ENDIF
  z = z*c
  abs(z) < bailout || abs(imag(z)) < bailout
  ;SOURCE: gallet-3.frm
}

Gallet-3-07 (YAXIS) {; Sylvie Gallet [101324,3444], 1996
                ; Newton's method applied to
                ; x -> sin(y)^2+cos(x)^3 = 0
                ; y -> cos(x)^2+sin(y)^3 = 0
 z = 0.05/pixel , x=real(z) , y=imag(z) 
 cx=cos(x) , sx=sin(x) , cy=cos(y) , sy=sin(y) 
 cx2=cx*cx , cx3=cx2*cx , sy2=sy*sy , sy3=sy2*sy :
 d = 6*(cx*sy-4)     ; normal value -->  d = 9*(cx*sy-4)
 x = x+(sy3+3*sy*cx3-2*cx2)/(cx*sx*d)
 y = y-(cx3+3*cx*sy3-2*sy2)/(sy*cy*d)
 z = x + flip(y)
 cx=cos(x) , sx=sin(x) , cy=cos(y) , sy=sin(y) 
 cx2=cx*cx , cx3=cx2*cx , sy2=sy*sy , sy3=sy2*sy
 |sy2+cx3+flip(cx2+sy3)| > 0.00001
}

Gallet-3-08 {   ; Sylvie Gallet [101324,3444], 1996
                ; Newton's method applied to
                ; x -> sin(y)^2+cos(x) = 0
                ; y -> cos(x)^2+sin(y) = 0
  z = pixel/(1+pixel-flip(pixel)-conj(pixel)) , x=real(z) , y=imag(z)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y) :
  d = -1+4*sy*cx
  x = x+(sy*sy-cx+2*sy*cx*cx)/(d*sx)
  y = y-(2*cx*sy*sy+cx*cx-sy)/(d*cy)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y)
  z=x+flip(y)
  |sy*sy+cx+flip(cx*cx+sy)| >= 0.000001
}

Gallet-3-09 {   ; Sylvie Gallet [101324,3444], 1996
                ; Newton's method applied to
                ; x -> sin(y)^2+cos(x) = 0
                ; y -> cos(x)^2+sin(y) = 0
  z = 1+pixel-cos(pixel)-conj(1/pixel) , x=real(z) , y=imag(z)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y) :
  d = -1+4*sy*cx
  x = x+(sy*sy-cx+2*sy*cx*cx)/(d*sx)
  y = y-(2*cx*sy*sy+cx*cx-sy)/(d*cy)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y)
  z=x+flip(y)
  |sy*sy+cx+flip(cx*cx+sy)| >= 0.000001
}

Gallet-3-10 {   ; Sylvie Gallet [101324,3444], 1996
                ; Newton's method applied to
                ; x -> sin(y)^2+cos(x) = 0
                ; y -> cos(x)^2+sin(y) = 0
  z = 1+pixel-cos(pixel)-conj(1/pixel) , x=real(z) , y=imag(z)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y) :
  d = -1+x*sy*cx           ; normal value -->  d=-1+4*sy*cx
  x = x+(sy*sy-cx+2*sy*cx*cx)/(d*sx)
  y = y-(2*cx*sy*sy+cx*cx-sy)/(d*cy)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y)
  z=x+flip(y)
  |sy*sy+cx+flip(cx*cx+sy)| >= 0.000001
}

Gallet-3-11   { ; Sylvie Gallet [101324,3444], 1996 
  z = pixel^p1/p2 + p2^pixel/(p1*pixel) , p = p2/p1 :
  z = z*p
  z <= p1
}

Gallet-3-12   { ; Sylvie Gallet [101324,3444], 1996 
  z = pixel^p1/p2 + p2^pixel/(p1*pixel) , p = p1/p2 :
  z = z*p
  z <= p1
}

Gallet-3-13   { ; Sylvie Gallet [101324,3444], 1996 
 z = pixel/(pixel*pixel+1) :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(y+p2*fn2(y))
 y1 = y - p1*fn1(x+p2*fn2(x))
 z = x1+flip(y1)
 |z| <= 4
}

Gallet-3-14 { ; Sylvie Gallet [101324,3444], 1996 
  z = Pixel:
  z = fn1(z)+flip(fn2(z))
  (|real(z)| <= 4) || (|imag(z)| <= 4) 
}

Gallet-3-15 { ; Sylvie Gallet [101324,3444], 1996 
  z = Pixel*(0.0,1.0) :
  n = sin(z)-z-pixel , z = z-n/(cos(z)-pixel)
  |n| > real(p1) 
}
