Carr1500 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel))
  c=conj(pixel-1.5)/(z-1.2/pixel):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1501 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel))
  c=((-0.7456,0.2)-1.9/pixel)/cosxx(z*z-1.2/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1502 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel))
  c=((-4.299,1.2)-1.9/pixel)/cosxx(z*z-1.2/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1503 {; Julia?
  z=1/(pixel+pixel)/(flip(1/pixel*6/pixel))
  c=((0.6,1.1))/cosxx(z*z-6/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1504 {; Julia?
  z=1/(pixel+pixel)/(flip(1/pixel*6/pixel))
  c=((0.6,1.1))/imag(z*z-6/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1505 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel))
  c=conj(pixel-1.5)/(z-1.2/(1/flip(pixel))):
  z=(z*z+c)/1.3
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1506 {; Julia?
  z=0.1/cosxx(pixel+pixel)/(flip(1/pixel))
  c=conj(pixel-1.5)/(z-1.2/(1/flip(pixel))):
  z=(z*z+c)/1.3
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1507 {; Julia?
  z=0.1/(pixel+pixel+pixel)/(flip(6/pixel))
  c=conj((pixel+pixel)-1.5)/(z-1.2/(4/flip(pixel))):
  z=(z*z+c)/1.4
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1508 {; Julia?
  z=0.1/(pixel^pixel+pixel)/(flip(6/pixel))
  c=flip((pixel+pixel)-1.5)/(z-1.2/(4/flip(pixel))):
  z=(z*z+c)/1.4
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1509 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel))
  c=conj(pixel*pixel)-(0.5456,0.2):
  z=sqr(z)
  z=z+sin(z)+c
  c=z+c/2
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1510 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel))
  c=conj(pixel*pixel)/flip(pixel)/cosxx(pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1511 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel))
  c=exp(flip((pixel+pixel)-1.5)/(z-1.2/(4/flip(pixel)))):
  z=z*z+c
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1512 {; Julia?
  z1=(pixel-0.5)^(sqrt(5)^1/pixel)
  z=(z1)/(cosxx(pixel))
  c=conj(1-pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1513 {
  z=(conj(1/pixel)^2.32)-1.25
  c=(flip(1/pixel)^2.32)-1.25:
  z=z*z+c
  c=z+c/2.125
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1514 {; Julia?
  z=pixel*(pixel^2.32)
  c=(tan(pixel)^2.32):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1515 {; Julia
  z=real(pixel)+flip(imag(pixel)*(-0.3,0.3))
  c=(-0.7456,0.2)+(1.099,0)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1516 {; Julia
  z=conj(real(pixel))+flip(imag(pixel))
  c=cosxx(4/pixel)+(2.924)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1517 {; Julia
  z=conj(real(pixel))+flip(imag(pixel))
  c=exp(4/pixel)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1518 {; Julia
  z=conj(abs(1/pixel))+(real(pixel))+flip(imag(pixel))
  c=exp(4/pixel)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1519 {; Julia
  z=conj(abs(0.6/pixel))+(real(pixel))+flip(imag(pixel))
  c=exp(0.4/pixel)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1520 {; Julia
  z=flip(exp(-5.742,-0.009))+(real(pixel))+flip(imag(pixel))
  c=exp(0.4/pixel)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1521 {; Julia Butterfly
  z=cotan(exp(-5.742,-0.009))+(real(pixel))+flip(imag(pixel))
  c=sqr(0.4/pixel)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: carr1521.frm
}
Carr1522 {; Julia
  z=cotan(exp(-0.6882,-0.1729))+(real(pixel))+flip(imag(pixel))
  c=sqr(0.4/pixel)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1523 {; Julia
  z=sin(exp(-5.742,-0.009))+(real(pixel*pixel))+flip(imag(pixel*pixel))
  c=sqr(0.1/pixel)*real(pixel*pixel)+flip(imag(pixel*pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1524 {; Julia
  z=conj(sqr(1/pixel)^2.12)+1.25,
  c=sqr(0.1/pixel)*real(pixel*pixel)+flip(imag(pixel*pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1525 {
  z=(1/pixel)/1.85
  c=((1/pixel)/2)/(z-2.5)^conj(imag(pixel-1)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1526 {
  z=(1/pixel)/1.85
  c=((1/pixel-0.524)/4)/conj(z-1.1)*z^conj(cotanh(pixel-0.2)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1527 {
  z=(1/pixel)/1.85
  c=((1/pixel-0.524)/4)/conj(z-1.1)*z*z^conj(cotanh(pixel-0.2)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1528 {; Julia
  z=(1/pixel*0.88/pixel)
  c=((1/pixel-0.524)/4)/conj(z-1.1)*z*z^conj(cotanh(pixel-0.2)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}
Carr1529 {; Julia
  z=(1/pixel)/1.75
  c=((1/pixel)/2)/z-2.5^tanh(pixel-1):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1530 {; Julia
  z=sqr(1/pixel)/1.75
  c=((1/pixel)/2)/z-2.5^sin(pixel-1):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1531 {; Julia
  z=sqr(1/pixel)/1.75
  c=(2/pixel)/(z-2.5^cosxx(pixel-1)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1532 {; Julia
  z=conj((1/pixel)/1.91)
  c=(0.33/pixel)/z-2.5^cotanh(pixel-1.124):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1533 {
  z=(1/pixel)/1.85
  c=((1/pixel)/2)/(z-1.25)^conj(real(pixel-0.25)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1534 {
  z=(1/pixel)/1.85
  c=((1/pixel)/2)/(z-1.25)^conj(real(pixel-0.25)):
  z=z*z+c+sin(z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1535 {; Julia
  z=real((1/pixel)/1.91)/(5.7,-1.3)
  c=(1/pixel*0.91/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1536 {; Julia
  z=((1/pixel)/0.71)/(pixel-1.324)
  c=z-2.5^(pixel-1.324):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1537 {; Julia
  z=1/(pixel*pixel)
  c=cosxx(pixel*pixel)/tan(pixel-z):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1538 {
  z=1/(pixel*pixel)
  c=cosxx(pixel*pixel)/tan(pixel-z):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1539 {; Julia
  z=((1-pixel)/0.413)+1.924
  c=z-1/conj(z*z)+conj(pixel-z):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1540 {
  z=sqr(1/pixel)+sqr(pixel)
  c=sin(tan(exp(z-1))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1541 {; Julia
  z=conj(pixel)
  c=z*z+pixel:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1542 {; Spider type.
  z=flip(pixel*pixel)
  c=pixel^(z-1):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1543 {; Spider type.
  z=conj(pixel*pixel)
  c=flip(pixel)^(z-1):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1544 {
  z=(pixel*pixel)^0.54
  c=sqr(pixel)^(z-0.55):
  z=(z*z+c)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1545 {; Spider type
  z=(pixel*pixel)^0.54
  c=sqr(pixel)^(z-0.55):
  z=(z*z+c)
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1546 {; Spider type.
  z=(pixel*pixel)^0.54
  c=cos(pixel)/sin(pixel):
  z=(z*z+c)
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1547 {; Julia
  z=(pixel*pixel)^0.54
  c=real(pixel)/imag(pixel):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1548 {; Julia
  z=(pixel*pixel)-sqrt(pixel*pixel)
  c=sin(pixel)/cos(pixel):
  z=sqr(z)+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
Carr1549 {; Julia
  z=(pixel*pixel)-log(pixel*pixel)
  c=sin(pixel)/cos(pixel):
  z=sqr(z)+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}
