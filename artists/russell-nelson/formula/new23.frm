Regula_falsi2{
     IF(|p1|==0)
    z=pixel
     ELSE
    z=p1
     ENDIF
 x0=(1,1), c=x1=pixel:
 fx0=x0*x0+pixel,
 fx1=x1*x1+pixel,
 z=z-p2*(x1-x0)*fx1/(fx1-fx0),
 x2=z, x0=x1, x1=x2
.0000001<|(x2)|
}

Mandel_lake {
; p1 = not used

; real part of p2: not used
; imag part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)

; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; New predefined variables
; center  = (x,   y)
; magxmag = (mag, xmagfactor)
; rotskew = (rot,  skew)

if (imag(p2) > 0 && imag(p2) <= 100)
  angle = real(rotskew * pi / 180)

  dxc = sin(angle) * (1-0.02*imag(p2)) / real(magxmag)
  dyc = cos(angle) * (1-0.02*imag(p2)) / real(magxmag)
  lake_center = center - dxc - flip(dyc)

  a = real(p3) , f = imag(p3)
  if (angle != 0)
    pixel = (pixel - lake_center) * e^flip(angle) + lake_center
  endif
  y = imag(pixel)
  if (y < imag(lake_center))
    dy = imag(lake_center) - y
    y = 2 * imag(lake_center) - y
    y = y + a * dy * sin (f * dy^0.2)
    pixel = real(pixel) + flip(y)
  endif
  if (angle != 0)
    pixel = (pixel - lake_center) * e^flip(-angle) + lake_center
  endif
endif

; Classic mandel formula
  z = c = pixel
:
  z = z*z + c
  |z| <= 4
}

Mandel_lake { ; Sylvie Gallet, Jan 16, 2000
;
; p1: Julia seed
; real part of p2: bailout value
; imag part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; This formula uses the new predefined variables:
; center  = (x  , y)
; magxmag = (mag, xmagfactor)
; rotskew = (rot, skew)

bailout = real(p2)

; Lake transformation
; -------------------

if (imag(p2) > 0 && imag(p2) <= 100)

  level = imag(p2) / 100         ; water level
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency

  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))

; The complex numbers u and v are defined as follow:
;   u = bottom_right_corner - bottom_left_corner
;   v = top_left_corner - bottom_left_corner

  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot

; Bottom_left_corner:
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot

  z = pixel - z3rd

; solves the equation z = a*u + b*v which is equivalent to the system:
;   re_z = a * re_u + b * re_v
;   im_z = a * im_u + b * im_v
; the solution (a,b) is:
;       | re_z   re_v |        | re_u   re_z |
;       | im_z   im_v |        | im_u   im_z |
;   a = ---------------    b = ---------------
;       | re_u   re_v |        | re_u   re_v |
;       | im_u   im_v |        | im_u   im_v |
;
; Only b is used and 0 <= b <= 1
;   b = 0  <==>  pixel at the bottom of the screen
;   b = 1  <==>  pixel at the top of the screen
;
; Since the formula parser uses complex numbers, I thought the
; easiest way to calculate b was:

  b = imag(conj(u)*z) / imag(conj(u)*v)

; the heart of the lake transform:
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
  endif

  z = z + z3rd

else
  z = pixel
endif

; Classic mandel/julia formula
if (ismand)
  c = z
else
  c = p1
endif
:
z = z*z + c
|z| <= bailout
}

JDG-7-01c {; Formula by Jim Deutch, Modified Sylvie Gallet frm
           ; image and 60 deg rotation w/ palette divided
  j = -0.5 + flip(0.5*sqrt(3)), j2 = conj(j)
  IF (whitesq)
    z = pixel
  ELSE
    z = -j2*pixel
  ENDIF
  :
  x = z*j , y = z*j2
  x1 = x - p1*fn1(y + fn2(p2*z))
  y1 = y - p1*fn1(z + fn2(p2*x))
  z1 = z - p1*fn1(x + fn2(p2*y))
  z = z1 + x1*j + y1*j2
  t1 = (|z| <= 32)
  t = t1 || (whitesq == (imag(z) >= 0))
  IF (t==0)
    z = conj(z)
  ENDIF
  t1
  ;SOURCE: sgjdg701.par
}

z3_newtbasin { ; Written by Sylvie Gallet for Kirsteen Duncan
               ; February 5, 2000
;
; Newtbasin for (z-p1) * (z-p2) * (z-p3)
; Use periodicity=0 and outside=real
;
  y = pixel , z = stop = 0
  iter = 0
  :
  num = (y-p1)*(y-p2)*(y-p3)
  den = 3*sqr(y) - 2*(p1+p2+p3)*y + (p1*p2 + p1*p3 + p2*p3)
  y = y - num / den
  if (cabs(y-p1) <= 0.001)
    z = 0 , stop = 1
  elseif (cabs(y-p2) <= 0.001)
    z = 1 , stop = 1
    elseif (cabs(y-p3) <= 0.001)
    z = 2 , stop = 1
  endif
  if (stop == 1)
    z = z - iter - 7
  endif
  iter = iter + 1
  stop == 0
}

z3_newtbasin { ; Written by Sylvie Gallet for Kirsteen Duncan
               ; February 5, 2000
;
; Newtbasin for (z-p1) * (z-p2) * (z-p3)
; Use periodicity=0 and outside=real
;
  y = pixel , z = stop = 0
  iter = 0
  :
  num = (y-p1)*(y-p2)*(y-p3)
  den = 3*sqr(y) - 2*(p1+p2+p3)*y + (p1*p2 + p1*p3 + p2*p3)
  y = y - num / den
  if (cabs(y-p1) <= 0.001)
    z = 0 , stop = 1
  elseif (cabs(y-p2) <= 0.001)
    z = 1 , stop = 1
    elseif (cabs(y-p3) <= 0.001)
    z = 2 , stop = 1
  endif
  if (stop == 1)
    z = z - iter - 7
  endif
  iter = iter + 1
  stop == 0
}
zmincoszb  {; David Walter
z =c= pixel:
z10=z*z+c
fz = z - cos(z10);
fdashz = 1 + sin(z);
z = z - fz/(fdashz + P1);
0.0001 <= |fz|
}
