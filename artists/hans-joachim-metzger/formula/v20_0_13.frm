magnet1jvar_exp2(XAXIS_NOIMAG) {
;the Mandelbrot-equivalent is similar to 'magnet1m'
;p1 is the basic Julia-perturbation, default=(0.5,0), shouldn't be 0
;p2 is a second perturbation, nonzero values create a 'false' set,
;which only works with a limited bailout
;p3 is the exponent (default=2)
;p4 is the bailout (default=5)
;try p1=1 p2=0 p3=-3 p4=40
x=p3,x=x+(x==0)*2
b=p4,b=b+(b==0)*5
p=p1,p=p+(|p|==0)*0.5
z=c=pixel:
zx=z^x+p2
z=(zx+p)/(zx-1)
|z|<b
}
 
magnet1jvar_exp2(XAXIS_NOIMAG) {
;the Mandelbrot-equivalent is similar to 'magnet1m'
;p1 is the basic Julia-perturbation, default=(0.5,0), shouldn't be 0
;p2 is a second perturbation, nonzero values create a 'false' set,
;which only works with a limited bailout
;p3 is the exponent (default=2)
;p4 is the bailout (default=5)
;try p1=1 p2=0 p3=-3 p4=40
x=p3,x=x+(x==0)*2
b=p4,b=b+(b==0)*5
p=p1,p=p+(|p|==0)*0.5
z=c=pixel:
zx=z^x+p2
z=(zx+p)/(zx-1)
|z|<b
}
 
mand_2exp2par_1(XAXIS_NOIMAG) {
;p1 and p3 are the perturbations of the first set
;(defaults=1 and -1 only if p1..p4 are all zero)
;p2 and p4 are the exponents
;(defaults=2 and 3 if they are zero)
;p5 is the bailout (default=10)
b=p5,b=b+(b==0)*10
allzero=((|p1|+|p2|+|p3|+|p4|)==0)
x1=p2,x1=x1+(x1==0)*2
x2=p4,x2=x2+(x2==0)*3
p_1=p1,p_1=p_1+allzero*1
p_2=p3,p_2=p_2-allzero*1
z=c=pixel:
j=z^x1+c-p_1
k=z^x2+c-p_2
z=(j*k)/(j+k)
|z|<b
}
 
mand_a*2+b*4+c*6(XAXIS_NOIMAG) {
;p2 is the multiplier for z^2, p3 for for z^4, p4 for z^6 (default=all 1)
;p5 is the bailout (default=4)
j=p2,j=j+(|j|==0)*1
k=p3,k=k+(|k|==0)*1
l=p4,l=l+(|l|==0)*1
b=p5,b=b+(b==0)*4
z=c=pixel:
z2=z*z
z4=z2*z2
z=z2*j+z4*k+z4*z2*l+c-p1
|z|<b
}
 
