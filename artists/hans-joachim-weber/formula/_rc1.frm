Newt_Exp_Inv (YAXIS) {; Sylvie Gallet
                      ; equation e^z-1 = 0
                      ; solution z = 0
  z=(0,-1)/pixel :
  z=z-1+exp(-1*z)
  real(z) > real(p1)
  ;SOURCE: forummsg.frm
}

newton_reel_1 (ORIGIN) {; Sylvie Gallet
  z=pixel, x=real(z), y=imag(z) :      ; Methode de Newton pour
  x2=x*x, y2=y*y, x3=x2*x, y3=y2*y     ; x -> x^3-y
  d=1+9*x2*y2                          ; y -> y^3+x
  x = (6*x3*y2 + 2*y3) / d             ; solution (0,0)
  y = (6*x2*y3 - 2*x3) / d
  z = x+flip(y)
  |z|>=.01
  ;SOURCE: forummsg.frm
}

Newton_z3_sinz2 {; copyright Sylvie Gallet
                 ; z -> z^3+sin(z^2)
                 ; solution z = 0
  z = pixel :
  z2 = z*z
  z = z - (z*z2+sin(z2))/(3*z2+2*z*cos(z2))
  |z| >= p1
  ;SOURCE: forummsg.frm
}

Carr-689 {
  z=1/pixel, c=sinh(sqr(z^2.724))+0.124:
  z=z*z+c
  |z| <=10
  ;SOURCE: 03carr.frm
}

Carr1452 {
  z=flip(pixel*pixel), c=conj(pixel*pixel):
  z=(z*z)+c-1.49
  c=1/z*z+1/pixel
  |z| <=4
  ;SOURCE: 33carr.frm
}

Carr1453 {; Modified ManP1IMJ
  z=pixel, c=(0.3,0.6):
  z=sqr(z)
  z=z+c+imag(z)
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}

Carr1455 {; Modified ManP1IMJ
  z=pixel, c=sqr(0.3,0.6):
  z=z*z
  z=z+c+sin(z)
  c=z+c/2
  |z| <=4
  ;SOURCE: 33carr.frm
}

Carr1456 {; Modified ManP1IMJ
  z=pixel, c=(-0.7456,0.2):
  z=z*z
  z=z+c+sin(z)
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}

Carr1458 {; Julia
  z=pixel, c=(0.9/-3.48)-0.88/pixel:
  z=z*z+c
  c=z+c/2.125
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z|<=4
  ;SOURCE: 33carr.frm
}

Carr1462 {
  z=pixel, c=cosh(pixel):
  z=conj(sqr(z)+c)*conj(z+1)*conj(c-0.95)
  c=z+c/2.125
  |z| <=4
  ;SOURCE: 33carr.frm
}

Carr1477 {; ??-Julia-??
  z=tan(1/exp(pixel)^2.32)-1.25, c=conj(z):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}

Carr1495 {; Julia
  z=1/(pixel+pixel)/(cotan(1/pixel*4/pixel))
  c=z*1/conj(pixel+pixel)/((sqr(z-0.25)*pixel)/(6/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}

Carr1791 {
  z=1/pixel
  c=1/(pixel-(0.124/z*(0.524/pixel/z))):
  z=0.124/pixel/c*c*c*pixel/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}

Carr1795 {
  z=1/(pixel-real(1/pixel)-sinh(1/pixel-0.25))
  c=(1/(pixel-(0.124/z*(0.524/pixel/z)))):
  z=0.124/pixel/c*c*c*pixel/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}

Carr1797 {
  z=1/(pixel-cabs(cosh(5.5/pixel))-tanh(sin(1/pixel-0.25)))
  c=(1/(pixel-(0.124/z*cos(0.524/pixel/z)))):
  z=0.124/pixel/c*c*c*(pixel+cos(2.5/pixel))/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}

Carr1798 {
  z=1/(pixel-cotanh(cosh(5.5/pixel))-tanh(sin(1/pixel-0.25)))
  c=(1/(pixel-(0.124/z*cos(0.524/pixel/z)))):
  z=0.124/pixel/c*c*c*(pixel+cos(2.5/pixel))/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}

