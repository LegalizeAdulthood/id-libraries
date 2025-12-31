Ormandel17(YAXIS) {; Copr. 1995 by Jack A. Orman
z=c=pixel:
  temp=z
  neg= (fn1(z^3+z^2+z))^p1
  pos= (fn2(z^3+z^2+z))^p2
  z=(neg * pos) + c + zp
  zp=sqrt(temp)
  |z|<4
  ;SOURCE: jack5.frm
}

Ormandel14(YAXIS) {; Copr. 1995 by Jack A. Orman
  z=c=pixel:
  neg= (fn1(z^3+z^2+z))^p1
  pos= (fn2(z^3+z^2+z))^p2
  z=(neg * pos) + c + (0.75,0)
  |z|<4
  ;SOURCE: jack5.frm
}

Ormandel18 {; Copr. 1995 by Jack A. Orman
  z=0, c=pixel, c1=pixel, c2=1/pixel:
  z=z^p1 + c1 + c2
  |z|<4
  ;SOURCE: jack5.frm
}

OrmandelFunc {; Copr. 1995 by Jack Orman
  z = pixel, c = fn1(pixel):
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: orman.frm
}

Ormandel11 (YAXIS) {; Copr. 1995 by Jack A. Orman
  z=c=pixel, t=2+pixel:
  neg=(fn1(z)/fn2(z))^p1 * (z<t)
  pos=(fn1(z)/fn2(z))^p1 * (z>=t)
  z=neg + pos + c
  |z|<t
  ;SOURCE: jack5.frm
}

Ormandel11 (YAXIS) {; Copr. 1995 by Jack A. Orman
  z=c=pixel, t=2+pixel:
  neg=(fn1(z)/fn2(z))^p1 * (z<t)
  pos=(fn1(z)/fn2(z))^p1 * (z>=t)
  z=neg + pos + c
  |z|<t
  ;SOURCE: jack5.frm
}

Ormandel12(YAXIS) {; Copr. 1995 by Jack A. Orman
  z=c=pixel, t=pixel:
  t=t+pixel
  neg=(fn1(z)/fn2(z))^p1 * (z<t)
  pos=(fn1(z)/fn2(z))^p1 * (z>=t)
  z=neg + pos + c
  |z|<t
  ;SOURCE: jack5.frm
}

Ormandel12(YAXIS) {; Copr. 1995 by Jack A. Orman
  z=c=pixel, t=pixel:
  t=t+pixel
  neg=(fn1(z)/fn2(z))^p1 * (z<t)
  pos=(fn1(z)/fn2(z))^p1 * (z>=t)
  z=neg + pos + c
  |z|<t
  ;SOURCE: jack5.frm
}

Ormandel13(YAXIS) {; Copr. 1995 by Jack A. Orman
  z=c=pixel:
  neg= (fn1(z^3+z^2+z))^p1 * (z<pixel)
  pos= (fn2(z^3+z^2+z))^p2 * (z>=pixel)
  z=neg + pos + c
  |z|<16
  ;SOURCE: jack5.frm
}

Ormandel15 {; Copr. 1995 by Jack A. Orman
  z=pixel, c=pixel^p1:
  z=fn1(z*z)+c
  ;SOURCE: jack5.frm
}

Ormandel15 {; Copr. 1995 by Jack A. Orman
  z=pixel, c=pixel^p1:
  z=fn1(z*z)+c
  ;SOURCE: jack5.frm
}

