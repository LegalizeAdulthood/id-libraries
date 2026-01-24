Carr-31 {; Carr-24 Modified
  c=z=1/pixel:
  z=(z*z*z*z*z*z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-32 {; Carr-24 Modified
  c=z=pixel:
  z=(z*z*z*z*z*z) + c
  |z| <= 4
  ;SOURCE: carr.frm
}


Carr-33 {; Carr-24 Modified
  c=z=1/pixel:
  z=(z*z*z*z*z*z*z) + c
  |z| <= 8
  ;SOURCE: carr-1.frm
}


Carr-34 {; Carr-24 Modified
  c=z=pixel:
  z=(z*z*z*z*z*z*z) + c
  |z| <= 8
  ;SOURCE: carr.frm
}


Carr-35 {; Carr-24 Modified
  c=z=1/pixel:
  z=(z*z*z*z*z*z*z*z*z) +c
  |z| <= 8
  ;SOURCE: carr-1.frm
}


Carr-36 {; Modified Julia formula from BUILTIN.FRM file
  z=1/cosxx(pixel)
  c=((0.3,0.6) ^ (|p1| <=0) + p1)
  t=4*(real(p2)<=0 + real(p2) ^ (0<p2)):
  z=sqr(z*z*z*z) + c
  |z| <= 8
  ;SOURCE: carr-1.frm
}


Carr-37 {; Modified Julia formula from BUILTIN.FRM file
  z=tan(1/pixel)
  c=((0.4,0.8) ^ (|p1|<=0)) + p1
  t=(4^(real(p2)<=0) + real(p2) ^ (0<p2)):
  z=sqr(z*z*z*z) + c
  |z|<=8
  ;SOURCE: carr-1.frm
}


Carr-38 {; Modified Julia formula from BUILTIN.FRM file
  c=cosxx(1/pixel)
  c=((0.4,0.8) ^ (|p1|<=0)) + p1
  t=(4^(real(p2)<=0) + real(p2) ^ (0<p2)):
  z= sqr(z*z*z*z*z*z) + c
  |z| <= 8
  ;SOURCE: carr-1.frm
}


Carr-39 {; Karl Geigl formula Modified
  z=c=pixel:
  z=((z*z*z*z+1/4)*2/z*(z*z-1))*c
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-40 {; Karl Geigl formula Modified
  z=c=1/pixel:
  z=((z*z*z*z+1/4)*2/z*(z*z-1))*tan(c)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-41 {; Mark Peterson frm Modified
  z=pixel, c=cosh(1/pixel):
  z=sqr(z*z*z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-42 {; Mark Petersom frm Modified
  z=pixel, c=cosh(1/pixel):
  z=cosxx(z*z*z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-43 {; Kevin Lee Modified
  z=cosxx(pixel), c=pixel-tan(z*z*z):
  c=pixel+ c*c/z, z=c-z*sqr(pixel)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-44 {; Drcha.frm-test-1 Modified
  c=pixel
  z=((sqrt(5) +1)/2):
  z=(z*z*z*z*z*z) + pixel*(sqrt(5) + 1)/2 +c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-45 {; Mark Peterson frm Modified
  c=z=1/pixel:
  z=sqr(z) + sqr(c)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-46 {; Mark Peterson frm Modified
         ; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel:
  z=sqr(z*z*z*z) - 1/2 + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-47 {; Mark Peterson frm Modified
  c=z=(1/pixel)/2:
  z=sqr(z*z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-48 {; Mark Peterson frm Modified
  c=z=1/-pixel:
  z=sqr(z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-49 {; Mark Peterson frm Modified
  c=z=1/-pixel:
  z=sqr(z*z*z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-50 {; Mark Peterson frm Modified
  c=z=1/cosxx(-pixel):
  z=sqr(z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-51 {; Mark Peterson frm Modified
  c=z=1/tan(-pixel):
  z=sqr(z*z*z) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-52 {; Mark Peterson frm Modified
  c=z=1/tan(-pixel):
  z=sqr(z*z*z) + 0.75
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-53 {; Mark Peterson frm Modified
  c=z=1/conj(-pixel):
  z=(sqr(z*z*z))/2 + 0.75
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-54 {; Mark Peterson frm Modified
  c=z=1/-pixel:
  z=(sqr(z*z*z))/2 + 0.33
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-55 {
  c=z=1/pixel:
  z=z^2 + flip(pixel)/(pixel^2 + z)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-56 {
  c=z=sqr(1/pixel):
  z=z^2 + flip(pixel)/(pixel^2 + z)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-57 {
  z=c=1/pixel:
  z=(z*z*z)*(c*4) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-58 {
  z=c=pixel:
  z=(z*z*z)*(c*4) + c
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-59 {
  z=c=1/pixel:
  z=(z*z*z)*(tanh(c*4)) + c
  |z| <= 10
  ;SOURCE: carr-1.frm
}


Carr-60 {
  z=c=1/pixel:
  z=(z*z*z*z)*(cotanh(c*c*4)) + c/0.75
  |z| <= 10
  ;SOURCE: carr-1.frm
}


Carr-61 {
  z=c=1/pixel:
  z=(z*z*z*z)/cotanh(c*c*c*4) + c/0.75
  |z| <= 10
  ;SOURCE: carr-1.frm
}


Carr-62 {
  c=z=pixel:
  c=tanh(z^c)/z, c=(z*z*z*z*z) + (c/0.9), z=sqr(c*1/pixel)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-63 {
  c=z=1/pixel:
  c=tanh(z^c)/z, c=(z*z*z*z*z) + (c/0.9), z=sqr(c*1/pixel)
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-64 {
  z=tanh(1/pixel):
  c=sqr(real(1/pixel))
  z=(z*z*z*z) - (sqr(c*c))
  |z| <=8
  ;SOURCE: carr-1.frm
}


Carr-65 {
  z=1/tanh(1/pixel):
  c=sqr(real(1/pixel))
  z=tanh(z*z*z*z) + (1/cotanh(c*c))
  |z| <=8
  ;SOURCE: carr-1.frm
}


Carr-66 {
  c=z=(1/pixel)/cotan(pixel-.25):
  z=sqr(z) + 0.33
  |z| <= 4
  ;SOURCE: carr-1.frm
}


Carr-66A {
  c=z=(1/pixel)/cotanh(pixel-.75):
  z=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-66B {
  c=z=cotanh(pixel/0.33)/(pixel-.75):
  z=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-66C {
  c=z=log(1/pixel/0.33)/(pixel-.75):
  z=sqr(z) + 0.33
  |Z| <=4
  ;SOURCE: carr-1.frm
}


Carr-66D {
  c=z=log(1/pixel/0.33)/sqr(pixel-.75):
  z=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-66E {
  c=z=sqr(1/pixel/0.33)/(5.3/flip(pixel-.75))/0.33:
  z=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-66F {
  c=z=sqr(1/pixel/0.33)/(9.3/flip(pixel-.75))/0.33:
  z=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-67 {; use Distance Estimator funtion on this formula
  c=z=pixel:
  z=sqr(z) + c
  z1=sqr(z) + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-68 {
  c=z=1/pixel:
  z=sqr(z*z) + c
  z=sin(z) + c
  z=sqr(z) + c
  z=sin(z*z) + c
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-69 {
  c=z=1/pixel:
  z=sin(z*z) + c
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-70 {
  c=z=1/pixel:
  z=sin(z*z)/0.99 + 0.33
  |z| <=4
  ;SOURCE: carr-1.frm
}


Carr-71 {
  c=z=1/pixel:
  z=sin(z*z) + c
  z=sin(z*z)/0.99 + c
  z=sin(z*z*z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-72 {
  c=z=1/pixel:
  z=sinh(z*z) + c
  z=sinh(z*z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-73 {
  c=z=1/pixel:
  z=sqr(z*z) + c
  z=sqr(z*z^z) - c
  |z| <=10
  ;SOURCE: carr.frm
}


Carr-74 {
  c=z=1/pixel:
  z=(3.334/sin(z*z)) + (c/pixel)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-75 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c-0.33))/pixel)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-76 {
  c=z=pixel:
  z=(sin(z*z)) + ((sin(c-0.33))/pixel)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-77 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c-5.9))/pixel)
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-78 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c+8.9))/pixel)
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-79 {
  c=z=pixel:
  z=(sin(z*z)) + ((sin(c+8.9))/pixel)
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-80 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c+8.9))/pixel)
  z=sqr(z) + (c-1)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-81 {
  c=z=(1/pixel):
  z=(sin(z*z)) + ((sin(c+8.9))/pixel)
  z=(sin(z*z)) + c
  |Z| <=4
  ;SOURCE: carr.frm
}


Carr-82 {
  z=c=1/pixel:
  z=sin(z*z) + (conj(1/pixel))
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-83 {
  z=c=1/pixel:
  z=sin(z*z) + (conj(1/pixel))/(0.33/c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-84 {
  z=c=1/pixel:
  z=sin(z*z) + ((tanh(1/pixel))/(0.33/c))
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-85 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=sqr(z) + conj(c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-86 {
  z=c=pixel:
  z=sqr(z) + c
  z=sqr(z) + conj(c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-87 {
  z=c=1/pixel:
  z=sqr(z) + c
  z=sin(z) + c
  z=sqr(z) + conj(c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-88 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c)
  z=sin(z*z) + sqr(c)
  z=sqr(z) + sqr(c)
  |z| <=4
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


Carr-90 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c-5)
  z=sin(z*z) + sqr(c-2)
  z=sqr(z) + sqr(c-0.67)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-91 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c-6)
  z=sin(z*z) + sqr(c-3)
  z=sqr(z) + sqr(c-2)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-92 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c)
  z=sqr(z) + sin(c)
  z=sqr(z) + sin(c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-93 {
  z=c=1/pixel:
  z=sqr(z) + sqr(c*c)
  z=sqr(z) + sin(c)
  z=sqr(z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-94 {
  z=c=1/pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z) + sin(c)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-95 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z) + sin(c)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-96 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z) + sin(c^pixel)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-97 {
  z=c=1/pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr-2.frm
}


Carr-98 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c*c)
  |z| <=4
  ;SOURCE: carr.frm
}


Carr-99 {
  z=c=pixel:
  z=sqr(z*z) + sqr(c*c)
  z=sqr(z*z) + sin(c^pixel)
  z=sqr(z*z) + sin(c^pixel)
  |z| <=4
  ;SOURCE: carr.frm
}
