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
 
