Multifractal_2    { ;  Albrecht Niekamp  070603
;only integers as first input, second input 5 digits to the right
;real(p2) 5digits: shape, outside, in1, in2, in3
; 0_off 1_mand 2_jul 3_hyb.mand 4_hyb.jul +5_reset digit1: +5_warp
;  input2 : five digits frm2 use : 0_no 1_yes
;imag(p2) (-)digit1 : many_mods multipl. off 1_out 2_in1 3_in2 4_all
;            digit2 : iter-reset 1_out 2_in1 3_in2 4_all
;  input2 : many_mods_2digits frm1_2digits frm2_2digits
;real(p3) many_mods bailout, bailout
;imag(p3) shape : factor (fn1), outside : border-in
;real(p4) outside : factor (fn2), border-out
;imag(p4) maxiter1, factor1 (fn2)
;real(p5) maxiter2, factor2 (fn3)
;imag(p5) maxiter3, factor3 (fn4)
;
da=real(p2)
dd=trunc(da)
da=round((da-dd)*100000)+11111
d=trunc(dd/10000)
ex0=d>5
d=d-5*ex0
vb=(d==3)+(d==4)
dd=dd-d*10000
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
tt=ex0+ex1+ex2+ex3+ex4
;
d=trunc(da/10000)
ab=(d==2)
da=da-d*10000
d=trunc(da/1000)
ab1=(d==2)
da=da-d*1000
d=trunc(da/100)
ab2=(d==2)
da=da-d*100
d=trunc(da/10)
ab3=(d==2)
da=da-d*10
ab4=(da==2)
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
d=round((d-dd)*1000000)
da=trunc(dd/10)
so1=((da==1)+(da==4)==0)
so2=((da==2)+(da==4)==0)
so3=((da==3)+(da==4)==0)
dd=dd-10*da
ir1=(dd==1)+(dd==4)
ir2=(dd==2)+(dd==4)
ir3=(dd==3)+(dd==4)
;
mm=trunc(d/10000)
d=d-mm*10000
p6=trunc(d/100)/10
d=d-p6*1000
if (t)
 p6=-p6
endif
p7=d/10
;
d=real(p3)
mb=trunc(d)
ba=(d-mb)*100000
;
d=imag(p3)
sfac=trunc(d)
b1=(d-sfac)*100000
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
if (ismand)
 z=0
 if (vb)
  c=0.4*log(sqr(pixel^mm))
 else
  c=pixel
 endif
else
 c=p1
 z=pixel
endif
t=0
d3=(ismand==0)
u=d3
:
bo=z
If (tt)
 t=t+1
 if (ex0)
   u=fn1(1/sfac)
   if (ismand)
    z=0
    if (vb)
     c=u*0.4*log(sqr(pixel^mm))
     ba=mb
    else
     c=pixel*u
    endif
   else
    z=pixel
    c=p1*u
   endif
   ex0=0
   tt=tt-1
 elseif ((ex1) && bo>b1 && bo<b2)
   u=2*(fn2(t/ofac))
   rs=rs1
   ab=ab1
   if (dd1)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v1j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
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
   u=2*(fn2(t/fac1))
   rs=rs2
   ab=ab2
   if (dd2)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v2j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
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
   u=2*(fn3(t/fac2))
   ab=ab3
   rs=rs3
   if (dd3)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v3j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
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
   u=2*(fn4(t/fac3))
   ab=ab4
   rs=rs4
   if (dd4)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v4j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
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
 if (d3)
  z=(z*z-real(c))^(z*u+imag(c))
 else
  z2=fn1(z)+c                            ;Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (ab)
 z=z*z+c+c*c-p7                           ;Pusk s Istv n
elseif (d3)
 z2=z*z
 z=z2*z2+(p6+u)*z2+c
else
 z2=z*z                                   ;Pusk s Istv n
 z=z2*z2+(p6+u)*z2+c-p1
endif
|z|<=ba
}
 
Multifractal_3    { ;  Albrecht Niekamp  090603
;only integers as first input, second input 5 digits to the right
;real(p2) 5digits: shape, outside, in1, in2, in3
; 0_off 1_mand 2_jul 3_hyb.mand 4_hyb.jul +5_reset digit1: +5_warp
;  input2 : five digits frm2 use : 0_no 1_yes
;imag(p2) (-)digit1 : many_mods multipl. off 1_out 2_in1 3_in2 4_all
;            digit2 : iter-reset 1_out 2_in1 3_in2 4_all
;  input2 : many_mods_2digits frm1_2digits frm2_2digits bees_4digits
;real(p3) many_mods bailout, bailout
;imag(p3) shape : factor (fn1), outside : border-in
;real(p4) outside : factor (fn2), border-out
;imag(p4) maxiter1, factor1 (fn2)
;real(p5) maxiter2, factor2 (fn3)
;imag(p5) maxiter3, factor3 (fn4)
;
da=real(p2)
dd=trunc(da)
da=round((da-dd)*100000)+11111
d=trunc(dd/10000)
ex0=d>5
d=d-5*ex0
vb=(d==3)+(d==4)
dd=dd-d*10000
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
tt=ex0+ex1+ex2+ex3+ex4
;
d=trunc(da/10000)
ab=(d==2)
da=da-d*10000
d=trunc(da/1000)
ab1=(d==2)
da=da-d*1000
d=trunc(da/100)
ab2=(d==2)
da=da-d*100
d=trunc(da/10)
ab3=(d==2)
da=da-d*10
ab4=(da==2)
;
d=imag(p2)
t=d<0
if (t)
 d=-d
endif
dd=trunc(d)
d=round((d-dd)*100000000)
da=trunc(dd/10)
so1=((da==1)+(da==4)==0)
so2=((da==2)+(da==4)==0)
so3=((da==3)+(da==4)==0)
dd=dd-10*da
ir1=(dd==1)+(dd==4)
ir2=(dd==2)+(dd==4)
ir3=(dd==3)+(dd==4)
;
mm=trunc(d/1000000)
d=d-mm*1000000
p6=trunc(d/10000)/10
d=d-p6*100000
if (t)
 p6=-p6
endif
p7=trunc(d/100)/10
d=d-p7*1000
p8=d/100
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
if (ismand)
 z=0
 if (vb)
  c=0.4*log(sqr(pixel^mm))
 else
  c=pixel
 endif
else
 c=p1
 z=pixel
endif
t=0
d3=(ismand==0)
u=d3
:
bo=z
If (tt)
 t=t+1
 if ((ex0)&&bo>b0)
   u=fn1(t/sfac)
   if (ismand)
    z=z*u
    if (vb)
     c=0.4*log(sqr(pixel^mm))
     ba=mb
    else
     c=pixel
    endif
   else
    z=pixel
    c=p1*u
   endif
   ex0=0
   tt=tt-1
 elseif ((ex1) && bo>b1 && bo<b2)
   u=2*(fn2(t/ofac))
   rs=rs1
   ab=ab1
   if (dd1)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v1j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
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
   u=2*(fn2(t/fac1))
   rs=rs2
   ab=ab2
   if (dd2)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v2j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
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
   u=2*(fn3(t/fac2))
   ab=ab3
   rs=rs3
   if (dd3)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v3j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
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
   u=2*(fn4(t/fac3))
   ab=ab4
   rs=rs4
   if (dd4)
    if (rs)
     z=pixel
    endif
    c=p1*u
    vb=v4j
    d3=1
   else
    d3=0
    z=z*u
    c=z
    if (rs)
     z=0
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
 if (d3)
  z=(z*z-real(c))^(z*u+imag(c))
 else
  z2=fn1(z)+c                            ;Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (ab)
 z=z*z+c+c*c-p7                           ;Pusk s Istv n
elseif (d3)
  z1=sin(z)-c                            ;Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
else
 z2=z*z                                   ;Pusk s Istv n
 z=z2*z2+(p6+u)*z2+c-p1
endif
|z|<=ba
}
 
