jdphc01 {
  cr=real(pixel)
  cq=imag(pixel)
  z=(cr*real(p1)+flip(cq*imag(p1)))*whitesq+\
    ((cr*real(p2)+flip(cq*imag(p2)))+p3)*(whitesq==0)
  p=(-.528,-.538)*whitesq+(.378,.303)*(whitesq==0):
  z=z*z+p
  |z|<4
  ;SOURCE: jdphc02.frm
}

jdphc02 {
  cr=real(pixel)
  cq=imag(pixel)
  z=(cr*real(p1)+flip(cq*imag(p1)))*whitesq+\
    ((cr*real(p2)+flip(cq*imag(p2)))+p3)*(whitesq==0)
  p=(.354,.35)*whitesq+(-.528,-.538)*(whitesq==0):
  z=z*z+p
  |z|<4
  ;SOURCE: jdphc02.frm
}

jdphc05 {
  z=pixel*whitesq+pixel*(whitesq==0)*(.9,.4)
  p=(-1.5,0)*whitesq+(-1,0)*(whitesq==0):
  z=z*z+p
  |z|<4
  ;SOURCE: jdphc02.frm
}

jdphc07 {
  cr=real(pixel)
  cq=imag(pixel)
  z=(fn1(cr)*real(p1)+flip(fn2(cq)*imag(p1)))*whitesq+\
    ((fn3(cr)*real(p2)+flip(fn4(cq)*imag(p2)))+p3)*(whitesq==0)
  p=(.3,.5)*whitesq+(.296,.53)*(whitesq==0):
  z=z*z+p
  |z|<4
  ;SOURCE: jdphc02.frm
}

jdphc08 {
  z=pixel*whitesq+(pixel+p3)*(whitesq==0)
  p=p1*whitesq+p2*(whitesq==0):
  z=z*z+p
  |z|<4
  ;SOURCE: jdphc02.frm
}

