DaliJack3 {
  z = pixel:
  C1 = fn1(z) * fn2(z)
  C2 = fn3(z) * fn4(z)
  C3 = fn1(z) / fn3(z)
  z = C1 / C2 - C3
  |z| <= 4
  ;SOURCE: orman2.frm
}
 
dmj-Mand-Pnt-Ang-I { ; outside = decomp: angle of closest z[n] to point at p1
        ; outside = atan will give a slightly different coloring.
        ; This is the angle relative to p1.

        IF (imag(p2) == 0)              ; Invalid value for aspect ratio.
          p2 = (0,1) + real(p2)         ; Substitute a default value.
        ENDIF
        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + imag(p3)            ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        z2 = real(z2) + flip(imag(z2) * imag(p2)) ; Distort aspect.
        d = |z2|                        ; Compute distance to p1 (squared).
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3) || done >= maxit)   ; Point exceeds bailout / inside.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}
 
dmj-Mand-Hyp-Ang { ; outside = decomp: angle of closest z[n] to hyperbola at p1
        ; This is the angle relative to p1.

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,128) + real(p3)       ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.
        
        z = 0, c = pixel:               ; Mandelbrot initialization.
        z = sqr(z) + c                  ; Mandelbrot calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point - p1                ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF
        
        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}
 
