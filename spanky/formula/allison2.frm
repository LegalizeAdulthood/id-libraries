;
; Hi, Noel!
;
; I'm sending the first of my new fractals.  Let me know if you get it and it
; decodes ok.
; Netcom seems to be having a few e-mail problems lately.
;
; When I know you've gotten this one ok, I'll send the next 5.
;
; I hope you like them!  Thanks, Noel!
;
; Linda
;
; P.S.  Here are the .par and .frm files for all 6:

Lin-carr2new { ;Original formula by Bob Carr, modified by Linda Allison
  z = pixel:
  z = (fn1(1/(z ^ 2)))/p1
  |z| <= p2
  }

MyFrac-pc-Lin2 { ;Formulas by Bob Carr and Paul Carlson combined and modified by Linda Allison
  z = c = pixel:
  z2 = c * (1 - z * z)/(1 + z * z)
  z = fn1(z2) + fn2((z2 ^ 2)/p1)
  |z| <= 100
  }

MyFractal-lla {; Linda Allison
  z = pixel:
   z = fn1(z) + fn2((z ^ 2)/p1)
    |z| <= 100
}

Dragon8 (ORIGIN) {; Linda Allison
                  ; Edited for Fractint v. 20 by George Martin, 10/98
  z = Pixel
  power = p1/p2:
  z = (fn1(z))/p1 - (fn2(z))/p2
  |z| <= power
  ;SOURCE: allison2.frm
}

MyFract-7new {;Linda Allison
  c = z = 1/pixel:
   z = fn1(z^1.5) + (c + P1)/(z*2)
    |z| <= P1
}

Lin-7new5 { ;Linda Allison
  z = pixel:
  z = (fn1(1/z ^ 2))/p1 - p1
  |z| <= p2
  }

