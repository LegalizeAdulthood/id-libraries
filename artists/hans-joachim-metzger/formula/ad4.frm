m4 {
  z=1-pixel^2:
  z=((fn1(flip(z)*z))+(fn2(sqr(z)*z)))+p1
  |z|>=4
  ;SOURCE: ad4.frm
}

pa0x4 {
  z=pixel, x=1-real(pixel+whitesq), y=real(1-(pixel)):
  z=(fn1(z*x)/(z*(fn3(z*y)+whitesq)))
  fn2(|z|<4&&(2+whitesq))
  ;SOURCE: ad4.frm
}

pa0x7 {
  z=pixel, x=real(cotan(1/pixel)+whitesq), y=real(1-(pixel)):
  z=(fn1(x/z)*(z-(fn2(z+y)+whitesq)))
  |z|<4
  ;SOURCE: ad4.frm
}

pa0x8 {
  z=pixel, x=tan(pixel), y=real(1-(pixel))+whitesq:
  z=(fn1(z*x)-fn2(z+(fn3(z*y))))^fn4(x*y)
  |z|<4
  ;SOURCE: ad4.frm
}

pa0x9 {
  z=pixel, t=real(sqrt(z/5+sqrt(11))), y=(1-fn4(t))*fn3(t):
  z=(fn1(t/z-1)*fn2(y/z))+whitesq
  |z|<4
  ;SOURCE: ad4.frm
}

pgad2 {
  z=pixel, x=real(z) :
  n=fn1((z/(p1*x)))+pixel
  m=fn2(z/(p1*(x+whitesq)))+pixel
  z=fn3(m*n)
  |real(z)|<=4
  ;SOURCE: ad4.frm
}

phcbbb {
  z=pixel:
  m=cotan(z*real(p1+whitesq))*fn2(((pixel)))
  z=fn1((m)+fn3(z))
  |z|<=4
  ;SOURCE: ad4.frm
}

phcbbb1 {
  z=pixel:
  m=fn4(z*whitesq)*fn2((z-1))
  z=fn1(real(z-1))+fn3(m*(.6,1.1))
  |z|<=4
  ;SOURCE: ad4.frm
}

phcbbb3 {
  z=pixel, x=fn3(abs((z)-real(z))):
  m=cotan(x*real(z))*fn2((z))
  z=fn1(real(z)*whitesq)+fn3(m)
  |z|<=4
  ;SOURCE: ad4.frm
}

phcdd4 {
  z=pixel:
  z=z+pixel*(whitesq==0)
  t=(fn3(z)+whitesq)^P1
  z=fn2(cos(1-z)+sin(1/z))*1-fn1(1/z*sin(t)+fn4(t))
  |z|<=4
  ;SOURCE: ad4.frm
}

phcsary6 {; from spacemandel_phc by Damion presogna, 11/18/96
          ; modified by alex dukay 11/22/96
  z=pixel, r=(pixel*whitesq):
  r=fn1(1/z)+r
  m=fn2((1-(z*z))*imag(flip(z)))
  z=(m*(whitesq)+(r-1))
  |z|<4||2<|r|
  ;SOURCE: ad4.frm
}

phcsary7 {; from spacemandel_phc by Damion presogna, 11/18/96
          ; modified by alex dukay 11/22/96
  z=pixel, r=(pixel*whitesq):
  r=fn1(1/z)+r
  m=fn2((1-(z*z))*imag(flip(z)))
  z=(m*(whitesq))+(r-1)
  |z|<=4
  ;SOURCE: ad4.frm
}

phcx01c {; Jim Deutch/modified by Alex Dukay.july/96
  z=pixel, c=(whitesq-1)^(pixel/fn4(tan(z-1))):
  z=(p1*(fn1(c+z)))+(fn2(z)/whitesq)
  |z|<=4
  ;SOURCE: ad4.frm
}

phcx0x1 {
  z=pixel, t=whitesq*((fn1(tan(real(z+tan(real(z))))))):
  z=(fn2(z-t))
  |z|<=4
  ;SOURCE: ad4.frm
}

phcxaxa {; Elimated superfluous variable "e" 5/7/99. G. Martin
  z=pixel:
  d=(.4), k=sin(.22+d)+whitesq
  ko=sinh(k*real(p2)), x=fn1(ko*k)*fn2(k*ko)
  f=(z+x)/p3
  z=((fn3(f-ko)*z)+fn4(f-x))+log(f)
  z>=4
  ;SOURCE: ad4.frm
}

phcxaxx {
  z=pixel:
  t=(.4), n=(.22), o=sin(t+n)+whitesq
  k=sinh(o*real(p2)), x=fn1(k*o)*fn2(k*o)
  f=(z+x)/p3
  z=((fn3(f-k)*z)+fn4(f-x))+log(f)
  z>=4
  ;SOURCE: ad4.frm
}

phcxxy5 {
  z=pixel, n=conj(flip(z-1)^2), t=(n*whitesq):
  z=(fn2(n)+fn2(z))
  z=fn1(t-1)+fn3((1-z))
  |z|<=4
  ;SOURCE: ad4.frm
}

phcyy9 {; Jim Deutch/modified by Alex Dukay.july/96
  z=whitesq
  c=pixel:
  z=(p1*(fn1(z-1)))-(fn2(z*z)-c)
  |c|<4
  ;SOURCE: ad4.frm
}

pn02 {
  z=pixel, t=(1-conj(z))+(1-fn4(1/z)), u=flip(conj((z-1)))
  v=tan((t*u)):
  l=(fn1(v-t)+fn2(v+u))-(t+u)/whitesq
  z=(fn3(l)+fn4(l+(-whitesq)))
  |z|<=4
  ;SOURCE: ad4.frm
}

xaxa {; Eliminated superfluous "e=.22". G. Martin 05/04/99
  z=pixel:
  d=(.4), k=sin(.22+d)
  ko=sinh(k*real(p2)), x=fn1(ko*k)*fn2(k*ko)
  f=(z+x)/p3
  z=((fn3(f-ko)*z)+fn4(f-x))+log(f)
  z>=4
  ;SOURCE: ad4.frm
}

xtest2 {
  z=c=pixel
  t=|c|:
  u=(t*z*z)+fn1(-(z*z*z)-1)
  w=cotan(imag(sin(z)/(z+whitesq)))
  z=fn1(w/u)*fn2(z*z+p1)
  |z|<p2
  ;SOURCE: ad4.frm
}

