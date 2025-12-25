Carr1650 {; Julia
  z=1/sin(pixel)/(1.099,0)/(pixel)
  c=(1/pixel)/(1.099,0)/(pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1651 {; Spider type.
  z=abs(1/tan(pixel)/sin(pixel)/(1/cos(pixel)))
  c=1/sin(z^pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1652 {; Julia.
  z=abs(1/tan(pixel)/sin(pixel)/(1/cos(pixel)))
  c=1/cosxx(z^pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1653 {; Spider type.
  z=abs(1/tan(pixel)/sin(pixel)/(1/cos(pixel)))
  c=1/cosxx(z^pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1654 {; Julia.
  z=abs(1/tan(pixel)/sin(pixel)/(1/cos(pixel)))
  c=1/asin(z^pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1655 {; Julia.
  z=abs(1/sin(pixel))
  c=(1/z^z*z+z):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1656 {; Spider type.
  z=abs(1/sin(pixel))
  c=(1/z^z*z+z):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1657 {; Julia.
  z=abs(1/tan(pixel*pixel))
  c=0.1*sin(z*z)/pixel:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1658 {; Julia.
  z=conj(abs(tan(pixel*pixel)))
  c=0.1*sin(z*z*z)/(pixel-0.5):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1659 {; Julia.
  z=1/sin(1/pixel)/(1/cos(1/pixel))/(cos(1-pixel))
  c=pixel+(-0.7456,0.2):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1660 {; Spider type.
  z=1/sin(2/pixel)/(1/cos(2/pixel))/(cos(1-conj(pixel)))
  c=1/cosxx(pixel)+(-0.7456,0.2):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1661 {; Spider type.
  z=1/sin(2/pixel)/(1/cos(2/pixel))/(cos(1/pixel-conj(pixel)))
  c=1/cos(pixel)+(-0.3,0.6):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1662 {; Julia.
  z=1/cosxx(2/pixel)/(cos(1/pixel-sin(pixel)))
  c=1/sinh(pixel)/(1/cos(1.0,0.4)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1663 {; Julia.
  z=1/cosxx(sqr(3.2/pixel))/(cos(1.85/pixel-sin(pixel)))
  c=z/pixel:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1664 {; Julia.
  z=sin(pixel*pixel)/pixel
  c=pixel/conj(pixel*pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1665 {; Julia.
  z=1/cos(2.5/pixel)/(1/pixel-1)
  c=1/cos(3.5/pixel)/(1/pixel+1):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1666 {; Spider type.
  z=1/cos(2.5/pixel)/(1/pixel-1)
  c=1/cos(3.5/pixel)/(1/pixel+1):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1667 {
  z=pixel, c=sqrt(1/(1/(1/(5/pixel)))):
  z=z*z+(c-1)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z|<=4
  ;SOURCE: 37carr.frm
}
 
Carr1668 {; Spider type.
  z=1/cos(2.5/pixel)/(1/pixel-1)
  c=sqrt(1/(1/(1/cos(5/pixel)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1669 {; Spider type.
  z=1/log(1/(1/(1/cos(5/pixel))))
  c=sqrt(1/(1/(1/cos(5/pixel)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1670 {; Julia.
  z=sqr(0.1-pixel)
  c=1/log(z)^cos(pixel*sin(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1671 {; Spider type.
  z=sqr(0.1-pixel)
  c=1/log(z)^cos(pixel*sin(pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1672 {; Julia.
  z=sqr(conj(0.1-pixel))
  c=1/log(z)^sin(pixel*cosxx(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1673 {; Julia type.
  z=sqr(sin(cos(0.1-pixel)))
  c=log(z)^(1/sin(pixel*cosxx(pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1674 {; Julia.
  z=sqr(1/sin(1/cosxx(0.1-pixel)))
  c=sqrt(z)^(1/sin(pixel*sin(pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1675 {; Julia.
  z=sqr(1/sin(1/cosxx(sqr(0.2-pixel))))
  c=sinh(z*z)/(sin(pixel*1/sin(pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1676 {; Faceted Glass Julia.
  z=z1, z1=sqr(1/sin(1/tanh(sqr(0.32-pixel))))
  c=sinh(z*z)-(sin(pixel*1/sin(pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1677 {; Julia.
  z=(0.25-pixel)/(conj(pixel))
  c=(0.33-pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
   ; c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1678 {; Spider type.
  z=(0.25-pixel)/(conj(pixel))
  c=(0.33-pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1679 {; Julia.
  z=sin(0.25-pixel)/(sin(1/pixel))
  c=(0.33-sin(pixel))/(0.33-cos(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1680 {; Mandelbrot.
  z=sin(0.25-pixel)/(sin(1/pixel))
  c=(0.33-sin(pixel))/(0.33-cos(pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1681 {; Spider type.
  z=sin(0.25-pixel)/(sin(1/pixel))
  c=(0.33-sin(pixel))/(0.33-cos(pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1682 {; Julia.
  z=1/cos(0.25-pixel)/(1/cosxx(1/pixel))
  c=(0.33-cosh(pixel))/(0.33-sinh(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1683 {; Julia.
  z=sin(0.33-pixel)
  c=(0.39-cos(0.33-pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1684 {; Mandel type.
  z=flip(0.33-1/cotan(pixel))
  c=(0.39-1/cotan(0.33-5/pixel))-1/pixel:
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1685 {; Julia.
  z=sqr(1.33-cotan(flip(0.95/pixel/pixel)))
  c=(0.39-asin(0.33-1.5/(-0.7456,0.2)))/sqr(flip(4/pixel/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1686 {; Spider type.
  z=1/(pixel-1/pixel-0.9/pixel)
  c=1/(pixel-1/pixel-0.9/pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1687 {; Julia.
  z=z1, z1=1/(pixel-1/pixel-0.9/pixel)
  c=1/(pixel-1/pixel-0.9/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1688 {; Spider type.
  z=1/(pixel-sin(pixel))
  c=1/(pixel-sin(pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1689 {; Mandel type.
  z=1/(pixel-asin(pixel))
  c=1/(pixel-asin(pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1691 {; Mandel type.
  z=1/(abs(pixel)-flip(sin(1/pixel))-conj(sin(1/pixel)))
  c=1/(pixel-flip(sin(1/pixel))-conj(sin(1/pixel))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1692 {; Spider type.
  z=1/(abs(pixel-0.5)-flip(sin(1/pixel))-conj(sin(1/pixel)))
  c=1/(abs(pixel-0.5)-flip(sin(1/pixel))-conj(sin(1/pixel))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1693 {; Mandel type.
  z=1/((pixel+pixel)+flip(1/pixel)-conj(1/pixel))
  c=1/(pixel+flip(1/pixel)-conj(1/pixel)-sin(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1694 {; Mandel type.
  z=1/(pixel+5*pixel)
  c=1/pixel-conj(pixel):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1695 {; Julia 
  z=1/(pixel+5*pixel)
  c=1/pixel-conj(pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1696 {; Mandel type.
  z=((-0.7456,0.2))/(flip(pixel))
  c=1/((pixel-(1.099,0)/pixel)/pixel)/conj(pixel):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1697 {; Mandel type.
  c=(pixel)/(flip(pixel)-conj(1/pixel))
  z=(1/pixel)/(pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1698 {; Spider type.
  c=(pixel)/(flip(pixel)-conj(1/pixel))
  z=(1/pixel)/(pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1699 {; Mandel type.
  c=(pixel)/(flip(1/pixel)-conj(1/pixel))
  z=(1/pixel)/(2*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1673 {; Julia type.
  z=sqr(sin(cos(0.1-pixel)))
  c=log(z)^(1/sin(pixel*cosxx(pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
Carr1690 {; Mandel type.
  z=1/(pixel-flip(1/pixel)-conj(1/pixel))
  c=1/(pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}
 
