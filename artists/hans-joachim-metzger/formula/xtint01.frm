pa0001 {
  z=pixel, x=1-((z+1)^z)*fn1(z):
  z=(z*x)-fn2((whitesq^1/z^z)/fn3(whitesq^1/x))*fn4(x-z)
  |z|<=4
  ;SOURCE: ad4.frm
}

pa0002 {
  z=pixel, x=((1/z+1)^z)-fn1(z):
  z=fn2((z^p1)/fn3(whitesq^x))*fn4(x-z)
  |z|<=4
  ;SOURCE: ad4.frm
}

pa0003 {
  z=pixel, x=1-(cos(z+1)^z)-fn1(z):
  z=fn2((z+p1)/fn3(whitesq^x))+fn4(x*z)
  |z+p1|<4
  ;SOURCE: ad4.frm
}

pa0006 {
  z=c=pixel, x=fn3(p1/z)^2, y=fn4((p1/z)*(p1/z))^z:
  z=(fn1(z+1)/whitesq^x)^fn2(1/y)+c
  |z|<55
  ;SOURCE: ad4.frm
}

