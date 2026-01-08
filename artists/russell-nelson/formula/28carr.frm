{
Some years back, Al Einstein and I were graduate students together.
We were both chronically short of coins. We devised a scheme to rip
off a BINGO game at the local Olde Folk's Home. We tried formula
after formula trying to come up with one that would predict the
BINGO numbers. Alas all attempts failed. Al ended up getting a job
doing RELATIVE something or other, I got a job at McDonalds.

I came across these old formulas a couple of weeks back and "damn"
if they didn't work with FRACTINT so they are herewith enclosed.

I can be contacted on CompuServe: 73753,2420 or on America OnLine:
Genealogy1

--Bob Carr--
}

Carr1200{
z=1/pixel,z2=z+flip(cosxx(1/pixel)),z3=z+z2,
c=cosxx(sqr(imag(1/pixel))):
z=z*z2*z3+c;
z2=z2^z3;
z3=z3^z2;
|real(z)| <=100
}

Carr1201{
z=1/pixel,z2=z^1/z*z,z3=z^z2,
c=cosxx(1/pixel):
z=(z*z+c)*(z*z2*z3+c);
z2=z-(z2^z3);
z3=z-(z3^z2);
|real(z)| <=100
}

Carr1202{
z=cosxx(1/pixel),z2=z^1/z*z,z3=z^z2,
c=cabs(1/pixel):
z=(z*1/c)/(1/z^c*1/c);
z2=z-(z2^z3);
z3=z-(z3^z2);
|real(z)| <=100
}

Carr1203{
z=cosxx(1/pixel),z2=abs(real(z)),z3=abs(imag(z)),
c=cotanh(1/pixel):
z=(z*1/c)/(pixel-z*z);
z2=(1-z2^z3);
z3=(1-z3^z2);
|real(z)| <=100
}

Carr1204{
z=cosxx(1/pixel),z2=abs(real(z)),z3=abs(imag(z)),
c=cotanh(1/pixel):
z=sqr(sqr(z*c))+c+1.224;
z2=conj(z2^z3)/c;
z3=conj(z3^z2);
|real(z)| <=100
}

Carr1205{
z=cosxx(1/pixel),z2=flip(real(z)),z3=conj(imag(z)),
c=cotanh(1/pixel):
z=sqr(sqr(z*c))+c+1.224;
z2=conj(z2^z3)/c*c;
z3=conj(z3^z2)/c;
|real(z)| <=100
}

Carr1206{
z=cosxx(1/pixel),z2=flip(real(z)),z3=conj(imag(z)),
c=cotanh(1/pixel),z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
z=(z*1/c)+z4;
z2=conj(z2^z3)/z;
z3=conj(z3^z4)/z;
z4=(1/z*z+z4)/(pixel-c*c),
|real(z)| <=100
}

Carr1207{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel),
z2=conj(sqr(pixel-1))/cosxx(sqr(pixel)):
z=z*1/c;
z2=z2*1/c,
|real(z)| <=100
}

Carr1208{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel*0.91/pixel),
z2=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)):
z=z*1/c;
z2=z2*1/z,
|real(z)| <=100
}

Carr1209{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel*0.91/pixel),
z2=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)):
z=(z-(z/c+z*1/c))/(pixel-c*c);
z2=z*1/z2;
|real(z)| <=100
}

Carr1210{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel*0.91/pixel),
z2=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)),zp1=z+c+z2:
z=(zp1-(z/c+z*1/c))/(pixel-c*c)
z=(z-(z/c+z*1/c))/(pixel-c*c);
z2=z*1/z2;
|real(z)| <=100
}

Carr1211{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel*0.91/pixel),
z2=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)),zp1=z+c+z2:
z=(zp1-(z*1/c))/(pixel-c*c);
z=(z-(z*1/c))/(pixel-c*c);
z2=z*1/zp1;
|real(z)| <=100
}

Carr1212{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel*0.91/pixel),
z1=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)),c1=conj(z+c+z1):
z=z*1/c;
z=z1*1/c1,
|real(z)| <=100
}

Carr1213{
z=cosxx(sqr(1/pixel)),c=cotanh(1/pixel*0.91/pixel),
z1=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)),c1=conj(z+c+z1):
z=z*z+c;
z=z1*z1+c;
z=z*z+c1,
|real(z)| <=100
}

Carr1214{;Newton variant
z=sinh(sqr(1/pixel)),z1=conj(sqr(pixel-1))/flip(sqr(pixel+1)),
c1=sqr(z+c+z1):
z1=z*z*z;
c1=z1*z;
z=(3*c1+1)/(4*(z*z*z)),
|real(z)| <=100
}

Carr1215{;Newton variant (sort of)
z=sinh(sqr(1/pixel)),c=cosxx(1/pixel*0.91/pixel),
z1=conj(sqr(pixel-1))/flip(sqr(pixel+1)),c1=sqr(z+c+z1):
z1=conj(z*z*z);
c1=z1*z;
z=(3*c1+1)/(4*(z*z*z)),
|real(z)| <=100
}

Carr1216{
z=(real(1.099,0)+1)/pixel,c=(imag(2.0,0)-1)/pixel:
z=z/c;
z=z*z+c,
|real(z)| <=100
}

Carr1217{
z=(real(1.099,0)+1)/pixel,c=(imag(2.0,0)-1)/pixel:
z=cosxx(z/c);
z=z*z+c,
|real(z)| <=100
}

Carr1218{
z=(real(1.099,0)+1)/pixel,c=(imag(2.0,0)-1)/pixel:
z=(z/c);
z=z-(z*z+c);
z=z*1/c,
|real(z)| <=100
}

Carr1219{
z=1/(pixel*pixel),c=imag(cosxx(1/pixel)):
z=z-(pixel-z*z)/(pixel-c*c),
c=(1+flip(imag(c)))*real(c)/2+z,
|real(z)| <=100 
}

Carr1220{
z=1/(pixel*pixel*pixel),
c=pixel-sqr(imag(cosxx(1/pixel))):
z=c-z*pixel,
|real(z)| <=100 
}

Carr1221{
z=pixel,c=pixel,
z1=cosxx(pixel),c1=cosxx(pixel):
z=z*z1+c;
z=z1*z+c1,
|real(z)| <=100 
}

Carr1222{;Modified Rollo Silver formula
z=1/pixel,zz=z*z,zzz=zz*z,z=(1.-(1.099,0))*zz+((1.099,0)*zzz):
z=z+1/pixel;
zsq=z*1/z;
zcu=zsq*1/z;
z=(1.-(1.099,0))*zsq+(1.099,0)*1/zcu,
|real(z)| <=100
}

Carr1223{;Modified Rollo Silver formula
z=(1/pixel*0.91/pixel),zz=z*z,zzz=zz*z,
z=(1.-(2.099,0))*zz+((2.099,0)*zzz):
z=cosxx(z+1/pixel);
zsq=z*1/z;
zcu=zsq*1/z;
z=z-((1.-(2.099,0))*zsq+(2.099,0)*1/zcu),
|real(z)| <=100
}

Carr1224{;Modified Rollo Silver formula
z=(1/pixel*0.91/pixel),zz=z*z,zzz=zz*z,
z=(1.-(2.099,0))*zz+((2.099,0)*zzz):
z=cosxx(z+1/pixel)/(z*1/z);
zsq=z*1/z;
zcu=zsq*1/z;
z=z-((1.-(2.099,0))*zsq+(2.099,0)*1/zcu)/(pixel-z*z),
|real(z)| <=100
}

Carr1225{
z=(1/pixel*0.91/pixel),
c=(cosxx(1.7/z))/(1.099,0):
z=cotanh(sqr(z*1/c))+(2.099,0),
|real(z)| <=100
}

Carr1226{
z=(1/pixel*0.91/pixel):
z=z^(z-1)*cosxx(z)+pixel;
|real(z)| <=100
}

Carr1227{
z=(1/pixel*0.91/pixel),c=(1.7/z)/(1.099,0):
z=c-(z^(z-1)*cosxx(z)+pixel);
|real(z)| <=100
}

Carr1228{
z=(1/pixel*0.91/pixel),c=(1.7/z)/(1.099,0):
z=z*1/c+((1.099,0)-1)*z-(1.099,0);
|real(z)| <=100
}

Carr1229{
z=(1/pixel*0.91/pixel),c=tan(1.7/z)/(1.099,0):
z=z*1/c+((1.099,0)-1)*z-(1.099,0);
|real(z)| <=100
}

Carr1230{
z=(1/pixel*0.91/pixel),c=cotanh(1.7/z)/(1.099,0):
z=z/c;
z=z*1/c+((1.099,0)-1)*z-(1.099,0);
|real(z)| <=100
}

Carr1231{
z=(1/pixel*0.91/pixel),c=cotanh(1.4/z)/(2.099,0):
z=z/c;
z=z/c+((1.099,0)-1)*z-(1.099,0);
|real(z)| <=100
}

Carr1232{
z=1/sqr(pixel/(1.099,0)),c=(1.4/z)/(2.099,0):
z=z*1/c;
z=(z-(z*z+c))+((1.099,0)-1)*z-(1.099,0);
|real(z)| <=100
}

Carr1233{
z=sqr(1/pixel*1.4/pixel):
z=(1.099,0)*z*(1-flip(z)*flip(z));
|real(z)| <=100
}

Carr1234{
z=sqr(1/pixel*1.4/pixel):
z=(1.099,0)*z*(1-conj(z)*conj(z));
|real(z)| <=100
}

Carr1235{
z=cosxx(1/pixel*1.4/pixel),c=flip(pixel)-1:
z=z-(sqr(pixel/z))/c-(sqr(pixel/c));
|real(z)| <=100
}

Carr1236{
z=cosxx(1/pixel*1.4/pixel),c=flip(pixel)-1:
z=z-(sqr(pixel/z))/c-(sqr(pixel/c));
z=z/c,
|real(z)| <=100
}

Carr1237{
z=flip(1/sqr(pixel*pixel+pixel)),c=cosxx(1.6*pixel-0.5):
c=pixel+z/c;
z=c-z*pixel,
|real(z)| <=100
}

Carr1238{
z=conj(1/sqr(pixel*pixel+pixel)),c=cosxx(1.6*pixel-0.5):
c=pixel+z/c;
z=c-z*pixel,
|real(z)| <=100
}

Carr1239{
z=conj(1/sqr(pixel*pixel+pixel)),
c=cotanh(1.6*pixel-0.5):
c=pixel+z/c;
z=c-z*pixel,
|real(z)| <=100
}

Carr1240{
z=conj(1/sqr(pixel*pixel+pixel)),c=cotanh(1.6*pixel-0.5):
z=pixel+z*1/c;
z=(cosxx(c-z*pixel))/0.6,
|real(z)| <=100
}

Carr1241{
z=exp(1/pixel),c=z*(1/pixel):
z=z*c-(z*cosxx(z)-z)/(pixel-c*c);
|real(z)| <=100
}

Carr1242{
z=exp(1/pixel),c=z*(1/pixel):
z=z*c-(z*cotanh(z)-z)/(pixel-c*c);
|real(z)| <=100
}

Carr1243{
z=(exp(1/pixel*0.91/pixel)),c=z*(1/pixel):
z=z*c-(conj(z*z)-z)/(pixel-c*c);
|real(z)| <=100
}

Carr1244{
z=(exp(1/pixel*0.91/pixel)),c=sqr(z*(1/pixel)):
z=z*c-(conj(z*z)-z)/(pixel-c*c);
|real(z)| <=100
}

Carr1245{
z=(sqr(1/pixel*0.91/pixel)),
c=sqr(z*(1.4/pixel)):
z=(pixel^pixel-z^z)/(pixel^pixel-c^c);
|real(z)| <=100
}

Carr1246{
z=cabs(1/pixel),
c=abs(1/pixel):
z=(exp(z)*1/c)/(pixel-c*c);
|real(z)| <=100
}

Carr1247 (XAXIS_NOPARM) {; FractalFenderC modified
                         ; Modified Lee Skinner frm.
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=(pixel)/(5.8,2.01)
  x=|real(z)|, c=cosxx(sqr(1/pixel)):
  IF (x>1)
    z=cosxx(z)+pixel
  ENDIF
  z=sqr(z*1/c)+pixel
  x=|real(z)|
  x<=4
}
 
Carr1248 (XAXIS_NOPARM) {; FractalFenderC modified
                         ; Modified Lee Skinner frm.
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=imag(sqr(pixel))
  x=|real(z)|, c=cosxx(sqr(pixel)):
  IF (x>1)
    z=imag(cosxx(z)+sqr(pixel))
  ENDIF
  z=sqr(z/c)+(pixel*pixel)
  x=|real(z)|
  x<=100
}

Carr1249{
z=(1/pixel),
c=cosxx(sqr(1/pixel)):
z=z-2*(c*pixel);
z=c-2*(z*pixel);
|real(z)| <=100
}

Carr1250{
z=(1/pixel),
c=cosxx(sqr(1/pixel)):
z=z-2*cabs(c*pixel);
z=c-2*cabs(z*pixel);
|real(z)| <=100
}








