Gallet-5-08 {; Sylvie Gallet [101324,3444], 1996
  z = pixel, x = real(z), y = imag(z) :
   x1 = x - p1*fn1(y + fn2(p2*x) + fn3(p3*y))
   y1 = y - p1*fn1(x + fn2(p2*y) + fn3(p3*x))
   x = x1, y = y1
   z = x + flip(y)
    |z| <= 32
  ;SOURCE: gallet-5.frm
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
 
Carr2587 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=1/(newpixel*(3*sinh(newpixel)-flip(0.01/newpixel)-conj(0.1/newpixel)))
  c=0.83/(newpixel*(cabs(2.15*newpixel-flip(0.10/newpixel)-conj(0.010/newpixel))))-0.1
  c1=2*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z, c5=10.59375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2), l5=300
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t4=(iter==l4), t5=(iter==l5)
  t=1-(t1||t2||t3||t4||t5), z=z*t-conj(conj(0.08/c))
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+c5*t5+pp2+0.0003995
  z=(|z|/5)+z*z+c-0.10/newpixel
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42lcarr.frm
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
 
PD_207 {
  z = pixel
  x = real(pixel), y = imag(pixel)
  c = fn1(x^p1) + fn1(y^p1):
  z = fn2(fn3(z^p2)) + fn4(c)
  |z| <= p3
  ;SOURCE: pdg02.frm
}
 
Gallet-4-07 {; Sylvie Gallet [101324,3444], 1996
             ; PHC formula
  z = 10 * pixel, bailout = real(p3)
   c = p1 * (whitesq + (0,1) * (whitesq == 0)) :
   test = flip(c*z) >= 0
   z = (z - p2 * (test - (test == 0))) * c
    abs(real(z)) < bailout || abs(imag(z)) < bailout
  ;SOURCE: gallet-4.frm
}
 
Carr-223 {
  z=c=1/pixel, cp2=cos(pixel/0.74):
  z=(z^2)*(z^2)+sin(z-0.3)/cp2
  |z| <=10
  ;SOURCE: carr-9.frm
}
 
Carr-225 {
  z=c=1/pixel, cp2=cos(pixel/c*c+0.807):
  z=(z^2)*(z^2)*(z^2)+sin(z+0.3)/cp2
  |z| <=10
  ;SOURCE: carr-9.frm
}
 
Carr-226 {
  z=c=1/pixel, cp2=tan(pixel/c*c+0.807):
  z=(z^2)*(z^2)*(z^2)+sin(z+0.3)/cp2
  |z| <=10
  ;SOURCE: carr-9.frm
}
 
Carr-229 {; Note personalization
  z=c=1/pixel, Bob2=log((pixel)/c*c+0.807), Bob3=1/cosxx(z+0.3):
  z=(z^2)*(z^2)*(z^2)+Bob3/Bob2
  z=sin(z*z) + c
  |z| <=10
  ;SOURCE: carr-9.frm
}
 
Carr-231 {
  z=c=1/pixel, Bob2=log((1/pixel)/c*c+0.8), Bob3=1/cosxx(z+0.3):
  z=(z^2)*(z^2)*(z^2)+Bob3/Bob2
  z=sin(z*z*z) + (c-0.124)
  |z|<=10
  ;SOURCE: carr-9.frm
}
 
Carr-233 {
  z=c=1/pixel, Bob2=log(pixel/(c/pixel*c)+0.8), Bob3=1/cosxx(z+0.3):
  z=(z^2)*(z^2)*(z^2)-Bob3/Bob2
  z=z*pixel-pixel/sqr(z)
  |z| <=10
  ;SOURCE: carr-9.frm
}
 
Carr-236 {
  z=c=1/pixel, Bob2=log(1/pixel/pixel)/c*c+1.2
  Bob3=1/cosxx(z/0.3)/-1.1*c:
  z=(z^2)*(z^2)*(z^2)+Bob3*Bob2
  z=sin(z*z) + (c-0.124)
  z=z*z+c
  |z| <=10
  ;SOURCE: carr-9.frm
}
 
Carr-241 {
  z=c=1/pixel
  Bob2=cosxx((z^1.5)*(z^1.5)*(z^1.5)-0.4)+conj(sin(z-0.35))
  Bob3=conj(1/c*pixel+0.124):
  z=Bob2/Bob3
  |z| <=10
  ;SOURCE: carr-9.frm
}
 
Carr-245 {
  z=c=1/pixel
  Bob2=conj((z^3.5)*(z^3.5)*(z^3.5))+cosxx(1/sin(z-0.35))
  Bob3=conj(1/c*1/pixel+0.124):
  z=Bob2/Bob3
  z=flip((z*z)*(z*z))-(c-0.224)
  z=1/z*1/z+log(c)
  |z| <=10
  ;SOURCE: carr-9.frm
}
 
Carr-254 {
  c=0.5/pixel, z=1.5/pixel, a=p1, b=p2:
  z=fn1(z*z)+fn2(z*b)+fn1(z^a)
  z=sin(z*z)+(c-0.124)
  z=z*z+(c-0.124)
  |z| <=10
  ;SOURCE: carr-9.frm
}
 
Carr1000 {
  z=((1/pixel)/0.71)/(0.85/pixel+2.324)
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
  z=(z*1/sqr(cotanh(1/c)))
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}
 
Carr1650 {; Julia
  z=1/sin(pixel)/(1.099,0)/(pixel)
  c=(1/pixel)/(1.099,0)/(pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1651 {; Spider type.
  z=abs(1/tan(pixel)/sin(pixel)/(1/cos(pixel)))
  c=1/sin(z^pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1660 {; Spider type.
  z=1/sin(2/pixel)/(1/cos(2/pixel))/(cos(1-conj(pixel)))
  c=1/cosxx(pixel)+(-0.7456,0.2):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1661 {; Spider type.
  z=1/sin(2/pixel)/(1/cos(2/pixel))/(cos(1/pixel-conj(pixel)))
  c=1/cos(pixel)+(-0.3,0.6):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1662 {; Julia.
  z=1/cosxx(2/pixel)/(cos(1/pixel-sin(pixel)))
  c=1/sinh(pixel)/(1/cos(1.0,0.4)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1668 {; Spider type.
  z=1/cos(2.5/pixel)/(1/pixel-1)
  c=sqrt(1/(1/(1/cos(5/pixel)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1678 {; Spider type.
  z=(0.25-pixel)/(conj(pixel))
  c=(0.33-pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1685 {; Julia.
  z=sqr(1.33-cotan(flip(0.95/pixel/pixel)))
  c=(0.39-asin(0.33-1.5/(-0.7456,0.2)))/sqr(flip(4/pixel/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1686 {; Spider type.
  z=1/(pixel-1/pixel-0.9/pixel)
  c=1/(pixel-1/pixel-0.9/pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1688 {; Spider type.
  z=1/(pixel-sin(pixel))
  c=1/(pixel-sin(pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1689 {; Mandel type.
  z=1/(pixel-asin(pixel))
  c=1/(pixel-asin(pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1698 {; Spider type.
  c=(pixel)/(flip(pixel)-conj(1/pixel))
  z=(1/pixel)/(pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1699 {; Mandel type.
  c=(pixel)/(flip(1/pixel)-conj(1/pixel))
  z=(1/pixel)/(2*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
tC1108 {; generalized CARR1108, by Caren Park
  z = fn1( p1 / (4 / p1))
  c = fn2( p2 / (1 / p2)):
  z = (z * 1 / c) / (fn3 (pixel) - c * c)
  z = z / c
  |real(z)| <=100 
  ;SOURCE: forummsg.frm
}
 
tC1126 {; generalized CARR1126, by Caren Park
  z = fn1( p1) / (p1 + pixel)
  c = (fn1( 1 / pixel * p2 / pixel))/(0.3, 0.6):
  z = z + c - fn2 (imag( z))
  |real(z)| <=100 
  ;SOURCE: forummsg.frm
}
 
02-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z*z) + c
  z=sin(z*z) + c
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
 
Carr-04 {
  c = z = 1 / pixel 
  z = cosh(z) + c
  |z| <= 4
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
 
Carr-13 {; Edited for Fractint v. 20 by George Martin, 10/98
  c = z = cosxx(pixel):
  z = cosxx(z) + 2
  c = z = 1 / sqr(pixel)
  z = 1 / cosxx(z) +c
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-15 (xaxis) {; Mark Peterson modified(Zoom all the way out & look)
                 ; Edited for Fractint v20 by G. Martin
  z = log(pixel), z = cosxx(z): 
  z = z + cosxx(pixel)
  z = sqr(z)
  Lastsqr <=4 
  ;SOURCE: carr.frm
}
 
Carr-20 {
  z = pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sqr (log(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-201 {
  z=c=pixel:
  z=sqr(z) + c
  z=((1/pixel)*z*z)/(z-1) + c
  |z| <=4
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
 
Carr-22 {
  z = 1 / pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sqr (cosxx(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-220 {; 100's of diff. Inv. Mandels
  z=c=1/pixel:
  z=(z^2)*(z^2)+sin(z-0.3)/cos(sqr(pixel))
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-27 {; Carr-24 Modified
  c=z=1/pixel:
  z=sqr(z) + (c-1 1/4)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-528 {; Nice !!!
  z=1/pixel, c=1/conj(1/(z*z)):
  z=z*z*z+(c+(0.6,0.3))
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-882 {
  z=((1/pixel)/0.71)/(2.7,-1.3)
  c=(1/pixel*0.51/pixel):
  z=(1/z*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-889 {
  z=((1/pixel)/0.71)/(0.85/pixel+1.324)
  c=((1/pixel)/2)/z-2.5^fn4(pixel-1.324)/(1/pixel):
  z=((1/z^1/pixel*z*z)/((pixel-1)-(c*c)))/1.6
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-907 {
  z=exp(1/pixel), c=conj(pixel-sqr(z)):
  z=(c-z*pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-912 {
  z=1/(pixel*pixel)
  c=imag(1/pixel*0.91/pixel):
  z=((1/(sin(z*z+pixel*pixel)))/(pixel-c*c))/1.7
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-92 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c)
  z=sqr(z) + sin(c)
  z=sqr(z) + sin(c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-95 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z) + sin(c)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-99 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-520 {
  z=1/pixel, c=cos(z*1/pixel):
  c=fn1(sinh(z))
  z=z*z*z+flip(c-0.324)
  |z| <=10
  ;SOURCE: carr.frm
}
 
