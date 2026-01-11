Carr-571{;Also in 06CARR.FRM
z=1/conj(pixel-p1),c=sin(z/pixel)^conj(z/pixel):
z=z*z+(c-p2),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-572{
z=1/conj(pixel-p1),c=sin(z/pixel)^conj(z/pixel):
z=z*z+(c-p2),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-573{
z=1/conj(pixel-p1),
c=conj(sin(z/pixel))^conj(z/pixel):
z=z*z+(c-p2),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-574{
z=1/conj(pixel-p1),
c=conj(cos(z/pixel))*conj(z/pixel):
z=z*z+conj(c-p2),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-575{
z=1/conj(pixel-p1),
c=conj(cos(z/pixel))/conj(z/pixel):
z=z*z+conj(c-p2),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-576 {
  z=1/conj(pixel-p1)
  c=conj(cos(z/(1/pixel)))*conj(z/(1/pixel)):
  z=z*z*z+conj(c-p2)
  |z| <=10
  ;SOURCE: carr.frm
}
Carr-577{
z=1/conj(pixel),c=fn1(1/pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-578{
z=1/conj(pixel-0.524),c=fn1(1/pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-579{
z=1/conj(pixel-0.524),c=1/sin(1/(z*z)):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-580{
z=1/conj(pixel-0.524),c=1/sin(1/(z*z))+0.124*pixel:
z=z*z*z+conj(c),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-581{
z=1/conj(pixel-0.524),c=cosxx(1/(z*z))+0.124*pixel:
z=z*z*z+conj(c),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-582{
z=1/pixel,c=(1/pixel)^(1/pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-583{
z=1/pixel,c=(1/pixel)*(1/pixel):
z=z*z+(c-0.124),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-584{z=1/pixel,c=conj((1/pixel)*(1/pixel)):
z=z*z+(c-0.124);
z=z*z+c;
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-585{
z=1/pixel,c=conj(z*z+pixel+1/pixel)/|z|:
z=z*z+conj(c/(1/|z|)),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-586{
z=1/pixel,c=fn1(z)+1/z:
z=z*z+conj(c/(1/pixel)),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-587{
z=1/pixel,c=1/conj(1/pixel*z*(z*z-3)):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-588{
z=1/pixel,c=tanh(1/pixel*z*conj(z*z-5)):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-589{
z=1/pixel,c=conj(1/z*(z/pixel)-1):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-590{
z=1/pixel,c=1/conj(z^pixel-1)/3:
z=fn1(c^pixel-3),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-591{
z=1/pixel,c=2/conj(z*(1/pixel*(pixel-1)))/5:
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-592{
z=1/pixel,c=conj(1/(1+pixel)):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-593{;Distance Estimator works here.
z=1/real(pixel*pixel),c=1/pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-594{
z=1/(pixel*sin(pixel)),c=1/pixel:
z+z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-595{
z=1/(pixel*cos(5-pixel)),c=1/pixel:
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-596{
z=1/pixel,c=pixel:
z=z*z+(1/pixel)/(0.9,-0.6),
|z*pixel/z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-597{
z=1/cos(pixel),c=conj(tan(pixel)):
z=z*z*c-(1/pixel),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-598{
z=1/cos(pixel),c=conj(tan(pixel)):
z=z*z*z+(1/pixel),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-599{
z=1/cos(pixel),c=conj(tan(pixel)):
z=z*z*c+flip(1/pixel);
z=z*z*c+conj(1/pixel),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-600{
z=1/cos(pixel),c=conj(tan(pixel)):
z=z*z*c+conj(1/pixel);
z=z*z*c+flip(1/pixel);
z=z*z*c+conj(1/pixel),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-601{
z=1/cos(pixel),c=1/pixel-1/|z|:
z=z*c*c+flip(1/pixel);
z=z*c*c+conj(1/pixel),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-602{
z=1/conj(pixel),c=1/cosxx(z):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-603{
z=1/conj(pixel),c=1/cosxx(z):
z=z*z+flip(c-0.524),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-604{
z=1/conj(pixel),c=1/cosxx(z*z):
z=z*z*z+flip(c*c-0.924),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-605{
z=1/conj(pixel),c=1/cos(z*z):
z=z*z*z+cosxx(c*c-0.124),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-606{
z=1/flip(pixel),c=1/cos(z*z):
z=z*z*z+conj(flip(c-0.124)),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-607{
z=1/flip(pixel),c=1/cos(z*z*z):
z=z*z*z+flip(conj(c-0.624)),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-608{
z=1/flip(pixel),c=1/cos(z*z*z):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-609{
z=1/flip(pixel),c=1/cotanh(z*z*z):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-610{
z=1/pixel,c=1/(sqr(pixel)/z*z+pixel):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-611{;Distance Estimator works here.
z=1/pixel,c=1/(sqr(pixel)/z*z+pixel):
z=conj(z*z+c),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-612{
z=1/conj(pixel),c=1/(sqr(pixel)/z*z+pixel):
z=conj(z*z+c),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-613{
z=1/pixel,c=cos(-2.6,0.3):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-614{
z=1/pixel,c=cos(-2.6,0.3):
z=z*z+(c-0.199),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-615{
z=1/pixel,c=cos(-2.6,-0.36):
z=z*z+(c-0.199),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-616{
z=1/pixel,c=cos(-2.115,-0.369):
z=z*z+(c-0.09),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-617{
z=1/pixel,c=cos(-2.095,-0.369):
z=z*z+(c-0.09),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-618{
z=1/pixel,c=cos(-2.9,-0.3):
z=z*z+(c-0.015),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-619{
z=tanh(1/pixel),c=cos(-2.9,-0.3):
z=z*z+(c-0.09815),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-620{
z=tanh(1/pixel-0.124),c=cos(-2.6,0.3):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-621{
z=cotanh(1/pixel-0.124),c=cos(-2.6,0.3):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-622{
z=cosh(1/pixel-0.224),c=cos(-2.6231,0.3124):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-623{
z=cosh(1/pixel-0.224),c=sin(-2.6231,0.3124):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-624{
z=flip(1/pixel-0.224),c=sin(cos(-2.5231,0.3124)):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-625{
z=flip(1/pixel-0.324),c=sin(cos(-2.3231,0.3124)):
z=z+z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-626{
z=flip(1/pixel-0.324),c=sin(cosxx(-2.3064,0.3124)):
z=z*z+c,
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-627{
z=cosxx(1/pixel-0.324),c=sin(cosxx(-2.6064,0.3124)):
z=z*z+(c-0.024),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-628{
z=cosxx(sin(1/pixel-0.324)),c=sin(cosxx(-2.6064,0.3124)):
z=z*z+(c-0.024),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-629{
z=cosxx(sinh(1/pixel-0.394)),c=sin(cosxx(-2.9064,0.3124)):
z=z*z+(c-0.024),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-630{
z=cosxx(sinh(1/pixel-0.394)),c=sin(1/cosxx(-2.5064,0.3124)):
z=(z-0.124)*(z+0.287)+(c-0.024),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
Carr-631{
z=cosxx(sinh(1/pixel-0.394)),c=sin(1/tanh(-2.9064,-0.1124)):
z=(z-0.124)*(z-0.287)+(c-0.124),
|z| <=10
  ;SOURCE: 05carr.frm
  ;SOURCE: to-bob-6.frm
}
