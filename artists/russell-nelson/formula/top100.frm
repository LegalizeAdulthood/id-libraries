
03-Carr {
   c=z=1/pixel + (z=c=cosxx(z) + 1/pixel):
   z=sin(z) + c-0.14;
   z=sin(z) + c-0.14,
   |z| <=10
   }

dafrm21 { 
   z = pixel:
   x = real(z), y = imag(z),
   x1 = -fn1((x*x*x + y*y*y - 1) - 6*x)*x/(2*x*x*x + y*y*y - 1),
   y1 = -fn2((x*x*x + y*y*y - 1) + 6*x)*y/(2*x*x*x + y*y*y - 1),
   x2 = x1*x1*x1 - y1*y1*y1 + p1 + 5,
   y2 = 4*x*y - 18,
   z = x2 + flip(y2),
   |z| <= 100
   }


Halley (XYAXIS) {
   z=pixel:
   z5=z*z*z*z*z;
   z6=z*z5;
   z7=z*z6;
   z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2))),
   0.0001 <= |z7-z|
   }

Jm_19 {
   z=pixel,t=p1+4:
   z=fn1(z)*pixel*fn2(fn3(z)+pixel),
   |z|<=t
   }

Jm_21 {
   z=pixel,t=p1+4:
   z=fn1(z^pixel)*pixel,
   |z|<=t
   }

CGNewtonSinExp (XAXIS) {
   z=pixel:
   z1=exp(z);
   z2=sin(z)+z1-z;
   z=z-p1*z2/(cos(z)+z1), .0001 < |z2|
   }

FractalFenderC(XAXIS_NOPARM) {
   z=p1,x=|z|:
   (z=cosh(z)+pixel)*(1<x)+(z=z)*(x<=1),
   z=sqr(z)+pixel,x=|z|,
   x<=4 
   }

F'M-SetInNewtonA(XAXIS) {
   z = 0,  c = fn1(pixel),  cminusone = c-1:
   oldz = z, nm = p1*c-2*z*cminusone, dn = p1*(3*z*z+cminusone),
   z = nm/dn+2*z/p1, |(z-oldz)|>=|0.01|
   }

F'M-SetInNewtonC(XAXIS) { 
   z=0, c=fn1(pixel), cm1=c-1, cm1x2=cm1*2, twoop1=2/p1, p1xc=c*real(p1):
   z = (p1xc - z*cm1x2 )/( (sqr(z)*3 + cm1 ) * real(p1) ) + z*real(twoop1),
   abs(|z| - real(lastsqr) ) >= p2
   }

FractalFenderC(XAXIS_NOPARM) {
   z  = p1,
   x  = |z|:
   (z  = fn1(z)+pixel) * (1<x)+(z=z) * (x<=1),
   z  = fn2(z)+pixel,
   x  = |z|,
   x <= p2
   }

Fzppfnpo  {
   z = pixel, f = (pixel)^(pixel):
   z = fn1(z) + f,
   |z| <= 50
   }

GopalsamyFn {
   z = pixel:
   x = real(z), y = imag(z),
   x1 = fn1(x)*fn2(y),
   y1 = fn3(x)*fn4(y),
   x2 = -2*x1*y1 + p1,
   y = y1*y1 - x1*x1,
   z = x2 + flip(y), |z| <= 100
   }

Zeppo { 
   z = pixel
   p = (1 * (|p1|<=0) + p1):
   z =fn1(1-abs(imag(z)*p-real(z)))+flip(fn2(1-abs(1-real(z)-imag(z))))-p2
   |z| <= 1
   }

inandout02 { 
   test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
   z = oldz = pixel:
   a = (|z| <= |oldz|) * (fn1(z)) ;IN
   b = (|oldz| < |z|) * (fn2(z))  ;OUT
   oldz = z
   z = a + b + p1
   |z| <= test
   }

inandout04 {
   k = ((1) * (|p1|<=0) + p1)
   test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
   z = oldz = c = pixel:
   a = (|z| <= |oldz|) * (c)   ;IN
   b = (|oldz| < |z|)  * (c*k) ;OUT
   c = a + b
   oldz = z
   z = fn1(z*z) + c
   |z| <= test
   }

Bjax {
   z=c=2/pixel:
   z =(1/((z^(real(p1)))*(c^(real(p2))))*c) + c,
   }

Liar4 { 
   z = pixel, p = p1 + 1:
   z = 1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)));
   |z| <= 1
   }

OK-04 { 
   z = 0, c = fn1(pixel):
   z = fn2(z) + c,
   |z| <= (5 + p1)
   }

OK-35 {
   z = pixel, k = 1 + p1:
   v = fn1(z);
   x = (z*v);
   y = (z/v);
   a = (|x| <= |y|) * ((z + y) * k);
   b = (|x| > |y|) * ((z + x) * k);
   z = fn2((a + b) * v) + v,
   |z| <= (10 + p2)
   }

OK-40 {
  z = pixel, cx = fn1(real(pixel)), cy = fn2(imag(pixel)), k = 2 + p1:
  zx = real(z), zy = imag(z);
  a = zx*cx - zy*cy;
  b = cx*zy + zx*cy;
  x = fn3(a*a - b*b) + cx;
  y = fn4(k*a*b) + cy;
  z = x + flip(y),
  |z| <= (10 + p2)
  }


OK-42 {
  z = pixel, p1x = real(p1)+1, p1y = imag(p1)+1,
  p2x = real(p2)+1, p2y = imag(p2)+1:
  zx = real(z), zy = imag(z);
  x = fn1(zx*p1x - zy*p1y) + fn2(zx*p2x - zy*p2y);
  y = fn3(zx*p1y + zy*p1x) + fn4(zx*p2y + zy*p2x);
  z = x + flip(y),
  |z| <= 20
  } 

OK-43 { 
  z = c = pixel, k = 2 + p1:
  zx = real(z), zy = imag(z);
  cx = real(c), cy = imag(c);
  x = fn1(zx*zx - zy*zy) + cx;
  y = fn2(k*zx*zy) + cy;
  z = x + flip(y);
  c = fn3((cx + flip(cy))/k) + z,
  |z| <  (10 + p2)
}

REB004M = {
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1(const - 12*x)*x/(4*const);
   y1 = -fn2(const + 12*x)*y/(4*const);
   x2 = x1*x1 - y1*y1 + p1;
   y2 = 2*x*y;
   z = x2 + flip(y2), |z| <= 100
}   

REB005G = {
   z = pixel:
   x = real(z), y = imag(z);
   const = x*x + y*y;
   x1 = -fn1(const + p1*x)*y/const;
   y1 = -fn2(const + y)*x/const;
   x2 = x1*x1 - y1*y1 + p2;
   y2 = 2*x1*y1;
   z = x2 + flip(y2), |z| <= 100
}

phoenix_m { 
   z=x=y=nx=ny=x1=y1=x2=y2=0:
   x2 = sqr(x), y2 = sqr(y),
   x1 = x2 - y2 + real(pixel) + imag(pixel) * nx,
   y1 = 2 * x * y + imag(pixel) * ny,
   nx=x, ny=y, x=x1, y=y1, z=x + flip(y),
   |z| <= 4
}

