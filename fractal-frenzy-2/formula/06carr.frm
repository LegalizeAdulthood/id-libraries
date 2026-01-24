{
Carr-501 and up

}

Carr-501{;Distance Estimator works here.
z=1/pixel,c=exp(0.6,0.3)/pixel:
z=z*z*z*z*z+flip(c/pixel),
|z| <=10
}

Carr-502{;Distance Estimator works here.
z=1/pixel,c=exp(0.6,0.3)/pixel:
z=(z*z*z+(pixel-0.124)*z-1/pixel)/c,
|z| <=10
}

Carr-503{
z=1/pixel,c=exp(0.6,0.3)/(1/pixel):
z=(z*z+(pixel-0.124)*z-1/pixel)/c,
|z| <=10
}

Carr-504{;Distance Estimator works here.
z=1/pixel,c=exp(0.6,0.3)/(1/pixel):
z=(1/z*1/z+(pixel-0.124)*z-1/pixel)/c,
|z| <=10
}

Carr-505{;Distance Estimator works here.
z=1/pixel,c=exp(0.6,0.3)/(1/pixel):
z=(1/z*1/z*1/z+(pixel-0.124)*z-1/pixel)/c,
|z| <=10
}

Carr-506{;Distance Estimator works here.
z=1/pixel,c=exp(0.6,0.3)/(1/pixel):
z=(1/z*1/z+sqr(pixel-0.124)*z-1/pixel)/c,
|z| <=10
}

Carr-507{
z=1/pixel,c=exp(0.6,0.3)/(0.5/pixel):
z=(z/pixel*z/pixel+(pixel+0.524)*z-1/pixel)/c,
|z| <=10
}

Carr-508{
z=1/pixel,c=exp(0.6,0.3)/(0.5/pixel):
z=(z/(pixel-0.724)*z/(pixel-0.724)+(pixel+0.524)*-1/pixel)/c,
|z| <=10
}

Carr-509{
z=1/pixel,c=sinh(z):
z=z*z*z+flip(c),
|z| <=10
}

Carr-510{
z=1/pixel,c=sinh(z):
z=z*z*z+flip(c-0.524),
|z| <=10
}

Carr-511{
z=1/pixel,c=sin(z):
z=z*z*z+flip(c-0.324),
|z| <=10
}

Carr-512{
z=1/pixel,c=cos(z):
z=z*z*z+flip(c-0.324),
|z| <=10
}

Carr-513{
z=1/pixel,c=cos(z):
z=z*z*z+flip(c),
|z| <=10
}

Carr-514{
z=1/pixel,c=cosh(z):
z=z*z*z+flip(c-0.324),
|z| <=10
}

Carr-515{
z=1/pixel,c=cosxx(z):
z=z*z*z+flip(c-0.324),
|z| <=10
}

Carr-516{
z=1/pixel,c=flip(tanh(z)):
z=z*z*z+flip(c-0.324),
|z| <=10
}

Carr-517{
z=1/pixel,c=sinh(z/pixel):
z=z*z*z+flip(c-0.324),
|z| <=10
}

Carr-518{
z=1/pixel,c=cos(z/pixel):
z=z*z*z+flip(c-0.324),
|z| <=10
}

Carr-519{
z=1/pixel,c=cos(z*1/pixel):
z+z*z*z+flip(c-0.324),
|z| <=10
}

Carr-520{
z=1/pixel,c=cos(z*1/pixel):
c=fn1(sinh(z));
z=z*z*z+flip(c-0.324),
|z| <=10
}

Carr-521{
z=1/pixel,c=cos(z+1/pixel):
c=fn2(sin(z/pixel));
z=z*z*z+flip(c-0.424),|z| <=10
}

Carr-522{
z=1/pixel,c=cos(z*1/pixel):
c=conj(fn2(sin(z/pixel)));
z=conj(z*z*z)+flip(c-0.424),
|z| <=10
}

Carr-523{
z=1/pixel,c=1/sin(1/(z*z)):
z=z*z+c,
|z| <=10
}

Carr-524{;Excellent !!
z=1/pixel,c=1/sinh(1/(z*z)):
z=z*z*z+c,
|z| <=10
}
Carr-525{;Excellent !!!
z=1/pixel,c=1/sinh(1/(z*z)):
z=z*z*z+(c-0.524),
|z| <=10
}

Carr-526{
z=1/pixel,c=1/sinh(1/(z*z)):
z=z*z*z+(c+0.924),
|z| <=10
}

Carr-527{
z=1/pixel,c=1/sinh(1/(z*z)):
z=z*z*z+(c+(0.6,0.3)),
|z| <=10
}

Carr-528{;Nice !!!
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c+(0.6,0.3)),
|z| <=10
}

Carr-529{
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c-0.224),
|z| <=10
}

Carr-530{
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c-0.524),
|z| <=10
}

Carr-531{
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c-0.824),
|z| <=10
}

Carr-532{
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c/0.824),
|z| <=10
}

Carr-533{
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c/0.524),
|z| <=10
}

Carr-534{
z=1/pixel,c=1/conj(1/(z*z)):
z=z*z*z+(c/0.124),
|z| <=10
}

Carr-535{
z=1/pixel,c=1/cosh(1/(z*z)):
z=z*z*z+(c/0.324),
|z| <=10
}

Carr-536{
z=1/pixel,c=1/exp(1/(z*z)):
z=z*z*z+(c/0.324),
|z| <=10
}

Carr-537{
z=1/pixel,c=1/sinh(1/(z*z)):
z=z*z*z+(c/0.724),
|z| <=10
}

Carr-538{
z=1/pixel,c=1/sinh(1/(z*z)):
c=z*z+c;
z=z*z+c,
|z| <=10
}

Carr-539{
z=1/pixel,c=1/sinh(1/(z*z)):
c=c*c*c+z;
z=z*z*z+c,
|z| <=10
}

Carr-540{;Distance Estimator works here.
z=1/pixel,c=conj(sqr(z)+pixel):
z=z*z+c,
|z| <=10
}

Carr-541{
z=1/pixel,c=1/sqr(1/z+conj(1/z*1/z)):
z=z*z+c,
|z| <=10
}

Carr-542{
z=1/pixel,c=1/sqr(1/z+conj(1/z*1/z*1/z)):
z=z*z*z+(c+0.724),
|z| <=10
}

Carr-543{
z=1/pixel,c=1/sqr(1/z+conj(1/z*1/z*1/z)):
z=z*z+(c+0.724),
|z| <=10
}

Carr-544{
z=1/pixel,c=1/sqr(1/z+conj(1/z*1/z*1/z)):
z=z*z+(c+0.224),
|z| <=10
}

Carr-545{
z=1/pixel,c=1/sqr(1/z+conj(1/z*1/z*1/z)):
z=z*z+(c-0.424),
|z| <=10
}

Carr-546{
z=1/pixel,c=1/sqr(1/z+conj(1/z*1/z*1/z)):
z=z+z+(c-0.824),
|z| <=10
}

Carr-547{
z=1/pixel,c=1/cos(1/z+conj(1/z*1/z*1/z)):
z=z*z+(c-0.824)
|z| <=10
}

Carr-548{
z=1/pixel,c=1/cos(1/z+conj(1/z*1/z*1/z)):
z=z*z+(c-0.324),
|z| <=10
}

Carr-549{
z=1/pixel,c=1/sqr(1/(pixel*pixel*pixel)):
z=z*z+(c-0.324),
|z| <=10
}

Carr-550{
z=1/pixel,c=1/sqr(1/(1/pixel*2/pixel*3/pixel)):
z=z*z+(c+1.02),
|z| <=10
}

Carr-551{
z=1/pixel,c=1/sqr(1/(3/pixel*1/pixel*3/pixel)):
z=z*z+(c-1.02),
|z| <=10
}

Carr-552{
z=1/pixel,c=1/conj(1/(1/pixel*1/pixel*1/pixel)):
z=z*z+(c-1.02),
|z| <=10
}

Carr-553{
z=1/pixel,c=1/conj(1/(1/pixel*1/pixel*1/pixel)):
z=z*z+(c+0.72),
|z| <=10
}

Carr-554{
z=1/pixel,c=1/conj(1/(1/pixel*1/pixel*1/pixel)):
z=z*z*z+(c+0.72),
|z| <=10
}

Carr-555{
z=1/pixel,c=1/fn2(pixel*pixel):
z=z*z+c,
|z| <=10
}

Carr-556{
z=1/pixel,c=1/fn2(1/pixel*1/pixel):
z=z*z+c,
|z| <=10
}

Carr-557{
z=1/pixel,c=1/conj(fn2(1/pixel*1/pixel)):
z=z*z*z+(c+0.524),
|z| <=10
}

Carr-558{
z=1/pixel,c=1/conj(fn2(1/pixel*1/pixel)):
z=z*z*z*z+(c+0.524),
|z| <=10
}

Carr-559{
z=1/pixel,c=1/conj(fn2(1/pixel*1/pixel)):
z=z*z*z*z+conj(sin(c-0.524)),
|z| <=10
}

Carr-560{
z=1/pixel,c=1/conj(fn2(1/pixel*1/pixel)):
z=z*z*z*z+conj(sin(c-1.5)),
|z| <=10
}

Carr-561{
z=1/pixel,c=1/conj(fn2(1/pixel*1/pixel*1/pixel)):
z=sqr(conj(z*z*z))+conj(sin(c-1.5)),
|z| <=10
}

Carr-562{
z=1/conj(pixel),c=z+cos(sqr(z*1/(pixel-0.124))):
z=z*z+c,
|z| <=10
}

Carr-563{
z=1/conj(pixel),c=z+cos(sqr(z*1/(pixel-0.124)*(pixel-0.124))):
z=z*z+c,
|z| <=10
}

Carr-564{
z=1/conj(pixel),c=z+cos(sqr(z*1/(pixel+0.924))):
z=z*z+(c-0.124),
|z| <=10
}

Carr-565{;Distance Estimator works here.
z=1/conj(pixel-2.5),c=1/pixel:
z=z*z+c,
|z| <=10
}

Carr-566{
z=1/conj(pixel-2.5),c=z+cos(sqr(z*1/(pixel-0.124))):
z=z*z+c,
|z| <=10
}

Carr-567{
z=1/cos(pixel-0.5),c=z+cos(sqr(z*1/(pixel-0.124))):
z=z*z+c,
|z| <=10
}

Carr-568{
z=1/cosh(pixel-0.5),c=z+cos(sqr(z*1/(pixel-0.124))):
z=z*z+c,
|z| <=10
}

Carr-569{
z=1/cotan(pixel-0.5),c=sin(z)^log(z):
z=z*z+c,
|z| <=10
}

Carr-570{
z=1/conj(pixel-0.5),c=sin(z)^conj(z):
z=z*z+c,
|z| <=10
}

Carr-571{
z=1/conj(pixel-p1),c=sin(z/pixel)^conj(z/pixel):
z=z*z+(c-p2),
|z| <=10
}
