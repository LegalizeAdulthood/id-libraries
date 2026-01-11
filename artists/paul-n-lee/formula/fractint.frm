Wineglass(XAXIS) {; Pieter Branderhorst
  c = z = pixel:
   z = z * z + c
   c = (1+flip(imag(c))) * real(c) / 2 + z
    |z| <= 4
  }
JTet (XAXIS) {; Julia form 1 of the Tetration formula --Lee Skinner
  z = pixel:
   z = (pixel ^ z) + P1
    |z| <= (P2 + 3)
  }
Cubic (XYAXIS) {; Lee Skinner
  p = pixel, test = p1 + 3
  t3 = 3*p, t2 = p*p
  a = (t2 + 1)/t3, b = 2*a*a*a + (t2 - 2)/t3
  aa3 = a*a*3, z = 0 - a :
   z = z*z*z - aa3*z + b
    |z| < test
 }
Richard1 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
   sq=z*z, z=(sq*sin(sq)+sq)+pixel
    |z|<=50
  }
LeeMandel2 (XYAXIS) {; Kevin Lee
  z=Pixel:
  c=sqr(pixel)/z, c=z+c, z=sqr(c*pixel)
  |z|<4
  ;SOURCE: fractint.frm
}
LeeMandel3 (XAXIS) {; Kevin Lee
  z=Pixel, c=Pixel-sqr(z):
  c=Pixel+c/z, z=c-z*pixel
  |z|<4
  ;SOURCE: fractint.frm
}
InvMandel (XAXIS) {; Mark Peterson
  c = z = 1 / pixel:
   z = sqr(z) + c
    |z| <= 4
  }
Jm_14 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)*pixel))+pixel
    |z|<=t
  }
Richard10(XYAXIS) {; Jm Collard-Richard
  z=pixel:
   z=1/sin(1/(z*z))
    |z|<=50
  }
Halley (XYAXIS) [float=y] {; Chris Green. Halley's formula applied to x^7-x=0.
  ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
  ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
   z5=z*z*z*z*z
   z6=z*z5
   z7=z*z6
   z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))
    0.0001 <= |z7-z|
  }
ULI_4 {
  z = Pixel:
   z = fn1(1/(z+p1))*fn2(z+p1)
    |z| <= p2
  }
Ent {; Scott Taylor
  ; Try params=.5/.75 and the first function as exp.
  ; Zoom in on the swirls around the middle.  There's a
  ; symmetrical area surrounded by an asymmetric area.
  z = Pixel, y = fn1(z), base = log(p1):
   z = y * log(z)/base
    |z| <= 4
  }
Mandelbrot(XAXIS) {; Mark Peterson
  ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z):  ; Start with z**2 to initialize LastSqr
   z = z + Pixel
   z = Sqr(z)
    LastSqr <= 4	  ; Use LastSqr instead of recalculating
  }
Sterling(XAXIS) {; davisl
  z = Pixel:
   z = ((z/2.7182818)^z)/sqr(6.2831853*z)
    |z| <= 4
  }
Dragon (ORIGIN) {; Mark Peterson
  z = Pixel:
   z = sqr(z) + (-0.74543, 0.2)
    |z| <= 4
  }
Richard11(XYAXIS) {; Jm Collard-Richard
  z=pixel:
   z=1/sinh(1/(z*z))
    |z|<=50
  }
ZZ(XAXIS)[float=y] { ; Prof Jm using Newton-Raphson method
  ; use floating point with this one
  z=pixel,solution=1:
   z1=z^z
   z2=(log(z)+1)*z1
   z=z-(z1-1)/z2
    0.001 <= |solution-z1|
  }
Jm_27 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   sqrz=fn1(z), z=sqrz + 1/sqrz + pixel
    |z|<=t
  }
Jm_11a {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(fn4(z)*pixel)))+pixel
    |z|<=t
  }
Fzppfnth {; Lee Skinner
  z = pixel, f = tanh(pixel):
   z = fn1(z)+f
    |z|<= 50
  }
Jm_15 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   f2=fn2(z),z=fn1(f2)*fn3(fn4(f2))*pixel
    |z|<=t
  }
Jm_22 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   sq=fn1(z), z=(sq*fn2(sq)+sq)+pixel
    |z|<=t
  }
Jm_10 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(fn4(z)*pixel)))
    |z|<=t
  }
Jm_03a {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))+pixel
    |z|<=t
  }
Jm_13 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)*pixel))*pixel
    |z|<=t
  }
Jm_23 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)+pixel*pixel))
    |z|<=t
  }
Jm_24 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z2=fn1(z), z=(fn2(z2*fn3(z2)+z2))+pixel
    |z|<=t
  }
Jm_05 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2((z^pixel)))
    |z|<=t
  }
Jm_04 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))
    |z|<=t
  }
Bali {;The difference of two squares
  z=x=1/pixel, c= fn1 (z):
   z = (x+c) * (x-c)
   x=fn2(z)
    |z| <=3
  }
J_Laguerre2 {
  c = pixel, z = P1:
   z = (z*(z - 4) +2 ) / 2 + c
    |z| < 100
  }
J_Laguerre3 {
  c = pixel, z = P1:
   z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c
    |z| < 100
  }
J_TchebychevS4 {
  c = pixel, z = P1:
   z = c*(z*z*(z*z-3)+1)
    |z|<100
  }
Richard5 (XAXIS) {; Jm Collard-Richard
  z = pixel:
   z=sin(z*sinh(z))+pixel
    |z|<=50
  }
halleySin (XYAXIS) [float=y] {; Chris Green. Halley's formula applied to sin(x)=0.
  ; Use floating point.
  ; P1 real = 0.1 will create the picture from page 281 of Pickover's book.
  z=pixel:
   s=sin(z), c=cos(z)
   z=z-p1*(s/(c-(s*s)/(c+c)))
    0.0001 <= |s|
  }
AltJTet (XAXIS) {; Julia form 2 of the Tetration formula --Lee Skinner
  z = P1:
   z = (pixel ^ z) + P1
    |z| <= (P2 + 3)
  }
F'M-SetInNewtonA(XAXIS)[float=y] {; use float=yes
  ; jon horner 100112,1700, 12 feb 93
  z = 0,  c = fn1(pixel),  cminusone = c-1:
   oldz = z, nm = p1*c-2*z*cminusone, dn = p1*(3*z*z+cminusone)
   z = nm/dn+2*z/p1
    |(z-oldz)|>=|0.01|
  }
ULI_5 {
  z = Pixel, c = fn1(pixel):
   z = fn2(1/(z+c))*fn3(z+c)
    |z| <= p1
  }
Fzpfncoh {; Lee Skinner
  z = pixel, f = 1./cosh(pixel):
   z = fn1(z) + f
    |z| <= 50
  }
Fzppfnse {; Lee Skinner
  z = pixel, f = 1./sin(pixel):
   z = fn1(z) + f
    |z| <= 50
  }
Fzpfnseh {; Lee Skinner
  z = pixel, f = 1./sinh(pixel):
   z = fn1(z) + f
    |z| <= 50
  }
JMask {  ; Ron Barnett, 1993
  z = fn1(pixel):
   z = P1*fn2(z)^2 + P2
    |z| <= 4
  }
Frame-RbtM(XAXIS) {; Ron Barnett, 1993
  ; from Mazes for the Mind by Pickover
  z = c = pixel:
   z = z*z*z/5 + z*z + c
    |z| <= 100
  }
J_TchebychevS6 {
  c = pixel, z = P1:
   z = c*(z*z*(z*z*(z*z-5)+6)-1)
    |z|<100
  }
M_Lagandre6 {
  c = P1, z = Pixel:
   z = (z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c
    |z| < 100
  }
REBRefInd2[float=y] {  ; Ron Barnett, 1993
  ; Use floating point
  z = pixel:
   z = (z*z-1)/(z*z+2)*fn1(z)*fn2(z) + p1
    |z| <= 100
  }
MTet (XAXIS) {; Mandelbrot form 1 of the Tetration formula --Lee Skinner
  z = pixel:
   z = (pixel ^ z) + pixel
    |z| <= (P1 + 3)
  }
Ent2 {; Scott Taylor
  ; try params=2/1, functions=cos/cosh, potential=255/355
  z = Pixel, y = fn1(z), base = log(p1):
   z = fn2( y * log(z) / base )
    |z| <= 4
  }
Richard2 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
   z=1/(sin(z*z+pixel*pixel))
    |z|<=50
  }
Fzppfnsr {; Lee Skinner
  z = pixel, f = (pixel)^.5:
   z = fn1(z) + f
    |z| <= 50
  }
Fzppfnre {; Lee Skinner
  z = pixel, f = 1./(pixel):
   z = fn1(z) + f
    |z| <= 50
  }
Jm_21 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(z^pixel)*pixel
    |z|<=t
  }
Jm_19 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(z)*pixel*fn2(fn3(z)+pixel)
    |z|<=t
  }
Fzppchco {
  z = pixel, f = cosxx (pixel):
   z = cosh (z) + f
    |z| <= 50
  }
F'Liar1 { ; Generalization by Jon Horner of Chuck Ebbert formula.
  ; X: X is as true as Y
  ; Y: Y is as true as X is false
  ; Calculate new x and y values simultaneously.
  ; y(n+1)=abs((1-x(n) )-y(n) ), x(n+1)=1-abs(y(n)-x(n) )
  z = pixel:
   z = 1 - abs(imag(z)-real(z) ) + flip(1 - abs(1-real(z)-imag(z) ) )
    fn1(abs(z))<p1
  }
Richard9 (XAXIS) {; Jm Collard-Richard
  z=pixel:
   sqrz=z*z, z=sqrz + 1/sqrz + pixel
    |z|<=4
  }
Fzppcosr {
  z = pixel, f = (pixel) ^ 0.5:
   z = cosxx (z)  + f
    |z| <= 50
  }
FnDog(XYAXIS) {; Scott Taylor
  z = Pixel, b = p1+2:
   z = fn1( z ) * pixel
    |z| <= b
  }
Richard8 (XYAXIS) {; Jm Collard-Richard
  ; This was used for the "Fractal Creations" cover
  z=pixel,sinp = sin(pixel):
   z=sin(z)+sinp
    |z|<=50
  }
Jm_20 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(z^pixel)
    |z|<=t
  }
Jm_25 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(z*fn2(z)) + pixel
    |z|<=t
  }
Jm_12 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(fn2(fn3(z)*pixel))
    |z|<=t
  }
Jm_18 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(z)*pixel*fn2(fn3(z)*pixel)
    |z|<=t
  }
Mandel3 {; Fractal Creations example
  z = pixel, c = sin(z):
   z = (z*z) + c
   z = z * 1/c
    |z| <= 4
  }
Richard4 (XAXIS) {; Jm Collard-Richard
  z = pixel:
   z2=z*z, z=(1/(z2*cos(z2)+z2))+pixel
    |z|<=50
  }
ZZa(XAXIS)[float=y] { ; Prof Jm using Newton-Raphson method
  ; use floating point with this one
  z=pixel,solution=1:
   z1=z^(z-1)
   z2=(((z-1)/z)+log(z))*z1
   z=z-((z1-1)/z2)
    .001 <= |solution-z1|
  }
DeltaLog(XAXIS) {; Mark Peterson
  z = pixel, c = log(pixel):
   z = sqr(z) + c
    |z| <= 4
  }
Jm_17 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(z)*pixel*fn2(fn3(z))
    |z|<=t
  }
Richard6 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
   z=sin(sinh(z))+pixel
    |z|<=50
  }
