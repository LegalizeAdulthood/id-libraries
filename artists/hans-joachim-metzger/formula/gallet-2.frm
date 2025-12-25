Carr2003b {; Modified Sylvie Gallet frm. [101324,3444], 1996
           ; requires "periodicity=0" (<g> command)
           ; imag(p1) = scale of the Julia set
           ; p2 = center of the Julia set
           ; p3 = param for the Julia set 
  z = c = pixel
  c1 = p3
  z1=imag(p1-cos(pixel))*z-p2, iter=0 
  limit=real(p1), bailout = 16:
  test = (iter==limit)
  z=z*fn1(1-test)+fn2(z1*test), c=fn3(c*(1-test)+(c1*test))
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: bej0015.frm
}
 
gallet-2-09 {; Sylvie Gallet [101324,3444], 1995
  z = pixel, p = p1-1 :
  sinz = sin(z)
  z0 = sinz^p, z1 = (sinz*z0+z)/(p1*z0*fn1(z)+1)
  z = z-z1
  |z1| >= 0.000001
  ;SOURCE: gallet-2.frm
}
 
