Gmandel_1 {; Sylvie Gallet 1995
           ; bailout = p1
  z=pixel/(conj(pixel)+(0.0,1.0))
  c=(1/pixel)/(flip(conj(pixel))-1.0) :
  z=z^2+c
  |z| <= p1
  ;SOURCE: forummsg.frm
}

Gmandel_2_b {; Sylvie Gallet [101324,3444]
             ; Robert W. Carr [73753,2420], 1995
  z = pixel/(conj(pixel)+(0.0,1.0))
  c = (1/pixel)/(flip(conj(pixel))-1.0) :
  c = z+c/2.125, z = z^2+c
  |real(z)| <= 4
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

Gmandel_3_b {; Sylvie Gallet [101324,3444]
             ; Robert W. Carr [73753,2420], 1995
  z = pixel/(conj(pixel)+(0.0,1.0))
  c = (1/pixel)/(flip(conj(pixel))-1.0) :
  z = z^2+c
  c = ((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <= 4
  ;SOURCE: gallet-1.frm
}

j_reel_1 {; copyright Sylvie Gallet
  z=pixel, x=real(z), y=imag(z) :
  x2=x*x, y2=y*y, x3=x2*x, y3= y2*y
  x=x3-y3+y, y=x2-y2, z=x+flip(y)
  |z|<=p1
  ;SOURCE: forummsg.frm
}

mandel-julia {; Sylvie Gallet 1995
  z=pixel, c=z
  compt=0, limit=real(p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: mandj.frm
}

mandel-lambdafn {; Sylvie Gallet [101324,3444], 1995
                 ; requires "periodicity=0" (<g> command)
  c = z = pixel, lambda = (1.0,0.4)
  pix2 = pixel*4+0.8, compt = 0, limit = real(p1) :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 4096 - 4032*test1
  z2 = lambda*sin(z)
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: gallet-1.frm
}

mandel-lambdafn_2 {; Sylvie Gallet [101324,3444], 1995
                   ; requires "periodicity=0" (<g> command)
  c = z = pixel, lambda = (1.0,0.4)
  pix2 = pixel*4+0.8, compt = 0, limit = real(p1) :
  test1 = (compt<limit), test2 = (compt!=limit)
  z = (z-pix2)*test2 + pix2
  bailout = 20000 + 1000*test1   ; the bug is here...
  z2 = lambda*sin(z)
  z = (z*z+c-z2)*test1+z2
  compt = compt+1
  |z| <= bailout
  ;SOURCE: gallet-1.frm
}

mandel-mandel {; Sylvie Gallet 1995
  c1=(0.34396372130558980 , 0.05608272738673762)
  c2=(-0.72141758920523890 , 0.25918045895127010)
  c=z=pixel, delta=c2-c1, b=c+delta
  compt=0, limit=real(p1), bailout=16 :
  test1=(compt<limit), test2=(compt!=limit)
  z = z * test2
  c = b - delta * test1
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: mandelm.frm
}

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

Newton_reel_4 {; Sylvie Gallet [101324,3444], 1995
  z = (1-Pixel)/(1+Pixel), sol = (1.0,1.0) :
  x=real(z), y=imag(z)          ; (x^3 - 1)/y = 0
  x3 = x*x*x, y2 = y*y          ; (y^2 - 1)/x = 0
  xy = x3*y2, d = 5*xy+x3+y2-1  ; solution (1,1)
  c = xy + x3 + 2*y2 - 1
  x1 = 2*x*c
  y1 = y*(c+4*x3-1)
  z = (x1+flip(y1))/d
  |z-sol| >= p1
  ;SOURCE: gallet-1.frm
}

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

Newton_z3+cosz {; Sylvie Gallet [101324,3444], 1995
                ; equation (z^3)/3 + z + cos z = 1
                ; solution z = 0
  z = 15*pixel :
  z2 = z*z
  z = z-(z2*z/3+z+cos(z)-1)/(z2+1-sin(z))
  |z| > p1
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

Newton_z3_sinz2 {; copyright Sylvie Gallet
                 ; z -> z^3+sin(z^2)
                 ; solution z = 0
  z = pixel :
  z2 = z*z
  z = z - (z*z2+sin(z2))/(3*z2+2*z*cos(z2))
  |z| >= p1
  ;SOURCE: forummsg.frm
}

