Lister_M {; Might need periodicity=0 
  z = c = pixel:
  r = tan(e/z)/c  
  z = r * fn1(z) - p1 
  |z| < 4
  ;SOURCE: lister.frm
}
 
Lister {; Might need periodicity=0 
  z = pixel + p1:
  r = tan(1/z)/e + pixel  
  z = fn1(z)/r 
  |z| < 4
  ;SOURCE: lister.frm
}
 
Lister_2 {; Might need periodicity=0 
  z = c = pixel + p1:
  r = tan(e/z)/pi
  z = fn1(z)/fn2(c/r) 
  |z| < 4
  ;SOURCE: lister.frm
}
 
Lister_3 {; Might need periodicity=0 
  z = pixel + p1:
  r = tan(1/z)/e
  z = fn1(1/z)*r/e   
  |z| < 4
  ;SOURCE: lister.frm
}
 
Listerial {; Might need periodicity=0
  z = pixel, tp = tan(1/pixel):
  z = fn1(z) + p1
  r = tp/(imag(z)/real(z)) 
  z = tan(1/z)/sqrt(r)
  |z| < 4
  ;SOURCE: lister.frm
}
 
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
 
