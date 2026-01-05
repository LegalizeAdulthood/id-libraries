{
To see examples of images these formulas can create, download
33CARR.PAR

I can be contacted on CompuServe: 73753,2420 or on America Online:
Genealogy1.

If you have comments or questions please feel free to contact me.

--Bob Carr--
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
 
Carr1454{;Modified ManP1IMJ
z=flip(pixel),c=(0.3,0.6):
z=sqr(z);
z=z+c+real(z),
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

Carr1457{;Julia
z=(1-pixel)/2^pixel,c=pixel:
z=sqr(z);
z=z+sin(z)+c,
c=z+c/2,
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

Carr1459{;Julia
z=cosxx(pixel),c=(-0.6456,0.33):
z=z*z+(c),
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
}

Carr1460{
z=pixel,c=sinh(0.3,0.6):
z=conj(sqr(z)+c)*conj(z+0.5)*conj(c-0.95),
c=z+c/2.125
|z| <=4
}

Carr1461{
z=pixel,c=tanh(pixel):
z=conj(sqr(z)+c)*conj(z+0.75)*conj(c-0.95),
c=z+c/2.125
|z| <=4
}

Carr1462{
z=pixel,c=cosh(pixel):
z=conj(sqr(z)+c)*conj(z+1)*conj(c-0.95),
c=z+c/2.125
|z| <=4
}

Carr1463{
z=pixel,c=cosh(pixel):
z=conj(sqr(z)+c)*conj(z+1)*conj(c-0.95),
c=z+c/6.125
|z| <=4
}

Carr1464{;Faceted Glass modified Mandel
z=c,c=pixel:
z=z*z+c,
|z| <=4
}

Carr1465{;Julia
z=pixel:
z=z*z+(-0.7456,0.2)
|cosxx(z)| <= 4 || |conj(z)| <= 4
}

Carr1466{;Faceted Glass InvMandel
z=c,c=1/pixel:
z=z*z+c,
|cabs(z)| <= 4 || |asin(z)| <= 4 || |sin(z)| <=4
}

Carr1467{;ConjMandel creates Faceted Glass
z=c,c=conj(pixel):
z=z*z+c,
|cabs(z)| <= 4 || |asin(z)| <= 4 || |sin(z)| <=4
}

Carr1468{;TanMandel creates Faceted Glass
z=c,c=tan(pixel):
z=z*z+c,
|cabs(z)| <= 4 || |cosxx(z)| <= 4 || |sinh(z)| <=4
}

Carr1469{;Julia
z=pixel+flip(-0.5),c=(-1.7621,-0.0141):
z=(z*z)+(c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}

Carr1470{;Same as 1469 but "cart before the horse".
z=z1,z1=pixel+flip(-0.5),c=(-1.7621,-0.0141):
z=(z*z)+(c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}

Carr1471{;Faceted Glass Julia
z=z1,z1=conj(pixel*pixel)+flip(-0.5),c=(-1.7621,-0.2141):
z=(z*z)+(c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}

Carr1472{;Faceted Glass Julia
z=z1,z1=cosxx(pixel*pixel)+flip(-0.5),c=(-1.7621,-0.2141):
z=(z*z)+(c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}

Carr1473{;Faceted Glass Julia
z=z1,z1=sqr(1/pixel*1/pixel*pixel)+flip(-0.5),c=(1.1,0.9):
z=(z*z)+(c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}

Carr1474{;BatMandelbrot, Faceted Glass
z=c,c=(conj(1/pixel)^2.32)-1.25:
z=z*z+c,
|z| <=4
}

Carr1475{;Julia
z=(flip(1/pixel)^2.32)-1.25,c=z:
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}

Carr1476{;Julia??
z=(cosxx(pixel)^2.32)-1.25,c=conj(z):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}

Carr1477{;??-Julia-??
z=tan(1/exp(pixel)^2.32)-1.25,c=conj(z):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}

Carr1478{;Julia
z=conj(cosxx(pixel)^2.32)-1.25,c=(0.9/-2.48)-conj(0.2/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}

Carr1479{;A REALLY different Julia ??
z=1/(pixel*conj(5/pixel-0.724)),
c=(0.3,0.6):
z=(z*z+c)/1.3,
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}

Carr1480{;Julia??
z=1/(pixel+pixel-(5/pixel-0.724)),
c=flip(z*pixel):
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}

Carr1481{;Julia?
z=conj(1-pixel)/2.33^1.75,
c=(conj(tan(1/pixel))^1.32)-1.25:
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}

Carr1482{;Julia?
z=conj(1-pixel)/2.33^1.75,
c=(-0.7456,0.2315):
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c-0.1/pixel)))/9+z),
|z| <=4
}

Carr1483{;Julia?
z=conj(1-pixel)/2.33^1.75,
c=imag(4.299,-1.2):
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c-0.1/pixel)))/9+z),
|z| <=4
}

Carr1484{;Julia?
z=(pixel+pixel)/(sqr(1/pixel)),
c=((pixel-1.5)^1.637)/(z-1.2/pixel):
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
}


Carr1485{;Julia? Faceted Glass
z=z1,z1=(pixel+pixel)/(flip(1/pixel*0.91/pixel+0.2/pixel)),
c=1/conj(pixel-1.5)/(conj(z)-1.4/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
}

Carr1486{;Julia, Faceted Glass.
z=z1,z1=(pixel+pixel)/(flip(1/pixel*0.91/pixel+4/pixel)),
c=conj(pixel-1.5)/(flip(z)-1.4/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
}

Carr1487{;Julia
z=(pixel+pixel)/(1/flip(1/pixel*0.91/pixel+0.9/pixel)),
c=conj(pixel-1.5)/(flip(z)-3.4/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sinh(c)))))*real(sqrt(tanh(c)))/9+z),
|z| <=4
}

Carr1488{;Faceted Glass Julia
z=z1,z1=(pixel+pixel)/(1/flip(1/pixel*0.91/pixel+0.9/sqr(pixel))),
c=c1,c1=conj(pixel-1.5)/(flip(z)-3.4/pixel):
z=z*z+c,
c=((1+flip(imag(sqrt(sinh(c)))))*real(sqrt(tanh(c)))/9+z),
|z| <=4
}

Carr1489{;Julia
z=(pixel+pixel)/(flip(1/pixel)),
c=z*(pixel)/flip(pixel-0.1):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
}

Carr1490{;Julia
z=(pixel+pixel-1)/(flip(1/-pixel)),
c=z*(pixel+1)/flip(pixel-0.1):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
}

Carr1491{;Julia
z=(pixel+pixel-1)/(flip(1/-pixel)),
c=z*sqr(pixel-1)/flip(pixel-0.1):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
}

Carr1492{;Julia
z=(pixel+pixel-1)/(flip(1/pixel*0.91/pixel)),
c=z*sqr(pixel)/flip(1.099,0):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
}

Carr1493{;VERY different Julia
z=1/(pixel+pixel)/(cosxx(1/pixel*4/pixel)),
c=z*conj(pixel)/((-1.76,-0.014)/(3/pixel)):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
}

Carr1494{;Julia
z=1/(pixel+pixel)/(cotan(1/pixel*4/pixel)),
c=z*1/conj(pixel+pixel)/((-5.742,-0.009)/(6/pixel)):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
}

Carr1495{;Julia
z=1/(pixel+pixel)/(cotan(1/pixel*4/pixel)),
c=z*1/conj(pixel+pixel)/((sqr(z-0.25)*pixel)/(6/pixel)):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
}

Carr1496{;Julia
z=1/(pixel+pixel)/(tan(sqr(1/pixel*4/pixel))),
c=z*1/(pixel+pixel)/((sqr(pixel*z-1.55)*pixel)/(6/pixel)):
z=z*z+c,
c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z),
|z| <=4
}

Carr1497{;Julia
z=sqr(1-pixel)/(2^pixel-0.5),
c=z*1/conj(pixel+pixel)/(pixel/(6/pixel)):
z=sqr(z);
z=z+sin(z)+c,
c=z+c/2,
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
}

Carr1498{;Julia?
z=1/(pixel*conj(5/pixel-0.724)),
c=pixel+(-0.7456,0.2):
z=sqr(z);
z=z+sin(z)+c,
c=z+c/2,
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
}

Carr1499{;Julia
z=1/(pixel+pixel-(5/pixel-0.724)),
c=flip(z*pixel):
z=(z*z+c),
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z)),
|z| <=4
}


























 












 
