JimsCompMand {; Jim Muth
  z=c=pixel:
  z=z^p1*(c^(p2-1))+c
  |z| <= p3+100
  ;SOURCE: 97msg.frm
}

JulibrotInvZ {; Jim Muth
    ; Draws oblique slices of order n inverse Julibrot Figure
    ; P1 defines power of Z, P2 determines center of slice
    ; P3 determines angle of slice
  z=pixel, c=p2+(pixel*p3):
  z=(-z)^p1+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}

Mandel_4-D {; 4-D Mandelbrot, 8-D Julibrot
  a=(p1), b=(0,0), d=p2+2:
  f=sqr(a)-sqr(b)+pixel
  b=d*a*b+p3
  a=f
  |a|+|b| <16
  ;SOURCE: 98msg.frm
}

ObliqueMand {; Jim Muth (as posted in Fractal-Art, 4/8/97)
             ; See JulibrotZpwr and JulibrotInvZ for generalized
             ; versions of this formula and additional explanatory
             ; text in the formula comments
  z=pixel
  c=p1+(pixel*p2):
  z=z^(1.4142)+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}

Rectangular {; Jim Muth  imag(z),imag(c)
  z=flip(real(pixel))+p1
  c=flip(imag(pixel))+p2:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 98msg.frm
}

Mystic2 {; Jim Muth
  a=real(p1), b=imag(p1), c=real(p2)
  d=imag(p2), k=real(p3), f=imag(p3)
  g=pixel, z=(pixel)^a+(b*(pixel))^c:
  z=(fn1(z)+(d*(g)))^k+(f*(cos(g)))
  g=sqr(g)
  LastSqr <= 100
  ;SOURCE: 97msg.frm
}

