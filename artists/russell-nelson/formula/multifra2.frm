Multifractal_6    { ;  Albrecht Niekamp  020703
;only integers as first input, second input 5 digits to the right
;real(p2) 5digits: shape, outside, in1, in2, in3
; 0_off 1_secant/mand 2_bees/jul 3_m_mods 4_newt +5_reset (not shape)
;  input2 : 2digits_m_mods  5digits_mand/jul use : 0_no 1_yes +5_warp
;imag(p2)(-) 2-4digits : quasinewton input (max 2000)
;               1digit : no m_mods multipl. : 1_out 2_in1 3_in2 4_all
;               1digit : iter-reset 1_out 2_in1 3_in2 4_all
;      input2 : 4digits(-)_mand 2digits_secant 4digits_bees
;real(p3) many_mods bailout, bailout
;imag(p3) shape : factor (fn1), outside : border-in
;real(p4) outside : factor (fn2), border-out
;imag(p4) inside1 : maxiter1, factor1 (fn2)
;real(p5) inside2 : maxiter2, factor2 (fn3)
;imag(p5) inside3 : maxiter3, factor3 (fn4)
;fn(1) is shared by bees and many_mods
;
da=real(p2)
dd=trunc(da)
da=round((da-dd)*10000000)+11111
d=trunc(dd/10000)
t=d>5
dd=dd-d*10000
d=d-5*t
d3=(d==2)+(d==4)
d4=(d3==0)
vb=(d==3)+(d==4)
d=trunc(dd/1000)
ex1=d>0
dd=dd-d*1000
rs1=d>5
d=d-5*rs1
v1m=(d==3)
v1j=(d==4)
dd1=(d==2)+(d==4)
d=trunc(dd/100)
ex2=d>0
dd=dd-d*100
rs2=d>5
d=d-5*rs2
v2m=(d==3)
v2j=(d==4)
dd2=(d==2)+(d==4)
d=trunc(dd/10)
ex3=d>0
dd=dd-d*10
rs3=d>5
d=d-5*rs3
v3m=(d==3)
v3j=(d==4)
dd3=(d==2)+(d==4)
ex4=dd>0
rs4=dd>5
dd=dd-rs4*5
v4m=(dd==3)
v4j=(dd==4)
dd4=(dd==2)+(dd==4)
;
mm=trunc(da/100000)
da=da-mm*100000
d=trunc(da/10000)
ex0=d>5
ab=(d==2)+(d==7)
da=da-d*10000
d=trunc(da/1000)
w1=d>5
ab1=(d==2)+(d==7)
da=da-d*1000
d=trunc(da/100)
w2=d>5
ab2=(d==2)+(d==7)
da=da-d*100
d=trunc(da/10)
w3=d>5
ab3=(d==2)+(d==7)
da=da-d*10
w4=da>5
ab4=(da==2)+(da==7)
tt=ex0+ex1+ex2+ex3+ex4
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
d=round((d-dd)*10000000000)
pp=trunc(dd/100)/10
dd=dd-1000*pp
da=trunc(dd/10)
so1=((da==1)+(da==4)==0)
so2=((da==2)+(da==4)==0)
so3=((da==3)+(da==4)==0)
dd=dd-10*da
ir1=(dd==1)+(dd==4)
ir2=(dd==2)+(dd==4)
ir3=(dd==3)+(dd==4)
;
p0=trunc(d/100000000)/10
d=d-p0*1000000000
p6=trunc(d/1000000)/10
d=d-p6*10000000
if (t)
 p6=-p6
endif
p7=trunc(d/10000)/10
d=d-p7*100000
p8=trunc(d/100)/100
d=d-p8*10000
p9=d/100
;
d=real(p3)
mb=trunc(d)
ba=(d-mb)*100000
;
d=imag(p3)
sfac=trunc(d)
b1=(d-sfac)*100000
b0=b1/2
;
d=real(p4)
ofac=trunc(d)
b2=(d-ofac)*100000
;
d=imag(p4)
mi1=trunc(d)
fac1=(d-mi1)*100000
;
d=real(p5)
mi2=trunc(d)
fac2=(d-mi2)*100000
;
d=imag(p5)
mi3=trunc(d)
fac3=(d-mi3)*100000
;
bg=((ab+vb)==0)
bg1=((ab1+v1j)==0)
bg2=((ab2+v2j)==0)
bg3=((ab3+v3j)==0)
bg4=((ab4+v4j)==0)
;
if (d4)
 z=0
 if (vb)
  c=0.4*log(sqr(pixel^mm))
 else
  c=pixel
  z=pixel*(ab==0)
 endif
else
 if (bg)
  c=p9
 else
  c=p1
 endif
 z=pixel
endif
t=0
u=d3
bo=z
p=pp
z0=p7
:
If (tt)
 t=t+1
 if ((ex0) && bo>b0)
   u=2*(fn1(t/sfac))
   if (d4)
    z=z*u
    if (vb)
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    else
     c=pixel
    endif
   else
    z=pixel
    if (bg)
     c=p9*u
    else
     c=p1*u
     p=pp*u
    endif
   endif
   ex0=0
   tt=tt-1
 elseif ((ex1) && bo>b1 && bo<b2)
  if (w1)
   u=2*(fn2(t/ofac))
  else
   u=1,0
  endif
   rs=rs1
   ab=ab1
   if (dd1)
    if (rs)
     z=pixel
    endif
    vb=v1j
    d3=1
    if (bg1)
     c=p9*u
    else
     c=p1*u
     p=pp*u
    endif
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=pixel*(ab==0)
    endif
    vb=v1m
    if (vb)
     if (so1)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir1)
    t=0
   endif
   ex1=0
   tt=tt-1
 elseif ((ex2) && t>mi1)
  if (w2)
   u=2*(fn2(t/fac1))
  else
   u=1,0
  endif
   rs=rs2
   ab=ab2
   if (dd2)
    if (rs)
     z=pixel
    endif
    vb=v2j
    if (bg2)
     c=p9*u
    else
     c=p1*u
     p=pp*u
    endif
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=pixel*(ab==0)
    endif
    vb=v2m
    if (vb)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir2)
    t=0
   endif
   ex2=0
   tt=tt-1
 elseif ((ex3) && t>mi2)
  if (w3)
   u=2*(fn3(t/fac2))
  else
   u=1,0
  endif
   ab=ab3
   rs=rs3
   if (dd3)
    if (rs)
     z=pixel
    endif
    vb=v3j
    if (bg3)
     c=p9*u
    else
     c=p1*u
     p=pp*u
    endif
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=pixel*(ab==0)
    endif
    vb=v3m
    if (vb)
     if (so3)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir3)
    t=0
   endif
   ex3=0
   tt=tt-1
 elseif ((ex4) && t>mi3)
  if (w4)
   u=2*(fn4(t/fac3))
  else
   u=1,0
  endif
   ab=ab4
   rs=rs4
   if (dd4)
    if (rs)
     z=pixel
    endif
    vb=v4j
    if (bg4)
     c=p9*u
    else
     c=p1*u
     p=pp*u
    endif
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=pixel*(ab==0)
    endif
    vb=v4m
    if (vb)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   ex4=0
   tt=tt-1
 endif
endif
if (vb)
 if (d3)                                 ;quasinewton  Pusk s Istv n
  z1=z^p-1
  z2=p*z*z
  z=z-z1/z2
 else
  z2=fn1(z)+c                            ;many_mods Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (ab)
 z2=z*z                                  ;mandel   Pusk s Istv n
 z=z2*z2+p6*z2+c-p0
elseif (d3)
  z1=fn1(z)-c                            ;bees  Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
else
 z3=z                                    ;secant   unknown
 z1=z0*z0*z0*z0-1
 z2=z*z*z*z-1
 z=z-z2*(z-z0)/(z2-z1)
 z0=z3
endif
bo=|z|
bo<=ba
}

Multifractal_7    { ;  Albrecht Niekamp  240703
;p1 (spider)julia-seed
;real(p2) 5digits: frm-use: shape, outside, inside1, inside2, inside3
; 0_off 1_secant/mand 2_bees/jul 3_m_mods/phoen 4_newt/spider +5_reset
;  input2 : 2digits_many-mods  2digits_phoenix  2digits_spider
;           5digits_secondary frm use : 0_no 1_yes +5_warp
;imag(p2)(-) 2-4digits : quasinewton input (max 2000)
;               1digit : no many_mods multipl. 1_out 2_in1 3_in2 4_all
;               1digit : iter-reset 1_out 2_in1 3_in2 4_all
;  input2 : 4digits(-)_mand/jul 2digits_secant 4digits_bees
;real(p3) many_mods bailout, bailout
;imag(p3) shape   : factor (fn1), outside : border-in (5digits+fract)
;real(p4) outside : factor (fn2), border-out (5digits+fract)
;imag(p4) inside1 : maxiter1, 5digits_factor1 (fn2)
;real(p5) inside2 : maxiter2, 5digits_factor2 (fn3)
;imag(p5) inside3 : maxiter3, 5digits_factor3 (fn4)
;fn(1) is shared by many_mods, bees
da=real(p2)
dd=trunc(da)
da=round((da-dd)*100000000000)+11111
d=trunc(dd/10000)
t=d>5
dd=dd-d*10000
d=d-5*t
d3=(d==2)+(d==4)
d4=(d3==0)
vb=(d==3)+(d==4)
d=trunc(dd/1000)
ex1=d>0
dd=dd-d*1000
rs1=d>5
d=d-5*rs1
v1m=(d==3)
v1j=(d==4)
dd1=(d==2)+(d==4)
d=trunc(dd/100)
ex2=d>0
dd=dd-d*100
rs2=d>5
d=d-5*rs2
v2m=(d==3)
v2j=(d==4)
dd2=(d==2)+(d==4)
d=trunc(dd/10)
ex3=d>0
dd=dd-d*10
rs3=d>5
d=d-5*rs3
v3m=(d==3)
v3j=(d==4)
dd3=(d==2)+(d==4)
ex4=dd>0
rs4=dd>5
dd=dd-rs4*5
v4m=(dd==3)
v4j=(dd==4)
dd4=(dd==2)+(dd==4)
;
mm=trunc(da/1000000000)
da=da-mm*1000000000
ph=trunc(da/10000000)/100
da=da-ph*1000000000
sp=trunc(da/100000)/100
da=da-sp*10000000
d=trunc(da/10000)
ex0=d>4
ab=(d==2)+(d==7)
da=da-d*10000
d=trunc(da/1000)
w1=d>4
ab1=(d==2)+(d==7)
da=da-d*1000
d=trunc(da/100)
w2=d>4
ab2=(d==2)+(d==7)
da=da-d*100
d=trunc(da/10)
w3=d>4
ab3=(d==2)+(d==7)
d=round(da-d*10)
w4=d>4
ab4=(d==2)+(d==7)
tt=ex0+ex1+ex2+ex3+ex4
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
d=round((d-dd)*10000000000)
pp=trunc(dd/100)/10
dd=dd-1000*pp
da=trunc(dd/10)
so1=((da==1)+(da==4)==0)
so2=((da==2)+(da==4)==0)
so3=((da==3)+(da==4)==0)
dd=dd-10*da
ir1=(dd==1)+(dd==4)
ir2=(dd==2)+(dd==4)
ir3=(dd==3)+(dd==4)
;
p0=trunc(d/100000000)/10
d=d-p0*1000000000
p6=trunc(d/1000000)/10
d=d-p6*10000000
if (t)
 p6=-p6
endif
p7=trunc(d/10000)/10
d=d-p7*100000
p8=trunc(d/100)/100
d=d-p8*10000
p9=d/100
;
d=real(p3)
mb=trunc(d)
ba=(d-mb)*100000
;
d=imag(p3)
sfac=trunc(d)
b1=(d-sfac)*100000
b0=b1/2
;
d=real(p4)
ofac=trunc(d)
b2=(d-ofac)*100000
;
d=imag(p4)
mi1=trunc(d)
fac1=(d-mi1)*100000
;
d=real(p5)
mi2=trunc(d)
fac2=(d-mi2)*100000
;
d=imag(p5)
mi3=trunc(d)
fac3=(d-mi3)*100000
;
mo=vb>ab
mo1=v1m>ab1
mo2=v2m>ab2
mo3=v3m>ab3
mo4=v4m>ab4
;
sc=((ab+vb)==0)
sc1=((ab1+v1m)==0)
sc2=((ab2+v2m)==0)
sc3=((ab3+v3m)==0)
sc4=((ab4+v4m)==0)
;
px=((ab+vb)==2)
px1=((ab1+v1m)==2)
px2=((ab2+v2m)==2)
px3=((ab3+v3m)==2)
px4=((ab4+v4m)==2)
;
if (d4)
 z=0
 if (vb)
  if (mo)
   c=0.4*log(sqr(pixel^mm))
  else
   c=pixel
   z=pixel
  endif
 else
  c=pixel
  z=pixel*sc
 endif
else
 c=p1
 z=pixel
endif
t=0
u=d3
bo=z
p=pp
z0=p7
zold=(0.0,0.0)
cb=p9
:
If (tt)
 t=t+1
 if ((ex0) && bo>b0)
   u=2*(fn1(t/sfac))
   if (d4)
    z=z*u
    if (mo)
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    else
     c=pixel
    endif
   else
    z=pixel
    cb=p9*u
    c=p1*u
    p=pp*u
   endif
   ex0=0
   tt=tt-1
 elseif ((ex1) && bo>b1 && bo<b2)
  if (w1)
   u=2*(fn2(t/ofac))
  else
   u=1,0
  endif
   rs=rs1
   ab=ab1
   if (dd1)
    if (rs)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     c=p1
     z=z*u
     cb=p9
    endif
    vb=v1j
    d3=1
   else
    d3=0
    if (rs)
     c=z*u
     z=pixel*(sc1+px1)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v1m
    if (mo1)
     if (so1)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir1)
    t=0
   endif
   ex1=0
   tt=tt-1
 elseif ((ex2) && t>mi1)
  if (w2)
   u=2*(fn2(t/fac1))
  else
   u=1,0
  endif
   rs=rs2
   ab=ab2
   if (dd2)
    if (rs)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
    vb=v2j
    d3=1
   else
    d3=0
    if (rs)
     c=z*u
     z=pixel*(sc2+px2)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v2m
    if (mo2)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir2)
    t=0
   endif
   ex2=0
   tt=tt-1
 elseif ((ex3) && t>mi2)
  if (w3)
   u=2*(fn3(t/fac2))
  else
   u=1,0
  endif
   ab=ab3
   rs=rs3
   if (dd3)
    if (rs)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
    vb=v3j
    d3=1
   else
    d3=0
    if (rs)
     c=z*u
     z=pixel*(sc3+px3)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v3m
    if (mo3)
     if (so3)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   if (ir3)
    t=0
   endif
   ex3=0
   tt=tt-1
 elseif ((ex4) && t>mi3)
  if (w4)
   u=2*(fn4(t/fac3))
  else
   u=1,0
  endif
   ab=ab4
   rs=rs4
   if (dd4)
    if (rs)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
    vb=v4j
    d3=1
   else
    d3=0
    if (rs)
     c=z*u
     z=pixel*(sc4+px4)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v4m
    if (mo4)
     if (so2)
      mm=mm+mm
     endif
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    endif
   endif
   ex4=0
   tt=tt-1
 endif
endif
if (vb)
 if (d3)
  if (ab)
   z=z*z+c                                ;Spiderjul     John Horner
   c=c*sp+z
  else
   z1=z^p-1                               ;Qusinewton    Pusk s Istv n
   z2=p*z*z
   z=z-z1/z2
  endif
 elseif (ab)
   zt=z*z+ph-0.5*zold                     ;Phoenix       Mike Wareman
   zold=z
   z=zt
 else
  z2=fn1(z)+c                             ;Many_mods     Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (d3)
 if (ab)
  z2=z*z                                  ;Julia         Pusk s Istv n
  z=z2*z2+p6*z2+c-p0
 else
  z1=fn1(z)-cb                            ;Bees          Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
 endif
elseif (ab)
 z2=z*z                                   ;Mandel        Pusk s Istv n
 z=z2*z2+p6*z2+c-p0
else
 z3=z                                     ;Secant        Mike Wareman
 z1=z0*z0*z0*z0-1
 z2=z*z*z*z-1
 z=z-z2*(z-z0)/(z2-z1)
 z0=z3
endif
bo=|z|
bo<=ba
}

Multifractal_8    { ;  Albrecht Niekamp  090803
;p1 (spider)julia-seed
;real(p2) 5digits : (1)shape (2)outside (3)inside1 (4)inside2 (5)inside3
; 0_off 1_secant 2_mand 3_bees 4_jul 5_m_mods 6_phoen 7_newt 8_spider
;  input2 :  2digits_many-mods  2digits_phoenix  2digits_spider
;            5digits_reset : 0_no 1_z-reset 2_iter-reset 3_both +5_warp
;imag(p2)(-) 2-4digits : newton input (max 2000)
;            2digits   : channel_alt-bailout1  channel_alt-bailout2
;  input2 :  4digits(-)_mand/jul 2digits_secant 4digits_bees
;real(p3) alt-bailout1, 5digits_bailout  6digits alt-bailout2
;imag(p3) shape  : factor (fn1), outside : border-in (5digits+fract.)
;real(p4) outside: factor (fn2), outside : border-out (5digits+fract.)
;imag(p4) inside1: maxit1, 1digit_use:1_maxit 2_bord-in 3_bord-out +5_both
;                  5digits_factor1 (fn2)  4digits+fract_border1
;real(p5) inside2: maxit2, 1digit_use:1_maxit 2_bord-in 3_bord-out +5_both
;                  5digits_factor2 (fn3)  4digits+fract_border2
;imag(p5) inside3: maxit3, 1digit_use:1_maxit 2_bord-in 3_bord-out +5_both
;                  5digits_factor3 (fn4)  4digits+fract_border3
;fn(1) shared by many-mods+bees
;
da=real(p2)
dd=trunc(da)
da=round((da-dd)*100000000000)+11111
dd=dd+1
d=trunc(dd/10000)
dd=dd-d*10000
d3=(d==3)+(d==4)+(d==7)+(d==8)
d4=(d3==0)
vb=d>4
ab=(d==2)+(d==4)+(d==6)+(d==8)
d=trunc(dd/1000)
dd=dd-d*1000
ex1=d>0
v1m=(d==5)+(d==6)
v1j=d>6
dd1=(d==3)+(d==4)+v1j
ab1=(d==2)+(d==4)+(d==6)+(d==8)
d=trunc(dd/100)
dd=dd-d*100
ex2=d>0
v2m=(d==5)+(d==6)
v2j=d>6
dd2=(d==3)+(d==4)+v2j
ab2=(d==2)+(d==4)+(d==6)+(d==8)
d=trunc(dd/10)
ex3=d>0
v3m=(d==5)+(d==6)
v3j=d>6
dd3=(d==3)+(d==4)+v3j
ab3=(d==2)+(d==4)+(d==6)+(d==8)
d=dd-d*10
ex4=d>1
v4m=(d==6)+(d==7)
v4j=d>7
dd4=(d==4)+(d==5)+v4j
ab4=(d==3)+(d==5)+(d==7)+(d==9)
;
mm=trunc(da/1000000000)
da=da-mm*1000000000
ph=trunc(da/10000000)/100
da=da-ph*1000000000
sp=trunc(da/100000)/100
da=da-sp*10000000
d=trunc(da/10000)
ex0=d>4
da=da-d*10000
d=d-5*ex0
ir0=(d==3)+(d==4)
d=trunc(da/1000)
w1=d>4
da=da-d*1000
d=d-5*w1
rs1=(d==2)+(d==4)
ir1=(d==3)+(d==4)
d=trunc(da/100)
w2=d>4
da=da-d*100
d=d-5*w2
rs2=(d==2)+(d==4)
ir2=(d==3)+(d==4)
d=trunc(da/10)
w3=d>4
da=da-d*10
d=d-5*w3
rs3=(d==2)+(d==4)
ir3=(d==3)+(d==4)
d=round(da)
w4=d>4
d=d-5*w4
rs4=(d==2)+(d==4)
tt=ex0+ex1+ex2+ex3+ex4
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
d=round((d-dd)*10000000000)
pp=trunc(dd/100)/10
dd=dd-1000*pp
ba1=trunc(dd/10)
ba2=dd-10*ba1
;
p0=trunc(d/100000000)/10
d=d-p0*1000000000
p6=trunc(d/1000000)/10
d=d-p6*10000000
if (t)
 p6=-p6
endif
p7=trunc(d/10000)/10
d=d-p7*100000
p8=trunc(d/100)/100
d=d-p8*10000
p9=d/100
;
d=real(p3)
bb1=trunc(d)
da=(d-bb1)*10000000000
ba=trunc(da/100000)
bb2=da-100000*ba
;
d=imag(p3)
sfac=trunc(d)
b1=(d-sfac)*100000
b0=b1/2
;
d=real(p4)
ofac=trunc(d)
b2=(d-ofac)*100000
;
d=imag(p4)
mi1=trunc(d)
da=(d-mi1)*100000000000
d=trunc(da/10000000000)
bt1=d>6
da=da-d*10000000000
d=d-5*bt1
dt1=d>1
iv1=(d==3)
fac1=trunc(da/100000)
da=da-fac1*100000
bo1=(da/100000)/10
;
d=real(p5)
mi2=trunc(d)
da=(d-mi2)*100000000000
d=trunc(da/10000000000)
bt2=d>6
da=da-d*10000000000
d=d-5*bt2
dt2=d>1
iv2=(d==3)
fac2=trunc(da/100000)
da=da-fac2*100000
bo2=(da/100000)/10
;
d=imag(p5)
mi3=trunc(d)
da=(d-mi3)*100000000000
d=trunc(da/10000000000)
bt3=d>6
da=da-d*10000000000
d=d-5*bt3
dt3=d>1
iv3=(d==3)
fac3=trunc(da/100000)
da=da-fac3*100000
bo3=(da/100000)/10
;
mo=vb>ab
mo1=v1m>ab1
mo2=v2m>ab2
mo3=v3m>ab3
mo4=v4m>ab4
;
sc=((ab+vb)==0)
sc1=((ab1+v1m)==0)
sc2=((ab2+v2m)==0)
sc3=((ab3+v3m)==0)
sc4=((ab4+v4m)==0)
;
px=((ab+vb)==2)
px1=((ab1+v1m)==2)
px2=((ab2+v2m)==2)
px3=((ab3+v3m)==2)
px4=((ab4+v4m)==2)
;
mb0=(ba1==1)+(ba2==1)
mb1=(ba1==2)+(ba2==2)
mb2=(ba1==3)+(ba2==3)
mb3=(ba1==4)+(ba2==4)
mb4=(ba1==5)+(ba2==5)
;
if (d4)
 z=0
 if (vb)
  if (mo)
   c=0.4*log(sqr(pixel^mm))
  else
   c=pixel
   z=pixel
  endif
 else
  c=pixel
  z=pixel*sc
 endif
else
 c=p1
 z=pixel
endif
t=0
u=d3
bo=z
p=pp
z0=p7
zold=(0.0,0.0)
cb=p9
bx=ba
if (mb0)
 if (ba1==1)
  ba=bb1
 else
  ba=bb2
 endif
else
 ba=bx
endif
:
If (tt)
 t=t+1
 if (ex0)
  if (bo>b0)
   u=2*(fn1(t/sfac))
   if (d4)
    z=z*u
    if (mo)
     c=0.4*log(sqr(pixel^mm))
    else
     c=pixel
    endif
   else
    z=pixel
    cb=p9*u
    c=p1*u
    p=pp*u
   endif
   if (ir0)
    t=0
   endif
   ex0=0
   tt=tt-1
  endif
 elseif ((ex1) && bo>b1)
  if (b2>bo)
   d3=dd1
   if (w1)
    u=2*(fn2(t/ofac))
   else
    u=1,0
   endif
   ab=ab1
   if (d3)
    if (rs1)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     c=p1
     z=z*u
     cb=p9
    endif
    vb=v1j
   else
    if (rs1)
     c=z*u
     z=pixel*(sc1+px1)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v1m
    if (mo1)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
   if (mb1)
    if (ba1==2)
     ba=bb1
    else
     ba=bb2
    endif
   else
    ba=bx
   endif
   if (ir1)
    t=0
   endif
   ex1=0
   tt=tt-1
  endif
 elseif (ex2)
  if (dt1)
   if (iv1)
    d=bo>bo1
   else
    d=bo<bo1
   endif
   if (bt1)
    d=d+(t>mi1)
   endif
  else
   d=t>mi1
  endif
  if (d)
   if (w2)
    u=2*(fn2(t/fac1))
   else
    u=1,0
   endif
   ab=ab2
   d3=dd2
   if (d3)
    if (rs2)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
    vb=v2j
   else
    if (rs2)
     c=z*u
     z=pixel*(sc2+px2)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v2m
    if (mo2)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
   if (mb2)
    if (ba1==3)
     ba=bb1
    else
     ba=bb2
    endif
   else
    ba=bx
   endif
   if (ir2)
    t=0
   endif
   ex2=0
   tt=tt-1
  endif
 elseif (ex3)
  if (dt2)
   if (iv2)
    d=bo>bo2
   else
    d=bo<bo2
   endif
   if (bt2)
    d=d+(t>mi2)
   endif
  else
   d=t>mi2
  endif
  if (d)
   if (w3)
    u=2*(fn3(t/fac2))
   else
    u=1,0
   endif
   ab=ab3
   d3=dd3
   if (d3)
    if (rs3)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
    vb=v3j
   else
    if (rs3)
     c=z*u
     z=pixel*(sc3+px3)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v3m
    if (mo3)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
   if (mb3)
    if (ba1==4)
     ba=bb1
    else
     ba=bb2
    endif
   else
    ba=bx
   endif
   if (ir3)
    t=0
   endif
   ex3=0
   tt=tt-1
  endif
 elseif (ex4)
  if (dt3)
   if (iv3)
    d=bo>bo3
   else
    d=bo<bo3
   endif
   if (bt3)
    d=d+(t>mi3)
   endif
  else
   d=t>mi3
  endif
  if (d)
   if (w4)
    u=2*(fn4(t/fac3))
   else
    u=1,0
   endif
   if (mb4)
    if (ba1==5)
     ba=bb1
    else
     ba=bb2
    endif
   else
    ba=bx
   endif
   ab=ab4
   d3=dd4
   if (d3)
    if (rs4)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
    vb=v4j
   else
    if (rs4)
     c=z*u
     z=pixel*(sc4+px4)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v4m
    if (mo4)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
   ex4=0
   tt=0
  endif
 endif
endif
if (vb)
 if (d3)
  if (ab)
   z=z*z+c                                ;Spiderjul     John Horner
   c=c*sp+z
  else
   z1=z^p-1                               ;Qusinewton    Pusk s Istv n
   z2=p*z*z
   z=z-z1/z2
  endif
 elseif (ab)
   zt=z*z+ph-0.5*zold                     ;Phoenix       Mike Wareman
   zold=z
   z=zt
 else
  z2=fn1(z)+c                             ;Many_mods     Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (d3)
 if (ab)
  z2=z*z                                  ;Julia         Pusk s Istv n
  z=z2*z2+p6*z2+c-p0
 else
  z1=fn1(z)-cb                            ;Bees          Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
 endif
elseif (ab)
 z2=z*z                                   ;Mandel        Pusk s Istv n
 z=z2*z2+p6*z2+c-p0
else
 z3=z                                     ;Secant        Mike Wareman
 z1=z0*z0*z0*z0-1
 z2=z*z*z*z-1
 z=z-z2*(z-z0)/(z2-z1)
 z0=z3
endif
bo=|z|
bo<=ba
}

Multifractal_9    { ;  Albrecht Niekamp  280803
;p1 (spider)julia-seed
;real(p2) 5digits : (1)shape (2)outside (3)inside1 (4)inside2 (5)inside3
; 0_off 1_secant 2_mand 3_bees 4_jul 5_m_mods 6_phoen 7_newt 8_spider
;  input2 :  2digits_many-mods  2digits_phoenix  2digits_spider
;            5digits_reset : 0_no 1_z-reset 2_iter-reset 3_both +5_warp
;imag(p2)(-) 5digits_colour(bailout) number
;  input2 :  4digits(-)_mand/jul 2digits_secant 4digits_bees
;real(p3) 2digits_newt 4digits_colour1, 5digits_colour2  5digits_colour3
;imag(p3) shape  : factor (fn1), 5digits_colour4  5digits_colour5
;real(p4) outside: factor (fn2), 4+1digits_bord-out 4digits+fract_bord-in
;imag(p4) inside1: maxit1, 1digit_use:1_maxit 2(7)_bord-out 3(8)_bord-in
;                  5digits_factor1 (fn2)  4digits+fract_border1
;real(p5) inside2: maxit2, 1digit_use:1_maxit 2(7)_bord-out 3(8)_bord-in
;                  5digits_factor2 (fn3)  4digits+fract_border2
;imag(p5) inside3: maxit3, 1digit_use:1_maxit 2(7)_bord-out 3(8)_bord-in
;                  5digits_factor3 (fn4)  4digits+fract_border3
;fn(1) shared by many-mods+bees
;
da=real(p2)
dd=trunc(da)
da=round((da-dd)*100000000000)+11111
dd=dd+11111
d=trunc(dd/10000)
dd=dd-d*10000
d3=(d==4)+(d==5)+(d==8)+(d==9)
d4=(d3==0)
vb=d>5
ab=(d==3)+(d==5)+(d==7)+(d==9)
d=trunc(dd/1000)
dd=dd-d*1000
ex1=d>1
v1m=(d==6)+(d==7)
v1j=d>7
dd1=(d==4)+(d==5)+v1j
ab1=(d==3)+(d==5)+(d==7)+(d==9)
d=trunc(dd/100)
dd=dd-d*100
ex2=d>1
v2m=(d==6)+(d==7)
v2j=d>7
dd2=(d==4)+(d==5)+v2j
ab2=(d==3)+(d==5)+(d==7)+(d==9)
d=trunc(dd/10)
ex3=d>1
v3m=(d==6)+(d==7)
v3j=d>7
dd3=(d==4)+(d==5)+v3j
ab3=(d==3)+(d==5)+(d==7)+(d==9)
d=dd-d*10
ex4=d>1
v4m=(d==6)+(d==7)
v4j=d>7
dd4=(d==4)+(d==5)+v4j
ab4=(d==3)+(d==5)+(d==7)+(d==9)
;
mm=trunc(da/1000000000)
da=da-mm*1000000000
ph=trunc(da/10000000)/100
da=da-ph*1000000000
sp=trunc(da/100000)/100
da=da-sp*10000000
d=trunc(da/10000)
ex0=d>4
da=da-d*10000
d=d-5*ex0
ir0=(d==3)+(d==4)
d=trunc(da/1000)
w1=d>4
da=da-d*1000
d=d-5*w1
rs1=(d==2)+(d==4)
ir1=(d==3)+(d==4)
d=trunc(da/100)
w2=d>4
da=da-d*100
d=d-5*w2
rs2=(d==2)+(d==4)
ir2=(d==3)+(d==4)
d=trunc(da/10)
w3=d>4
da=da-d*10
d=d-5*w3
rs3=(d==2)+(d==4)
ir3=(d==3)+(d==4)
d=round(da)
w4=d>4
d=d-5*w4
rs4=(d==2)+(d==4)
tt=ex0+ex1+ex2+ex3+ex4
;
d=real(p3)
dd=trunc(d)
da=(d-dd)*10000000000
pp=trunc(dd/10000)
ba1=dd-10000*pp
ba2=trunc(da/100000)
ba3=da-100000*ba2
;
d=imag(p3)
sfac=trunc(d)
da=(d-sfac)*10000000000
ba4=trunc(da/100000)
ba5=da-ba4*100000
;
d=real(p4)
ofac=trunc(d)
da=(d-ofac)*10000000000
bh=trunc(da/100000)/10
bl=(da-bh*1000000)/10
bs=bl/2
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
da=round((d-dd)*10000000000)
d=trunc(dd/10000)
dd=dd-d*10000
bb0=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
d=trunc(dd/1000)
dd=dd-d*1000
bb1=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
d=trunc(dd/100)
dd=dd-d*100
bb2=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
d=trunc(dd/10)
dd=dd-d*10
bb3=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
d=round(dd)
bb4=ba1*(d==1)+ba2*(d==2)+ba3*(d==3)+ba4*(d==4)+ba5*(d==5)
;
d=da
p0=trunc(d/100000000)/10
d=d-p0*1000000000
p6=trunc(d/1000000)/10
d=d-p6*10000000
if (t)
 p6=-p6
endif
p7=trunc(d/10000)/10
d=d-p7*100000
p8=trunc(d/100)/100
d=d-p8*10000
p9=d/100
;
d=imag(p4)
mi1=trunc(d)
da=(d-mi1)*100000000000
d=trunc(da/10000000000)
bt1=d>6
da=da-d*10000000000
d=d-5*bt1
dt1=d>1
iv1=(d==3)
fac1=trunc(da/100000)
da=da-fac1*100000
bo1=(da/100000)/10
;
d=real(p5)
mi2=trunc(d)
da=(d-mi2)*100000000000
d=trunc(da/10000000000)
bt2=d>6
da=da-d*10000000000
d=d-5*bt2
dt2=d>1
iv2=(d==3)
fac2=trunc(da/100000)
da=da-fac2*100000
bo2=(da/100000)/10
;
d=imag(p5)
mi3=trunc(d)
da=(d-mi3)*10000000000
d=trunc(da/1000000000)
bt3=d>6
da=da-d*10000000000
d=d-5*bt3
dt3=d>1
iv3=(d==3)
fac3=trunc(da/100000)
da=da-fac3*100000
bo3=(da/100000)/10
;
mo=vb>ab
mo1=v1m>ab1
mo2=v2m>ab2
mo3=v3m>ab3
mo4=v4m>ab4
;
sc=((ab+vb)==0)
sc1=((ab1+v1m)==0)
sc2=((ab2+v2m)==0)
sc3=((ab3+v3m)==0)
sc4=((ab4+v4m)==0)
;
px=((ab+vb)==2)
px1=((ab1+v1m)==2)
px2=((ab2+v2m)==2)
px3=((ab3+v3m)==2)
px4=((ab4+v4m)==2)
;
if (d4)
 z=0
 if (vb)
  if (mo)
   c=0.4*log(sqr(pixel^mm))
  else
   c=pixel
   z=pixel
  endif
 else
  c=pixel
  z=pixel*sc
 endif
else
 c=p1
 z=pixel
endif
t=0
bo=|z|
p=pp
z0=p7
zold=(0.0,0.0)
cb=p9
ba=bb0
:
if (tt)
 t=t+1
 if (ex0)
  ex0=t<mi1
  if (bo>bs)
   u=2*(fn1(t/sfac))
   ex0=0
   if (ir0)
    t=0
   endif
   if (d4)
    z=z*u
    if (mo)
     c=0.4*log(sqr(pixel^mm))
    else
     c=pixel
    endif
   else
    z=pixel
    cb=p9*u
    c=p1*u
    p=pp*u
   endif
  endif
  tt=tt-1+ex0
 elseif ((ex1)&&bo>bl)
  if (bo<bh)
   d3=dd1
   ba=bb1
   ab=ab1
   ex1=0
   tt=tt-1
   if (w1)
    u=2*(fn2(t/ofac))
   else
    u=1,0
   endif
   if (ir1)
    t=0
   endif
   if (d3)
    vb=v1j
    if (rs1)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     c=p1
     z=z*u
     cb=p9
    endif
   else
    vb=v1m
    if (rs1)
     c=z*u
     z=pixel*(sc1+px1)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    if (mo1)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
  endif
 elseif (ex2)
  if (dt1)
   if (iv1)
    d=bo>bo1
   else
    d=bo<bo1
   endif
   if (bt1)
    d=d+(t>mi1)
   endif
  else
   d=t>mi1
  endif
  if (d)
   ab=ab2
   d3=dd2
   ba=bb2
   ex2=0
   tt=tt-1
   if (w2)
    u=2*(fn2(t/fac1))
   else
    u=1,0
   endif
   if (ir2)
    t=0
   endif
   if (d3)
    vb=v2j
    if (rs2)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
   else
    vb=v2m
    if (rs2)
     c=z*u
     z=pixel*(sc2+px2)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    if (mo2)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
  endif
 elseif (ex3)
  if (dt2)
   if (iv2)
    d=bo>bo2
   else
    d=bo<bo2
   endif
   if (bt2)
    d=d+(t>mi2)
   endif
  else
   d=t>mi2
  endif
  if (d)
   ab=ab3
   d3=dd3
   ba=bb3
   ex3=0
   tt=tt-1
   if (w3)
    u=2*(fn3(t/fac2))
   else
    u=1,0
   endif
   if (ir3)
    t=0
   endif
   if (d3)
    vb=v3j
    if (rs3)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
   else
    vb=v3m
    if (rs3)
     c=z*u
     z=pixel*(sc3+px3)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    vb=v3m
    if (mo3)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
  endif
 elseif (ex4)
  if (dt3)
   if (iv3)
    d=bo>bo3
   else
    d=bo<bo3
   endif
   if (bt3)
    d=d+(t>mi3)
   endif
  else
   d=t>mi3
  endif
  if (d)
   ab=ab4
   d3=dd4
   ba=bb4
   ex4=0
   tt=0
   if (w4)
    u=2*(fn4(t/fac3))
   else
    u=1,0
   endif
   if (d3)
    vb=v4j
    if (rs4)
     z=pixel
     cb=p9*u
     c=p1*u
     p=pp*u
    else
     cb=p9
     c=p1
     z=z*u
    endif
   else
    vb=v4m
    if (rs4)
     c=z*u
     z=pixel*(sc4+px4)
     z0=p7*u
     ph=ph*u
    else
     c=z
     z=z*u
    endif
    if (mo4)
     c=0.4*log(sqr(pixel^mm))
    endif
   endif
  endif
 endif
endif
if (vb)
 if (d3)
  if (ab)
   z=z*z+c                                ;Spiderjul     John Horner
   c=c*sp+z
  else
   z1=z^p-1                               ;Qusinewton    Pusk s Istv n
   z2=p*z*z
   z=z-z1/z2
  endif
 elseif (ab)
   z1=z*z+ph-0.5*zold                     ;Phoenix       Mike Wareman
   zold=z
   z=z1
 else
  z2=fn1(z)+c                             ;Many_mods     Linda Allison
  z1=cos(z2)
  z=c*(1-z1)/(1+z1)
 endif
elseif (d3)
 if (ab)
  z2=z*z                                  ;Julia         Pusk s Istv n
  z=z2*z2+p6*z2+c-p0
 else
  z1=fn1(z)-cb                            ;Bees          Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
 endif
elseif (ab)
 z2=z*z                                   ;Mandel        Pusk s Istv n
 z=z2*z2+p6*z2+c-p0
else
 z3=z                                     ;Secant        Mike Wareman
 z1=z0*z0*z0*z0-1
 z2=z*z*z*z-1
 z=z-z2*(z-z0)/(z2-z1)
 z0=z3
endif
bo=|z|
bo<ba
}