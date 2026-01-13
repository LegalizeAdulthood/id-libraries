Newton_reel_5 {; Sylvie Gallet [101324,3444], 1995
  z = pixel :                          ; x^3 + y^2 - 1 = 0
  x = real(z), y = imag(z), xy = x*y   ; y^3 - x^2 + 1 = 0
  d = 9*xy+4, x2 = x*x, y2 = y*y       ; solution (0,-1)
  c = 6*xy+2
  x1 = x*c - (y*y2 - 3*y - 2)/x
  y1 = y*c + (x*x2 + 2 - 3*x)/y
  z = (x1+flip(y1))/d
  |z-(0,-1)| >= p1
  ;SOURCE: gallet-1.frm
}
Gmandel_3 {; Sylvie Gallet [101324,3444]
           ; Robert W. Carr [73753,2420], 1995
  z = pixel/(conj(pixel)+(0.0,1.0))
  c = (1/pixel)/(flip(conj(pixel))-1.0) :
  c = ((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  z = z^2+c
  |real(z)| <= 4
  ;SOURCE: gallet-1.frm
}
Gmandel_2_b {; Sylvie Gallet [101324,3444]
             ; Robert W. Carr [73753,2420], 1995
  z = pixel/(conj(pixel)+(0.0,1.0))
  c = (1/pixel)/(flip(conj(pixel))-1.0) :
  c = z+c/2.125, z = z^2+c
  |real(z)| <= 4
  ;SOURCE: gallet-1.frm
}
Gmandel_3_b {; Sylvie Gallet [101324,3444]
             ; Robert W. Carr [73753,2420], 1995
  z = pixel/(conj(pixel)+(0.0,1.0))
  c = (1/pixel)/(flip(conj(pixel))-1.0) :
  z = z^2+c
  c = ((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <= 4
  ;SOURCE: gallet-1.frm
}
newton_z3_fn {; Sylvie Gallet [101324,3444], 1995
              ; equation z^3-1 = 0
              ; solution z = 1
  z = fn1(pixel) :
  z = (z+z-1/(z*z))/3 ; <==> z-(z*z2-1)/(3*z2)
  |z-(1.0,0.0)| >= real(p1)
  ;SOURCE: gallet-1.frm
}
Newt_Exp_Inv (YAXIS) {; Sylvie Gallet
                      ; equation e^z-1 = 0
                      ; solution z = 0
   z=(0,-1)/pixel :
   z=z-1+exp(-1*z)
   real(z) > real(p1)
}
Newton_z3+cosz {; Sylvie Gallet [101324,3444], 1995
                ; equation (z^3)/3 + z + cos z = 1
                ; solution z = 0
  z = 15*pixel :
  z2 = z*z
  z = z-(z2*z/3+z+cos(z)-1)/(z2+1-sin(z))
  |z| > p1
  ;SOURCE: gallet-1.frm
}
