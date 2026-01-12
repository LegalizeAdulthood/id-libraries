Moo {; Requires Periodicity=0
     ; significant speedup of MOO, artists take note!!!
     ; Revised 6/8/96 for orgform, speedup using halfe suggested
     ;  by Tim Wegner
  halfe = e*(-.5), z = pixel:
  z = z + p1
  r = tan(1/z) + pixel
  z = fn1(z)*r^halfe   ; was z = fn1(z)/sqrt(r)^e
  |z| < 4
  ;SOURCE: mad_cow.frm
}

Lister_M {; Might need periodicity=0
  z = c = pixel:
  r = tan(e/z)/c
  z = r * fn1(z) - p1
  |z| < 4
  ;SOURCE: lister.frm
}

Moo_2 {; requires periodicity=0
       ; revision 6/10/96 by G. Martin for Orgform of a Vincent Presogna
       ; formula of the same name
       ; speedup of original, substituting quartere for e/4 and
       ; r^quartere for sqrt(r)^(e/2)
       ; speedup technique pointed out by Tim Wegner
  z = pixel, quartere = e*(-.25):
  z = z + p1
  r = tan(1/z) * pixel
  z = fn1(z)*r^quartere  ; was fn1(z)/sqrt(r)^(e/2)
  |z| < 4
  ; SOURCE: mad_cow.frm
}

Moo_3 {; requires periodicity=0
  z = pixel:
  z = z + p1
  r = tan(1/z) * pixel
  z = fn1(z)/sqrt(r)
  |z| < 4
  ;SOURCE: mad_cow.frm
}

Moo_4 {
  z = pixel:
  z = z + p1
  r = tan(1/z) + pixel
  z = fn1(z)/sqrt(r)
  |z| < 4
  ;SOURCE: mad_cow.frm
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
  ; SOURCE: mad_cow.frm
}

Moo1 { ;; Requires Periodicity=0
       ;  significant speedup of MOO, artists take note!!!
 halfe = e*.5, z = pixel:
 z = z + p1
 r = tan(1/z) + pixel
 z = fn1(z)/r^halfe   ; was z = fn1(z)/sqrt(r)^e
 |z| < 4
}
