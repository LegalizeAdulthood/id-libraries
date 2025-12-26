acc_man_mod {; Modified Sylvie Gallet formula
             ; Modified acceleration_man.frm (generalized by Les St Clair)
             ; use fn1=cabs, fn2=abs for default behaviour
             ; set p1=0 and p2=0 for default behaviour
  z2 = r = 0:
  l = r, z = z2
  z1 = z*z + pixel +p1
  vel1 = z1 - z
  z2 = z1*z1 + pixel +p2
  vel2 = z2 - z1
  acc = vel2 - vel1
  r = fn1(acc)
  r < 4 && fn2(l - r) >= 0.001
  ;SOURCE: 97msg.frm
}
 
