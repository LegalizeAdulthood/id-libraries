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
 
