1NewPolyRVI {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r=real(p1), a=p2, g=p3+1:
  c=z
  z=z-g*((z^r-1)/(r*z^(r-a)))
  real(|fn1(z)|)<imag(p1)
  ;SOURCE: peternew.frm
}

1NewSinF (XYAXIS) {; Peter Anders anders@physik.hu-berlin.de
                   ; sin(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z
  z=z-g*(sin(z)-root)/cos(z)
  |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001
  ;SOURCE: peternew.frm
}

2HalNewPoly1 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r1=real(p1), r2=imag(p1), g=p2+1, g2=p3+1:
  c=z
  f1=z^r1-1
  f2=r1*z^(r1-1)
  f3=r1*(r1-1)*z^(r1-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
  z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}

2HalNewPoly2 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r1=r2=p1, g=p2+1, g2=p3+1:
  c=z
  f1=z^r1-1
  f2=r1*z^(r1-1)
  f3=r1*(r1-1)*z^(r1-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
  z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}

2HalNewSin {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, root=p1+1, g=p2+1, g2=p3+1:
  c=z
  f1=sin(z)-root
  f2=cos(z)
  f3=-sin(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
  z=z-g2*(sin(z)-root)/(cos(z)) ; Newton
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}

2newTan^2 (XYAxis) {; Peter Anders anders@physik.hu-berlin.de
                    ; tan(z)*tan(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z
  z=z-g*(tan(z)*tan(z)-root)*(cos(z)*cos(z)*cos(z))/(2*sin(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}

2newz^pixelLog {; Peter Anders anders@physik.hu-berlin.de
                ; z^pixel*log(z)-p2=0
  z=pixel, a=pixel, root=p2, g=p3+1:
  c=z
  z=z-g*(z^a*log(z)-root)/(a*z^(a-1)*log(z)+z^a/z)
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}

3NewPolyR1 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), r=p1, root=p2+1, g=p3+1:
  c=z
  z=z-g*((z^r-root)/(r*z^(r-1)))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}

3NewPolyR5 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(fn2(pixel)), r=p1, root=p2+1, g=p3+1:
  c=z
  z=z-g*((z^r-root)/(r*z^(r-1)))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}

3PolyRIII {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r=p1, root=p2+1, g=p3+1:
  c=z
  z=z-g*((z^r-root)/(r*z^(r-1)))
  z=fn1(z)
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}

