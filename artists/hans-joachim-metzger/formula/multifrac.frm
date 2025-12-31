Multifractal     { ; Albrecht Niekamp  -- Apr, 2003
;only integers as first input, second input 5 digits to the right
;real(p2) factor1,border1
;imag(p2) (-)maxiter1,input bas.frm1_2digits input bas.frm2_2digits
;real(p3) bailout,hyb.mandel: number of sides (Many_mods L.Allison)
;imag(p3) factor2,border2
;real(p4) maxiter2,factor3
;imag(p4) border3,maxiter3
;real(p5) 1digit_shape only  5digits: shape,out1,out2,in1,in2
; 1_mand 2_jul 3_hyb.mand 4_hyb.jul +5_reset (not shape) <0_no in/out1
;  optional basic frm2: out-nbr 1digit in-nbr 1digit 3_both +5_shape
;imag(p5) : 1_iter1reset 2_iter2reset 3_both +5_shape warpeffect
;  optional input2: frequency_2digits level_2digits amplitude_2digits
;
d=real(p2)
fac1=trunc(d)
b1=(d-fac1)*100000
;
d=imag(p2)
da=(d<0)
if (da)
 d=-d
endif
mi1=trunc(d)
d=round((d-mi1)*10000)
p6=trunc(d/100)/10
d=d-1000*p6
if (da)
 p6=-p6
endif
p7=d/10
;
d=real(p3)
ba=trunc(d)
mm=round((d-ba)*100000)
;
d=imag(p3)
fac2=trunc(d)
b2=(d-fac2)*100000
;
d=real(p4)
mi2=trunc(d)
fac3=round((d-mi2)*100000)
;
d=imag(p4)
b3=trunc(d)
mi3=round((d-b3)*100000)
;
da=real(p5)
t=(da<0)
if (t)
 da=-da
endif
start=2-t
dd=trunc(da)
if (dd<5)
 start=0
endif
vb=(dd==3)+(dd==4)
da=round((da-dd)*100)
d=trunc(dd/10000)
vb=(d==3)+(d==4)+vb
dd=dd-d*10000
d=trunc(dd/1000)
or1=(d>5)
d=d-5*or1
vv1=(d==3)
vv2=(d==4)
dd1=(d==2)+(d==4)
dd=dd-d*1000
d=trunc(dd/100)
or2=(d>5)
d=d-5*or2
vv3=(d==3)
vv4=(d==4)
dd2=(d==2)+(d==4)
dd=dd-d*100
d=trunc(dd/10)
inr1=(d>5)
d=d-5*inr1
v1=(d==3)
v2=(d==4)
d1=(d==2)+(d==4)
dd=dd-d*10
d=trunc(dd)
inr2=(d>5)
d=d-5*inr2
v3=(d==3)
v4=(d==4)
d2=(d==2)+(d==4)
d=trunc(da/10)
ab=(d>=5)
d=d-5*ab
da=da-10*d
bb1=(d==1)
bb2=(d==2)
d=da
ab=(d>=5)
d=d-5*ab
ab1=(d==1)
ab2=(d==2)
;
d=imag(p5)
wo=(d>=5)
d=d-5*wo
dd=trunc(d)
le=((d-dd)>0.1)
d=round((d-dd)*1000000)
ir1=(dd==1)+(dd==3)
ir2=(dd==2)+(dd==3)
if (le)
  freq=round((trunc(d/10000))*10)     ;frequency_lake effect by S.Gallet
  d=d-freq*1000
  level=(trunc(d/100))/100            ;water level
  d=d-level*10000
  ampl=d/100                          ;amplitude of the wave
  angle=real(rotskew*pi/180)
  t=exp(-flip(angle))
  h=1/real(magxmag)
  q=h/0.75*imag(magxmag)
  tanskew=tan(imag(rotskew*pi/180))
  w=2*q*t
  v=2*h*(tanskew+flip(1))*t
  z3rd=center+(-q-h*tanskew-flip(h))*t
  z=pixel-z3rd
  s=imag(conj(w)*z)/imag(conj(w)*v)
  if (s<=level)
   da=level-s
   z=z+2*da*(1+ampl*sin(freq*da^0.2))*v
  endif
  z=z+z3rd
endif
if (ismand)
 if (vb)
  c=0.4*log(sqr(pixel^mm))
  z=z*le
 else
  c=z*le+pixel*(le==0)
  z=0
 endif
else
 c=p1
 z=z*le+pixel*(le==0)
endif
t=0
d3=(ismand==0)
u=d3
:
if (vb)
 if (d3)
  z=(z*z-real(c))^(z*u+imag(c))       ;frm: Albrecht Niekamp
 else
  z2=fn1(z)+c                                   ;frm: Many_mods Linda
Allison
  sqz2=cos(z2)
  z=c*(1-sqz2)/(1+sqz2)
 endif
elseif (ab)
 z=z*z+c+c*c-p7                           ;frm: Puskas Istvan
else
 z2=z*z                                          ;frm: Puskas Istvan
modified
 z=z2*z2+(p6+u)*z2+c-p1*(d3==0)
endif
bo=|z|
If (wo)
 t=t+1
 if ((t<mi1)+(bo>b1))
  u=2*(fn1(t/fac1))
  if (ismand)
   z=z*u
   if (vb)
    c=0.4*log(sqr(pixel^mm))
   else
    c=z*le+pixel*(le==0)
   endif
  else
   z=z*le+pixel*(le==0)
   c=p1*u
  endif
  wo=0
  if (ir1)
   t=0
  endif
 endif
elseif (start)
 t=t+1
 if (start==2)
  if (bo>b2)
   u=2*(fn2(t/fac2))
   rs=or1
   ab=bb1
   if (dd1)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=vv2
    d3=vb
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=vv1
    if (vb)
     mm=mm+mm
     c=0.4*log(sqr(pixel^mm))
    endif
    start=1
   endif
  elseif (t>mi2)
   u=2*(fn2(t/fac2))
   rs=inr1
   ab=ab1
   if (d1)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v2
    d3=vb
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
    endif
    vb=v1
    if (vb)
     mm=mm+mm
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
   start=1
   if (ir2)
    t=0
   endif
  endif
 elseif (start==1)
 if (bo>b3)
  u=2*(fn3(t/fac3))
  ab=bb2
  rs=or2
  if (dd2)
   if (rs)
    z=pixel
   endif
   c=p1*u
   vb=vv4
   d3=vb
  else
   d3=0
   z=z*u
   c=z
   if (rs)
    z=0
   endif
   vb=vv3
   if (vb)
    mm=mm+mm
    c=0.4*log(sqr(pixel^mm))
   endif
   start=0
  endif
 elseif (t>mi3)
  u=2*(fn3(t/fac3))
  ab=ab2
  rs=inr2
  if (d2)
   if (rs)
    z=pixel
   endif
   c=p1*u
   vb=v4
   d3=vb
  else
   d3=0
   z=z*u
   c=z
   if (rs)
    z=0
   endif
   vb=v3
   if (vb)
    mm=mm+mm
    c=0.4*log(sqr(pixel^mm))
   endif
  endif
  start=0
 endif
 endif
endif
bo<=ba
}

multifrac10 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p1
  z = z^(z-x+y)
  |z| > (x2+y2)
  }

multifrac10 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p1
  z = z^(z-x+y)
  |z| > (x2+y2)
  }

multifrac13a {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = fn1(z)
  |z| > (x2+y2)
  }

multifrac13a {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = fn1(z)
  |z| > (x2+y2)
  }

multifrac14 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)
  |z| > 4
  }

multifrac14 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)
  |z| > 4
  }

multifrac16 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z-x+y)
  |z| > (x2*y2)
  }

multifrac16 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z-x+y)
  |z| > (x2*y2)
  }

multifrac17 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z)
  |z| > (x2*y2)
  }

multifrac17 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z)
  |z| > (x2*y2)
  }

multifrac18 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z+x-y)
  |z| > (x*y)
  }

multifrac18 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z+x-y)
  |z| > (x*y)
  }

multifrac19 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)
  |z| > (x*y)
  }

multifrac19 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)
  |z| > (x*y)
  }

multifrac2 {
  z = pixel:
  y2=y*y
  x2=x*x
  x=x2-y2-p1
  y=x2*x*y-p2
  z = sqr(z)+x
  |z| > (x2+y2)
  }

multifrac2 {
  z = pixel:
  y2=y*y
  x2=x*x
  x=x2-y2-p1
  y=x2*x*y-p2
  z = sqr(z)+x
  |z| > (x2+y2)
  }

multifrac21 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  else
  y=abs(x)*y*x-p2
  endif
  z = z^(z-x+y)
  |z| > (x2+y2)
  }

multifrac21 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  else
  y=abs(x)*y*x-p2
  endif
  z = z^(z-x+y)
  |z| > (x2+y2)
  }

multifrac22 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  else
  y=abs(x)*y*x-p2
  endif
  z = z^(z-x+y)
  |z| > (x2*y2)
  }

multifrac22 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  if (x<y)
  y=2*x*y-p2
  else
  y=abs(x)*y*x-p2
  endif
  z = z^(z-x+y)
  |z| > (x2*y2)
  }

multifrac30 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-p1
  y = 2*x*y-p2
  w = x2-w2-p3
  z = sqr(z-x-y-w)
  |z| > (x2+w2+y2)
  }

multifrac30 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-p1
  y = 2*x*y-p2
  w = x2-w2-p3
  z = sqr(z-x-y-w)
  |z| > (x2+w2+y2)
  }

multifrac35 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-p1
  if (x<y)
  y=abs(x)*x*y-p2
  w=x2-w2-p3
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x<w)
  w=abs(x)*x*w-p3
  else
  w=abs(y)*x*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac35 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-p1
  if (x<y)
  y=abs(x)*x*y-p2
  w=x2-w2-p3
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x<w)
  w=abs(x)*x*w-p3
  else
  w=abs(y)*x*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac39 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-w2-p1
  if (x>y)
  y=abs(x)*x*y-p2
  if (y<w)
  w=x2-w2-p3
  else
  w=y2-w2-p3
  endif
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x>w)
  w=abs(y)*x*w-p3
  else
  w=abs(x)*y*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac39 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x=x2-y2-w2-p1
  if (x>y)
  y=abs(x)*x*y-p2
  if (y<w)
  w=x2-w2-p3
  else
  w=y2-w2-p3
  endif
  z=sqr(z-x-y-w)
  else
  y=abs(w)*x*y-p2
  if (x>w)
  w=abs(y)*x*w-p3
  else
  w=abs(x)*y*w-p3
  endif
  z=z^(z-x-y-w)
  endif
  |z| > (x2*w2*y2)
  }

multifrac41 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-w2-p1
  y = abs(w)*x*y-p2
  w = abs(y)*x*w-p3
  z = z^(z-x-y-w)
  |z| > (x2*w2*y2)
  }

multifrac41 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  x = x2-y2-w2-p1
  y = abs(w)*x*y-p2
  w = abs(y)*x*w-p3
  z = z^(z-x-y-w)
  |z| > (x2*w2*y2)
  }

multifrac42 {
  z = pixel:
  x = fn1(x)-y
  y = fn2(y)-x
  z = z^(z-x-y)
  |z| > (x*y)
  }

multifrac42 {
  z = pixel:
  x = fn1(x)-y
  y = fn2(y)-x
  z = z^(z-x-y)
  |z| > (x*y)
  }

multifrac45 {
  z = pixel:
  x = fn1(x)-y
  y = fn2(y)-x
  w = fn3(w)-y
  z = sqr(z)-x-y-w
  |z| > (x*y*w)
  }

multifrac45 {
  z = pixel:
  x = fn1(x)-y
  y = fn2(y)-x
  w = fn3(w)-y
  z = sqr(z)-x-y-w
  |z| > (x*y*w)
  }

multifrac47 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  w2=fn3(w)
  if (x2>y2)
  x = x2-y
  y = y2-w
  w = w2-x
  z = z^(z-x-y-w)
  else
  x=2*x2*y
  y=2*y2*w
  w=2*w2*x
  z=sqr(z-x-y-w)
  endif
  |z| > (x*y*w)
  }

multifrac47 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  w2=fn3(w)
  if (x2>y2)
  x = x2-y
  y = y2-w
  w = w2-x
  z = z^(z-x-y-w)
  else
  x=2*x2*y
  y=2*y2*w
  w=2*w2*x
  z=sqr(z-x-y-w)
  endif
  |z| > (x*y*w)
  }

multifrac48 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  w2=fn3(w)
  if (x2>y2)
  x = x2-y
  y = y2-w
  w = w2-x
  z = z^(z)-x-y-w
  else
  x=2*x2*y
  y=2*y2*w
  w=2*w2*x
  z=sqr(z)-x-y-w
  endif
  |z| > (x*y*w)
  }

multifrac48 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  w2=fn3(w)
  if (x2>y2)
  x = x2-y
  y = y2-w
  w = w2-x
  z = z^(z)-x-y-w
  else
  x=2*x2*y
  y=2*y2*w
  w=2*w2*x
  z=sqr(z)-x-y-w
  endif
  |z| > (x*y*w)
  }

multifrac5 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z+x-y)
  |z| > (x2+y2)
  }

multifrac5 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z+x-y)
  |z| > (x2+y2)
  }

multifrac55 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = y2-x2
  z = z^(z-x-y)
  else
  x=fn3(x)+p1
  z=sqr(z-x)
  endif
  |z| > x
  }

multifrac55 {
  z = pixel:
  y2=fn2(y)
  x2=fn1(x)
  if (x2>y2)
  x = x2-y2
  y = y2-x2
  z = z^(z-x-y)
  else
  x=fn3(x)+p1
  z=sqr(z-x)
  endif
  |z| > x
  }

multifrac6 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z-x+y)
  |z| > (x2+y2)
  }

multifrac6 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = sqr(z-x+y)
  |z| > (x2+y2)
  }

multifrac62 {
  z = pixel:
  y2=fn2(y)+p1
  x2=fn1(x)+p2
  w2=fn3(w)+p3
  if (x2>y2)
  x = x2-y2
  y = y2-w2
  w = w2-x2
  z = z^(z-x-y-w)
  else
  x=2*x2*y2
  y=2*y2*w2
  w=2*w2*x2
  z=sqr(z-x-y-w)
  endif
  |z| > (x*y*w)
  }

multifrac62 {
  z = pixel:
  y2=fn2(y)+p1
  x2=fn1(x)+p2
  w2=fn3(w)+p3
  if (x2>y2)
  x = x2-y2
  y = y2-w2
  w = w2-x2
  z = z^(z-x-y-w)
  else
  x=2*x2*y2
  y=2*y2*w2
  w=2*w2*x2
  z=sqr(z-x-y-w)
  endif
  |z| > (x*y*w)
  }

multifrac64 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = y2-x2-p2
  z = fn1(z)+x+y
  |z| > (x2+y2)
  }

multifrac64 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = y2-x2-p2
  z = fn1(z)+x+y
  |z| > (x2+y2)
  }

multifrac65 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2*y2-p1
  y = y2-x2-p2
  z = fn1(z)+x+y
  |z| > (x2*y2)
  }

multifrac65 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2*y2-p1
  y = y2-x2-p2
  z = fn1(z)+x+y
  |z| > (x2*y2)
  }

multifrac67 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1
  y=y2-x2-p2
  if (y2<w2)
  w=w2-x2-p3
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2-p1
  y=2*x2*y2-p2
  if (x2<w2)
  w=2*x2*w2-p3
  else
  w=2*y2*w2-p3
  endif
  z=fn2(z+x+y+w)
  endif
  |z| > (x2+w2+y2)
  }


multifrac68 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1
  y=y2-x2-p2
  if (y2<w2)
  w=w2-x2-p3
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2-p1
  y=2*x2*y2-p2
  if (x2<w2)
  w=2*x2*w2-p3
  else
  w=2*y2*w2-p3
  endif
  z=fn2(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac68 {
z = pixel:
y2 = y*y
x2 = x*x
w2 = w*w
if (x2<y2)
x=x2-y2-p1
y=y2-x2-p2
if (y2<w2)
w=w2-x2-p3
else
w=w2-y2-p3
endif
z=fn1(z+x+y+w)
else
x=x2*y2-p1
y=2*x2*y2-p2
if (x2<w2)
w=2*x2*w2-p3
else
w=2*y2*w2-p3
endif
z=fn2(z-x-y-w)
endif
|z| > (x2+w2+y2)
}

multifrac68 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  w2 = w*w
  if (x2<y2)
  x=x2-y2-p1
  y=y2-x2-p2
  if (y2<w2)
  w=w2-x2-p3
  else
  w=w2-y2-p3
  endif
  z=fn1(z+x+y+w)
  else
  x=x2*y2-p1
  y=2*x2*y2-p2
  if (x2<w2)
  w=2*x2*w2-p3
  else
  w=2*y2*w2-p3
  endif
  z=fn2(z-x-y-w)
  endif
  |z| > (x2+w2+y2)
  }

multifrac7 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z+x-y)
  |z| > (x2+y2)
  }

multifrac7 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z+x-y)
  |z| > (x2+y2)
  }

multifrac8 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)
  |z| > (x2+y2)
  }

multifrac8 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = 2*x*y-p2
  z = z^(z-x+y)
  |z| > (x2+y2)
  }

multifrac9 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = abs(x)*x*y-p2
  z = z^(z-x+y)
  |z| > (x2+y2)
  }

multifrac9 {
  z = pixel:
  y2 = y*y
  x2 = x*x
  x = x2-y2-p1
  y = abs(x)*x*y-p2
  z = z^(z-x+y)
  |z| > (x2+y2)
  }

