Carr2929 {; Modified OK-42
          ; passes=1 needs to be used with this PHC formula.
  b5=1/pixel
  p1x=real(p1)+1, p1y=imag(p1)+1
  p2x=real(p2)+1, p2y=imag(p2)+1
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  zx=real(z), zy=imag(z)
  x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y)
  y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x)
  z=x+flip(y)
  |z|<=20
  ;SOURCE: 42vcarr.frm
}

