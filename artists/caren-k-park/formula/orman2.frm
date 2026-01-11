Ormandelbrot20 {
z=c=pixel:
z=(z*z+c)/(z*z-c)
|z|<4
}

Ormandelbrot20A {
z=pixel,C=P1:
z=(z*z+c)*(z*z-c)
|z|<4
}

Ormandelbrot21 {
z=c=pixel:
z=(z*z-c)/(z*z+c)
|z|<4
}

Ormandelbrot22 {
z=c=pixel:
z=(z*z+c)*(z*z-c)
|z|<4
}

Ormandelbrot23 {
z=c=pixel:
z=(z*z+c)+(z*z-c)
|z|<4
}

Ormandelbrot24 {
z=c=pixel:
z=fn1(z*z+c)/fn2(z*z-c)
|z|<4
}

Ormandelbrot25 {
z=c=pixel:
z=fn1(z*z+c)*fn2(z*z-c)
|z|<4
}

Ormandelbrot26 {
z=c=pixel:
z=fn1(z*z+c)+fn2(z*z-c)
|z|<4
}

Ormandelbrot27 {
z=c=pixel:
z=fn1(z*z)/z*z + c
|z|<4
}

Ormandelbrot28 {
z=c=pixel:
z=(z*z)/fn1(z*z) + c
|z|<4
}

Ormandelbrot29 {
z=c=pixel, x=.1:
z= z*z + (c * fn1(z))
c=c + x
|z|<4
}

Ormandelbrot30{
z=c=pixel:
z= z*z + (c * fn1(z))
|z|<4
}

Ormandelbrot31 {
z=c=oldz=pixel:
neg=(|z|<=|oldz|) * (z*z + c)
pos=(|oldz|<|z|)  * (z*z - c)
oldz=z
z=neg + pos
oldz=temp
|z|<=4
}

Ormandelbrot32 {
z=c=pixel:
z=1/(z*z + c) + 1/(z*z - c)
|z|<4
}

Ormandelbrot33 {
z=c=pixel:
z=fn1(1/(z*z + c)) * fn2(1/(z*z - c))
|z|<4
}

Ormandelbrot34 {
z=c=pixel:
z=fn1(fn2(z*z+c)*(z*z-c))
|z|<4
}

Ormandelbrot35 {
z=c=pixel:
z=1/((z*z + c) * (z*z - c))
|z|<4
}

Ormandelbrot36 {
z=c=pixel:
z=fn1(z*z-c)*(z*z+c)
|z|<4
}

Ormandelbrot37 {
z=c=pixel:
z=fn1(pixel/(z*z-c)*(z*z+c))
|z|<4
}

Ormandelbrot38 {
z=c=pixel:
z=fn1(z*z-c)/(z*z+c)
|z|<4
}

Ormandelbrot38 {
z=c=pixel:
z=(z*z-c)/fn1(z*z+c)
|z|<4
}

Ormandelbrot38 {
z=c=pixel:
z=fn1(z*z-c) && fn2(z*z+c)
|z|<4
}

Ormandelbrot39 {
z=c=pixel:
z=fn1(z*z-c) || fn2(z*z+c)
|z|<4
}

Ormandelbrot40 {
c=z=pixel, zp=.1:
z=z*z + zp + c
zp=z
|z|<4
}

Ormandelbrot41 {
c=z=pixel, zp=.1:
z=fn1((z*z+c)/(z*z-c))
zp=z
|z|<4
}

Ormandelbrot42 {
z=pixel,c=p1:
z=(z*z+c)/(z*z-c)
|z|<4
}

Ormandelbrot43 {
z=pixel,z=sqr(z),c=p1:
z=z*z + c
z=fn1(z)
|z|<4
}

Ormandelbrot44 {
z=pixel,c=p1:
z=z*z + c
z=fn1(z)
|z|<4
}

AMandel {
z=pixel, c=p1:
z=sqr(z+c)
|z|<4
}
AAMandel{
z=pixel,c=0:
z=(1-c)*sqr(z) + (c*z^3)
c=c+p1
|z|<p2
}

HalleyJack(xyaxis) {
z=pixel:
s=fn1(z), c=fn2(z)
z=z-p1*(s/(c-(s*s)/(c+c)))
p2<=|s|
}

DaliJack (Yaxis) {;
  z = pixel:
   C1 = fn1(z) / fn2(z),
   C2 = fn3(z) - fn4(z),
   C3 = fn1(z) * fn3(z),
   z = C1 * C2 - C3,
   |z| <= 4
  }

DaliJack2(Yaxis) {;
  z = pixel:
   C1 = fn1(z) * fn2(z),
   C2 = fn3(z) - fn4(z),
   C3 = fn1(z) / fn3(z),
   z = C1 / C2 - C3,
   |z| <= 4
  }

DaliJack3        {;
  z = pixel:
   C1 = fn1(z) * fn2(z),
   C2 = fn3(z) * fn4(z),
   C3 = fn1(z) / fn3(z),
   z = C1 / C2 - C3,
   |z| <= 4
  }

AAron {
c=p1, z=pixel:
z=z*z*z + z*(c-1) - c
|z|<4
}


Mandelbrot(XAXIS) {; Mark Peterson
  ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z):  ; Start with z**2 to initialize LastSqr
   z = z - Pixel
   z = Sqr(z)
    LastSqr <= 4	  ; Use LastSqr instead of recalculating
  }
