Komplexmatsch {
  z=pixel+1/fn1(p2*pixel)+1/fn2(p2*pixel):
  z=((p1-1)*z^p1+1)/(p1*z^(p1-1)) 
  0.001<=|z^p1-1|
  ;SOURCE: crazynwt.frm
}
 
Nwtsqzz { 
   ; The factor exp(p1*...) rotates the pixels
   ; according to their distance from the origin if p1 is 
   ; chosen complex.
  z = pixel*fn1(p2*exp(p1*fn2(|pixel|)*imag(pixel))), Root = 1 :
  z = (4 * z^5 + Root) / (5 * z^4)
  .001 <= |z^5 - Root|
  ;SOURCE: crazynwt.frm
}
 
