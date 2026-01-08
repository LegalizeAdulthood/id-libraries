Element(xyaxis) {; Michael Theroux [71673,2767]
   ; fix and generalization by Ron Barnett [70153,1233] 
   ;phi lingam
   ;try p1 = 2.236067977 for the golden mean
   z = pixel:
   z = z*z*z*z + ((p1 + 1)/2)
   |z| <= 4
   }

FractalFenderTwoC (XAXIS_NOPARM) {; Edited for Fractint v. 20
                                  ; by George Martin, 10/98
  z=p1, x=|z|:
  IF (x>1)
    z=cos(z)+pixel
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: form1.frm
}

IslandOfChaosC (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSE
    z=sin(z)/cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

ManInTheOzoneC (XAXIS_NOPARM) {
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=cosxx(z)+pixel
  ELSE
    z=sin(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

FractalFenderC (XAXIS_NOPARM) {; Spectacular!
    ; Modified for if..else logic 3/18/97 by Sylvie Gallet
   z = p1, x = |z| :
   IF (1 < x)
      z = cosh(z) + pixel
   ENDIF
   z = sqr(z) + pixel, x = |z|
   x <= 4
}

ScottLPC(XAXIS) { 
   z = pixel, TEST = (p1+3): 
   z = log(z)+cosxx(z), 
   |z|<TEST 
}
Fzppsqsi  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = sin (pixel):
                       z = sqr (z)  + f, |z| <= 50
}

DrChaosbrot2 (xyaxis) {; more phi
  z = c = pixel:
  z = sqr(z) + (((sqrt(5)+ 1)/2)+c)
  |z| <= 4
  ;SOURCE: drcha.frm
}
Fzpcopsq  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = pixel ^ (sqr(pixel) ):
                       z = cosxx (z)  + f, |z| <= 50}
Fzppchco  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosxx (pixel):
                       z = cosh (z) + f, |z| <= 50}
Fzppcoht  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = cosh(pixel) / sinh(pixel):
                       z = cosxx (z)+f,|z|<= 50}
Fzppsiex  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = exp (pixel):
                       z = sin (z)  + f, |z| <= 50
}

Fly (XAXIS_NOPARM) {; Edited for Fractint v. 20 by George Martin 10/98
  z=p1:
  x=real(z)
  z=sqr(z)+pixel
  z=sqr(z)-pixel
  |z|<=4
  ;SOURCE: choice.frm
}
DpSpaceProbeTwoC (XAXIS_NOPARM) {
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p1, x=1:
  IF (x<10)
    z=sqr(z)+pixel
  ELSEIF (x<20)
    z=exp(z)+pixel
  ELSE
    z=cosxx(z)+pixel
  ENDIF
  x=x+1
  |z|<=4
  ;SOURCE: choice.frm
}

J_TchebychevC6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(z*z-6)+9)-2),
   |z|<100
}
M_TchebychevS7 {     ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z*(z*z-6)+10)-4),
   |z|<100
}
M_TchebychevU5 {    ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(32*z*z-32)+6),
   |z|<100
}
M_TchebychevC4 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z-4)+2),
   |z|<100
}
M_TchebychevT4 {
   c = P1, z = Pixel:
   z = c*(z*z*(8*z*z+8)+1),
   |z|<100
}
jfnc {
	z=pixel, c=p1:
	z=sqr(z)+c,
	c=c+p2*fn1(c),
	|z| <= 4
	}
flip1_man_m {
   z=0, q = pixel:
   q = flip(q),
   z = sqr(z) + q,
   |z| <= 4
   }
flip3_man_j { ;
   z = pixel:
   z = 1/flip(sqr(z) + p1),
   |z| <= 4
   }
Fzppchlo  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = log (pixel):
                       z = cosh (z) + f, |z| <= 50}
Fzppcosr  { ;; Lee2.FRM (Lee Skinner)
  z = pixel, f = (pixel) ^ 0.5:
                       z = cosxx (z)  + f, |z| <= 50}
