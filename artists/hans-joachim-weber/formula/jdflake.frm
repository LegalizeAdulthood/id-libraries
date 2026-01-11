JD-G-4-06 {; modified Sylvie Gallet [101324,3444], 1996
           ; PTC 24 bits formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel
  :
  x = real(z), y = imag(z)
  x1 = x - p1 * fn1(y*y + p2*fn2(y))
  y1 = y - p1 * fn1(x*x + p2*fn2(x))
  z = x1 + flip(y1)
  |z| <= 4
  ;SOURCE: jdflake.frm
}

JDFrmF05 {; Jim Deutch, 1996
  sq6=0.5+flip(sqrt(3)/2)
  z=pixel:
  z=z*sq6
  real(z)>-1
  ;SOURCE: jdflake.frm
}

JDFrmF17 {; Jim Deutch, 1996
  sq6=.5+flip(sqrt(3)/2)
  z=pixel:
  z=z*sq6
  fn1(z)<p1
  ;SOURCE: jdflake.frm
}

JDFrmF23 {; Jim Deutch, 1996: PTC triple Julia
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z =c*pixel:
  z=z*z+p1
  |z|<4
  ;SOURCE: jdflake.frm
}

JDFrmF23 {; Jim Deutch, 1996: PTC triple Julia
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z =c*pixel:
  z=z*z+p1
  |z|<4
  ;SOURCE: jdflake.frm
}

JDFrmF26g {; Jim Deutch, 1996
  sq6=.5+flip(sqrt(3)/2)
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z =c*pixel
  ct=0:
  ct=ct+1
  out=(ct<8)
  z=z*sq6*out+ (z*z+p1)*(out==0)
  (fn1(z*(p2+1))*out+ |z|*(out==0))<(out+ 4*(out==0))
  ;SOURCE: jdflake.frm
}

JDFrmF26g {; Jim Deutch, 1996
  sq6=.5+flip(sqrt(3)/2)
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z =c*pixel
  ct=0:
  ct=ct+1
  out=(ct<8)
  z=z*sq6*out+ (z*z+p1)*(out==0)
  (fn1(z*(p2+1))*out+ |z|*(out==0))<(out+ 4*(out==0))
  ;SOURCE: jdflake.frm
}

JDFrmF27 {; Jim Deutch, 1996
  sq6=.5+flip(sqrt(3)/2)
  out=1
  z =pixel*out+(1+(0,-0.65)/fn1(pixel+(0,0.75)))*(out==0)
  ct=0:
  ct=ct+1
  out=(ct<8)
  z2=z*z, z4=z2*z2, n=z4*z2-1
  z=z*sq6*out+(z-n/(6*z4*z))*(out==0)
  (asin(z)*out+ .0001*(out==0))<(out+ |n|*(out==0))
  ;SOURCE: jdflake.frm
}

JDFrmF28 {; Jim Deutch, 1996
  sq6=.5+flip(sqrt(3)/2)
  out=1
  z =pixel*out+(1+(0,-0.65)/(pixel+(0,0.75)))*(out==0)
  ct=0:
  ct=ct+1
  out=(ct<8)
  z2=z*z, z4=z2*z2, n=z4*z2-1
  z=z*sq6*out+(z-n/(6*z4*z))*(out==0)
  ((sinh(z)*out)+|n|*(out==0))>(-5*out+.0001*(out==0))
  ;SOURCE: jdflake.frm
}

JDFrmF31 {; Jim Deutch, 1996
          ; Added variable "newpixel". G. Martin 6/27/99
  sq6=-.5+flip(sqrt(3)/2)
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  newpixel=c*pixel
  z =(1+(0,-0.65)/(newpixel+(0,0.75))):
  z2=z*z, z4=z2*z2, n=z4*z2-1
  z=z-n/(6*z4*z)
  |n|>.0001
  ;SOURCE: jdflake.frm
}

