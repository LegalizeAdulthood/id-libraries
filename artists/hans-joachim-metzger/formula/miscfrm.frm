barnsleym3_error {
;tried to make a barnsley3m variant, but something wasn't ok
;(before I turned off the 'if..endif' stuff)
;enter 'center-mag=-0.34/0.515/50'!!!
i=(0,1)
z=c=pixel:
;if(real(z)<0)
z=(real(z)^2-imag(z)^2-1)+i*(2*real(z)*imag(z))-p1
;else
z=(real(z)^2-imag(z)^2)-1+real(c)*real(z)+i*(2*real(z))*imag(z)+imag(c)*real(z)-p1
;endif
|z|<5
}

fndif { ;p1 is the bailout if specified
;needs floating point if p1>127
;p1 is the bailout if specified (default=1e5)
;try fn1=sqrt fn2=cos insode=bof60 with zooming out!!!
b=p1,b=b+(b==0)*1e5
z=pixel:
z=fn1(z)-fn2(z)
|z|<b
}

halfspider(XAXIS_NOIMAG) {
;default for p1=-0.27
;(0 is useless, spider-like formations appear around 1)
p=p1,p=p-(|p|==0)*0.27
z=c=pixel:
z=z*z+c-p
c=c-z*z*c
|z|<8
}

mandelcells(XAXIS_NOIMAG) {
;needs floating point!
;default for p1=0.01
;p2 is the bailout (default=1000)
p=p1,p=p+(|p|==0)*0.01
b=p2,b=b+(b==0)*1000
z=c=pixel:
z=z*c+z+p
c=z/c
|z|<b
}

net {
;needs floating point!
;should be used with continuous pot. on
;default for p2=1, it shouldn't be 0, but try 3..-3
;p3 is the bailout if specified (default=100000)
x=p2,x=x+(x==0)*1
b=p3,b=b+(b==0)*1e5
z=pixel:
z=z*z+cotan(z)^x+cotan(real(z))^x*cotan(imag(z))^x-p1
|z|<b
}

simple1 { ;p1 is the exponent (default=2)
x=p1,x=x+(x==0)*2
z=pixel:
z=real(z)+imag(z)+z^x
|z|<4
}

