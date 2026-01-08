; These formulae are necessary for some of David Walter's [100013,2775]
; favourite pictures in davfav1.par.
; If you have any trouble or comments please let me know.
; Submited to GRAPHDEV Fractal Sources from Hong Kong 29 Dec 95.  Enjoy.

comment {received from Ramiro Perez <RPEREZ@EARN.UTPVM1> 18 Aug 93
in Frac-L group in BITNET.
Volterra-Lotka Formulas p 125 BEAUTY OF FRACTALS
}
V-Euler{
x=real(pixel),
y=imag(pixel),
h=real(p1)/2:
u=x-x*y,
w=-y+x*y,
c=x+h*(u+u),
d=y+h*(w+w),
x=c,
y=d,
z=x+flip(y),
|z|<=p2
}
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
comment { 9 May 92 copy ZZa from FRACTINT.FRM and change
tolerance to 0.1 - rename to MARLINZZa
Get sharp points with t = 0.5, but flattens curves at base.
Try 0.2 still flattens, but points OK. Try 0.05
}
marlinZZa(XAXIS) { ; Prof Jm using Newton-Raphson method
  ; use floating point with this one
  z=pixel,solution=1:
   z1=z^(z-1);
   z2=(((z-1)/z)+log(z))*z1;
   z=z-((z1-1)/z2) ,
   0.05 <= |solution-z1|
  }
comment {Produces Road to Oblivion. The paramater P1 changes the #
of Iterations and therefore the Picture. Published in Computer Graphics
Vol 14.
}
zmincosz(XAXIS) {
z = pixel:
fz = z - cos(z);
fdashz = 1 + sin(z);
z = z - fz/(fdashz + P1);
0.0001 <= |fz|
}


