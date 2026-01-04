
Carr1400{
z=pixel/0.999,c=sqrt(flip(pixel)):
z=sqr(conj(z))+c-1.5,
|z|<=4
}

Carr1401{
z=pixel/0.999,c=sqrt(1/(1/(1/(1/pixel)))):
z=z^2.09+c-0.5,
|z|<=4
}

Carr1402{;Julia (I think??)
z=pixel,c=sqrt(1/(1/(1/(5/pixel)))):
z=z*z+(c-1),
|z|<=4
}

Carr1403{;Modified T.J.E. Reed formula;Julia
c=z=pixel:   
z=z*z+c,   
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/3+z,    
|z| <= 4
}

Carr1404{;Modified T.J.E. Reed formula;Julia
c=z=pixel:   
z=z*z+c,   
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/6+z,    
|z| <= 4
}

Carr1697{;Mandel type.
c=(pixel)/(flip(pixel)-conj(1/pixel)),
z=(1/pixel)/(pixel-flip(1/pixel)-conj(1/pixel)):
z=z*z+c;
|real(z)| <=4
}


Carr1710{;Mandelbrot.
c=conj(pixel^1/pixel)/(pixel-(flip(1/pixel)-conj(1/pixel))),
z=(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
z=z*z+c;
|real(z)| <=4
}

