Multifrac_202f { ; Albrecht Niekamp  feb,03
fac=real(p1)
bailout=imag(p1)
z=0
t=0
start=1
c=pixel
:
if (start)
 t=t+1
 z=z^2+c
 if (|z|>4) || (t>647)
  u=fn1(t\fac)
  z=0
  start=0
  endif
else
  z=(z+u)^2+c
endif
|z|<=bailout
}

Multifrac_202 {  ; Albrecht Niekamp  feb,03
fac=real(p1)
bailout=imag(p1)
z=0
t=0
start=1
c=pixel
:
if (start)
 t=t+1
 z=z^2+c
 if (|z|>4) || (t>647)
  u=fn1(t/fac)
  z=0
  start=0
  endif
else
  z=(z+u)^2+c
endif
|z|<=bailout
}

Multifrac_203 { ; Albrecht Niekamp  feb,03
fac=real(p1)
bailout=imag(p1)
z=0
t=0
start=1
c=pixel
:
if (start)
 t=t+1
 z=z^2+c
 if (|z|>4) || (t>647)
  u=fn1(t/fac)
  z=0
  c=c*u
  start=0
  endif
else
  z=z^2+c
endif
|z|<=bailout
}

Multifrac_204 { ; Albrecht Niekamp  feb,03
fac=real(p1)
bailout=imag(p1)
z=0
t=0
start=1
c=pixel
:
if (start)
 t=t+1
 z=z^2+c
 if (|z|>4) || (t>647)
  u=fn1(t/fac)
  z=0
  start=0
  endif
else
  z=(z*u)^2+c
endif
|z|<=bailout
}

Multifrac_204a { ;Albrecht Niekamp  feb,03
fac=real(p1)
bailout=imag(p1)
z=0
t=0
start=1
c=pixel
:
if (start)
 t=t+1
 z=z^2+c
 if (|z|>4) || (t>647)
  u=fn1(t/fac)
  z=0
  start=0
  endif
else
  z=(z*u)^2+c
endif
|z|<=bailout
}

Multifrac_204b {  ; Albrecht Niekamp  feb,03
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
 t=t+1
 z=z^2+c
 if (|z|>=border) || (t>out)
  u=fn1(t/fac)
  z=0
  start=0
  endif
else
  z=(z*u)^2+c
endif
|z|<=bailout
}

Multifrac_204c {  ; Albrecht Niekamp  feb,03
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
 t=t+1
 z=z^2+c
 if (|z|>=border) || (t>out)
  u=2*(fn1(t/fac))
  z=0
  start=0
  endif
else
  z=z^u+c
endif
|z|<=bailout
}

Multifrac_204e {; Albrecht Niekamp  feb,03
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
  z=z*u
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

Multifrac_204f {  ; Albrecht Niekamp  feb,03
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

Multifrac_205 {;  Albrecht Niekamp  feb,03
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=0
t=0
start=1
c=pixel
:
if (start)
 t=t+1
 z=z^z+c
 if (|z|>=border) || (t>out)
  u=fn1(t/fac)
  z=0
  start=0
  endif
else
  z=(z*u)^z+c
endif
|z|<=bailout
}

Multifrac_206 { ; Albrecht Niekamp  feb,03
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=0
t=0
start=1
c=pixel
:
if (start)
 t=t+1
 z=z^z+c
 if (|z|>=border) || (t>out)
  u=fn1(t/fac)
  z=0
  start=0
  endif
else
  z=z^(z*c)+c
endif
|z|<=bailout
}

Multifrac_207 { ; Albrecht Niekamp  feb,03
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=pixel
t=0
start=1
c=p3
:
if (start)
 t=t+1
 z=z^2+c
 if (|z|>=border) || (t>out)
  u=fn1(t/fac)
  z=pixel
  c=p3*u
  start=0
  endif
else
  z=z^2+c
endif
|z|<=bailout
}

Multifrac_208 { ; Albrecht Niekamp  feb,03
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=pixel
t=0
start=1
c=p3
:
if (start)
 t=t+1
 z=z^2+c
 if (|z|>=border) || (t>out)
  u=fn1(t/fac)
  z=pixel
  c=p3/u
  start=0
  endif
else
  z=z^2+c
endif
|z|<=bailout
}

Multifrac_209 { ; Albrecht Niekamp  feb,03
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=pixel
t=0
start=1
c=p3
:
z=z^z+c
if (start)
 if (|z|>=border) || (t>out)
  u=fn1(t/fac)
  z=pixel
  c=p3/u
  start=0
  endif
endif
|z|<=bailout
}

Multifrac_210 { ; Albrecht Niekamp  feb,03
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=pixel
t=0
start=1
c=p3
:
z=z^z+c
if (start)
 t=t+1
 if (|z|>=border) || (t>out)
  u=fn1(t/fac)
  z=pixel
  c=p3*u
  start=0
 endif
endif
|z|<=bailout
}

Multifrac_211 { ;  Albrecht Niekamp  feb,03
fac=real (p1)
bailout=imag(p1)
out=real (p2)
border=imag(p2)
if (ismand)
 z = 0
 c = pixel
else
 z = pixel
 c = p3
endif
t=0
start=1
x=0
y=0
:
y2=y*y
x2=x*x
if (start)
t=t+1
x = x2-y2-real(c)
y = 2*x*y-imag(c)
z = z^(z+x-y)
if (|z|>=border) || (t>out)
  u=fn1(t/fac)
  if (ismand)
    z=0
    c=pixel
  else
    z=pixel
    c=p3*u
  Endif
  start=0
  x=0
  y=0
 Endif
else
 if (ismand)
   z=(z*u)^z+c
  else
   z=z^z+c
 endif
endif
|z| <=bailout
   }

Multifrac_212 { ;  Albrecht Niekamp  feb,03
fac=real (p1)
bailout=imag(p1)
out=real (p2)
border=imag(p2)
if (ismand)
 z = 0
 c = pixel
else
 z = pixel
 c = p3
endif
t=0
start=1
x=0
y=0
:
y2=y*y
x2=x*x
if (start)
t=t+1
x = x2-y2-real(c)
y = 2*x*y-imag(c)
z = z^(z+x-y)
if (|z|>=border) || (t>out)
  u=2*(fn1(t/fac))
  if (ismand)
    z=0
    c=pixel
  else
    z=pixel
    c=p3*u
  Endif
  start=0
  x=0
  y=0
 Endif
else
x=x2-y2-real(c)
y=2*x*y-imag(c)
 if (ismand)
   z=(z*u)^(z+x-y)
  else
   z=z^(z+x-y)
 endif
endif
|z| <=bailout
  }

Multifrac_213 { ;  Albrecht Niekamp  feb,03
;p3=julia seed
fac=real (p1)
bailout=imag(p1)
out=real (p2)
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
z=z^(z+x-y)
if (start)
  t=t+1
  if (|z|>=border) || (t>out)
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

Multifrac_214 { ;  Albrecht Niekamp  feb,03
;p3=julia seed
fac=real (p1)
bailout=imag(p1)
out=real (p2)
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
z=z^(z+x-y)
if (start)
  t=t+1
  if (|z|>=border) || (t>out)
    u=2*(fn1(t/fac))
    z=pixel
    c=p3^u
    start=0
    x=0
    y=0
  endif
endif
|z| <=bailout
  }

Multifrac_215 { ;  Albrecht Niekamp  feb,03
;p3=julia seed
fac=real (p1)
bailout=imag(p1)
out=real (p2)
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
  if (|z|>=border) || (t>out)
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

Multifrac_216 { ;  Albrecht Niekamp  feb,03
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=pixel
t=0
start=1
c=p3
:
z=(z+imag(c))^(z+real(c))
if (start)
 t=t+1
 if (|z|>=border) || (t>out)
  u=2*(fn1(t/fac))
  z=pixel
  c=p3*u
  start=0
  endif
endif
|z|<=bailout
}

Multifrac_216a { ;  Albrecht Niekamp  feb,03
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=pixel
t=0
start=1
c=p3
:
z=(z+imag(c))^(z+real(c))
if (start)
 t=t+1
 if (|z|>=border) || (t>out)
  u=2*(fn1(t/fac))
  z=pixel
  c=p3*u
  start=0
  endif
endif
|z|<=bailout
}

Multifrac_217 {
fac=real(p1)
bailout=imag(p1)
border=real(p2)
out=imag(p2)
z=0
t=0
v=2
start=1
c=pixel
:
z=z^v+c
if (start)
 t=t+1
 if (|z|>=border)
  u=2*(fn1(t/fac))
  v=u
  z=0
  start=0
 endif
 if (t>out)
  u=2*(fn2(t/fac))
  z=z/u
  start=0
 endif
endif
|z|<=bailout
}

Multifrac_217a {
fac=real(p1)
bailout=imag(p1)
border=real(p2)
out=imag(p2)
z=0
t=0
v=2
start=1
c=pixel
:
z=z^v+c
if (start)
 t=t+1
 if (|z|>=border)
  u=2*(fn1(t/fac))
  v=u
  start=0
 endif
 if (t>out)
  u=2*(fn2(t/fac))
  z=z/u
  start=0
 endif
endif
|z|<=bailout
}

Multifrac_218 {
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

Multifrac_218a {
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

Multifrac_218ab {
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
  z=z/u
  c=p3/u
  start=0
 endif
endif
|z|<=bailout
}

Multifrac_219 {
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

Multifrac_219a {
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

Multifrac_219c {
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

Multifrac_219d {
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

Multifrac_220 {
fac=real(p1)
bailout=imag(p1)
border=real(p2)
out=imag(p2)
z=0
t=0
start=1
c=pixel
x=0
:
If (x)
  z=(z/u)^z+c
else
  z=z^z+c
endif
if (start)
 t=t+1
 if (|z|>=border)
  u=2*(fn1(t/fac))
  z=z^u
  start=0
  x=1
 endif
 if (t>out)
  u=2*(fn2(t/fac))
  z=z/u
  c=p3/u
  start=0
 endif
endif
|z|<=bailout
}

Multifrac_220a {
fac=real(p1)
bailout=imag(p1)
border=real(p2)
out=imag(p2)
z=0
t=0
start=1
c=pixel
x=0
:
If (x)
  z=z^(z/u)+c
else
  z=z^z+c
endif
if (start)
 t=t+1
 if (|z|>=border)
  u=2*(fn1(t/fac))
  z=pixel
  start=0
  x=1
 endif
 if (t>out)
  u=2*(fn2(t/fac))
  z=z/u
  c=p3/u
  start=0
 endif
endif
|z|<=bailout
}

Multifrac_223 {
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=pixel
t=0
x=0
start=1
c=p3
:
if (x)
 z=z^(z*u)+c
else
 z=z^z+c
endif
if (start)
 t=t+1
  if (|z|>=border)
   u=2*(fn1(t/fac))
   z=z/u
   c=p3*u
   start=0
  endif
  if (t>out)
   u=2*(fn2(t/fac))
   z=0
   c=pixel
   x=1
   start=0
  endif
endif
|z|<=bailout
}

Multifrac_224 {
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=pixel
t=0
x=0
start=1
c=p3
:
if (x)
 z=z^(z*u)+c
else
 z=z^z+c
endif
if (start)
 t=t+1
 if (t>out)
   u=2*(fn1(t/fac))
   z=z/u
   c=p3*u
   start=0
  endif
 if (|z|>=border)
 u=2*(fn2(t/fac))
   z=z/u
   c=pixel
   x=1
   start=0
  endif
endif
|z|<=bailout
}

Multifrac_225 {
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=pixel
t=0
x=0
start=1
c=p3
:
z=z^z+c
if (start)
 t=t+1
 if (t>out) || (|z|>=border)
   u=2*(fn1(t/fac))
   z=z/u
   c=p3*u
   start=0
  endif
endif
|z|<=bailout
}

Multifrac_226 {
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=pixel
t=0
x=0
start=1
c=p3
:
if (x)
 z=z^(z/u)+c
else
 z=z^z+c
endif
if (start)
 t=t+1
 if (t>out) || (|z|>=border)
   u=2*(fn1(t/fac))
   z=z/u
   c=pixel
   start=0
   x=1
  endif
endif
|z|<=bailout
}

Multifrac_227 {
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=pixel
t=0
x=0
start=1
c=p3
:
z=(z+real(c))^(z+imag(c))
if (start)
 t=t+1
 if (t>out) || (|z|>=border)
   u=2*(fn1(t/fac))
   z=z/u
   c=p3*u
   start=0
  endif
endif
|z|<=bailout
}

Multifrac_228 {
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=pixel
t=0
x=0
start=1
c=p3
:
if (start)
z=(z+real(c))^(z+imag(c))
 t=t+1
 if (t>out) || (|z|>=border)
   u=2*(fn1(t/fac))
   z=z/u
   c=PIXEL
   start=0
  endif
ELSE
z=(z+real(c))^((z/u)+imag(c))
endif
|z|<=bailout
}

Multifrac_229 {
fac=real(p1)
bailout=imag(p1)
out=real(p2)
border=imag(p2)
z=0
t=0
x=0
start=1
c=pixel
:
if (start)
z=(z+real(c))^(z+imag(c))
 t=t+1
 if (t>out) || (|z|>=border)
   u=2*(fn1(t/fac))
   z=z/u
   start=0
  endif
ELSE
  z=(z+real(c))^((z/u)+imag(c))
endif
|z|<=bailout
}
