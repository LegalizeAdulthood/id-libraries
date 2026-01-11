magnet1jvar { ;the Mandelbrot-equivalent is similar to 'magnet1m'
;p1 is the basic Julia-perturbation, default=(0.5,0), shouldn't be 0
;p2 is a second perturbation, nonzero values create a 'false' set,
;which only works with a limited bailout
;p3 is the bailout (default=5)
;for p1=1, the optimal bailout is 4.25, values such as 3.4 to 4 or
;40 to 10000 are good for decomp
;try these values:
;p1=2   p1=1   p1=-1.5
;p1=0.5 (default), p2=0.3, p3=10
;p1=1, p2=(0.1,0.4), p3=22
;p1=1, p2=(0.4,0.2), p3=9
;also with decomp!
b=p3,b=b+(b==0)*5
p=p1,p=p+(|p|==0)*0.5
z=pixel:
z2=z*z+p2
z=(z2+p)/(z2-1)
|z|<b
}

magnet_cplxspirals (XAXIS) { ;at the left end!
;needs floating point!
z=c=pixel:
z=( (z*z+(c-1)) / (c/z+(c-2)) )^2-2
|z|<100
}

magnet_spirals1 (XAXIS_NOIMAG) {
;needs floating point!
;p2 is the bailout (default=100)
b=p2,b=b+(b==0)*100
z=c=pixel:
z=( (z*z+(c)) / (2*z+(c-2)) )^2-p1
|z|<b
}

magnet_spirals2 (XAXIS_NOIMAG) {
;needs floating point!
;p2 is the bailout (default=1000)
b=p2,b=b+(b==0)*1000
z=c=pixel:
z=( (z*z+(c-1)) / (c*z+(c-2)) )^2-p1
|z|<b
}

magnet_zpower(XAXIS_NOIMAG) { ;tried to make a magnet1m variant
;p1 should be over 2, recommended: 3..6 (default=3)
x=p1,x=x+(x==0)*3
z=c=pixel:
z=((z^x+c-1)/(2*z+c-2))^(x-1)
|z|<100
}

