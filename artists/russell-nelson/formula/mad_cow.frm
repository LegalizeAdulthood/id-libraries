;; All Formulas & Par's by Vincent Damion Presogna
;; 76455.2222@Compuserve.com
;; Copyright 1996
;; Experimental images produced under the influence of the dreaded
;; bovine neurological ailment
;; This is the typo fix version


Mooey-old { ;; Requires Periodicity=0
z = pixel:
r = tan(1/z)^sqrt(e) + pixel
z = fn1(z)/sqrt(1/r)^2
|z| < 4
}

Moo-old { ;; Requires Periodicity=0
z = pixel:
z = z + p1
r = tan(1/z) + pixel
z = fn1(z)/sqrt(r)^e
|z| < 4
}


Moo_2-old { ;; Requires Periodicity=0
z = pixel:
z = z + p1
r = tan(1/z) * pixel
z = fn1(z)/sqrt(r)^(e/2)
|z| < 4
}


Moo_3 { ;; Requires Periodicity=0
z = pixel:
z = z + p1
r = tan(1/z) * pixel
z = fn1(z)/sqrt(r)
|z| < 4
}

Moo_4 { ;; Requires Periodicity=0
z = pixel:
z = z + p1
r = tan(1/z) + pixel
z = fn1(z)/sqrt(r)
|z| < 4
}

Moo { ;  Requires Periodicity=0
      ;  significant speedup of MOO, artists take note!!!
      ;  Original formula of the same name was by Vincent Presogna
      ;  Revision 6/8/96 for orgform by G. Martin, speedup using
      ;  halfe suggested by Tim Wegner
 halfe = e*.5, z = pixel:
 z = z + p1
 r = tan(1/z) + pixel
 z = fn1(z)/r^halfe   ; was z = fn1(z)/sqrt(r)^e
 |z| < 4
}

Mooey {
    ; revision 6/10/96 by G. Martin for Orgform of a Vincent Presogna
    ; formula of the same name
    ; speedup of original, substituting sroote for sqrt(e) and
    ; r for /sqrt(1/r)^2
    ; speedup technique pointed out by Tim Wegner
z = pixel, sroote = sqrt(e):
r = tan(1/z)^sroote + pixel
z = fn1(z) * r     ; was fn1(z)/sqrt(1/r)^2
|z| < 4
}

Moo_2 {
    ; revision 6/10/96 by G. Martin for Orgform of a Vincent Presogna
    ; formula of the same name
    ; speedup of original, substituting quartere for e/4 and
    ; r^quartere for sqrt(r)^(e/2)
    ; speedup technique pointed out by Tim Wegner
z = pixel, quartere = e/4:
z = z + p1
r = tan(1/z) * pixel
z = fn1(z)/r^quartere  ; was fn1(z)/sqrt(r)^(e/2)
|z| < 4
}

