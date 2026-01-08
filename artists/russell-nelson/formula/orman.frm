OrmanDelbrot1 {; Copr. 1995 by Jack Orman
  c = z = Pixel:
   z = fn1(z^3+z^2+z+c)*c
    |z| <= 4
  }

OrmanDelbrot2 {; Copr. 1995 by Jack Orman
  c=z=pixel:
  z=(c*z)^p1+(c*z*z)+c
  |z|<=4
  }

OrmanDelbrot3 {; Copr. 1995 by Jack Orman
   z = Pixel:
   z = pixel * fn1(z)
   |Real(z)| <=  32
  }

OrmanDelbrot4 {; Copr. 1995 by Jack Orman
  c = z = pixel:
   z = z^p1 + fn1(p2)
    |z| <= 4
  }

OrmanDelbrot5 {; Copr. 1995 by Jack Orman
  z = Pixel:
   a=p1
   b=p1-1
   c=p1-2
   z = Z^a-z^b-z^c-p2
    |z| <= 4
  }

OrmanDelbrot6 {; Copr. 1995 by Jack Orman
  z = Pixel:
   a=p1
   b=p1-1
   c=p1-2
   z = ((Z^a-z^b-z^c)/p1)-p2
    |z| <= 8
  }

OrmanDelbrot7 {; Copr. 1995 by Jack Orman
  z = Pixel:
   z = cotan(z)^z + c
    |z| <= 8
  }

OrmanDelbrot8 {; Copr. 1995 by Jack Orman
   c = z = Pixel:
   z =  (z^6+z^5+z^4+z^3+z^2+z+c)/p1
    |z| <= 4
  }

OrmanDelbrot9 {; Copr. 1995 by Jack Orman
  z = Pixel:
   z = fn1(z^5 * z^4)/fn2(z^3 * z^2 * z) + c
    |z| <= 32
  }

OrmanDelbrot10 {; Copr. 1995 by Jack Orman
  z = Pixel, c=fn1(pixel):
   z =(fn2(z^p1)*c)^p2+pixel
    |z| <= 16
  }

OrmanDelbrot11 {; Copr. 1995 by Jack Orman
  c = z = Pixel:
   z = fn1(z)^p1 + fn2(c)*p2
   |z| <= 16
  }

Ormandelbrot12 {; Copr. 1995 by Jack A. Orman
                ; Edited for Fractint v. 20 by George Martin, 10/98
  z=pixel, x=|z|:
  IF (x>1)
    z = fn1(z) + pixel
  ELSE
    z = fn1(z) + z
  ENDIF
  x<=4
  ;SOURCE: orman.frm
}


OrmandelPower     { ; Copr. 1995 by Jack Orman
                    ; Start with Fn1=ident and Fn2=cotanh
                    ; and P1 = 2
  c=z=pixel:
  z=(fn1(z)/fn2(z))^p1 + c
  |z|<4
  }
      

OrmandelFunc    {; Copr. 1995 by Jack Orman
  z = pixel, c = fn1(pixel):
   z = sqr(z) + c,
    |z| <= 4
  }


Automatic_Jack(XAXIS) = {
   c = z = pixel:
   z=z^p1+(fn1(z))+c,
   |z|<4
   }
