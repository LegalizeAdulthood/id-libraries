Carr2330 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  m = tan(newpixel) - tanh(newpixel)
  z = 2*m + flip(newpixel), c = (-0.7,0.2)
  d1 = -0.0003545/newpixel + tanh(0.0001/newpixel), d5 = 5*d1, d2 = 2*d1
  z1 = z+d1, z2 = 1.5*z+d1, z3 = 2.25*z+d1
  z4 = 3.375*z+d1, z5 = 5.0625*z+d1
  l1 = real(p1), l2 = imag(p1), l3 = real(p2)
  l4 = imag(p2), l5 = 300
  bailout = 16, iter = 0 :
  t1 = iter==l1, t2 = iter==l2, t3 = iter==l3
  t4 = iter==l4, t5 = iter==l5
  t = 1-(t1||t2||t3||t4)
  ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + d5
  z = z*t + ct - d2, c = c*t + ct
  z = z^2.45 + c + sinh(z/6)
  iter = iter + 1
  |real(z)| <= bailout
  ;SOURCE: 42gcarr.frm
}
