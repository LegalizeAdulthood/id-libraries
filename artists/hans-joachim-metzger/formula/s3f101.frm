a---mand {
  z = c = pixel:
  z = z^c + sin(c)
  |z|<p1
  ;SOURCE: eli.frm
}
 
aa-mand-im (XAXIS) {
  z = c = pixel:
  z = sqr(z)+c
  imag(z)<p1
  ;SOURCE: eli.frm
}
 
Cubic (XYAXIS) {; Lee Skinner
  p = pixel, test = p1 + 3
  t3 = 3*p, t2 = p*p
  a = (t2 + 1)/t3, b = 2*a*a*a + (t2 - 2)/t3
  aa3 = a*a*3, z = 0 - a :
  z = z*z*z - aa3*z + b
  |z| < test
  ;SOURCE: fractint.frm
}
 
Element (xyaxis) {; phi lingam
  z = pixel:
  z = z*z*z*z + ((sqrt 5 + 1)/2) 
  |z| <= 4
  ;SOURCE: drcha.frm
}
 
FnDog (XYAXIS) {; Scott Taylor
  z = Pixel, b = p1+2:
  z = fn1( z ) * pixel
  |z| <= b
  ;SOURCE: fractint.frm
}
 
FractalFenderC (XAXIS_NOPARM) {; Spectacular!
    ; Modified for if..else logic 3/18/97 by Sylvie Gallet
   z = p1, x = |z| :
   IF (1 < x)
      z = cosh(z) + pixel
   ENDIF
   z = sqr(z) + pixel, x = |z|
   x <= 4
  ;SOURCE: fract196.frm
}
 
FractalFenderTwoC (XAXIS_NOPARM) {; Edited for Fractint v. 20 
                                  ; by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=cos(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: form1.frm
}
 
Fzpcopch {
  z = pixel, f = pixel ^ (cosh(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}
 
Fzpcopcs {
  z = pixel, f = pixel ^ (1. / cosxx(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}
 
Fzppfnse {; Lee Skinner
  z = pixel, f = 1./sin(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}
 
Fzppfnsr {; Lee Skinner
  z = pixel, f = (pixel)^.5:
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}
 
Fzppfnta {; Lee Skinner
  z = pixel, f = tan(pixel):
  z = fn1(z) + f
  |z|<= 50
  ;SOURCE: fractint.frm
}
 
Fzppfnth {; Lee Skinner
  z = pixel, f = tanh(pixel):
  z = fn1(z)+f
  |z|<= 50
  ;SOURCE: fractint.frm
}
 
Gamma(XAXIS) {; first order gamma function from Prof. Jm
              ; "It's pretty long to generate even on a 486-33 
              ;  comp but there's a lot of corners to zoom in and 
              ;  zoom and zoom...beautiful pictures :)"
  z=pixel, twopi=6.283185307179586, r=10:
  z=(twopi*z)^(0.5)*(z^z)*exp(-z)+pixel
  |z|<=r
  ;SOURCE: fractint.frm
}
 
Halley (xyaxis) {; Chris Green. Halley's formula applied to x^7-x=0.
   ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
   ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
  z5=z*z*z*z*z
  z6=z*z5
  z7=z*z6
  z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))
  0.0001 <= |z7-z|
  ;SOURCE: fractint.frm
}
 
IslandOfChaosC (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=sin(z)/cosxx(z)+pixel
  ENDIF
  x=x+1 
  |z|<=4
  ;SOURCE: choice.frm
}
 
Jm_02 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=(z^pixel)*fn1(z^pixel)
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_04 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_09 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(fn4(z))))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_11a {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(fn4(z)*pixel)))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_12 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(z)*pixel))
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_14 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(z)*pixel))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_18 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z)*pixel*fn2(fn3(z)*pixel)
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_19 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z)*pixel*fn2(fn3(z)+pixel)
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_20 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z^pixel)
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_25 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z*fn2(z)) + pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_ducks (XAXIS) {; Jm Collard-Richard
   ; Not so ugly at first glance and lot of corners to zoom in.
   ; try this: corners=-1.178372/-0.978384/-0.751678/-0.601683
  z=pixel, tst=p1+4, t=1+pixel:
  z=sqr(z)+t
  |z|<=tst
  ;SOURCE: fractint.frm
}
 
Leeze (XAXIS) {
  s = exp(1.,0.), z = Pixel, f = Pixel ^ s:
  z = cosxx (z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}
 
ManInTheOzoneC (XAXIS_NOPARM) { 
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=cosxx(z)+pixel
  ELSE
    z=sin(z)+pixel
  ENDIF
  x=x+1 
  |z|<=4 
  ;SOURCE: choice.frm
}
 
Richard8 (XYAXIS) {; Jm Collard-Richard
                   ; This was used for the "Fractal Creations" cover
  z=pixel, sinp = sin(pixel):
  z=sin(z)+sinp
  |z|<=50
  ;SOURCE: fractint.frm
}
 
ULI_4 {
  z = Pixel:
  z = fn1(1/(z+p1))*fn2(z+p1)
  |z| <= p2
  ;SOURCE: fractint.frm
}
 
ZZ (XAXIS) {; Prof Jm using Newton-Raphson method
            ; use floating point with this one
  z=pixel, solution=1:
  z1=z^z
  z2=(log(z)+1)*z1
  z=z-(z1-1)/z2
  0.001 <= |solution-z1|
  ;SOURCE: fractint.frm
}
 
F'Liar1C {; Generalization by Jon Horner of Chuck Ebbert formula.
          ; X: X is as true as Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  fn2(abs(z))<p1 
  ;SOURCE: liar.frm
}
F'Liar1D {; Generalization by Jon Horner of Chuck Ebbert formula.
          ; X: X is as true as Y
          ; Y: Y is as true as X is false
          ; Calculate new x and y values simultaneously.
          ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = fn1(pixel):
  z = p1 - abs(imag(z)-real(z) ) + flip(p2 - abs(1-real(z)-imag(z) ) )
  |z| <1 
  ;SOURCE: liar.frm
}
