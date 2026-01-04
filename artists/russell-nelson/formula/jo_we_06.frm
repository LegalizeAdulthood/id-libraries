;; Formulafile for jo_we_06.par
;; formulas from Bob Carr

Carr-689{
z=1/pixel,c=sinh(sqr(z^2.724))+0.124:
z=z*z+c,
|z| <=10
}


Carr1451{;Creates Julia.
z=cotan(pixel*pixel+1),c=sqr(1/pixel*0.91/pixel):
z=(z*z)+c-1.49;
c=1/z*z+1/pixel,
|z| <=4
}

Carr1452{
z=flip(pixel*pixel),c=conj(pixel*pixel):
z=(z*z)+c-1.49;
c=1/z*z+1/pixel,
|z| <=4
}

Carr1453{;Modified ManP1IMJ
z=pixel,c=(0.3,0.6):
z=sqr(z);
z=z+c+imag(z),
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
}
 
Carr1455{;Modified ManP1IMJ
z=pixel,c=sqr(0.3,0.6):
z=z*z;
z=z+c+sin(z),
c=z+c/2,
|z| <=4
}

Carr1456{;Modified ManP1IMJ
z=pixel,c=(-0.7456,0.2):
z=z*z;
z=z+c+sin(z),
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
}

Carr1458{;Julia
z=pixel,c=(0.9/-3.48)-0.88/pixel:
z=z*z+c;
c=z+c/2.125,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z|<=4
}

Carr1462{
z=pixel,c=cosh(pixel):
z=conj(sqr(z)+c)*conj(z+1)*conj(c-0.95),
c=z+c/2.125
|z| <=4
}

Carr1477{;??-Julia-??
z=tan(1/exp(pixel)^2.32)-1.25,c=conj(z):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}

Carr1495{;Julia
z=1/(pixel+pixel)/(cotan(1/pixel*4/pixel)),
c=z*1/conj(pixel+pixel)/((sqr(z-0.25)*pixel)/(6/pixel)):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
}

Carr1791{
z=1/pixel,
c=1/(pixel-(0.124/z*(0.524/pixel/z))):
z=0.124/pixel/c*c*c*pixel/z^(1.23),
|real(z)| <=4
}

