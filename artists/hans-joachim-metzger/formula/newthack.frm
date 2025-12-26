newtonexp1(XAXIS_NOIMAG) { ;needs floating point ON and 'periodicity=no' !
; both should be nonzero (default for both is 3)
; try p1=1.8..4 and p2=p1
; or p1=5 and p2=1.2
x1=p1,x1=x1+(x1==0)*3
x2=p2,x2=x2+(x2==0)*3
z=pixel:
z2=z^x1,n=z2*z-1,d=x1*z2
z=(z-n/d)^x2
|n|>0.000001
}
 
quasinewton(XAXIS_NOIMAG) { ;tried to make a Newton-variant
;p1 is the exponent (default=5)
;draws a 'gear' with p1>~20
;try 50..200 for p1
;the picture is 120 deg. symmetric if (p1 mod 3)=0
;needs floating point ON and 'periodicity=no' !
x=p1,x=x+(x==0)*5
z=pixel:
n=z^x-1,d=x*z*z
z=z-n/d
|n|>0.000001
}
 
