tent_in_mod {; Modified Sylvie Gallet formula
             ; Modified tent_inside.frm (generalized by Les St Clair)
             ; use fn1,fn2,fn4=abs & fn3=cabs for default behaviour
             ; set p1=0, p2=0.001 for default behaviour
  IF (p1 || flip(p1))
    r = p1
  ELSE
    r = 1
  ENDIF
  z = 0 :
  l = r+p1
  z = z*z + pixel
  UV = (5,5) - fn1((5,5) - fn2(z))
  r = fn3(UV)
  fn4(l-r) >= p2 && r < 4
  ;SOURCE: tent_mod.par
}
 
