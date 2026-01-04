tC1108 {
  z = fn1( p1 / (4 / p1)),
  c = fn2( p2 / (1 / p2)):
  z = (z * 1 / c) / (fn3 (pixel) - c * c);
  z = z / c,
  |real(z)| <=100 }

tC1126 {
  z = fn1( p1) / (p1 + pixel),
  c = (fn1( 1 / pixel * p2 / pixel))/(0.3, 0.6):
  z = z + c - fn2 (imag( z)),
  |real(z)| <=100 }

tC1197 { ;
         ; where fn1 = conj, fn2 = exp, fn3 = cosxx, fn4 = sqr
         ;
  z  = fn1(1 / pixel * 0.91 / pixel),
  z2 = z + fn2( fn3(1 / pixel)),
  z3 = z * z2,
  c  = ( 1 / fn3( fn4( pixel))) / (1.099, 0):
   z = (z * 1 / c);
  z2 = z3 - (z2 + z / c);
  z3 = z2 - (z3 + z2);
  |real(z)| <= 100 }

tC1258 { ;
         ; where fn1 = conj, fn2 = cosxx, fn3 = sqr,
         ; fn4 = abs
         ;
  z = fn1( 1 / (pixel * pixel * pixel)),
  c = fn2( fn3( 0.56 / pixel * 1 / pixel)):
  z = ( fn4( imag( pixel / z)) * cabs( real( pixel / c))) / (pixel - c * c);
  |real(z)| <=100 }

tC1273 { ;
         ; where fn1, fn2, and fn3 = sqr
         ;       p1 = 2.5, p2 = 1.5
         ;
  z = fn1( fn2( fn3( p1 - pixel))),
  c = z - (pixel - p2):
  z = z * 1 / ( c * c - 1 / pixel);
  |real(z)| <=100 }

tC1293 { ;
         ; where fn1 = log, fn2 = sqr, fn3 = sqr, fn4 = log
  z = fn1( fn2( 1 / pixel)),
  c = 1 / fn3( fn4( pixel)),
  c1= z / c^c / z:
  z = z / c1;
  z = (z - (z^c1)) / (c * c - pixel);
  |real(z)| <=100 }
