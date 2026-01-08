
kmoe-02 {; by Kirsten Moe. Rewritten for Orgform by G. Martin, 7/14/97
  x=cos(sqr(pixel))
  zx=real(p2)+64*fn1(64):
  z=(x-1)*(x-2)*zx
  x=sin(sqr(z))
  |z|<=4
  ;SOURCE: kmoe-01.frm
}
