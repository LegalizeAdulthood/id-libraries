{
To see examples of images these formulas can create, download
42JCARR.PAR

I can be contacted on CompuServe: 73753,2420 or on America Online:
Genealogy1.

If you have comments or questions please feel free to contact me.

--Bob Carr--


}
Carr2427{;Modified Brian E. Jones frm. mans-galore-012
z=pixel,c=sqr(cos(pixel))-cosh(pixel),
iter=0,x=(real(z)),y=(imag(z)),
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=(z*z+c)-(conj(0.120/pixel))
iter=iter+1
|z|<=16
}

Carr2428{;Modified Brian E. Jones frm. mans-galore-012
z=((pixel-flip(0.010/pixel)-conj(0.10/pixel)))+0.285,
c=conj(conj(pixel/2-conj(0.10/pixel)))
iter=0,x=(real(z)),y=(imag(z)),
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
;z=(z*z+c)-(conj(0.120/pixel))
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2429{;Modified Brian E. Jones frm. mans-galore-012
z=0.55*((pixel-flip(0.010/pixel)-conj(0.10/pixel)))+0.285,
c=conj(conj(pixel/2-conj(0.10/pixel)))
iter=0,x=(real(z)),y=(imag(z)),
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
;z=(z*z+c)-(conj(0.120/pixel))
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2430(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=0.55*((2*pixel-flip(0.010/pixel)-conj(0.10/pixel))),
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+(1.099,0.0)
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2431(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=conj(conj(pixel/2-conj(0.10/pixel)))
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+(2.099,0.0)
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2432(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=conj(conj(pixel/2-conj(0.10/pixel))),
c=(-0.7456,-0.132),
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+1.2
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2433{ ; Sylvie Gallet [101324,3444], Mod. BEJ
z=conj(conj(pixel/3-conj(0.10/pixel))),
c=conj(pixel^3)-conj(0.10/pixel),
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+1
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2434(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=c=pixel-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6,
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+1,
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2435(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=cabs(2*pixel)-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6,
c=pixel-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^6,
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+1.2
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2436(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=cabs(2*pixel)-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^2+0.4,
c=(pixel-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel))))^2-0.4,
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+1
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2437(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=cabs(2*pixel)-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^2+0.4,
c=((pixel-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel))))^2-0.4)^4,
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+1.5
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2438(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=((pixel-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel))))^2)^4,
c=(-0.7456,0.2)
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+2
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2439(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=cabs(2*pixel)-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel)))^2+0.3,
c=(-0.7456,0.2)
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+2
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2440(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=((pixel-1/(tanh(0.10/pixel)-sqr(sinh(0.0250/pixel))))^2)^4,
c=(-1.099,-0.3249)
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+3
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2441(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=((cabs(3*pixel)-1/(conj(0.10/pixel)-sqr(flip(0.0250/pixel))))^2)^4,
c=(-1.099,-0.3249)/2
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+4
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2442(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=sinh(pixel^2)-1/log(pixel-(0.10/pixel)-flip(0.0010/pixel)),
c=sin(conj(-0.7896,-0.1309)/3),
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+1.5
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2443(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(pixel-(conj(0.10/pixel)+flip(conj(0.010/pixel)))^4),
c=(-0.7456,-0.3815)/1.7
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+2
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2444(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
m3=conj(0.10/pixel),
z=(cabs(0.5-pixel)*sqr(conj(pixel))-m3-sqr(flip(0.00510/pixel)))-0.3,
c=(-1.099,-0.2249),
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+1
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2445(YAXIS){; modified Jo Weber frm.
pixel=-abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
m3=conj(0.10/pixel),
z=(conj(0.5-pixel)*sqr(cabs(pixel))-m3-sqr(flip(0.00510/pixel)))-0.44:
oldz=z,
z=(pm1*(z^p1)+1)/(p1*z^pm1),
|(z-oldz)|>=|0.001|
}

Carr2446(YAXIS){ ; Sylvie Gallet [101324,3444], Mod. BEJ
pixel=-abs(real(pixel))+flip(imag(pixel)),
m3=conj(0.10/pixel),
z=(conj(0.5-pixel)*sqr(cabs(pixel))-m3-sqr(flip(0.00510/pixel)))-0.44,
c=(-1.099,-0.2249),
x=real(z),y=imag(z),fn1=sin,fn2=atan,
x1=x-p2*fn1(y+p3*fn2(y)),
y1=y-p2*fn1(x+p3*fn2(x)),iter=1, 
rad=fn1(3.1*fn3(x1+flip(y1))),center=(1.0,0.1) 
pix=fn2(10*pixel+(5.0,-3.4))*(-0.1,-0.95)
zn=center+fn4(rad)/(pix-center)
limit=real(p1),b1=16,b2=0.0001:
test1=(iter<limit),test2=(iter!=limit)
z=(z-zn)*test2+zn  
z2=z*z,z4=z2*z2,z1=(z4*z-1)/(4*z4)
z=(z2+c)*test1+(z-z1)*(1-test1)  
iter=iter+2
((|z|<= b1)*test1)||((|z1|>=b2)*(1-test1))
}

Carr2447(YAXIS){; modified Jo Weber frm.
pixel=-abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
m3=conj(0.10/pixel),
z=(cabs(0.5-pixel)*sqr(conj(pixel))-m3-sqr(flip(0.00510/pixel)))-0.3:
oldz=z,
z=(pm1*(z^p1)+1)/(p1*z^pm1),
|(z-oldz)|>=|0.001|
}

Carr2448(YAXIS){; modified Jo Weber frm.
pixel=abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
z=1/(pixel-1/log(0.0010/pixel)-cos(0.010/pixel+1.25)-conj(0.10/pixel)):
oldz=z,
z=(pm1*(z^p1)+1)/(p1*z^pm1),
|(z-oldz)|>=|0.001|
}

Carr2449(YAXIS){; modified Jo Weber frm.
pixel=abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
z=(pixel-flip(0.0010/pixel)-cabs(0.010/pixel)-conj(0.10/pixel)):
oldz=z,
z=(pm1*(z^p1)+1)/(p1*z^pm1),
|(z-oldz)|>=|0.001|
}

Carr2450(YAXIS){; modified Jo Weber frm.
pixel=abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
z=flip(0.33-sin(pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel):
oldz=z,
z=(pm1*(z^p1)+1)/(p1*z^pm1),
|(z-oldz)|>=|0.001|
}

Carr2451(YAXIS){; modified Jo Weber frm.
pixel=abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
z=pixel-conj(0.090/pixel-flip(0.010/pixel)):
oldz=z,
z=(pm1*(z^p1)+1)/(p1*z^pm1),
|(z-oldz)|>=|0.001|
}

Carr2452(YAXIS){; modified Jo Weber frm.
pixel=abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
z=pixel-((tan(1/pixel)+sin(1/pixel)-flip(1/pixel))):
oldz=z,
z=(pm1*(z^p1)+1)/(p1*z^pm1),
|(z-oldz)|>=|0.001|
}

Carr2453(YAXIS){; modified Jo Weber frm.
pixel=abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
z=cabs(pixel)-(((0.3,0.6)+pixel)/(0.20/pixel)):
oldz=z,
z=(pm1*(z^p1)+1)/(p1*z^pm1),
|(z-oldz)|>=|0.001|
}

Carr2454(YAXIS){; modified Jo Weber frm.
pixel=abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
z=pixel*sqr(pixel)-conj(0.010/pixel)-flip(0.010/pixel):
oldz=z,
z=(pm1*(z^p1)+1)/(p1*z^pm1),
|(z-oldz)|>=|0.001|
}

Carr2455(YAXIS){; modified Jo Weber frm.
pixel=abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
m3=flip(cabs(1-pixel))*sqr(conj(pixel))
z=m3-(conj(0.10/pixel))-flip(0.010/pixel):
oldz=z,
z=(pm1*(z^p1)+1)/(p1*z^pm1),
|(z-oldz)|>=|0.001|
}

Carr2456(YAXIS){; modified Jo Weber frm.
pixel=abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
z=sqr(pixel)/(conj(pixel)):
oldz=z,
z=(pm1*(z^p1)+1)/(1.2*(p1*z^pm1)),
|(z-oldz)|>=|0.001|
}

Carr2457(YAXIS){ ; modified Jo Weber frm.
pixel=abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
z=flip(cabs(1+pixel))-flip(0.010/pixel):
oldz=z,
z=(pm1*(z^p1)+1)/((p1*z^pm1)),
|real(z-oldz)|>=|0.001|
}

Carr2458(YAXIS){; modified Jo Weber frm.
pixel=abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
m3=cabs(pixel+0.5)*conj(conj(pixel^7))
z=(m3-conj(0.10/pixel)-sqr(flip(0.00510/pixel)))-0.25:
oldz=z,
z=(pm1*(z^p1)+1)/((p1*z^pm1)),
|real(z-oldz)|>=|0.001|
}

Carr2459(YAXIS){; modified Jo Weber frm.
pixel=abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
z=abs(conj(pixel))-0.15:
oldz=z,
z=(pm1*(z^p1)+1)/((p1*z^pm1)),
|real(z-oldz)|>=|0.001|
}

Carr2460(YAXIS){; modified Jo Weber frm.
pixel=abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
z=conj(conj(pixel*pixel-flip(0.010/pixel)-conj(0.10/pixel))):
oldz=z,
z=(pm1*(z^p1)+1)/((p1*z^pm1)),
|real(z-oldz)|>=|0.001|
}

Carr2461(YAXIS){; modified Jo Weber frm.
pixel=-abs(real(pixel))+flip(imag(pixel)), 
pm1=p1-1,
z=(1.5*pixel^9)-cabs(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.09:
oldz=z,
z=(pm1*(z^p1)+1)/((p1*z^pm1)),
|(z-oldz)|>=|0.001|
}

Carr2462{;Modified Brian E. Jones frm. mans-galore-012
pixel=-abs(real(pixel))+flip(imag(pixel)),
r=cabs(conj(conj(pixel/2))),
z=(3.5*pixel^5)-r-sin(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.097,
c=(3.5*pixel^8)-r-sin(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.097,
iter=0,x=(real(z)),y=(imag(z)),
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
d1=(0.0003299/-pixel)+(flip(0.00010/pixel)),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+d1+x1+flip(y1)
c=c*(1-test)+d1+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2463{;Modified Brian E. Jones frm. mans-galore-012
r=cabs(flip(flip(pixel/2))),
c=(3.5*pixel^8)-r-sin(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.097,
z=pixel,
iter=0,x=(real(z)),y=(imag(z)),
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2464{;Modified Brian E. Jones frm. mans-galore-012
r=cabs(flip(flip(pixel/2))),
c=(3.5*pixel^8)-r-sin(0.08pixel-flip(0.01/pixel))+conj(0.0535/pixel)+0.097,
z=0.75*pixel,
iter=0,x=(real(z)),y=(imag(z)),
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2465{;Modified Brian E. Jones frm. mans-galore-012
c=pixel,z=sqr(cos(pixel))-cosh(pixel),
iter=0,x=(real(z)),y=(imag(z)),
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2466{;Modified Brian E. Jones frm. mans-galore-012
c=pixel,z=(cos(pixel))-(cosh(pixel))^4,
iter=0,x=(real(z)),y=(imag(z)),
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2467{;Modified Brian E. Jones frm. mans-galore-012
c=pixel,z=(cos(pixel-conj(0.01/pixel)))-(cosh(pixel-conj(0.1/pixel))),
iter=0,x=(real(z)),y=(imag(z)),
nextzoom=iterspace=real(p1),magnification=imag(p1),
x1=x-p2*(fn1(y+p3*fn2(y))),
y1=y-p2*(fn1(x+p3*fn2(x))):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=z*(1-test)+x1+flip(y1)
c=c*(1-test)+test*magnification*c
z=z*z+c
iter=iter+1
|z|<=16
}

Carr2468{;Modified Sylvie Gallet frm.
z=pixel,c=(-0.63,-0.4),
d1=(0.00099475/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=(z*(1-test))+flip(imag(0.03750/pixel)), 
c=c*(1-test)+d1+test*(p2*c+p3)
z=(sqr(z*z)+c),
iter=iter+1
|z|<=16
}

Carr2469{;Modified Sylvie Gallet frm.
z=pixel,c=(-0.63,-0.4)/2,
d1=(0.00129475/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=(z*(1-test))+flip(imag(0.03750/pixel)), 
c=c*(1-test)+d1+test*(p2*c+p3)
z=(z^5+c),
iter=iter+1
|z|<=16
}

Carr2470{;Modified Sylvie Gallet frm.
z=pixel,c=(-0.63,-0.4)/2,
d1=(0.00099475/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=(z*(1-test))+flip(imag(0.03750/pixel)), 
c=c*(1-test)+d1+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

Carr2471{;Modified Sylvie Gallet frm.
z=pixel,c=(-0.7456,0.132),
d1=(0.00099475/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=(z*(1-test))+flip(imag(0.03750/pixel)), 
c=c*(1-test)+d1+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

Carr2472(YAXIS){;Modified Sylvie Gallet frm.
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel-0.3,c=(-0.7456,0.132),
d1=(0.00099475/-pixel)+(flip(0.00010/pixel)),
iter=0,nextzoom=iterspace=real(p1):
test=(iter==nextzoom)
nextzoom=nextzoom+test*iterspace
z=(z*(1-test))+flip(imag(0.03750/pixel)), 
c=c*(1-test)+d1+test*(p2*c+p3)
z=z^2+c,
iter=iter+1
|z|<=16
}

Carr2473(XAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
z=(pixel-conj(0.10/pixel))-0.4,c=2*pixel-1/log(cos(1/pixel)),
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2474(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
z=(2*pixel-conj(0.10/pixel))
c=2*pixel-1/log(cos(1/pixel))+0.2,
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.004
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2475(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
z=(2*conj(pixel)-conj(0.30/pixel))+0.2
c=2*pixel-1/log(cos(1/pixel))+0.2,
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.004
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2476(YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(2*tanh(pixel)-conj(0.10/pixel))+0.2
c=(-0.7456,-0.132)/1.25
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.004
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2477(YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=(pixel^2-(log(cos(1.5/pixel)))/pixel)+0.2,
c=(-0.7456,-0.132)/1.25
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0045
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2478(YAXIS) {;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel+1/log(pixel),
c=(-0.7456,-0.132)/1.25
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.0045
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2479(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
z=pixel-1/log(-0.7456,0.2),
c=(-0.7456,-0.132)/1.25
c1=1.5*z,c2=2.25*z,c3=3.375*z,c4=5.0625*z,
l1=real(p1),l2=imag(p1),l3=real(p2),l4=imag(p2),
bailout=16,iter=0,pp2=pixel/imag(p2):
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t=1-(t1||t2||t3||t4),z=z*t,c=c*t+c1*t1+c2*t2+c3*t3+c4*t4+pp2-0.003
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}





















