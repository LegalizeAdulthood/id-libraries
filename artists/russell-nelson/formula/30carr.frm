{
To see examples of images these formulas can create, download
30CARR.PAR

I can be contacted on CompuServe: 73753,2420 or on America Online:
Genealogy1.

If you have comments or questions please feel free to contact me.

--Bob Carr--

}

Carr1300{;based on formulas by Brad Beacham and Gordon Lamb
z=real(1/pixel)+flip(imag(1/pixel))
c=real(pixel)+flip(imag(pixel))
count=z/c,shift=(1.099,0):
a=(z^2.71828182845905)*(count<=shift)
b=(z*1/c)*(shift<count)
count=count+1/pixel
z=z-(a+b+c)/(pixel-c*c)
|real(z)| <=100
}

Carr1301{;based on formulas by Brad Beacham and Gordon Lamb
z=real(1/pixel)+flip(imag(1/pixel))
c=real(pixel)+flip(imag(pixel))
count=z/c,shift=(1.099,0):
a=(z^2.71828182845905)*(count<=shift)
b=(z*1/c)*(shift<count)
count=count+sqr(1/pixel)
z=z-((a+b)*1/c)/(pixel-c*c)
|real(z)| <=100
}

Carr1302{;based on formulas by Brad Beacham and Gordon Lamb
z=conj(real(1/pixel))+flip(imag(1/pixel))
c=conj(real(pixel))+flip(imag(pixel))
count=z*1/c,shift=(1.099,0):
a=(z^2.71828182845905)*(count<=shift)
b=(z*1/c)*(shift<count)
count=count/(cosxx(1/pixel))
z=z-((a+b)*1/c)/(pixel-c*c)
|real(z)| <=100
}

Carr1303{;based on formulas by Brad Beacham and Gordon Lamb
z=conj(real(pixel))+flip(imag(pixel))
c=conj(real(1/pixel))+flip(imag(1/pixel))
count=abs(z*1/c),shift=1/(2.099,0):
a=(z^2.71828182845905)*(count<=shift)
b=(z*1/c)*(shift<count)
count=count/(cosxx(sqr(2.5/pixel)))
z=(z-sqr(a+b)^c)/(pixel*pixel+c)
z=(pixel-z*z)/(pixel-c*c)
|real(z)| <=100
}

Carr1304{
z=sqrt(5+1.224)*cosxx(pixel),c=sqrt(pixel)^pixel:
z=cosxx(z+2)+(z/c)/(z-2);
|real(z)| <=100
}

Carr1305{;Modified Cubic_alt.
z=sqrt(pixel)*cosxx(pixel):
z=z^3+z^2;
|z-pixel|<=100
}

Carr1306{
z=sqr(pixel)*cosxx(pixel),c=1/sqr(pixel)^pixel:
z=(z^3+z^4+z^5+sqr(z^3));
|z-pixel|<=100
}

Carr1307{
z=sqr(1/pixel)*cotanh(1/pixel),c=1/sqr(pixel)^pixel:
z=(pixel*pixel+z)-(z^3+z^4+z^5+sqr(z^3));
|z-pixel|<=100
}

Carr1308{
z=sqr(1/pixel)*cotanh(1/pixel),c=1/sqr(pixel)^pixel:
z=((pixel*pixel+z)-cosxx(z^3+z^4+z^5+sqr(z^3)))/(pixel-c*c);
|z-pixel|<=100
}

Carr1309{
z=sqr(1/pixel)*cotanh(1/pixel),c=1/sqr(pixel)^pixel+z:
z=((z+pixel)+(z^2+pixel)+(z^4+pixel))/((z*1/c)+pixel);
|z-pixel|<=100
}

Carr1310{;Cardiod modified
z=cosxx(1/pixel)*imag(1/pixel),
x=flip(imag(1/pixel)),y=conj(real(1/pixel)),
c=x*(cosh(y)+x*sinh(y)):
z=(pixel-z*z)/(pixel-c*c),
|real(z)| <=100
}

Carr1311{;Cardiod modified
z=cosxx(1/pixel)*imag(1/pixel),
x=flip(imag(1/pixel)),y=conj(real(1/pixel)),
c=x*(cosh(y)+x*sinh(y)):
z=1/sqr(z*z+pixel)/(pixel-c*c),
|real(z)| <=100
}

Carr1312{;Creates Faceted Glass with "G"
z=pixel,c=c1-pixel,
y=pixel/z-(1.099,0),
c1=conj(imag(pixel))+y:
z=z-(pixel*(pixel^z*1/c));
|real(z)|<=100
}

Carr1313{;Creates Faceted Glass with "G"
z=1/pixel,c=c1^2+c2^2,
c2=pixel/z-(1.099,0),
c1=conj(imag(pixel))+c2:
z=z*z+c+sin(z);
|real(z)|<=100
}

Carr1314{;Creates Faceted Glass with "G"
z=1/pixel,c=c1^2+c2^2,
c2=pixel*pixel/z-(1.099,0),
c1=conj(imag(pixel*pixel))+c2:
z=z*z+c+sin(z);
|real(z)|<=100
}

Carr1315{;Creates Faceted Glass with "G".
z=1/pixel,c=c1^2+c2^2,
c2=pixel*pixel/z-pixel,
c1=conj(imag(pixel*pixel))+c2:
z=z*z+c+sin(z*z);
|real(z)|<=100
}

Carr1316{;Creates Faceted Glass with "G".
z=1/pixel,c=c1^2+c2^2,
c2=pixel*pixel/z-pixel,
c1=conj(imag(pixel*pixel))+c2:
z=z-(pixel*pixel+z)/(pixel-c*c);
|real(z)|<=100
}

Carr1317{;Creates Faceted Glass with "G".
z=1/pixel,c=(c1/c2^c2/c1),
c2=sqr(z-1),
c1=1/(pixel*pixel*pixel)+c2:
z=(pixel*pixel+z)/(pixel-c*c);
|real(z)|<=100
}

Carr1318{;Creates Faceted Glass with "G".
z=1/pixel,c=(c1/c2^c2/c1),
c2=sqr(z-1),
c1=1/(pixel*pixel*pixel)+c2:
z=(pixel*pixel+z)/c-(pixel-c*c);
|real(z)|<=100
}

Carr1319{
z=1/pixel,c=(c1/c2^c2/c1),
c2=sqr(z*z-1),
c1=1/(pixel*pixel*pixel)+c2:
z=z-(c*1/z);
|real(z)| <=100
}

Carr1320{
z=1/pixel,c=c1/c2,
c2=pixel+z,
c1=pixel+c2:
z=z*z+c;
|real(z)| <=100
}

Carr1321{
z=1/pixel,c=c1/c2,
c2=pixel+z,
c1=pixel+c2:
z=z*1/c;
|real(z)| <=100
}

Carr1322{
z=4/pixel,c=pixel*2/z-c1/c2,
c2=pixel+z,
c1=pixel+c2:
z=z*1/c+1/pixel;
|real(z)| <=100
}

Carr1323{
z=4/pixel,c=pixel*2/z-c1/c2,
c2=pixel+z,
c1=pixel+c2:
z=(pixel-z*1/c)/(pixel*pixel+1/z^c);
|real(z)| <=100
}

Carr1324{
z=4/pixel,c=pixel*2/z-c1/c2,
c2=1.75*(z*pixel),
c1=0.5/pixel+c2:
z=(z/c)/(pixel*pixel+1/z^c);
|real(z)| <=100
}

Carr1325{
z=4/pixel,c2=1.75*(z*pixel),
c1=0.5/pixel+c2,c=pixel*2/z-c1/c2:
z=z-(z/c)/(pixel*pixel+1/z^c);
|real(z)| <=100
}

Carr1326{
z=4/pixel,c2=1.75*(z*pixel),
c1=0.5/pixel+c2,c=pixel*2/z-c1/c2:
z=z*1/c;
z=(z-(z+c+1/pixel))*(z+(z-c-1/pixel));
|real(z)| <=100
}

Carr1327{
z=4/pixel,c2=1.75*(z*pixel),
c1=0.5/pixel+c2,c=pixel*2/z-c1/c2:
z=z/c+1/pixel;
z=(z-(z+c+1/pixel))*(z+(z-c-1/pixel));
|real(z)| <=100
}

Carr1328{
c=z*z,z=1/pixel:
z=z*1/c;
|real(z)| <=100
}

Carr1329{
c=z*z*z,z=1/pixel:
z=(z*1/c)/(pixel-c*c);
|real(z)| <=100
}

Carr1330{
c=z*z,z=1/pixel:
z=(z*1/c)/(pixel*pixel+z);
|real(z)| <=100
}

Carr1331{
c=z*z+pixel,z=1/pixel*0.91/pixel:
z=sqr(z*1/c)/(pixel*pixel+z);
|real(z)| <=100
}

Carr1332{
c=conj(imag(pixel))/z-2.5^(pixel+2.324)/(5/pixel),
z=(1/pixel^pixel+2.3):
z=z*1/c,
|real(z)| <=100
}

Carr1333{
c=z+1/z+1/pixel,z=real(pixel)+1.5:
z=(z*1/c);
|real(z)| <=100
}

Carr1334{
c=z+1/z+1/pixel,z=real(pixel)+1.5:
z=(z*1/c)/(z*z+c);
|real(z)| <=100
}

Carr1335{
c=z+1/z+1/pixel,z=imag(pixel)+1.5:
z=(z*1/c)/(pixel-(z*z+c));
|real(z)| <=100
}

Carr1336{
z=imag(pixel)+1.5,c=z+1/z+1/pixel:
z=sqr(z*1/c)/(pixel-(z*z+c));
|real(z)| <=100
}

Carr1337{
z=1/pixel,c=1/pixel:
z=(pixel-z*z)/(pixel-(z*z+c));
|real(z)| <=100
}

Carr1338{
z=1/pixel,c=1/pixel:
z=z-(pixel-z*z)/(pixel-(z*z+c));
|real(z)| <=100
}

Carr1339{
z=sqr(pixel),c=sqr(1/pixel):
z=z-(pixel-z*z)/(pixel-(z*z+c));
|real(z)| <=100
}

Carr1340{
z=sqr(pixel),c=sqr(1/pixel):
z=z-cosxx(pixel-z*z)/(pixel-(z*z+c));
|real(z)| <=100
}

Carr1341{
z=sqr(pixel),c=sqr(1/pixel):
z=z-cotanh(pixel-z*z)/(pixel-(z*z+c));
|real(z)| <=100
}

Carr1342{
z=sqr(pixel),c=sqr(1/pixel):
z=z-(pixel*pixel-z*z)/(pixel-(z*z+c));
|real(z)| <=100
}

Carr1343{
z=sqr(pixel),c=sqr(1.5/pixel):
z=z-(pixel-z*z*z+1/pixel)/(pixel-(z*z+c));
|real(z)| <=100
}

Carr1344{
z=cosxx(1/pixel),z2=flip(real(z)),z3=conj(imag(z)),
c=cotanh(1/pixel),z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
z=(z*1/c)+z4;
z2=conj(z2^z3)/z;
z3=conj(z3^z4)/z;
z4=(1/z*z+z4)/(pixel-z*z+c),
|real(z)| <=100
}

Carr1345{
z=cosxx(1/pixel),c=cotanh(1/pixel),
z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
z=((z*1/c)+z4)/(pixel-z*z+c);
z4=(1/z*z+z4)/(pixel-z*z+c),
|real(z)| <=100
}

Carr1346{
z=cosxx(1/pixel*0.91/pixel),c=cotanh(1/pixel),
z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
z=((z*1/c)+z4)/(pixel-z*z+c);
z4=(1/z*z+1/pixel)/(pixel-z*z+c),
|real(z)| <=100
}

Carr1347{
z=cosxx(1/pixel*0.91/pixel),
c=cotanh(pixel*pixel),
z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
z=((z*1/c)+z4)/(pixel-z*z+c);
|real(z)| <=100
}

Carr1348{
z=1/sqr(pixel*pixel),
c=sqr(pixel)+log(sqrt(z)):
z=z-(z*1/c)/(pixel-(z*z+c));
|real(z)| <=100
}

Carr1349{
z=sqr(pixel*pixel),
c=sqr(pixel)+log(cosxx(z))
c1=log(sqrt(sqr(pixel*pixel)))+c:
z=z-(z/c1)/(pixel-(z*z+c));
|real(z)| <=100
}

Carr1350{
z=pixel,
c=1/pixel,
c1=(z-1)+(c-1):
z=z-(z*1/c1)/(pixel-(z*z+c));
|real(z)| <=100
}












































