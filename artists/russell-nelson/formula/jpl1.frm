; .FRM pour Spanky choix3

; I have added "+" because the following formula is not the one included
; in fractint.frm
; but the slight modified one in FRACXTR6.ZIP

BirdOfPrey+ (XAXIS_NOPARM) {; Jon Osuch
                            ; Try p1=0, p2=4, fn1=sqr, fn2=cosxx
      ; Edited for Fractint v. 20 by George Martin, 10/98
  z = p1
  x = 1:
  z=fn1(z)+pixel
  z=fn2(z)+pixel
  x = x+1
  |z| <=p2
  ;SOURCE: jpl1.frm
}

spiderM {z=pixel,f=pixel,g=pixel:
         f=f/p1+z,
         z=fn1(z^(p2+g))+fn2(f),
         |z| <= 4 }


InverseJulia {;J.P. Louvet
; P1 = c
; P2 = iter (normalement 4)
z=pixel,
c=P1:
z=1/(z^2+c),
|z|<=P2
}

JPL4' (yaxis) {; J.P. Louvet
    ; Edited for Fractint v. 20 by George Martin, 10/98
  z=Pixel
  c=Pixel:
  z=fn1(z^2+1)+c
  |z|<=4
  ;SOURCE: jpl1.frm
}

CarlsonJ1 {; from P. Carlson, modified by J.P. Louvet
; P1 = c
; P2 = degre
; P3 = iter (normalement 4)
z=pixel,
c=P1:
Z=fn1(C*(Z^P2-1)),
|z|<=P3}


; formulas for other fractals



BILL_err7 (yaxis) {; Bill Rossi
  z=Pixel:
    tmp1=fn1(z)^fn2(z),
    tmp2=fn3(z)^fn4(z),
    z=(tmp1/tmp2),
    |z| <= 4
}

InverseJuliaFn {; after Pokorny
                ;  modified by J.P. Louvet
                ; P1 = c
                ; P2 = iter (normalement 4)
  z=pixel
  c=P1:
  z=fn1(1/(z^2+c))
  |z|<=P2
  ;SOURCE: jpl1.frm
}
