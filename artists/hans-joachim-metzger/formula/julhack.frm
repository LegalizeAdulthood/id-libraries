j_cplxspirals(XAXIS_NOIMAG) {
;needs floating point!
;default for p1=(0.005,0)
;p2 is the bailout (default=127)
p=p1,p=p+(|p|==0)*0.005
b=p2,b=b+(b==0)*127
z=y=pixel:
z=z*z+y+p
y=z*z/y
|z|<b
}

j_cspiralbullet(XAXIS_NOIMAG) {
;needs floating point!
;default for p1=0.4
p=p1,p=p+(|p|==0)*0.4
z=y=pixel:
z=y/z+p
y=z*y-p
|z|<1e6
}

j_quasijoint(XAXIS_NOIMAG) {
;the formula isn't Julia-like, but the formations and its behavior is
;default for p1=0.18, also try -0.2
;p2 is the bailout (default=2 (!))
;the critical value for p1 is 1/6
p=p1,p=p+(|p|==0)*0.18
b=p2,b=b+(b==0)*2
z=y=pixel:
z=z*z+y+p
y=z*z-y
|z|<b
}

