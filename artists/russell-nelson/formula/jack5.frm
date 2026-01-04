Ormandel11(YAXIS) { ; Copr. 1995 by Jack A. Orman
z=c=pixel, t=2+pixel:
  neg=(fn1(z)/fn2(z))^p1 * (z<t)
  pos=(fn1(z)/fn2(z))^p1 * (z>=t)
  z=neg + pos + c
  |z|<t
  }

Ormandel12(YAXIS) { ; Copr. 1995 by Jack A. Orman
z=c=pixel, t=pixel:
  t=t+pixel
  neg=(fn1(z)/fn2(z))^p1 * (z<t)
  pos=(fn1(z)/fn2(z))^p1 * (z>=t)
  z=neg + pos + c
  |z|<t
  }

Ormandel13(YAXIS) { ; Copr. 1995 by Jack A. Orman
z=c=pixel:
  neg= (fn1(z^3+z^2+z))^p1 * (z<pixel)
  pos= (fn2(z^3+z^2+z))^p2 * (z>=pixel)
  z=neg + pos + c
  |z|<16
  }

Ormandel14(YAXIS) { ; Copr. 1995 by Jack A. Orman
z=c=pixel:
  neg= (fn1(z^3+z^2+z))^p1
  pos= (fn2(z^3+z^2+z))^p2
  z=(neg * pos) + c + (0.75,0)
  |z|<4
  }


Ormandel16 { ; Copr. 1995 by Jack A. Orman
z=c=pixel:
  temp=z
  neg= z^2 * (zp<pixel)
  pos= z^3 * (zp>pixel)
  z=neg + pos + c
  zp=fn1(temp)
  |z|<4
  }


Ormandel15     { ; Copr. 1995 by Jack A. Orman
z=pixel, c=pixel^p1:
  z=fn1(z*z)+c
  }

OrmandelTemp      { ; Copr. 1995 by Jack Orman
                    ; Start with Fn1=ident and Fn2=cotanh
                    ; and P1 = 2
  c=cosxx(pixel/z), z=pixel:
  z=z^p1+ c + fn1(pixel)
  |z|<4
  }
      

OrmandelCycle    {; Copr. 1995 by Jack Orman
  z = pixel, c = fn1(pixel):
  temp=z
   z = z*zp + c,
   zp=temp
    |z| <= 4
  }

Ormandel17(YAXIS) { ; Copr. 1995 by Jack A. Orman
z=c=pixel:
  temp=z
  neg= (fn1(z^3+z^2+z))^p1
  pos= (fn2(z^3+z^2+z))^p2
  z=(neg * pos) + c + zp
  zp=sqrt(temp)
  |z|<4
  }


Ormandel18 { ; Copr. 1995 by Jack A. Orman
z=0, c=pixel, c1=pixel, c2=1/pixel:
  z=z^p1 + c1 + c2
  |z|<4
  }

Automatic(XAXIS) = {
   c = z = pixel:
   temp=z
   z=(fn1(z)/fn2(z))*z + c
   zp=temp
   |z|<4
   }

DaliJack4(Xaxis) {;
  z = pixel:
   C1 = fn1(z) * fn2(z),
   C2 = fn3(z) * fn4(z),
   C3 = fn1(z) + fn3(z),
   z = C1 * C2 - C3,
   |z| <= 4
  }

