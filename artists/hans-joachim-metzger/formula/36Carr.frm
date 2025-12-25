Carr1600 {; Julia.
  z=acos(exp(1/atanh(pixel-0.5)))
  c=sqr(1+asin(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1601 {; Julia.
  z=(1/log(pixel/0.2)-conj(1/pixel))/(acos(pixel))
  c=pixel*pixel/(asin(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1602 {; Spider type.
  z=(1/log(pixel/0.2)-conj(1/pixel))/(acos(pixel))
  c=pixel*pixel/(asin(pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1603 {; Mandelbrot type.
  z=(1/log(pixel/0.2)-conj(1/pixel))/(acos(pixel))
  c=pixel*pixel/(asin(pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1604 {; Julia.
  z=(1/log(pixel/0.2)-1/conj(1/pixel))/(acos(pixel))
  c=conj(pixel*pixel)/(1/asin(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1605 {; Julia.
  z=(1-pixel)/asinh(pixel+0.5)
  c=(pixel)/(1/asin(1-pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1606 {; Julia.
  z=1/asinh(pixel)
  c=log((pixel+4/pixel)/(1/asin(1-pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1607 {; Julia.
  z=0.9/pixel
  c=exp(pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1608 {; Spider type.
  z=(-0.3,0.3)*pixel
  c=pixel*pixel:
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1609 {; Julia.
  z=pixel+asin(conj(pixel))
  c=1+pixel*pixel:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1610 {; Julia.
  z=1/cosxx(pixel)+1/asin(conj(pixel))-0.5
  c=1.34/(1+sqr(pixel*pixel+sin(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1611 {; Spider type.
  z=1/cos(pixel)+2/cos(conj(pixel))-0.5
  c=1.34/(1+sqr(pixel*pixel+sin(1/pixel))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1612 {; Julia.
  z=(1/cos(pixel)/cos(1/conj(pixel)))-2/pixel
  c=2.34/(1+sqr(pixel*pixel+1/asin(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1613 {; Julia.
  z=(1/sin(pixel)/cos(1/flip(pixel)))-1.5/pixel
  c=2.34/(1.5+sqr(pixel*pixel+2/atan(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1614 {; Spider type.
  z=(1/sin(pixel)/cos(1/flip(pixel)))-1.5/pixel
  c=2.34/(1.5+sqr(pixel*pixel+2/atan(1/pixel))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1615 {; Julia.
  z=(1/cos(pixel)/sin(1/flip(pixel)))-2.5/pixel
  c=2.34/(1.75+sqr(pixel*pixel+2/acos(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1616 {; Spider type.
  z=(1/cos(pixel)/sin(1/flip(pixel)))-2.5/pixel
  c=2.34/(1.75+sqr(pixel*pixel+2/acos(1/pixel))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1617 {; Julia.
  z=(2.7/sin(pixel)/cos(1/flip(pixel)))-1.5/pixel
  c=2.34/(3.5+sqr(pixel*pixel+2/atan(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1618 {; Julia
  z=(2.7/sin(pixel+pixel)/cos(1/flip(pixel)))-1.5/pixel
  c=2.34/(3.5+sqr(pixel*pixel+2/atan(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1619 {; Julia.
  z=1/acos(1+pixel*pixel)/(1/asin(1-pixel))
  c=3.34/(1.5+sqr((pixel+0.5)*(pixel+0.5)+atan(pixel+pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1620 {; Julia.
  z=1/sin(1+2.23*(pixel))/(1/sin(1-pixel))
  c=0.34/(0.25+conj((pixel+0.5)*(pixel+0.5)+atan(pixel+1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1621 {; Julia.
  z=exp(1+2.23*(pixel))/(sqr(1-pixel))
  c=0.34/(0.25+conj(asin((pixel+0.5)*(pixel+0.5))+atan(pixel+1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1622 {; Julia.
  z=2/sin(pixel)/cos(1/pixel*1/pixel)
  c=2/sin(3/pixel)/(cos(3/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1623 {; Spider type.
  z=2/sin(pixel)/cos(1/pixel*1/pixel)
  c=2/sin(3/pixel)/(cos(3/pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1624 {; Julia.
  z=3/sin(pixel)/cos(1/pixel*1/pixel)
  c=2/sin(4/pixel)/(cos(4/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1625 {; Julia.
  z=3/sin(1/pixel*1/pixel)/(2.5/cos(pixel*pixel))
  c=2/cosxx(4/pixel-1)/(cosxx(4/pixel+1)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1626 {; Julia.
  z=0.7/sin(1/pixel*1/pixel)/(2.5/cos(pixel*pixel))
  c=2/cosxx(4/pixel-1)/(cosxx(4/pixel+1)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1627 {; Julia.
  z=0.55/sinh(1/pixel)/(2.5/abs(pixel*1.33))
  c=0.38/cos(4/pixel-1)/(cos(4/pixel+1)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1628 {; Julia.
  z=2/sin(pixel)/(cos(1/pixel*1/pixel*0.91/pixel))
  c=imag(2/sin(3/pixel))/imag(cos(3/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1629 {; Julia.
  z=(sqrt(pixel)^pixel)/sqr(sqr(pixel))
  c=(-0.3,0.3)/log(pixel+1/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1630 {; Julia.
  z=(sqrt(pixel)^pixel)/sqr(sqr(1/asin(pixel)))
  c=acos(pixel)/acos(pixel+1/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1631 {; Julia.
  z=asin(sqrt(pixel)^pixel)/sqr(sqr(tan(1/asin(pixel))))
  c=acos(pixel)/acos(pixel+1/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1632 {; Julia.
  z=sin(pixel)/cos(pixel)
  c=(z+conj(pixel))/(z+exp(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1633 {; Spider type.
  z=sin(pixel)/cos(pixel)
  c=(z+conj(pixel))/(z+exp(pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1634 {; Julia.
  z=sin(pixel)/cos(pixel)
  c=(z+conj(pixel))/(z+exp(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1635 {; Julia.
  z=1/-sin(1/pixel*0.91/pixel)
  c=1/-conj(5/pixel*0.88/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1636 {; Julia.
  z=1/sin(1/pixel*0.91/pixel)*1/pixel
  c=1/conj(5/pixel*0.88/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1638 {; Julia.
  z=(1/cosh(1/cotanh(0.5/pixel)))
  c=1/cosh(1/tanh(1/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1639 {; Julia.
  z=conj(1/cosh(1/cotanh(0.5/pixel)))
  c=flip(1/cosh(1/tanh(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1640 {; Julia.
  z=conj(1/sinh(1/tanh(0.5/pixel)))
  c=flip(1/sinh(1/cosh(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1641 {; Spider type.
  z=conj(1/sinh(1/tanh(0.75/pixel)))
  c=conj(1/sinh(1/cosh(1/pixel))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1642 {; Spider type.
  z=1/tan(1/conj(1/sinh(1/tanh(0.75/pixel))))
  c=1/tan(1/conj(1/sinh(1/cosh(1/pixel)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1643 {; Julia.
  z=sqr(1/sin(1/pixel))
  c=1/conj(sqr(sqr(1/pixel*0.88/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1644 {; Spider type.
  z=sqr(sqr(1/sin(1/pixel)))
  c=1/conj(sqr(sqr(1/pixel*0.88/pixel))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1645 {; Spider type.
  z=1/cos(pixel)/(1.099,0)/pixel
  c=1/sin(pixel)/(1.099,0)/pixel:
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1646 {; Mandel type.
  z=1/tan(pixel)/(-0.7456,0.2)/pixel
  c=1/tan(pixel)/(-0.7456,0.2)/pixel:
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1647 {; Spider type.
  z=1/tan(pixel)/(0.3,0.6)/pixel
  c=1/tan(pixel)/(0.3,0.6)/pixel:
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1648 {; Julia.
  z=(1/asin(pixel)/(0.3,0.6))/pixel
  c=(1/sin(pixel)/(0.3,0.6))/pixel:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1649 {; Julia
  z=1/cosxx(pixel)/(-0.3,0.6)/pixel
  c=1/cosxx(pixel)/(-0.3,0.6)/pixel:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
Carr1637 {; Julia.
  z=sin(1/cosxx(1/pixel))
  c=1/atan(1/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}
 
