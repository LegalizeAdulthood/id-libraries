ep13{
z=pixel,d=real(z*(1/p1)):
z=(fn3(fn1(z+(d)+whitesq)+fn2(z*(z^p3/d)))/fn4(z))+whitesq
|z|<4
}

eh2{
z=pixel:
z1=fn1(sin((z^2)))+1
z2=(fn4(z^2)+whitesq)-1
z=((fn2((z1)*fn3(z2))))
|z|<p1
}

axi3{
z=pixel,o=(z+whitesq):
z=fn1(o+(fn1(fn2(z)/fn3(z)^p1)))
|z|<=4
}

axi2{
z=pixel:
z=fn3((z-1)*1/fn1(1/z))^fn2(z+whitesq)
|z|<=4
}

jmat2{
z=g=pixel:
a=real(p1),b=imag(p1),c=real(p2),d=real(p3),e=imag(p3)
h=fn1(z^a)/fn2(g-1/-e)
j=fn3((c*z)^(d+g))
z=fn4(z*j)+whitesq
|z|<4
}

axi1{
z=pixel:
z=(fn1(z+(z+whitesq))/fn2(z)^2)-p1
|z|<=4
}

zx6{
z=pixel,f=(fn1(1-z)*1/fn2(p1*z))
b1=sqr(z*(p2)),x=fn3(b1+whitesq):
z1=fn4(z*(sin(x*tan(z))))
z2=fn1(z+whitesq)-(p2*(f+cos(z)))
z=fn4(z2*(1/sin(b1)))
|z|<4
}

pr23{
z=pixel,c=fn3(pixel+whitesq):
n=(fn1(z-2)+fn2(c-1))+c
z=(p1*1/tan(n*n))/cos(n*n*n)+whitesq
|z|<4
}

zx3{
z=pixel,f=(fn1(z)+whitesq)+(fn2(p1*z))
b1=conj(imag(p2)),x=fn3(b1):
z1=fn4(f+(sin(x*tan(z))))
z2=fn1(z+whitesq)-(p2*(f+cos(z)))
z=fn4(z2+(fn4(z1)))
|z|<4
}

pif172{
   z=ixel:
   z1=fn1(z*p3)/p1
   z2=fn2(z)*p2/p1
   z3=fn3(z1)+fn4(z2)
   z=(z3+whitesq)+(z)
   |z|<4
}

px1{
z=pixel,t=fn1(real(z+p3)),x=z+(z/pi),y=z+(z/pi):
x=(x*p1)
y=(y*p2)/pi
z=fn4(x-1)+fn3(y)
z=(fn2(whitesqr==0)*x)-(fn3(whitesqr)+z)
|z|>=4
}

pr24{
z=pixel:
a=fn1(real(pixel)*abs(pixel)),
a=fn1(real(whitesq)*abs(pixel)),
b=fn2(1/sinh(z+whitesq))
n=(z*fn3(a+b))/(whitesq)*(z+1)
t=log(pixel-2)*fn3(z)
z=fn1(t+whitesq)+fn3(n)
|z|<4
}

zx2{
z=pixel,f=(fn1(z)+fn2(p1*z))
b1=abs(real(p2)),x=fn3(b1+whitesq):
z1=fn4(f+(sin(x*tan(z))))
z2=fn1(z+whitesq)-(p2*(f+cos(z)))
z=fn4(z2+(sin(z1)))
|z|<4
}

jix1{
z=pixel,c=whitesq+(z-1):
z1=fn2(c)*p1
z=(z1/fn1(z*fn4(z*p2)))
|z|<4
}

jmx6{
z=pixel:
z1=tan(fn4(cos(z)))
a=fn2(z1*p1)
z=(fn4(a))*fn1(p2/(a-whitesq)+1/z1)
|z|<4
}

xp8{
z=pixel:
a=real(z),b=imag(z+p1),c=real(z-p2),d=imag(z),e=real(z),f=imag(z+p3)
g=fn4(a+c)/(b+d)
b=fn1(c*a)^-fn2(b+f)
z=a/fn3(g+whitesq)
|z|<4
}

xp6{
z=(pixel*log(real(p2)+imag(p3))+1)/fn4(1-pixel):
z=fn1(z+whitesq)+fn2(z/log(z))
a=cotan(1-(pixel))
z=fn3(pixel/a+z)*p1/(a+z)
|z|<4
}

jma10{
z=pixel:
x=fn1(1-(p1/z))
y=fn2(1+(p2/z))
x1=(y*y-x*x)+(2*(x+y))
y1=2*x*y-(2*(x+y))
x2=1/x*1/x,y2=1/y*1/y,x3=x2*x,y3=y2*y
a=real(p1),b=imag(p1)
z=fn3(x3+(y3/z)-1)/(z*(a+b)+whitesq)
|z|<4
}

pr27{
z=pixel:
z1=fn3((z/.5)*pixel)
z=(fn2(z1*real(1-z1))*fn1(1/imag(z1-1)))+whitesq
|z|<4
}

pr31{
c=z=pixel,t=(fn1(pixel+whitesq)+1):
z=fn4(fn2(t)/real(fn3(z*whitesq)))+c
|z|<4
}

pr18{
z=pixel,t=tan(fn1(z)*cos(z))^exp(fn2(z)*cotan(z))^fn3(z):
z1=fn1(whitesq*t)-1
z=(z1*fn2(z+z/1-whitesq))*t
|z|<4
}

pr19{
z=pixel,t=z/1-(whitesq):
z=fn1((z+whitesq)*(p1))
z1=fn1((z*p1))
z2=fn1((z1/p2))
z3=fn1((z2-p2))
z=(z3*fn2(z2+z1))/t
|z|<4
}

pr15{
z=c=pixel:
z=fn1((z+whitesq)*(p1))
z1=fn2((z+whitesq)*real(p1))
z2=fn3((z1+whitesq)*(p2))
z3=fn4((z2+whitesq)*real(p2))
z=(z3*(z2+z1))/c
|z|<4
}

py12{
z=pixel:
x=fn1(z-p1)/pi,y=fn1(z-p2)/e
x1=fn2((x*y)^1/z)+whitesq,y1=fn2((x*y)/whitesq)
z=fn3((x1)+fn4(y1))
|z|<4
}

py9{
z=pixel,n=real(pixel*p1),m=imag(pixel*p1):
x=fn1(n*e),y=fn1(m*pi)
x1=fn2(x+whitesq),y1=fn2(y+whitesq)
z=fn3(flip(x1)^flip(y1))+(fn4(x+y)-(n^m))
|z|<4
}

py4{
c=pixel,z=fn1(pixel):
z=fn1(fn2(z))+(fn3(c)/whitesq)
c=fn4(flip(c)+conj(z))
|z|<=4
}

py3{
c=pixel,z=fn1(pixel)+(1-pixel):
z=fn4(fn2(z)+whitesq)+fn3(c/whitesq)
c=p1-conj(flip(c))
|c|<=4
}

py7{
z=pixel,:
z=(fn1(z+tan(real(whitesq))))*fn2(((22/7))+(z))/(whitesq-1)
z=fn1(pixel*z)/fn4(real(z+(whitesq)))
|z|<=4
}

nepz1{
z=pixel,a=fn1(z-p2),b=(a*z)-(fn2(z/p1)/sin(z)):
IF (fn1(a)<fn2(1/b)*p2)
z=(fn3(fn1(a)+fn2(b-(z^p3/z))))+whitesq
endif
IF (fn1(b)<fn2(1/(a+p1)/p3))
z=(fn3(fn1(a)+fn2(b-(z^p3/z))))
endif
z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
|z|<4
}

pxa0b4{
z=pixel:
n=(log(z*p1)/p2)+(fn4(z+1)/2)+whitesq
z=(fn1(n)+(fn2((.02,1.1)+(n-z))/z-1))*fn3(tan(z)/whitesq)
|z|<p3
}

nepz0{
z=pixel,a=fn1(z-p2),b=(a*z)-(fn2(z/p1)/sin(z)):
z=(fn3(b+(z-p2)))+fn4(a+whitesq)
IF (fn1(a)<fn2(1/b)*p2)
z=(fn3(fn1(a)+fn2(b-(z^p3/z))))+whitesq
endif
IF (fn1(b)<fn2(1/(a+p1)/p3))
z=(fn3(fn1(a)+fn2(b-(z^p3/z))))
endif
z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
|z|<4
}

ep20{
z=pixel,a=cotan(z)^p2,b=z*(p1-tan(z/p3)):
IF ((a)<fn2(z/p2))
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
endif
z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
|z|<=4
}

ep20z7 {
IF ((p1) == 0)
p1 = (.03,1.1)
ENDIF
IF ((p2) == 0)
p2 = (1.28,.2)
ENDIF
z = pixel, c = pixel, done = 5, il2 = 1/log(2.0), lp = log(log((p2))):
z2 = sqr(z)
z = z2 + c
done = done -tan(z)
IF (|z| > (p2))
z = (done + 2*il2*lp - il2*log(log(cabs(z)))) * (p1) - done
done = fn4(z-1)+whitesq
ENDIF
done >= 4
}

ep20z1{
z=pixel,a=cotan(z)^p2,b=z*(tan(z/p3)):
IF (fn1(a)<=fn2(b/p2)/p3)
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
endif
if (fn1(b)/p2<=fn2(a/p3))
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
endif
z=(fn3(fn1(z+(a)+whitesq)*fn2(b*(z/a))))
|z-1|<4
}

ep20z3{
z=pixel,a=cotan(z)^p2,b=z*(tan(z/p3)):
IF (fn1(a)<=fn2(b/p2)/p3)
z1=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
endif
if (fn1(b)/p2<=fn2(a/p3))
z1=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
endif
z=(fn3(fn1(z1+(b))+fn2(b*(z/a))))
|z|<4
}

ep17ax{
z=pixel,a=cotan(z)^p2,b=z*(p1-tan(z/p3)):
IF(fn1(a)<=fn1(b-p2))
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSEIF(fn1(b)<=a/p3)
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSE
z=(fn3(fn1(z*(a)+whitesq)*fn2(b/(z^p3/a)))/fn4(z))
ENDIF
|z|<4
}
ep20z0{
z=pixel,a=cotan(z)^p2,b=z*(p1-tan(z/p3)):
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
|z-1|<4
}

ep15{
z=pixel,a=cotan(z)^p2,b=z+(p1-tan(z/p3)):
IF(a<=b-p2)
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSEIF(b<=a/p3)
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSE
z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
ENDIF
|z|<=4&&|z-1|<(4+p3)
}

ep20z{
z=pixel,a=1-cotan(z)^p2,b=z*(p1-tan(z/p3)):
IF (fn1(a)<=fn2(b/p2))
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
endif
if (fn1(b)<=fn2(a/p3))
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
endif
z=(fn3(fn1(z+(a)+whitesq)*fn2(b*(z/a)))/fn4(z))+whitesq
|z-1|<4
}

ep14ix{
z=pixel:
a=(cos(z)/p2),b=z*(p1-tan(z/p3))
z=(fn3((fn1(a*b+(whitesq))+fn2(a*b-(z^p3/z))))/1-fn4(z-1))
|z|<4
}

ep19x{
z=pixel,a=cotan(z)^p2,b=z*(p1-tan(z/p3)+whitesq):
IF (fn1(a)<fn2(1/b)*p2)
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
endif
IF (fn1(b)<fn2(1/(a+p1)/p3))
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z))
endif
z=(fn3(fn1(z+(a)+whitesq)*fn2(b+(z^p3/a)))/fn4(z))+whitesq
|z|<4
}

ep17{
z=pixel,a=cotan(z)^p2,b=z*(p1-tan(z/p3)):
IF(fn1(a)<fn2(b-p2))
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSEIF(fn1(b)<fn2(a/p3))
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSE
z=(fn3(fn1(z*(a)+whitesq)*fn2(b-(z^p3/a)))/fn4(z))
ENDIF
|z|<4
}

ep14d{
z=pixel,a=z/(p1*tan(z/p3)):
z=(fn3(fn1(a/conj(z+(whitesq))+fn2(p2-(a+z/p3))*fn4(z))+whitesq))
|z|<4
}


ep14c{
z=pixel:
z=(fn3(fn1(z)+fn2(z-(z^p3/z)))/fn4(z))+whitesq
|tan(z-1)|<4
}

ep14i{
z=pixel,a=cos(z)^p2,b=z+(p1-tan(z/p3)):
z=(fn3((fn1(a*b)+fn2(a*b-(z^p3/z))))/fn4(z-1)+whitesq)
|z|<a
}

phfx2{
z=pixel,l=whitesq+(z*p1):
a=1+(fn1(z-1))/tan(l)-fn4((z+2)*p2)
b=fn2(fn1(l))+log(l)-(fn3(l*p2)*z)/log(z)
z=((fn1(a))*1/(z))*fn3((b)*p2)-cotan(log(z))+whitesq
|z|<p3
}

phif5{
z=pixel,i=real(z+whitesq):
IF(itirate)
z=(fn1(z-1)+whitesq)+(pixel)>(z*(i*p1))
ELSE
z=(fn2(z+whitesq)*p2)/cos(pixel)+((i*p1)/2)
ENDIF
z=(fn3(z+whitesq)/p3)+fn4(tan(z-1)-p2)/whitesq
|z|<4
}

phif4{
z=pixel,it=fn2(z)*((22/7)+p1):
IF(itirate)
z=(fn1(z-1)+whitesq)+flip(pixel)>fn3(it*p2)
ELSE
z=((fn2(z-whitesq)*p2)/cos(pixel))+((it)*p1)
ENDIF
z=(fn3(z+whitesq)/p3)+(fn4(tan(z)-p2))
|z|<4
}

phif0{
z=pixel,it=22/7:
IF(itirate)
z=(fn1(z-1)+whitesq)+flip(pixel)>it+p1
ELSE
z=(fn2(z-whitesq)*p2)/cos(pixel)+((iter)+p1)
ENDIF
z=(fn3(z+whitesq)/p3)+fn4(tan(z)-p2)
|z|<.000001
}

phxx{
z=pixel,b=iter+1,iter=real(z)+p1,c=(fn1(z+b)+whitesq),d=(fn4(z+p1)*p2):
z=fn2(c)+fn3(c-z)
|z|<4
}

pif171{
z=pixel:
z1=fn1(z*p3)/p1
z2=fn2(z)*p2/p1
z3=fn3(z1)+fn4(z2)
z=(z3+whitesq)+(z)
|z|<4
}

pif9{
z=pixel:
z1=((fn1(z-1)*fn2(z))+p3)/p3
z2=((fn2(z+1)*fn1(z))+p3)/p3
z=real(fn3((z1+whitesq)+fn4(z2)))*fn4((z2+whitesq)+fn3(z1))
|z|<4
}

pif16{
z=pixel:
z1=(z+whitesq+(fn1(z)/(fn2(z))^p2)/p1)
z2=(z+whitesq)*(fn1(1/z)^p2)/p3
z=fn3((z2+1)-fn4(z2))*1/(fn4(z2)+fn3(z1))
|z|<4
}

jx2{
z=pixel,x=|(z+1)^1.6180339|:
z=fn1(z)+fn2(x)
a=z+1
z=fn1(a)+tan(z)
|z|<=4
}

ep16{
z=pixel,a=cotan(z)^p2,b=z/(p1-tan(z/p3)):
IF(a<=b-p2)
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSEIF(b<=a/p3)
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSE
z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
ENDIF
|z|<=4
}

ep17{
z=pixel,a=cotan(z)^p2,b=z*(p1-tan(z/p3)):
IF(fn1(a)<fn2(b-p2))
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSEIF(fn1(b)<fn2(a/p3))
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSE
z=(fn3(fn1(z*(a)+whitesq)*fn2(b-(z^p3/a)))/fn4(z))
ENDIF
|z|<4
}

pr12{
z=c=pixel:
z=(fn1(z)+whitesq)^fn2(1/p3*(z*z*z)*(c/p1)/fn3(p2))
|z|<4
}

pif17{
z=pixel:
z1=(fn1(z-1))
z2=(fn3(z1+fn4(z-p1/(z-1)))/fn4((z2)-p2/fn3(z1)))
z=fn3((z1+z)-fn4(z2-1))*1-fn4((z2)+fn3(z1)-whitesq)
|z|<4
}

jix2{
z1=pixel,f=fn1(z1)
b1=abs(real(p1)),x=fn2(b1)
k=real(p1)*(p2):
w=(f-w)+whitesq
u=b1-whitesq
z1=w+u
z2=fn4(k+(sin(u+tan(z))))
z3=fn2(x+whitesq)-(p2*(u+whitesq)+cos(z))
z=fn4(z1+(sin(z2+tan(z))))
|z|<4
}
