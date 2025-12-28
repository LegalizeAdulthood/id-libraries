Carr-07 {; was OK-02 and was modified
         ; Edited for Fractint v. 20 by George Martin, 10/98
  z = c = 1 / pixel, k = 1 + p1:
  z = (c^z) + c
  z = cotan(z) * k
  |z| <= (5 + p2)
  ;SOURCE: carr.frm
}
 
Carr-200 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=((1/pixel)*z*z)/(z-1) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-202 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=(1/pixel)*z*z/(z-0.5) + c
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-21 {
  z = 1 / pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sqr (log(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-210 {
  z=c=1/pixel:
  z=z*z+c+(z*z+(c-0.124))/(z-0.75)+c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-22 {
  z = 1 / pixel, z = cosxx(z):
  z = z + (sqr(pixel))
  z = sqr (cosxx(1 / (z)) )
  |z| <= 4
  ;SOURCE: carr.frm
}
 
Carr-27 {; Carr-24 Modified
  c=z=1/pixel:
  z=sqr(z) + (c-1)*(1/4)
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-508 {
  z=1/pixel, c=exp(0.6,0.3)/(0.5/pixel):
  z=(z/(pixel-0.724)*z/(pixel-0.724)+(pixel+0.524)*-1/pixel)/c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-800 {
  z=sqr(sqr(sqr(1/pixel-0.006))), c=sqr(sqr(1/pixel-0.009)):
  z=((pixel-z*z)/(pixel-(c+0.624)*(c+0.624)))-0.375
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-801 {
  z=sqr(sqr(sqr(1/pixel-0.006)))-0.01, c=sqr(sqr(1/pixel-0.009)):
  z=((pixel-z*z)/(pixel-(c+0.624)*(c+0.624)))
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-804 {; Modified SJMAND01
  z=1/(real(pixel)+flip(imag(pixel)*1.224))
  c=1/(2.224+1.224*real(pixel)+flip(imag(pixel))):
  z=z*z+c
  |z| <=10
  ;SOURCE: carr.frm
}
 
Carr-875 {
  z=1/(pixel*conj(conj(5/pixel+0.724)))
  c=1/(fn4((conj(pixel-1.524))*sqr(1/pixel)/fn2(conj(1/pixel-0.524)))):
  z=flip((pixel+z*z)/(pixel-c*c-0.324))
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-876 {
  z=1/(pixel*conj(conj(2/pixel+0.724)))
  c=1/(fn2((conj(pixel-1.524))*sqr(1/pixel)/fn2(conj(1/pixel-0.524)))):
  z=flip(pixel+z*z)/(pixel-c*c-0.324)
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-879 {
  z=1/(pixel*pixel)
  c=((1/pixel)/2)/z-2.5^cotanh(pixel-1.124):
  z=(1/z*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-880 {
  z=real((1/pixel)/1.91)/(5.7,-1.3)
  c=(1/pixel*0.91/pixel):
  z=(pixel+z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-89 {
  z=c=pixel:
  z=sqr(z) + sqr(c)
  z=sin(z*z) + sqr(c)
  z=sqr(z) + sqr(c)
  |z| <=4
  ;SOURCE: carr.frm
}
 
Carr-895 {
  z=cotanh(1/pixel), c=2+cotanh(1/pixel):
  z=conj(2.124)*(z*z+c)+real(c*(1/pixel-0.5))
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-896 {
  z=cotanh(1/pixel), c=2+cotanh(1/pixel*0.87/pixel):
  z=(2.124)*(z*z+c)/real(c*(1/pixel-0.5))
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-904 {
  z=((1-pixel)/3)^0.5, c=(1-1/pixel)^0.5:
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-909 {
  z=conj(exp(1/pixel))
  c=conj(pixel-sqr(z)):
  z=z*z+c
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
Carr-915 {
  z=1/pixel+0.91/pixel
  c=((2.124*(|3.324|<=0)+1.324)*cotanh(pixel)):
  z=c-z*pixel+1
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: carr.frm
}
 
