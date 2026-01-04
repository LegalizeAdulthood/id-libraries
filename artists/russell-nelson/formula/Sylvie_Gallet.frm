tmanlake   { ; lake-transform
             ; Sylvie Gallet <sylviegallet@compuserve.com>
             ; Jan 16, 2000
; requires: float=on, periodicity=0
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: amplitude of the wave (try 0.2)
; real part of p3: frequency (try 300)
; imag part of p3: phase 

; Lake transformation
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  ampl = imag(p2)                ; amplitude of the wave
  freq = real(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2+imag(p3))) * v 
  endif

 pixel = z + z3rd

endif

; import of formula: TMan1.frm

c1=flip(real(pixel)),c2=imag(pixel),c3=p1
z1=z2=z3=0:
t1=z1*z1+2*z2*z3
t2=z3*z3+2*z1*z2
t3=z2*z2+2*z3*z1
z1=t1+c1,z2=t2-c2*c2,z3=t3+c3
z=z1+z2+z3
|z| < 8 
}

