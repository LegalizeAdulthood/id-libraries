Carr-223 {
  z=c=1/pixel, cp2=cos(pixel/0.74):
  z=(z^2)*(z^2)+sin(z-0.3)/cp2
  |z| <=10
  ;SOURCE: carr-9.frm
}

Carr-225 {
  z=c=1/pixel, cp2=cos(pixel/c*c+0.807):
  z=(z^2)*(z^2)*(z^2)+sin(z+0.3)/cp2
  |z| <=10
  ;SOURCE: carr-9.frm
}

Carr-226 {
  z=c=1/pixel, cp2=tan(pixel/c*c+0.807):
  z=(z^2)*(z^2)*(z^2)+sin(z+0.3)/cp2
  |z| <=10
  ;SOURCE: carr-9.frm
}

Carr-229 {; Note personalization
  z=c=1/pixel, Bob2=log((pixel)/c*c+0.807), Bob3=1/cosxx(z+0.3):
  z=(z^2)*(z^2)*(z^2)+Bob3/Bob2
  z=sin(z*z) + c
  |z| <=10
  ;SOURCE: carr-9.frm
}

Carr-231 {
  z=c=1/pixel, Bob2=log((1/pixel)/c*c+0.8), Bob3=1/cosxx(z+0.3):
  z=(z^2)*(z^2)*(z^2)+Bob3/Bob2
  z=sin(z*z*z) + (c-0.124)
  |z|<=10
  ;SOURCE: carr-9.frm
}

Carr-233 {
  z=c=1/pixel, Bob2=log(pixel/(c/pixel*c)+0.8), Bob3=1/cosxx(z+0.3):
  z=(z^2)*(z^2)*(z^2)-Bob3/Bob2
  z=z*pixel-pixel/sqr(z)
  |z| <=10
  ;SOURCE: carr-9.frm
}

Carr-236 {
  z=c=1/pixel, Bob2=log(1/pixel/pixel)/c*c+1.2
  Bob3=1/cosxx(z/0.3)/-1.1*c:
  z=(z^2)*(z^2)*(z^2)+Bob3*Bob2
  z=sin(z*z) + (c-0.124)
  z=z*z+c
  |z| <=10
  ;SOURCE: carr-9.frm
}

Carr-241 {
  z=c=1/pixel
  Bob2=cosxx((z^1.5)*(z^1.5)*(z^1.5)-0.4)+conj(sin(z-0.35))
  Bob3=conj(1/c*pixel+0.124):
  z=Bob2/Bob3
  |z| <=10
  ;SOURCE: carr-9.frm
}

Carr-245 {
  z=c=1/pixel
  Bob2=conj((z^3.5)*(z^3.5)*(z^3.5))+cosxx(1/sin(z-0.35))
  Bob3=conj(1/c*1/pixel+0.124):
  z=Bob2/Bob3
  z=flip((z*z)*(z*z))-(c-0.224)
  z=1/z*1/z+log(c)
  |z| <=10
  ;SOURCE: carr-9.frm
}

Carr-254 {
  c=0.5/pixel, z=1.5/pixel, a=p1, b=p2:
  z=fn1(z*z)+fn2(z*b)+fn1(z^a)
  z=sin(z*z)+(c-0.124)
  z=z*z+(c-0.124)
  |z| <=10
  ;SOURCE: carr-9.frm
}

Carr1000 {
  z=((1/pixel)/0.71)/(0.85/pixel+2.324)
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
  z=(z*1/sqr(cotanh(1/c)))
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}

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

Carr1668 {; Spider type.
  z=1/cos(2.5/pixel)/(1/pixel-1)
  c=sqrt(1/(1/(1/cos(5/pixel)))):
  z=z*z+c
  c=z+c/2.125
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

tC1108 {; generalized CARR1108, by Caren Park
  z = fn1( p1 / (4 / p1))
  c = fn2( p2 / (1 / p2)):
  z = (z * 1 / c) / (fn3 (pixel) - c * c)
  z = z / c
  |real(z)| <=100
  ;SOURCE: forummsg.frm
}

tC1126 {; generalized CARR1126, by Caren Park
  z = fn1( p1) / (p1 + pixel)
  c = (fn1( 1 / pixel * p2 / pixel))/(0.3, 0.6):
  z = z + c - fn2 (imag( z))
  |real(z)| <=100
  ;SOURCE: forummsg.frm
}

