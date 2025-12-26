mand2_2fn {
;2 functions to play with
;p2 is the bailout if specified (default=4)
;higher bailout is useful for cont. pot.
z=c=fn1(fn2(pixel)):
z=z*z+c-p1
((p2==0)&&(|z|<4))||((p2!=0)&&(|z|<p2))
}
 
mand2_4fn_npass {
;4 functions to play with REPEATEDLY!!!!!!!!
;p3 defines how many times 'z' should go
;through those functions (default=1)
;p2 is the bailout if specified (default=4)
passes=p3+(p3==0)*1
z=pixel,i=0:
if(i<passes)
z=c=fn1(fn2(fn3(fn4(z))))
else
z=z*z+c-p1
endif
i=i+1
((p2==0)&&(|z|<4))||((p2!=0)&&(|z|<p2))
}
 
mand2_fndif (XAXIS_NOIMAG) {
; p2 the bailout if specified (default=127)
; try fn1=cos fn2=tan p2=100000!
b=p2,b=b+(b==0)*127
z=c=pixel:
a=fn1(z)-fn2(z)
z=a*a+c-p1
|z|<b
}
 
mand2_pixexp(XAXIS_NOIMAG) { ;it's not the marksmandel!
;p2 shouldn't be 0 (default=2), try values between 0.05-1!
x=p2,x=x+(x==0)*2
z=c=pixel^x:
z=z*z+c-p1
|z|<4
}
 
mand2_pixpixexp(XAXIS_NOIMAG) { ;not the marksmandelpwr
z=c=pixel^pixel:
z=z*z+c-p1
|z|<4
}
 
mand2_z*z+-/c(XAXIS_NOIMAG) {
;p2 is the bailout (default=4)
b=p2,b=b+(b==0)*4
z=c=pixel:
z=z*z+c-p1
z=z*z-c-p1
z=z*z/c-p1
|z|<b
}
 
mand2_zexp_div_zp1 {
;try p2=0.3
z=c=pixel:
z=((z*z)/(z-p2))^2+c-p1
|z|<1e6
}
 
mand2_zzfn {
;'p2' specifies a bailout value, different functions need
;different values (default=1e5)
;try function=sin or sinh
;symmetric on the X-axis for any function except
;"flip" with imag. components=0
z=c=pixel:
z=z*fn1(z)+c-p1
((p2==0)&&(|z|<1e5))||((p2!=0)&&(|z|<p2))
}
 
mand_z=z*zfn^2 {
;p2 is the bailout if specified (default=100000)
;needs floating point for a high bailout
;try fn=tan, tanh, cotan, cotanh, atan, atanh with continuous potential on!
z=c=pixel:
z=fn1(z)*z
z=z*z+c-p1
((p2==0)&&(|z|<100000))||((p2!=0)&&(|z|<p2))
}
 
mand_zexp-p1exp(XAXIS_NOIMAG) {
;p2 is the exponent (default=2)
;p3 is the bailout (default=4)
;try 1 for p1 with p2 from 2 to 10!
x=p2,x=x+(x==0)*2
b=p3,b=b+(b==0)*4
z=c=pixel:
z=((z+p1)*(z-p1))^x+c
|z|<b
}
 
mandel+a*m4+b*m6 {
;p2 defines how strongly z^4 should be mixed in (default=2)
;p3 defines how strongly z^6 should be mixed in (default=-3)
a=p2,a=a+(|a|==0)*2
b=p3,b=b-(|b|==0)*3
z=c=pixel:
z2=z*z
z=z2+a*z2*z2+b*z2*z2*z2+c-p1
|z|<127
}
 
mandel+a*m4+b*m8 {
;p2 defines how strongly z^4 should be mixed in (default=1)
;p3 defines how strongly z^8 should be mixed in (default=-4)
a=p2,a=a+(|a|==0)*1
b=p3,b=b-(|b|==0)*4
z=c=pixel:
z2=z*z
z4=z2*z2
z=z2+a*z4+b*z4*z4+c-p1
|z|<127
}
 
mandel+n*mandel4 {
;p2 determines how strongly the mandel4 should be mixed in (default=1)
a=p2,a=a+(|a|==0)*1
z=c=pixel:
z2=z*z
z=z2+a*z2*z2+c-p1
|z|<127
}
 
mandel2*notmandel { ;more than another Mandelbrot variation...
;try p1=-1..0..2, p2=0..0.2
;p3 is the bailout (default=4)
b=p3,b=b+(b==0)*4
z=c=pixel:
z2=z*z
z=(z2+c-p1)*(z2-z+p2)
|z|<b
}
 
mandel4+n*mandel {
;p2 determines how strongly the std. mandel should be mixed in (default=1)
;try p2=-3!
a=p2,a=a+(|a|==0)*1
z=c=pixel:
z2=z*z
z=z2*z2+a*z2+c-p1
|z|<127
}
 
mandel_shell(XAXIS_NOIMAG) {
;needs floating point!
;p2 is the exponent (default=2)
;p3 is the bailout (default=1e12, lower may be used for decomp)
;try *really big* numbers such as 1e70 for p3 too!
;a 80x87 chip or a good software-based emulator *can* handle such numbers
x=p2,x=x+(x==0)*2
b=p3,b=b+(b==0)*1e12
j=k=c=pixel:
j=j^x+c-p1
k=k/j+c
z=j*k
|z|<b
}
 
mandel_sum2exp {
;intersection of 2 sets with different
;exponents (p1 and p2, defaults= 2 and 4) and
;same perturbation (p3)
x1=p1,x1=x1+(x1==0)*2
x2=p2,x2=x2+(x2==0)*4
a=b=c=pixel:
a=a^x1+c-p3
b=b^x2+c-p3
z=a+b
|z|<100
}
 
