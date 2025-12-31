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

juli^-1 (XAXIS) {;From this Newton is the Julia-Set
  z=pixel:
  z=((pixel-1)*z^pixel+1)/(pixel*z^(pixel-1))
  0.001<=|z^pixel-1|
  ;SOURCE: crazynwt.frm
}

Newton5fn {
  z = pixel+1/fn1(p2 * pixel-p1) :
  z = (4*z^5+1)/(5*z^4)
  0.001<=|z^5-1|
  ;SOURCE: crazynwt.frm
}

Newton5fn12 {
  z = pixel+1/(2 * fn1(p2 * pixel-p1)) + 1/(2 * fn2(p2 * pixel-p1)) :
  z = (4*z^5+1)/(5*z^4)
  0.001<=|z^5-1|
  ;SOURCE: crazynwt.frm
}

Nwtbumps {
  z = fn1(pixel/|pixel|)*fn2(p2*real(pixel)*imag(pixel)), Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}

Nwtbumps {
  z = fn1(pixel/|pixel|)*fn2(p2*real(pixel)*imag(pixel)), Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}

Nwtbumps3 {
  z = pixel + fn1( fn2( fn3( (pixel/|pixel|) * exp( p2 * |pixel|))))
  Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}

Nwtbumps3 {
  z = pixel + fn1( fn2( fn3( (pixel/|pixel|) * exp( p2 * |pixel|))))
  Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}

Nwtfn12rot {; The factor exp(p1*...) rotates the pixels
            ; according to their distance from the origin if p1 is
            ; chosen complex.
  z = pixel+1/fn1(p2*pixel*exp(p1*fn2(|pixel|))), Root = 1 :
  z = (4 * z^5 + Root) / (5 * z^4)
  .001 <= |z^5 - Root|
  ;SOURCE: crazynwt.frm
}

Nwtp+fn123 {
  z = pixel+fn1(fn2(fn3(p2*pixel)))+fn1(fn3(fn2(p2*pixel))), Root = 1:
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  .001 <= |z^p1 - Root|
  ;SOURCE: crazynwt.frm
}

Nwtp+fn123 {
  z = pixel+fn1(fn2(fn3(p2*pixel)))+fn1(fn3(fn2(p2*pixel))), Root = 1:
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  .001 <= |z^p1 - Root|
  ;SOURCE: crazynwt.frm
}

Nwtsimpl {
  z = fn1(p2*pixel)/|pixel|, Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}

Nwtvar1 {
  z = pixel, Root = 1 :
  z = ((p2-1)*z^p1+Root)/(p2*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}

Nwtvar3 {
  z = pixel, Root = 1 :
  z = (real(p1)*z^5+Root)/(5*z^4)
  .001 <= |imag(p1)*z^p2-Root|
  ;SOURCE: crazynwt.frm
}

Nwtvar4 {; there are real & imag just to have more params !
         ; don't start whith this , it's a grown one.
         ; To use it try to understand the basics it's
         ; made of.(var1 & p+fn123 &..)
  f = pixel*fn3(exp(fn2(|pixel|)*imag(pixel)*0.1*(pixel-conj(pixel))))
  z = f+fn1(fn2(fn3(imag(p1)*f)))+fn1(fn3(fn2(imag(p1)*f)))
  Root = 1 :
  z = ((p2-1)*z^real(p1)+Root)/(p2*z^(real(p1)-1))
  .001 <= |z^real(p1)-Root|
  ;SOURCE: crazynwt.frm
}

Nwtvar4 {; there are real & imag just to have more params !
         ; don't start whith this , it's a grown one.
         ; To use it try to understand the basics it's
         ; made of.(var1 & p+fn123 &..)
  f = pixel*fn3(exp(fn2(|pixel|)*imag(pixel)*0.1*(pixel-conj(pixel))))
  z = f+fn1(fn2(fn3(imag(p1)*f)))+fn1(fn3(fn2(imag(p1)*f)))
  Root = 1 :
  z = ((p2-1)*z^real(p1)+Root)/(p2*z^(real(p1)-1))
  .001 <= |z^real(p1)-Root|
  ;SOURCE: crazynwt.frm
}

Nwtwav {
   ; pix/|pix| is a complex number with length 1 and the direction of
   ; the pixel.The faktor fn1(..) allows you to scale it the way
   ; you want.  fn1=ident ,p2=1 should be the normal Newton.
  z = pixel/|pixel|*fn1(p2*|pixel|), Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}

Nwtwav {
   ; pix/|pix| is a complex number with length 1 and the direction of
   ; the pixel.The faktor fn1(..) allows you to scale it the way
   ; you want.  fn1=ident ,p2=1 should be the normal Newton.
  z = pixel/|pixel|*fn1(p2*|pixel|), Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1))
  .001 <= |z^p1-Root|
  ;SOURCE: crazynwt.frm
}

PixNwt {
  z = pixel, Root = fn1(p2 * pixel):
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  .001 <= |z^p1 - Root|
  ;SOURCE: crazynwt.frm
}

PixNwt {
  z = pixel, Root = fn1(p2 * pixel):
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  .001 <= |z^p1 - Root|
  ;SOURCE: crazynwt.frm
}

PixNwt1/ {
  z = pixel, Root = 1/(2*fn1(p2 * pixel)) + 1/(2*fn2(p2 * pixel)):
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  .001 <= |z^p1 - Root|
  ;SOURCE: crazynwt.frm
}

N5fn1_fn2 {;
  z = pixel+1/fn1(p2 * fn2(pixel-p1)) , Root = 1:
  z = (4 * z^5 + Root) / (5 * z^4);
  0.001 <= |z^5 - Root|
  }
