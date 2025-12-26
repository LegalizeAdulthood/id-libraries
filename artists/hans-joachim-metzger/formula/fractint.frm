Carr2998 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to IF..RLSE logic by Sylvie Gallet, 13/02/98
  ; passes=1 needs to be used with this PHC formula.
  pixinv = .01/pixel
  c = pixel - flip(pixinv) - conj(0.1*pixinv)
  if (whitesq)
    c = flip(conj(0.1*c)) + (-0.7456,-0.132)
    z = zorig = pixel - conj(pixinv)
  else
    c = flip(conj(-0.1*c)) + (-0.7456,-0.132)
    z = zorig = - pixel + conj(pixinv)
  endif
  imagp1 = imag(p1) , imagp2 = imag(p2) , bailout = 16 , iter = 0
  :
  if (iter == p1)
    z = 0 , c = 0.15 * flip(conj(zorig)) + (-0.7456,-0.132)
  elseif (iter == imagp1)
    z = 0 , c = 0.225 * flip(conj(zorig)) + (-0.7456,-0.132)
  elseif (iter == p2)
    z = 0 , c = 0.3375 * flip(conj(zorig)) + (-0.7456,-0.132)
  elseif (iter == imagp2)
    z = 0 , c = 0.50625 * flip(conj(zorig)) + (-0.7456,-0.132)
  endif
  iter = iter + 1
  z = z*z + c
  z <= bailout
    ;SOURCE: c2998.frm
}
3D_Balls_Phoenix {; Algorithm and comments shamelessly borrowed to
                  ; Paul W. Carlson by Sylvie Gallet
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the size of the balls
    ;   imag(p1) = number of iterations to skip
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;   p3 = param for phoenix

    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = pixel, y = 0
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  skip = imag(p1)
    ;****************************************************
    ; In the accompanying par file, mndballs.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| >= 1000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
  ball_size = real(p1)
  index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
  w = w*w - .5*w + p3, X = w*w - .5*y + p3, Y = w, w = X
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
  IF (iter > skip)
    wr = real(w), wi = imag(w)
    d = |w - (0,0.5)|
    IF (d < ball_size)
      bailout = 1
      delta = ball_size - d
    ELSEIF (|w + (0,0.5)| < ball_size)
      bailout = 1
      delta = ball_size - |w + (0,0.5)|
    ELSEIF (|w - 0.5| < ball_size)
      bailout = 1
      delta = ball_size - |w - 0.5|
    ELSEIF (|w + 0.5| < ball_size)
      bailout = 1
      delta = ball_size - |w + 0.5|
    ENDIF
  ENDIF
  IF (bailout)
    z = index_factor * delta + range_num * colors_in_range + 1
  ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0  && |w| < 1000
}

Cubic (XYAXIS) {; Lee Skinner
  p = pixel, test = p1 + 3
  t3 = 3*p, t2 = p*p
  a = (t2 + 1)/t3, b = 2*a*a*a + (t2 - 2)/t3
  aa3 = a*a*3, z = 0 - a :
  z = z*z*z - aa3*z + b
  |z| < test
  ;SOURCE: fractint.frm
}

Fzpfnseh {; Lee Skinner
  z = pixel, f = 1./sinh(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}

halleySin (XYAXIS) {; Chris Green. Halley's formula applied to sin(x)=0.
   ; Use floating point.
   ; P1 real = 0.1 will create the picture from page 281 of Pickover's book.
  z=pixel:
  s=sin(z), c=cos(z)
  z=z-p1*(s/(c-(s*s)/(c+c)))
  0.0001 <= |s|
  ;SOURCE: fractint.frm
}

Jm_01 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=(fn1(fn2(z^pixel)))*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}

LeeMandel1 (XYAXIS) {; Kevin Lee
  z=Pixel:
   ;; c=sqr(pixel)/z, c=z+c, z=sqr(z),  this line was an error in v16
  c=sqr(pixel)/z, c=z+c, z=sqr(c)
  |z|<4
  ;SOURCE: fractint.frm
}

LeeMandel2 (XYAXIS) {; Kevin Lee
  z=Pixel:
  c=sqr(pixel)/z, c=z+c, z=sqr(c*pixel)
  |z|<4
  ;SOURCE: fractint.frm
}
Fzppfnsr {; Lee Skinner
  z = pixel, f = (pixel)^.5:
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}
 
MandelbrotMix4 {; Jim Muth
  a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
  h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
  l=imag(p3)+100, c=fn1(pixel):
  z=k*((a*(z^b))+(d*(z^f)))+c
  |z| < l
  ;SOURCE: 99msg.frm
}
 
Multifractal_5    { ;  Albrecht Niekamp  230603
;only integers as first input, second input 5 digits to the right
;real(p2) 5digits: shape, outside, in1, in2, in3
; 0_off 1_mand 2_jul/bees 3_many_mods 4_newtjul +5_reset digit1: +5_warp
;  input2 : 2digits_many_mods 5digits_frm2 use : 0_no 1_yes
;imag(p2)(-) 2-4digits : quasinewton input (max 2000)
;               1digit : many_mods multipl. off 1_out 2_in1 3_in2 4_all
;               1digit : iter-reset 1_out 2_in1 3_in2 4_all
;      input2 : 4digits(-)_frm1 2digits_frm2 4digits_bees
;real(p3) many_mods bailout, bailout
;imag(p3) shape : factor (fn1), outside : border-in
;real(p4) outside : factor (fn2), border-out
;imag(p4) inside1 : maxiter1, factor1 (fn2)
;real(p5) inside2 : maxiter2, factor2 (fn3)
;imag(p5) inside3 : maxiter3, factor3 (fn4)
;
da=real(p2)
dd=trunc(da)
da=round((da-dd)*10000000)+11111
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
mm=trunc(da/100000)
da=da-mm*100000
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
if (ismand)
 z=0
 if (vb)
  c=0.4*log(sqr(pixel^mm))
 else
  c=pixel
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
d3=(ismand==0)
u=d3
bo=z
p=pp
:
If (tt)
 t=t+1
 if ((ex0) && bo>b0)
   u=2*(fn1(t/sfac))
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
    if (bg)
     c=p9*u
    else
     c=p1*u
     p=pp+u
    endif
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
    vb=v1j
    d3=1
    if (bg1)
     c=p9*u
    else
     c=p1*u
     p=pp+u
    endif
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
    vb=v2j
    if (bg2)
     c=p9*u
    else
     c=p1*u
     p=pp+u
    endif
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
    vb=v3j
    if (bg3)
     c=p9*u
    else
     c=p1*u
     p=pp+u
    endif
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
    vb=v4j
    if (bg4)
     c=p9*u
    else
     c=p1*u
     p=pp+u
    endif
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
  n=z^p-1
  d=p*z*z
  z=z-n/d
 else
  z2=fn1(z)+c                            ;Linda Allison
  q=cos(z2)
  z=c*(1-q)/(1+q)
 endif
elseif (ab)
 z=z*z+c+c*c-p7                          ;Pusk s Istv n
elseif (d3)
  z1=fn1(z)-c                            ;Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
else
 z2=z*z                                  ;Pusk s Istv n
 z=z2*z2+(p6+u)*z2+c-p0
endif
bo=|z|
bo<=ba
}
 
Multifractal_4    { ;  Albrecht Niekamp  110603
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
d=round((d-dd)*10000000000)
da=trunc(dd/10)
so1=((da==1)+(da==4)==0)
so2=((da==2)+(da==4)==0)
so3=((da==3)+(da==4)==0)
dd=dd-10*da
ir1=(dd==1)+(dd==4)
ir2=(dd==2)+(dd==4)
ir3=(dd==3)+(dd==4)
;
mm=trunc(d/100000000)
d=d-mm*100000000
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
if (ismand)
 z=0
 if (vb)
  c=0.4*log(sqr(pixel^mm))
 else
  c=pixel
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
d3=(ismand==0)
u=d3
:
bo=z
If (tt)
 t=t+1
 if ((ex0)&&bo>b0)
   u=2*(fn1(t/sfac))
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
    if (bg)
     c=p9*u
    else
     c=p1*u
    endif
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
    vb=v1j
    d3=1
    if (bg1)
     c=p9*u
    else
     c=p1*u
    endif
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
    vb=v2j
    if (bg2)
     c=p9*u
    else
     c=p1*u
    endif
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
    vb=v3j
    if (bg3)
     c=p9*u
    else
     c=p1*u
    endif
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
    vb=v4j
    if (bg4)
     c=p9*u
    else
     c=p1*u
    endif
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
  z1=fn1(z)-c                            ;Ray Girvan
  z2=z1^p8-1
  z3=p8*(z1^(p8-1))
  z=z-(z2/z3)
else
 z2=z*z                                   ;Pusk s Istv n
 z=z2*z2+(p6+u)*z2+c-p1
endif
|z|<=ba
}
 
Jh_square     { ; Jos Hendriks <jos@hexaedre-fr.com>
                ; Sat, 4 Jan 2003 20:36:30
                ; You could call it a lambdaSierpinski formula
  if (ismand)
    z = 0 , c = pixel
  else
    z = pixel , c = p1
  endif
  :
  a=real(z),b=imag(z)
  z=a*a+flip(b*b)+c
  real(z)<p2 && imag(z)<p2
 }
 
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
else if (ab)
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
 
threecircles2   { ; Morgan L. Owens  <packrat@nznet.gen.nz>
                  ; Mon, 20 May 2002 19:38:59
; three circles located at the cube roots of 1
; real(p1) specifies their common radius - note that they're tangent to
;          each other when real(p1)=sqrt(3)/2.
;
; p2 specifies a point (the "radiant") from which test particles are
; launched. More precisely, every point in the complex plane emits a
; test particle, which travels directly away from p2
;

; First, we need to establish the centres of the three circles.
centre1=1
centre2=exp(flip(2*pi/3))
centre3=centre2*centre2 ; Reckon this is faster than another exp()?

rho=real(p1)

direction=pixel-p2
z = pixel

trapped=(|z-centre1|<rho*rho || |z-centre2|<rho*rho || |z-centre3|<rho*rho)

; For efficiency, we see if z is _inside_ a circle. If it is, we can
; predict how long it will take to escape :-)
; Note also that since Fractint's || operator is nonstandard, we use
; rho*rho instead of rho.

: ; End of initialisation section. Now beginning the loop.

if(trapped)
   escaped=0 ; We'll continue to iterate, though - so that the insides of
             ; the circles really are classified as "inside"
else ; Let's get dangerous

; Right, we have a ray that passes through the point z in the direction
; theta. Finding the intersections (if any) of this ray with a circle
; involves finding the solutions of a certain quadratic with real
; coefficients. If the quadratic has two real roots, then the ray cuts the
; circle. If it has one real root (necessarily of multiplicity two) then
; the ray is tangent to the circle. And if both roots are complex, then
; the ray misses the circle completely.

   escaped=1 ; As far as we know at the moment.

   hit=9999 ; Meaningless when escaped==1

   ;Examining circle 1

   coefA = |direction|
   coefB = real(z-centre1)*real(direction)+imag(z-centre1)*imag(direction)
   coefC = |z-centre1|-rho*rho

   discriminant=coefB*coefB-coefA*coefC

   ; If discriminant==0, then the ray is tangent to circle 1 - we won't
   ; count this as a "reflection"
   ; If discriminant<0, then the ray misses circle 1 completely.

   if(discriminant>0) ; Two solutions
     t1=(-coefB-sqrt(discriminant))/coefA
     t2=(-coefB+sqrt(discriminant))/coefA

     if(t1>0) ; If t1<0 then this hit is actually behind us
       escaped=0 ; Sorry, not this time.
       hit=t1
       target=1 ; The first circle
     endif
     if(t2>0 && t2<t1) ; Hits t2 before hitting t1
       escaped=0
       hit=t2
       target=1
     endif
   endif

   ; Circle 2
   ; coefA = |direction| is already known
   coefB = real(z-centre2)*real(direction)+imag(z-centre2)*imag(direction)
   coefC = |z-centre2|-rho*rho
   discriminant=coefB*coefB-coefA*coefC
   if(discriminant>0)
     t1=(-coefB-sqrt(discriminant))/coefA
     t2=(-coefB+sqrt(discriminant))/coefA
     if(t1>0 && t1<hit)
       escaped=0
       hit=t1
       target=2
     endif
     if(t2>0 && t2<t1 && t2<hit)
       escaped=0
       hit=t2
       target=2
     endif
   endif

   ; Circle 3
   coefB = real(z-centre3)*real(direction)+imag(z-centre3)*imag(direction)
   coefC = |z-centre3|-rho*rho
   discriminant=coefB*coefB-coefA*coefC
   if(discriminant>0)
     t1=(-coefB-sqrt(discriminant))/coefA
     t2=(-coefB+sqrt(discriminant))/coefA
     if(t1>0 && t1<hit)
       escaped=0
       hit=t1
       target=3
     endif
     if(t2>0 && t2<t1 && t2<hit)
       escaped=0
       hit=t2
       target=3
     endif
   endif

; We now know when we hit a circle (hit) and which circle it is (target)
; The hit point is z+direction*hit, the normal at this point is
; z-centre?, which we normalise to a unit vector (un).
;
; We set z to the hit point, and the reflected vector is
; direction-2(direction.un)un

   if(target==1)
    un=(z-centre1)/sqrt(|z-centre1|)
   elseif(target==2)
    un=(z-centre2)/sqrt(|z-centre2|)
   else
    un=(z-centre3)/sqrt(|z-centre3|)
   endif
   r=direction-2*(real(direction)*real(un)+imag(direction)*imag(un))*un
   z=z+direction*hit
   direction=r

endif

;bailout continue until we escape
escaped==0
}
 
TMan1              { ; Russell Walsmith
                     ; Fri, 17 Jan 2003 11:12:25
  c1=flip(real(pixel)),c2=imag(pixel),c3=p1
  z1=z2=z3=0:
  t1=z1*z1+2*z2*z3
  t2=z3*z3+2*z1*z2
  t3=z2*z2+2*z3*z1
  z1=t1+c1,z2=t2-c2*c2,z3=t3+c3
  z=z1+z2+z3
  |z| < 8
}
 
TMan1           { ; Lee H. Skinner <skinner@thuntek.net>
                  ; Sun, 19 Jan 2003 23:09:22
                  ;
  c1=flip(real(pixel)),c2=imag(pixel),c3=p1
  z1=z2=z3=0:
  t1=z1*z1+2*z2*z3
  t2=z3*z3+2*z1*z2
  t3=z2*z2+2*z3*z1
  z1=t1+c1,z2=t2-c2*c2,z3=t3+c3
  z=z1+z2+z3
  |z| < 8
}
 
tmanlake   { ; lake-transform
             ; Sylvie Gallet <sylviegallet@compuserve.com>
             ; Jan 16, 2000
; requires: float=on, periodicity=0
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: amplitude of the wave (try 0.2)
; real part of p3: frequency (try 300)
; imag part of p3: phase 
;
; Lake transformation
; -------------------
if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  ampl = imag(p2)                ; amplitude of the wave
  freq = real(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2+imag(p3))) * v 
  endif
 pixel = z + z3rd
endif
; import of formula: TMan1.frm
c1=flip(real(pixel)),c2=imag(pixel),c3=p1
z1=z2=z3=0:
t1=z1*z1+2*z2*z3
t2=z3*z3+2*z1*z2
t3=z2*z2+2*z3*z1
z1=t1+c1,z2=t2-c2*c2,z3=t3+c3
z=z1+z2+z3
|z| < 8 
}
 
Wineglass (XAXIS) {; Pieter Branderhorst
  c = z = pixel:
  z = z * z + c
  c = (1+flip(imag(c))) * real(c) / 2 + z
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Jm_ducks (XAXIS) {; Jm Collard-Richard
   ; Not so ugly at first glance and lot of corners to zoom in.
   ; try this: corners=-1.178372/-0.978384/-0.751678/-0.601683
  z=pixel, tst=p1+4, t=1+pixel:
  z=sqr(z)+t
  |z|<=tst
  ;SOURCE: fractint.frm
}
 
IkeNewtMand {; Ron Barnett, 1993
  z = c = pixel:
  zf = z*z*z + (c-1)*z - c
  zd = 3*z*z + c-1
  z = z - p1*zf/zd
  0.001 <= |zf|
  ;SOURCE: fractint.frm
}
 
J_Lagandre4 {
  c = pixel, z = P1:
  z = (z*z*(35 * z*z - 30) + 3) / 8 + c
  |z| < 100
  ;SOURCE: fractint.frm
}
 
REB004K {; Ron Barnett, 1993
         ; floating point required
  z = pixel:
  x = flip(pixel + fn1(3/z - z/4))
  z = x*z + p1
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
contest4 {; Kerry Mitchell
          ; slightly optimized version of Contest formula
          ; THIS IS THE ONE USED IN THE 1997 CONTEST
  z=p1, c=pixel:
  z2=sqr(z), z=z*z2+c*(1+z-z2)
  |z| <= 4
  ;SOURCE: contest.frm
}
 
Dragon8 (ORIGIN) {; Linda Allison
                  ; Edited for Fractint v. 20 by George Martin, 10/98
  z = Pixel
  power = p1/p2:
  z = (fn1(z))/p1 - (fn2(z))/p2
  |z| <= power
  ;SOURCE: allison2.frm
}
 
Lin-7new5 {; Linda Allison
  z = pixel:
  z = (fn1(1/z ^ 2))/p1 - p1  
  |z| <= p2
  ;SOURCE: allison2.frm
}
 
Lin-carr2new {; Original formula by Bob Carr, modified by Linda Allison
  z = pixel:
  z = (fn1(1/(z ^ 2)))/p1
  |z| <= p2
  ;SOURCE: allison2.frm
}
 
MyFrac-pc-Lin2 {; Formulas by Bob Carr and Paul Carlson
                ; combined and modified by Linda Allison
  z = c = pixel:
  z2 = c * (1 - z * z)/(1 + z * z)
  z = fn1(z2) + fn2((z2 ^ 2)/p1)
  |z| <= 100
  ;SOURCE: allison2.frm
}
 
MyFract-7new {;Linda Allison
  c = z = 1/pixel:
  z = fn1(z^1.5) + (c + P1)/(z*2)
  |z| <= P1
  ;SOURCE: allison2.frm
}
 
MyFractal-lla {; Linda Allison
  z = pixel:
  z = fn1(z) + fn2((z ^ 2)/p1)
  |z| <= 100
  ;SOURCE: allison2.frm
}
 
JTet (XAXIS) {; Julia form 1 of the Tetration formula --Lee Skinner
  z = pixel:
  z = (pixel ^ z) + P1
  |z| <= (P2 + 3)
  ;SOURCE: fractint.frm
}
 
AltJTet (XAXIS) {; Julia form 2 of the Tetration formula --Lee Skinner
  z = P1:
  z = (pixel ^ z) + P1
  |z| <= (P2 + 3)
  ;SOURCE: fractint.frm
}
 
AltJTet (XAXIS) {; Julia form 2 of the Tetration formula --Lee Skinner
  z = P1:
  z = (pixel ^ z) + P1
  |z| <= (P2 + 3)
  ;SOURCE: fractint.frm
}
 
NewtonSinExp (XAXIS) {; Chris Green
                      ; Newton's formula applied to sin(x)+exp(x)-1=0.
                      ; Use floating point.
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-1
  z=z-p1*z2/(cos(z)+z1)
  .0001 < |z2|
  ;SOURCE: fractint.frm
}
 
PseudoZeePi {; Ron Barnett, 1993
  z = pixel:
  x = 1-z^p1
  z = z*((1-x)/(1+x))^(1/p1) + p2
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
PseudoZeePi {; Ron Barnett, 1993
  z = pixel:
  x = 1-z^p1
  z = z*((1-x)/(1+x))^(1/p1) + p2
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
PsudoMandel (XAXIS) {; davisl - try center=0,0/magnification=28
  z = Pixel:
  z = ((z/2.7182818)^z)*sqr(6.2831853*z) + pixel
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Eyeball (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  z=sqr(z)+pixel
  z=sinh(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}
 
Frog (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=|z|:
  z=tanh(z)+pixel
  z=sqr(z)+pixel, x=|z|
  x<=4 
  ;SOURCE: choice.frm
}
 
Gamma(XAXIS) {; first order gamma function from Prof. Jm
              ; "It's pretty long to generate even on a 486-33 
              ;  comp but there's a lot of corners to zoom in and 
              ;  zoom and zoom...beautiful pictures :)"
  z=pixel, twopi=6.283185307179586, r=10:
  z=(twopi*z)^(0.5)*(z^z)*exp(-z)+pixel
  |z|<=r
  ;SOURCE: fractint.frm
}
 
Halley (xyaxis) {; Chris Green. Halley's formula applied to x^7-x=0.
   ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
   ; Setting P1 to 1 creates the picture on page 277 of Pickover's book
  z=pixel:
  z5=z*z*z*z*z
  z6=z*z5
  z7=z*z6
  z=z-p1*((z7-z)/ ((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))
  0.0001 <= |z7-z|
  ;SOURCE: fractint.frm
}
 
Ny1 (XYAXIS) {
  z=pixel:
  z=(z^pixel)*sinh(z^pixel)
  |z|<=4
  ;SOURCE: fixrch.frm
}
 
Richard5 (XAXIS) {; Jm Collard-Richard
  z = pixel:
  z=sin(z*sinh(z))+pixel
  |z|<=50
  ;SOURCE: fractint.frm
}
 
Richard8 (XYAXIS) {; Jm Collard-Richard
                   ; This was used for the "Fractal Creations" cover
  z=pixel, sinp = sin(pixel):
  z=sin(z)+sinp
  |z|<=50
  ;SOURCE: fractint.frm
}
 
Sam_6 (XYAXIS) {
  z = Pixel: 
  z = z*cos(z) - pixel
  ;SOURCE: sam.frm
}
 
Fzppfnth {; Lee Skinner
  z = pixel, f = tanh(pixel):
  z = fn1(z)+f
  |z|<= 50
  ;SOURCE: fractint.frm
}
 
Jm_14 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(z)*pixel))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_27 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  sqrz=fn1(z), z=sqrz + 1/sqrz + pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
ZZ (XAXIS) {; Prof Jm using Newton-Raphson method
            ; use floating point with this one
  z=pixel, solution=1:
  z1=z^z
  z2=(log(z)+1)*z1
  z=z-(z1-1)/z2
  0.001 <= |solution-z1|
  ;SOURCE: fractint.frm
}
 
Billsfrm (YAXIS) {; Based on a formula by Paul Carlson
  z = pixel:
  z = (fn1(z)^4) / (fn2(z)^3) / (fn3(z)^2) / (fn4(z))
  |z| <=4
  ;SOURCE: brossi.frm
}
 
Doozy18 (yaxis) {; Bill Rossi
                 ; Edited for Fractint v. 20 by George Martin, 10/98
  z = pixel, c=fn1(z)/fn2(z):
  t=fn3(z)
  l=t/fn1(t)
  z=l
  z=z/fn4(c)/l+fn1(z)
  |z| <= 4
  ;SOURCE: brossi.frm
}
 
NewOne3 (yaxis) {; Bill Rossi
  z = pixel:
  temp1 = fn1(z) / fn2(z)
  temp2 = fn3(z) - fn4(z)
  temp3 = fn1(z) * fn3(z)
  z = temp1 / temp2 - temp3
  |z| <= 4
  ;SOURCE: brossi.frm
}
 
Richard1 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
  sq=z*z, z=(sq*sin(sq)+sq)+pixel
  |z|<=50
  ;SOURCE: fractint.frm
}
 
Jm_25 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z*fn2(z)) + pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Fzppfnpo {; Lee Skinner
  z = pixel, f = (pixel)^(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}
 
Jm_09 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(fn4(z))))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
BillTry3 {; Bill Rossi, billatny@nyiq.net
  z = pixel, c=p1:
  z = ((z-1) * c * (real(p1)>=0)) + ((z+1) * |c|/c * (real(p1)<0))
  |z| <= 4 
  ;SOURCE: billspir.frm
}
 
BillTry4 {; Bill Rossi
  z = pixel, c=p1:
  z = ((z-1) * c * (real(p1)>=0)) + ((z+1) * |c|/c * (real(p1)<0))
  z = fn1(z) + c, z = fn2(c) + z
  |z| <= 4 
  ;SOURCE: billspir.frm
}
 
BILL13 (yaxis) {; Bill Rossi
                ; replaced "pi" with "approxpi". G. Martin, 7/9/99
  z=pixel, approxpi=3.142857142857:
  z=fn1(z)/fn2(z)-(fn3(z)*approxpi)
  z=fn4((z)^approxpi)
  |z| <= 4
  ;SOURCE: billatny.frm
}
 
Oink {
  z = c = pixel + p1:
  r = fn1(1/z) * imag(z)
  q = fn2(1/z) * real(z)
  z = sin(q) * cos(r) + c
  |z| < 4 + p2
  ;SOURCE: big_pig.frm
}
 
Pigalleto {
  z = c = pixel:
  r = fn1((1/z) / z) + p1 
  z = fn2(z / r)
  z = z + c
  |z| < 4 + p2
  ;SOURCE: big_pig.frm
}
 
Piglet {
  z = c = pixel, p = pixel + p1:
  z = z * z * p
  r = tan((1/z) / c)  
  z = fn2(z) + fn1(r)
  |z| < 4 + p2
  ;SOURCE: big_pig.frm
}
 
Pigs {
  z = pixel:
  r = z * fn1(z)^e   
  z = (fn2(z) / r) + p1
  |z| < 4
  ;SOURCE: big_pig.frm
}
 
BEJ_N39 {
  z=c=pixel, maria=log(z):
  z=fn1(z)
  z=(z*z+c)+(maria/p1)
  |z|<4
  ;SOURCE: bej-mari.frm
}
 
BEJ_N41 {
  z=c=pixel, maria=sqr(z)+log(z):
  z=fn1(z)+p1/(maria+pixel)
  z=(z*z+c)
  |z|<4
  ;SOURCE: bej-mari.frm
}
 
Carr2178a {; Modified Bob Carr 
           ; Modified Sylvie Gallet frm. [101324,3444],1996
  z=(pixel+pixel)-1/log(pixel-1/sin(0.010/pixel))^2.5
  c=sin(conj(-0.81256,-0.2495))
  d1=(conj(0.0002550/pixel))
  z1=c1=(1.5*z+d1), z2=c2=(2.25*z+d1)
  z3=c3=(3.375*z+d1), z4=c4=(11.0625*z+d1)
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=fn1(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  z=(z-c/6)*fn2(1-(t1||t2||t3||t4))\
      +((z1*t1+d1)+(z2*t2+d1)+(z3*t3+d1)+(z4*t4+d1))
  c=c*(1-(t1||t2||t3||t4))+((c1*t1+d1)+(c2*t2+d1)+(c3*t3+d1)+(c4*t4+d1))
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: bej4.frm
}
 
mandel-newton_j5 {; Modified Sylvie Gallet Frm [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center+rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = fn1((z*z)/(zn)), z4 = z2*z2, z1 = (z4*z-1)/(4*z4)
  z = (z2+(c))*test1 + (z-z1)*(1-test1) 
  iter = iter+fn2(3.099,-3.099)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej4.frm
}
 
mandel-newton_j6e {; Modified Sylvie Gallet Frm [101324,3444], 1995
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center/rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit), test3=(zn^limit)
  c=(-0.7456,-0.0186)
  c=sin(conj(-0.81256,-0.1295))
  z = (z-zn)*test2 + zn
  z2 = fn1(z*z/c)-(zn), z4 = (z2*z2), z1 = (z4*z-1)/(4*z4)
  z = (z2+(c))*test1 + (z-z1)*(1-test1) 
  iter = iter+(2.079,-2.079)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej4.frm
}
 
mandel-newton_j6g {; Modified Sylvie Gallet Frm [101324,3444], 1995
                   ; Revised for Fractint v20 by G. Martin
  z = pixel, c = z, iter = 1
  rad = 3.1, center = (1.0,0.1)
  pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
  zn = center/rad/(pix-center)
  limit = real(p1), b1 = 16, b2 = 0.0001 :
  test1 = (iter<limit), test2=(iter!=limit)
  c1=(-0.7056,-0.0086)
  c=fn1(fn2(conj(-0.80256,-0.1095)))
  z = (z-zn)*test2 + zn
  z2 = (z^2+(-0.6956,0.10)+(test1/7*pixel)), z4 = (z2*z2) 
  z1 = (z4*z-1)/(4*z4)
  z = (z2+(c))*test1 + (z-z1)*(1-test1) 
  iter = iter+(3.099,-3.099)
  ((|z2| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej4.frm
}
 
BEJ3 {
  z=c=pixel:
  zsqr=z*z*z*z
  x = (1.5+z^p1)^(1/p1)
  z = z*(1+y)/(1-x) + p2
  z=fn1(z)-c
  z=fn2(z)+c
  |z|<=3
  ;SOURCE: bej's.frm
}
 
BEJ6 {
  z=(0), c=pixel:
  zsqr^2*z+const
  x=(1-z*p1)/(1*p2)
  z=fn1(z)+c
  z=fn2(z)+c
  |z|<4
  ;SOURCE: bej's.frm
}
 
BEJ_23 {
  z=pixel:
  z1=(z*z)^(z-z)*z
  z2=(z*z)^(z1+p1)+pixel
  z3=z*z*z*z
  z=fn1(z3)+pixel
  |z|<4
  ;SOURCE: bej's.frm
}
 
BEJ_N28C_B {; Revised for Fractint v. 20 by George Martin
            ; Fourth line began
            ; z3=z^(zsqr=z*z)
            ; Also, sqrz was defined and never used
            ; fn1 used as a variable
  z=pixel:
  z1=z*fn1(z*fn2(z))
  z2=sqr(z)/fn1(z)
  z3=z^(z*z), zsin=(c+p1^1.5)*(c+p1/1.2)
  z=(z*1)/(c+p2), z=fn1(z), z=fn2(z)
  |z|<4
  ;SOURCE: bej's.frm
}
 
BEJ_New1 {
  z=pixel, root=1:
  z=z*z/p1
  z2 = z*z
  z3 = (z*z) - pixel
  z4 = z3 * z
  z = (3 * z4 + Root) / (4 * z3)
  z=fn1(z)+c
  z=fn2(z)+c
  |z|<4
  ;SOURCE: bej's.frm
}
 
BJ-BC1924pt3 {; Modified Bob Carr frm from a modified Sylvie Gallet frm.
              ; For FN1 check out
  z= pixel, c =(-0.7456,3.245)
  z=c=z
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6)+fn1(pixel) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  z7=z*z*z
  z8=(z+c)^pixel/(z*z+(zn*z2)/z7)
  c=z+c/2.125
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: bej's.frm
}
 
BJ-BC1974 {; Modified Bob Carr frm from a modified Sylvie Gallet frm.
  c=z=pixel, d=log(1/pixel-conj(1/pixel))
  compt=0, limit=(abs(p1/5)), bailout=4
  p=(0.9/-2.48)-1.00763 :
  test=(compt<limit)+fn1(c)
  c=c*test+p*(1-test)
  z=z*z+c-real(d/5*pixel)
  compt=compt+0.39
  |z|<=bailout
  ;SOURCE: bej's.frm
}
 
CGhalley (XYAXIS) {; Chris Green -- Halley's formula
   ; P1 real usually 1 to 1.5, P1 imag usually zero. Use floating point.
  z=(1,1):
  z5=z*z*z*z*z
  z6=z*z5
  z7=z*z6
  z=z-p1*((z7-z-pixel)/ ((7.0*z6-1)-(42.0*z5)*(z7-z-pixel)/(14.0*z6-2)))
  0.0001 <= |z7-z-pixel|
  ;SOURCE: fractint.frm
}
 
CGNewtonSinExp (XAXIS) {
  z=pixel:
  z1=exp(z)
  z2=sin(z)+z1-z
  z=z-p1*z2/(cos(z)+z1)
  .0001 < |z2|
  ;SOURCE: fractint.frm
}
 
moc {
  z=0, c=pixel:
  z=sqr(z)+c
  c=c+p1/c
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
BEJ_25 {
  z=pixel:
  z1=z*z*z
  z2=z+pixel
  z3=z*z+(z*z)
  z=fn1(z3)+pixel
  |z|<=4
  ;SOURCE: bej's.frm
}
 
Beck {
  z = pixel, sp = sin(sqr(pixel)): 
  r = z * (fn1(1/z) /sp) + p1  
  q = fn2(z) * sp + p2 
  z = r * (whitesq == 1) + q * (whitesq == 0)
  |z| <= 4
  ;SOURCE: beck.frm
}
 
DaSum_PHC {
  z1 = pixel + p1, z2 = pixel:
  z1 = (z1 - 1) * (z1 + 0.5) * (z1*z1+1)
  z1 = (z1 * 0.3) - ((z1)/fn1(z1))
  z2 = z2 + p2, r = fn2(z2) * z2^2, q = z2^e
  z2 = (z2 - imag(1/r) / z2 - real(1/q)) 
  z = (z1 * (whitesq == 1)) + (z2 * (whitesq == 0))
  |z| <= 4
  ;SOURCE: beck.frm
}
 
Peace_Magnet_PHC {
  z = r = pixel, c1 = p1 - 1, c2 = p1 - 2:
  r = ((z*z + (p2 - 1)) / (2*z + (p2 - 2)))^2
  z = (z*z + c1)/(z+z+c2) 
  z = (z*z * (whitesq == 1)) + (r * z * (whitesq == 0))
  |z| < 100
  ;SOURCE: beck.frm
}
 
Peace_PHC {
  z = pixel:
  r = ((z*z + (p1 - 1)) / (2*z + (p1 - 2)))^2
  q = fn1(z) * fn2(z) + p2
  z = (r * (whitesq == 1)) + (q * (whitesq == 0))  
  |z| < 100
  ;SOURCE: beck.frm
}
 
Mandelbrot (XAXIS) {; Mark Peterson
                    ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z):  ; Start with z**2 to initialize LastSqr
  z = z + Pixel
  z = Sqr(z)
  LastSqr <= 4            ; Use LastSqr instead of recalculating
  ;SOURCE: fractint.frm
}
 
OK-40 {; DISECTED OK-39
       ; (ASSUMING YOU USE OK-39 WITH FN1= IDENT & FN2 = SQR...)
  z = pixel, cx = fn1(real(pixel)), cy = fn2(imag(pixel)), k = 2 + p1:
  zx = real(z), zy = imag(z)
  a = zx*cx - zy*cy
  b = cx*zy + zx*cy
  x = fn3(a*a - b*b) + cx
  y = fn4(k*a*b) + cy
  z = x + flip(y)
  |z| <= (10 + p2)
  ;SOURCE: overkill.frm
}
 
Newton_elliptic {; Tim Wegner - use float=yes and periodicity=0
   ; fractal generated by Newton formula f(z) = (z^3 + c*z^2 +1)^2
   ; try p1 = 1 and p2 = .0001
  z = pixel, z2 = z*z, z3 = z*z2:
  z = z - (z3 + p1*z2 + 1)/(6*z2 + 4*p1*z)      ; z - f(z)/f'(z)
  z2 = z*z
  z3 = z*z2
  p2 <= |z3 + p1*z2 + 1|  ; no need for sqr because sqr(z)==0 iff z==0
  ;SOURCE: fractint.frm
}
 
Fzppfnre {; Lee Skinner
  z = pixel, f = 1./(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}
 
Jm_19 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z)*pixel*fn2(fn3(z)+pixel)
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_21 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z^pixel)*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Fzppfncs {; Lee Skinner
  z = pixel, f = 1./cos(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}
 
Ent2 {; Scott Taylor
      ; try params=2/1, functions=cos/cosh, potential=255/355
  z = Pixel, y = fn1(z), base = log(p1):
  z = fn2( y * log(z) / base )
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Jm_26 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(z)) + pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
LeeMandel3 (XAXIS) {; Kevin Lee
  z=Pixel, c=Pixel-sqr(z):
  c=Pixel+c/z, z=c-z*pixel
  |z|<4
  ;SOURCE: fractint.frm
}
 
HyperMandel {; Chris Green.
   ; A four dimensional version of the mandelbrot set.
   ; Use P1 to select which two-dimensional plane of the
   ; four dimensional set you wish to examine.
   ; Use floating point.
  a=(0,0), b=(0,0):
  z=z+1
  anew=sqr(a)-sqr(b)+pixel
  b=2.0*a*b+p1
  a=anew
  |a|+|b| <= 4
  ;SOURCE: fractint.frm
}
 
Richard11 (XYAXIS) {; Jm Collard-Richard
  z=pixel:
  z=1/sinh(1/(z*z))
  |z|<=50
  ;SOURCE: fractint.frm
}
 
DeltaLog (XAXIS) {; Mark Peterson
  z = pixel, c = log(pixel):
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
T02-04 {; V.1.1 - earlier versions may be discarded
        ; Copyright (c)1998,1999 Morgan L. Owens
        ; Chebyshev Types:
        ; Inspired by Rob Dem Braseem:
        ; Escape  (Mandelbrot)
        ; 
        ; T(n+1) = 2zT(n)-T(n-1)
        ; T(0)  = 1
        ; T(1)  = z
        ;
        ; = 2zT01-T00
  const=pixel-1, z=p1:
  z=(z+z)*z+const
  |z|<100
  ;SOURCE: chby4.frm
}
 
Carr1795 {
  z=1/(pixel-real(1/pixel)-sinh(1/pixel-0.25))
  c=(1/(pixel-(0.124/z*(0.524/pixel/z)))):
  z=0.124/pixel/c*c*c*pixel/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}
 
Carr1540 {
  z=sqr(1/pixel)+sqr(pixel)
  c=sin(tan(exp(z-1))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
 
August {; Sylvie Gallet, Dec 1997
        ; Newton's method applied to z^4 - 4 = 0
        ; Coloring algorithm by Scott Burns
        ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0, sq2 = sqrt(2)
  a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
  mz = abs(cabs(z1)-sq2) 
  :
  IF (mz > 0.1)
    z2 = z1*z1
    z1 = (3*z2*z2 - 4) / (4*z1*z2)
    mz = abs(cabs(z1)-sq2)
    cont = 1
    iter = iter + 1
  ELSE
    IF (iter < 13)
      z = exp((iter + 0.001 + 9.99*mz)*a)
    ELSE
      z = exp((13 + (iter-13)/18)*a)
    ENDIF
    cont = 0
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}
 
February {; Sylvie Gallet, Dec 1997
          ; Newton's method applied to z^3 - 1 = 0
          ; Coloring algorithm by Scott Burns
          ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0, limit = 0.05, c = 1/limit
  sqr2 = sqrt(2), j = -0.5 + flip(sqrt(0.75)), k = conj(j)
  a = 85*(0,0.0245436)    ; real(p1) * 2i pi / 256
  :
  m1 = abs(cabs(z1-1)-sqr2)
  IF (m1 <= limit)
    mk = abs(cabs(z1-k)-sqr2)
    IF (mk <= limit)
      z = exp((2 + c*mk)*a) 
      cont = 0
    ELSE
      z = exp(c*m1*a)
      cont = 0
    ENDIF
  ELSE
    mj = abs(cabs(z1-j)-sqr2)
    IF (mj <= limit)
      z = exp((1 + c*mj)*a)
      cont = 0
    ELSE
      mk = abs(cabs(z1-k)-sqr2)
      IF (mk <= limit)
        z = exp((2 + c*mk)*a)
        cont = 0
      ELSE
        z2 = z1*z1
        z1 = (2*z1*z2 + 1) / (3*z2)
        iter = iter + 1
        cont = 1
      ENDIF
    ENDIF
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}
 
January-2 {; Sylvie Gallet, Dec 1997
           ; Based on Scott Burns equation solver applied to z^3 - 1 = 0
           ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0
  a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
  mz = abs(cabs(z1)-1) 
  :
  IF (mz >= 0.1)
    z2 = z1*z1
    z1 = (p2*z2*z2 + p3*z1) / (2*z1*z2 + imag(p1))
    mz = abs(cabs(z1)-1)
    cont = 1
    iter = iter + 1
  ELSE
    z = exp((iter + 10*mz)*a)
    cont = 0
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}
 
January-3 {; Sylvie Gallet, Dec 1997
           ; Based on Scott Burns equation solver applied to z^4 - 1 = 0
           ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0
  a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
  mz = abs(cabs(z1)-1) 
  :
  IF (mz >= 0.1)
    z2 = z1*z1
    z1 = (p2*z2*z2 + p3)*z1 / (3*z2*z2 + imag(p1))
    mz = abs(cabs(z1)-1)
    cont = 1
    iter = iter + 1
  ELSE
    z = exp((iter + 10*mz)*a)
    cont = 0
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}
 
January-3 {; Sylvie Gallet, Dec 1997
           ; Based on Scott Burns equation solver applied to z^4 - 1 = 0
           ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0
  a = real(p1)*(0,0.0245436)    ; real(p1) * 2i pi / 256
  mz = abs(cabs(z1)-1) 
  :
  IF (mz >= 0.1)
    z2 = z1*z1
    z1 = (p2*z2*z2 + p3)*z1 / (3*z2*z2 + imag(p1))
    mz = abs(cabs(z1)-1)
    cont = 1
    iter = iter + 1
  ELSE
    z = exp((iter + 10*mz)*a)
    cont = 0
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}
 
May {; Sylvie Gallet, Dec 1997
     ; Newton's method applied to z^3 - 1 = 0
     ; Coloring algorithm by Scott Burns
     ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0
  a = p1*(0,0.0245436)    ; real(p1) * 2i pi / 256
  :
  mz = cabs(z1)
  z2 = z1*z1
  z1 = ((2.5,-0.7)*z1*z2 + (0.5,0.7)) / (3*z2)
  dz = abs(abs(real(z1)-0.25)-0.75)
  IF (dz <= 0.1)
    z = exp((iter + 10*dz)*a)
    cont = 0
  ELSEIF (mz <= 0.25)
    z = exp((256/p1-1 + 4*mz)*a), cont = 0
  ELSE
    iter = iter + 1, cont = 1
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}
 
May-2 {; Sylvie Gallet, Dec 1997
       ; Newton's method applied to z^3 - 1 = 0
       ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0, j = -0.5 + flip(sqrt(0.75)), k = conj(j)
  a = p1*(0,0.0245436)    ; real(p1) * 2i pi / 256
  :
  mz = cabs(z1)
  z2 = z1*z1
  z1 = ((2.5,-0.7)*z1*z2 + (0.5,0.7)) / (3*z2)
  dz = abs(real(z1+0.5))
  IF (dz > 0.1)
    dz = abs(real(z1*j+0.5))
    IF (dz > 0.1)
      dz = abs(real(z1*k+0.5))
    ENDIF
  ENDIF
  IF (dz <= 0.1)
    z = exp((iter + 10*dz)*a), cont = 0
  ELSEIF (mz <= 0.25)
    z = exp((256/p1-1 + 4*mz)*a), cont = 0
  ELSE
    iter = iter + 1, cont = 1
  ENDIF
  cont
  ;SOURCE: 98msg.frm
}
 
New1 {
  z1 = pixel, iter = 0, imag1 = imag(p1), imag1inv = 1 / imag1
  a = p1*(0,0.0245436)    ; real(p1) * 2i pi / 256
  :
  mz = cabs(z1)
  z2 = z1*z1
  z1 = (p2*z1*z2 + p3) / (3*z2)
  dz = abs(cabs(z1)-1)
  IF (dz <= imag1)
    z = exp((iter + imag1inv*dz)*a), cont = 0
  ELSEIF (mz <= 0.25)
    z = exp((256/p1-1 + 4*mz)*a), cont = 0
  ELSE
    iter = iter + 1, cont = 1
  ENDIF
  cont
  ;SOURCE: calendar.frm
}
 
November {; Sylvie Gallet, Dec 1997
          ; Coloring algorithm by Scott Burns
          ; Use decomp = 256 and periodicity = 0
  z1 = pixel, iter = 0
  a = real(p1)*(0,0.0245436) ; 2i pi /256
  mz = abs(cabs(z1-(0,3))-3)
  :
  IF (mz >= 0.01 || iter < 10)
    z1 = z1*z1 + pixel
    mz = abs(cabs(z1-(0,3))-3)
    cont = 1
    iter = iter + 1
  ELSE
    z = exp((iter + 0.001 + 99.9*mz)*a)
    cont = 0
  ENDIF
  cont
  ;SOURCE: calendar.frm
}
 
January {; Sylvie Gallet, Dec 1997
         ; Based on Scott Burns equation solver applied to z^3-1 = 0
         ; Use decomp = 256
  z1 = pixel, iter = 0
  a = 23*(0,0.0245436)       ; 23 * 2i pi / 256
  mz = abs(cabs(z1)-1)
  :
  IF (mz>=0.1)
    z = exp((iter + 10*mz)*a)
    cont = 0
  ELSE
    z2 = z1*z1
    z1 = ((1,-1)*z2*z2 + (7,1)*z1) / (2*z1*z2 + 6)
    mz = abs(cabs(z1)-1) 
    cont = 1
    iter = iter + 1
  ENDIF
  cont
  ;SOURCE: 97msg.frm
}
 
carr2821 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; Converted to if.else by Sylvie Gallet and George Martin 3/97
          ; passes=1 needs to be used with this PHC formula.
   pixinv = 0.1/pixel
   p9 = 0.9*pixinv
   imagp1 = imag(p1)
   imagp2 = imag(p2)
   IF (whitesq)
      z = zorig = pixel - conj(pixinv)
      c = pixel - flip(pixinv) - conj(0.01*pixinv) - p9
      mz = |z|
   ELSE
      c = flip(pixinv) + conj(0.01*pixinv) - pixel - p9
      z = zorig = conj(pixinv) - pixel
      mz = |z|
   ENDIF
   bailout = 16
   iter = 0
   :
   IF (iter==p1)
      z = mz = 0
      c = 1.5*zorig^1.2 - p9
   ELSEIF (iter==imagp1)
      z = mz = 0
      c = 2.25*conj(zorig) - p9
   ELSEIF (iter==p2)
      z = mz = 0
      c = 3.375*flip(zorig) - p9
   ELSEIF (iter==imagp2)
      z = mz = 0
      c = 5.0625*flip(zorig) - p9
   ENDIF
   z = mz*0.2 + z*z + c
   mz = |z|
   iter = iter + 1
   mz <= bailout
  ;SOURCE: ifs196.frm
}
 
Carr2771 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; passes=1 needs to be used with this PHC formula.
                  ; Modified for IF..ELSE logic by Sylvie Gallet, 05/15/97
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel = real(pixel) - flip(abs(imag(pixel)))
  pp2 = newpixel/imag(p2), a = 0.02/newpixel
  IF (whitesq)
    c = cotan(|1-newpixel|)^1.5*newpixel^8                \
        -(0.5/log(5*a + 1.0))^30 - a
    z = z0 = (newpixel^2.63)/log(1.667 - newpixel)^2.87   \
             -(1/log(conj(3.5*a + 1.25)))^7.5
  ELSE
    c = -cotan(|1-newpixel|)^1.5*newpixel^8               \
        +(0.5/log(5*a + 1.0))^30 - a
    z = z0 = -(newpixel^2.63)/log(1.667 - newpixel)^2.87  \
             +(1/log(conj(3.5*a + 1.25)))^7.5
  ENDIF
  bailout = 4, iter = 0
  :
  IF (iter==p1)
    z = 0, c = z0 - a
  ELSEIF (iter==imag(p1))
    z = 0, c = z0 * 2.25 - a
  ELSEIF (iter==p2)
    z = 0, c = z0 * 3.375 - a
  ELSEIF (iter==imag(p2))
    z = 0, c = z0 * 5.0625 - a
  ENDIF
  iter = iter + 1
  c = c + pp2, z = sqr(z) + c
  abs(z) <= bailout
  ;SOURCE: phctopng.frm
}
 
Carr2579 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel-conj(conj(0.10/newpixel))-cotan(cotan(1/newpixel)))
  c=1/(newpixel+cosxx(1.5/(sqr(cos(newpixel+conj(newpixel))))))
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.09/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.49/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
}
 
Carr1989 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel-conj(pixel/5), p10=10*pixel, th1=tanh(1), c=z-0.099/pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+tan(z1)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Jm_17 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z)*pixel*fn2(fn3(z))
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_02 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=(z^pixel)*fn1(z^pixel)
  |z|<=t
  ;SOURCE: fractint.frm
}
 
AltMTet (XAXIS) {; Mandelbrot form 2 of the Tetration formula--Lee Skinner
  z = 0:
  z = (pixel ^ z) + pixel
  |z| <= (P1 + 3)
  ;SOURCE: fractint.frm
}
 
Jm_15 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  f2=fn2(z), z=fn1(f2)*fn3(fn4(f2))*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
inandout03 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   ; p1 = Parameter (default 0), real(p2) = Bailout (default 4)
   ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  IF (p2 <= 0)
     test = 4
  ELSE
     test = real(p2)
  ENDIF
  z = oldz = c = pixel, moldz = mz = |z| :
  IF (mz <= moldz)
     c = fn1(c)       ;IN
  ELSE
     c = fn1(z * p1)  ;OUT
  ENDIF
  oldz = z, moldz = mz
  z = fn2(z*z) + c, mz = |z|
  mz <= test
  ;SOURCE: fract196.frm
}
 
inandout02 {; Modified for if..else logic 3/19/97 by Sylvie Gallet
   ; p1 = Parameter (default 0), real(p2) = Bailout (default 4)
   ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
  IF (p2 <= 0)
     test = 4
  ELSE
     test = real(p2)
  ENDIF
  z = oldz = pixel, moldz = mz = |z|:
  IF (mz <= moldz)
     oldz = z, moldz = mz, z = fn1(z) + p1, mz = |z|  ;IN
  ELSE
     oldz = z, moldz = mz, z = fn2(z) + p1, mz = |z|  ;OUT
  ENDIF
  mz <= test
  ;SOURCE: fract196.frm
}
 
Jm_12 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(z)*pixel))
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_20 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(z^pixel)
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Larry {; Mutation of 'Michaelbrot' and 'Element'
    ; Original formulas by Michael Theroux [71673,2767]
    ; Modified for if..else logic 3/19/97 by Sylvie Gallet
    ; For 'Michaelbrot', set FN1 & FN2 =IDENT and P1 & P2 = default
    ; For 'Element', set FN1=IDENT & FN2=SQR and P1 & P2 = default
    ; p1 = Parameter (default 0.5,0), real(p2) = Bailout (default 4)
   z = pixel
    ; The next line sets c=default if p1=0, else c=p1
   IF (real(p1) || imag(p1))
      c = p1
   ELSE
      c = 0.5
   ENDIF
    ; The next line sets test=4 if real(p2)<=0, else test=real(p2)
   IF (real(p2) <= 0)
      test = 4
   ELSE
      test = real(p2)
   ENDIF
   :
   z = fn1(fn2(z*z)) + c
   |z| <= test
  ;SOURCE: fract196.frm
}
 
Zeppo {; Mutation of 'Liar4'.
    ; Original formula by Chuck Ebbert [76306,1226]
    ; Modified for if..else logic 3/19/97 by Sylvie Gallet
    ; For 'Liar4' set FN1 & FN2 =IDENT and P1 & P2 = default
    ; p1 & p2 = Parameters (default 1,0 and 0,0)
   z = pixel
    ; The next line sets p=default if p1=0, else p=p1
   IF (real(p1) || imag(p1))
      p = p1
   ELSE
      p = 1
   ENDIF
   :
   z = fn1(1-abs(imag(z)*p-real(z))) +          \
       flip(fn2(1-abs(1-real(z)-imag(z)))) - p2
   |z| <= 1
  ;SOURCE: fract196.frm
}
 
shifter01 {; After shift, switch from z*z to z*z*z
           ; Bradley Beacham  [74223,2745]
           ; Modified for if..else logic 3/18/97 by Sylvie Gallet
           ; P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2 :
  IF (iter <= shift)
     z = z*z + c
  ELSE
     z = z*z*z + c
  ENDIF
  iter = iter + 1
  |z| < test
  ;SOURCE: fract196.frm
}
 
bizarre {; Edited for Fractint v. 20 by George Martin 10/98
  z=sqr(z)+pixel
  z=exp(z)+pixel
  z=log(z)+pixel
  x=x+1
  |z|<=4
  ;SOURCE: bizarre.frm
}
 
Fzpcocoh {
  z = pixel, f = 1. / cosh(pixel):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}
 
Bali {; The difference of two squares
  z=x=1/pixel, c= fn1 (z):
  z = (x+c) * (x-c)
  x=fn2(z)
  |z| <=3
  ;SOURCE: fractint.frm
}
 
Kreagor {
  z = c = pixel:
  z = fn1(z) + c + p1
  x = real(z), y = imag(z)
  z = ((1/z) * (fn2(x)/fn1(y)))/ z + c
  |z| <= 4 + p2
  ;SOURCE: d-rock.frm
}
 
MTet (XAXIS) {; Mandelbrot form 1 of the Tetration formula --Lee Skinner
  z = pixel:
  z = (pixel ^ z) + pixel
  |z| <= (P1 + 3)
  ;SOURCE: fractint.frm
}
 
Richard3 (XAXIS) {; Jm Collard-Richard
  z = pixel:
  sh=sinh(z), z=(1/(sh*sh))+pixel
  |z|<=50
  ;SOURCE: fractint.frm
}
 
Sterling3 (XAXIS) {; davisl
  z = Pixel:
  z = ((z/2.7182818)^z)/sqr(6.2831853*z) - pixel
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
ZZa (XAXIS) {; Prof Jm using Newton-Raphson method
             ; use floating point with this one
  z=pixel, solution=1:
  z1=z^(z-1)
  z2=(((z-1)/z)+log(z))*z1
  z=z-((z1-1)/z2)
  .001 <= |solution-z1|
  ;SOURCE: fractint.frm
}
 
a--mand {
  z = c = pixel:
  z = (sqr(z)+c) / |c|
  |z|<p1
  ;SOURCE: eli.frm
}
 
aa-mand-re (XAXIS) {
  z = c = pixel:
  z = sqr(z)+c
  real(z)<p1
  ;SOURCE: eli.frm
}
 
Newton3 {; Chris Green
         ; Try p1=1.8 and p2 = 3.0
  z  = (1,1):
  z2 = z*z
  z3 = (z*z2) - pixel
  z  = z-p1*z3/(p2*z2)
  0.0001 < |z3|
  ;SOURCE: improved.frm
}
 
Mind_3 {
   ; This Fractint .FRM file (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel:
  z = c * sin(1 / z)
  z = z * z + c
  |z| <= 4
  ;SOURCE: physics.frm
}
 
Daisy (ORIGIN) {; Mark Peterson
  z = pixel:
  z = z*z + (0.11031, -0.67037)
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Dragon (ORIGIN) {; Mark Peterson
  z = Pixel:
  z = sqr(z) + (-0.74543, 0.2)
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Fzppfnht {; Lee Skinner
  z = pixel, f = cosh(pixel)/sinh(pixel):
  z = fn1(z)+f
  |z|<= 50
  ;SOURCE: fractint.frm
}
 
Fzppfnta {; Lee Skinner
  z = pixel, f = tan(pixel):
  z = fn1(z) + f
  |z|<= 50
  ;SOURCE: fractint.frm
}
 
MyFractal {; Fractal Creations example
  c = z = 1/pixel:
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Richard4 (XAXIS) {; Jm Collard-Richard
  z = pixel:
  z2=z*z, z=(1/(z2*cos(z2)+z2))+pixel
  |z|<=50
  ;SOURCE: fractint.frm
}
 
InvMandel (XAXIS) {; Mark Peterson
  c = z = 1 / pixel:
  z = sqr(z) + c
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Newton4 (XYAXIS) {; Mark Peterson
   ; Note that floating-point is required to make this compute accurately
  z = pixel, Root = 1:
  z3 = z*z*z
  z4 = z3 * z
  z = (3 * z4 + Root) / (4 * z3)
  .004 <= |z4 - Root|
  ;SOURCE: fractint.frm
}
 
Richard2 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
  z=1/(sin(z*z+pixel*pixel))
  |z|<=50
  ;SOURCE: fractint.frm
}
 
Richard6 (XYAXIS) {; Jm Collard-Richard
  z = pixel:
  z=sin(sinh(z))+pixel
  |z|<=50
  ;SOURCE: fractint.frm
}
 
G-3-03-M  { ; Sylvie Gallet [101324,3444], 1996
            ; Modified Gallet-3-03 formula
  z = pixel :
  x = real(z), y = imag(z)
  x1 = x - p1 * fn1(y*y + round(p2*fn2(y)))
  y1 = y - p1 * fn1(x*x + round(p2*fn2(x)))
  z = x1 + flip(y1)
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Newton_real {; Sylvie Gallet [101324,3444], 1996
   ; Newton's method applied to   x^3 + y^2 - 1 = 0 
   ;                              y^3 - x^2 + 1 = 0
   ;                              solution (0,-1)
   ; One parameter : real(p1) = bailout value 
  z = pixel, x = real(z), y = imag(z) : 
  xy = x*y                                
  d = 9*xy+4, x2 = x*x, y2 = y*y        
  c = 6*xy+2 
  x1 = x*c - (y*y2 - 3*y - 2)/x
  y1 = y*c + (x*x2 + 2 - 3*x)/y
  z = (x1+flip(y1))/d, x = real(z), y = imag(z)
  (|x| >= p1) || (|y+1| >= p1)
  ;SOURCE: fractint.frm
}
 
Sterling2 (XAXIS) {; davisl
  z = Pixel:
  z = ((z/2.7182818)^z)/sqr(6.2831853*z) + pixel
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Fzpfncoh {; Lee Skinner
  z = pixel, f = 1./cosh(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}
 
many_man {; Modified Stephen C. Ferguson formula
          ; adapted for Fractint by Les St Clair, 1997
          ; use real p1 to set bailout (try p1=4)
          ; use real p2 to set number of mandels
          ; set fn1=ident, fn2=log for "default" formula
  z=0, c=pixel:
  z=(z*z)+fn1(fn2(c^p2)/p2)
  |z| <=p1
  ;SOURCE: many_man.frm
}
 
Gallet-7-01 {; Sylvie Gallet [101324,3444], 1996
  j = -0.5 + flip(0.5*sqrt(3)), j2 = j*j
  z = pixel :
   x = z*j, y = z*j2
   x1 = x - p1*fn1(y + fn2(p2*z))
   y1 = y - p1*fn1(z + fn2(p2*x))
   z1 = z - p1*fn1(x + fn2(p2*y))
   z = z1 + x1*j + y1*j2
    |z| <= 32
  ;SOURCE: gallet-7.frm
}
 
Gallet-7-02 {; Sylvie Gallet [101324,3444], 1997
  j = -0.5 + flip(0.5*sqrt(3)), j2 = j*j
  z = pixel:
   x = z*j, y = z*j2
   x1 = x - p1*fn1(y*z + p2*fn2(x))
   y1 = y - p1*fn1(z*x + p2*fn2(y))
   z1 = z - p1*fn1(x*y + p2*fn2(z))
   z = z1 + x1*j + y1*j2
    |z| <= 32
  ;SOURCE: gallet-7.frm
}
 
Gallet-7-03 {; Sylvie Gallet [101324,3444], 1997
  j = -0.5 + flip(0.5*sqrt(3)), j2 = j*j
  z = pixel:
   x = z*j, y = z*j2
   x1 = x - p1*fn1(x + p1*fn1(y + p2*fn2(z)))
   y1 = y - p1*fn1(y + p1*fn1(z + p2*fn2(x)))
   z1 = z - p1*fn1(z + p1*fn1(x + p2*fn2(y)))
   z = z1 + x1*j + y1*j2
    |z| <= 32
  ;SOURCE: gallet-7.frm
}
 
Gallet-10-01 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Oct 1997
  z1 = c = pixel, mz1 = cabs(fn2(z1)), k = real(p1)*mz1
  bailout = real(p2), z = imag(p1) :
  z1 = sqr(sqr(z1) + c) + c
  z1 = fn1(real(z1)) + flip(imag(z1)), mz1 = cabs(z1)
  IF (mz1 <= k)
    z1 = z1 + p3, mz1 = cabs(z1)
  ENDIF
  IF (mz1 < imag(p1))
    z = z1^imag(p2)
  ENDIF
  mz1 <= bailout
  ;SOURCE: gallet10.frm
}
 
Gallet-10-02 {; Modified Paul W. Carlson formula ( Petals_Mset)
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = radius of the circles
    ;   p2       = circle offset factor
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = 0
  c = pixel
  r = real(p1), bailout = imag(p1)
  r2 = r * r
  ro = r + r * p2
  f = 1 - (2 + p2) * p2
  k = r * (p2 + sqrt(f))    ;abs val of petal center (k,k)
  k1 = k*(1,1), k2 = conj(k1)
  plsqd = 2 * r2 * f        ;petal length squared
  z = 0
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  range_num = 0
  iter = 0:
    ;
  w = 1 / (w*w + c)
    ;****************************************************
    ; Determine which pair of overlapping circles the
    ; orbit point falls in, if any.
    ;****************************************************
  c1 = (|w - ro| < r2)
  c2 = (|w + flip(ro)| < r2)
  c3 = (|w + ro| < r2)
  c4 = (|w - flip(ro)| < r2)
  IF (c1 && c4)
    d = |w-k1|
  ELSEIF (c1 && c2)
    d = |w-k2|
  ELSEIF (c2 && c3)
    d = |w+k1|
  ELSEIF (c3 && c4)
    d = |w+k2|
  ELSE
    d = 0
  ENDIF
    ;
  IF (d > 0)
    ;************************************************
    ; Set z equal to the index into the colormap.
    ;************************************************
    index = colors_in_range * d / plsqd
    z = index + range_num * colors_in_range + 1
  ENDIF
    ;
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  d == 0 && |w| < bailout
  ;SOURCE: 98msg.frm
}
 
Gallet-10-03 {; Modified Paul W. Carlson formula ( Petals_Mset)
              ; Sylvie Gallet, sylvie_gallet@compuserve.com, 1998
    ;
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = radius of the circles
    ;   imag(p1) = b, try 0.563 or 0.56667
    ;   p2       = circle offset factor
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = x = y  = pixel
  r = real(p1), b = imag(p1)
  r2 = r * r
  ro = r + r * p2
  f = 1 - (2 + p2) * p2
  k = r * (p2 + sqrt(f))    ; abs val of petal center (k,k)
  k1 = k*(1,1), k2 = conj(k1)
  plsqd = 2 * r2 * f        ; petal length squared
  z = 0
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  range_num = 0
  iter = 0:
    ;
  w = w*w - 0.5*w + b, x = w*w - 0.5*y + b, y = w, w = x
    ;****************************************************
    ; Determine which pair of overlapping circles the
    ; orbit point falls in, if any.
    ;****************************************************
  c1 = (|w - ro| < r2)
  c2 = (|w + flip(ro)| < r2)
  c3 = (|w + ro| < r2)
  c4 = (|w - flip(ro)| < r2)
  IF (c1 && c4)
    d = |w-k1|
  ELSEIF (c1 && c2)
    d = |w-k2|
  ELSEIF (c2 && c3)
    d = |w+k1|
  ELSEIF (c3 && c4)
    d = |w+k2|
  ELSE
    d = 0
  ENDIF
    ;
  IF (d > 0)
    ;************************************************
    ; Set z equal to the index into the colormap.
    ;************************************************
    index = colors_in_range * d / plsqd
    z = index + range_num * colors_in_range + 1
  ENDIF
    ;
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  d == 0 && |w| < 16
  ;SOURCE: gallet10.frm
}
 
Gallet-10-04 {; Sylvie Gallet, sylvie_gallet@compuserve.com, 1998
  ; Yet another formula based on Earl Hinrich's "Invasion" algorithm
  ;
  r = real(p1), t = imag(p1), r_t = r - t, index = z = iter = 0
  w = c = pixel, pw = 0, dw = 0.1, mw = p3
  :
  w = w*w + c
  w = w*w + c, w = fn1(real(w)) + flip(imag(w))
  ww = w, w = w*w + c, w0 = w
  w = w - pw, d = |w|
  w = ww - dw, w = w*w + c
  w = w - pw, dd = |w|
  IF (d < dd)
    w = ww + dw, w = w*w + c
    w = w + pw, dd = |w|
    IF (d < dd)
      w0 = w0 + mw
    ENDIF
  ENDIF
  w = w0, m = cabs(w)
  IF (abs(m-r) < t)
    index = 1 + 127.5*(m - r_t)/t
  ENDIF
  iter = iter + 1
  z = index - iter
  m <= 10
  ;SOURCE: gallet10.frm
}
 
Gallet-10-05 {; Modified Paul W. Carlson formula
              ; Sylvie Gallet, sylvie_gallet@compuserve.com, 1998
    ;
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = radius of the circles - this controls
    ;              the size of the petals
    ;   imag(p2)   Not Used
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  r = real(p2)
  r2 = r * r
  k = 0.35355339 * r    ; Don't mess with this constant
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  range_num = 0
  iter = 0:
    ;
  w = c*fn1(w)
    ;
  wr = real(w), wi = imag(w)
  c1 = (((wr-r) * (wr-r) + wi * wi) < r2)
  c2 = ((wr * wr + (wi+r) * (wi+r)) < r2)
  c3 = (((wr+r) * (wr+r) + wi * wi) < r2)
  c4 = ((wr * wr + (wi-r) * (wi-r)) < r2)
  IF (c1 && c4)
    d = (wr-k) * (wr-k) + (wi-k) * (wi-k)
  ELSEIF (c1 && c2)
    d = (wr-k) * (wr-k) + (wi+k) * (wi+k)
  ELSEIF (c2 && c3)
    d = (wr+k) * (wr+k) + (wi+k) * (wi+k)
  ELSEIF (c3 && c4)
    d = (wr+k) * (wr+k) + (wi-k) * (wi-k)
  ELSE
    d = 0
  ENDIF
  IF (d > 0)
    index = colors_in_range * d / r2
    z = index + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  d == 0 && |w| < 16000
  ;SOURCE: gallet10.frm
}
 
Gallet-8-07 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; 0 < p1 <= 1 (default = 1)
   z = c = zn = pixel
   IF (p1 || imag(p1))
      k = p1
   ELSE
      k = 1
   ENDIF
   :
   zn = zn*zn + c
   IF (abs(zn) < abs(z))
      z = k*real(zn) + flip(imag(z))
   ENDIF
   IF (flip(abs(zn)) < flip(abs(z)))
      z = real(z) + k*flip(imag(zn))
   ENDIF
   |zn| <= 4
  ;SOURCE: gallet_8.frm
}
 
Gallet-3-15 {; Sylvie Gallet [101324,3444], 1996 
  z = Pixel*(0.0,1.0) :
  n = sin(z)-z-pixel, z = z-n/(cos(z)-pixel)
  |n| > real(p1) 
  ;SOURCE: gallet-3.frm
}
 
HRing_J {; This thing is capable of generating Herman rings for alpha
         ; equal to exp(2*pi*i*a), a irrational.
         ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
         ; used for infinity.
         ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=iter
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
HRing_J {; This thing is capable of generating Herman rings for alpha
         ; equal to exp(2*pi*i*a), a irrational.
         ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
         ; used for infinity.
         ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=iter
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
HRing_J2 {; This thing is capable of generating Herman rings for alpha
          ; equal to exp(2*pi*i*a), a irrational.
          ; p1: alpha. p2: c. p3: Orbit trap radius about 0, reciprocal is
          ; used for infinity.
          ; Color variant: stretches to maxiter.
          ; Use outside=real, logmap=0, periodicity=0.
  z=pixel, a=p1, c=p2, r=real(p3), rr=1/r, iter=0, done=0:
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=(iter/maxit)*127
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
HRing_Ma {; Mandelbrot set slice, alpha varies, c fixed.
          ; p2: c. p3: Orbit trap radius about 0, reciprocal is
          ; used for infinity.
          ; Use outside=real, logmap=0, periodicity=0.
  a=pixel, c=p2, r=real(p3), rr=1/r, iter=0, done=0, flag=0, m=maxit
  z=(3+sqr(c)+sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  IF(real(c)*real(c)-imag(c)*imag(c)-5>=0)
    flag=1-flag
  ENDIF
  IF(imag(c)<0)
    flag=1-flag
  ENDIF
  IF(flag==1)
    z=(3+sqr(c)-sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  ENDIF
  :
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=(iter/maxit)*127
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
HRing_Mc {; Mandelbrot set slice, c varies, alpha fixed.
          ; p1: alpha. p3: Orbit trap radius about 0, reciprocal is
          ; used for infinity.
          ; Use outside=real, logmap=0, periodicity=0.
  a=p1, c=pixel, r=real(p3), rr=1/r, iter=0, done=0, flag=0, m=maxit
  z=(3+sqr(c)+sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  IF(real(c)*real(c)-imag(c)*imag(c)-5>=0)
    flag=1-flag
  ENDIF
  IF(imag(c)<0)
    flag=1-flag
  ENDIF
  IF(flag==1)
    z=(3+sqr(c)-sqrt(9-10*sqr(c)+sqr(sqr(c))))/(4*c)
  ENDIF
  :
  z2=sqr(z)
  z=a*z2*(z-c)/(1-c*z)
  iter=iter+1
  IF(lastsqr<r || lastsqr>rr)
    color=(iter/maxit)*127
    IF(color<1)
      color=1
    ELSEIF(color>127)
      color=127
    ENDIF
    IF(lastsqr<r)
      color=color+127
    ENDIF
    z=color-iter-7
    done=1
  ENDIF
  done==0
  ;SOURCE: 98msg.frm
}
 
sg_ifs_45_J {
  a0=0.40944, b0=0.63556, c0=0.69977, d0=-0.36429
  a1=0.44003, b1=-0.21839, c1=0.41333, d1=0.37676
  a2=0.10788, b2=0.43864, c2=0.08479, d2=0.25711
  al0=-0.59391, k0=3.91945, l0=-3.79794
  al1=0.25605, k1=0.47092, l1=-2.67077
  al2=-0.00946, k2=1.93894, l2=-0.59695
  z=pixel:
  x=real(z)
  y=imag(z)
  o0=(d0*x-b0*y+k0)/al0+flip((-c0*x+a0*y+l0)/al0)
  op0=|o0-p2|
  o1=(d1*x-b1*y+k1)/al1+flip((-c1*x+a1*y+l1)/al1)
  op1=|o1-p2|
  o2=(d2*x-b2*y+k2)/al2+flip((-c2*x+a2*y+l2)/al2)
  op2=|o2-p2|
  IF (op0<op1 && op0<op2)
    z=o0
  ELSEIF (op1<op0 && op1<op2)
    z=o1
  ELSEIF (op2<op1 && op2<op0)
    z=o2
  ENDIF
  |z|<=p1
  ;SOURCE: 99msg.frm
}
 
Sterling (XAXIS) {; davisl
  z = Pixel:
  z = ((z/2.7182818)^z)/sqr(6.2831853*z)
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
JDfrm031SF7 {; Jim Deutch: generalized 2-Julia pseudo-HiColor
             ; resolution specific - 1024x768
             ; p1 = 1st julia parameters
             ; p2 = 2nd julia parameters
             ; p3 slides 1st julia around the plane wrt the 2nd
  count = (count + 1) * (count != 1023)
  evenodd = (evenodd == (count == 1))
  oddeven = (evenodd == 0)
  z=pixel + p3*evenodd
  p = p1*evenodd + p2*oddeven:
  z=z*z + p
  |z| < 4
  ;SOURCE: phc_1.frm
}
 
BILL_err7 (yaxis) {; Bill Rossi
  z=Pixel:
  tmp1=fn1(z)^fn2(z)
  tmp2=fn3(z)^fn4(z)
  z=(tmp1/tmp2) 
  |z| <= 4
  ;SOURCE: jpl1.frm
}
 
CarlsonJ1 {; from P. Carlson, modified by J.P. Louvet
           ; P1 = c
           ; P2 = degre
           ; P3 = iter (normalement 4)
  z=pixel
  c=P1:
  Z=fn1(C*(Z^P2-1))
  |z|<=P3
  ;SOURCE: jpl1.frm
}
 
InverseJulia {; J.P. Louvet
              ; P1 = c
              ; P2 = iter (normalement 4)
  z=pixel
  c=P1:
  z=1/(z^2+c)
  |z|<=P2
  ;SOURCE: jpl1.frm
}
 
InverseJuliaFn {; after Pokorny
                ;  modified by J.P. Louvet
                ; P1 = c
                ; P2 = iter (normalement 4)
  z=pixel
  c=P1:
  z=fn1(1/(z^2+c))
  |z|<=P2
  ;SOURCE: jpl1.frm
}
 
OK-01 {; TRY P1 REAL = 10000, FN1 = SQR
  z = 0, c = pixel:
  z = (c^z) + c
  z = fn1(z)
  |z| <= (5 + p1)
  ;SOURCE: fractint.frm
}
 
spiderM {
  z=pixel, f=pixel, g=pixel: 
  f=f/p1+z
  z=fn1(z^(p2+g))+fn2(f)
  |z| <= 4 
  ;SOURCE: jpl1.frm
}
 
JPL4' (yaxis) {; J.P. Louvet
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=Pixel
  c=Pixel:
  z=fn1(z^2+1)+c
  |z|<=4
  ;SOURCE: jpl1.frm
}
JPL4a' (yaxis) {; J.P. Louvet
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=Pixel
  c=Pixel:
  z=fn1(z^2+1)+c
  |z|<=4
  ;SOURCE: jpl1.frm
}
Carr2918 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(pixel^5-conj(0.1/pixel)-flip(0.1/pixel))
  b4=(pixel^5-(b5+conj(sqr(b5*(pixel)))))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=((z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}
 
Carr2922 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Modified for IF..ELSE logic by Sylvie Gallet, 05/20/97
  IF (whitesq)
    b4 = sqr(pixel) - conj(0.1/pixel) - flip(0.01/pixel)
    c = sqr(b4) / 10  + (-0.7206,0.2132)
    z = z0 = sqr(conj(b4) + real(0.1/pixel))
  ELSE
    b4 = sqr(pixel) - conj(0.1/pixel) - flip(0.01/pixel)
    c = - conj(b4) / 10  + (-0.7206,0.2132)
    z = z0 = b4 + real(0.1/pixel)
  ENDIF
  bailout = 16, iter = 0
  :
  IF (iter==p1)
    z = 0, c = z0 * 0.15 + (-0.7206,0.2132)
  ELSEIF (iter==imag(p1))
    z = 0, c = z0 * 0.225 + (-0.7206,0.2132)
  ELSEIF (iter==p2)
    z = 0, c = z0 * 0.3375 + (-0.7206,0.2132)
  ELSEIF (iter==imag(p2))
    z = 0, c = z0 * 0.50625 + (-0.7206,0.2132)
  ENDIF
  iter = iter + 1
  z = sqr(z) + c
  |z| <= bailout
  ;SOURCE: phctopng.frm
}
 
Carr2935 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=conj(pixel)-pixel+conj(0.1/pixel)
  b5=cabs(pixel/2)-pixel^2
  c=whitesq*sqr(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.122)+c/10
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}
 
Carr2939 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(flip(pixel/2))^5-conj(0.13/pixel)-flip(0.1/pixel)+0.3
  b4=pixel^3-conj(0.13/pixel-cabs(0.1/pixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=0.2*z^3+z^2+(-0.7656,-0.232)+c/10+c
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}
 
Carr2932 {; Modified OK-42
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel
  p1x=real(p1)+1, p1y=imag(p1)+1
  p2x=real(p2)+1, p2y=imag(p2)+1
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  zx=real(z), zy=imag(z)
  x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y)
  y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x)
  z=(|x+flip(y)|)+(x+flip(y))+(-0.7456,-0.132)+(x+flip(y))/10
  |z|<=4
  ;SOURCE: 42vcarr.frm
}
 
Carr2931 {; Modified OK-42
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel
  p1x=real(p1)+1, p1y=imag(p1)+1
  p2x=real(p2)+1, p2y=imag(p2)+1
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  zx=real(z), zy=imag(z)
  x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y)
  y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x)
  z=x+flip(y)+(-0.7456,-0.132)+(x+flip(y))/10
  |z|<=4
  ;SOURCE: 42vcarr.frm
}
 
Carr2930 {; Modified OK-42
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel
  p1x=real(p1)+1, p1y=imag(p1)+1
  p2x=real(p2)+1, p2y=imag(p2)+1
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  zx=real(z), zy=imag(z)
  x=fn1(zx*p1x-zy*p1y)+fn2(zx*p2x-zy*p2y)
  y=fn3(zx*p1y+zy*p1x)+fn4(zx*p2y+zy*p2x)
  z=x+flip(y)
  |z|<=4
  ;SOURCE: 42vcarr.frm
}
 
Carr2891 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel)-flip(0.01/pixel)
  b3=|cos(conj(conj(pixel^30.5)))|
  b4=(conj(conj(0.15/log(exp(conj(conj(pixel^450))\
      -b3-0.4)-0.8))))+|flip(flip(2*b5^4))|
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}
 
Carr2949 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(sqr(pixel))/(conj(2/pixel)*sin(2/pixel))
  b5=(b4/(cos(-0.7456,0.2)))-flip(0.1/pixel)+0.4
  c=whitesq*cabs(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}
 
Carr2907 (XYAXIS) {; Halley PHC
                   ; passes=1 needs to be used with this PHC formula.
  b5=1/pixel
  z=b5*(whitesq+b5*(whitesq==0)): 
  z5=z*z*z*z*z
  z6=z5*z
  z7=z6*z
  z=(z-p1*((z7-z)/((14.0*z6-2)-(84.0*z5)*(z7-z)/(28.0*z6-4))))
  0.0001<=|z7-z|
  ;SOURCE: 42ucarr.frm
}
 
Carr2904 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=(pixel-conj(0.1/pixel-flip(0.01/pixel)))^5
  b4=pixel-conj(0.1/pixel-flip(0.01/pixel))
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=((z+c/2.125)-0.0125)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}
 
Carr2926 {; Modified-inandout04 
          ; passes=1 needs to be used with this PHC formula.
  k=((1)*(|p1|<=0)+p1)
  test=(4*(real(p2)<=0)+real(p2)*(0<p2))
  b4=cabs(pixel*2)-log(conj(0.5/pixel))
  b5=oldz=pixel-conj(pixel-1/log(tan(1/pixel))-1/log(2/pixel))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5):
  a=(|z|<=|oldz|)*(c)
  b=(|oldz|<|z|)*(c*k)
  c=(a+b)
  oldz=z
  z=z*z+c
  |z|<=test
  ;SOURCE: 42vcarr.frm
}
 
Carr2882 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=|sin(conj(conj(pixel^30.5)))|
  b4=(conj(conj(0.15/log(exp(conj(conj(pixel^450))-b3-0.4)-0.8))))
  b5=(-0.7564,0.21978)*((-1.099,-0.2249)/(-0.8606,-0.0959))\
      -flip(0.001/pixel)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z)+(-0.7456,-0.132)+c/10-(0.0035/c/21)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ucarr.frm
}
 
JoWe55c36a {; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
  c=z=p1/pixel:
  z1=fn1(z) + c
  z=fn2(z1) + p2
  |z| <=p3
  ;SOURCE: jo_we_71.frm
}
 
JoWe55d36a {; from a modified Carr-formula
            ; 5/1999 JoWeber CIS [100424,35]
  c=z=p1/pixel:
  z1=fn1(z) + c
  z=fn2(z1) + c/p2
  |z| <=p3
  ;SOURCE: jo_we_71.frm
}
 
Carr2884 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Rewritten for if..else by Sylvie Gallet 5/22/98
  IF (whitesq)
    c = 0.15/log(exp(pixel^7 + |sin(pixel^3.5)| - 0.4) - 0.8)
    c = (-0.7456,-0.132) + c/10 - 1/(c*6000)
    z = zorig = (pixel - conj(0.1/pixel) - flip(0.01/pixel))^7
  ELSE
    c = - 0.15/log(exp(pixel^7 + |sin(pixel^3.5)| - 0.4) - 0.8)
    c = (-0.7456,-0.132) + c/10 - 1/(c*6000)
    z = zorig = - (pixel - conj(0.1/pixel) - flip(0.01/pixel))^7
  ENDIF
  bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = c = (-0.7456,-0.132) + 0.15*zorig - 1/(zorig*9000)
  ELSEIF (iter == imag(p1))
    z = c = (-0.7456,-0.132) + 0.225*zorig - 1/(zorig*13500)
  ELSEIF (iter == p2)
    z = c = (-0.7456,-0.132) + 0.3375*zorig - 1/(zorig*20250)
  ELSEIF (iter == imag(p2))
    z = c = (-0.7456,-0.132) + 0.50625*zorig - 1/(zorig*30375)
  ELSE
    z = z*z + c
  ENDIF
  iter = iter + 1
  |z| <= bailout
  ;SOURCE: 98msg.frm
}
 
Carr2958 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
          ; Converted to IF..ELSE logic by Sylvie Gallet, 02/21/98
  b4 = abs(sinh(0.5+pixel/2))^3 - conj(0.1/pixel) - flip(0.1/pixel) + 0.5
  IF (whitesq)
    c = conj(b4)/10 + (-0.7456,-0.132), z = zorig = sqr(b4)
  ELSE
    c = - sqr(b4)/10 + (-0.7456,-0.132), z = zorig = - conj(b4)
  ENDIF
  imagp1 = imag(p1), imagp2 = imag(p2), bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = 0, c = 0.15 * zorig + (-0.7456,-0.132)
  ELSEIF (iter == imagp1)
    z = 0, c = 0.225 * zorig + (-0.7456,-0.132)
  ELSEIF (iter == p2)
    z = 0, c = 0.3375 * zorig + (-0.7456,-0.132)
  ELSEIF (iter == imagp2)
    z = 0, c = 0.50625 * zorig + (-0.7456,-0.132)
  ENDIF
  iter = iter + 1
  z = z*z + c
  z <= bailout
  ;SOURCE: 42wcarr.frm
}
 
JoWe55c36b {; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
  c=z1=z2=p1/pixel:
  z1=fn2(fn1(z1) + c) + p2
  z2=fn4(fn3(z2) + c) + p2
  z=z1*whitesq+z2*(whitesq==0)
  |z| <=p3
  ;SOURCE: jo_we_71.frm
}
 
JoWe_34 {; Jo Weber [100424,35] 11/1996
  z=pixel
  bailout=p3 :
  z=(exp(z)+1)/(exp(z)-1)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jowe49.frm
}
 
JoWe_58_3 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  q=real(z), r=imag(z)
  z=z/q-p1*sin(p2*z+r)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_53.frm
}
 
jowe_62_1 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  q=real(z), r=imag(z)
  z1=z*q, z2=z/q
  z3=z*r, z4=z/r
  z1=z1-z4, z2=z2+z3
  h1=r-q, h2=r+q
  z=z1^h1-z2^h2
  z=fn1(p1*fn2(p2*z))+h1*h2
  z=z+(z<0)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
jowe_63 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=sin(z)*(1+2*tan(z))+tan(z)*cos(z)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
jowe_64 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=sin(z)*(1+2*tan(z))+tan(z)*cos(z)
  q=real(z), r=imag(z)
  z1=z*q, z2=z/q
  z3=z*r, z4=z/r
  z1=z1-z4, z2=z2+z3
  z=fn1(z1-z2)-fn2(z2-z1)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
jowe_65 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=tan(sin(z)^2-cos(z^2))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
jowe_65_1 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=tan(sin(z)^2-cos(z)^2)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
jowe_65_1_phc {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=tan(sin(z)^2-cos(z)^2)
  z=fn1(z)*(whitesq==0)+fn2(z)*whitesq
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
jowe_66 {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=(tan(z)^2+cotan(z)^2)/(sin(z)^2-cos(z)^2)
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
jowe_66_PHC {; by Jo Weber [100424,35], 11/1996
  z=pixel
  bailout=p3:
  z=(tan(z)^2+cotan(z)^2)/(sin(z)^2-cos(z)^2)
  z=fn1(z)*whitesq+fn2(z)*(whitesq==0)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
jowe_67 {; by Jo Weber [100424,35], 12/1996
  z=pixel
  bailout=p3:
  z=(sin(z)-tan(z))/(cos(z)-cotan(z))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
jowe_67_1 {; by Jo Weber [100424,35], 12/1996
  z=pixel
  bailout=p3:
  z=(sin(z)-tan(z))/(sin(z)-cotan(z))
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
jowe_67_2 {; by Jo Weber [100424,35], 12/1996
  z=c=pixel
  bailout=p3:
  z1=sin(z)-tan(z)
  z2=cos(z)-cotan(z)
  z1=z1+c
  z2=z2+(z1>=0)
  z=z1*z2
  z=fn1(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
jowe_67_3 {; by Jo Weber [100424,35], 12/1996
  z=pixel
  bailout=p3:
  z=fn1(sin(z)-tan(z))/fn2(cos(z)+cotan(z))
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
JoWe_xy_35 {; Jo Weber [100424,35] 11/1996
            ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=3*sin(pixel)-5*sqr(sqr(sin(pixel)))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
JoWe_XY_51m_1 {; Jo Weber [100424,35] 11/1996
               ; Added variable "newpixel". G. Martin 6/27/99
  k=(6,4), l = (0,4)
  newpixel=cos(sin((k-pixel)/(l+pixel)))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
JoWe_XY_51m_3 {; Jo Weber [100424,35] 11/1996
               ; Added variable "newpixel". G. Martin 6/27/99
  k=(0.6,0.44), l = (0,0.4)
  newpixel=cos(sin((k-pixel)/(l+pixel)))
  z=newpixel
  bailout=p3:
  x1=real(z), y1=imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: jo_we_54.frm
}
 
JoWe_XY_14 {; Jo Weber [100424,35], 10/1996
            ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y2))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_17b2 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z=conj(conj(pixel/3-conj(0.10/pixel))):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(y1))
  y1=y1-fn1(y1-fn2(x1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_17b3 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z=conj(conj(pixel/3-conj(0.10/pixel))):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(y1-fn2(y1))
  y1=y1-fn1(x1-fn2(x1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_XY_17d2 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
              ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=cabs(2*newpixel)-1/(tanh(0.10/newpixel)-sqr(sinh(0.0250/newpixel)))^6:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(y1))
  y1=y1-fn1(y1-fn2(x1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_xy_17f {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z=(2*pixel-conj(0.10/pixel)):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_xy_17g {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z=(2*conj(pixel)-conj(0.30/pixel))+0.2:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_xy_17h {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
             ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=(2*tanh(newpixel)-conj(0.10/newpixel))+0.2:
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
}
 
JoWe_xy_09 {; Jo Weber [100424,35], 10/1996
            ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=(x1*pa1-x1*pa2)+c
  y=(y1*pb1-y1*pb2)+c
  z=fn1(x+y)/2
  |z|<=bailout
  ;SOURCE: jo_we_46.frm
}
 
JoWe_xy_10 {; Jo Weber [100424,35], 10/1996
            ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn1(z+pb2)
  z=fn2(x+y)
  |z|<=bailout
  ;SOURCE: jo_we_46.frm
}
 
JoWe_xy_12 {; Jo Weber [100424,35], 10/1996
            ; bailout = p3
  z = c = pixel
  bailout=p3
  pa1=real(p1), pb1=imag(p1)
  pa2=real(p2), pb2=imag(p2):
  x1=real(z), y1=imag(z)
  x=x1*pa1+fn1(z+pa2)
  y=y1*pb1+fn2(z+pb2)
  z=fn3(x)+fn3(y)
  |z|<=bailout
  ;SOURCE: jo_we_46.frm
}
 
Carr1977 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1/(exp(1/pixel)))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr1978 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=(-0.7456,0.2), p10=10*pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1/(1/exp(1/pixel)))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr1979 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, c4=c^4, p10=10*pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1/(1/exp(1/pixel)))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = ((z^4)*c4+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr1980 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=(-0.63,-0.4), p4=pixel^4, p10=10*pixel, th1=tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1/(1/exp(1/pixel)))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = 0.79*(z4*p4+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+(1.299,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr1981 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel, th1 = tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(1/pixel))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr1984 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel, th1 = tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+tan(z1)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr1985 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+z6+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr1986 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=(-0.7456,0.2), p10=10*pixel, th1=tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+tan(z1)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr1991 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z =imag(pixel), c =pixel-((tan(pixel)+sin(pixel)-1/pixel))/10
  p10=10*pixel, iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(3.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}
 
Carr1993 {; Modified Sylvie Gallet frm.
  z=imag(pixel), c=pixel-((tan(pixel)+sin(pixel)-1/pixel))/10
  compt=0, limit=real(p1*cos(pixel/5)), bailout=4
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+(1.099,0.0)
  |z|<=bailout
  ;SOURCE: 42acarr.frm
}
 
Carr2038 {; Modified Sylvie Gallet frm.
  c=z=pixel-log(cos(0.01/pixel))/pixel-1/log(flip(imag(0.305/pixel)))
  compt=0, limit=real(p1*cos(pixel/5)), bailout=4
  p=(-0.745680900000982,0.1931):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42acarr.frm
}
 
Carr2050 {; Modified Sylvie Gallet frm. 
  z=c=sinh((-0.7456,0.2)*(pixel))*sqr(pixel)\
        -conj(0.010/pixel)-flip(0.010/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}
 
Carr2055 {; Modified Sylvie Gallet frm.
  z=sqr(sqr(conj(pixel)))-(conj(0.020/pixel))-(flip(0.020/pixel))
  c=(-0.7456,0.13)+0.009/pixel
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=(c*test+p*(1-test))
  z=z*z+c
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}
 
Carr2058 {; Modified Sylvie Gallet frm.
  z=pixel+1/sqrt(0.1/pixel)*(tan(0.1/pixel))
  c=(-0.7456,-0.13)-0.01/pixel
  compt=0, limit=real(p1/(1/cos(pixel/5))), bailout=4
  p=(-0.745680900000982,-0.131850030300002):
  test=(compt<limit)
  c=(c*test+p*(1-test))
  z=z*z+c-0.0087
  compt=(compt+1)
  |z|<=bailout
  ;SOURCE: 42bcarr.frm
}
 
Carr2106 {; Modified Sylvie Gallet frm. 
  z=c=pixel-2/(sinh(0.10/pixel)-sqr(tanh(0.010/pixel)))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn, z2 = z*z, z4 = z2*z2 
  z1 = (z4*z-1)/(4*z4+(z4==0))
  z = (z*z+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z=z*(1-(test3 && test0 && test1))
  iter = iter+1.2
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42bcarr.frm
}
 
Carr2111 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.8006,-0.159)
  z=pixel-1/log(0.050/pixel)-cos(0.10/pixel+1.25)+conj(0.0250/pixel)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=5.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Carr2112 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=(-0.8006,-0.149)
  z=pixel-cos(0.10/pixel+1.25)+conj(0.10/pixel+1.35)
  z1=1.5*z, z2=2.25*z, z3=3.375*z, z4=5.0625*z
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
  z = z*t + ct, c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
JoWe_04_PHC {; Jo Weber [100424,35], 1996       Requires passes=1
  z = c =pixel:
  t=fn1(z)
  b1 = (c^(sqr(t)))*whitesq-c*fn2(t)*(whitesq==0)
  a1=fn1(z), a2=p1/a1
  b2=(a1-a2+pixel)*(whitesq==0)+c*a1*(a2-0.34)*whitesq
  z=b1
  b3=(|z|<=4)
  if b3 then z=b2
  ;SOURCE: phc.frm
}
 
JoWe_04a (XYAXIS) {; Jo Weber [100424,35], 6/1996
                   ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=abs(real(pixel)) + flip(imag(pixel))
  newpixel=real(newpixel) + flip(abs(imag(newpixel)))
  z = newpixel:
  a1=fn1(z), a2=p1/a1 
  z=a1+a2+newpixel
  ;SOURCE: jo_we_32.frm
}
 
JoWe_04b (XYAXIS) {; Jo Weber [100424,35], 6/1996
                   ; Added variable "newpixel". G. Martin 6/27/99
  newpixel=pixel*(-1)^(pixel>0)
  z = newpixel:
  a1=fn1(z), a2=p1/a1 
  z=a1+a2+newpixel
  ;SOURCE: jo_we_32.frm
}
 
JoWe_04c (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=fn1(z), a2=p1/a1 
  z=fn2(a1)+fn3(a2)+pixel
  ;SOURCE: jo_we_32.frm
}
 
Whatever_09 (XYAXIS) {; Original formula Whatever_the_name
                      ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*fn2(z)+(p1/z*z)+pixel
  ;SOURCE: jo_we_31.frm
}
 
JoWe_02_1 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  a1=sqr(z), a2=p1/a1, a3=p2/(sqr(a1)) 
  z=(fn1(a1)+fn2(a2)*fn1(a3))*pixel
  ;SOURCE: jo_we_33.frm
}
 
JoWe_05 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=p/a1 
  z=a1+a2+pixel
  ;SOURCE: jo_we_32.frm
}
 
JoWe_06 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=p/a1 
  z=a1+a2
  ;SOURCE: jo_we_32.frm
}
 
JoWe_08 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=p/a1 
  z=(a1+a2)*pixel
  ;SOURCE: jo_we_32.frm
}
 
JoWe_08 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=p/a1 
  z=(a1+a2)*pixel
  ;SOURCE: jo_we_32.frm
}
 
JoWe_09 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1:
  a1=fn1(z), a2=p/a1 
  z=(a1+a2)/pixel
  ;SOURCE: jo_we_32.frm
}
 
JoWe_11 (XYAXIS) {; Jo Weber [100424,35], 6/1996
  z = pixel
  p=1*(|p1|<0)+p1 :
  a1=fn1(z), a2=p/a1 
  z=(a1+a2)^pixel
  |z|<=4
  ;SOURCE: jo_we_32.frm
}
 
Whatever_02m {; Original formula Whatever_the_name
              ; corrected and modified by 
              ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=2/a1
  z=a1+a2+pixel
  ;SOURCE: jo_we_32.frm
}
 
Whatever_03m {; Original formula Whatever_the_name
              ; corrected and modified by 
              ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(z)*z+a2+pixel
  |z|>=0.05
  ;SOURCE: jo_we_32.frm
}
 
bfly (XYAXIS) {
   ; Be creative and try to use these terms in novel ways.
   ; You have to be careful what you initialize here
   ; or everything goes to 0.0
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z  = z * zp1 + zp2
  zp2 = zp1
  zp1 = temp
  |zp1| <= 4 
  ;SOURCE: noel.frm
}
 
bfly3 (XAXIS) {
   ; How about a conjugation of a cosine function
  z=pixel, zp = z1 = (0,0):
  temp = z
  z = 1-cos(z) - zp
  zp = conj(temp)
  |zp| <= 4 
  ;SOURCE: noel.frm
}
 
Carr-367 {
  z=1/sinh(1/fn2(1/pixel+2)), c=1/tanh(1/fn2(1/pixel+2)):
  z=z*z+c
  |z| <=10
  ;SOURCE: 09carr.frm
}
 
cnigel (XAXIS) {
   ; Conjugates still show the chaotic banding it tends to
   ; produce in this fractal type.
  z = pixel, zp1=zp2=zp3=(0,0):
  temp = z
  z = z*z - zp3
  zp3 = zp2
  zp2 = zp1
  zp1 = conj(temp)
  |zp1| <= 4 
  ;SOURCE: noel.frm
}
 
cntr1 (XAXIS) {
   ; There are many different combinations on this theme.
  z = zp1 = zp2 = pixel:
  temp = z
  z  = z * zp2 + zp1
  zp2 = zp1
  zp1 = temp
  |zp1| <= 4 
  ;SOURCE: noel.frm
}
 
four (XYAXIS) {
   ; A square root initialization of the octo 
   ; will halve the number of arms
  z = pixel^.5,zp=(0,0):
  temp = z
  z = z^3 - zp
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}
 
frtan (XAXIS) {
   ; Lets not forget the tangent
  z = pixel, zp = (0,0):
  temp = z
  z = -tan(z) - zp
  zp = temp
  |zp| <= 4 
  ;SOURCE: noel.frm
}
 
fuzzy {; To center this on your screen use 
       ; the command corners=-2/3/2.5/-1.5 
  a=real(pixel), b=imag(pixel):
  x=1-abs(a-b), y=1-abs(b-1+a), a=x, b=y 
  sqr(abs(a*a)+abs(b*b))<=p1
  ;SOURCE: fuzzy.frm
}
 
hflip {
   ; A little non-standard math-function 
   ; produces chaotic bands like the
   ; conjugate function but the symmetry is now skew.
  z = pixel, zp=(0,0):
  temp = z
  z = z*z +  zp
  zp = flip(temp) 
  |zp| <= 4 
  ;SOURCE: noel.frm
}
 
Carr1451 {; Creates Julia.
  z=cotan(pixel*pixel+1), c=sqr(1/pixel*0.91/pixel):
  z=(z*z)+c-1.49
  c=1/z*z+1/pixel
  |z| <=4
  ;SOURCE: 33carr.frm
}
 
Carr1400 {
  z=pixel/0.999, c=sqrt(flip(pixel)):
  z=sqr(conj(z))+c-1.5
  |z|<=4
  ;SOURCE: 32carr.frm
}
 
Carr1401 {
  z=pixel/0.999, c=sqrt(1/(1/(1/(1/pixel)))):
  z=z^2.09+c-0.5
  |z|<=4
  ;SOURCE: 32carr.frm
}
 
Carr1402 {; Julia (I think??)
  z=pixel, c=sqrt(1/(1/(1/(5/pixel)))):
  z=z*z+(c-1)
  |z|<=4
  ;SOURCE: 32carr.frm
}
 
Carr1403 {; Modified T.J.E. Reed formula;Julia
  c=z=pixel:   
  z=z*z+c   
  c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/3+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}
 
Carr1404 {; Modified T.J.E. Reed formula; Julia
  c=z=pixel:   
  z=z*z+c   
  c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/6+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}
 
Carr1697 {; Mandel type.
  c=(pixel)/(flip(pixel)-conj(1/pixel))
  z=(1/pixel)/(pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1710 {; Mandelbrot.
  c=conj(pixel^1/pixel)/(pixel-(flip(1/pixel)-conj(1/pixel)))
  z=(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}
 
Carr-889 {
  z=((1/pixel)/0.71)/(0.85/pixel+1.324)
  c=((1/pixel)/2)/z-2.5^fn4(pixel-1.324)/(1/pixel):
  z=((1/z^1/pixel*z*z)/((pixel-1)-(c*c)))/1.6
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-917 {
  z=1/(pixel*pixel)
  c=flip(pixel+fn3(4/z-z/5+125)):
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr1164 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-(cotanh(z+pixel))/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
 
pixey02 {; Added variable "newpixel". G. Martin 6/29/99     
  newpixel = pixel
  z = newpixel + p1, c = newpixel:
  temp = z
  z = z*z + newpixel + c
  newpixel = temp
  z <= 4 
  ;SOURCE: pixey.frm
}
 
pixey03 {
  z = pixel
  x = real(z + p1), y = imag(z + p2):
  x = fn1(x*x - fn2(y*y))
  y = fn3(y*y - fn4(x*x))
  z = x*x + y*y 
  |z| <= 4
  ;SOURCE: pixey.frm
}
 
pixey05 {
  z = pixel + p1 
  c = pixel:
  z = fn1(z^2.71828182845905) + fn2(c)  
  |z| <= 16
  ;SOURCE: pixey.frm
}
 
PopCornJulCplx {; Jon Horner & Bradley Beacham - May 1995
   ; p1 = step size (default 0.05), p2 = parameter (default 3)
   ; p3 = bailout value (default 4)
   ; set co-ords = -3/3/-2.25/2.25, fn1=sin, fn2=tan, fn3=ident, fn4=flip
  h = (0.05 * ((p1)<=0) + (p1) * (0<p1))
  k = (3.0 * ((p2)<=0) + (p2) * (0<p2))
  test = (4.0 * ((p3)<=0) + (p3) * (0<p3))
  x = real(pixel), y = imag(pixel):
  newx = x - h*fn1((y) + fn2(k*y))
  newy = y - h*fn1((x) + fn2(k*x))
  x = newx, y = newy
  z = fn3(x) + fn4(y)
  |z| < test
  ;SOURCE: snazzy.frm
}
 
Carr-913 {
  z=1/(pixel*pixel)
  c=imag(1/pixel*0.91/pixel):
  z=((1/(fn2(z*z+pixel*pixel)))/(pixel-c*c))/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr1150 {
  z=pixel^(sinh(1.099,0)/cosh(pixel))
  c=pixel/((2.099,0)*1/z):
  z=cosxx(z)+c
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
 
Carr1151 {
  z=pixel/((1.099,0)^(pixel))
  c=(pixel/((2.099,0)*1/z)):
  z=(z*z+c)/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
 
Carr1152 {
  z=pixel/((1.099,0)^(pixel))
  c=(pixel/((2.099,0)*1/z)):
  z=cosxx((z*z+c)/(z*1/c))
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}
 
pixey00 (XAXIS_NOPARM) {     
  z = pixel + p1:
  z = z*z + pixel
  z <= 4 
  ;SOURCE: pixey.frm
}
 
pixey04 {
  z = pixel + p1 
  c = pixel:
  z = fn1(z*2.71828182845905) + fn2(c)  
  |z| <= 16
  ;SOURCE: pixey.frm
}
 
shifter03 {; After shift, switch from fn1(z) to fn2(z)
           ; Bradley Beacham  [74223,2745]
           ; P1 = shift value, P2 varies bailout value
  z = c = pixel, iter = 1, shift = p1, test = 4 + p2:
  lo = fn1(z) * (iter <= shift)
  hi = fn2(z) * (shift < iter)
  iter = iter + 1
  z = lo + hi + c
  |z| < test
  ;SOURCE: snazzy.frm
}
 
slider01 {; Bradley Beacham  [74223,2745]
          ; P1 = exponent A, P2 = exponent B
          ; P3 varies radius of bailout circle (default 2)
  z = c = pixel, limit = 2 + p3, f = 0 :
  z = ((f) * fn1(z^p1)) + ((1-f) * fn2(z^p2)) + c
  f = cabs(z) / limit
  f < 1.0
  ;SOURCE: dons.frm
}
 
speed01 {; Speed chooses between functions, escape-time
         ; Bradley Beacham  [74223,2745]
         ; P1 is maximum speed for "slow"
         ; P2 varies bailout value
  z = oldz = c = pixel, limit = 4 + p2:
  x = real(z) - real(oldz)
  y = imag(z) - imag(oldz)
  speed = x*x + y*y
  slow = fn1(z*z) * (speed < p1)
  fast = fn2(z*z) * (speed >= p1)
  oldz = z
  z = slow + fast + c
  |z| <= limit
  ;SOURCE: snazzy.frm
}
 
Carr-520 {
  z=1/pixel, c=cos(z*1/pixel):
  c=fn1(sinh(z))
  z=z*z*z+flip(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-01 { 
  z = Pixel, z = cosxx(z):
  z = z + Pixel
  z = sqr(z)
  |z| <=4          
  ;SOURCE: carr.frm
}
 
Carr-07 {; was OK-02 and was modified
         ; Edited for Fractint v. 20 by George Martin, 10/98
  z = c = 1 / pixel, k = 1 + p1:
  z = (c^z) + c
  z = cotan(z) * k
  |z| <= (5 + p2)
  ;SOURCE: carr.frm
}
 
Carr-16 {
  z = 0:
  z2 = z^z^z
  z = (cosxx(sqr(z-1)) ) + (sin(pixel))
  |z| <= 6
  ;SOURCE: carr.frm
}
 
Carr-19 {
  c = z = (sqr(1 / pixel)):
  z = (sqr(1 / cosxx(z)) ) + (sin(z^z^z))
  |z| <= 10
  ;SOURCE: carr.frm
}
 
Carr-20 {
  z = pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sqr (log(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-202 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=(1/pixel)*z*z/(z-0.5) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-21 {
  z = 1 / pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sqr (log(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-210 {
  z=c=1/pixel:
  z=z*z+c+(z*z+(c-0.124))/(z-0.75)+c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-212 {
  z=c=1/pixel:
  z=sin(z^2)+sin(z)/sin(pixel)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-22 {
  z = 1 / pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sqr (cosxx(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-877 {
  z=1/(pixel*conj(conj(2/pixel+0.794)))
  c=1/(fn2((conj(pixel-1.784))*sqr(1/pixel-0.024)/fn2(conj(1/pixel-0.824)))):
  z=conj(flip(pixel+z*z-0.025)/(pixel-c*c-0.494))
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-905 {; Modified Richard frm
  z=1/pixel, c=pixel-sqr(z):
  c=pixel +c/z
  z=c-z*pixel
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-910 {
  z=(1/pixel)/1.91, c=((1/pixel)/2)/z-2.5^tanh(pixel-1.124):
  z=c-z*pixel
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-914 {
  z=1/pixel+2.524
  c=((1*(|1.324|<=0)+1.324)*cotanh(pixel)):
  z=c-z*pixel
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-915 {
  z=1/pixel+0.91/pixel
  c=((2.124*(|3.324|<=0)+1.324)*cotanh(pixel)):
  z=c-z*pixel+1
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
708 {
  z = c = p2 / pixel:
  z = z^p1 / c^p2 + c
  z <= p2
  ;SOURCE: kg7.frm
}
 
Carr-105 {
  z=c=pixel:
  z=sqr(z) + sqr(c*c)
  z=sin(z) + sin(c)
  z=sqr(z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-110 {
  z=c=pixel:
  z=sqr(z*z) + (c*c)
  z=sin(z*z) + sin(c*c)
  z=sin(z*(1/z)) + cotanh(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-501 {; Distance Estimator works here.
  z=1/pixel, c=exp(0.6,0.3)/pixel:
  z=z*z*z*z*z+flip(c/pixel)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-559 {
  z=1/pixel, c=1/conj(fn2(1/pixel*1/pixel)):
  z=z*z*z*z+conj(sin(c-0.524))
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-561 {
  z=1/pixel, c=1/conj(fn2(1/pixel*1/pixel*1/pixel)):
  z=sqr(conj(z*z*z))+conj(sin(c-1.5))
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-740 {
  z=1/pixel, c=(1/pixel)/2/(z-2.5)^(1/pixel-1):
  z=z*z+(c-0.4)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-786 {; Very interesting image poosibilities !!
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=1/z^z*z+flip(c*c)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-873 {
  z=1/(pixel*conj(5/pixel+0.724))
  c=1/(fn4((pixel-1.524)*sqr(1/pixel)+fn2(conj(1/pixel-0.524)))):
  z=(pixel+z*z)/(pixel-c*c-0.324)
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-874 {
  z=1/(pixel*conj(conj(5/pixel+0.724)))
  c=1/(fn4((conj(pixel-1.524))*sqr(1/pixel)+fn2(conj(1/pixel-0.524)))):
  z=flip((pixel+z*z)/(pixel-c*c-0.324))
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-878 {
  z=(1/pixel)/1.91, c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
  z=(conj(pixel+z*z)/(pixel-c*c))/1.55
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-881 {
  z=((1/pixel)/0.91)/(2.7,-1.3)
  c=(1/pixel*0.91/pixel):
  z=(1/z*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-884 {
  z=((1/pixel)/0.71)/(4.7,-0.3)
  c=(1/pixel*0.51/pixel):
  z=(z^(1/z*1/z)+3*z)/(pixel-conj(c*c))
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-890 {; May not be mathmatically correct but...
  z=(1/1/pixel^pixel*pixel)
  c=1/conj(1/pixel^pixel+pixel):
  z=(1/z*z*z)/(c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-890 {; May not be mathmatically correct but...
  z=(1/1/pixel^pixel*pixel)
  c=1/conj(1/pixel^pixel+pixel):
  z=(1/z*z*z)/(c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-90 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c-5)
  z=sin(z*z) + sqr(c-2)
  z=sqr(z) + sqr(c-0.67)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-900 {
  z=cotanh(pixel+1)/imag(1/pixel-0.334)
  c=sqr(sqr(sqr(pixel*1/pixel))):
  z=(z^real(2.124)+c)/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-902 {
  z=sinh(pixel+1)/imag(1/pixel-0.334)
  c=sqr(sqr(sqr(pixel*1/pixel))):
  z=cotanh(z^exp(2.424)+c)/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-906 {
  z=1/pixel, c=conj(pixel-sqr(z)):
  z=c-z*pixel
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-908 {
  z=cotanh(exp(1/pixel))
  c=conj(pixel-sqr(z)):
  z=c+z*pixel-1
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Whatever_the_name (XAXIS) {
  z = pixel:
  z=z*z+(1/z*z)+pixel
  ;SOURCE: whatever.frm
}
 
Ent {; Scott Taylor
     ; Try params=.5/.75 and the first function as exp.
     ; Zoom in on the swirls around the middle.  There's a
     ; symmetrical area surrounded by an asymmetric area.
  z = Pixel, y = fn1(z), base = log(p1):
  z = y * log(z)/base
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
Richard10 (XYAXIS) {; Jm Collard-Richard
  z=pixel:
  z=1/sin(1/(z*z))
  |z|<=50
  ;SOURCE: fractint.frm
}
 
j+c2821 {; Sylvie Gallet frm. [101324,3444],1997
         ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
   z = real(pixel)/real(p1) + flip (imag(pixel)/imag(p1)) - p2
   pixinv = 0.1/pixel, p9 = 0.9*pixinv
   c = (0.3459989467084647,0.0835267537688434)
   b4 = pixel - flip(pixinv) - conj(0.01*pixinv)
   b5 = pixel - conj(pixinv)
   odev = iter = wait = 0, continue = 1 :
   IF (iter < 600)
      IF (wait == 0)
         IF (|z| < 16)
            z = z*z + c, odev = odev == 0
         ELSE
            wait = 1
         ENDIF
      ENDIF
   ELSEIF (iter == 600)
      IF (wait == 0)
         odev = odev == 0
      ENDIF
      IF (odev)
         c = b4 - p9, z = z0 = b5, mz = |z|
      ELSE
         c = -b4 - p9, z = z0 = -b5, mz = |z|
      ENDIF
      continue = mz < 16
   ELSE
      IF (iter == 800)
         IF (odev)
            c = (z0^1.2)*1.5 - p9
         ELSE
            c = (z0^1.2)*(-1.5) - p9
         ENDIF
      ELSEIF (iter == 900)
         c = conj(z0)*2.25 - p9
      ELSEIF (iter == 1000)
         c = flip(z0)*3.3375 - p9
      ELSEIF (iter == 1150)
         c = flip(z0)*5.0625 - p9
      ENDIF
      z = mz*0.2 + z*z + c, mz = |z|, continue = mz < 16
   ENDIF
   iter = iter + 1
   continue
  ;SOURCE: ifs196.frm
}
 
Absolem {
  z = 0, c = pixel:
  z = z + p1
  z = (z * z) * (1/c) 
  z = fn1(z) * fn2(1/z)
  z = z + c 
  |z| <= 4 
  ;SOURCE: korfu.frm
}
 
Absolem_2 {
  z = 0, c = pixel:
  z = z + p1
  z = (z * z) * (1/c) 
  z = fn1(z) * fn2(1/c)
  z = z + c 
  |z| <= 4 
  ;SOURCE: korfu.frm
}
 
Absolem_SRand {
  z = 0, c = pixel:
  z = z + p1
  z = (srand(z) * z) * (1/z) 
  z = fn1(z) * fn2(1/c)
  z = z + c  
  |z| <= 4 
  ;SOURCE: korfu.frm
}
 
Curfew {
  z = 0, c = pixel:
  z = z + c + p1
  z = z * fn1((1/c)/(1/z)) 
  |z| < 4
  ;SOURCE: korfu.frm
}
 
Korfu (YAXIS) {
  z = c = pixel:
  z = z + p1
  c = c/fn1(z) 
  z = z * fn2(c)
  |z| < 4
  ;SOURCE: korfu.frm
}
 
Pilsner {; Revised for Fractint v20 by G. Martin  
  z = 0, c = pixel, ppix = pixel^(-1) + p1:
  z = (z*1/ppix) * fn1(ppix)
  z = fn2(z) + c
  |z| < 4
  ;SOURCE: korfu.frm
}
 
Kapetanov11 {
  c=pixel, z=pixel-cos(c):
  c=sqr(pixel)+z, z=c*sin(z)
  |z|<8
  ;SOURCE: kapet011.frm
}
 
Carr2168 {; Modified Sylvie Gallet frm. [101324,3444],1996
  c=pixel
  z=flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)
  d1 = conj(0.0000455/pixel), d4 = 4*d1
  z1 = 1.5*z+d1, z2 = 2.25*z+d1, z3 = 3.375*z+d1, z4 = 11.0625*z+d1
  l1=(real(p1)), l2=(imag(p1)), l3=(real(p2)), l4=(imag(p2))
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t = 1-(t1||t2||t3||t4), ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
  z = z*sin(t+ct), c = c*t + ct
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42ccarr.frm
}
 
Lister_M {; Might need periodicity=0 
  z = c = pixel:
  r = tan(e/z)/c  
  z = r * fn1(z) - p1 
  |z| < 4
  ;SOURCE: lister.frm
}
 
Lister_2 {; Might need periodicity=0 
  z = c = pixel + p1:
  r = tan(e/z)/pi
  z = fn1(z)/fn2(c/r) 
  |z| < 4
  ;SOURCE: lister.frm
}
 
Listerial {; Might need periodicity=0
  z = pixel, tp = tan(1/pixel):
  z = fn1(z) + p1
  r = tp/(imag(z)/real(z)) 
  z = tan(1/z)/sqrt(r)
  |z| < 4
  ;SOURCE: lister.frm
}
 
manjul_lace {; Requires passes=1   George Martin, 1996
             ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
             ; If Real(p1) is:
             ;    0 : formula draws PHC manjul_lace
             ;    1 : formula draws mandel component only
             ;    2 : formula draws julia component  only
  IF (p1==1 || p1 == whitesq)
    z = c = 1.5*pixel
  ELSE
    z = pixel, c = (-.75, .1234567)
  ENDIF :
  z = z*z + c
  |z| <= 4
  ;SOURCE: ifs196.frm
}
 
Zexpe (XAXIS) {
  s = exp(1.,0.), z = Pixel:
  z = z ^ s + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
Exipi (XAXIS) {
  s = log(-1.,0.) / (0.,1.), z = Pixel:
  z = z ^ s + pixel
  |z| <= 100
  ;SOURCE: fractint.frm
}
 
FractalFenderC (XAXIS_NOPARM) {; Spectacular!
    ; Modified for if..else logic 3/18/97 by Sylvie Gallet
   z = p1, x = |z| :
   IF (1 < x)
      z = cosh(z) + pixel
   ENDIF
   z = sqr(z) + pixel, x = |z|
   x <= 4
  ;SOURCE: fract196.frm
}
 
SpecC (XAXIS_NOPARM) {
     ; modified for if..else by George Martin 3/18/97
   z = p1
   x = |z| :
   IF (x>1)
      z = fn1(z)+pixel
   ENDIF
   z = fn2(z)+pixel
   x = |z|
   x <= 4
  ;SOURCE: skinner.frm
}
 
Fzpcophs {
  z = pixel, f = pixel ^ (1. / sinh(pixel) ):
  z = cosxx (z)  + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}
 
Fzppchco {
  z = pixel, f = cosxx (pixel):
  z = cosh (z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}
 
Fzppcosq {
  z = pixel, f = sqr (pixel):
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: fractint.frm
}
 
Fzppcosr {
  z = pixel, f = (pixel) ^ 0.5:
  z = cosxx (z)  + f
  |z| <= 50
  ;SOURCE: fractint.frm
}
 
Fzppshex {
  z = pixel, f = exp (pixel):
  z = sinh (z) + f 
  |z| <= 50
  ;SOURCE: skinner.frm
}
 
OldManowar (XAXIS) {
  z0 = 0
  z1 = 0
  test = p1 + 3
  c = pixel :
  z = z1*z1 + z0 + c
  z0 = z1
  z1 = z
  |z| < test
  ;SOURCE: fractint.frm
}
 
Zexpe2 (XAXIS) {
  s = exp(1.,0.), z = Pixel:
  z = z ^ s + z ^ (s * pixel)
  |z| <= 100
  ;SOURCE: skinner.frm
}
 
Gallet-6-01 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + p2*fn2(x - p3*fn3(y)))
   y1 = y - p1*fn1(x + p2*fn2(y - p3*fn3(x)))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}
 
Gallet-6-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   hx = p1*fn1(x + p2*fn2(y)), hy = p1*fn1(y + p2*fn2(x))
   x = x + hy, y = y + hx
   z = x + flip(y), mhx = |hx|, mhy = |hy|
    (mhx+mhy) >= p3 && mhx <= 1e35 && mhy <= 1e35
  ;SOURCE: gallet-6.frm
}
 
Gallet-6-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
  x2 = x*x, y2 = y*y
   x1 = x2 - p1*fn1(y2 + fn2(p2*x) + fn3(p3*y))
   y1 = y2 - p1*fn1(x2 + fn2(p2*y) + fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}
 
Gallet-6-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
  x2 = x*x, y2 = y*y
   x1 = x2 - p1*fn1(y2 + fn2(p2*x) + fn3(p3*y))
   y1 = y2 - p1*fn1(x2 + fn2(p2*y) + fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}
 
Gallet-6-05 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y * fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x * fn2(p2*y) + fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}
 
Gallet-6-08 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) / fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) / fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 1024
  ;SOURCE: gallet-6.frm
}
 
FGZ {; Michael G. Wareman
     ; try p1=3
     ; generalized by Jon Horner
     ; replaces FGZ_-1,0.5,1,2,4,5,-Imag-3,-Both-3,-Both_-1
  z = c = pixel:
  z = z * z + c
     ;  z = (3 * z * z) / (z + 3) + c  ; original
  z = (p1 * z * z) / (z + p1) + c      ; alternative by JH
  |z| <= 4
  ;SOURCE: fgz.frm
}
 
FGZ-2 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = (2 * z * z) / (z + 2) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}
 
FGZ-4 {
   ; (c) 1993 by:
   ;
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ;
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
   ;
  z = c = pixel:
  z = z * z + c
  z = (4 * z * z) / (z + 4) + c
  |z| <= 4
  ;SOURCE: f(g(z))).frm
}
 
Mind_2 {
   ; These formulas were developed after having read
   ; COMPUTERS AND THE IMAGINATION [Chapter 27] Turning
   ; a Universe Inside-Out.  This is just a new venture
   ; and I am still exploring this rich area.
   ; This Fractint .FRM file (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel:
  z = c * sin(1 / z)
  |z| <= 100
  ;SOURCE: physics.frm
}
 
Mind_5 {
   ; This Fractint .FRM file (c) 1993 by:
   ; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
   ; Michael G. Wareman
   ; P.O. Box 1856
   ; Olds, Alberta, Canada
   ; T0M 1P0
  z = c = pixel:
  z = c * sin(1 / z)
  z = z * z
  |z| <= 100
  ;SOURCE: physics.frm
}
 
Jm_04 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))
  |z|<=t
  ;SOURCE: fractint.frm
}
 
3RDIM01 {; Mandelbrot
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=z*z+c
  |z|<=64
  ;SOURCE: fractint.frm
}
 
Moo_4 {
  z = pixel:
  z = z + p1
  r = tan(1/z) + pixel
  z = fn1(z)/sqrt(r) 
  |z| < 4
  ;SOURCE: mad_cow.frm
}
 
quartet {; From Noel Giffin noel@triumf.ca
     ; The quatro-HT variation. Use real part of p1  0.0 < p1 < 1.0
     ; Adding the inversion causes what looks like an 
     ; infinite extension along
     ; the real axis. Using the Imag component will 
     ; add some nice asymmetry.
  z=pixel, zp = (0,0), huge = 1.0e30:
  temp = z
  z = sin(z) - zp
  zp = p1/temp
  (|zp| <= huge && |z| <= huge) 
  ;SOURCE: noel1.frm
}
 
quartet1 {; From Noel Giffin noel@triumf.ca
   ; Use an input parameter (real part of p2) to control the bailout.
   ; increasing the bailout will reduce the disk size and a wider and
   ; more interesting range of workable P1 input parameters.
  z=pixel, zp = (0,0), bail=real(p2), huge = 1.0e32:
  temp = z
  z = sin(z) - zp
  zp = p1/temp
  (|zp| <= bail && |z| <= huge) 
  ;SOURCE: noel1.frm
}
 
zzz (XAXIS) {
   ; Same as XXX but introduce a new dynamic by inverting a previous term
   ; A small but curious active region. Try 256 colour decomp.
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z = z^zp1 - zp2
  zp2 = zp1
  zp1 = 1/temp 
  |zp1| <= 4
  ;SOURCE: noel.frm
}
 
Guanaco { 
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  z = pixel, Root = 1:
  z3 =z*z*z
  z4 = Z3 * z
  z5 = z4 * z
  z6 = z5 * z
  z7 = z6 * z
  r = (3 * z4 + Root) / ( 4*z3)
  q =  z - p1*((z7-z)/((7.0*z6-1)-(42.0*z5)*(z7-z)/(14.0*z6-2)))
  z = (r * whitesq ) + (q * (whitesq == 0)) 
  (.004 <= |z4-Root| && whitesq) || (0.0001 <= |z7-z| && whitesq == 0)
  ;SOURCE: pablo.frm
}
 
Pablo {
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  z = c = pixel:
  r = fn1(tan(1/z)+ c) + p1 
  q = fn2(flip(atan(z)) + c) + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1)) 
  |z| < 4
  ;SOURCE: pablo.frm
}
 
Q_Java {
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  z = 0, c = pixel:
  z=z*z+c
  c=c+(p1/z)
  r=fn1(z)+ p2 + c
  q=fn2(z)+ p3 + c
  z=(r*(whitesq == 1)) + (q*(whitesq == 0))
  |z| <= 4
  ;SOURCE: pablo.frm
}
 
Sublime {  
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  z = (1,1), c = pixel: 
  z2 = z*z, z3 = z2*z
  r = z - p1 *(z3-pixel)/(3.0*z2)
  q = fn1(z) * fn2(z) + c + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1)) 
  (|z| < 4 && whitesq == 0) || (0.0001 < |z3 - pixel| && whitesq)
  ;SOURCE: pablo.frm
}
 
Sublime_2 {
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  z = c = pixel, Root = 1: 
  z3 = z*z*z, z4 = z3*z
  r = (3.0*z4 + Root)/(4 * z3)+ p1
  q = (fn1(z) * fn2(z))+ c + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1)) 
  (|z| < 4 && whitesq == 0) || (0.004 < |z4 - Root| && whitesq)
  ;SOURCE: pablo.frm
}
 
Sylac { 
   ; Any comments or question?
   ; E-Mail: Damion_P@Compuserve.com  -or- MDROCC@earthlink.net
  c1 = flip(1/pixel), c2 = conj(1/pixel), z = c = pixel:
  r = ((fn1(z)* c1) * z) + p1
  q = ((fn2(z)* c2) * z + c) + p2
  z = (q * (whitesq == 0)) + (r * (whitesq == 1))
  |z| <= 4 
  ;SOURCE: pablo.frm
}
 
FnDog (XYAXIS) {; Scott Taylor
  z = Pixel, b = p1+2:
  z = fn1( z ) * pixel
  |z| <= b
  ;SOURCE: fractint.frm
}
 
Fzppfnse {; Lee Skinner
  z = pixel, f = 1./sin(pixel):
  z = fn1(z) + f
  |z| <= 50
  ;SOURCE: fractint.frm
}
 
Jm_11a {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(fn4(z)*pixel)))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
3daMand01 {; Mandelbrot/Zexpe via Lee Skinner
           ; based on 4dFRACT.FRM by Gordon Lamb (CIS: 100272,3541)
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z^2.71828182845905 + c
  |z|<=100
  ;SOURCE: fractint.frm
}
 
J_Laguerre2 {
  c = pixel, z = P1:
  z = (z*(z - 4) +2 ) / 2 + c
  |z| < 100
  ;SOURCE: fractint.frm
}
 
J_Laguerre3 {
  c = pixel, z = P1:
  z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c
  |z| < 100
  ;SOURCE: fractint.frm
}
 
J_TchebychevS4 {
  c = pixel, z = P1:
  z = c*(z*z*(z*z-3)+1)
  |z|<100
  ;SOURCE: fractint.frm
}
 
Jm_03a {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1((fn2(z)*pixel)*fn3(fn4(z)*pixel))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_05 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2((z^pixel)))
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_10 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(fn4(z)*pixel)))
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_13 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(z)*pixel))*pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_22 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  sq=fn1(z), z=(sq*fn2(sq)+sq)+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_23 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z=fn1(fn2(fn3(z)+pixel*pixel))
  |z|<=t
  ;SOURCE: fractint.frm
}
 
Jm_24 {; generalized Jm Collard-Richard type
  z=pixel, t=p1+4:
  z2=fn1(z), z=(fn2(z2*fn3(z2)+z2))+pixel
  |z|<=t
  ;SOURCE: fractint.frm
}
 
M_TchebychevC2 {
  c = P1, z = Pixel:
  z = c*(z*z-2)
  |z|<100
  ;SOURCE: tchebych.frm
}
 
M_TchebychevC7 {     
  c = P1, z = Pixel:
  z = c*z*(z*z*(z*z*(z*z-7)+14)-7)
  |z|<100
  ;SOURCE: tchebych.frm
}
 
M_TchebychevT4 {
  c = P1, z = Pixel:
  z = c*(z*z*(8*z*z+8)+1)
  |z|<100
  ;SOURCE: tchebych.frm
}
 
M_TchebychevT6 {
  c = P1, z = Pixel:
  z = c*(z*z*(z*z*(32*z*z-48)+18)-1)
  |z|<100
  ;SOURCE: tchebych.frm
}
 
M_TchebychevT7 {     
  c = P1, z = Pixel:
  z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7)
  |z|<100
  ;SOURCE: tchebych.frm
}
 
M_TchebychevU2 {
  c = P1, z = Pixel:
  z = c*(4*z*z-1)
  |z|<100
  ;SOURCE: tchebych.frm
}
 
M_TchebychevU3 {
  c = P1, z = Pixel:
  z = c*z*(8*z*z-4)
  |z|<100
  ;SOURCE: fractint.frm
}
 
M_TchebychevU4 {
  c = P1, z = Pixel:
  z = c*(z*z*(16*z*z-12)+1)
  |z|<100
  ;SOURCE: tchebych.frm
}
 
M_TchebychevU5 {    
  c = P1, z = Pixel:
  z = c*z*(z*z*(32*z*z-32)+6)
  |z|<100
  ;SOURCE: tchebych.frm
}
 
