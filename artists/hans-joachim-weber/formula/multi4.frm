Multifrac130 {
 z=pixel
 fac=real(p2)
 bailout =imag(p2)
 u=fn1(t/fac)
 if (ismand)
   c = p1/u
 else
   c = z/u
 endif
 t=0
 :
 t=t+1
 z=z^2+c
 |z|<=bailout
 }

Multifrac132 {
 z=c=pixel
 fac=real(p1)
 u=fn1(t/fac)
 t=0
 bailout=imag(p1)
 :
 t=t+1
 z=(z+u)^z+c
 |z|<=bailout
 }

Multifrac132 {
 z=c=pixel
 fac=real(p1)
 u=fn1(t/fac)
 t=0
 bailout=imag(p1)
 :
 t=t+1
 z=(z+u)^z+c
 |z|<=bailout
 }

Multifrac133 {
 bailout=imag(p1)
 z=pixel
 fac=real(p1)
 u=fn1(t/fac)
 c=z/u
 t=0
 :
 t=t+1
 z=z^z+c
 |z|<=bailout
 }

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

Multifrac136 {
 bailout=imag(p1)
 z=c=pixel
 fac=real(p1)
 u=fn1(t/fac)
 t=0
 :
 t=t+1
 z=(z-u)^2+c
 |z|<=bailout
 }

Multifrac137 {
 bailout=imag(p1)
 z=c=pixel
 fac=real(p1)
 u=fn1(t/fac)
 t=0
 :
 t=t+1
 z=(z/u)^2+c
 |z|<=bailout
 }

Multifrac138 {
 bailout=imag(p1)
 z=c=pixel
 fac=real(p1)
 u=fn1(t/fac)
 t=0
 :
 t=t+1
 z=(z*u)^2+c
 |z|<=bailout
 }

Multifrac139 {
 bailout=imag(p2)
 z=pixel
 fac=real(p2)
 u=fn1(t/fac)
 c=p1*u
 t=0
 :
 t=t+1
 z=z^2+c
 |z|<=bailout
 }

Multifrac140a {
 bailout=imag(p2)
 z=pixel
 fac=real(p2)
 u=fn1(t/fac)
 c=p1/u
 t=0
 :
 t=t+1
 z=z^2+c
 |z|<=bailout
 }

Multifrac141 {
 bailout=imag(p2)
 z=pixel
 fac=real(p2)
 u=fn1(t/fac)
 c=p1+u
 t=0
 :
 t=t+1
 z=z^2+c
 |z|<=bailout
 }

Multifrac142 {
 bailout=imag(p2)
 z=pixel
 fac=real(p2)
 u=fn1(t/fac)
 c=p1-u
 t=0
 :
 t=t+1
 z=z^2+c
 |z|<=bailout
 }

Multifrac144a {
 bailout=imag(p2)
 z=pixel
 fac=real(p2)
 u=fn1(t/fac)
 c=p1+u
 t=0
 :
 t=t+1
 z=z^z+c
 |z|<=bailout
 }

Multifrac144a {
 bailout=imag(p2)
 z=pixel
 fac=real(p2)
 u=fn1(t/fac)
 c=p1+u
 t=0
 :
 t=t+1
 z=z^z+c
 |z|<=bailout
 }

Multifrac145 {
 bailout=imag(p2)
 z=pixel
 fac=real(p2)
 u=fn1(t/fac)
 c=p1*u
 t=0
 :
 t=t+1
 z=z^z+c
 |z|<=bailout
 }

Multifrac146 {
 bailout=imag(p2)
 z=pixel
 fac=real(p2)
 u=fn1(t/fac)
 c=p1/u
 t=0
 :
 t=t+1
 z=z^z+c
 |z|<=bailout
 }

Multifrac147 {
 bailout=imag(p1)
 z=c=pixel
 fac=real(p1)
 u=fn1(t/fac)
 t=0
 :
 t=t+1
 z=z^(z+u)-c
 |z|<=bailout
 }

Multifrac148 {
 bailout=imag(p1)
 z=c=pixel
 fac=real(p1)
 u=fn1(t/fac)
 t=0
 :
 t=t+1
 z=(z+u)^2-c
 |z|<=bailout
 }

Multifrac149 {
 bailout=imag(p1)
 z=c=pixel
 fac=real(p1)
 u=fn1(t/fac)
 t=0
 :
 t=t+1
 z=(z-u)^2-c
 |z|<=bailout
 }

Multifrac150 {
 bailout=imag(p1)
 z=c=pixel
 fac=real(p1)
 u=fn1(t/fac)
 t=0
 :
 t=t+1
 z=(z/u)^2-c
 |z|<=bailout
 }

Multifrac152 {
 bailout=imag(p2)
 z=pixel
 fac=real(p2)
 u=fn1(t/fac)
 c=p1*u
 t=0
 :
 t=t+1
 z=z^2-c
 |z|<=bailout
 }

Multifrac155 {
 bailout=imag(p2)
 z=pixel
 fac=real(p2)
 u=fn1(t/fac)
 c=p1-u
 t=0
 :
 t=t+1
 z=z^z-c
 |z|<=bailout
 }

Multifrac156 {
 bailout=imag(p2)
 z=pixel
 fac=real(p2)
 u=fn1(t/fac)
 c=p1+u
 t=0
 :
 t=t+1
 z=z^z-c
 |z|<=bailout
 }

Multifrac157 {
 bailout=imag(p2)
 z=pixel
 fac=real(p2)
 u=fn1(t/fac)
 c=p1*u
 t=0
 :
 t=t+1
 z=z^z-c
 |z|<=bailout
 }

Multifrac158 {
 bailout=imag(p2)
 z=pixel
 fac=real(p2)
 u=fn1(t/fac)
 c=p1/u
 t=0
 :
 t=t+1
 z=z^z-c
 |z|<=bailout
 }

