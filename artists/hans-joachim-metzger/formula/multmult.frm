multirot03-XZ-YW {; Jim Muth
       ; 0,0=para, 90,0=obl, 0,90=elip, 90,90=rect
  ee=exp(flip(real(p1*.01745329251994)))
  f=exp(flip(imag(p1*.01745329251994)))
  z=f*real(pixel)+p2, c=ee*imag(pixel)+p3:
  z=z*z*z+c
  |z| <= 36
  ;SOURCE: 99msg.frm
}

