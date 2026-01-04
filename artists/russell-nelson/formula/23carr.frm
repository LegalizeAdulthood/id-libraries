To see examples of the images these formulas can create see 
23Carr.par file.

--Bob Carr-- Please don't copy these formulas for distribution
without contacting me first. CIS: 73753,2420 AOL: Genealogy1
}

Carr-963{
z=1/(pixel*pixel),
c=cosxx(1.099,0)/pixel:
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
}

Carr-964{
z=1/(pixel*pixel),
c=(1.099,0)/pixel:
z=(z*1/c)/cotanh(pixel-c*c),
|real(z)| <=100
}

Carr-965{
z=1/(pixel*pixel),
c=(1.099,0)/pixel:
z=(z*1/c)/sinh(pixel-c*c),
|real(z)| <=100
}

Carr-966{
z=1/(pixel*pixel),
c=(1.099,0.01)/pixel:
z=(2^z*1/c)/(pixel-c*c),
|real(z)| <=100
}

Carr-967{
z=1/(pixel*pixel),
c=(1.099,0.01)/real(pixel):
z=(z/c)/(pixel-c*c),
|real(z)| <=100
}

Carr-968{
z=imag(1/(pixel*pixel*pixel)),
c=(1.099,0)/(1/abs(pixel*pixel+2)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
}

Carr-969{
z=imag(1/(pixel*pixel*pixel)),
c=(4.299,-1.2)/(1/abs(pixel*pixel+2)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
}

Carr-970{
z=imag(1/(pixel*pixel*pixel)),
c=(4.299,-1.2)/(1/abs(pixel*pixel+2)):
z=(z*(1/c*1/c))/(pixel-c*c);
z=z*1/c,
|real(z)| <=100
}

Carr-971{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(0.342,1.97)/(1/abs(pixel*pixel+2)):
z=(z*(1/c*1/c+4/pixel))/(pixel-c*c);
z=z*1/c,
|real(z)| <=100
}

Carr-972{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-0.742,-0.009)/(1/abs(pixel*pixel+2)):
z=(z*(1/c*1/c+4/pixel))/(pixel-c*c);
z=z*1/c

|real(z)| <=100
}

Carr-973{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-5.742,-0.009)/(1/abs(pixel*pixel+2)):
z=(z*(1/c*1/c*1/c+4/pixel))/(pixel-c*c*1/c),
|real(z)| <=100
}

Carr-974{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-5.742,-0.009)/(1/abs(pixel*pixel+2)):
z=abs(z*(1/c*1/c*1/c+4/pixel))/(pixel-c*c*1/c),
|real(z)| <=100
}

Carr-975{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-1.7621,0.0141)/(1/abs(pixel*pixel+2)):
z=(abs(z*(1/c*1/c*1/c+4/pixel))/(pixel-c*c*1/c))/2.8,
|real(z)| <=100
}

Carr-976{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-1.7621,0.0141)/(1/abs(pixel*pixel+2)):
z=(abs(z*(4/c*4/c*4/c+4/pixel))/(pixel-c*c*4/c))/2.8,
|real(z)| <=100
}

Carr-977{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-0.1672,1.0413)/(1/abs(pixel*pixel+2)):
z=(abs(z*(1/c*1/c*1/c+4/pixel))/(pixel-c*c*4/c))/2.8,
|real(z)| <=100
}

Carr-978{
z=imag(1/((pixel+2)*pixel*pixel)),
c=(-0.1672,1.0413)/(1/abs(pixel*pixel+2)):
z=(abs(z*(1/c*4/c*4/c+4/pixel))/(pixel-c*c*4/c))/2.8,
|real(z)| <=100
}

Carr-979{
z=sqr(1/((pixel+2)*pixel*pixel)),
c=(-0.125,1.1187)/(1/abs(pixel*pixel+2)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
}

Carr-980{
z=sqr(1/((pixel+2)*pixel*(pixel+2))),
c=((1.099,-0.0099)/(0.342,1.97))^((sqrt5+1)/2):
z=((z*1/c*1/c*1/c)/(pixel-c*c))/2.8,
|real(z)| <=100
}

Carr-981{
z=sqr(1/((pixel+2)*pixel*(pixel+2))),
c=(1.099,-0.0099)/(pixel^pixel)/z:
z=1/(z*z+pixel*pixel)/(pixel-c*c),
|real(z)| <=100
}

Carr-982{
z=sqr(1/((pixel+2)*pixel*(pixel+2))),
c=(0.342,1.97)^z:
z=((pixel-z*1/c)/(pixel-c*c))/2.8,
|real(z)|<=100
}

Carr-983{
z=1/pixel,
c=(-5.742,-0.009)+5.05:
z=(z*z*z+(2.734-1)*z-0.734)/(pixel-c*c),
|real(z)| <=100
}

Carr-984{
z=1/pixel*4/pixel,
c=(-5.099,0.1)+5.05:
z=(z*(2.734-1)*z-0.734)/(pixel-c*c),
|real(z)| <=100
}

Carr-985{
z=cotanh(1/pixel*4/pixel),
c=pixel:
z=((-0.7499,-0.014407)*(z*1/c))/(pixel-c*c),
|real(z)| <=100
}

Carr-986{
z=sqr(1/pixel*4/pixel),
c=pixel*pixel:
z=z*z*z/5+z*z+c,
|real(z)| <=100
}

Carr-987{
z=2.234*(real(pixel))+conj(imag(pixel)*0.734),
c=(4.299,-1.2)*sqr(conj(pixel)):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
}

Carr-988{
z=2.234*(real(pixel))+conj(imag(pixel)*(1.099,0)),
c=(4.299,-1.2)*sqr(conj(pixel)):
z=(pixel-(1.099,0)*z)/(pixel-(1.099,0)*c),
|real(z)| <=100
}

Carr-989{
z=2.234*(real(pixel))+conj(imag(pixel)*(1.099,0)),
c=(4.299,-1.2)*sqr(conj(pixel)):
z=(pixel-(1.099,0)*(z*1/c))/(pixel-(1.099,0)*c*4/c),
|real(z)| <=100
}

Carr-990{
z=2.234*(real(pixel))+conj(imag(pixel)*(-5.742,-0.009)),
c=(-1.7621,-0.0141)*sqr(conj(pixel)):
z=(pixel-(1.0,0.4)*(z*1/c))/(pixel-(-1.099,0)*c*4/c),
|real(z)| <=100
}

Carr-991{
z=2.234*(real(pixel))+conj(imag(pixel)*(-5.742,-0.009)),
c=fn3(1/pixel)^(-1.7621,-0.0141)*sqr(conj(pixel)):
z=(pixel-(1.0,0.4)*(z*1/c))/(pixel-(-1.099,0)*c*4/c),
|real(z)| <=100
}

Carr-992{
z=((1/pixel)/0.71)/(0.85/pixel+1.324),
c=((1/pixel)/2)/z-2.5^fn4(pixel+1.324)/(4/pixel):
z=z*1/c,
|real(z)| <=100
}

Carr-993{
z=((1/pixel)/0.71)/(0.85/pixel+1.324),
c=((1/pixel)/2)/z-2.5^fn4(pixel+1.324)/(4/pixel);
z=((pixel-2)-z*1/c)/(pixel-c*c),
|real(z)| <=100
}

Carr-994{
z=((1/pixel)/0.71)/(0.85/pixel+1.324),
c=((1/pixel)/2)/z-2.5^fn4(pixel+1.324)/(0.5/pixel):
z=(1/z*z*z+z)/(pixel-c*c),
|real(z)| <=100
}

Carr-995{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^fn4(pixel+2.324)/(0.5/pixel):
z=(1/z*z*z+z)/(pixel-c*c),
|real(z)| <=100
}

Carr-996{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^fn3(pixel+2.324)/(0.5/pixel):
z=(1/z^z+c)/(pixel-c*c),
|real(z)| <=100
}

Carr-997{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
}

Carr-998{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
z=2*(z*1/c)/(pixel-c*c);
z=(z*1/c)/(pixel-c*c),
|real(z)| <=100
}

Carr-999{
z=((1/pixel)/0.71)/(0.85/pixel+2.324),
c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
z=(z*(cotanh(1/c))),
|real(z)| <=100
}