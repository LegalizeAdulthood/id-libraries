{
10Carr.frm starts with # 255
}

Carr-255{;Modified Liar4
c=z=1/pixel,p=p1+1:
z=1-abs(imag(z)*p-real(z))+flip(1-abs(1-real(z)-imag(z)));
z=z*z+(c-0.124),
|z| <=10
}

Carr-256{;Modified Liar4
c=0.5/pixel,z=1.5/pixel,p=p1+1:
z=1.25-abs(imag(z)*p-real(z))+flip(1.35-abs(1.35-real(z)-imag(z)));
z=z*z+(c-0.124),
|z| <=10
}

Carr-257{;Modified Liar4
c=1/pixel,z=pixel,p=p1+1:
z=z*z+(c+0.124);
z=1-abs(imag(z)*p-real(z))+flip(1.35-abs(1.35-real(z)-imag(z))),
|z| <=10
}

Carr-258{;Modified Liar4
c=1/pixel,z=pixel,p=p1+1.3:
z=1-abs(real(z)*p-imag(z))+1/flip(1.75-abs(1.35-real(z)-imag(z)));
z=z*z+(c-0.524),
|z| <=10
}

Carr-259{;Modified Liar4
c=pixel,z-1/pixel,p=p1+1:
z=1-abs(real(z)*p-imag(z))+1/conj(flip(1.35-abs(1.35-real(z)-imag(z))));
z=z*z+(c-0.124),
|z| <=10
}

Carr-260{;Modified Liar4
c=pixel,z=1/pixel,p=p1+pixel:
z=1-abs(real(z)*p-imag(z))+1/conj(1.35-abs(1.35-real(z)-imag(z)));
z=z*z+(c-0.124),
|z| <=10
} 

Carr-261{;Modified Liar3
z=pixel,c=1/pixel,x=cosxx(z*z)+c:
z=flip(1.35-abs(1.35-real(x)-imag(z)))+real(x),
|z| <=10
}

Carr-262{;Modified SJMAND05
z=real(1/pixel)+flip(imag(1/pixel))*p1,
c=p2+p1*real(1/pixel)+flip(imag(1/pixel)):
z=fn1(z)*c,
|z| <=64
}

Carr-263{;Modified SJMAND05
z=real(1/pixel)+flip(imag(1/pixel))*p1,
c=p2+p1*real(1/pixel)+conj(imag(1/pixel)):
z=fn1(z)*c,
|z| <=64
}

Carr-264{;Modified SJMAND05
z=real(1/pixel)+conj(imag(1/pixel))*p1,
c=p2+p1*real(1/pixel)+flip(imag(1/pixel)):
z=fn1(z)*c,
|z| <=64
}

Carr-265{;Modified SJMAND05
z=1/conj(real(1/pixel)+flip(imag(1/pixel))*p1),
c=1/conj(p2+p1*real(1/pixel)+flip(imag(1/pixel))):
z=1/conj(z*z)*(c-0.124),
|z| <=64
}

Carr-266{;Modified SJMAND05
z=1/conj(real(1/pixel)+1/flip(imag(1/pixel))*p1),
c=1/conj(p2+p1*real(1/pixel)+1/flip(imag(1/pixel))):
z=1/conj(z*z)*(c-0.124),
|z| <=64
}

Carr-267{;Modified SJMAND05
z=1/conj(real(1/pixel)+conj(1/flip(imag(1/pixel))*p1)),
c=1/conj(p2+p1*real(1/pixel)+conj(1/flip(imag(1/pixel)))):
z=1/conj(z*z)*(c-0.124),
|z| <=64
}

Carr-268{;InvSherrybrot
c=0.33/pixel,z=1.67/pixel:
c=sqr(1/pixel)/z;
c=z+c;
z=(z*z)*(z*z)-(c+0.0124),
|z| <=10
}

Carr-269{
z=1/pixel,c=1/sin(z):
z=(z*z)+(c-0.124);
z=z*1/(c-0.124),
|z| <=10
}

Carr-270{
z=1/pixel,c=1/sin(z):
z=((z*z)+(flip(c-0.124)));
z=z*1/(c-0.124),
|z| <=10
}

Carr-271{
z=1/pixel,c=1/sin(z):
z=((z*z*z)+sqr(flip(c-0.124)));
z=z*1/(c-0.124),
|z| <=10
}

Carr-272{;Star-Mandelbrot
z=1/pixel,c=1/sin(z):
z=((z*z*z)+(flip(c-0.124)));
z=z*1/(c-0.124),
|z| <=10
}

Carr-273{
z=1/pixel,c=1/cosxx(z):
z=((z*z*z)+flip(c-0.124));
z=z*1/(c-0.124),
|z| <=10
}

Carr-274{
z=pixel,c=1/cosxx(z):
z=((z*z*z)+flip(c-0.124));
z=z*1/(c-0.124),
|z| <=10
}

Carr-275{
z=1/pixel,c=1/cosxx(z*z):
z=((z*z*z)+flip(c-0.124));
z=z*1/(c-0.124),
|z| <=10
}

Carr-276{;Great for CARR'S CRYSTALS. Use B-Trace
z=1/pixel,c=1/cosxx(z*z):
z=((z*z*z)+flip(c*c-0.124));
z=z*1/(c-0.124),
|z| <=10
}

Carr-277{
z=1/pixel,c=1/conj(z*z):
z=((z*z)+flip(c+0.124));
z=z*1/(c+0.124),
|z| <=10
}

Carr-278{
z=1/pixel,c=1/conj(z*z):
z=((z*z)-flip(c+0.124));
z=sqr(z*1/(c+0.124)),
|z| <=10
}

Carr-279{
z=1/pixel,c=1/conj(flip(z*z)):
z=((z*z)-flip(c+0.124));
z-z*1/(c+0.124),
|z| <=10
}

Not-Mine{;Saw this frm somewhere and don't remember where.
z=pixel:
z=1/(sin(z*z+pixel*pixel)),
|z| <=10
}

Carr-280{
z=1/pixel:
z=z*z;
z=1/sin(z*z+pixel*pixel),
|z| <=10
}

Carr-281{
z=1/pixel:
z=1/cosxx(z*z+pixel*pixel),
|z| <=10
}

Carr-282{
z=1/pixel:
z=1/sin(z*z+cosxx(pixel*pixel)),
|z| <=10
}

Carr-283{
z=1/pixel,c=1/(sin(z*z+pixel*pixel)):
z=z*z+(pixel-0.124)*z-1/pixel;
z=c/pixel,
|z| <=10
}

Carr-284{
z=1/pixel,c=1/pixel:
z=(sqr(1/conj(z))+(c-0.124));
|z| <=10
}

Carr-285{
z=1/pixel:
z=1/conj(z*z)+(pixel*pixel),
|z| <=10
}

Carr-286{
z=p1*real(pixel*pixel)+flip(imag(pixel*pixel)),
c=p2+real(pixel)+flip(imag(pixel)+p1):
z=z*z+conj(c-0.124),
|z| <=64
}

Carr-287{
z=p1*real(pixel*pixel)+flip(imag(pixel*pixel)),
c=p2+real(pixel*pixel)+flip(imag(pixel*pixel)+p1):
z=z*z+flip(c-0.124),
|z| <=64
}

Carr-288{
z=p1*real(pixel*pixel)+conj(flip(imag(pixel*pixel))),
c=p2+real(pixel*pixel)+conj(flip(imag(pixel*pixel)+p1)):
z=z*z+log(sqr(c-0.124*c-0.124)),
|z| <=64
}

Carr-289{
z=p1*real(pixel*pixel)+conj(flip(imag(pixel*pixel))),
c=p2-real(pixel*pixel)+conj(flip(imag(pixel*pixel)+p1)):
z=z*z+log(sqr(c-0.124*c-0.124)),
|z| <=64
}

Carr-290{
z=p1*real(pixal*pixel*pixel)-conj(flip(imag(pixel*pixel*pixel))),
c=p2-real(pixel*pixel*pixel)-conj(flip(imag(pixel*pixel*pixel)+p1)):
z=z*z/(c-0.124)/conj(pixel),
|z| <=64
}

Carr-291{;SJMAND09 Modified
z=real(pixel)+flip(imag(p2)),
c=real(p2)+flip(imag(pixel)):
z=z*z+(c-0.124),
|z| <=4
}

Carr-292{
z=real(pixel*pixel-0.2)+flip(imag(p2)),
c=real(p2)+(flip(imag(pixel*pixel-0.2))):
z=sin((z*z)+(c+0.524)),
|z| <=4
}

Carr-293{
z=1/pixel,c=p1:
z=cosxx(z-0.124)+(c+0.524);
c=c*p2;
z=(z*z)+(c-0.524),
|z| <=4
}

Carr-294{;Julia-Mandel Hybrid
z=1/pixel,c=1/pixel:
z=z*z+(-0.6882,-0.1729);
z=z*z+c,
|z| <=4
}

Carr-295{;Julia_Mandel Hybrid
z=1/pixel,c=1/pixel:
z=z*z+c;
z=z*z+(0.3,0.6);
z=z*z+c,
|z| <=4
}

Carr-296{
z=c=1/pixel:
z=(z*z+c)/(cos(z)/z+pixel),
|z| <=4
}

Carr-297{
c=z=1/pixel:
z=z*z+flip(c);
z=(z*z+flip(c))/(cos(z*z)+flip(c)),
|z| <=4
}

Carr-298{
z=c=1/pixel:
z=(z*z)+flip(c);
z=(z*z+flip(c))/(tanh(z*z)+flip(c)),
|z| <=4
}

Carr-299{;Works with Distance Estimator
c=log(pixel),z=1/pixel:
z=c*(2*z*z-1)/1/(sqr(z)+pixel),
|z| <=10
}
