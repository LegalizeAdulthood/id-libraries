a23 {
  z=pixel:
  z=pixel*fn1(cotan(fn1(z-(p3))))+(fn2(z/p1)*sin(whitesqr))+(whitesqr==0)
  |real(z)|>=4
  ;SOURCE: ad3.frm
}
 
g1 {
  z=pixel, t=fn1(z/1-z/p1)*(1-z+p2):
  z=z-fn2(p3/z)+p3*(z)*(1-t)/fn3(t)
  |z|>=4
  ;SOURCE: new.frm
}
 
Gita {
  z = pixel + p1:
  r = fn1(tan(1/z)) + pixel + 1
  z = (z*r)/fn2(r)
  |z| < 4
  ;SOURCE: shakti.frm
}
 
h4 {
  z=pixel, t=1-fn1(1-z), n=1/fn2(z-1):
  z=fn3(t+z)*fn4(n+t)-z
  |z|>=4
  ;SOURCE: ad3.frm
}
 
i4 {
  z=pixel, x=fn1(pixel^conj(z^2)), y=fn2(z^(tan(z/pixel+pixel))):
  z=fn3(x*x)*fn4(y/fn4(z+1))
  |z|>=p1
  ;SOURCE: ad3.frm
}
 
j1 {
   ; see also alx1 in _a.frm - a formula formerly named j1, changed
   ; to avoid duplication of name with this formula.
  z=pixel, c=p1:
  z=sqr(z)+c
  c=c+p2
  |z| <= 4
  ;SOURCE: explode.frm
}
 
kx01 {
  z=pixel, x=fn4(|(z+1)^1.6180339|/p1), i=imag(z)+p2:
  z=fn1(i-pixel)+fn2(x)
  a=z+(1*i)
  z=fn1(a)+fn3(z)
  |z|<=4
  ;SOURCE: ad3.frm
}
 
kx02 {
  z=pixel, x=fn4(|(z+1)^1.6180339|/p1), i=imag(z)+p2:
  z=fn1(i-pixel)+fn2(x)
  a=z+(i^2)
  z=fn1(a)+fn3(z)
  |z|<=4
  ;SOURCE: ad3.frm
}
 
l6 {
  z=pixel, z1=(1-pixel), y=fn4(1/z1), c=(y+y)^p1:
  z=fn1(z)*fn2(z1+1)
  z=(fn1((z1-2)/z+1)+(fn2(z1-1)))*1/(z1+z1) 
  z=fn2(z1*y)/fn3(1/c-1)/fn3(z1*((y+z)))+(c*z)
  |z|<4
  ;SOURCE: ad3.frm
}
 
N5 (XYAXIS) {
  z=pixel:
  z=(1/sin(1/(z*pixel)))+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}
 
N7 (XAXIS) {
  z=pixel:
  z=(1/cos(1/(z*pixel)))+pixel
  |z|<=4
  ;SOURCE: fixrch.frm
}
 
phcab2 {
  z=(pixel)
  t=fn2((whitesqr)+(z-realz)):
  z=(1/(fn1(whitesq))+(z*fn3(t)))*fn4(t^z-p1)/p1
  |z|>=4
  ;SOURCE: ad3.frm
}
 
phcab2z {
  z=(pixel):
  p=fn2((whitesqr)/sin(1/z))
  u=fn3(p-z)+whitesq
  z=((fn1(u)/p2))*((whitesq)*(z-1))
  |z|>=4
  ;SOURCE: ad3.frm
}
 
phcab3 {
  z=(pixel):
  t=1-(z*(whitesq==0)*(p2))
  u=fn1(t-(fn3(z+1)))*fn2(z)
  z=((fn1(u)+p2))+(pixel/p3)
  |z|>=4
  ;SOURCE: ad3.frm
}
 
phcad2 {
  z=pixel:
  t=1-(z*(whitesq==0)*(p2))
  z=fn1(t-(fn3(z+1)))*fn2(z)
  |(z)|>=4
  ;SOURCE: ad3.frm
}
 
phcxa8 {; Added variable "newpixel". G. Martin 6/29/99
  countreset = (count < 1024)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  newpixel = evenodd * pixel + oddeven * -pixel
  z = newpixel:
  x = flip(newpixel + fn1(p1/z - z/(p2+1)))
  z = x*z + p3
  |z| >=4
  ;SOURCE: ad3.frm
}
 
phcxa9 {; Added variable "newpixel". G. Martin 6/29/99
  countreset = (count < 1024)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  newpixel = evenodd * pixel + oddeven * -pixel
  z=real(newpixel)+flip(imag(newpixel))
  c=fn1(p2+real(p3)+flip(imag(p3)*p1)):
  z=fn2(z*(c-1))*fn3(z-c)
  |z|>=4
  ;SOURCE: ad3.frm
}
 
t2 {
  z=pixel, t=1-(pixel)^1/sqr(1/sqrt(pixel)):
  a=fn1(1/t^fn4(t))
  z=fn2(1/a^3)^fn3(z)
  |z|<=4+p1
  ;SOURCE: ad3.frm
}
 
aj6 {
  z=pixel, x=fn3(z/z-3)^fn3(z-1):
  z=fn1(z^(x*z-3))*(z*x/fn2(x))
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
la1061r {
  z=pixel, t=(z-p2), n=(fn1(z-p1))+fn2(z+whitesq):
  z=(fn3(n/-z)*fn4(z+t))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
la1061y {
  z=pixel, t=(z-p2)/p2, n=(fn1(p1+z))*fn2(z):
  z=fn3(n)*fn4(t+(z-t)+whitesq)*p3
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
la1061z {
  z=pixel, t=(z-p2)+1, n=(fn1(z-p1))*fn2(z+whitesq):
  z=fn3(z+n)*fn4(t-z*(z-t))
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
la13 {
  z=pixel:
  x=real(fn1(z+1)), c=real(fn2(z/p1)), y=imag(fn2(z))
  z=(fn3(y)+fn4(c))+fn4(fn1(x)+tan(x-1))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
la14 {
  z=pixel:
  x=fn1(z+1), c=imag(fn2(z+1)), y=real(fn2(z))
  z=(fn3(y)+fn4(c))+fn4(fn1(x)*(tan(y-1)))+whitesq
  |z|<=4
  ;SOURCE: 99msg.frm
}
 
la17 {
  z=pixel:
  x=real(fn1(z+1)), c=(fn2(z/p1)), y=(fn2((z-1)))
  z=(fn3(y)+fn4(c))-fn4(fn1(x)+tan(y))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
la61 {
  z=pixel, t=whitesq, n=(whitesq==0)+(fn1(p1+z)-fn2(p1-z)):
  z=fn3(z-n)+fn4(z-t)
  z=fn1(fn2(z-1)*(t+n))
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
na1 {
  z=(pixel), t=(p1*(z+fn4(z-1)))/p2:
  z2=fn1(t)+whitesq,z3=fn4(z-(1-z))
  z=(z*fn2(z3))+fn3(z2)
  |z|<4  
  ;SOURCE: ad99_1.frm
}
 
newx11 {
  z=pixel:
  a=(fn1(z)+(tan(pixel)))/p1
  b=cos(z)
  z1=(fn3(a*b)/p2)
  z=(fn4(z1)*(b/p3))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
newx3 {
  z=(pixel), t=p1*fn4(z+1):
  z2=fn1(z*p2)+whitesq, z3=fn4(t*(-z2))
  z=(fn2(z3))+fn3(z2)
  |z|<(p1)
  ;SOURCE: ad99_1.frm
}
 
newx5 {
  z=pixel:
  a=fn1(pixel)*(p1/fn4(pixel))
  b=fn2(z+whitesq)
  z1=fn3(a+b)
  z=fn3(z1-whitesq)+b
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
newx6 {
  z=pixel:
  a=fn1(pixel)*(p1/fn4(pixel))
  b=fn2(z+whitesq)
  z1=fn3(a+b)/p2
  z=(fn3(z1-whitesq))*(b-p3)
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
newx7 {
  z=pixel, m=(fn1(z))*(2), y=tan(1-exp(z))^2
  n=fn2(1/(tan(z)))*sqr(y+m):
  z=(((z*1/1.01105)*fn1(m-n))/fn2(y*n)-fn3(z+y))/fn4(z+n+y)
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
newx8 {
  z=pixel:
  a=(fn1(pixel)*(fn4(pixel)))/p1
  b=flip(z)
  z1=fn3(a*b)/p2
  z=(fn3(z1)*(b/p3))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
newx9 {
  z=pixel, m=(fn1(z))-(2), y=tan(exp(z))-2
  n=fn2((tan(z)))*sqr(y+m):
  z=(((z*fn1(n-m))+fn2(y+n))*(fn3(z+y)+fn4(n+y)))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
nx0 {
  z=pixel, m=(fn1(z))*(2)
  y=tan(1-exp(z))^2, n=fn2(1/(tan(z)))*sqr(y+m):
  z=(((z*1/1.01105)*fn1(m-n))/fn2(y*n)-fn3(z+y))/fn4(z+n+y)
  |z|>=4
  ;SOURCE: ad99_1.frm
}
 
nx4 {
  z=pixel, t=(1.0,0.0)+fn1(z):
  z=(fn2(z^p2)+t)+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
pif16 {
  z=pixel:
  z1=(z+whitesq+(fn1(z)/(fn2(z))^p2)/p1)
  z2=(z+whitesq)*(fn1(1/z)^p2)/p3
  z=fn3((z2+1)-fn4(z2))*1/(fn4(z2)+fn3(z1))
  |z|<4
  ;SOURCE: ad5.frm
}
 
r3 {
  z=pixel, r=(12/fn1(z-1))/p2:
  z=fn2(z)*fn3(r/z)
  |z|>=p1
  ;SOURCE: ad99_1.frm
}
 
rxa0 {
  z=pixel, c=real(fn1(z+p1))^p2, d=(fn3(z)/p3)*fn4(tan(z-1)-p2):
  z=((fn2(d+c)^p3)-tan(z))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
rxa1 {
  z=pixel, c=(real(fn1(z+p1))^p2):
  z=fn3(fn2((real(z+1)/sin(1/1-z)))*fn4(c-p3)/p1)+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
rxa10 {
  z=pixel, t=z+real(p1):
  z=fn2(real(fn3(z)^p1)/fn4(tan(t/(z-(fn1(1/(t)))))))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
rxa2 {
  z=pixel, c=(fn1(z+p1)+whitesq)-1^p2:
  z=(fn2(fn3((z+c)))^p3)+c
  |(z)|<4
  ;SOURCE: ad99_1.frm
}
 
rxa4 {
  z=pixel:
  t=(fn2(z)^p3)+whitesq
  z=((fn1(t-1))+pixel)/(t*p1)
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
rxa5 {
  z=pixel, b=fn3(z*p1), c=(fn1(z+1)/p2):
  z=fn2((b/p3)*fn4(c)+z)+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
rxa7 {
  z=pixel, s=fn1(z+p1), v=fn2(1/s)^2:
  z=(fn3(z*v)/p3)*fn4(tan((s)))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
rxa91 {
  z=pixel:
  z=fn2((fn3(z))*fn4(tan((z+fn1(1)))))+whitesq
  |z|<4
  ;SOURCE: ad99_1.frm
}
 
ep18x {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF (b<(z/p2)+a)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF (b<=z/p3+a)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
  ENDIF
  |z|<4
  ;SOURCE: ad7.frm
}
 
ep18y {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF (b<(z/p2)+a)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF (b<=z/p3+a)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
  ENDIF
  |z|<=iter+(z+1)
  ;SOURCE: ad7.frm
}
 
ep18z {
  z=pixel, a=cotan(z)/p2, b=z*(p1-tan(z/p3)):
  IF (b>(z+p2)*a)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF (b>z/p3*1/a)
    z=(fn3(fn1(a/z-1)+fn2(b*(z+(fn2(1/z)*p3)/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
  ENDIF
  |z|<4
  ;SOURCE: ad7.frm
}
 
ep19y0 {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)+whitesq):
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
  |z|<4
  ;SOURCE: ad7.frm
}
 
ep20 {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF ((a)<fn2(z/p2))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
  |z|<=4
  ;SOURCE: ad5.frm
}
 
ep20x {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF (fn1(a)<fn2(z/p2))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
  |z|<4
  ;SOURCE: 97msg.frm
}
 
ep20z0 {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  |z-1|<4
  ;SOURCE: ad5.frm
}
 
ep20z5 {
  z=pixel, a=(fn1((1-(z+1))*p2)/p3), b=fn2((cos(z+1)*p2)/p3):
  IF (a<=(z/p2)^2)
    z=(fn3(fn1(a-p1)+fn2(b-(z^p3/z)))*fn4(z)+whitesq)
  ELSEIF(b<=((z/p3)^2)+(p1*2))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))*fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))*fn4(z))+whitesq
  ENDIF
  |z|<=4
  ;SOURCE: ad7.frm
}
 
ep20z9 {; modified DAmien Jones frm 
  IF (real(p1) == 0)
    p1 = 1
  ENDIF
  IF (real(p2) == 0)
    p2 = 128
  ENDIF
  z = pixel, c = pixel, done = 0
  il2 = p3/log(2.0), lp = imag(log(real(p2))):
  z2 = log(z)
  z = fn2(z2 + c)
  done = fn3(done + 1)+whitesq
  IF (|z| > real(p2))
    z = (done + 2*il2*lp - il2*log(cotan(abs(z)))) * real(p1) - done
    done = -1
  ENDIF
  done >= 0
  ;SOURCE: ad7.frm
}
 
pn1 {
  z=pixel:
  a=cotan(z)^p2, b=z*(fn1(z/p3))
  IF (fn1(a)>fn2(b/p2)/p3)
    z1=(fn3(fn1(z)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  IF (fn1(b)/p2>fn2(a/p3))
    z1=(fn3(fn1(z)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z1+(a)+whitesq)*fn2(b*(z/a))))
  |z|<4
  ;SOURCE: ad7.frm
}
 
pn3 {
  z=((imag(flip(pixel))))+flip(imag(pixel)):
  a=cotan(z)^p2, b=z*(fn1(z/p3))
  IF (fn1(a)<=fn2(b/p2)/p3)
    z1=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  IF (fn1(b)/p2<=fn2(a/p3))
    z1=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z1+(a)+whitesq)*fn2(b*(z/a))))
  |z|<4
  ;SOURCE: ad7.frm
}
 
pr19 {
  z=pixel, t=z/1-(whitesq):
  z=fn1((z+whitesq)*(p1))
  z1=fn1((z*p1))
  z2=fn1((z1/p2))
  z3=fn1((z2-p2))
  z=(z3*fn2(z2+z1))/t
  |z|<4
  ;SOURCE: ad5.frm
}
 
axi1 {
  z=pixel:
  z=(fn1(z+(z+whitesq))/fn2(z)^2)-p1
  |z|<=4
  ;SOURCE: ad5.frm
}
 
axi2 {
  z=pixel:
  z=fn3((z-1)*1/fn1(1/z))^fn2(z+whitesq)
  |z|<=4
  ;SOURCE: ad5.frm
}
 
axi3 {
  z=pixel, o=(z+whitesq):
  z=fn1(o+(fn1(fn2(z)/fn3(z)^p1)))
  |z|<=4
  ;SOURCE: ad5.frm
}
 
eh2 {
  z=pixel:
  z1=fn1(sin((z^2)))+1
  z2=(fn4(z^2)+whitesq)-1
  z=((fn2((z1)*fn3(z2))))
  |z|<p1
  ;SOURCE: ad5.frm
}
 
ep13 {
  z=pixel, d=real(z*(1/p1)):
  z=(fn3(fn1(z+(d)+whitesq)+fn2(z*(z^p3/d)))/fn4(z))+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}
 
ep14c {
  z=pixel:
  z=(fn3(fn1(z)+fn2(z-(z^p3/z)))/fn4(z))+whitesq
  |tan(z-1)|<4
  ;SOURCE: ad5.frm
}
 
ep14d {
  z=pixel, a=z/(p1*tan(z/p3)):
  z=(fn3(fn1(a/conj(z+(whitesq))+fn2(p2-(a+z/p3))*fn4(z))+whitesq))
  |z|<4
  ;SOURCE: ad5.frm
}
 
ep14i {
  z=pixel, a=cos(z)^p2, b=z+(p1-tan(z/p3)):
  z=(fn3((fn1(a*b)+fn2(a*b-(z^p3/z))))/fn4(z-1)+whitesq)
  |z|<a
  ;SOURCE: ad5.frm
}
 
ep14ix {
  z=pixel:
  a=(cos(z)/p2), b=z*(p1-tan(z/p3))
  z=(fn3((fn1(a*b+(whitesq))+fn2(a*b-(z^p3/z))))/1-fn4(z-1))
  |z|<4
  ;SOURCE: ad5.frm
}
 
ep15 {
  z=pixel, a=cotan(z)^p2, b=z+(p1-tan(z/p3)):
  IF(a<=b-p2)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF(b<=a/p3)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
  ENDIF
  |z|<=4&&|z-1|<(4+p3)
  ;SOURCE: ad5.frm
}
 
ep16 {
  z=pixel, a=cotan(z)^p2, b=z/(p1-tan(z/p3)):
  IF(a<=b-p2)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF(b<=a/p3)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
  ENDIF
  |z|<=4
  ;SOURCE: ad5.frm
}
 
ep17 {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF(fn1(a)<fn2(b-p2))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF(fn1(b)<fn2(a/p3))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z*(a)+whitesq)*fn2(b-(z^p3/a)))/fn4(z))
  ENDIF
  |z|<4
  ;SOURCE: ad5.frm
}
 
ep17ax {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF (fn1(a)<=fn1(b-p2))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSEIF (fn1(b)<=a/p3)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ELSE
    z=(fn3(fn1(z*(a)+whitesq)*fn2(b/(z^p3/a)))/fn4(z))
  ENDIF
  ;SOURCE: ad5.frm
}
 
ep19x {
  z=pixel, a=cotan(z)^p2, b=z*(p1-tan(z/p3)+whitesq):
  IF (fn1(a)<fn2(1/b)*p2)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  IF (fn1(b)<fn2(1/(a+p1)/p3))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z))
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}
 
ep20z {
  z=pixel, a=1-cotan(z)^p2, b=z*(p1-tan(z/p3)):
  IF (fn1(a)<=fn2(b/p2))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  IF (fn1(b)<=fn2(a/p3))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b*(z/a)))/fn4(z))+whitesq
  |z-1|<4
  ;SOURCE: ad5.frm
}
 
ep20z1 {
  z=pixel, a=cotan(z)^p2, b=z*(tan(z/p3)):
  IF (fn1(a)<=fn2(b/p2)/p3)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  IF (fn1(b)/p2<=fn2(a/p3))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b*(z/a))))
  |z-1|<4
  ;SOURCE: ad5.frm
}
 
ep20z3 {
  z=pixel, a=cotan(z)^p2, b=z*(tan(z/p3)):
  IF (fn1(a)<=fn2(b/p2)/p3)
    z1=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  IF (fn1(b)/p2<=fn2(a/p3))
    z1=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
  ENDIF
  z=(fn3(fn1(z1+(b))+fn2(b*(z/a))))
  |z|<4
  ;SOURCE: ad5.frm
}
 
ep20z7 { 
  IF ((p1) == 0)
    p1 = (.03,1.1)
  ENDIF
  IF ((p2) == 0)
    p2 = (1.28,.2)
  ENDIF
  z = pixel, c = pixel, done = 5, il2 = 1/log(2.0)
  lp = log(log((p2))):
  z2 = sqr(z)
  z = z2 + c
  done = done -tan(z)
  IF (|z| > (p2))
    z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * (p1) - done
    done = fn4(z-1)+whitesq
  ENDIF
  done >= 4
  ;SOURCE: ad5.frm
}
 
jix1 {
  z=pixel, c=whitesq+(z-1):
  z1=fn2(c)*p1
  z=(z1/fn1(z*fn4(z*p2)))
  |z|<4
  ;SOURCE: ad5.frm
}
 
jix2 {
  z1=pixel, f=fn1(z1)
  b1=abs(real(p1)), x=fn2(b1)
  k=real(p1)*(p2):
  w=(f-w)+whitesq
  u=b1-whitesq
  z1=w+u
  z2=fn4(k+(sin(u+tan(z))))
  z3=fn2(x+whitesq)-(p2*(u+whitesq)+cos(z))
  z=fn4(z1+(sin(z2+tan(z))))
  |z|<4
  ;SOURCE: ad6.frm
}
 
jma10 {
  z=pixel:
  x=fn1(1-(p1/z))
  y=fn2(1+(p2/z))
  x1=(y*y-x*x)+(2*(x+y))
  y1=2*x*y-(2*(x+y))
  x2=1/x*1/x, y2=1/y*1/y, x3=x2*x, y3=y2*y
  a=real(p1), b=imag(p1)
  z=fn3(x3+(y3/z)-1)/(z*(a+b)+whitesq)
  |z|<4
  ;SOURCE: ad5.frm
}
 
jmat2 {; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=g=pixel:
  a=real(p1), b=imag(p1), c=real(p2), d=real(p3), ee=imag(p3)
  h=fn1(z^a)/fn2(g-1/-ee)
  j=fn3((c*z)^(d+g))
  z=fn4(z*j)+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}
 
jmx6 {
  z=pixel:
  z1=tan(fn4(cos(z)))
  a=fn2(z1*p1)
  z=(fn4(a))*fn1(p2/(a-whitesq)+1/z1)
  |z|<4
  ;SOURCE: ad5.frm
}
 
nepz0 {
  z=pixel, a=fn1(z-p2), b=(a*z)-(fn2(z/p1)/sin(z)):
  z=(fn3(b+(z-p2)))+fn4(a+whitesq)
  IF (fn1(a)<fn2(1/b)*p2)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z))))+whitesq
  ENDIF
  IF (fn1(b)<fn2(1/(a+p1)/p3))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z))))
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}
 
nepz1 {
  z=pixel, a=fn1(z-p2), b=(a*z)-(fn2(z/p1)/sin(z)):
  IF (fn1(a)<fn2(1/b)*p2)
    z=(fn3(fn1(a)+fn2(b-(z^p3/z))))+whitesq
  ENDIF
  IF (fn1(b)<fn2(1/(a+p1)/p3))
    z=(fn3(fn1(a)+fn2(b-(z^p3/z))))
  ENDIF
  z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}
 
phfx2 {
  z=pixel, l=whitesq+(z*p1):
  a=1+(fn1(z-1))/tan(l)-fn4((z+2)*p2)
  b=fn2(fn1(l))+log(l)-(fn3(l*p2)*z)/log(z)
  z=((fn1(a))*1/(z))*fn3((b)*p2)-cotan(log(z))+whitesq
  |z|<p3
  ;SOURCE: ad5.frm
}
 
phif0 {
  z=pixel, it=22/7:
  IF(itirate)
    z=(fn1(z-1)+whitesq)+flip(pixel)>it+p1
  ELSE
    z=(fn2(z-whitesq)*p2)/cos(pixel)+((iter)+p1)
  ENDIF
  z=(fn3(z+whitesq)/p3)+fn4(tan(z)-p2)
   |z|<.000001
  ;SOURCE: ad5.frm
}
 
phif4 {
  z=pixel, it=fn2(z)*((22/7)+p1):
  IF(itirate)
    z=(fn1(z-1)+whitesq)+flip(pixel)>fn3(it*p2)
  ELSE
    z=((fn2(z-whitesq)*p2)/cos(pixel))+((it)*p1)
  ENDIF
  z=(fn3(z+whitesq)/p3)+(fn4(tan(z)-p2))
  |z|<4
  ;SOURCE: ad5.frm
}
 
phif5 {
  z=pixel, i=real(z+whitesq):
  IF(itirate)
    z=(fn1(z-1)+whitesq)+(pixel)>(z*(i*p1))
  ELSE
    z=(fn2(z+whitesq)*p2)/cos(pixel)+((i*p1)/2)
  ENDIF
  z=(fn3(z+whitesq)/p3)+fn4(tan(z-1)-p2)/whitesq
  |z|<4
  ;SOURCE: ad5.frm
}
 
phxx {
  z=pixel, b=iter+1, iter=real(z)+p1
  c=(fn1(z+b)+whitesq), d=(fn4(z+p1)*p2):
  z=fn2(c)+fn3(c-z)
  |z|<4
  ;SOURCE: ad5.frm
}
 
pif17 {
  z=pixel:
  z1=(fn1(z-1))
  z2=(fn3(z1+fn4(z-p1/(z-1)))/fn4((z2)-p2/fn3(z1)))
  z=fn3((z1+z)-fn4(z2-1))*1-fn4((z2)+fn3(z1)-whitesq)
  |z|<4
  ;SOURCE: ad6.frm
}
 
pif171 {
  z=pixel:
  z1=fn1(z*p3)/p1
  z2=fn2(z)*p2/p1
  z3=fn3(z1)+fn4(z2)
  z=(z3+whitesq)+(z)
  |z|<4
  ;SOURCE: ad5.frm
}
 
pif172 {
  z=pixel:
  z1=fn1(z*p3)/p1
  z2=fn2(z)*p2/p1
  z3=fn3(z1)+fn4(z2)
  z=(z3+whitesq)+(z)
  |z|<4
  ;SOURCE: ad5.frm
}
 
pif9 {
  z=pixel:
  z1=((fn1(z-1)*fn2(z))+p3)/p3
  z2=((fn2(z+1)*fn1(z))+p3)/p3
  z=real(fn3((z1+whitesq)+fn4(z2)))*fn4((z2+whitesq)+fn3(z1))
  |z|<4
  ;SOURCE: ad5.frm
}
 
pr12 {
  z=c=pixel:
  z=(fn1(z)+whitesq)^fn2(1/p3*(z*z*z)*(c/p1)/fn3(p2))
  |z|<4
  ;SOURCE: ad6.frm
}
 
pr15 {
  z=c=pixel:
  z=fn1((z+whitesq)*(p1))
  z1=fn2((z+whitesq)*real(p1))
  z2=fn3((z1+whitesq)*(p2))
  z3=fn4((z2+whitesq)*real(p2))
  z=(z3*(z2+z1))/c
  |z|<4
  ;SOURCE: ad5.frm
}
 
pr18 {
  z=pixel, t=tan(fn1(z)*cos(z))^exp(fn2(z)*cotan(z))^fn3(z):
  z1=fn1(whitesq*t)-1
  z=(z1*fn2(z+z/1-whitesq))*t
  |z|<4
  ;SOURCE: ad5.frm
}
 
pr23 {
  z=pixel, c=fn3(pixel+whitesq):
  n=(fn1(z-2)+fn2(c-1))+c
  z=(p1*1/tan(n*n))/cos(n*n*n)+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}
 
pr24{
  z=pixel:
  a=fn1(real(pixel)*abs(pixel))
  a=fn1(real(whitesq)*abs(pixel))
  b=fn2(1/sinh(z+whitesq))
  n=(z*fn3(a+b))/(whitesq)*(z+1)
  t=log(pixel-2)*fn3(z)
  z=fn1(t+whitesq)+fn3(n)
  |z|<4
  ;SOURCE: ad5.frm
}
 
pr27 {
  z=pixel:
  z1=fn3((z/.5)*pixel)
  z=(fn2(z1*real(1-z1))*fn1(1/imag(z1-1)))+whitesq
  |z|<4
  ;SOURCE: ad5.frm
}
 
pr31 {
  c=z=pixel, t=(fn1(pixel+whitesq)+1):
  z=fn4(fn2(t)/real(fn3(z*whitesq)))+c      
  |z|<4
  ;SOURCE: ad5.frm
}
 
px1 {
  z=pixel, t=fn1(real(z+p3)), x=z+(z/pi), y=z+(z/pi):
  x=(x*p1)
  y=(y*p2)/pi 
  z=fn4(x-1)+fn3(y)
  z=(fn2(whitesqr==0)*x)-(fn3(whitesqr)+z)
  |z|>=4
  ;SOURCE: ad5.frm
}
 
pxa0b4 {
  z=pixel:
  n=(log(z*p1)/p2)+(fn4(z+1)/2)+whitesq
  z=(fn1(n)+(fn2((.02,1.1)+(n-z))/z-1))*fn3(tan(z)/whitesq)
  |z|<p3
  ;SOURCE: ad5.frm
}
 
py12 {
  z=pixel:
  x=fn1(z-p1)/pi, y=fn1(z-p2)/e
  x1=fn2((x*y)^1/z)+whitesq, y1=fn2((x*y)/whitesq)
  z=fn3((x1)+fn4(y1))
  |z|<4
  ;SOURCE: missing.frm
}
 
py3 {
  c=pixel, z=fn1(pixel)+(1-pixel):
  z=fn4(fn2(z)+whitesq)+fn3(c/whitesq)
  c=p1-conj(flip(c))
  |c|<=4
  ;SOURCE: missing.frm
}
 
py4{
  c=pixel, z=fn1(pixel):
  z=fn1(fn2(z))+(fn3(c)/whitesq)
  c=fn4(flip(c)+conj(z))
  |z|<=4
  ;SOURCE: ad5.frm
}
 
py7 {
  z=pixel:
  z=(fn1(z+tan(real(whitesq))))*fn2(((22/7))+(z))/(whitesq-1)
  z=fn1(pixel*z)/fn4(real(z+(whitesq)))
  |z|<=4
  ;SOURCE: ad5.frm
}
 
py9 {
  z=pixel, n=real(pixel*p1), m=imag(pixel*p1):
  x=fn1(n*e), y=fn1(m*pi)
  x1=fn2(x+whitesq), y1=fn2(y+whitesq)
  z=fn3(flip(x1)^flip(y1))+(fn4(x+y)-(n^m))
  |z|<4
  ;SOURCE: ad5.frm
}
 
xp6 {
  z=(pixel*log(real(p2)+imag(p3))+1)/fn4(1-pixel):
  z=fn1(z+whitesq)+fn2(z/log(z))
  a=cotan(1-(pixel))
  z=fn3(pixel/a+z)*p1/(a+z)
  |z|<4
  ;SOURCE: ad5.frm
}
 
xp8 {; Edited for Fractint v. 20 by George Martin, 10/98
     ; Eliminated superfluous "e=real(z)". G. Martin 05/04/99
  z=pixel:
  a=real(z), b=imag(z+p1), c=real(z-p2)
  d=imag(z), f=imag(z+p3)
  g=fn4(a+c)/(b+d)
  b=-fn2(b+f) 
  z=a/fn3(g+whitesq)
  |z|<4
  ;SOURCE: ad5.frm
}
 
zx2 {
  z=pixel, f=(fn1(z)+fn2(p1*z))
  b1=abs(real(p2)), x=fn3(b1+whitesq):
  z1=fn4(f+(sin(x*tan(z))))
  z2=fn1(z+whitesq)-(p2*(f+cos(z)))
  z=fn4(z2+(sin(z1)))
  |z|<4
  ;SOURCE: ad5.frm
}
 
zx3 {
  z=pixel, f=(fn1(z)+whitesq)+(fn2(p1*z))
  b1=conj(imag(p2)), x=fn3(b1):
  z1=fn4(f+(sin(x*tan(z))))
  z2=fn1(z+whitesq)-(p2*(f+cos(z)))
  z=fn4(z2+(fn4(z1)))
  |z|<4
  ;SOURCE: ad5.frm
}
 
zx6 {
  z=pixel, f=(fn1(1-z)*1/fn2(p1*z))
  b1=sqr(z*(p2)), x=fn3(b1+whitesq):
  z1=fn4(z*(sin(x*tan(z))))
  z2=fn1(z+whitesq)-(p2*(f+cos(z)))
  z=fn4(z2*(1/sin(b1)))
  |z|<4
  ;SOURCE: ad5.frm
}
 
-b009 {
  z=fn1(fn2(1/pixel)), c=fn2(fn1(pixel)), c1=z/c^c/z:
  z=z/c1
  z=fn3(z-(z^c1))/(c*c-pixel)
  |z|<=4
  ;SOURCE: new.frm
}
 
-c006 {; Revised by George Martin for Fractint v. 20
       ; Original used an undefined variable "imag"
  z=pixel, c1=(fn3(1/z+1)^fn4(1))/2:
  z=(fn1(z^22)+fn2(z^7))^c1
  |z|<=4
  ;SOURCE: new.frm
}
 
=00 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel, x=fn3(pixel)/3.14189
  y=fn4(pixel)^3.14189
  a=(z^22)/x, b=(z^7)/y:
  z=(fn1(a^b))+(fn2(b^a+b))
  |z|<=4
  ;SOURCE: new.frm
}
 
=01 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel, x=fn3(pixel)
  y=fn4(pixel)^3.14189
  a=(z^22)+x, b=(z^7)+y:
  z=(fn1(a^b))+(fn2(b^a+b)) 
  |z|<=4
  ;SOURCE: new.frm
}
 
=05 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel
  x=fn1(tan(z))+pixel
  y=fn2(cotan(z))+(pixel^pixel)
  l=(x^y)^22:
  z=fn1(x)*fn2(y)*fn3(l) 
  |z|<4
  ;SOURCE: new.frm
}
 
a-00-a3 {; Revised 4/27/96 to eliminate reference to
         ; unitialized variable "i".
         ; Original formula may be discarded.
  c=z=pixel, c=fn1(1.6180339):
  z=fn2(z^2)+flip(c)
  |z|<=4
  ;SOURCE: new.frm
}
 
a-0a-a2 {
  z=pixel, c=fn1(1.6180339):
  z=(fn2(z^p1)+fn3(z^c))
  |z|<=4
  ;SOURCE: new.frm
}
 
a-0a1 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  z=pixel, y=z^fn1(1-z), x=(z^z)/(z-p1): 
  z=fn3(z^fn4(y))*fn2(z*(1/x))
  |z|<5
  ;SOURCE: new.frm
}
 
a-a2 {
  z=pixel, c=fn1((5+1)/2):
  z=fn2(z^4+c)
  |z|<=4
  ;SOURCE: new.frm
}
 
a00-02 {; Revised 4/27/96 to change unitialized variable "i" to 0
        ; Original formula may be discarded.
  z=pixel, x=|(z+1)^1.6180339|:
  z=fn1(z/0)+fn2(x)
  a=z+1
  z=fn1(a)+tan(z)
  |z|<=4
  ;SOURCE: new.frm
}
 
a0a01 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  z=pixel, x=-pixel, y=real(-pixel):
  a=(z^22)+x
  b=(z/7)+y
  z=fn1(a+b)+fn2(a^b)
  |z|<=4
  ;SOURCE: new.frm
}
 
a0a02 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  c=z=pixel, a=abs(z^22), b=real(z^7), d=flip(a/b):
  z=fn1(a+b)+fn2((a/b)^fn3(d))
  |z|<=4
  ;SOURCE: new.frm
}
 
a0a03 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  z=pixel, x=fn3(pixel), y=fn4(pixel), a=(z^22)+x, b=(z^7)+y:
  z=(fn1(a/b))+(fn2(a^b))
  |z|<=4
  ;SOURCE: new.frm
}
 
a0a07 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  z=pixel:
  z=(fn1(z)/7)^fn2((z)^22)
  |z|<4
  ;SOURCE: new.frm
}
 
a0a08 {; Revised 4/27/96 to eliminate superfluous "+c"
       ; Original version of this formula may be discarded
  z=pixel:
  z=(fn1(z)/7)^fn2((z)/22)
  |z|<4
  ;SOURCE: new.frm
}
 
a0b1 {; Revised 4/27/96 to replace z^(e*i) with 1.
      ; Original formula may be discarded.
  z=pixel, x=fn3(p1+real(z+1)):
  z=fn1(1-fn2((z)^x))
  |z|<4
  ;SOURCE: new.frm
}
 
ac3 {
  c=z=pixel:
  z=(sin(z-1)*fn1(z+1))^tan(z+pixel)/cos(pixel)*sin(z)+c
  |z|<4
  ;SOURCE: ad1.frm
}
 
af4 {
  z=pixel, c=fn1(z)/fn2(z)*z:
  z=(fn3(z))/(cos(z+1))*log(z)+c
  |z|<4
  ;SOURCE: ad1.frm
}
 
ag9 {
  z=c=pixel, y=cos(z), x=1/fn1(y-1):
  z=(fn2(y^x)*fn3(z))*fn4(x)+c
  |z|<4
  ;SOURCE: ad1.frm
}
 
an7 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel:
  z=fn1((z^z)*fn3(z*z)/p1)/fn2(imag(z+p2))
  |z|<4
  ;SOURCE: new.frm
}
 
ao6 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel:
  z=fn1(z-1)^fn3(p2)+p1 
  |z|>4
  ;SOURCE: new.frm
}
 
as2 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel:
  z=(tan(z-(log(z-1)))*2.3453)/fn1(z+p1)+fn2(z+p2)
  |z-1|<4
  ;SOURCE: new.frm
}
 
cc3 {; Revised 4/27/96 to eliminate superfluous "+c"
     ; Original version of this formula may be discarded
  z=pixel, m=(z+1)+z, n=(z-1)+z
  x=srand(z), y=fn4(|z-1|^(x)):
  z=(fn1(m)*fn2(y^(n^z)))/fn3(x+1)+fn4(y)
  |z|<=4
  ;SOURCE: new.frm
}
 
s8 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
  z=pixel, t=fn3(pixel*1/z)/cosxx(z-1):
  z=fn1(pixel/(t*t))/fn2(z^t)
  |z|<=p1
  ;SOURCE: new.frm
}
 
t5 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
  z=pixel: 
  z=fn3(7/pixel)^(pixel*(1/pixel)), t=fn4(1/pixel)^(22/(1/pixel))
  z=fn1(z^1/z)*fn2(t^1/t)
  |z|<=4
  ;SOURCE: new.frm
}
 
t6 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
  z=(pixel^(1/tan(pixel^p1)))^(fn1(pixel^(1/pixel^p2))):
  z=fn2(z^fn3(1/z^2.5878))
  |real(z)|<=4
  ;SOURCE: new.frm
}
 
t7 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
  z=(pixel^(1/tan(pixel^p1)))^(fn1(pixel^(1/pixel^p2))):
  z=fn2(z^fn3(1/z^2.5878))
  |z|<=4
  ;SOURCE: new.frm
}
 
u0 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
  z=pixel, m=fn3(tan(pixel)), n=fn4(pixel):
  t=(cotan(z^p1))+fn1(z/p2)
  z=(fn1(t*1/n))+fn2(t*1/m)
  |z|<=4
  ;SOURCE: new.frm
}
 
u4 {
  z=pixel, t=fn1(z^(2.2)), u=sin(z*z/(z+.2)), n=flip(z-real(log(z))):
  z=(fn2(z*z/(z+.2))/asin(z-flip(log(z))))^fn3(t+u+n)
  |z|<=4                         
  ;SOURCE: new.frm
}
 
y9 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=pixel, m=fn3(tan(1.9^pixel)), n=fn4((0,1.9)*pixel):
  t=(cotan(z^p1))+sqr(z/p2)
  z=(fn1(t*1/m))+fn2(t*1/n)
  |z|<=4
  ;SOURCE: new.frm
}
 
z0 {; Revised 4/27/96 to eliminate superfluous "+c"
    ; Original version of this formula may be discarded
  z=pixel, u=tan(z+1)/real(z^(pixel/2)), t=imag(real(tan(z^2))):
  z=(fn1(u)^fn2(t))+fn3(u+t)
  |z|<=4
  ;SOURCE: new.frm
}
 
