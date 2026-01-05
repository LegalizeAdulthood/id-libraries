{
Some years back when I was serving as the Archbishop of Canterbury,
under His Majesty's pleasure, I took a 2 year Sabbatical from my
post to help a friend in need (Bob Lee, better known to most of you
as General Robert E. Lee).

Bob was having a tough time in the War between the States. He needed
a spy, of the highest calibur, to get information about the 
damnable Yankee army. I took the job.

When I got to Washington I didn't tell Honest Abe that I was on a 
Sabbatical and he assummed I was there on the King's Buisiness. Abe
wasn't the brightest guy in his age group.
 
I started immediately gathering all of the Army and war stuff 
information I could get. The amount I obtained was staggering. I 
wrote everything down in a formula code known only to Bob and
myself. My trusted courier was summoned, loaded down with the 
formulas and sent galloping to the south. Alas, the poor sucker
was shot dead by a drunk Yankee guard. The O.O.T.D. (Officer of
the Day, for those of you in Rio Linda) saw the papers the courier
was carrying, noticed my Royal Seal on them, and promptly returned
them to me unharmed. Whew, what a stroke of luck !!

A couple of months back, I was going over my memoirs and noticed
the formulas. Damnation, I thought. These things will work on
Fractint. So here they are for your pleasure.

The above story is true.

I can be contacted by E-MAIL via CompuServe: 73753,2420 or 
via America OnLine:Genealogy1

If you feel so inclined, send me comments.

--Bob Carr--


}

Carr1251{;Modified ZEPPO frm of Brad Beacham
z=1/(pixel*pixel*pixel),
c=conj(sqr(1/pixel*0.91/pixel)):
z=conj(abs(imag(z/pixel)*c-real(z/pixel)))+flip(conj(abs(real(z/pixel)-imag(z/pixel))))-(1.099,0);
|real(z)| <=100
}

Carr1252{;Modified ZEPPO frm of Brad Beacham
z=1/(pixel*pixel*pixel),
c=cotanh(sqr(1/pixel*0.91/pixel)):
z=conj(abs(imag(z/c)*c-real(z/c)))+flip(conj(abs(real(z/c)-imag(z/c))))-(1.099,0);
|real(z)| <=100
}

Carr1253{;Modified ZEPPO frm of Brad Beacham
z=abs(1/(pixel*pixel*pixel)),
c=cosxx(sqr(1/pixel*0.91/pixel)):
z=((abs(imag(z*1/c)*c-real(z/c)))+flip(conj(abs(real(z*1/c)-imag(z*1/c))))-(1.099,0))/1.34;
|real(z)| <=100
}

Carr1254{;Modified ZEPPO frm of Brad Beacham
z=abs(1/(pixel*pixel*pixel)),
c=cosxx(sqr(1/pixel*0.91/pixel)):
z=((abs(imag(z*1/c)*c-real(z/c)))+flip(conj(abs(real(z*1/c)-imag(z*1/c))))-(2.099,0))/0.34;
|real(z)| <=100
}

Carr1255{;Modified ZEPPO frm of Brad Beacham
z=abs(1/(pixel*pixel*pixel)),
c=cosxx(sqr(0.56/pixel*1/pixel)):
z=(conj(abs(imag(z*1/c)*c-real(z/c)))+flip(conj(abs(real(z*1/c)-imag(z*1/c))))-(1.099,0));
|real(z)| <=100
}

Carr1256{
z=sqr(1/(pixel*pixel*pixel)),
c=exp(sqr(0.56/pixel*1/pixel)):
z=(abs(imag(conj(z*1/c)/(pixel-c*c)))*c+(cabs(real(flip(z*1/c)/(pixel-c*c)))))/0.6;
|real(z)| <=100
}

Carr1257{
z=sqrt(1/(pixel*pixel*pixel)),
c=sinh(sqr(0.56/pixel*1/pixel)):
z=(abs(imag(conj(z*1/c)/(pixel-c*c)))*c+(cabs(real(flip(z*1/c)/(pixel-c*c)))))/0.6;
|real(z)| <=100
}

Carr1258{
z=conj(1/(pixel*pixel*pixel)),
c=cosxx(sqr(0.56/pixel*1/pixel)):
z=(abs(imag(pixel/z))*cabs(real(pixel/c)))/(pixel-c*c);
|real(z)| <=100
}

Carr1259{
z=conj(1/(pixel*pixel*pixel)),
c=cosxx(sqr(0.56/pixel*1/pixel)):
z=(abs(real(pixel/z))*cabs(imag(pixel/c)))/(pixel-c*1/z);
|real(z)| <=100
}

Carr1260{
z=conj(1/(pixel*pixel*pixel)),
c=cosxx(sqr(0.56/pixel*1/pixel)):
z=(z-(abs(real(z/pixel)))*z-(cabs(imag(c/pixel))))/(pixel-z/c);
|real(z)| <=100
}

Carr1261{
z=conj(1/(pixel*pixel*pixel)),
c=cosxx(sqr(0.56/pixel*1/pixel)):
z=((abs(real(z-1/pixel)))*(cabs(imag(c-pixel))))/(1/pixel*1/pixel);
|real(z)| <=100
}

Carr1262{
z=sinh(pixel),
c=cosxx(pixel):
z=(z*z+c)/(pixel-c*c);
|real(z)| <=100
}

Carr1263{
z=cotanh(pixel*pixel),
c=cosxx(pixel):
z=abs(conj(imag(z*z+c)))*abs(imag(cosxx(z*z*c)))+2.224;
|real(z)| <=100
}

Carr1264{
z=sqr(pixel*pixel),
c=cosxx(sqr(1/pixel*0.91/pixel)):
z=sqr(pixel)-(abs(conj(imag(pixel+z*z))))*(flip(real(abs(pixel-c*c))));
|real(z)| <=100
}

Carr1265{
z=sqr(pixel*pixel),
c=cosxx(sqr(1/pixel*0.91/pixel)):
z=sqr(pixel)-(abs(conj(imag(pixel+z*z))))*(abs(real(flip(sqr(pixel+c*c)))));
|real(z)| <=100
}

Carr1266{
z=sqr(pixel*pixel),
c=cosxx(sqr(1/pixel*0.91/pixel)):
z=(sqr(pixel)-z)*(sqr(pixel)-c);
|real(z)| <=100
}

Carr1267{
z=1.5-pixel,
c=cosxx(pixel-1.5):
z=((z-(z*z))+(c-(1/c*c))+pixel)/(z*1/c);
|real(z)| <=100
}

Carr1268{
z=1.5-pixel,
c=cosxx(pixel-1.5):
z=((z-(z*z))+(c-(1/c*c))+sqr(pixel))/sqrt(z*1/c);
|real(z)| <=100
}

Carr1269{
z=sqr(1.5-pixel),
c=exp(pixel-1.5):
z=z-(conj(sqr(z-1)*conj(sqr(z-2)))*sqr(pixel/c+1))/(c-(pixel-c*c));
|real(z)| <=100
}

Carr1270{
z=sqr(0.5-pixel),
c=sqr(pixel-1.5):
z=z-(cosxx(sqr(z-1)*cosxx(sqr(z-2)))*sqr(pixel/c+1))/(c-(pixel-c*c));
|real(z)| <=100
}

Carr1271{
z=sqr(sqr(sqr(0.5-pixel))),
c=(sqr(pixel-1.5)):
z=((z*z+pixel)+(z*z+(z/pixel)))/(c-(pixel/c));
|real(z)| <=100
}

Carr1272{;Modified Tchebychev formula
z=sqr(sqr(sqr(0.5-pixel))),
c=z*z:
z=z-(pixel*(c*c*c-6*c*c+9*c-2));
|real(z)| <=100
}

Carr1273{
z=sqr(sqr(sqr(2.5-pixel))),
c=z-(pixel-1.5):
z=z*1/(c*c-1/pixel);
|real(z)| <=100
}

Carr1274{;Modified Newton
z=pixel,c=(1.099,0):
z3=z*z*z;
z4=z3*z;
z5=z4*z;
z=(3*z4+c)/(4*z3)
|real(z)| <=100
}

Carr1275{;Modified Newton
z=abs(pixel),c=(1.099,0):
z3=conj(z*z*z);
z4=flip(z3*z);
z5=z4*z;
z6=z5*z;
z=(3*z4+c)/(4*z3)
|real(z)| <=100
}

Carr1276{
z=abs(pixel),c=cabs(sqr(flip(pixel))):
c=c-c*1/z;
z=z-z*1/c;
|real(z)| <=100
}

Carr1277{
z=abs(pixel-1),c=cabs(sqr(conj(pixel))):
c=c-c*1/z;
z=z-z*1/c;
|real(z)| <=100
}

Carr1278{
z=abs(sqr(pixel-1)),c=cabs(sqr(sqr(pixel))):
z=2*cabs(z)-sqr(3*(z*4/c));
|real(z)| <=100
}

Carr1279{
z=abs(sqr(pixel-1)),c=cabs(sqr(sqr(pixel))):
z=(2*cabs(z)-sqr(3*(z*4/c)))/(pixel-c*c);
|real(z)| <=100
}

Carr1280{
z=conj(sqr(1/pixel)),c=sqr(conj(1/pixel)):
z=z-(z^(z^(1/z))-pixel)/(pixel-c*c),
|real(z)| <=100
}

Carr1281{
z=conj(sqr(1/pixel)),c=sqr(conj(1/pixel)):
z=z-(z^(z^(1/z*1/z))-pixel)/(pixel-c*c),
|real(z)| <=100
}

Carr1282{
z=cosxx(pixel),c=cotanh(pixel):
z=pixel^z*1/(pixel^c);
|real(z)| <=100
}

Carr1283{
z=sinh(pixel),c=tanh(pixel):
z=(pixel*pixel^z)*(1/(pixel*pixel^c));
|real(z)| <=100
}

Carr1284{
z=cotanh(1/pixel-0.5),c=cosxx(pixel-1)
z=(z-(cosxx(sqr(imag(z*z+c))))-z*1/c)/(pixel-c*c);
|real(z)| <=100
}

Carr1285{
z=cotanh(1/pixel*0.91/pixel),c=cosxx(pixel*pixel)
z=(z-(cosxx(sqr(conj(z*z*z+c))))-z*1/c)/(pixel-c*c);
|real(z)| <=100
}

Carr1286{
z=flip(imag(pixel)),c=(1.099,0)+real(pixel):
z=(conj(z*z)*1/c)+z*1/c;
|real(z)| <=100
}

Carr1287{
z=flip(imag(pixel)),c=(1.099,0)+real(pixel):
z=((conj(z*z)*1/c)+z*1/c)^pixel;
|real(z)| <=100
}

Carr1288{
z=flip(imag(pixel)),c=(1.099,0)+real(pixel):
z=(z-(conj(z*z*z*z)*1/c)+z*1/c)^pixel*pixel;
|real(z)| <=100
}

Carr1289{
z=sqrt(pixel),c=log(pixel):
z=((c/z)-pixel)/(pixel-c*c);
|real(z)| <=100
}

Carr1290{
z=sqrt(pixel),c=log(pixel):
z=((abs(z)/cabs(c))-pixel)/(pixel-c*c);
|real(z)| <=100
}

Carr1291{
z=log(sqr(1/pixel)),c=1/sqr(log(pixel)):
z=(z-(z^c^pixel))/(c*c-pixel);
|real(z)| <=100
}

Carr1292{
z=log(sqr(1/pixel)),c=1/sqr(log(pixel)),c1=z/c^c/z:
z=z*1/c1;
z=(z-(z^c^pixel))/(c*c-pixel);
|real(z)| <=100
}

Carr1293{
z=log(sqr(1/pixel)),c=1/sqr(log(pixel)),c1=z/c^c/z:
z=z/c1;
z=(z-(z^c1))/(c*c-pixel);
|real(z)| <=100
}

Carr1294{
z=1/sqr(sqr(pixel)),c=sqr(sqr(cosxx(pixel))):
z=z-(z+c-conj(imag(z*1/c)));
|real(z)| <=100
}

Carr1295{
z=1/pixel,c=1/sqr(pixel):
z=z-(z*pixel)-(c-(pixel/sqr(z*1/c)));
|real(z)| <=100
}

Carr1296{
z=1/pixel,c=(1/sqr(pixel)):
z=z-(z*pixel)-(c-(pixel/sqr(z*1/c)));
z=z+(z*pixel)+(c+(pixel/sqr(z*1/c))),
|real(z)| <=100
}

Carr1297{
z=1/pixel,c=(1/sqr(pixel)):
z=(z-(z*pixel))/((1.099,0)-c*c);
|real(z)| <=100
}

Carr1298{
z=real(pixel)+flip(imag(pixel)),
c=real(pixel)+conj(imag(pixel)):
z=(z*z+pixel)/(pixel*pixel+z);
|real(z)| <=100
}

Carr1299{
z=real(pixel)+flip(imag(pixel)),
c=real(pixel)+conj(imag(pixel)):
z=((z*z+pixel*pixel)/(pixel*pixel+z));
|real(z)| <=100
}










































