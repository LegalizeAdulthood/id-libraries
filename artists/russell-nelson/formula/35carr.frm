{
To see examples of images these formulas can create, download
35CARR.PAR

I can be contacted on CompuServe: 73753,2420 or on America Online:
Genealogy1.

If you have comments or questions please feel free to contact me.

--Bob Carr--
}

Carr1550{;Julia, use floating point.
z=1/pixel-sqrt(1/pixel),
c=sin(1/pixel)/cosxx(1/pixel):
z=sqr(z)+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1551{;Julia
z=conj(1/pixel)/sqr(1/pixel),
c=cotanh(1/pixel)/cosh(1/pixel):
z=sqr(z)+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1552{
z=conj(pixel)/sqr(pixel),
c=conj(1/pixel)/exp(1/pixel):
z=(sqr(z)+c)/1.3;
|real(z)| <=4
}

Carr1553{;Spider type.
z=cos(pixel)/sin(0.3,0.6),
c=z/(sin(1/pixel+1)/cos(-0.7456,0.2)):
z=(sqr(z)+c);
c=z+c/2.125,
|real(z)| <=4
}

Carr1554{;Crystalbrot.
z=sqr(pixel^pixel)/(tan(pixel)),
c=(sqr(2/pixel))/(cos(2/pixel)*sin(2/pixel)):
z=z*z+c;
|real(z)| <=4
}

Carr1555{;Julia
z=(pixel^pixel)/(cotan(pixel)),
c=(cos(1/pixel))/(cos(2/pixel)*sin(2/pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1556{;Spider type.
z=(pixel^pixel)/(cotan(pixel)),
c=(cos(1/pixel))/(cos(2/pixel)*sin(2/pixel)):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
}

Carr1557{;Spider type.
z=(pixel^pixel)/(conj(pixel)),
c=(cos(1/pixel))/(cos(2/pixel)*sin(2/pixel)):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
}

Carr1558{;Mandel type.
z=conj(pixel^pixel)/(flip(pixel)),
c=cos(pixel)/(conj(pixel)*cosxx(2/pixel)):
z=z*z+c;
|real(z)| <=4
}

Carr1559{;Julia
z=conj(pixel^pixel)/(flip(pixel^pixel)),
c=cos(pixel)/(conj(pixel)*cosxx(3/pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1560{;Julia
z=conj(pixel*pixel)/flip(pixel*pixel),
c=cos(pixel)/conj(pixel)^cosxx(3/pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1561{;Julia
z=conj(2/pixel*(2*pixel))/(flip(1-pixel)),
c=(cos(pixel))/(conj(3/pixel)^cosxx(pixel)):
z=(z*z+c);
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1561-A{;Julia,Faceted Glass
z=z1,z1=conj(2/pixel*(2*pixel))/(flip(1-pixel)),
c=(cos(pixel))/(conj(3/pixel)^cosxx(pixel)):
z=(z*z+c);
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1562{;Julia
z=sin(1/pixel)/(flip(1-pixel)),
c=(tan(pixel))/(conj(3/pixel)-cosxx(pixel)):
z=(z*z+c);
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1563{;Spider type.
z=sin(1/pixel)/(flip(1-pixel)),
c=(tan(pixel))/(conj(3/pixel)-cosxx(pixel)):
z=(z*z+c);
c=z+c/2.125,
|real(z)| <=4
}

Carr1564{;Julia.
z=flip(pixel*pixel)/tan(sqr(pixel-0.5)),
c=sqr(sqr(pixel))/conj(sqr(pixel)):
z=(z*z+c);
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1565{;Mandelbrot type.
z=flip(pixel*pixel)/cosh(sqr(pixel-0.5)),
c=sqr(sqr(pixel))/sinh(sqr(pixel)):
z=(z*z+c);
|real(z)| <=4
}

Carr1566{;Julia.
z=(1/pixel*0.88/pixel),
c=((pixel^z)-1)*(pixel^(z-1)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1567{;Julia.
z=sqr(1/pixel*0.88/pixel),
c=((pixel^z)-1)/conj(pixel^(z)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1568{;Julia.
z=conj(sqr(1/pixel*0.88/pixel)),
c=((pixel^z)-1)/exp(pixel^(z)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1569{;Mandelbrot type.
z=1/conj(tan(0.91/pixel*0.88/pixel)),
c=(cos(pixel))/(conj(3/pixel)^cosxx(pixel)):
z=z*z+c;
|real(z)| <=4
}

Carr1570{;Mandelbrot type.
z=((-0.7456,0.2)+1)/pixel:
c=pixel*pixel/(0.3,0.6):
z=z*z+c;
|real(z)| <=4
}

Carr1571{;Mandel type.
z=((-0.7456,0.2)+1)/pixel,
c=pixel*pixel/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
|real(z)| <=4
}

Carr1572{;Spider type.
z=((-0.7456,0.2)+1)/pixel,
c=pixel*pixel/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
}

Carr1573{;Mandel type.
z=((-0.7456,0.2)+1)/pixel,
c=tan(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
|real(z)| <=4
}

Carr1574{;Mandel type.
z=((-0.7456,0.2)+1)/pixel,
c=1/cos(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
|real(z)| <=4
}

Carr1575{;Julia.
z=((-0.7456,0.2)+1)/pixel,
c=1/cos(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1576{;Mandelbrot type.
z=((-0.94562,0.329)+1)/(pixel),
c=4/sin(3/tan(pixel*pixel))/((0.3,0.6)*(-0.3,0.3)):
z=z*z+c;
|real(z)| <=4
}

Carr1577{;Julia.
z=(conj(sin(2/pixel)))/sin(pixel),
c=((-0.3,0.3)/(0.3,0.6))/conj(pixel*pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1578{;Julia.
z=((-0.7456,0.2)+1)/pixel,
c=asin(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1579{;Julia
z=1/asin(pixel*(1.099,0))/(4/sin(pixel*pixel)),
c=asin(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1580{;Julia.
z=sqr(0.654,0)+sqr(pixel)-1.5,
c=sqr(z-0.1)/((0.654,0)-asin(1/pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1581{;Spider.
z=log(0.654,0)+sqrt(pixel)-0.75*(1/pixel),
c=sqrt(z-0.35)/((0.654,0)-asin(1/sqrt(pixel))):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
}

Carr1582{;Julia.
z=conj(cos(tan(0.18/pixel)))-0.25,
c=sin(conj(exp(1.79/pixel)))/(1.5/pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1583{;Spider type.
z=conj(cos(tan(0.18/pixel)))-0.25,
c=sin(conj(exp(1.79/pixel)))/(1.5/pixel):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
}

Carr1584{;Mandelbrot type.
z=conj(cos(tan(0.18/pixel)))-0.25,
c=sin(conj(exp(1.79/pixel)))/(1.5/pixel):
z=z*z+c;
|real(z)| <=4
}

Carr1585{;Julia.
z=conj(sin(cotan(1.18/pixel*1.12/pixel)))-0.25,
c=cosxx(conj(exp(1.79/pixel)))/(0.59/pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z),
|real(z)| <=4
}

Carr1586{;Hmmmmmmm....
z=conj(sin(cotan(1.18/pixel*1.12/pixel)))-0.25,
c=cosxx(conj(exp(1.79/pixel)))/(0.59/pixel):
z=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
c=z*z+c;
|real(z)| <=4
}

Carr1587{;Julia
z=((1/cosxx(1/sin(cotanh(1.18/pixel)))-0.25)/(conj(sqr(0.5/pixel))))-0.5,
c=1/cosxx(1/conj(asin(0.79/pixel)))-0.5:
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
}

Carr1588{;Julia.
z=1/asin(pixel),
c=1/conj(pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
}

Carr1589{;Julia.
z=1/acos(pixel),c=1/asin(pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
}

Carr1590{;Spider type.
z=1/acos(pixel),
c=1/asin(pixel):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
}

Carr1591{;Spider type.
z=1/acos(pixel+pixel),
c=1/asin(pixel):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
}

Carr1592{;Julia.
z=pixel/atan(pixel),
c=(1+pixel)/atan(pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
}

Carr1593{;Julia.
z=pixel/(1/asin(pixel)),
c=(1+pixel)/conj(pixel):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
}

Carr1594{;Julia.
z=pixel/(2/acos(pixel+0.33)),
c=(1+pixel)/(cosxx(2/pixel-0.25)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
}

Carr1595{;Julia.
z=pixel/(2/acos(1/pixel*pixel+0.33)),
c=(1+1.5/pixel)/(cosxx(2/pixel-0.25)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
}

Carr1596{;Spider type.
z=pixel/(2/acos(1/pixel*pixel+0.33)),
c=(1+1.5/pixel)/(cosxx(2/pixel-0.25)):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
}

Carr1597{;Mandelbrot type.
z=pixel/(2/acos(1/pixel*pixel+0.33)),
c=(1+1.5/pixel)/(cosxx(2/pixel-0.25)):
z=z*z+c;
|real(z)| <=4
}

Carr1598{;Spider type.
z=asin(pixel)/(2/acos(1/pixel*pixel+0.33)),
c=(1+sin(pixel))/(1/conj(cosxx(2/pixel-0.25))):
z=z*z+c;
c=z+c/2.125,
|real(z)| <=4
}

Carr1599{;Julia
z=sqrt(1/asin(pixel)),
c=(1+sin(pixel)):
z=z*z+c;
c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z);
|real(z)| <=4
}








 
 


 




































