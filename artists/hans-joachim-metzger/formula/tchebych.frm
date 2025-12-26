M_Lagandre6 {
  c = P1, z = Pixel:
  z = (z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c
  |z| < 100
  ;SOURCE: fractint.frm
}
 
J_Lagandre4 {
  c = pixel, z = P1:
  z = (z*z*(35 * z*z - 30) + 3) / 8 + c
  |z| < 100
  ;SOURCE: fractint.frm
}
 
J_Laguerre3 {
  c = pixel, z = P1:
  z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c
  |z| < 100
  ;SOURCE: fractint.frm
}
 
M_TchebychevS3 {
  c = P1, z = Pixel:
  z = c*z*(z*z-2)
  |z|<100
  ;SOURCE: fractint.frm
}
 
J_TchebychevC3 {
  c = pixel, z = P1:
  z = c*z*(z*z-3)
  |z|<100
  ;SOURCE: fractint.frm
}
 
J_TchebychevC3 {
  c = pixel, z = P1:
  z = c*z*(z*z-3)
  |z|<100
  ;SOURCE: fractint.frm
}
 
M_Laguerre2 {
  c = P1, z = Pixel:
  z = (z*(z - 4) +2 ) / 2 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}
 
J_TchebychevS6 {
  c = pixel, z = P1:
  z = c*(z*z*(z*z*(z*z-5)+6)-1)
  |z|<100
  ;SOURCE: fractint.frm
}
 
J_TchebychevT3 {
  c = pixel, z = P1:
  z = c*z*(4*z*z-3)
  |z|<100
  ;SOURCE: tchebych.frm
}
 
J_TchebychevU7 {     
  c = pixel, z = P1:
  z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8)
  |z|<100
  ;SOURCE: tchebych.frm
}
 
J_TchebychevC7 {
  c = pixel, z = P1:
  z = c*z*(z*z*(z*z*(z*z-7)+14)-7)
  |z|<100
  ;SOURCE: fractint.frm
}
 
Jm_14 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(z)*pixel))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_15 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  f2=fn2(z), z=fn1(f2)*fn3(fn4(f2))*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Mothra (XAXIS) {; Ron Lewen, 76376,2567
                ; Remember Mothra, the giant Japanese-eating moth?
                ; Well... here he (she?) is as a fractal!
  z=pixel:
  a=z^5 + z^3 + z + pixel
  b=z^4 + z^2 + pixel
  z=b^2/a
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: fractint.frm
}
 
Richard1 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
  sq=z*z, z=(sq*sin(sq)+sq)+pixel
  |z|<=50
  ;SOURCE: fractint.frm
}
 
M_Lagandre2 {
  c = P1, z = Pixel:
  z = (3 * z*z - 1) / 2 + c
  |z| < 100
  ;SOURCE: fractint.frm
}
 
M_Lagandre3 {
  c = P1, z = Pixel:
  z = z * (5 * z*z - 3) / 2 + c
  |z| < 100
  ;SOURCE: tchebych.frm
}
 
J_TchebychevC5 { 
  c = pixel, z = P1:
  z = c*z*(z*z*(z*z-5)+5)
  |z|<100
  ;SOURCE: tchebych.frm
}
 
J_TchebychevC5 { 
  c = pixel, z = P1:
  z = c*z*(z*z*(z*z-5)+5)
  |z|<100
  ;SOURCE: tchebych.frm
}
 
J_TchebychevU5 {    
  c = pixel, z = P1:
  z = c*z*(z*z*(32*z*z-32)+6)
  |z|<100
  ;SOURCE: tchebych.frm
}
 
M_TchebychevC5 {
  c = P1, z = Pixel:
  z = c*z*(z*z*(z*z-5)+5)
  |z|<100
  ;SOURCE: fractint.frm
}
 
M_TchebychevC5 {
  c = P1, z = Pixel:
  z = c*z*(z*z*(z*z-5)+5)
  |z|<100
  ;SOURCE: fractint.frm
}
 
M_TchebychevT5 {
  c = P1, z = Pixel:
  z = c*(z*(z*z*(16*z*z-20)+5))
  |z|<100
  ;SOURCE: fractint.frm
}
 
M_TchebychevT5 {
  c = P1, z = Pixel:
  z = c*(z*(z*z*(16*z*z-20)+5))
  |z|<100
  ;SOURCE: fractint.frm
}
 
M_TchebychevU3 {
  c = P1, z = Pixel:
  z = c*z*(8*z*z-4)
  |z|<100
  ;SOURCE: fractint.frm
}
 
