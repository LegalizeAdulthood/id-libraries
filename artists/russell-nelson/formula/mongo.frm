comment {
  This FractInt formula file is by Bradley Beacham, (c) 1993.

  Consider it FREEWARE; I encourage you to copy and distribute it, but
  only if it is unaltered.

  I welcome any comments.  I'm B.BEACHAM on GEnie, and my postal address is:

        Bradley Beacham
        1343 S. Tyler
        Salt Lake City, Utah  84105
        U.S.A.


  NOTE: You'll probably get more interesting results by using floating-point
        math.

}

mongo-01 {
   z = c = pixel:
   z = p1 * fn1(z^z + c) + c/z,
   |z| <= p2
  }

mongo-02 { ;TRY P1 REAL = -1, P2 = 5, FN1 = SQR, FN2 = RECIP
   z = 0, c = pixel:
   z = fn2(fn1(z) + c) + (p1 * z),
   |z| <= p2
  }

mongo-03 {
   z = c = pixel:
   a = (abs(z) > p1)  * (fn1(z) + c);
   b = (abs(z) <= p1) * (fn2(z) + c);
   z = a + b,
   |z| <= p2
  }

mongo-04 {
   z = c = pixel, test = p1/p2:
   a = fn1(z);
   b = (|z| > test)  * (a - c);
   d = (|z| <= test) * (a + c);
   z = b + d,
   |z| <= p1
  }

mongo-05 {
   z = pixel, c = fn1(pixel):
   a = fn2(z);
   b = (|z| >= p1) * (a - c);
   d = (|z| < p1) * (a + c);
   z = a + b + d,
   |z| <= p2
  }

mongo-06 {
   z = c = pixel, d = fn1(pixel):
   a = fn2(z);
   b = (z <= p1) * (a + c + d);
   e = (z > p1) * (a + c - d);
   z = z + b + e,
   |z| <= p2
  }

mongo-07 {
   z = v = pixel:
   oldz = z;
   z = fn1(z)^p1 + v;
   v = oldz,
   |z| <= p2
  }

mongo-08 {
   z = v = pixel:
   a = fn1(z);
   b = (z <= p1) * (a + v);
   e = (z > p1) * (a - v);
   v = z;
   z = b + e,
   |z| <= p2
  }

mongo-09 {
   z = v = pixel:
   a = fn1(z);
   b = (a <= p1) * (a + v);
   e = (a > p1) * fn2(a);
   v = z;
   z = b + e,
   |z| <= p2
  }

mongo-10 {
   z = y = x = pixel:
   a = fn1(z);
   b = (a <= y) * ((a * p1) + y);
   e = (a > y) * ((a * p1) + x);
   x = y;
   y = z;
   z = b + e,
   |z| <= p2
  }

mongo-11 {
   z = y = x = pixel:
   a = (|y| <= p1) * fn1(y);
   b = (|x| <= p1) * fn2(x);
   x = y;
   y = z;
   z = fn3(z) + a + b,
   |z| <= p2
  }

mongo-12 {
   z = pixel, c = (fn1(pixel) * p1):
   x = abs(real(z));
   y = abs(imag(z));
   a = (x <= y) * (fn2(z) + y + c);
   b = (x > y) * (fn2(z) + x + c);
   z = a + b,
   |z| <= p2
  }

mongo-13 {
   z = pixel:
   v = fn1(z);
   x = (z*v);
   y = (z/v);
   a = (|x| <= |y|) * ((z + y) * p1);
   b = (|x| > |y|) * ((z + x) * p1);
   z = fn2((a + b) * v) + v,
   |z| <= p2
  }


