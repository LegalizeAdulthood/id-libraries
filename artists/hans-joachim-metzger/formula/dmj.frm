Color11 {; (See formula "dmj-Mand-Cr2-Dec" for an update of this formula)
         ; New coloring technique #11 (ring trap)
         ; outside = decomp: angle at closest approach to ring at p1
         ; p2r: unused
         ; p2i: ring diameter
         ; p3: bailout
   z = 0, c = pixel, closest = 100000, point = 0, done = 2
   range=imag(p2)*imag(p2):
   z = fn1(z) + c
   done = done + 1
   q = abs(|z-p1| - range)
   IF (q < closest)
     point = z
     closest = q
   ENDIF
   IF (|z| > p3)
     z = point
     done = -1
   ENDIF
   done >= 0
  ;SOURCE: 97msg.frm
}

dmj-Mand-Pnt-Dec { ; outside = decomp: angle of closest z[n] to point at p1
        ; outside = atan will give a slightly different coloring.
        ; This is the angle relative to the origin.

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
        IF (|z| > imag(p3))             ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF

        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}

dmj-Nova-Hyp-Dec { ; outside = decomp: angle of closest z[n] to hyperbola at p1
        ; This is the angle relative to the origin.

        IF (real(p3) == 0)              ; Invalid value for color scale.
          p3 = 75 + flip(imag(p3))      ; Substitute a default value.
        ENDIF
        IF (imag(p3) == 0)              ; Invalid value for bailout.
          p3 = (0,0.0000001) + real(p3) ; Substitute a default value.
        ENDIF
        closest = 1e+38                 ; Closest approach so far.
        point = 0                       ; Point of that closest approach.
        done = 2                        ; Iteration counter.
        r = (0,1) ^ (real(p2)/90)       ; Compute rotation vector.

        z = 1, c = pixel:               ; NovaM initialization.
        zsquared = sqr(z)
        zcubed = zsquared * z
        zold = z
        z = z-(zcubed-1)/(3*zsquared)+c ; NovaM calculation.

        done = done + 1                 ; Done one more iteration.
        z2 = (z-p1) * r                 ; Offset to p1 and rotate.
        d = abs(imag(z2) * real(z2))    ; Compute hyperbolic distance.
        IF (d < closest)                ; Closer than previous value.
          point = z                     ; Save that point.
          closest = d                   ; Save the closest approach.
        ENDIF
        IF (|zold-z| < imag(p3))        ; Point exceeds bailout.
          z = point                     ; Return closest point.
          done = -1                     ; Set flag to force an exit.
        ENDIF

        done >= 0                       ; Continue if the flag is clear.
  ;SOURCE: dmj-pub.frm
}

