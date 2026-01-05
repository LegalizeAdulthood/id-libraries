phcab2z{
z=(pixel):
p=fn2((whitesqr)/sin(1/z))
u=fn3(p-z)+whitesq
z=((fn1(u)/p2))*((whitesq)*(z-1))
|z|>=4
}
phcab2{
z=(pixel)
t=fn2((whitesqr)+(z-realz)):
z=(1/(fn1(whitesq))+(z*fn3(t)))*fn4(t^z-p1)/p1
|z|>=4
}
phcxa8{
  countreset = (count < 1024)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  pixel = evenodd * pixel + oddeven * -pixel
   z = pixel:
   x = flip(pixel + fn1(p1/z - z/(p2+1)));
   z = x*z + p3
   |z| >=4
   }
phcxa9{
  countreset = (count < 1024)
  count = count * countreset
  evenodd=(evenodd < 1)*(count != 0)*countreset + (countreset == 0)*evenodd
  oddeven = (evenodd < 1)
  count = count + 1
  pixel = evenodd * pixel + oddeven * -pixel
  z=real(pixel)+flip(imag(pixel)),
  c=fn1(p2+real(p3)+flip(imag(p3)*p1)):
  z=fn2(z*(c-1))*fn3(z-c)
  |z|>=4
  }
phcad3{
z=pixel
t=(whitesq+(p1)+(p2)*(whitesq==0)):
z=fn1(t-(fn3(z+1)))*fn2(z)-1
|real(z)|>=4
}
phcad2{
z=pixel:
t=1-(z*(whitesq==0)*(p2))
z=fn1(t-(fn3(z+1)))*fn2(z)
|(z)|>=4
}
phcab3{
z=(pixel):
t=1-(z*(whitesq==0)*(p2))
u=fn1(t-(fn3(z+1)))*fn2(z)
z=((fn1(u)+p2))+(pixel/p3)
|z|>=4
}
adr4{
z=pixel:
pixel=whitesqr*fn1((pixel))/(whitesqr==0)
z=(fn3(pixel+fn4(pixel)))
|z|>=4
}
adr4x{
z=pixel:
pixel=(whitesqr!=0)*fn1((3.14,0))
z=(fn3(z+fn4(pixel)))
|z|>=4
}
g1{
z=pixel,t=fn1(z/1-z/p1)*(1-z+p2):
z=z-fn2(p3/z)+p3*(z)*(1-t)/fn3(t)
|z|>=4
}
l6{
z=pixel,z1=(1-pixel),y=fn4(1/z1),c=(y+y)^p1:
z=fn1(z)*fn2(z1+1)
z=(fn1((z1-2)/z+1)+(fn2(z1-1)))*1/(z1+z1) 
z=fn2(z1*y)/fn3(1/c-1)/fn3(z1*((y+z)))+(c*z)
|z|<4
}
i4{
z=pixel,x=fn1(pixel^conj(z^2)),y=fn2(z^(tan(z/pixel+pixel))):
z=fn3(x*x)*fn4(y/fn4(z+1))
|z|>=p1
}
j1{
z=pixel:
z=fn1(z-(log(1/z-1)*(|z|>((z-1)*p1))))*fn2(1/((1/z-1)*(z*((z-1)*p2))))
|z|>=4
}
kx02{
z=pixel,x=fn4(|(z+1)^1.6180339|/p1),i=imag(z)+p2:
z=fn1(i-pixel)+fn2(x)
a=z+(i^2)
z=fn1(a)+fn3(z)
|z|<=4
}
kx01{
z=pixel,x=fn4(|(z+1)^1.6180339|/p1),i=imag(z)+p2:
z=fn1(i-pixel)+fn2(x)
a=z+(1*i)
z=fn1(a)+fn3(z)
|z|<=4
}
n7{
z=pixel,t=1/fn1(z+p1)-real(z/p2)/(z*p3):
z=real(fn2(1-t)*fn3(1-z^z))*fn4(z/log(t))
z=(t-(z^t)*tan(t/z-1))+(sin(t-z)+log(t-z-1))
z=z+z
|z|>=4
}
n5{
z=pixel:
t=z-tan(pixel/2),p=22/7,n=conj(real(z/(t+z))),
o=cos((pixel+p))/fn3(t^-p)+fn4(t*((p^z))) 
z=fn2(t*z)/fn3(t^3)*(fn1(t*n/-fn2(z*t))-fn3(z-fn4(z-t))) 
|z|>=4
}
a23{
z=pixel:
z=pixel*fn1(cotan(fn1(z-(p3))))+(fn2(z/p1)*sin(whitesqr))+(whitesqr==0)
|real(z)|>=4
}
adr4{
z=pixel:
pixel=whitesqr*fn1((pixel))/(whitesqr==0)
z=(fn3(pixel+fn4(pixel)))
|z|>=4
}
h4{
z=pixel,t=1-fn1(1-z),n=1/fn2(z-1):
z=fn3(t+z)*fn4(n+t)-z
|z|>=4
}
t2{
z=pixel,t=1-(pixel)^1/sqr(1/sqrt(pixel)):
a=fn1(1/t^fn4(t))
z=fn2(1/a^3)^fn3(z)
|z|<=4+p1
}
xtest2 {
count=(count+1)*(count!=1023)
evenodd=(evenodd==(count==1))
oddeven=(evenodd==0)
z=c=pixel
t=|c|:
u=(t*z*z)+fn1(-(z*z*z)-1)
w=cotan(imag(sin(z)/(z+oddeven)))
z=(w/u)*evenodd+(z*z+p1)*oddeven
|z|<p2
}
