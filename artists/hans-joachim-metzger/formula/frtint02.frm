adr4 {; Added variable "newpixel". G. Martin, 6/27/99
  z=pixel:
  newpixel=whitesqr*fn1((pixel))/(whitesqr==0)
  z=(fn3(newpixel+fn4(newpixel)))
  |z|>=4
  ;SOURCE: ad3.frm
}
 
g1 {
  z=pixel, t=fn1(z/1-z/p1)*(1-z+p2):
  z=z-fn2(p3/z)+p3*(z)*(1-t)/fn3(t)
  |z|>=4
  ;SOURCE: new.frm
}
 
j1 {
   ; see also alx1 in _a.frm - a formula formerly named j1, changed
   ; to avoid duplication of name with this formula.
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2
  |z| <= 4
  ;SOURCE: explode.frm
}
 
