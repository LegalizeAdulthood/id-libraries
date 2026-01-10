LeeMandel1 (XYAXIS) {; Kevin Lee
  z=Pixel:
   ;; c=sqr(pixel)/z, c=z+c, z=sqr(z),  this line was an error in v16
  c=sqr(pixel)/z, c=z+c, z=sqr(c)
  |z|<4
  ;SOURCE: fractint.frm
}
Eyeball (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sinh(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}
Sam_6 (XYAXIS) {
  z = Pixel:
  z = z*cos(z) - pixel
  ;SOURCE: sam.frm
}
Richard8 (XYAXIS) {; Jm Collard-Richard
                   ; This was used for the "Fractal Creations" cover
  z=pixel, sinp = sin(pixel):
  z=sin(z)+sinp
  |z|<=50
  ;SOURCE: fractint.frm
}
Ny1 (XYAXIS) {
  z=pixel:
  z=(z^pixel)*sinh(z^pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
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
Gamma(XAXIS) {; first order gamma function from Prof. Jm
              ; "It's pretty long to generate even on a 486-33
              ;  comp but there's a lot of corners to zoom in and
              ;  zoom and zoom...beautiful pictures :)"
  z=pixel, twopi=6.283185307179586, r=10:
  z=(twopi*z)^(0.5)*(z^z)*exp(-z)+pixel
  |z|<=r
  ;SOURCE: fractint.frm
}
Frog (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  z=tanh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: choice.frm
}
Richard5 (XAXIS) {; Jm Collard-Richard
  z = pixel:
  z=sin(z*sinh(z))+pixel
  |z|<=50
  ;SOURCE: fractint.frm
}
