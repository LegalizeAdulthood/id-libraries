; ========================================================================
;BOB02.FRM
;Date:May 15 1993
;By Bob Elwood
;
;
;
;
   B2-1 {
      z = Pixel:
      z = fn1(z*p1)/(fn2(p1*p2^3))
    }

   B2-2 {
      z = Pixel:
      z = fn1(z*(p1/p2))
    }

   B2-3 {
      z = Pixel:
      z = fn1(p1+p2/fn2(z))
    }

   B2-4 {
      z = Pixel:
      z = fn1(p1*p2/fn2(z))
    }

   B2-5 {
      z = Pixel:
      z = fn1(p1/p2*fn2(z))
    }

   B2-6 {
      z = Pixel:
      o = fn1(p1*p2/fn2(z))
      z = fn3(p1+p2/fn4(o))
    }
   B2-7 { ; A Variation on a complex Newton
      z = Pixel:
      z = (fn1(p1+1)/z^p1+z)/(p2/z^(fn2(p2+1)))+1
    }
