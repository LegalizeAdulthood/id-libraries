pn1{
z=pixel:
a=cotan(z)^p2,b=z*(fn1(z/p3))
IF (fn1(a)>fn2(b/p2)/p3)
z1=(fn3(fn1(z)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
endif
if (fn1(b)/p2>fn2(a/p3))
z1=(fn3(fn1(z)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
endif
z=(fn3(fn1(z1+(a)+whitesq)*fn2(b*(z/a))))
|z|<4
}
pn3{
z=((imag(flip(pixel))))+flip(imag(pixel)):
a=cotan(z)^p2,b=z*(fn1(z/p3))
IF (fn1(a)<=fn2(b/p2)/p3)
z1=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
endif
if (fn1(b)/p2<=fn2(a/p3))
z1=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
endif
z=(fn3(fn1(z1+(a)+whitesq)*fn2(b*(z/a))))
|z|<4
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
ep20z9 {; modified DAmien Jones frm
IF (real(p1) == 0)
p1 = 1
ENDIF
IF (real(p2) == 0)
p2 = 128
ENDIF
z = pixel, c = pixel, done = 0, il2 = p3/log(2.0), lp = imag(log(real(p2))):
z2 = log(z)
z = fn2(z2 + c)
done = fn3(done + 1)+whitesq
IF (|z| > real(p2))
z = (done + 2*il2*lp - il2*log(cotan(abs(z)))) * real(p1) - done
done = -1
ENDIF
done >= 0
}
ep18x{
z=pixel,a=cotan(z)^p2,b=z*(p1-tan(z/p3)):
IF(b<(z/p2)+a)
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSEIF(b<=z/p3+a)
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSE
z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
ENDIF
|z|<4
}
ep20z5{
z=pixel,a=(fn1((1-(z+1))*p2)/p3),b=fn2((cos(z+1)*p2)/p3):
IF(a<=(z/p2)^2)
z=(fn3(fn1(a-p1)+fn2(b-(z^p3/z)))*fn4(z)+whitesq)
ELSEIF(b<=((z/p3)^2)+(p1*2))
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))*fn4(z)+whitesq)
ELSE
z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))*fn4(z))+whitesq
ENDIF
|z|<=4
}
ep18y{
z=pixel,a=cotan(z)^p2,b=z*(p1-tan(z/p3)):
IF(b<(z/p2)+a)
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSEIF(b<=z/p3+a)
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSE
z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
ENDIF
|z|<=iter+(z+1)
}
ep18z{
z=pixel,a=cotan(z)/p2,b=z*(p1-tan(z/p3)):
IF(b>(z+p2)*a)
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
ELSEIF(b>z/p3*1/a)
z=(fn3(fn1(a/z-1)+fn2(b*(z+(fn2(1/z)*p3)/z)))/fn4(z)+whitesq)
ELSE
z=(fn3(fn1(z+(a)+whitesq)+fn2(b+(z^p3/a)))/fn4(z))+whitesq
ENDIF
|z|<4
}
ep19y0{
z=pixel,a=cotan(z)^p2,b=z*(p1-tan(z/p3)+whitesq):
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
ep20z0{
z=pixel,a=cotan(z)^p2,b=z*(p1-tan(z/p3)):
z=(fn3(fn1(a)+fn2(b-(z^p3/z)))/fn4(z)+whitesq)
|z-1|<4
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
pif16{
z=pixel:
z1=(z+whitesq+(fn1(z)/(fn2(z))^p2)/p1)
z2=(z+whitesq)*(fn1(1/z)^p2)/p3
z=fn3((z2+1)-fn4(z2))*1/(fn4(z2)+fn3(z1))
|z|<4
}
