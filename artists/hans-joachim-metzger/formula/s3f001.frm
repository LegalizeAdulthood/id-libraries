AltMTet (XAXIS) {; Mandelbrot form 2 of the Tetration formula--Lee Skinner
  z = 0:
  z = (pixel ^ z) + pixel
  |z| <= (P1 + 3)
  ;SOURCE: fractint.frm
}

BirdOfPrey (XAXIS_NOPARM) {; Optimized by Sylvie Gallet
  z = p1 :
  z = cosxx(sqr(z) + pixel) + pixel
  |z| <= 4
  ;SOURCE: fract196.frm
}

DpSpaceProbeTwoC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=exp(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

DrChaosbrot2 (xyaxis) {; more phi
  z = c = pixel:
  z = sqr(z) + (((sqrt(5) + 1)/2)+c)
  |z| <= 4
  ;SOURCE: drcha.frm
}

flip1_man_m {
  z=0, q = pixel:
  q = flip(q)
  z = sqr(z) + q
  |z| <= 4
  ;SOURCE: flip.frm
}

flip3_man_j {
  z = pixel:
  z = 1/flip(sqr(z) + p1)
  |z| <= 4
  ;SOURCE: flip.frm
}

Fly (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin 10/98
  z=p1:
  x=real(z)
  z=sqr(z)+pixel
  z=sqr(z)-pixel
  |z|<=4
  ;SOURCE: choice.frm
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

Fzpcopsq {
  z = pixel, f = pixel ^ (sqr(pixel) ):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}

Fzppchco {
  z = pixel, f = cosxx (pixel):
  z = cosh (z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}

Fzppchlo {
  z = pixel, f = log (pixel):
  z = cosh (z) + f
  |z| <= 50
  ;SOURCE: skinner.frm
}

Fzppcoht {
  z = pixel, f = cosh(pixel) / sinh(pixel):
  z = cosxx (z)+f
  |z|<= 50
  ;SOURCE: skinner.frm
}

Fzppcosr {
  z = pixel, f = (pixel) ^ 0.5:
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: fractint.frm
}

Fzppsiex {
  z = pixel, f = exp (pixel):
  z = sin (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
}

Fzppsqsi {
  z = pixel, f = sin (pixel):
  z = sqr (z)  + f
  |z| <= 50
  ;SOURCE: skinner.frm
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

J_TchebychevC6 {
  c = pixel, z = P1:
  z = c*(z*z*(z*z*(z*z-6)+9)-2)
  |z|<100
  ;SOURCE: tchebych.frm
}

jfnc {
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2*fn1(c)
  |z| <= 4
  ;SOURCE: explode.frm
}

Jm_03a {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}

Jm_06 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3((z^z)*pixel)))
  |z|<=t
  ;SOURCE: fractint.frm
}

Jm_08 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3((z^z)*pixel)))+pixel
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

Jm_16 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  f2=fn2(z), z=fn1(f2)*fn3(fn4(f2))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}

Jm_19 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z)*pixel*fn2(fn3(z)+pixel)
  |z|<=t
  ;SOURCE: fractint.frm
}

Jm_21 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z^pixel)*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}

Jm_22 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  sq=fn1(z), z=(sq*fn2(sq)+sq)+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}

Jm_27 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  sqrz=fn1(z), z=sqrz + 1/sqrz + pixel
  |z|<=t
  ;SOURCE: fractint.frm
}

Liar1 {; by Chuck Ebbert.
       ; X: X is as true as Y
       ; Y: Y is as true as X is false
       ; Calculate new x and y values simultaneously.
       ; y(n+1)=abs((1-x(n) )-y(n)), x(n+1)=1-abs(y(n)-x(n))
  z = pixel:
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  |z| <= 1
  ;SOURCE: fractint.frm
}

Liar2 {; by Chuck Ebbert.
       ; Same as Liar1 but use sequential reasoning, calculating
       ; new y value using new x value.
       ; x(n+1) = 1 - abs(y(n)-x(n) );
       ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) );
  z = pixel:
  x = 1 - abs(imag(z)-real(z))
  z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= 1
  ;SOURCE: liar.frm
}

M_TchebychevC4 {
  c = P1, z = Pixel:
  z = c*(z*z*(z*z-4)+2)
  |z|<100
  ;SOURCE: tchebych.frm
}

M_TchebychevS7 {
  c = P1, z = Pixel:
  z = c*z*(z*z*(z*z*(z*z-6)+10)-4)
  |z|<100
  ;SOURCE: tchebych.frm
}

M_TchebychevT4 {
  c = P1, z = Pixel:
  z = c*(z*z*(8*z*z+8)+1)
  |z|<100
  ;SOURCE: tchebych.frm
}

M_TchebychevU5 {
  c = P1, z = Pixel:
  z = c*z*(z*z*(32*z*z-32)+6)
  |z|<100
  ;SOURCE: tchebych.frm
}

MTet (XAXIS) {; Mandelbrot form 1 of the Tetration formula --Lee Skinner
  z = pixel:
  z = (pixel ^ z) + pixel
  |z| <= (P1 + 3)
  ;SOURCE: fractint.frm
}

RCL_Cosh (XAXIS) {; Ron Lewen, 76376,2567
                  ; Try corners=2.008874/-3.811126/-3.980167/3.779833/
                  ; -3.811126/3.779833 to see Figure 9.7 (P. 123) in
                  ; Pickover's Computers, Pattern, Chaos and Beauty.
                  ; Figures 9.9 - 9.13 can be found by zooming.
                  ; Use floating point
  z=0:
  z=cosh(z) + pixel
  abs(z) < 40
  ;SOURCE: fractint.frm
}

Richard10 (XYAXIS) {; Jm Collard-Richard
  z=pixel:
  z=1/sin(1/(z*z))
  |z|<=50
  ;SOURCE: fractint.frm
}

Richard9 (XAXIS) {; Jm Collard-Richard
  z=pixel:
  sqrz=z*z, z=sqrz + 1/sqrz + pixel
  |z|<=4
  ;SOURCE: fractint.frm
}

ScottLPC (XAXIS) {
  z = pixel, TEST = (p1+3):
  z = log(z)+cosxx(z)
  |z|<TEST
  ;SOURCE: skinner.frm
}

Sterling (XAXIS) {; davisl
  z = Pixel:
  z = ((z/2.7182818)^z)/sqr(6.2831853*z)
  |z| <= 4
  ;SOURCE: fractint.frm
}

F'Liar1 {; Generalization by Jon Horner of Chuck Ebbert formula.
         ; X: X is as true as Y
         ; Y: Y is as true as X is false
         ; Calculate new x and y values simultaneously.
         ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel:
  z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
  fn1(abs(z))<p1
  ;SOURCE: fractint.frm
}
