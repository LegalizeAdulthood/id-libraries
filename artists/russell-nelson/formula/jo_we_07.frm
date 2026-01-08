;; Formulafile for jo_we_07.par
;; formulas from Sylvie Gallet


newton_reel_1 (ORIGIN) { ;	Sylvie Gallet
   z=pixel , x=real(z) , y=imag(z) :    ; Methode de Newton pour
   x2=x*x , y2=y*y , x3=x2*x , y3=y2*y  ; x -> x^3-y
   d=1+9*x2*y2                          ; y -> y^3+x
   x = (6*x3*y2 + 2*y3) / d             ; solution (0,0)
   y = (6*x2*y3 - 2*x3) / d
   z = x+flip(y)
   |z|>=.01
   }


Newt_Exp_Inv (YAXIS) {; Sylvie Gallet
                      ; equation e^z-1 = 0
                      ; solution z = 0
   z=(0,-1)/pixel :
   z=z-1+exp(-1*z)
   real(z) > real(p1)
  }

Gmandel_1 {           ; Sylvie Gallet 1995
                      ; bailout = p1
   z=pixel/(conj(pixel)+(0.0,1.0))
   c=(1/pixel)/(flip(conj(pixel))-1.0) :
   z=z^2+c
|z| <= p1
}

Newton_z3_sinz2 { ; copyright Sylvie Gallet
                  ; z -> z^3+sin(z^2)
                  ; solution z = 0
   z = pixel :
   z2 = z*z
   z = z - (z*z2+sin(z2))/(3*z2+2*z*cos(z2))
   |z| >= p1
   }

j_reel_1 { ; copyright Sylvie Gallet
   z=pixel , x=real(z) , y=imag(z) :
   x2=x*x , y2=y*y , x3=x2*x , y3= y2*y
   x=x3-y3+y , y=x2-y2 , z=x+flip(y)
   |z|<=p1
   }
