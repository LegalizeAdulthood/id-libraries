comment {
        This series of formulas was inspired by a reference in Pickover's
        Computers, Chaos, Patterns and Beauty to a conjugate Mandelbrot set.
        I did not have access to the book he referred to, but I figured you 
        just substituted conj(z) for z in the formula for the Mandelbrot set.
        
 }
MandelConj(XAXIS) {; Paul J. Horn , this was mentioned in Pickover's book 
; Compurers, Chaos, Patterns and Beauty.  He didn't give the forumula, so  
; I came up with this
  z = c = Pixel:  ; 
  z = Sqr(conj(z)) + Pixel ,
   |z| <= 4          ; 
  }

MandConj01(XAXIS) {; Paul J. Horn, see MandelConj.  
; This is a variation on a theme.
  z = c = Pixel:  ; 
  z = Sqr(z) + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj02(XAXIS) {; Paul J. Horn, see MandelConj. 
; Another variation on the theme. 
  z = c = Pixel:  ; 
  z = Sqr(Conj(z)) + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj03(XAXIS) {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = Sqr(conj(z))*conj(z) + Pixel ,
   |z| <= 4          ; 
  }

MandConj04(XAXIS) {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = Sqr((z))*(z) + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj05(XAXIS) {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = Sqr(conj(z))*conj(z) + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj06(XAXIS) {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = Sqr(Sqr(conj(z))) + Pixel ,
   |z| <= 4          ; 
  }

MandConj07(XAXIS) {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = Sqr(Sqr((z))) + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj08(XAXIS) {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = Sqr(Sqr(conj(z))) + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj09  {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = (conj(z))^p1 + Pixel ,
   |z| <= 4          ; 
  }

MandConj10  {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = z^p1 + Conj(Pixel) ,
   |z| <= 4          ; 
  }

MandConj11 {; Paul J. Horn 
; yet another variation on the theme 
  z = c = Pixel:  ; 
  z = (conj(z))^p1 + Conj(Pixel) ,
   |z| <= 4          ; 
  }

ConjMandelbrot(XAXIS) { ; Paul J. Horn
; This uses the last square function and should be the same as
; MandelConj, but with inside=bof60 and outside=summ and zooms
; it does not.
  z = Pixel, z = Sqr(conj(z)):
  z = z + Pixel
  z = Sqr(conj(z))
  LastSqr <= 4
  }

JuliaConj(Origin) {; Paul J. Horn - a conjugate Julia (I think)
  ; try real part of p1 = -1.1 and imag part of p1 = .09
  z = pixel:  ; 
   z = Sqr(conj(z)) + P1 ,
   |z| <= 4          ; 
  }

JuliConj01(Origin) {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = -.93, imag(p1) = .3, map = blues
  z = pixel:  ; 
   z = Sqr(z) + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj02(Origin) {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = .3, imag(p1) = .25, map = neon
  z = pixel:  ; 
   z = Sqr(Conj(z)) + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj03 {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = .40, imag(p1) = 0, map = glasses2
  z = pixel:  ; 
   z = Sqr(conj(z))*conj(z) + P1 ,
   |z| <= 4          ; 
  }

JuliConj04 {; Paul J. Horn - a conjugate Julia (I think)
  ;Try real(p1) = .53, imag(p1) = .63, map = volcano 
  z = pixel:  ; 
   z = Sqr(z)*z + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj05 {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = .6, imag(p1) = .4, map = chroma
  z = pixel:  ; 
   z = Sqr(conj(z))*conj(z) + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj06(Origin) {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = .99, imag(p1) = .72
  z = pixel:  ; 
   z = Sqr(Sqr((conj(z)))) + P1 ,
   |z| <= 4          ; 
  }

JuliConj07(Origin) {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = -.245, imag(p1) = .44, map = royal
  z = pixel:  ; 
   z = Sqr(Sqr(z)) + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj08(Origin) {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = -1, imag(p1) = .11, map = blues
  z = pixel:  ; 
   z = Sqr(Sqr((conj(z)))) + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj09 {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = -.677, imag(p1) = .333, real(p2) = 9, map = blues
  z = pixel:  ; 
   z = (conj(z))^P2 + P1 ,
   |z| <= 4          ; 
  }

JuliConj10 {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = .1005, imag(p1) = .68, real(p2) = 5, map = chroma
  z = pixel:  ; 
   z = (z)^P2 + Conj(P1) ,
   |z| <= 4          ; 
  }

JuliConj11 {; Paul J. Horn - a conjugate Julia (I think)
  ; Try real(p1) = -.37, imag(p1) = .6, real(p2) = 6, map = volcano
  z = pixel:  ; 
   z = (conj(z))^P2 + Conj(P1) ,
   |z| <= 4          ; 
  }


