; From:  Albrecht.Niekamp@t-online.de (Albrecht Niekamp)
;   To:  <fractint@mailman.xmission.com>
; Date:  Thu, 13 Mar 2003 16:33:21 +0100
; 
; I am Albrecht (Al) from Duesseldorf, Germany...  This contribution is
; something I came upon when I was meditating about what could make a
; fractal look 3d. ---..  The 4-dimensional room can be seen as a warped
; 3-dimensional room and a "3d"fractal accordingly should be a warped
; version of the basic fractal.  The way it is warped of course is
; determined by the depth of the fractal.
; 
; Also I found out, that double iterating opens the possibilty to use the
; first pass for the "warp"factor and the second pass lets you control what
; is inside and what is outside.
; 
; I dont know if this has been done before, anyway I`ve never seen anything
; like it, and hope there will be a discussion about this.I know that T-dis
; has a great part in the 3d-effects, but T-dis alone doesnt do the job.
; I'll be happy to get some feedback of any kind!
; 

Multifrac_204f {;Albrecht Niekamp  -- Feb, 2003 
fac=real(p1)
bailout=imag(p1)
border=real(p2)
out=imag(p2)
z=0
t=0
start=1
c=pixel
:
z=z^2+c
if (start)
 t=t+1
 if (|z|>=border)
  u=2*(fn1(t/fac))
  z=z^u
  start=0
 endif
 if (t>out)
  u=2*(fn1(t/fac))
  z=z/u
  start=0
 endif
endif
|z|<=bailout
}
 
Multifrac_215 {;Albrecht Niekamp  -- Feb, 2003 
;p3=julia seed
fac=real (p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=pixel 
c=p3
t=0
start=1
x=0
y=0
:
y2=y*y
x2=x*x
x=x2-y2-real(c)
y=2*x*y-imag(c)
z=(z*x)^(z*y)
if (start)
  t=t+1
  if (|z|>=border || t>out)
    u=2*(fn1(t/fac))
    z=pixel
    c=p3*u
    start=0
    x=0
    y=0
  endif
endif
|z| <=bailout
  }
 
Multifrac_218 {;Albrecht Niekamp  -- Feb, 2003 
fac=real(p1)
bailout=imag(p1)
border=real(p2)
out=imag(p2)
z=0
t=0
start=1
c=pixel
:
z=z^2+c
if (start)
 t=t+1
 if (|z|>=border)
  u=2*(fn1(t/fac))
  z=z^u
  start=0
 endif
 if (t>out)
  u=2*(fn2(t/fac))
  z=pixel
  c=p3*u
  start=0
 endif
endif
|z|<=bailout
}
 
Multifrac_218a {;Albrecht Niekamp  -- Feb, 2003 
fac=real(p1)
bailout=imag(p1)
border=real(p2)
out=imag(p2)
z=0
t=0
start=1
c=pixel
:
z=z^2+c
if (start)
 t=t+1
 if (|z|>=border)
  u=2*(fn1(t/fac))
  z=z^u
  start=0
 endif
 if (t>out)
  u=2*(fn2(t/fac))
  c=p3*u
  start=0
 endif
endif
|z|<=bailout
}
 
Multifrac_219a {;Albrecht Niekamp  -- Feb, 2003 
fac=real(p1)
bailout=imag(p1)
border=real(p2)
out=imag(p2)
z=0
t=0
start=1
c=pixel
:
if (start)
 z=z^2+c
 t=t+1
 if (|z|>=border)
  u=2*(fn1(t/fac))
  z=z^u
  start=0
 endif
 if (t>out)
  u=2*(fn2(t/fac))
  z=z/u
  c=p3*u
  start=0
 endif
 else
 z=z^z+c
endif
|z|<=bailout
}

Multifrac_219c {;Albrecht Niekamp  -- Feb, 2003 
fac=real(p1)
bailout=imag(p1)
border=real(p2)
out=imag(p2)
z=0
t=0
start=1
c=pixel
:
if (start)
 z=z^2+c
 t=t+1
 if (|z|>=border)
  u=2*(fn1(t/fac))
  z=z^u
  start=0
 endif
 if (t>out)
  u=2*(fn2(t/fac))
  z=z/u
  c=p3/u
  start=0
 endif
 else
 z=z^z+c
endif
|z|<=bailout
}

Multifrac_219d {;Albrecht Niekamp  -- Feb, 2003 
fac=real(p1)
bailout=imag(p1)
border=real(p2)
out=imag(p2)
z=0
t=0
start=1
c=pixel
:
if (start)
 z=z^2+c
 t=t+1
 if (|z|>=border)
  u=2*(fn1(t/fac))
  z=z^u
  start=0
 endif
 if (t>out)
  u=2*(fn2(t/fac))
  z=z/u
  c=p3^u
  start=0
 endif
 else
 z=z^z+c
endif
|z|<=bailout
}
