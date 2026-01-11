Carr2363 (YAXIS) {; Modified Sylvie Gallet frm.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  z = cabs(newpixel)
  c = cabs(3.5*newpixel^10) - sinh(0.001/newpixel-tan(0.01/newpixel)) + 0.135
  d1 = -0.00045056/newpixel + flip(0.0001/newpixel)
  iter = 0, nextzoom = iterspace = real(p1) :
  test = iter==nextzoom
  nextzoom = nextzoom + test*iterspace
  z = z*(1-test)
  c = c*(1-test) + test*(p2*c+p3) + d1
  z = z*z + c
  iter = iter + 1
  |z| <= 16
  ;SOURCE: 42hcarr.frm
}
