M-O-rotation {; Jim Muth
   ; real(p1)=power of Z,  imag(p1)=angle of rotation
   ; p2=parallel planes,  p3=rotation point and parallel planes
  a=real(p1), b=imag(p1)+.0000000000001
  z=sin(b*.01745329251994)*real(pixel)+p2
  c=cos(b*.01745329251994)*real(pixel)+flip(imag(pixel))+p3:
  z=z^a-(1.1*z)+c
  |z| <=25
  ;SOURCE: 97msg.frm
}
 
