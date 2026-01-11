BJ-Lesfrm13-001 {; Modified Les St Clair formula "Lesfrm13"
  z = pixel
  x = fn1(z), y = fn2(z):
  x = x*p1*pi
  y = y*p2*pi
  z = fn4(fn3(x)/y)
  |z| <= 4
  ;SOURCE: 96msg.frm
}
BJ-SG-3-03-gb {; Brian E. Jones [102702,2213]
   ; Modified Sylvie Gallet [101324,3444], 1996
  z = pixel, c = sin(conj(-0.81256,-0.1295)) :
  x = real(z), y = imag(z)
  x1 = x - p1*fn1(x*x+p2*fn2(y)) * (whitesq == 0)+c* whitesq
  y1 = y - p1*fn1(y*y+p2*fn2(x))
  z = x1+flip(y1)
  |z| <= 4
  ;SOURCE: 96msg.frm
}
Carr2735 (YAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
   ; passes 1 needs to be used with this PHC formula.
                  ; Added variable "newpixel". G.Martin 6/15/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  b4=flip(newpixel)+0.25/log(cos(1/newpixel))*(tan(0.1/newpixel))
  b5=cabs(newpixel)+0.15/log(cosxx(1/newpixel))*(tan(0.1/newpixel))
  c=whitesq*b4-(whitesq==0)*b4-0.3
  z=whitesq*b5-(whitesq==0)*b5
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2=newpixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t
  c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0055
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
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
