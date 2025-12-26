Gallet-4-06 {; Sylvie Gallet [101324,3444], 1996
             ; PTC formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y*y + p2*fn2(y))
   y1 = y - p1 * fn1(x*x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}
 
jowe_68 {; by Jo Weber [100424,35], 12/1996
  z=pixel
  bailout=p3:
  z=(sin(z)-tan(z))/(sin(z)+tan(z))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
jowe_68_1 {; by Jo Weber [100424,35], 4/1997
  z=pixel
  bailout=p3:
  z=(sin(z)-cos(z))/(log(z)^2)
  z=fn1(z)-(z<0)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
