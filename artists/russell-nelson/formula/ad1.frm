a0a{
z=pixel,y=fn1(z-1)/fn2(z-1):
z=fn3(y^2)^fn4(y-z)+c
|z|<4
}

at0{
z=pixel,x=(z-1)*fn1(z+1),y=(z/2)*fn2(z-1):
z=fn3(y)^fn4(x*tan(z))+c
|z|<4
}

a1{ 
z=pixel,x=log(z),y=cos(z)*(cos(z+sqrz)*z),v=(z*(z+1)/exp(z))^cosh(x):
z=(z*fn3(y)/fn1(z)^fn4(v))^fn2(x)+c;
|z|<=4
}

an6{
z=pixel:
z=((fn1(z)^p1)/fn2(abs(z+p2))*fn2(z)+c)
|z|<4
}

as8{
z=pixel,x=i-pixel,y=pixel/z-p1:
z=fn1(pixel*fn2(pixel^log(z+x)))/fn3(fn4(z*y))+c
|z|<50
}

av3{
z=pixel,y=z-1/(z*z),x=z+1:
z=fn1(tan(fn3(z-1))*fn4(cotan(y)))/fn2(x)+c
|z|<4
}

au9{
z=pixel,y=sin(tan(exp(z-1))),x=cos(cotan(z-1)):
z=fn4(z-1)^(fn3(x)^fn2(y))*fn1(y*x)+c
|z|<4
}

av0{
z=pixel,y=exp(cos(z)),x=log(cos(cotan(z-1))):
z=fn4(z-1)^(fn3(x)^fn2(y))*fn1(y*x)+c
|z|<4
}

at4{
z=pixel,y=fn4(z-1)^fn1(z),x=(z-1)*fn1(z+1),t=(z/2)*fn2(z-1):
z=fn4(fn2(z^y)/fn3(x^t))^fn4(t^z)+c
|z|<4
}

av5{
z=pixel,y=(pixel)/fn4(z-1):
z=fn1((z)^fn2(y)+fn3(z))+c
|z|<4
}

ac5{
c=z=pixel:
z=((cotan(z)*real(z))^1/fn1(z)/fn2(imag(z))*fn3(z+1)+c)
|z|<4
}

ac3{
c=z=pixel:
z=(sin(z-1)*fn1(z+1))^tan(z+pixel)/cos(pixel)*sin(z)+c
|z|<4
}

aa4{
z=pixel:
z=(((cos(z)/fn1(z))*fn3(z))*(fn2(z)/fn4(z)))+c;
|z|<=4
}

aj2{
z=pixel,c=z-y,y=3.14:
z=(fn2(z*y)/log(exp(fn1(z)*fn3(z*z)))*fn4(z)+c)
|z|<4
}

ag9{
z=c=pixel,y=cos(z),x=1/fn1(y-1):
z=(fn2(y^x)*fn3(z))*fn4(x)+c
|z|<4
}

af4{
z=pixel,c=fn1(z)/fn2(z)*z:
z=(fn3(z))/(cos(z+1))*log(z)+c
|z|<4
}

ad2{
c=z=pixel:
z=((fn1(z)*flip(z))^1/(flip(z)*fn2(imag(z))/fn3(z+1)+c))
|z|<4
}

ae7{
z=pixel:
z=(fn1(z+1)+fn2(z+2))*fn3(z+3)^2+c
|z|<4
}

ab3{
z=c=2/pixel:
z=fn1(z^2)*fn2(c^3)+c,
|z|<=4
}

a2{
z=pixel,x=i-pixel,y=1-(i-pixel):
z=cosxx(fn1(z*x)*fn2(z^(fn3(z/y))))/(z+p1)*fn4(x*y)+c
|z+p1|<25
}

a1{
z=pixel,x=i-pixel,y=1-(i-pixel):
z=cosxx(fn1(z*x)-fn2(z^(fn3(z*y))))/z*fn4(x*y)+c
|x|<25
}

a-03{
z=pixel,x=fn3(z-1)/fn4(1/z+1):
z=(fn1(z^2)/x)^(fn2(x^3))/(z+1)+c
|z|<4
}

a007{
z=c=pixel,x=fn3(z-1)/2,y=fn4((1/z-1)*(1/z-1))^z:
z=(fn1(z+1)^x)/fn2(1/y)+c
|z|<55
}

a-09{
z=pixel,x=fn3(z-1)^(1/z+c):
z=(fn1(z^x)/x-2)^(fn2(x^3)/fn4(z-1));
|z|<4
}

alabe{
z=pixel,x=srand(z)==9.52,y=fn4(|z-1|^fn2(x)):
z=(fn1(z^2)^fn2(y^(y/z)))/fn3(x+1)+c
|z|<=4
}

a1ab4{
z=b=pixel,b1=fn1(y),b2=fn1(1/b1+p1),b3=fn1(b1+p2)^2:
z=fn3(z+c)
b=fn4(z-1),y=fn2(1/b)*z,
|z|<4
}

a0006{
z=pixel,x=(z/p1-1),y=(z/p2-1):
z=fn3(z^x)/fn4(z/y)*fn1(c-x)^fn2(c-y)
|z|<4
}

a008{
z=c=pixel,x=(3.14/z)^2,y=((3.14/z)*(3.14/z))^z:
z=(fn1(z-1)^x)/fn2(1/y)+c
|z|<55
}

a009{
z=c=pixel,x=fn3(3.14/z)^2,y=fn4((3.14/z)*(3.14/z))^z:
z=(fn1(z-1)^x)/fn2(1/y)+c
|z|<55
}

ab4{
z=c=2/pixel:
z=fn1(1/(fn2(z^(real(p1)))*fn3(c^fn4(real(p2))))*c)+c,
|z|<4
}

a006{
z=c=pixel,x=fn3(p1/z)^2,y=fn4((p1/z)*(p1/z))^z:
z=(fn1(z+1)^x)^fn2(1/y)+c
|z|<55
}

e5{
z=pixel,x=(z)^(y-1),y=fn2(z)*fn4(z+1)
z=((fn1(x)*(y))/fn3(z+x))+c
|z|<4
}

ab1{
z=x=1/pixel,c=fn1(z):
z=fn2(x+c)*fn3(x-c)
x=fn4(z),
|z|<=4
}

c9{
z=pixel,x=fn1(1/(z*tan(z+1)))*fn2(1/z+1):
z=(fn3(x)/fn3(z))*fn4((x/z)+c)
|z|<4
}

c5{
z=pixel,x=fn3(1/z+1),y=fn4(1/z-1):
z=(fn1(z/x)*fn2(z/y))+c
|z|<4
}

c3{
z=pixel,f=(fn2(fn1(z-1/pixel))):
z=fn3(z/exp(z+1))*fn4(f)+c
|z|<4
}

a0b5{
z=pixel:
z=fn1(z^(e*(1/fn3(-1))-fn2((z+1)^e)))+c
|z|<4
}

a0b0{
z=pixel:
z=fn1(z^(e*(1/sqr(-1))-fn2((z+1)^e)))+c
|z|<4
}

aaa4{
z=pixel,x=fn1(z+1),a=p1,b=p2,y=fn2((z)^(z-1)):
z=(fn3(y)^fn4(z-p2))-fn4(fn1(x)/tan(z-p1))+c
|z|<=8
}

a4{
z=pixel,x=sin(i-pixel),y=1/(i-pixel):
z=cosxx(fn1(z*x)*fn2(z^(fn3(z*y))))/|z+p1|*fn4(x*y)+c
|z|<25
}

a3{
z=pixel,x=fn4(i-pixel),y=1/(i-pixel):
z=cosxx(fn1(z*x)*fn2(z^(fn3(z*y))))/|z+p1|*(x*y)+c
|z|<25
}

aaa7{
z=pixel,x=fn4(1/z*1/z),y=fn4(x-fn3(z+p1)):
z=(fn1(x+y)^1/fn3(z))-fn2(y/x)+c
|z|<=25
}

ab1{
z=x=1/pixel,c=fn1(z):
z=fn2(x+c)*fn3(x-c)
x=fn4(z),
|z|<=4
}
ap1 {
  z=pixel, x=(z+p1)/fn3(z), y=(z+p2)*fn4(z):
  z=fn1(1/z+p1)*fn2(z+p2)
  |z|>4
  ;SOURCE: ad1_miss.frm
}
a1ab3 {
  z=pixel, b=fn1(x*y)
  x=fn4(z-1), y=fn2(1/z):
  z=fn3(b*y)^(z*log(x))
  |z|<=6
  ;SOURCE: ad1_miss.frm
}
a0009 {
  z=pixel, y=z^fn1(1-z), x=(z^z)/3.141591:
  z=fn3(z^fn4(y))*fn2(z*(1/x))
  |z|<5
  ;SOURCE: ad1_miss.frm
}
aaa6 {
  z=pixel, x=fn1(z+1), c=fn2(c+p1):
  z=(fn3(z^fn4(z-x))+c)+c
  |z|<=8
  ;SOURCE: ad1_miss.frm
}
aaa1a {
  z=pixel, x=fn1(z+1)*whitesq, c=fn2(z*(1/pixel)):
  z=fn3(z*fn4(c-x))+c
  |z|<=8
  ;SOURCE: ad1_miss.frm
}
ai5 {
  z=pixel, y=1/pixel, c=(z)/fn1(z+1):
  z=(exp(z)/fn3(z*z))*fn2(y)+c
  |z|<4
  ;SOURCE: ad1_miss.frm
}
