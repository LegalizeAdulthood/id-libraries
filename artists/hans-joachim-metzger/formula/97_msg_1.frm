Gallet-8-13 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; a = p1, b = p2
   z = x = y  = pixel, a = p1, b = p2 :
   z = z*z - a*z + b, x = z*z - a*y + b, y = z, z = x
   b = b + 0.00001
   |z| <= 16
  ;SOURCE: gallet_8.frm
}
Gallet-8-12 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
             ; p2: real part = radius
             ;     imag part = refraction index
   h = cabs(pixel), pinv = 1/p1
   bailout = 2*p1, r = real(p2), ir = imag(p2)
   IF (h >= r)
      z = pixel
   ELSE
      beta = asin(h/r), alpha = asin(h/(r*ir))
      z = (h - sqrt(r*r - h*h) * tan(beta - alpha)) * pixel / h
   ENDIF
   center = round(p1*z) * pinv
   IF (cabs(z-center) < 0.45*pinv)
      z = cabs(center)
   ELSE
      z = cabs(center) + p1
   ENDIF
   :
   z = z + pinv
   z <= bailout
  ;SOURCE: gallet_8.frm
}
Gallet-8-03 {; Sylvie Gallet, sylvie_gallet@compuserve.com, Mar 1997
             ; Requires periodicity = 0
   z = c = zn = pixel :
   zn = zn*zn + c
   IF (|zn| < |z|)
      z = 0.6*zn
   ENDIF
   |zn| <= 4
  ;SOURCE: gallet_8.frm
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
Gallet-7-05 {; Sylvie Gallet [101324,3444], 1997
  x = real(pixel), y = imag(pixel):
   dx = p1 * fn1(fn2(y)), dy = p1 * fn3(fn4(x))
   x = x + dx, y = y + dy
   z = x + flip(y)
    (|dx| + |dy|) >= p2
  ;SOURCE: gallet-7.frm
}
Gallet-6-04 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) * fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) * fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}
Gallet-5-07 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = z*(0,1), y = z*(0,-1) :
   hx = p1*fn1(x), hy = p1*fn2(y)
   x = x + hy, y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  ;SOURCE: gallet-5.frm
}
Gallet-5-08 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-5.frm
}
JoWe-SG-8-12c   {; Sylvie Gallet [101324,3444], Mar 1997
                 ; modified by JoWeber 3/1997
                 ; Requires periodicity = 0
  h = sin(pixel), pinv = 1/p1
  bailout = 2*p1, r = real(p2) , ir = imag(p2)
  beta = asin(h/r), alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv
  test = cabs(z-center) < 0.25*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z <= bailout
}
JoWe-SG-8-12b {; Sylvie Gallet [101324,3444], Mar 1997
               ; modified by JoWeber 3/1997
               ; Requires periodicity = 0
  h = tan(pixel), pinv = 1/p1
  bailout = 2*p1, r = real(p2), ir = imag(p2)
  beta = asin(h/r), alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv
  test = cabs(z-center) < 0.7*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z <= bailout
  ;SOURCE: 97msg.frm
}
JoWe-SG-8-12a {; Sylvie Gallet [101324,3444], Mar 1997
               ; modified by JoWeber 3/1997
               ; Requires periodicity = 0
  h = tan(pixel), pinv = 1/p1
  bailout = 2*p1, r = real(p2), ir = imag(p2)
  beta = asin(h/r), alpha = asin(h/(r*ir))
  z = pixel * (((h - sqrt(r*r - h*h) * tan(beta - alpha)) / h) * (h < r) \
      + (h >= r))
  center = round(p1*z) * pinv
  test = cabs(z-center) < 0.45*pinv
  z = cabs(center) + p1 * (test == 0)
  :
  z = z + pinv
  z <= bailout
  ;SOURCE: 97msg.frm
}
Lesfrm04 (xaxis) { 
c=z=pixel:
z=z+(fn1(c^2)/fn2(z^2))/c^4,|z| <=6
}
KC-1m {; via Jo Weber, July 1996
       ; Eliminated superfluous "e=p3". G. Martin 05/04/99
  c=p1
  d=p2
  z=pixel:
  z=fn1(z)/c - (d/fn2(z))
  |z|>p3
  ;SOURCE: 97msg.frm
}
KC-2 {; Ken Conrad, 9/96
  a=p1
  b=p2
  c=p3
  z=pixel:
  z=(fn1(z)-a)/(fn2(z)-b)
  |z|<c
  ;SOURCE: 97msg.frm
}
adr4x {; Added variable "newpixel". G. Martin, 6/27/99
  z=pixel:
  newpixel=(whitesqr!=0)*fn1((3.14,0))
  z=(fn3(z+fn4(newpixel)))
  |z|>=4
  ;SOURCE: ad3.frm
}
aaa1a {
  z=pixel, x=fn1(z+1)*whitesq, c=fn2(z*(1/pixel)):
  z=fn3(z*fn4(c-x))+c
  |z|<=8
  ;SOURCE: ad1_miss.frm
}
Carr3128 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=conj(newpixel)*abs(newpixel)*tan(newpixel)-conj(0.1/newpixel)
  b4=1/sinh(1/(b5*b5))
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*cabs(|z/2|), c2=2.25*conj(z/2)
  c3=3.375*flip(z/2)^6, c4=5.0625*z^2
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(c/8)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 97msg.frm
}
Lesfrm35 { ; Modified Sylvie Gallet formula
           ; Modified Gallet-5-08
           ; Les St Clair 1997
  z = pixel*pi , x = real(z), y = imag(z):
   x1 = x - p1*fn1(y + 0.5*fn2(y+fn1(x)) + fn3(p2*x) + fn3*fn1(p3*y)) 
   y1 = y - p1*fn1(x + 0.5*fn2(x+fn1(y)) + fn3(p2*y) + fn3*fn1(p3*x))
   x = x1+p1^pi , y = y1+p2^pi
   z = (x + flip(y))
    |z| <= 32
  }
Lesfrm34 { ; Modified Sylvie Gallet formula
           ; Modified Gallet-5-08
           ; Les St Clair 1997
  z = pixel*pi , x = real(z), y = imag(z):
   x1 = x - p1*fn1(y + 0.5*fn2(y+fn1(x)) + fn3(p2*x) + fn3*fn1(p3*y)) 
   y1 = y - p1*fn1(x + 0.5*fn2(x+fn1(y)) + fn3(p2*y) + fn3*fn1(p3*x))
   x = x1^pi , y = y1^pi
   z = (x + flip(y))^pi
    |z| <= 32
  }
Lesfrm30 { ; Modified Sylvie Gallet formula
           ; Modified Gallet-5-08
           ; Les St Clair 1997
  z = pixel^0.5 , x = real(z) , y = imag(z) :
   x1 = x + p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y + p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1*pi  , y = (y1*pi)/(x*x*x)
   z = x + flip(y) 
    |z| <= 32
  }
ai5 {
  z=pixel, y=1/pixel, c=(z)/fn1(z+1):
  z=(exp(z)/fn3(z*z))*fn2(y)+c
  |z|<4
  ;SOURCE: ad1_miss.frm
}
JDFancyFract {; requires Fractint 19.5
  row=imag(scrnpix)
  col=real(scrnpix)
  rows=imag(scrnmax)
  cols=real(scrnmax)
  y=row/(rows-1)
  x=col/(cols-1)
  in=0
  in=in+(x>.070&&x<.132&&y<.729&&y>.687)
  in=in+(x>.054&&x<.070&&y<.718&&y>.666)
  in=in+(x>.132&&x<.148&&y<.718&&y>.687)
  in=in+(x>.046&&x<.054&&y<.708&&y>.645)
  in=in+(x>.148&&x<.164&&y<.708&&y>.687)
  in=in+(x>.031&&x<.046&&y<.697&&y>.635)
  in=in+(x>.164&&x<.179&&y<.697&&y>.677)
  in=in+(x>.179&&x<.187&&y<.687&&y>.656)
  in=in+(x>.187&&x<.195&&y<.677&&y>.645)
  in=in+(x>.195&&x<.203&&y<.666&&y>.635)
  in=in+(x>.203&&x<.210&&y<.656&&y>.614)
  in=in+(x>.210&&x<.218&&y<.635&&y>.572)
  in=in+(x>.218&&x<.234&&y<.625&&y>.458)
  in=in+(x>.328&&x<.351&&y<.604&&y>.447)
  in=in+(x>.421&&x<.445&&y<.604&&y>.562)
  in=in+(x>.476&&x<.492&&y<.604&&y>.531)
  in=in+(x>.546&&x<.570&&y<.604&&y>.572)
  in=in+(x>.648&&x<.664&&y<.604&&y>.395)
  in=in+(x>.710&&x<.734&&y<.604&&y>.489)
  in=in+(x>.765&&x<.781&&y<.604&&y>.593)
  in=in+(x>.835&&x<.859&&y<.604&&y>.447)
  in=in+(x>.906&&x<.929&&y<.604&&y>.468)
  in=in+(x>.414&&x<.421&&y<.593&&y>.531)
  in=in+(x>.445&&x<.453&&y<.593&&y>.572)
  in=in+(x>.492&&x<.5&&y<.593&&y>.427)
  in=in+(x>.539&&x<.546&&y<.593&&y>.479)
  in=in+(x>.570&&x<.585&&y<.593&&y>.572)
  in=in+(x>.640&&x<.648&&y<.593&&y>.562)
  in=in+(x>.664&&x<.671&&y<.593&&y>.375)
  in=in+(x>.734&&x<.742&&y<.593&&y>.572)
  in=in+(x>.773&&x<.796&&y<.593&&y>.520)
  in=in+(x>.453&&x<.460&&y<.583&&y>.572)
  in=in+(x>.531&&x<.539&&y<.583&&y>.5)
  in=in+(x>.585&&x<.601&&y<.583&&y>.572)
  in=in+(x>.671&&x<.679&&y<.583&&y>.572)
  in=in+(x>.742&&x<.75&&y<.583&&y>.562)
  in=in+(x>.234&&x<.242&&y<.572&&y>.354)
  in=in+(x>.460&&x<.468&&y<.572&&y>.562)
  in=in+(x>.546&&x<.562&&y<.572&&y>.562)
  in=in+(x>.593&&x<.609&&y<.572&&y>.562)
  in=in+(x>.421&&x<.437&&y<.562&&y>.5)
  in=in+(x>.468&&x<.476&&y<.562&&y>.541)
  in=in+(x>.546&&x<.554&&y<.562&&y>.458)
  in=in+(x>.5&&x<.515&&y<.552&&y>.427)
  in=in+(x>.351&&x<.359&&y<.531&&y>.427)
  in=in+(x>.437&&x<.445&&y<.531&&y>.458)
  in=in+(x>.484&&x<.492&&y<.531&&y>.479)
  in=in+(x>.734&&x<.742&&y<.531&&y>.427)
  in=in+(x>.796&&x<.804&&y<.531&&y>.427)
  in=in+(x>.781&&x<.796&&y<.520&&y>.437)
  in=in+(x>.859&&x<.867&&y<.520&&y>.427)
  in=in+(x>.242&&x<.25&&y<.510&&y>.302)
  in=in+(x>.382&&x<.390&&y<.510&&y>.479)
  in=in+(x>.429&&x<.437&&y<.5&&y>.468)
  in=in+(x>.554&&x<.562&&y<.5&&y>.447)
  in=in+(x>.156&&x<.218&&y<.489&&y>.458)
  in=in+(x>.25&&x<.289&&y<.489&&y>.458)
  in=in+(x>.359&&x<.367&&y<.489&&y>.468)
  in=in+(x>.390&&x<.398&&y<.489&&y>.437)
  in=in+(x>.671&&x<.679&&y<.489&&y>.364)
  in=in+(x>.726&&x<.734&&y<.489&&y>.437)
  in=in+(x>.804&&x<.812&&y<.489&&y>.479)
  in=in+(x>.929&&x<.937&&y<.489&&y>.364)
  in=in+(x>.367&&x<.375&&y<.479&&y>.458)
  in=in+(x>.398&&x<.406&&y<.479&&y>.427)
  in=in+(x>.445&&x<.453&&y<.479&&y>.447)
  in=in+(x>.742&&x<.75&&y<.479&&y>.416)
  in=in+(x>.812&&x<.828&&y<.479&&y>.468)
  in=in+(x>.320&&x<.328&&y<.468&&y>.458)
  in=in+(x>.375&&x<.390&&y<.468&&y>.447)
  in=in+(x>.562&&x<.570&&y<.468&&y>.437)
  in=in+(x>.601&&x<.609&&y<.468&&y>.427)
  in=in+(x>.703&&x<.726&&y<.468&&y>.458)
  in=in+(x>.765&&x<.773&&y<.468&&y>.458)
  in=in+(x>.820&&x<.835&&y<.468&&y>.458)
  in=in+(x>.914&&x<.929&&y<.468&&y>.395)
  in=in+(x>.226&&x<.234&&y<.458&&y>.375)
  in=in+(x>.406&&x<.414&&y<.458&&y>.427)
  in=in+(x>.453&&x<.460&&y<.458&&y>.437)
  in=in+(x>.710&&x<.726&&y<.458&&y>.447)
  in=in+(x>.773&&x<.781&&y<.458&&y>.447)
  in=in+(x>.804&&x<.812&&y<.458&&y>.427)
  in=in+(x>.335&&x<.351&&y<.447&&y>.437)
  in=in+(x>.359&&x<.367&&y<.447&&y>.427)
  in=in+(x>.460&&x<.492&&y<.447&&y>.427)
  in=in+(x>.570&&x<.601&&y<.447&&y>.427)
  in=in+(x>.843&&x<.859&&y<.447&&y>.437)
  in=in+(x>.093&&x<.109&&y<.437&&y>.333)
  in=in+(x>.632&&x<.648&&y<.437&&y>.427)
  in=in+(x>.679&&x<.703&&y<.437&&y>.427)
  in=in+(x>.851&&x<.859&&y<.437&&y>.427)
  in=in+(x>.890&&x<.914&&y<.437&&y>.427)
  in=in+(x>.937&&x<.968&&y<.437&&y>.427)
  in=in+(x>.25&&x<.257&&y<.416&&y>.302)
  in=in+(x>.679&&x<.687&&y<.416&&y>.354)
  in=in+(x>.937&&x<.945&&y<.416&&y>.354)
  in=in+(x>.921&&x<.929&&y<.395&&y>.375)
  in=in+(x>.734&&x<.757&&y<.375&&y>.333)
  in=in+(x>.109&&x<.117&&y<.364&&y>.312)
  in=in+(x>.117&&x<.140&&y<.343&&y>.302)
  in=in+(x>.257&&x<.265&&y<.343&&y>.302)
  in=in+(x>.101&&x<.109&&y<.333&&y>.312)
  in=in+(x>.140&&x<.242&&y<.333&&y>.302)
  in=in+(x>.265&&x<.304&&y<.333&&y>.302)
  out=in==0
  test=in+out*4
  c=newpixel
  z=in*(x+y/8)*689:
  z=(z-1)*in+(z*z+c)*out
  out*|z|+in<test*out+z*in
  ;SOURCE: jdmask1.frm
}
Carr3095 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; Modified for if..else logic 3/17/97 by Sylvie Gallet
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel = -abs(real(pixel)) + flip(imag(pixel))
  IF (whitesq)
    c = (-0.7456,0.2)
    z = zorig = flip(cabs(newpixel)) * cabs(newpixel*newpixel) - conj(0.13/newpixel)\
	+ tanh(0.1/newpixel) - sinh(0.1/newpixel) - flip(0.1/newpixel)
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ELSE
    c = (0.7456,-0.2)
    z = zorig = -flip(cabs(newpixel)) * cabs(newpixel*newpixel) + conj(0.13/newpixel)\
	- tanh(0.1/newpixel) + sinh(0.1/newpixel) + flip(0.1/newpixel)
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ENDIF
  bailout = 16, iter = 0
  :
  IF (iter == p1)
    z = 0, c = 1.5 * zorig
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ELSEIF (iter == imag(p1))
    z = 0, c = 2.25 * zorig
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ELSEIF (iter == p2)
    z = 0, c = 3.375 * zorig
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ELSEIF (iter == imag(p2))
    z = 0, c = 5.0625 * zorig
    c = (-0.743736,-0.13167) - c/600 + (|c/12|)^2
  ENDIF
  z = z*z*(0.9975 - 0.0005*z) + c
  iter = iter + 1
  |z| <= bailout
  ;SOURCE: 42zcarr.frm
}
JoWe_XY_51m_1 { ; Jo Weber [100424,35] 11/1996
k=(6,4), l = (0,4)
pixel=cos(sin((k-pixel)/(l+pixel)))
z=pixel
bailout=p3 :
x1=real(z), y1=imag(z)
x1=x1-fn1(x1-fn2(x1))
y1=y1-fn1(y1-fn2(y1))
z=p1*x1+p2*y1
z=fn3(z)
|z|<=bailout
}
jowe_67_2 { ; by Jo Weber [100424,35], 12/1996
z=c=pixel
bailout=p3 :
z1=sin(z)-tan(z)
z2=cos(z)-cotan(z)
z1=z1+c
z2=z2+(z1>=0)
z=z1*z2
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}
jowe_64 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=sin(z)*(1+2*tan(z))+tan(z)*cos(z)
q=real(z), r=imag(z)
z1=z*q, z2=z/q
z3=z*r, z4=z/r
z1=z1-z4, z2=z2+z3
z=fn1(z1-z2)-fn2(z2-z1)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}
jowe_63 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=sin(z)*(1+2*tan(z))+tan(z)*cos(z)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}
jowe_66 { ; by Jo Weber [100424,35], 11/1996
z=pixel
bailout=p3 :
z=(tan(z)^2+cotan(z)^2)/(sin(z)^2-cos(z)^2)
z=fn1(z)
|z|<=bailout
  ;SOURCE: jo_we_54.frm
}
M_Laguerre2 {; Rob den Braasem [rdb@KTIBV.UUCP]
   c = P1, z = Pixel:
   z = (z*(z - 4) +2 ) / 2 + c,
   |z| < 100
   }
Jm_20 {; generalized Jm Collard-Richard type
  z=pixel,t=p1+4:
   z=fn1(z^pixel)
    |z|<=t
  }
Carr3074 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=cabs(newpixel/2)-newpixel*((0.3,0.6)+newpixel)-conj(0.1/newpixel)
  b4=b5^2-conj(0.1/b5-flip(0.01/b5))-conj(0.1/newpixel-flip(0.01/newpixel))
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+|(flip(c/10))|
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42zcarr.frm
}
Carr3054 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
		  ; passes=1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G. Martin 6/13/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b5=newpixel-flip(0.01/newpixel)-conj(0.1/newpixel)+0.285
  b4=conj(flip(sqr(sqr(newpixel-conj(0.15/newpixel)))))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*conj(b5)-(whitesq==0)*(b5)^2
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+(conj(c/8))
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42ycarr.frm
}
BirdOfPrey (XAXIS_NOPARM) { ; Optimized by Sylvie Gallet
  z = p1 :
   z = cosxx(sqr(z) + pixel) + pixel
    |z| <= 4
  }
Lesfrm13 { ; Les St Clair, 1996
 z = pixel 
 x = fn1(z) , y = fn2(z):
 x = x*p1*pi
 y = y*p2*pi 
 z = x/y
 |z| <= 4
}
Gallet-3-02 {; Sylvie Gallet [101324,3444], 1996
  z = pixel :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(y+p2*fn2(y))
  y1 = y - p1*fn1(x+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: gallet-3.frm
}
Carr2821{;Modified Sylvie Gallet frm. [101324,3444],1996
  ;passes=1 needs to be used with this PHC formula.
  b5=pixel-conj(0.1/pixel)
  b4=pixel-flip(0.1/pixel)-conj(0.001/pixel),
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z^1.2,c2=2.25*conj(z),c3=3.375*flip(z),c4=5.0625*flip(z),
  l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
  bailout=16,iter=0:
  t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
  t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4,
  z=(|z|/5)+z*z+c-0.09/pixel
  iter=iter+1
  |z|<=bailout }
JDG-7-01c { ; Modified Sylvie Gallet frm
;image and 60 deg rotation w/ palette divided
  j = -0.5 + flip(0.5*sqrt(3)) , j2 = j*j , j3 = conj(flip(j))
  rot = whitesq+j3*j3*(whitesq==0)
  z = pixel*rot:
   x = z*j , y = z*j2
   x1 = x - p1*fn1(y + fn2(p2*z))
   y1 = y - p1*fn1(z + fn2(p2*x))
   z1 = z - p1*fn1(x + fn2(p2*y))
   z = z1 + x1*j + y1*j2
   t1 = (|z| <= 32)
   z = z*t1 + (t1==0)*((z*whitesq+conj(z)*(whitesq==0))*(imag(z)>=0) \
   + (conj(z)*whitesq+z*(whitesq==0))*(imag(z)<0))
   |z| <= 32
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
Gallet-6-01 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + p2*fn2(x - p3*fn3(y)))
   y1 = y - p1*fn1(x + p2*fn2(y - p3*fn3(x)))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-6.frm
}
Carr3024 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; passes=1 needs to be used with this PHC formula.
          ; Some optimizations made by G. Martin
  b5=flip(pixel^2)-cabs(conj(pixel^7))\
      -conj(0.01/pixel-flip(0.001/pixel))-0.3
  b4=b5-conj(|0.1/b5|)
  c=whitesq*(b4)-(whitesq==0)*(b4)
  z=whitesq*(b5)-(whitesq==0)*flip(b5)^3
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7496,-0.132)+flip(conj(c/10))
  iter=iter+1
  (z-pixel)<=bailout
  ;SOURCE: 42xcarr.frm
}
m+j+n_2+if {; Sylvie Gallet [101324,3444], 1996
  p0 = p3 - 1, odd = iter = wait = 0
  z = cm = pixel * exp(-flip(imag(p1)) * 0.01745329252) / abs(real(p1)) 
  :
  odd = odd == wait
  IF (iter < 300)
    IF (wait == 0)
      z = z*z + cm
    ENDIF 
    bailout = |z| <= 16
    IF (bailout == 0)
      z = 0, wait = 1, bailout = 1
    ENDIF 
  ELSE 
    IF (iter == 300)
      IF (wait == 0)
        odd = 0, wait = 1
      ENDIF 
      z = pixel, bailout = 1
    ELSE 
      IF (odd)
        zp0 = z^p0, d = zp0 * p3, n = zp0 * z - 1
        z = (-n/d+z), bailout = |n| > 0.000001
      ELSE 
        z = z*z+p2, bailout = |z| < 16
      ENDIF 
    ENDIF 
  ENDIF 
  iter = iter + 1
  bailout
  ;SOURCE: 97msg.frm
}
m+j+n_2 {; Sylvie Gallet [101324,3444], 1997
         ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
   p0 = p3 - 1, odev = iter = wait = 0
   z = cm = pixel * exp(-flip(imag(p1)) * 0.01745329252) / abs(real(p1))
   continue = 1 :
   IF (iter < 300)
      IF (wait == 0)
         z = z*z + cm, odev = odev == wait
         wait = |z| >= 16
      ENDIF
   ELSEIF (iter == 300)
      IF (wait == 0)
         odev = 0
      ENDIF
      z = pixel
   ELSE
      IF (odev)
         zp0 = z^p0, d = zp0 * p3, n = zp0 * z - 1
         z = -n/d + z, continue = |n| > 0.000001
      ELSE
         z = z*z + p2, continue = |z| < 16
      ENDIF
   ENDIF
   iter = iter + 1
   continue
  ;SOURCE: ifs196.frm
}
jdphc08 {
z=pixel*whitesq+(pixel+p3)*(whitesq==0)
p=p1*whitesq+p2*(whitesq==0):
z=z*z+p
|z|<4
}
Carr3034 {; Modified Sylvie Gallet frm. [101324,3444],1996
	  ; optimized by Sylvie Gallet
	  ; Modified for IF..ELSE logic by Sylvie Gallet, March 1997
	  ; passes=1 needs to be used with this PHC formula.
  b5 = cabs(0.33-cos(pixel)) / (0.33-tan(3*pixel)) - 0.4
  b4 = (|pixel| - (0,0.001))*(pixel-conj(0.01/pixel))
  IF (whitesq)
    c = b4/6 + (-0.6756,-0.132), z0 = z = b5
  ELSE
    c = - conj(b4)/6 + (-0.6756,-0.132), z0 = z = - sqr(b5)
  ENDIF
  l1 = real(p1), l2 = imag(p1), l3 = real(p2), l4 = imag(p2)
  bailout = 16, iter = 0 :
  IF (iter==l1)
    z = 0, c = 0.25*z0 + (-0.6756,-0.132)
  ELSEIF (iter==l2)
    z = 0, c = 0.375*z0 + (-0.6756,-0.132)
  ELSEIF (iter==l3)
    z = 0, c = 0.5625*z0 + (-0.6756,-0.132)
  ELSEIF (iter==l4)
    z = 0, c = 0.84375*z0 + (-0.6756,-0.132)
  ENDIF
  z = z*z + c
  iter = iter+1
  z <= bailout
  ;SOURCE: 42ycarr.frm
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
PD_414 {; PHC version of PD_207
  bailout = 4 + p3
  z = z1 = pixel
  x = real(pixel), y = imag(pixel)
  c = fn1(x^p1) + fn1(y^p1):
  z1 = fn2(fn3(z1^p2)) + fn4(c)
  x1 = real(z1), y1 = imag(z1)
  z2 = -x1 + flip(y1)
  z = log(z1)*whitesq + log(z2)*(whitesq==0)
  |z| <= bailout
  ;SOURCE: pdg04.frm
}
LGDF0016 {; Return of the Son of Nothing
          ; LGD (c)1996 [72332,507]
  c=z=pixel:
  z=z*z*(c*p2)*z+fn1(z+c)
  c=c*fn2(z)
  |z|<=p1
  ;SOURCE: lgd001.frm
}
