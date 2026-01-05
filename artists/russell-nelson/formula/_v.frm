V-Heun{
x=real(pixel),
y=imag(pixel),
p=real(p1),
h=imag(p1)/2:
u=x-x*y,
w=-y+x*y,
a=x+p*u,
b=y+p*w,
c=x+h*(u+(a-a*b)),
d=y+h*(w+(-b+a*b)),
x=c,
y=d,
z=x+flip(y),
|z|<=p2
}
