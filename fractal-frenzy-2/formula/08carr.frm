Carr-368 onward

}

Carr-368{;Distance Estimator works with this FRM
c=z=sqr(1/fn2(1/pixel-1.5)):
z=z*z*z+c,
|z| <=10
}

Carr-369{
c=z=sqr(1/fn2(1/pixel-1.5)):
z=z*z*z*z+flip(c*c),
|z| <=10
}

Carr-370{
c=z=sqr(1/fn2(1/pixel-1.5)):
z=z*z+flip(c),
|z| <=10
}

Carr-371{;Distance Estimator works with this FRM
c=z=sqr(1/fn2(1/pixel-1.5)):
z=c*(2*z*z-1),
|z| <=10
}

Carr-372{
c=z=sqr(1/fn2(1/pixel-1.5)):
z=(2*z*z-1)+flip(c),
|z| <=10
}

Carr-373{
z=sqr(1/fn2(1/pixel-1.5)),
c=sqr(1/fn2(1/pixel)):
z=log(z-2.7)*(z*z)+c,
|z| <=10
}

Carr-374{
z=sqr(1/fn2(1/pixel-1.5)),c=sqr(1/fn2(1/pixel)):
z=log(z*z-2.7)*(z*z)/c,
|z| <=10
}

Carr-375{
z=1/sqr(1/fn2(1/pixel-2.01)),c=1/sqr(1/fn2(1/pixel)):
z=conj(z+sqr(z-0.124))/pixel,
|z| <=10
}

Carr-376{
z=1/sqr(1/fn2(1/pixel-2.01)),c=1/sqr(1/fn2(1/pixel)):
z=conj(z+sqr(z-0.324))/pixel,
|z| <=10
}

Carr-377{
z=1/sqr(1/fn2(1.2/pixel-2.01)),c=1/sqr(1/fn2(1/pixel)):
z=conj(z+sqr(z-0.324))/pixel,
|z| <=10
}

Carr-378{
z=1/sqr(1/fn2(1.15/pixel-2.01)),c=1/sqr(1/fn2(1/pixel)):
z=conj(z+sqr(z-0.324))/pixel,
|z| <=10
}

Carr-379{
z=1/sqr(1/fn2(1.15/pixel-2.01)),c=1/sqr(1/fn2(1/pixel)):
z=conj(z+sqr(z-0.324))/(0.48/pixel),
|z| <=10
}

Carr-380{
z=sqr(1/fn2(1.159/pixel-2.11)),c=1/sqr(1/fn2(1/pixel)):
z=conj(z+sqr(z-0.524))/(0.489/pixel),
|z| <=10
}

Carr-381{
z=sqr(0.78/fn2(1.159/pixel-2.11)),
c=1/sqr(1/fn2(1/pixel)):
z=conj((z/0.8)+sqr(z-0.324))/(0.489/pixel),
|z| <=10
}

Carr-382{
z=sqr(0.78/fn2(1.159/pixel-2.11)),c=1/sqr(1/fn2(1/pixel)):
z=flip(conj((z/0.8))+sqr(z-0.324))/(0.489/pixel),
|z| <=10
}

Carr-383{
z=1/sqr(0.78/fn2(1.159/pixel-2.11)):
z=flip(conj((z/0.8))+sqr(z-0.324))/(0.489/pixel),
|z| <=10
}

Carr-384{
z=1/sqr(0.78/fn2(1.159/pixel-2.11)):
z=0.7/sqr(conj((z/0.8))+sqr(z-0.324))/(0.489/pixel),
|z| <=10
}

Carr-385{
z=3/sqr(0.3/fn2(1.159/pixel-2.11)):
z=conj((z/0.8)+sqr(z-0.324))/(0.489/pixel),
|z| <=10
}

Carr-386{
z=3*sqr(fn2(1.159/pixel-2.11)):
z=conj((z/0.8)+sqr(z-0.324))/(0.489/pixel),
|z| <=10
}

Carr-387{;Dave Oliver formula modified.Distance Estimator works here.
z=1/pixel:
z=((pixel^z)-1)+(pixel^(z-1)),
|z| <=10
}

Carr-388{;Dave Oliver formula modified
z=((pixel^z)-1)*(pixel^(z-1)),c=1/pixel:
z=z*z+c,
|z| <=10
}

Carr-389{;Dave Oliver formula modified
z=1/((pixel^z)-1)*(pixel^(z-1)),c=1/pixel:
z=z*z+c,
|z| <=10
}

Carr-390{;Dave Oliver formula modified
z=1/((pixel^z)-2)*(pixel^(z-2)),c=1/pixel-1:
z=z*z+c,
|z| <=10
}

Carr-391{
z=1/((pixel^z)+2)*(pixel^(z+2)),c=1/pixel-1:
z=z*z+c,
|z| <=10
}

Carr-392{;Distance Estimator works here
z=c=((sqrt 5 + 1)/2)/pixel:
z=z*z+flip(c),
|z| <=10
}

Carr-393{;Distance Estimator works here
z=c=((sqrt 5 + 1)/2)/pixel:
z=z*z*z+flip(c*c),
|z| <=10
}

Carr-394{
z=c=((sqrt 3 + 0.5)/0.124)/pixel:
z=z*z*z+flip(c),
|z| <=10
}

Carr-395{
z=c=((sqrt 9 + 2.234)/0.324)/pixel:
z=z*z*z+flip(c),
|z| <=10
}

Carr-396{;Distance Estimator works here
z=c=((sqrt 5 + 1)/2)/pixel:
z=conj(z*z)+flip(c),
|z| <=10
}

Carr-397{;Distance Estimator works here
z=c=((sqrt 5 + 1)/2)/pixel:
z=1/conj(z*z)+flip(c),
|z| <=10
}

Carr-398{;Distance Estimator works here
z=c=((sqrt 5 + 1)/2)/pixel:
z=1/sqr(z*z)+flip(c),
|z| <=10
}

Carr-399{;Distance Estimator works here
z=c=((sqrt 5 + 1)/2)/pixel:
z=z*z+flip(c/2),
|z| <=10
}

Carr-400{
z=flip(real(1/pixel)),c=flip(imag(pixel)):
z=z*z+c,
|z| <=10
}

Carr-401{
z=flip(real(1/pixel)),c=flip(imag(pixel)):
z=z*z+c+((sqrt5+1)/2)/pixel,
|z| <=10
}

Carr-402{
z=flip(real(1/pixel)),c=flip(imag(pixel)):
z=z*z+c+((sqrt5+1)/2)*pixel,
|z| <=10
}

Carr-403{;Distance Estimator works here
z=flip(real(1/pixel)),c=flip(imag(pixel)):
z=z*z+c+conj(((sqrt5+1)/2)*pixel),
|z| <=10
}

Carr-404{
z=exp(flip(real(1/pixel))),c=flip(imag(pix)):
z=z*z+c+conj(((sqrt5+1)/2)*pixel),
|z| <=10
}

Carr-405{
z=exp(flip(real(0.33/pixel))),c=flip(imag(0.124/pixel)):
z=z*z+c+conj(((sqrt5+1)/2)*pixel),
|z| <=10
}

Carr-406{; Distance Estimator works here
z=exp(flip(real(0.33/pixel))),c=flip(imag(0.124/pixel)):
z=z*z+c+conj(((sqrt5+1)/2)*flip(pixel)),
|z| <=10
}

Carr-407{
z=exp(flip(real(0.33/pixel))),c=flip(imag(0.124/pixel)):
z=z*z+c+conj(((sqrt5+1)/2)*flip(conj(pixel))),
|z| <=10
}

Carr-408{
z=exp(flip(real(0.33/pixel))),c=flip(imag(0.124/pixel)):
z=z*z+(c/pixel)+conj(((sqrt5+1)/2)*flip(conj(pixel))),
|z| <=10
}

Carr-409{
z=exp(flip(real(0.33/pixel))),c=exp(imag(0.124/pixel)):
z=z*z+(c/pixel)+conj(((sqrt5+1)/2)*exp(conj(pixel))),
|z| <=10
}

Carr-410{;Based on Golden Mean frm from Graphdev. MODIFIED
;Distance Estimator works here.
z=((sqrt5-1)/2),c=1/pixel:
z=z*z+pixel*((sqrt5+1)/2)+c,
|z| <=10
}

Carr-411{;Distance Estimator works here
z=((sqrt5-1)/2),c=1/pixel+log(z*z):
z=z*z+pixel*((sqrt5+1)/2)+c,
|z| <=10
}

Carr-412{;Distance Estimator works here.
z=((sqrt5-1)/2),c=1/pixel+log(z*z):
z=z*z+pixel+((sqrt5+1)/2)+flip(c),
|z| <=10
}

Carr-413{;Distance Estimator works here
z=((sqrt5-1)/2),c=1/pixel+conj(flip(z*z*z)):
z=z*z+c,
|z| <=10
}

Carr-414{
z=c*((sqrt5-1)/2),c=1/pixel+conj(flip(z*z*z)):
z=z*z+flip(c),
|z| <=10
}

Carr-415{
z=c*((sqrt5-1)/2)/((sqrt5+1)/2),c=1/pixel+conj(flip(z*z*z)):
z=z*z+flip(c),
|z| <=10
}

Carr-416{;Excellent
z=c*((sqrt5-1)/2)/((sqrt5+1)/2),c=1/pixel+conj(flip(z*z*z)):
z=z*z+(0.524/c)/((sqrt5-1)/2)/((sqrt5+1)/2),
|z| <=10
}

Carr-417{
z=c*((sqrt5-1)/2),c=1/pixel+conj(flip(z*z*z)):
z=z*z/fn2(pixel)+c,
|z| <=10
}

Carr-418{
z=c/log(pixel),c=1/pixel+conj(flip(z)):
z=z*z+c,
|z| <=10
}

Carr-419{
z=c/log(0.124/pixel),c=1/pixel+conj(z):
z=z*z+c,
|z| <=10
}

Carr-420{;Distance Estimator works here
z=1/c*(0.524/pixel),c=1/pixel+conj(z):
z=z*z+c,
|z| <=10
}

Carr-421{
z=1/c*(0.524/pixel),c=1/pixel+conj(z*z*z):
z=z*z*z+c,
|z| <=10
}

Carr-422{
z=1/c*(0.524/pixel/c),c=1/pixel+conj(z*z):
z=z*z+flip(c),
|z| <=10
}

Carr-423{
z=0.124/c*(0.524/pixel/c),c=1/pixel:
z=z*z*z+flip(c+0.324);
z=z*z+sin(c);
z=z*z+conj(c+0.324),
|z| <=10
}

Carr-424{
z=(1.5,0.3)*((sqrt5+1)/2),c=1/pixel:
z=z*z+flip(c),
|z| <=10
}

Carr-425{
z=(1.5,0.3)*((sqrt5+1)/2),c=pixel:
z=z*z+cosxx(c),
|z| <=10
}

Carr-426{;Distance Estimator works here.
z=c*((1.5,0.7)*((sqrt5+1)/2)),c=1/pixel:
z=z*z+c,
|z| <=10
}

Carr-427{;Distance Estimator works here
z=c*((1.5,0.7)*((sqrt5+1)/2)),c=1/pixel:
z=z*z+flip(c-0.324),
|z| <=10
}

Carr-428{;
z=1/pixel/1/cotanh(1.0124)),c=1/pixel/cos(2):
z=z*z+flip(c*tan(c),
|z| <=10
}

Carr-429{;Distance Estimator works here.
z=1/pixel-cos(1.124),c=1/pixel-tanh(1.08908):
z=z*z+c,
|z| <=10
}

Carr-430{;CARR'S RING
z=c=1/pixel:
z=pixel/c*c*pixel/z^(1.23),
|z| <=10
}

Carr-431{;CARR'S RING
z=c=1/pixel:
z=1/pixel/c*c*pixel/z^(1.23),
|z| <=10
}

Carr-432{;CARR'S RING
z=c=1/pixel:
z=1/pixel/c*c*c*pixel/z^(1.23),
|z| <=10
}

Carr-433{;CARR'S RING
z=c=1/pixel:
z=0.124/pixel/c*c*c*pixel/z^(1.23),
|z| <=10
}

Carr-434{
z=c=1/pixel:
z=0.124/pixel/c*c*c*pixel/z^(1.73),
|z| <=10
}

Carr-435{;CARR'S RING
z=c=1/pixel:
z=0.124/pixel/c*c*c*pixel/z^(1.38),
|z| <=10
}

Carr-436{;CARR'S RING, Distance Estimator works here.
z=c=1/pixel:
z=0.124/pixel/c*(c-0.124)*(c-0.524)*pixel/z^(1.38),
|z| <=10
}

Carr-437{;CARR'S RING
z=c=1/pixel/conj(1.353):
z=0.124/pixel/c*(c+0.524)*(c-0.524)*pixel/z^conj(1.38),
|z| <=10
}

Carr-438{
z=cos(1.34)/pixel,c=cos(1.54/pixel):
z=z*z+c,
|z| <=10
}



