Nova {; P1 is a parameter to do strange things to
      ; the formula. 0 gives the usual Newton for
      ; cube root of 1. p2 is an inverse bailout,
      ; set this to a small nonzero value and use
      ; floating point. E.g. 0.0000001.
      ; The Nova Formulae, discovered by PGD.
      ; Freely distributable but may not be sold.
  z=pixel
  c=p1:
  z2=z*z
  z3=z*z2
  func=z3-1
  der=3*z2
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}
 
Nova4 {; P1 is a parameter to do strange things to
       ; the formula. 0 gives the usual Newton for
       ; fourth root of 1. p2 is an inverse bailout,
       ; set this to a small nonzero value and use
       ; floating point. E.g. 0.0000001.
       ; The Nova Formulae, discovered by PGD.
       ; Freely distributable but may not be sold.
  z=pixel
  c=p1:
  z2=z*z
  z3=z*z2
  z4=z*z3
  func=z4-1
  der=4*z3
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}
 
Nova4M {; Mandelbrot-like set for Nova4.
        ; P2 is an inverse bailout,
        ; set this to a small nonzero value and use
        ; floating point. E.g. 0.0000001.
        ; The Nova Formulae, discovered by PGD.
        ; Freely distributable but may not be sold.
  z=1
  c=pixel:
  z2=z*z
  z3=z*z2
  z4=z*z3
  func=z4-1
  der=4*z3
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}
 
Nova5M {; Mandelbrot-like set for Nova5.
        ; P2 is an inverse bailout,
        ; set this to a small nonzero value and use
        ; floating point. E.g. 0.0000001.
        ; The Nova Formulae, discovered by PGD.
        ; Freely distributable but may not be sold.
        ; Novena has two mandelbrot sets that are
        ; slightly different.}
  z=1
  c=pixel:
  z2=z*z
  z4=z2*z2
  z5=z4*z
  func=z5-1
  der=5*z4
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}
 
NovaM {; Mandelbrot-like set for Nova.
       ; P2 is an inverse bailout,
       ; set this to a small nonzero value and use
       ; floating point. E.g. 0.0000001.
       ; The Nova Formulae, discovered by PGD.
       ; Freely distributable but may not be sold.
  z=1  
  c=pixel:
  z2=z*z
  z3=z*z2
  func=z3-1
  der=3*z2
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}
 
NovenaM {; Mandelbrot-like set for Novena.
         ; P2 is an inverse bailout,
         ; set this to a small nonzero value and use
         ; floating point. E.g. 0.0000001.
         ; The Nova Formulae, discovered by PGD.
         ; Freely distributable but may not be sold.
  z=1
  c=pixel:
  z2=z*z
  z3=z*z2
  func=z3+z-2
  der=3*z2+1
  oz=z
  z=z-(func/der)+c
  |oz-z|>p2
  ;SOURCE: nova.frm
}
 
