To see examples of images these formulas can create, download
42ECARR.PAR

I can be contacted on CompuServe: 73753,2420 or on America Online:
Genealogy1.

If you have comments or questions please feel free to contact me.

--Bob Carr--



}

Carr2205{;Modified Sylvie Gallet frm. [101324,3444],1996
z=sinh(pixel^2)-1/log(pixel-(0.10/pixel)-flip(0.0010/pixel)),
c=sin(conj(-0.7896,-0.1309)),
d1=(conj(0.0002550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2206{;Modified Sylvie Gallet frm. [101324,3444],1996
p5 = 0.001/pixel
z=sinh(pixel^2)-1/log(pixel-(100*p5)-flip(p5)),
c=(-0.3159,-0.63555),
d1=(conj(0.0002550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+c+p5,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2207{;Modified Sylvie Gallet frm. [101324,3444],1996
z=pixel*(pixel-0.2)-1/log(0.10/pixel)-cos(0.010/pixel)+conj(0.10/pixel)+0.45
c=(-0.8606,-0.0959)
d1=(conj(0.0002550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z=(z-c/10)*t + ct , c = c*t + ct
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2208{;Modified Sylvie Gallet frm. [101324,3444],1996
z=conj(pixel)*(pixel+1.25)-(flip(asin(0.010/pixel))-conj(asin(0.10/pixel)))+0.25,
c=(-0.8606,-0.1279)
d1=(conj(0.0002550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4
z = (z-0.1*c)*t + ct + d4,
c = c*t + ct,
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2209{;Modified Sylvie Gallet frm. [101324,3444],1996
z=1/(pixel-(conj(0.10/pixel)+flip(conj(0.010/pixel)))^4),
c=(-0.7456,-0.3815)
d1=(conj(0.0002550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2210{;Modified Sylvie Gallet frm. [101324,3444],1996
z=1/(pixel-conj(0.10/pixel-flip(0.010/pixel))),
c=(-1.189,-0.25)
d1=(conj(0.0002550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2211{;Modified Sylvie Gallet frm. [101324,3444],1996
z=1/(pixel-conj(0.10/pixel-flip(0.010/pixel))),
c=(-0.3309,-0.70555)
d1=(conj(0.0002550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2212{;Modified Sylvie Gallet frm. [101324,3444],1996
z=sinh(1/(pixel-conj(0.10/pixel-flip(0.010/pixel)))),
c=(0.3,0.625)
d1=(conj(0.0002550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.75*z+d1 , z3 = 3.975*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct
z=z*z+(c-(0.010,0.0010))
iter=iter+1
(|real(z)|) <= bailout
}

Carr2213{;Modified Sylvie Gallet frm. [101324,3444],1996
z=tan(1/(conj(pixel)-conj(0.10/pixel-flip(0.010/pixel)))),
c=(0.3,0.651)
d1=(conj(0.0002550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.75*z+d1 , z3 = 3.975*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct
z=z*z+(c-(0.0910,0.0310))
iter=iter+1
(|real(z)|) <= bailout
}

Carr2214{;Modified Sylvie Gallet frm. [101324,3444],1996
z=sinh((-0.7456,0.2)*(pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.10/pixel),
c=(0.3,0.5825)
d1=(conj(0.0002550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.975*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct
z=z*z+c
iter=iter+1
(|real(z)|) <= bailout
}

Carr2215{;Modified Sylvie Gallet frm. [101324,3444],1996
z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel)),
c=(0.3,0.5825)
d1=(conj(0.0002550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct
z=z*z+(c-(0.0010,0.0310)),
iter=iter+1
(|real(z)|) <= bailout
}

Carr2216{;Modified Sylvie Gallet frm. [101324,3444],1996
z=cabs(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel)),
c=(0.3,0.5825)
d1=(conj(0.0002550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct
z=z*z+(c-(0.0010,0.0310)),
iter=iter+1
(|real(z)|) <= bailout
}

Carr2217{;Modified Sylvie Gallet frm. [101324,3444],1996
z=(cabs(0.5-pixel)*sqr(conj(pixel))-conj(0.10/pixel)-sqr(flip(0.00510/pixel)))+0.15,
c=(-1.099,-0.2249),
d1=(conj(0.0002550/pixel)) , d4 = 4*d1 , d2 = 0.25*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0, c4 = 0.25*z4 :
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct + c4*t4 + d2
z=z*z+(c-(0.0010,0.0310)),
iter=iter+1
(|real(z)|) <= bailout
}

Carr2218{;Modified Sylvie Gallet frm. [101324,3444],1996
z=c=1/(pixel-1/log(0.0010/pixel)-cos(0.010/pixel+1.25)-conj(0.10/pixel))
d1=(conj(0.0002550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.975*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct1 = z1*t1 , ct2 = z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct1 + ct2 , c = c*t + ct1 + d1,
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2219{;Modified Sylvie Gallet frm. [101324,3444],1996
z=1/(pixel-1/log(0.0010/pixel)-cos(0.010/pixel)-conj(0.10/pixel))
c=(0.3,0.5825)
d1=(conj(0.0002550/pixel)) , d2 = 2*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.975*z+d1 , z4 = 5.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct1 = z1*t1+z2*t2+d2 , ct2 = z3*t3+z4*t4+d2
z = (z-0.1*c)*t + ct1 + ct2 , c = c*t + ct1
z=z*z+c,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2220{;Modified Sylvie Gallet frm. [101324,3444],1996
z=flip(imag(0.33-sin(pixel)))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel),
c=pixel-conj(0.090/pixel-flip(0.010/pixel)),
d1=(conj(0.00004550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 11.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*sin(t) + 1/log(ct) , c = c*t + ct,
z=z*z+c
iter=iter+1
(|real(z)|) <= bailout
}

Carr2221{;Modified Sylvie Gallet frm.
z=flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel),
c=pixel-conj(0.10/pixel-flip(0.010/pixel)),
compt=0 , limit=real(p1*cos(pixel/5)) , bailout=4
p=(-0.743380900000982,-0.131850030300002):
test=(compt<limit),
c=c*test+p*(1-test)
z=z*z+c,
compt=(compt+1)
|z|<=bailout
}

Carr2222{;Modified Sylvie Gallet frm.
z=flip(imag(0.33-pixel))*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel),
c=pixel-conj(0.10/pixel-flip(0.010/pixel))
compt=0 , limit=real(p1*cos(pixel/5)) , bailout=4
p=(-0.3009,-0.63555):
test=(compt<limit),
c=c*test+p*(1-test)
z=z*z+c,
compt=(compt+1)
|z|<=bailout
}

Carr2223{;Modified Sylvie Gallet frm.
z=pixel-(conj(0.10/pixel)+flip(conj(0.010/pixel))),
c=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel)),
iter=1,rad=6,center=(-7.6,-3.0)
pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
zn=(center+rad/(pix-center)),limit=real(p1)
test0=1,b1=16,b2=0.0001,test3=0:
test1=(iter<limit),test0=1-test0,test2=(iter!=limit)
z=(z-zn)*test2+(zn),z2=z*z,z4=z2*z2,
z6=z2*z4,z1=(z6*z-1)/(imag(p1)*z6),
z=(z2+c)*test1+(z-z1)*(1-test1),
test3=(test3 || (|z|>b1))
z=z*1.01120*(1-(test3 && test0 && test1))
iter=iter+(2.099,0.0)
((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

Carr2224{;Modified Sylvie Gallet frm.
c=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel)),
z = pixel , c = 0.875*c+(-0.7456,-0.132)
iter=1,rad=6,center=(-7.6,-3.0)
pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
zn=(center+rad/(pix-center)),limit=real(p1)
test0=1,b1=16,b2=0.0001,test3=0:
test1=(iter<limit),test0=1-test0,test2=(iter!=limit)
z=(z-zn)*test2+(zn),z2=z*z,z4=z2*z2,
z6=z2*z4,z1=(z6*z-1)/(imag(p1)*z6),
z=(z2+c)*test1+(z-z1)*(1-test1),
test3=(test3 || (|z|>b1))
z=z*1.01110*(1-(test3 && test0 && test1))
iter=iter+(2.099,0.0)
((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

Carr2225{;Modified Sylvie Gallet frm.
z=pixel,c=pixel^2+0.25,c=0.875*c-(0.3,0.65)
iter=1,rad=6,center=(-7.6,-3.0),
pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
zn=(center+rad/(pix-center)),limit=real(p1)
test0=1,b1=16,b2=0.0001,test3=0:
test1=(iter<limit),test0=1-test0,test2=(iter!=limit)
z=(z-zn)*test2+(zn),z2=z*z,z4=z2*z2,
z6=z2*z4,z1=(z6*z-1)/(imag(p1)*z6+(z6==0)),
z=(z2+c)*test1+(z-z1)*(1-test1),
test3=(test3 || (|z|>b1))
z=z*1.01105*(1-(test3 && test0 && test1))
iter=iter+(1.099,0.0)
((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

Carr2226{;Modified Sylvie Gallet frm.
z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel)),
c=pixel^2+0.19 , c = 0.875*c+(-0.8656,0.2)
iter=1,rad=6,center=(-7.6,-3.0)
pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
zn=(center+rad/(pix-center)),limit=real(p1)
test0=1,b1=16,b2=0.0001,test3=0:
test1=(iter<limit),test0=1-test0,test2=(iter!=limit)
z=(z-zn)*test2+(zn),z2=z*z,z4=z2*z2,
z6=z2*z4,z1=(z6*z-1)/(imag(p1)*z6),
z=(z2+c)*test1+(z-z1)*(1-test1),
test3=(test3 || (|z|>b1))
z=z*1.01105*(1-(test3 && test0 && test1))
iter=iter+(3.099,0.0)
((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

Carr2227{;Modified Sylvie Gallet frm.
z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel)),
c=pixel^6+0.196 , c = 0.875*c+(-0.8656,0.2)
iter=1,rad=6,center=(-7.6,-3.0)
pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
zn=(center+rad/(pix-center)),limit=real(p1)
test0=1,b1=16,b2=0.0001,test3=0:
test1=(iter<limit),test0=1-test0,test2=(iter!=limit)
z=(z-zn)*test2+(zn),z2=z*z,z4=z2*z2,
z6=z2*z4,z1=(z6*z-1)/(imag(p1)*z6),
z=(z2+c)*test1+((z-z1)*(1-test1)),
test3=(test3 || (|z|>b1))
z=z*1.010255*(1-(test3 && test0 && test1))
iter=iter+(3.099,0.0)
((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

Carr2228{;Modified Sylvie Gallet frm.
z=conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel)),
c=pixel^8+0.196 , c = 0.875*c+(-0.8656,0.2)
iter=1,rad=6,center=(-7.6,-3.0)
pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
zn=(center+rad/(pix-center)),limit=real(p1)
test0=1,b1=16,b2=0.0001,test3=0:
test1=(iter<limit),test0=1-test0,test2=(iter!=limit)
z=(z-zn)*test2+zn,z2=z*z,z4=z2*z2,
z6=1.53*(z2*z4),z1=(z6*z-1)/(imag(p1)*z6+(z6==0)),
z=(z2+c)*test1+(z-z1)*(1-test1),
test3=(test3 || (|z|>b1))
z=z*1.010555*(1-(test3 && test0 && test1))
iter=iter+(1.099,0.0)
((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

Carr2229{;Modified Sylvie Gallet frm.
z=(conj(pixel)*sqr(pixel)-sinh(0.10/pixel)-sqr(flip(0.00510/pixel)))^1.2,
c=pixel^12+0.196 , c = 0.875*c+(-0.8856,0.2)
iter=1,rad=6,center=(-7.6,-3.0)
pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
zn=(center+rad/(pix-center)),limit=real(p1)
test0=1,b1=16,b2=0.0001,test3=0:
test1=(iter<limit),test0=1-test0,test2=(iter!=limit)
z=(z-zn)*test2+zn,z2=z*z,z4=z2*z2,
z6=1.53*(z2*z4),z1=(z6*z-1)/(imag(p1)*z6+(z6==0)),
z=(z2+c)*test1+((z-z1)*(1-test1)),
test3=(test3 || (|z|>b1))
z=z*1.011555*(1-(test3 && test0 && test1))
iter=iter+(1.099,0.0)
((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

Carr2230{;Modified Sylvie Gallet frm.
z=flip(pixel)
c=pixel^10+0.196 , c = 0.875*c+(-0.8856,0.2)
iter=1,rad=6,center=(0.6,0.3)
pix=(10*sqr(pixel)+(5.0,-3.5))*(-0.1,-0.95)
zn=(center+rad/(pix-center)),limit=real(p1)
test0=1,b1=16,b2=0.0001,test3=0:
test1=(iter<limit),test0=1-test0,test2=(iter!=limit)
z=(z-zn)*test2+zn,z2=z*z,z4=z2*z2,
z6=(z2*z4),z1=(z6*z-1)/(imag(p1)*z6+(z6==0)),
z=(z2+c)*test1+((z-z1)*(1-test1)),
test3=(test3 || (|z|>b1))
z=z*1.011555*(1-(test3 && test0 && test1))
iter=iter+(1.099,0.0)
((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

Carr2231{;Modified Sylvie Gallet frm. [101324,3444],1996
z=((pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)),
c=pixel/5+pixel/3+(pixel/2)^4
d1=(conj(0.00014550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+c
iter=iter+1
(|real(z)|) <= bailout
}

Carr2232{;Modified Sylvie Gallet frm. [101324,3444],1996
c=((pixel)*sqr(pixel)-conj(0.10/pixel)-flip(0.010/pixel)),
z=flip(pixel/5)+conj(pixel/3)+(pixel/2)^4
d1=(conj(0.00014550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+c
iter=iter+1
(|real(z)|) <= bailout
}

Carr2233{;Modified Sylvie Gallet frm. [101324,3444],1996
b=conj(0.10/pixel)-flip(0.010/pixel)
z=flip((pixel-b)/5)+((pixel-b)/3)+(pixel/2)^4,
c=(-0.7056,-0.122) , p5 = 0.05*pixel
d1=(conj(0.00014550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+c-p5
iter=iter+1
(|real(z)|) <= bailout
}

Carr2234{;Modified Sylvie Gallet frm. [101324,3444],1996
b=conj(0.10/pixel)-flip(0.010/pixel)
z=1/log((pixel-b)/5)+((pixel-b)/3)+(pixel/2)^4,
c=(-0.7056,-0.122) , p5 = 0.05*pixel
d1=(conj(0.00014550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+c-p5
iter=iter+1
(|real(z)|) <= bailout
}

Carr2235{;Modified Sylvie Gallet frm. [101324,3444],1996
b=conj(0.010/pixel)-flip(0.10/pixel)
z=1/log((pixel-b)/5)+((pixel-b)/3)+(pixel/2)^8,
c=(-0.7056,-0.122) , p5 = 0.05*pixel
d1=(conj(0.00014550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+c-p5
iter=iter+1
(|real(z)|) <= bailout
}

Carr2236{;Modified Sylvie Gallet frm. [101324,3444],1996
b=conj(0.010/pixel)-flip(0.10/pixel)
z=((pixel-b)/5)+1/log((pixel-b)/3)+(pixel/2)^8,
c=(-0.7056,-0.122) , p5 = 0.05*pixel
d1=(conj(0.00014550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+c-p5
iter=iter+1
(|real(z)|) <= bailout
}

Carr2237{;Modified Sylvie Gallet frm. [101324,3444],1996
b=exp(0.0010/pixel)-1/log(0.10/pixel)
z=1/log((pixel-b)/5)+((pixel-b)/3)+sqrt((pixel-b)/2)^8,
c=(-0.7056,-0.102) , p5 = 0.05*pixel
d1=(conj(0.00014550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct
z=z*z+c-p5
iter=iter+1
(|real(z)|) <= bailout
}

Carr2238(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
z=(pixel+pixel)-1/log(pixel-1/tan(0.0010/pixel))^2.5,
c=sin(conj(-0.655,-0.3959)) , p5 = pixel/15
d1=(conj(0.00024550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct
z=z*z+c-p5,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2239(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
z=(pixel+pixel+pixel)-1/log(pixel-1/tan(0.0010/pixel))^2.5+0.28,
c=sin(conj(-0.655,-0.3789)) , p5 = pixel/15
d1=(conj(0.00024550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct
z=z*z+c-p5,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2240(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
b=(conj(0.0010/pixel))-(0.010/pixel)
z=(pixel+pixel+pixel)-1/log(pixel-1/tan(0.0010/pixel))^2.5+0.28,
c=sin(conj(-0.655,-0.3789)) , p5 = pixel/15
d1=(conj(0.00024550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+b)*t + ct , c = c*t + ct
z=z*z+c-p5,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2241(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
b = 0.0005/pixel-conj(0.005/pixel) , p5 = 0.05*pixel
z=(pixel+pixel+pixel)-1/log(pixel-1/tan(0.0010/pixel))^2.5+0.28,
c=sin(conj(-0.7456,0.23)),
d1=(conj(0.00024550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+b)*t + ct , c = c*t + ct
z=z*z+c-p5,
iter=iter+1
(|real(z)|) <= bailout
}

Carr2242(YAXIS){;Modified Sylvie Gallet frm. [101324,3444]1996
p5 = 0.05*pixel
z=(3*pixel)+conj(pixel-flip(0.010/pixel))
c=sin(conj(-0.7456,0.23))
d1=(conj(0.00024550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1=(real(p1)),l2=(imag(p1)),l3=(real(p2)),l4=(imag(p2))
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+b)*t + ct , c = c*t + ct
z=z*z+c-p5,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2243(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
b = 0.0005/pixel-conj(0.005/pixel) , p5 = 0.05*pixel
z=(3*pixel)+conj(pixel-flip(0.010/pixel))+0.3,
c=sin(conj(-0.655,-0.3589)),
d1=(conj(0.00024550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+b)*t + ct , c = c*t + ct
z=z*z+c-p5,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2244(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
p5 = 0.05*pixel , b = flip(conj(0.0010/pixel))
z=(3*pixel)-conj(0.001/pixel-flip(0.01/pixel))+1/pixel,
c=sin(conj(-0.655,-0.3819)),
d1=(conj(0.00024550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+b)*t + ct , c = c*t + ct
z=z*z+c-p5,
iter=iter+1
(|real(z)|)<=bailout
}

Carr2245(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
b=(conj(0.0010/pixel)) , p5 = 0.025*pixel
z=(3*pixel)-conj(0.001/pixel-flip(0.01/pixel))+1/pixel+0.275,
c=(pixel-0.05),
d1=(conj(0.00024550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-b)*t+ct , c = c*t + ct
z=z*z+c-p5
iter=iter+1
(|real(z)|)<=bailout
}

Carr2246(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
b=(conj(0.0010/pixel)) , p5 = 0.05*pixel
z=(6*pixel)-sin(0.001/pixel-tan(0.01/pixel))+1/pixel+0.275,
c=sin(conj(-0.655,-0.3359)),
d1=(conj(0.00024550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+b)*t+ct , c=c*t + ct
z=z*z+1.02*c-p5
iter=iter+1
(|real(z)|)<=bailout
}

Carr2247(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel))
b=(conj(0.0010/pixel)) , p5 = 0.05*pixel
z=(3.5*pixel)-sin(0.001/pixel-tan(0.01/pixel))+conj(0.0010/pixel)+0.275,
c=sin(conj(-0.515,-0.0959))
d1=(conj(0.00044550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1=(real(p1)),l2=(imag(p1)),l3=(real(p2)),l4=(imag(p2))
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+b)*t + ct , c = c*t + ct
z=z*z+c-p5
iter=iter+1
(|real(z)|)<=bailout
}

Carr2248(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
b=(conj(0.0010/pixel)) , p5 = 0.05*pixel
z=(3.5*pixel^5)-sin(0.001/pixel-tan(0.01/pixel))+conj(0.0010/pixel)+0.135,
c=sin(conj(-0.515,-0.4399)),
d1=(conj(0.00044550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z+b)*t + ct , c = c*t + ct
z=z*z+1.025*c-p5
iter=iter+1
(|real(z)|) <= bailout
}

Carr2249(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
k=sin(2*pixel)^2.75+tan(2*pixel)^2.25
z=k-sin(0.001/pixel-tan(0.01/pixel))+conj(0.0010/pixel)+0.115,
c=sin(-0.615,0.3019), p5 = pixel/30
d1=(conj(0.00044550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = (z-0.1*c)*t + ct , c = c*t + ct
z=z*z+1.025*c-p5
iter=iter+1
(|real(z)|) <= bailout
}

Carr2250(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
r=(pixel+pixel) , r3 = r/30
z=c=r-(conj(0.010/pixel)-flip(0.10/pixel))+0.09,
d1=(conj(0.00044550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2= 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+0.9*c-r3,
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2251(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r=flip(pixel+pixel) , p5 = (r+pixel)/30
z=c=r-(conj(0.010/pixel)-flip(0.10/pixel))-0.15,
d1=(conj(0.00044550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+c-p5-c/30
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2252(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r=(pixel+pixel) , p5 = (r+pixel)/30
z=c=r-(conj(0.010/pixel)-flip(0.10/pixel))-0.15,
d1=(conj(0.00044550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+c-p5-c/30
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2253(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
r=pixel+pixel , p5 = 0.05*(r+pixel)
z=c=r-(conj(0.03/pixel)-flip(0.0030/pixel)+0.055/pixel)-0.15,
d1=(conj(0.00044550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+0.95*c-p5
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2254(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
r=flip(conj(pixel+pixel)) , p5 = (r+pixel)/30
z=c=r-(conj(0.0095/pixel)-flip(0.019/pixel)+tanh(0.029/pixel))-0.29,
d1=(conj(0.00044550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+c-p5-c/30
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2255(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = pixel+pixel , p5 = r/35 + 0.025*pixel
z=c=r-(conj(0.0095/pixel)-sinh(0.019/pixel)+tanh(0.029/pixel))-0.29,
d1=(conj(0.00044550/pixel)) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+c-p5-c/35,
iter=iter+1,
(|real(z)|) <= bailout
}

Carr2256(YAXIS){;Modified Sylvie Gallet frm. [101324,3444],1996
pixel=-abs(real(pixel))+flip(imag(pixel)),
r = conj(pixel+pixel) , p5 = r/35 + 0.025*pixel
z=c=r-(conj(0.0095/pixel)-sinh(0.019/pixel)+tanh(0.029/pixel))-0.29,
d1 = conj(0.00044550/pixel) , d4 = 4*d1
z1 = 1.5*z+d1 , z2 = 2.25*z+d1 , z3 = 3.375*z+d1 , z4 = 6.0625*z+d1
l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
bailout=16,iter=0:
t1=(iter==l1),t2=(iter==l2),t3=(iter==l3),t4=(iter==l4),
t = 1-(t1||t2||t3||t4) , ct = z1*t1 + z2*t2 + z3*t3 + z4*t4 + d4
z = z*t + ct , c = c*t + ct
z=z*z+c-p5-c/35,
iter=iter+1,
(|real(z)|) <= bailout
}
