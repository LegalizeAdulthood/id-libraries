Multifrac135 {
 bailout=imag(p1)
 z=c=pixel
 fac=real(p1)
 u=fn1(t/fac)
 t=0
 :
 t=t+1
 z=(z+u)^2+c
 |z|<=bailout
 }

