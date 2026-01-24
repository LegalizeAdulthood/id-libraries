
MDRAG (XAXIS) {
  z=.5
  c=pixel:
    z=c*z*(1-z),
    |z| <=4
    }

JDRAG (ORIGIN) {
  z=pixel+.5
  c=P1:
    z=c*z*(1-z),
    |z| <=4
    }

PROP (XAXIS) {
  z=0
  c=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c,
    |z| <=4
    }

JULIAP (ORIGIN) {
  c=P1
  z=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c,
    |z| <=4
    }

 Zexpp (XAXIS) {
      s = (3.1415926535,0.), z = Pixel:
      z = z ^ s + pixel, |z| <= 100
   }

