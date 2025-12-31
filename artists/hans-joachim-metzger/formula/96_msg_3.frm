Gallet-6-01 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + p2*fn2(x - p3*fn3(y)))
   y1 = y - p1*fn1(x + p2*fn2(y - p3*fn3(x)))
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
Gallet-4-06 {; Sylvie Gallet [101324,3444], 1996
             ; PTC formula
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = -0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z = c * pixel :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y*y + p2*fn2(y))
   y1 = y - p1 * fn1(x*x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 4
  ;SOURCE: gallet-4.frm
}
Gallet-5-07 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = z*(0,1), y = z*(0,-1) :
   hx = p1*fn1(x), hy = p1*fn2(y)
   x = x + hy, y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) <= p2
  ;SOURCE: gallet-5.frm
}
Gallet-5-05 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = z, y = conj(z) :
   hx = p1*fn1(x), hy = p1*fn2(y)
   x = x + hy, y = y + hx
   z = x + flip(y)
    (|hx|+|hy|) >= p2
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
Gallet-5-09 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = pixel * (whitesq - 0.5*(whitesq == 0 )) :
   x = real(z), y = imag(z)
   x1 = x - p1 * fn1(y + p2*fn2(y))
   y1 = y - p1 * fn1(x + p2*fn2(x))
   z = x1 + flip(y1)
    |z| <= 64
  ;SOURCE: gallet-5.frm
}
Happy_New_Year {; Formula uses whitesq to cast soft shadow
                ; Created with FracText 1.0 alpha 6 by
                ; Jan Maarten van der Valk
                ; 100256.3721@compuserve.com
                ; 'periodicity=0' and 'passes=1' recommended
                ; Added variable "newpixel". G. Martin, 6/27/99
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnp\
  ix))/real(scrnmax), z=x+flip(y)
  chrH1 = x<0.1315||x>0.184||(y<0.62825&&y>0.59675)&&x>0.1&&\
  x<0.2155
  chra2 = abs(cabs(z+(-0.27369,-0.61556))-0.02494)<0.01575&&\
  x<0.27369||(abs(cabs(z+(-0.29119,-0.61556))-0.02494)<0.015\
  75&&x>0.29119)&&y>0.61556||((abs(cabs(z+(-0.27369,-0.56569\
  ))-0.02494)<0.01575&&x<0.27369)||(abs(cabs(z+(-0.29119,-0.\
  56569))-0.02494)<0.01575&&x>0.29119))||(x>0.27369&&x<0.291\
  19&&(y<0.5565||(y>0.62475&&y<0.65625)||(y>0.57488&&y<0.606\
  37)))||(x>0.30037&&x<0.33188&&y<0.61556)
  chrp3 = x>0.34938&&x<0.38088&&y<0.65625&&y>0.45937||(abs(c\
  abs(z+(-0.41369,-0.59062))-0.04988)<0.01575&&x>0.38088)
  chrp4 = x>0.49681&&x<0.52831&&y<0.65625&&y>0.45937||(abs(c\
  abs(z+(-0.56113,-0.59062))-0.04988)<0.01575&&x>0.52831)
  xy=2.5*x
  chry5 = y<xy-1.195&&y>xy-1.27982||(y>-xy+2.245&&y<-xy+2.32\
  982)&&y>xy-1.27982&&y<0.65625&&y>0.4375
  test1 = chrH1||chra2&&y>0.525||chrp3||chrp4||chry5&&y<0.7
  chrH6 = x<0.1465||x>0.199||(y<0.60325&&y>0.57175)&&x>0.115\
  &&x<0.2305
  chra7 = abs(cabs(z+(-0.28869,-0.59056))-0.02494)<0.01575&&\
  x<0.28869||(abs(cabs(z+(-0.30619,-0.59056))-0.02494)<0.015\
  75&&x>0.30619)&&y>0.59056||((abs(cabs(z+(-0.28869,-0.54069\
  ))-0.02494)<0.01575&&x<0.28869)||(abs(cabs(z+(-0.30619,-0.\
  54069))-0.02494)<0.01575&&x>0.30619))||(x>0.28869&&x<0.306\
  19&&(y<0.5315||(y>0.59975&&y<0.63125)||(y>0.54988&&y<0.581\
  38)))||(x>0.31538&&x<0.34688&&y<0.59056)
  chrp8 = x>0.36438&&x<0.39588&&y<0.63125&&y>0.43438||(abs(c\
  abs(z+(-0.42869,-0.56562))-0.04988)<0.01575&&x>0.39588)
  chrp9 = x>0.51181&&x<0.54331&&y<0.63125&&y>0.43438||(abs(c\
  abs(z+(-0.57613,-0.56562))-0.04988)<0.01575&&x>0.54331)
  chry10 = y<xy-1.2575&&y>xy-1.34232||(y>-xy+2.2575&&y<-xy+2\
  .34232)&&y>xy-1.34232&&y<0.63125&&y>0.4125
  test2 = chrH6||chra7&&y>0.5||chrp8||chrp9||chry10&&y<0.675
  xCN=2.5*x
  chrN11 = x>0.1&&x<0.1208||(x>0.152&&x<0.1744)||(y>-xCN+0.5\
  1&&y<-xCN+0.56601)
  chre12 = abs(cabs(z+(-0.23615,-0.17875))-0.03835)<0.0104&&\
  (x<0.23615||y>0.17528||y<0.15448)||(y>0.17528&&y<0.19608&&\
  x>0.1978&&x<0.2745)
  xw=4*x
  chrw13 = y<xw-1.15911&&y>xw-1.24487||(y>-xw+1.59244&&y<-xw\
  +1.6782)&&y<0.21667||(y>-xw+1.41911&&y<-xw+1.50487)||(y<xw\
  -1.33244&&y>xw-1.4182)&&y<0.2275
  xCY=2*x
  chrY15 = y<xCY-0.87485&&y>xCY-0.92136||(y>-xCY+1.23885&&y<\
  -xCY+1.28536)&&y>xCY-0.92136
  chre16 = abs(cabs(z+(-0.65243,-0.17875))-0.03835)<0.0104&&\
  (x<0.65243||y>0.17528||y<0.15448)||(y>0.17528&&y<0.19608&&\
  x>0.61408&&x<0.69078)
  chra17 = abs(cabs(z+(-0.74376,-0.19792))-0.01918)<0.0104&&\
  x<0.74376||(abs(cabs(z+(-0.75676,-0.19792))-0.01918)<0.010\
  4&&x>0.75676)&&y>0.19792||((abs(cabs(z+(-0.74376,-0.15958)\
  )-0.01918)<0.0104&&x<0.74376)||(abs(cabs(z+(-0.75676,-0.15\
  958))-0.01918)<0.0104&&x>0.75676))||(x>0.74376&&x<0.75676&\
  &(y<0.1508||(y>0.2067&&y<0.2275)||(y>0.16835&&y<0.18915)))\
  ||(x>0.76553&&x<0.78633&&y<0.19792)
  chrr18 = x>0.79933&&x<0.82013&&y<0.2275||(abs(cabs(z+(-0.8\
  35,-0.19183))-0.02527)<0.0104&&y>0.19183)
  chrXM19 = x>0.88367&&x<0.90447&&(y<0.1508||y>0.1612)
  test3 = chrN11||chre12||chrw13||chrY15||chre16||chra17||ch\
  rr18||chrXM19&&y>0.13&&y<0.26
  chrN20 = x>0.115&&x<0.1358||(x>0.167&&x<0.1894)||(y>-xCN+0\
  .5325&&y<-xCN+0.58851)
  chre21 = abs(cabs(z+(-0.25115,-0.16375))-0.03835)<0.0104&&\
  (x<0.25115||y>0.16028||y<0.13948)||(y>0.16028&&y<0.18108&&\
  x>0.2128&&x<0.2895)
  chrw22 = y<xw-1.23411&&y>xw-1.31987||(y>-xw+1.63744&&y<-xw\
  +1.7232)&&y<0.20167||(y>-xw+1.46411&&y<-xw+1.54987)||(y<xw\
  -1.40744&&y>xw-1.4932)&&y<0.2125
  chrY24 = y<xCY-0.91985&&y>xCY-0.96636||(y>-xCY+1.25385&&y<\
  -xCY+1.30036)&&y>xCY-0.96636
  chre25 = abs(cabs(z+(-0.66743,-0.16375))-0.03835)<0.0104&&\
  (x<0.66743||y>0.16028||y<0.13948)||(y>0.16028&&y<0.18108&&\
  x>0.62908&&x<0.70578)
  chra26 = abs(cabs(z+(-0.75876,-0.18292))-0.01918)<0.0104&&\
  x<0.75876||(abs(cabs(z+(-0.77176,-0.18292))-0.01918)<0.010\
  4&&x>0.77176)&&y>0.18292||((abs(cabs(z+(-0.75876,-0.14458)\
  )-0.01918)<0.0104&&x<0.75876)||(abs(cabs(z+(-0.77176,-0.14\
  458))-0.01918)<0.0104&&x>0.77176))||(x>0.75876&&x<0.77176&\
  &(y<0.1358||(y>0.1917&&y<0.2125)||(y>0.15335&&y<0.17415)))\
  ||(x>0.78053&&x<0.80133&&y<0.18292)
  chrr27 = x>0.81433&&x<0.83513&&y<0.2125||(abs(cabs(z+(-0.8\
  5,-0.17683))-0.02527)<0.0104&&y>0.17683)
  chrXM28 = x>0.89867&&x<0.91947&&(y<0.1358||y>0.1462)
  test4 = chrN20||chre21||chrw22||chrY24||chre25||chra26||ch\
  rr27||chrXM28&&y>0.115&&y<0.245
  xc=1*x
  chrCR29 = abs(cabs(z+(-0.62125,-0.01125))-0.00531)<0.00094\
  ||(abs(cabs(z+(-0.62125,-0.01125))-0.00219)<0.00094&&(x<0.\
  62125||y>xc-0.61||y<-xc+0.6325))
  x1=1.5*x
  chr130 = y<x1-0.92885&&y>x1-0.93223&&y>-x/1.5+0.43208||(x>\
  0.63128&&x<0.63316)
  chr931 = abs(cabs(z+(-0.63738,-0.00859))-0.00266)<0.00094&\
  &y<0.00859||abs(cabs(z+(-0.63738,-0.01391))-0.00266)<0.000\
  94||(x>0.63909&&x<0.64097&&y>0.00859&&y<0.01391)
  chr932 = abs(cabs(z+(-0.64519,-0.00859))-0.00266)<0.00094&\
  &y<0.00859||abs(cabs(z+(-0.64519,-0.01391))-0.00266)<0.000\
  94||(x>0.64691&&x<0.64878&&y>0.00859&&y<0.01391)
  chr633 = abs(cabs(z+(-0.653,-0.01391))-0.00266)<0.00094&&y\
  >0.01391||abs(cabs(z+(-0.653,-0.00859))-0.00266)<0.00094||\
  (x>0.64941&&x<0.65128&&y>0.00859&&y<0.01391)
  chrJ42 = abs(cabs(z+(-0.71081,-0.00859))-0.00266)<0.00094&\
  &y<=0.00812||(x>0.71253&&y>0.00812)&&x<0.71441
  xCM=2.5*x
  chrM43 = y>-xCM+1.80508&&y<-xCM+1.81013||(y<xCM-1.78675&&y\
  >xCM-1.79179)&&y>0.00917||(x>0.71503&&x<0.71691)||(x>0.721\
  84&&x<0.72372)
  xv=3*x
  chrv45 = y>-xv+2.20615&&y<-xv+2.21208||y<xv-2.19615&&y>xv-\
  2.20208&&y<0.01438
  xSL=4*x
  chrSL46 = y<xSL-2.95278&&y>xSL-2.96051
  chrd47 = x>0.75216&&x<0.75403||(abs(cabs(z+(-0.74981,-0.00\
  969))-0.00375)<0.00094&&x<0.75216)
  xCV=3.5*x
  chrV49 = y>-xCV+2.68068&&y<-xCV+2.6875||y<xCV-2.67068&&y>x\
  CV-2.6775
  chra50 = abs(cabs(z+(-0.77344,-0.01156))-0.00188)<0.00094&\
  &x<0.77344||(abs(cabs(z+(-0.77469,-0.01156))-0.00188)<0.00\
  094&&x>0.77469)&&y>0.01156||((abs(cabs(z+(-0.77344,-0.0078\
  1))-0.00188)<0.00094&&x<0.77344)||(abs(cabs(z+(-0.77469,-0\
  .00781))-0.00188)<0.00094&&x>0.77469))||(x>0.77344&&x<0.77\
  469&&(y<0.00688||(y>0.0125&&y<0.01438)||(y>0.00875&&y<0.01\
  062)))||(x>0.77563&&x<0.7775&&y<0.01156)
  chrl51 = x<0.78&&x>0.77813
  xk=1.25*x
  chrk52 = x<0.7825||(y<xk-0.96766&&y>xk-0.97066&&y<0.01438)\
  ||(y>-xk+0.98703&&y<-xk+0.99003&&y<xk-0.96766)&&x>0.78063
  test5 = chrCR29||chr130||chr931||chr932||chr633||chrJ42||c\
  hrM43||chrv45||chrSL46||chrd47||chrV49||chra50||chrl51||ch\
  rk52&&y>0.005&&y<0.0175
  xUA=2*x
  chrUA53 = y<xUA-0.405&&y<-xUA+1.355&&y>=0.395||(x>0.42&&x<\
  0.46&&y<0.395&&(x>0.42667&&x<0.43667||y>0.325))||(abs(cabs\
  (z+(-0.46,-0.325))-0.02)<0.00333&&y<=0.325&&x<0.46)&&y>0.0\
  75
  test6 = chrUA53&&y<0.475
  test=test1||test3
  test0=test2||test4||test5||test6
  test0=test0&&whitesq
  test0=(test0==0)
  test0=((test0||test)==0)
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  newpixel=(test==0)*f2+test*f1
  z=1+(0,-0.65)/fn3(newpixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test0==0
}
Carr2999 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=pixel-conj(0.01/pixel)
  b5=pixel-flip(0.01/pixel)-conj(0.001/pixel)-conj(0.001/b4)-0.12
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7156,-0.132)+flip(conj(c/10))
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42xcarr.frm
}
JD-SG-06m {; Sylvie Gallet [101324,3444], 1996  Requires passes=1
  whitesq = whitesq*(real(p2)==0)+(real(p2)>0)
  z = flip(imag(p1)) * (whitesq == 0) + real(p1) * whitesq
  c = pixel
  :
  z = z*z + c
  |z| < 4
  ;SOURCE: 96msg.frm
}
PD_411 {; Modified for IF..ELSE logic by Sylvie Gallet, 05/20/97
   bailout = sqrt(4 + imag(p3))
   k = real(p3), z = z1 = pixel
   c = p1*tan(z) :
   z1 = fn1(z1^k) + p2*fn2(z1*c)
   IF (whitesq)
      z = log(z1)
   ELSE
      z = log(- conj(z1))
   ENDIF
   abs(real(z)) <= bailout && abs(imag(z)) <= bailout
  ;SOURCE: phctopng.frm
}
LesPHCfrm04 { ; Les St Clair [101461,2032], 1996  Requires passes=1
              ; Based on Liar1 & Glynn formulas by Chuck Ebbert and
              ; Earl Glynn
        z = pixel:
        x = 1 - abs(imag(z)-real(z))
        z = (1 - abs(imag(z)-real(z)) + flip(1 - abs(1-real(z)-imag(z))))\
        * (whitesq == 0) + (z ^ p1 - p2) * whitesq
        (|z| <= 1 && whitesq == 0) || (|z| <= 4 && whitesq)
        }
Barnsley_PHC_3 {; formula adapted by Vincent Damion Presogna
  z = c = pixel
  c1 = p1*whitesq + c*(whitesq==0) , c2 = p2*(whitesq==0) :
   z1 = z - (z>=0) + (z<0)
   z = z1*c1 + c2
    |z| < 4
  ;SOURCE: 96msg.frm
}

Barnsley_PHC_3 {; formula adapted by Vincent Damion Presogna
  z = c = pixel
  c1 = p1*whitesq + c*(whitesq==0) , c2 = p2*(whitesq==0) :
   z1 = z - (z>=0) + (z<0)
   z = z1*c1 + c2
    |z| < 4
  ;SOURCE: 96msg.frm
}

BILL_err7 (yaxis) {; Bill Rossi
  z=Pixel:
  tmp1=fn1(z)^fn2(z)
  tmp2=fn3(z)^fn4(z)
  z=(tmp1/tmp2)
  |z| <= 4
  ;SOURCE: jpl1.frm
}

BJ-Lesfrm13-002 {; Modified Les St Clair formula "Lesfrm13"
  z = pixel
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi
  z = fn4(x/fn3(y))
  |z| <= 4
  ;SOURCE: 96msg.frm
}

BJ-SG-5-07-a {; Modified Gallet 5-07
              ; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = z*(0,1), y = (whitesq == 0) + (z*(0,-1)) * whitesq:
  hx = p1 * fn1(x), hy = p1*fn2(y)
  x = x + hy, y = y + hx
  z = x + flip(y)
  (|hx|+|hy|) <= p2
  ;SOURCE: 96msg.frm
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

FT_195_INVERSE {; Creates "Fractint 19.5" inverse text fixed to screen
                ; Les St Clair 101461.2032@compuserve.com - 1996
   ; Created using "FracText" (alpha-4) by Jan Maarten van der Valk
   ; "periodicity=0" and "passes=1" recommended
   ; Added variable "newpixel". G. Martin 6/27/99
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/real(scrn\
  max), z=x+flip(y)
  chrF1 = x<0.18||(y<0.525&&y>0.495)||y>0.54&&x>0.15&&x<0.228
  xr=2*x
  chrR2 = y<0.525&&y>0.495||y>0.54||x<0.264&&x>0.234&&x<0.288||(abs(cabs(z\
  +(-0.288,-0.5325))-0.0225)<0.015&&x>0.288)||(y<0.51&&y<-xr+1.101&&y>-xr+\
  1.03392)
  xa=3*x
  chrA3 = y>xa-0.63937||y>-xa+1.6845||(y<0.498&&y>0.468)&&y<xa-0.5445&&y<-\
  xa+1.77937
  xc=1*x
  chrC4 = abs(cabs(z+(-0.49712,-0.51))-0.045)<0.015&&(x<0.49712||y>xc+0.01\
  288||y<-xc+1.00712)
  chrT5 = y>0.54&&x>0.54555&&x<0.63555||(x>0.57555&&x<0.60555)
  chrI6 = x>0.64155&&x<0.67155
  xn=2.5*x
  chrN7 = x>0.67755&&x<0.70755||(x>0.72555&&x<0.75786)||(y>-xn+2.26387&&y<\
  -xn+2.34465)
  chrT8 = y>0.54&&x>0.76386&&x<0.85386||(x>0.79386&&x<0.82386)
  test1 = chrF1||chrR2||chrA3||chrC4||chrT5||chrI6||chrN7||chrT8&&y>0.45&&\
  y<0.57
  x1=1.5*x
  chr19 = y<x1-0.15167&&y>x1-0.20719&&y>-x/1.5+0.60667||(x>0.38733&&x<0.41\
  813)
  chr910 = abs(cabs(z+(-0.46783,-0.3227))-0.0273)<0.0154&&y<0.3227||abs(ca\
  bs(z+(-0.46783,-0.3773))-0.0273)<0.0154||(x>0.47973&&x<0.51053&&y>0.3227\
  &&y<0.3773)
  chrDT11 = y<0.3108&&x>0.51753&&x<0.54833
  chr512 = abs(cabs(z+(-0.60573,-0.3304))-0.035)<0.0154&&(y<0.3304||x>0.60\
  573)||(x>0.55533&&y>0.35&&x<0.65613&&(x<0.58613||y>0.3892||(y<0.3808&&x<\
  0.60573)))
  test2 = chr19||chr910||chrDT11||chr512&&y>0.28&&y<0.42
  test = test1||test2
  test=(test==0)
  f1=sin(.5*pixel)
  f2=1/(32*pixel)
  newpixel=(test==0)*f1+(test!=0)*f2
  z=1+(0,-0.65)/fn3(newpixel+(0,0.75)):
  z2=z*z, z4=z2*z2, n=z4*z2-1, z=z-n/(6*z4*z)
  |n|>=.0001&&test==0
  ;SOURCE: 96msg.frm
}

Gallet-5-01 {; Sylvie Gallet [101324,3444], 1996
  sq3 = sqrt(3), sq32 = 0.5*sq3, l = real(p1), h = l*sq32, l3 = 3*l
  h2 = 2*h, h3 = 3*h, h4 = h2 + h2, l15 = 0.5*l3
  c1 = 0.5*l + flip(h), c2 = l, rot = -0.5 + flip(sq32)
  y = imag(pixel), x = real(pixel) - y/sq3
  y = y - floor(y/h3)*h3, x = x - floor(x/l3)*l3 + y/sq3
  d = 0.5*y + sq32*x - h3, x = x - d*sq3*(d>0), y = y - d*(d>0)
  y = y - h2*(y>h2)
  t = y < sq3*x-h4, x = x - l15*t, y = y + h*t
  q1 = abs(floor(y / h))
  d2 = -sq32*x + 0.5*y, q2 = abs(floor(d2 / h))
  d3 = sq32*x + 0.5*y - h, q3 = abs(floor(d3 / h))
  q = q1 + q2 + q3, odd = q != 2*floor(q/2)
  y = y*(odd==0) + (h2-y)*odd
  t = y > -sq3*x + h4, x = x - l15*t, y = y - h*t
  z = x + flip(y), z = z * (y<=h) + ((z-c1)*conj(rot) + c1) * (y>h)
  x = real(z), z = z * (x<l) + ((z-c2)*rot + c2) * (x>=l)
  z = c = p2*z + p3 :
   z = z*z + c
    |z| <= 4
  ;SOURCE: gallet-5.frm
}

Gallet-5-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x*x + p1*fn1((y) + fn2(p2*y))
   y1 = y*y + p1*fn1((x) + fn2(p2*x))
   x = x1, y = y1
   z = fn3(x * y)
    |z| <= p3
  ;SOURCE: gallet-5.frm
}

Gallet-5-03 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x*x + p1*fn1((y) + fn2(p2*y))
   y1 = y*y + p1*fn1((x) + fn2(p2*x))
   x = x1, y = y1
   z = fn3(x * y)
    |z| <= p3
  ;SOURCE: gallet-5.frm
}

JDFrmF26g {; Jim Deutch, 1996
  sq6=.5+flip(sqrt(3)/2)
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z =c*pixel
  ct=0:
  ct=ct+1
  out=(ct<8)
  z=z*sq6*out+ (z*z+p1)*(out==0)
  (fn1(z*(p2+1))*out+ |z|*(out==0))<(out+ 4*(out==0))
  ;SOURCE: jdflake.frm
}

JDFrmF28 {; Jim Deutch, 1996
  sq6=.5+flip(sqrt(3)/2)
  out=1
  z =pixel*out+(1+(0,-0.65)/(pixel+(0,0.75)))*(out==0)
  ct=0:
  ct=ct+1
  out=(ct<8)
  z2=z*z, z4=z2*z2, n=z4*z2-1
  z=z*sq6*out+(z-n/(6*z4*z))*(out==0)
  ((sinh(z)*out)+|n|*(out==0))>(-5*out+.0001*(out==0))
  ;SOURCE: jdflake.frm
}

JDFrmF31 {; Jim Deutch, 1996
          ; Added variable "newpixel". G. Martin 6/27/99
  sq6=-.5+flip(sqrt(3)/2)
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  newpixel=c*pixel
  z =(1+(0,-0.65)/(newpixel+(0,0.75))):
  z2=z*z, z4=z2*z2, n=z4*z2-1
  z=z-n/(6*z4*z)
  |n|>.0001
  ;SOURCE: jdflake.frm
}

JDFrmJT02 {
  z=pixel
  x=real(pixel)
  p=p1+x*p2:
  z=z*z+p
  |z|<4
  ;SOURCE: jdwork4.frm
}

JDSlowtree {; Jim Deutch, 1996 - requires periodicity=0
  hitst=|pixel-op|
  op=pixel
  mp=(0,0)
  srand(-.5):
  r=rand
  r1=r<.25
  r2=r<.5*(r1==0)
  r3=r<.75*(r1==0)*(r2==0)
  r4=r>.75
  x=real(mp)
  y=imag(mp)
  mp=(.5+.5*x-.3*y+flip(.5+.5*y))*r1+(.5+.5*x+flip(.5+.6*y))\
     *r2+(.3*x+.25*y+flip(.25*x+.3*y))*r3+(y+flip(x))*r4
  |mp-pixel|>(p1+1)*hitst
  ;SOURCE: 96_msg_3.frm
}

jowe_29m {; by Jo Weber, 100424,35 10/96
          ; bailout is p3
  z=pixel
  bailout=p3:
  z=fn1(fn2((p1-z)/(p2+z)))
  z=fn3(z)
  |z|<=bailout
  ;SOURCE: 96msg.frm
}

jowe_43 {; by Jo Weber, 100424,35 10/96
         ; bailout is p3
  z=c=pixel
  bailout=p3:
  qad=sqr(z)
  z=sqrt(qad/(qad-p1*c))
  z=p2*fn1(z)
  |z|<=bailout
  ;SOURCE: 96msg.frm
}

JoWe_C_28_5 {; Jo Weber [100424,35] 11/1996
  bailout=p3
  z=pixel
  z=log(1-z)
  z=fn3(p1/fn1(z)+p2/fn2(z))
  c=(flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)):
  z=z*z+c+0.2*pixel
  (|real(z)|) <= bailout
  ;SOURCE: 96msg.frm
}

JoWe_XY_16a {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=p1*x1+p2*y1
  |z|<=bailout
  ;SOURCE: 96msg.frm
}

JoWe_XY_16b {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=(p1*x1+p2*y1)/2
  |z|<=bailout
  ;SOURCE: 96msg.frm
}

JoWe_XY_16b {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = pixel*pixel-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=x1-fn1(x1-fn2(x1))
  y1=y1-fn1(y1-fn2(y1))
  z=(p1*x1+p2*y1)/2
  |z|<=bailout
  ;SOURCE: 96msg.frm
}

JoWe_XY_17a4 {; Jo Weber [100424,35], 10/1996
              ; something by Sylvie Gallet or Brian E. Jones
              ; Added variable "newpixel". G. Martin 6/27/99
  bailout=p3
  newpixel=abs(real(pixel))+flip(imag(pixel))
  z = newpixel:
  x1=real(z), y1= imag(z)
  x1=x1-p1*fn1(y1-fn2(y1))
  y1=y1-p2*fn1(x1-fn2(x1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: 96msg.frm
}

Lesfrm04 (xaxis) {
  c=z=pixel:
  z=z+(fn1(c^2)/fn2(z^2))/c^4
  |z| <=6
  ;SOURCE: les.frm
}

Lesfrm12 {; Les St Clair, 1996
  z = pixel:
  x = fn1(z), y = fn2(z)
  z = x*y
  |z| <= 4
  ;SOURCE: les.frm
}

Lesfrm13 {; Les St Clair, 1996
  z = pixel
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi
  z = x/y
  |z| <= 4
  ;SOURCE: lesfrm13.frm
}

Lesfrm16 {; Les St Clair, 1996
  z = c = pixel:
  x = p1*fn1(z)
  y = p2*fn2(z)
  x1= x*x
  y1= y*y
  z = c + x1/y1
  |z| <= 4
  ;SOURCE: 96msg.frm
}

Moo_PHC {; by Vincent Damion Presogna, Oct. 18, 1996
  z = pixel
  halfe = e*(-0.5)
  quartere = e*(-.25):
  z = z + p1
  y = tan(1/z)
  r = y + pixel
  q = y * pixel
  z = fn2(z)*r^halfe*(whitesq == 0) + fn1(z)*q^quartere*(whitesq)
  |z| <= 4
  ;SOURCE: 96msg.frm
}

Ormandel17(YAXIS) {; Copr. 1995 by Jack A. Orman
z=c=pixel:
  temp=z
  neg= (fn1(z^3+z^2+z))^p1
  pos= (fn2(z^3+z^2+z))^p2
  z=(neg * pos) + c + zp
  zp=sqrt(temp)
  |z|<4
  ;SOURCE: jack5.frm
}

PD_212 {
  z1 = fn1(pixel), z2 = fn2(1/pixel)
  x1 = real(z1), y1 = imag(z1)
  x2 = real(z2), y2 = imag(z2)
  c = tan(x1*x2) + tan(y1*y2):
  z1 = fn3((z1^(p1*2)) + (z1^p1)) + c
  z2 = fn4((z2^(p1*2)) + (z2^p1)) + c
  z = z1 + flip(z2)
  (|z1| <= p2) || (|z2| <= p2)
  ;SOURCE: pdg02.frm
}

ScSkZCZZ (XYAXIS) {
  z = pixel, TEST = (p1+3):
  z = (z*cosxx(z)) - z
  |z|<TEST
  ;SOURCE: fractint.frm
}

BJ-SG-5-07-c {; Modified Gallet 5-07
              ; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = fn3(z*(0,1)), y = fn4(z*(0,-1)) :
  hx = p1*fn1(x), hy = p1*fn2(y)
  x = x + hy, y = y + hx
  z = x + flip(y)
  (|hx|+|hy|) <= p2
  ;SOURCE: 96msg.frm
}

BJ-SG-5-07-c {; Modified Gallet 5-07
              ; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = fn3(z*(0,1)), y = fn4(z*(0,-1)) :
  hx = p1*fn1(x), hy = p1*fn2(y)
  x = x + hy, y = y + hx
  z = x + flip(y)
  (|hx|+|hy|) <= p2
  ;SOURCE: 96msg.frm
}

Carr2500 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
     ; Edited for Fractint v. 20 by George Martin, 10/98
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  m3=cabs(newpixel^(-(2/newpixel/2)))
  z=conj(newpixel)*m3-(conj(0.10/newpixel))-sqr(flip(0.010/newpixel))-0.1
  c=(-0.9359,-0.09659)/2.1
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0051
  z=z^2+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42kcarr.frm
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

Carr2808 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=conj(conj(|pixel^5|))-conj(conj(sqrt(pixel)+log(pixel)))/\
     15-conj(0.1/pixel)
  b5=conj(conj(pixel^5))-conj(conj(sqrt(pixel)+log(pixel)))/\
     15-conj(0.1/pixel)
  c=whitesq*(b4)-(whitesq==0)*b4
  z=whitesq*(b5)-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
  z=z*z+c-0.087
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 96msg.frm
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

Carr2872 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(pixel)*conj(pixel)*(pixel)-flip(0.1/pixel-conj(0.01/pixel))
  b4=(-0.7564,0.21978)*(-1.099,-0.2249)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7546,-0.132)+(c/10))
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 96msg.frm
}

Carr2872 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(pixel)*conj(pixel)*(pixel)-flip(0.1/pixel-conj(0.01/pixel))
  b4=(-0.7564,0.21978)*(-1.099,-0.2249)
  c=whitesq*b4-(whitesq==0)*b4
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=(z*z+(-0.7546,-0.132)+(c/10))
  c=(z+c/2.125)-0.0125
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 96msg.frm
}

Carr2917 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(imag(0.33+sin(|pixel|)))*cabs((pixel)^4)\
      -conj(0.10/pixel)-flip(0.010/pixel)
  b4=1.2*(|pixel/0.75|)^5+conj(0.1/pixel+flip(0.01/pixel))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  |z|<=bailout
  ;SOURCE: 42vcarr.frm
}

Carr2917 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=flip(imag(0.33+sin(|pixel|)))*cabs((pixel)^4)\
      -conj(0.10/pixel)-flip(0.010/pixel)
  b4=1.2*(|pixel/0.75|)^5+conj(0.1/pixel+flip(0.01/pixel))
  c=whitesq*sqr(b4)-(whitesq==0)*conj(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  c=((z+c/2.125)-0.0325)
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

Carr2942 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b3=(pixel/2-conj(conj(0.10/pixel))+flip(flip(imag(0.0010/pixel))))
  b4=pixel^5-1/log(b3)
  b5=pixel^5-1/log(b3)
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z*z+c
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42vcarr.frm
}

Carr2960 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=abs(abs(0.5+conj(pixel)/2))^3\
     -conj(0.1/pixel)^10-flip(0.1/pixel)^10-0.6
  b4=tanh(sinh(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.01/pixel)+0.25
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}

Carr2960 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b5=abs(abs(0.5+conj(pixel)/2))^3\
     -conj(0.1/pixel)^10-flip(0.1/pixel)^10-0.6
  b4=tanh(sinh(0.5+pixel/2))^3-conj(0.1/pixel)-flip(0.01/pixel)+0.25
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  c=((z+c/2.125)-0.0325)
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}

Carr2969 {; Modified Sylvie Gallet frm. [101324,3444],1996
          ; passes=1 needs to be used with this PHC formula.
  b4=(2.224*conj(conj(pixel/2))+conj(cabs(pixel)))
  b5=(1.224*cabs(pixel^5)+flip(imag(pixel)))
  c=whitesq*conj(b4)-(whitesq==0)*sqr(b4)
  z=whitesq*sqr(b5)-(whitesq==0)*conj(b5)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t+c1*t1+c2*t2+c3*t3+c4*t4
  z=z^2+(-0.7456,-0.132)+c/10
  iter=iter+1
  imag(flip(z))<=bailout
  ;SOURCE: 42wcarr.frm
}

JDfrm010 {; Jim Deutch [104074,3171], 1996.  The Original PHC formula
          ; Requires passes=1
  z = 0
  c = whitesq * pixel - (whitesq == 0) * pixel:
  z = z*z + c
  |z| < 4
  ;SOURCE: phc.frm
}

JoWe_XY_13a {; Jo Weber [100424,35], 10/1996
             ; something by Sylvie Gallet or Brian E. Jones
  bailout=p3
  z = sin(pixel)-fn3(1-pixel):
  x1=real(z), y1= imag(z)
  x1=p1*x1+fn1(x1+fn2(x1))
  y1=p2*y1-fn1(y1-fn2(y1))
  z=x1+y1
  |z|<=bailout
  ;SOURCE: jo_we_48.frm
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

merryxms_01 {; Les St Clair [101461.2032@compuserve.com] December 1996
             ; Fractint formula containing "Merry Christmas" text, based on
             ; Jim Deutch's snowflake "JDFrmF23.frm" and modified using
             ; FracText 1.0 (alpha 5b) by Jan Maarten van der Valk
             ; 'periodicity=0' and 'passes=1' recommended
  x=real(scrnpix)/real(scrnmax)
  y=(imag(scrnmax)-imag(scrnpix))/real(scrnmax), z=x+flip(y)
  xm=2.5*x
  chrM1 = (y<-xm+1.2086||y<xm-0.24556)&&y>-xm+1.14223&&y>xm-0.31193||(x>0.\
  23889&&x<0.26354)||(x>0.31812&&x<0.34277)
  chrE2 = x<0.37467||y<0.42465||(y<0.48482&&y>0.46018)||y>0.52035&&x>0.350\
  02&&x<0.43267
  xr=2*x
  chrR3 = y<0.48482&&y>0.46018||y>0.52035||x<0.46457&&x>0.43992&&x<0.49357\
  ||(abs(cabs(z+(-0.49357,-0.50259))-0.03009)<0.01232&&x>0.49357)||(y<0.47\
  25&&y<-xr+1.47197&&y>-xr+1.41685)
  chrR4 = y<0.48482&&y>0.46018||y>0.52035||x<0.56789&&x>0.54324&&x<0.59689\
  ||(abs(cabs(z+(-0.59689,-0.50259))-0.03009)<0.01232&&x>0.59689)||(y<0.47\
  25&&y<-xr+1.6786&&y>-xr+1.62348)
  xy=2*x
  chrY5 = y<xy-0.9221&&y>xy-0.97722||(y>-xy+1.8381&&y<-xy+1.89322)&&y>xy-0\
  .97722
  test1 = chrM1||chrE2||chrR3||chrR4||chrY5&&y>0.4&&y<0.545
  xc=1*x
  chrC6 = abs(cabs(z+(-0.1282,-0.2125))-0.06018)<0.01232&&(x<0.1282||y>xc+\
  0.0843||y<-xc+0.3407)
  chrH7 = x<0.21136||x>0.25486||(y<0.22482&&y>0.20018)&&x>0.18671&&x<0.279\
  51
  chrR8 = y<0.22482&&y>0.20018||y>0.26035||x<0.31141&&x>0.28676&&x<0.34041\
  ||(abs(cabs(z+(-0.34041,-0.24259))-0.03009)<0.01232&&x>0.34041)||(y<0.21\
  25&&y<-xr+0.90565&&y>-xr+0.85053)
  chrI9 = x>0.39007&&x<0.41472
  chrS10 = abs(cabs(z+(-0.46439,-0.24259))-0.03009)<0.01232&&(x<0.46439||y\
  >0.24259)||(abs(cabs(z+(-0.46439,-0.18241))-0.03009)<0.01232&&(x>0.46439\
  ||y<0.18241))
  chrT11 = y>0.26035&&x>0.51405&&x<0.6112||(x>0.5503&&x<0.57495)
  chrM12 = (y<-xm+1.89749||y<xm-1.45445)&&y>-xm+1.83112&&y>xm-1.52083||(x>\
  0.61845&&x<0.6431)||(x>0.69768&&x<0.72233)
  xa=3*x
  chrA13 = y>xa-2.12669||y>-xa+2.61874||(y<0.198&&y>0.17335)&&y<xa-2.04874\
  &&y<-xa+2.69669
  chrS14 = abs(cabs(z+(-0.90189,-0.24259))-0.03009)<0.01232&&(x<0.90189||y\
  >0.24259)||(abs(cabs(z+(-0.90189,-0.18241))-0.03009)<0.01232&&(x>0.90189\
  ||y<0.18241))
  test2 = chrC6||chrH7||chrR8||chrI9||chrS10||chrT11||chrM12||chrA13||chrS\
  14&&y>0.14&&y<0.285
  test0=test1||test2
      ; Import of formula 'JDFrmF23' from file JDFLAKE.FRM
  cr = real(scrnpix) + imag(scrnpix)
  r = cr - 3 * trunc(cr / real(3))
  sq3 = 0.5 + flip(sqrt(3)/2)
  c = (r == 0) + sq3*(r == 1) + conj(sq3)*(r == 2)
  z =c*pixel:
  z=z*z+p1
  |z|<4&&test0==0
  ;SOURCE: 96msg.frm
}

