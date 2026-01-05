{
To see examples of images these formulas can create, download
32CARR.PAR

I can be contacted on CompuServe: 73753,2420 or on America Online:
Genealogy1.

If you have comments or questions please feel free to contact me.

--Bob Carr--


Carr1400 & up
}

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

Carr1405{;Modified T.J.E. Reed formula;Julia
c=z=pixel:   
z=z*z+c,   
c=(1+flip(imag(sqrt(flip(c)))))*real(sqrt(conj(c)))/6+z,    
|z| <= 4
}

Carr1406{;Julia (?) that produces math errors.
         ;Modified T.J.E. Reed formula
c=z=pixel/0.995:   
z=z*z+c,   
c=(0.5+flip(imag(sqrt(flip(c)))))*real(sqrt(conj(c)))/9+z,    
|z| <= 4
}

Carr1407{;Ditto above
z=pixel/0.995,c=(-0.74543,0.2):   
z=z*z+c,   
c=(0.5+flip(imag(sinh(sqrt(flip(c))))))*real(sqrt(conj(tan(c))))/7+z,    
|z| <= 4
}

Carr1408{;Ditto above
z=pixel/0.995,c=(-1.09989,0.595927):   
z=z*z+c,   
c=(0.5+flip(imag(sinh(sqrt(flip(c))))))*real(sqrt(conj(tan(c))))/9+z,    
|z| <= 4
}

Carr1409{;Ditto above.
z=pixel/0.995,c=1/pixel:   
z=z*z+c,   
c=(1+flip(imag(cosh(sqrt(flip(c))))))*real(sqrt(conj(tanh(c))))/9+z,    
|z| <= 4
}

Carr1410{;Ditto above
z=pixel-1,c=sqr(1/pixel):   
z=z*z+(0.3,0.6),   
c=(1+flip(imag(cosh(sqrt(conj(c))))))*real(sqrt(conj(tanh(c))))/7.9+z,    
|z| <= 4
}

Carr1411{;Ditto above.
z=pixel,c=sqrt(sqr(z*z*z*z)):   
z=z*z+c,   
c=(1+flip(imag(cosh(sqrt(conj(c))))))*real(sqrt(conj(tanh(c))))/9+z,    
|z| <= 4
}

Carr1412{;Ditto above.
z=pixel,c=(-0.7549,0.209981):   
z=z*z+c,   
c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/9+tan(z-0.2),    
|z| <= 4
}

Carr1413{;Ditto above.
z=pixel,c=(-0.745,0.213):   
z=z^2+c;
c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/6+z,    
|z| <= 4
}

Carr1414{;Ditto above.
z=tan(pixel),c=conj(-0.89895,0.377913):   
z=z^2+c;
c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/6+z,    
|z| <= 4
}

Carr1415{;Ditto above.
z=tan(pixel),c=asinh(-0.89895,0.377913):   
z=z^2+c;
c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/6+z,    
|z| <= 4
}

Carr1416{;Ditto above.
z=tan(pixel),c=1.224*(-0.89895,0.577913):   
z=z^2+c;
c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/9+z,    
|z| <= 4
}

Carr1417{;Ditto above.
z=tan(cosxx(pixel)),c=1.224*(1.2,-0.09):   
z=z^2+c;
c=cotan(1+imag(conj(sqrt(c))))*tan(real(conj(sqrt(c))))/9+z,    
|z| <= 4
}

Carr1418{;Ditto above.
z=tan(cosxx(pixel)),c=1.224*(abs(imag(pixel))):   
z=z^2+sin(pixel);
c=cotan(1+imag(1/conj(sqrt(c))))*(real(conj(sqrt(c))))/9+z,    
|z| <= 4
}

Carr1419{;Julia frm ?
z=pixel,c=1/pixel:   
z=z*z+(-0.7564,0.21978)+sin(sqrt(z-0.51)),
c=conj(real(sqrt(c)))*flip(imag(sqrt(c)))/9+z,    
|z| <= 4
}

Carr1420{;Julia ?
z=cosxx(pixel):   
z=((z*z)+0.5)+(1/log(real(pixel*pixel-1.5))-1.55);
|z| <= 4
}

Carr1421{;Modified BUILTN.FRM Julia
z=pixel,  
c=((-0.7456,0.39562)*(|(-0.7456,0.2)|<=0)+(-0.7456,0.2) ):
z=sqr(z*z)+c,
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <= 4
}

Carr1422{;Modified BUILTN.FRM Julia
z=pixel,  
c=((-0.7456,0.39562)*(|(-0.7456,0.2)|<=0)+(-0.7456,0.2) ):
z=(z*z)+c,
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <= 4
}

Carr1423{;Modified BUILTN.FRM Julia
z=pixel,  
c=((1.099,0)*(|(-0.7456,0.42362)|<=0)+sqr(-0.7456,0.42362) ):
z=(z*z)+(0.4,0.35),
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <=4
}

Carr1424{; Modified BUILTN.FRM Julia
z=((1-pixel)/2.5^0.75),  
c=((1.099,0)*(|(-0.7456,0.42362)|<=0)+sqr(-0.7456,0.42362) ):
z=(z*z)+(-1.76,-0.014),
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <=4
}

Carr1425{;Modified BUILTN.FRM Manowar
z=pixel+(1.099,0),z1=z,c=pixel,
t=(4*(real(1/pixel)<=0)+real(1/pixel)*(0<1/pixel)):
oldz=z,
z=sqr(oldz)+z1+c,
z1=oldz,
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <= t
}

Carr1426{;Modified BUILTN.FRM Manowar
z=cotanh(pixel)+(1.099,0),z1=z,c=sin(pixel),
t=(4*(real(pixel)<=0)+real(pixel)*(0<pixel)):
oldz=z,
z=sqr(oldz)+z1+c,
z1=oldz,
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <= t
}

Carr1427{;Modified BUILTN.FRM Manowar
z=cotan(pixel)+(1/pixel),z1=z,c=sin(pixel),
t=(4*(real(pixel)<=0)+real(pixel)*(0<pixel)):
oldz=z,
z=sqr(oldz)+z1+c,
z1=oldz,
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z| <= t
}

Carr1428{;Julia,Modified BUILTN.FRM Julia
z=pixel, 
c=((0.3,0.6)*(|(1/pixel)|<=0)+(1/pixel)),
t=(4*(real(1/pixel)<=0)+real(1/pixel)*(0<1/pixel)):
z=sqr(z)+c;
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z, 
|z|<=t
}

Carr1429{;Julia
z=pixel,c=(-0.7456,0.2):
z=z*z+c,
c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z,
|z| <=4
}

Carr1430{;"Dog Bone" Julia
z=pixel,c=1/(-0.7456,0.2):
z=z*z+c,
c=tan((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
}

Carr1431{;Modified Julzpower from BUILTN.FRM
z=pixel+(p1),c=((0.3,0.6)*(|p1|<=0)+p1),
m=(2*(|p2|<=0)+p2):
z=z^real(m)+c,
c=tan((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z|<=4
}

Carr1432{;Julia
z=pixel+(1.099,0),c=(-0.7456,0.2):
z=z*z+c,
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
|z| <=4
}

Carr1433{;Julia
z=pixel+(1.099,0),c =(-0.7456,0.2):
z=sqr(z)+c,
z=z+c/4,
|z| <=4
}

Carr1434{;Julia
z=sqr(sqr((1-pixel)/2.5^0.75)),c=(-0.7456,0.212):
z=z*z+c,
z=z+c/4,
|z| <=4
}

Carr1435{;Julia
z=sqr(sqr(sqr((1-pixel)/2.5^0.75))),c=(-0.7456,0.212):
z=z*z+c,
z=z+c/4,
|z| <=4
}

Carr1436{;Interesting Julia manipulation.
z=pixel,
c=0.25*(-0.7456,0.2):
z=sqr(z)+c*4;
z=z+c/1.3,
|z| <=4
}

Carr1437{;What-ja-macallit ?
z=pixel,
c=(0.5/pixel)-(-0.7456,0.2):
z=sqr(z)+(c-1.2);
z=z+c/2,
|z| <=4
}

Carr1438{;Seems to make spiders, julias & mandels.
z=pixel,
c=(0.3/pixel)-(0.342,1.97):
z=sqr(z)+1/log(c);
z=z+c/2,
|z| <=4
}

Carr1439{
z=1-(1/pixel)^3.13,
c=tan(abs(pixel)):
z=sqr(z)+(c^(1/-pixel));
z=z+c/2,
|z| <=4
}

Carr1440{;Julia
z=pixel-(1/pixel)^4.13,
c=(-0.7456,0.2):
z=sqr(z)+c;
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
z=z+c/2,
|z| <=4
}

Carr1441{;Julia
z=conj(pixel)-(1/pixel)^4.13,
c=(-0.7456,0.2):
z=sqr(z)+c;
c=((1+sin(imag(sqrt(-c))))*sin(real(sqrt(-c)))/9+z),
z=z+c/2,
|z| <=4
}

Carr1442{;Fractal Fender C Modified.
z=0.224,x=|z|,c=(-0.7456,0.2):
(z=cosh(z)+c)*(1<x)+(z=z)*(x<=1),
z=sqr(z)+pixel,
x=|z|,
|z|<=4
}

Carr1443{;Fractal Fender C Modified.
z=0.224,x=|z|,c=(-0.7456,0.2):
(z=cosh(z)+c)*(1<x)+(z=z)*(x<=1),
z=sqr(z)+pixel,
c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z),
x=|z|,
|z|<=4
}

Carr1444{;Pseudo Spider?
z=sin(pixel+1),c=z-(conj(1/pixel^2*pixel)):
z=z*z+c;
c=(z/1.05)+c/2,
|z| <=4
}

Carr1445{;Spider variant.
z=sin(pixel+1),c=(-0.7456,0.4):
z=z*z+c;
c=(z/1.0489)+c/2,
z=1.34*(-z),
|z| <=4
}

Carr1446{
z=sin(pixel+1),c=pixel:
z=z*z+c-1.49;
c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z);
|z| <=4
}

Carr1447{
z=sin(pixel*pixel+1),c=pixel:
z=z*z+c-1.49;
c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z);
|z| <=4
}

Carr1448{
z=cotan(pixel*pixel+1),c=tan(pixel):
z=z*z+c-1.49;
c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z);
|z| <=4
}

Carr1449{
z=cotan(pixel*pixel+1),c=sqr(1/pixel*0.91/pixel):
z=z*z+c-1.49;
c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z);
|z| <=4
}

Carr1450{
z=conj(pixel*pixel+1),c=sqr(flip(0.4,0.35)):
z=(z*z)+c-1.49;
c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z);
|z| <=4
}
