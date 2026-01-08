Ormandelbrot45 {
z=c=pixel:
z=p1*z*(1-z)+c
|z|<=4
}

Ormandelbrot46 {
z=c=pixel:
z=c*z*(1-z)
|z|<=4
}

Ormandelbrot47 {
z=pixel:
z=p1*z*(1-z)
|z|<=4
}

PixJack {
   z = pixel, c = p1:
   z = z*z + c * pixel
   z <= 4
 }


PixJack2 {
   z = pixel, c = p1, d=c/pixel:
   z = z*z + c + d
   z <= 4
 }

Ormandelbrot48 {
z=pixel, c=p1:
z=sqr(sqr(z)+fn1(c)/sqr(z)-fn2(c))
|z|<=4
}

Ormandelbrot49 {
   z = c =pixel, d=p1:
   z = sqr(z) + C + D
   z <= 4
 }

Ormandelbrot50 {; Mandel-Julia Hybrid
  z = c =pixel, d=p1:
  z = (sqr(z) + C)*(Sqr(z) + D)
  z <= 4
}

Ormandelbrot51 {; Mandel-Julia Hybrid
  z = c =pixel, d=p1:
  z = (sqr(z) + C)+(Sqr(z) + D)
  z <= 4
}

Ormandelbrot52 {
   z=c=pixel:
   z= z * fn1(z) + c
   z<=4
}

Ormandelbrot53 {
   z=c=pixel:
   z= sqr(z) + fn1(z)
   |z|<=4
}

Ormandelbrot54 {
   z=c=pixel:
   z= z * fn1(z)/fn2(z) + c
   z<=4
}

Ormandelbrot55 {
   z=c=pixel:
   z= p1*z*(1-3*fn1(z))
   |z|<=4
}

Dragon {
 z=pixel:
   z=p1*z*(1-z)
 z<=4
 }

Dragon2  {
 z=pixel:
   z=3*z*(1-z)
   z<=4
}
