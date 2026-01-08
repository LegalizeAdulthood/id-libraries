Mosaic {;  p1=Mandelbrot set coordinates
z=c=p1+.05*(fn1(fn2(real(pixel)))+\
flip(fn3(fn4(imag(pixel))))):
z=sqr(z)+c,
|z| <= 100
}

MandelbrotMix4 {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2),
g=1/f, h=1/d, j=1/(f-b), z=(-a*b*g*h)^j,
k=real(p3)+1, l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| < l
}

MMix4-lake-0257 { ; 6000401 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,100)
p_p2 = (-2,0.01)
p_p3 = (35,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j ,
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0270 { ; 6000417 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.1)
p_p2 = (-1,-1.11)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j ,
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

ManLakefnfn  {  ; combines Mandel_lake  by Sylvie Gallet withMandel(fn||fn)
                            ; function=fn1/fn2
                            ; p1 = Julia seed
                            ; real(p2) = bailout value
                            ; imag part of p2: 0 = lake transform disabled
                            ;                  any value between 0 and 100: water level in % of
                            ;                  the screen height (0 = bottom, 100 = top)
                            ; real part of p3: amplitude of the wave (try 0.2)
                            ; imag part of p3: frequency (try 300)

bailout = real(p2),  shift = 0.5

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

:  ; (the all important colon - now iterate the following)

if (z*z <= shift)
  z = fn1(z) + c
else
  z = fn2(z) + c
endif
|z| <= bailout
}
inandout13 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), p2 = parameter (default 1,0)
  ;The next line sets k=1 if real(p2)==0, else k=p2
  k = (1 * (real(p2)==0) + p2 * (0 != p2))
  z = c = pixel, rt = real(p1), it = imag(p1), olddist = 100:
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c * (dist <= olddist)
    out = (z*k) * (olddist < dist)
    c = fn1(in + out)
    olddist = dist
    z = fn2(z*z) + c
      |z| <= 4
}
G-3-03-M  { ; Sylvie Gallet [101324,3444], 1996
            ; Modified Gallet-3-03 formula
  z = pixel :
   x = real(z) , y = imag(z)
   x1 = x - p1 * fn1(y*y + round(p2*fn2(y)))
   y1 = y - p1 * fn1(x*x + round(p2*fn2(x)))
   z = x1 + flip(y1)
    |z| <= 4
  }
inandout06 { ;Bradley Beacham  [74223,2745]
  ;p1 = Parameter (default 0), real(p2) = Bailout (default 4)
  ;The next line sets test=4 if real(p2)<=0, else test=real(p2)
  test = (4 * (real(p2)<=0) + real(p2) * (0<p2))
  z = pixel, c1 = fn2(pixel), c2 = fn3(pixel), olddist =100,
  tgt = fn1(pixel), rt=real(tgt), it=imag(tgt):
    x = real(z) - rt
    y = imag(z) - it
    dist = x*x + y*y
    in  = c1 * (dist <= olddist)
    out = c2 * (olddist < dist)
    olddist = dist
    z = z*z + in + out + p1
      |z| <= test
}
Ca10-08 {; V.1.1.1 - earlier versions may be discarded
         ; Copyright (c)1998,1999 Morgan L. Owens
         ; = ((a+9)xCa(9)-(a+4)Ca(8))/5
  a=p1
  b=a*(a*(a*(a*(a+10)+35)+50)+24)/382860
  c=15*(a+5)
  d=a+a+12
  k=a*(a+15)+56
  f=(a+a+18)/45
  g=14*(a+a+13)/5
  t=real(p2), bailout=4, z=pixel:
  x=real(z), y=imag(z)
  xx=x*x, yy=y*y
  Tx=sin(b*(c*xx*(d*xx*(81*xx*(k*xx*(f*xx-1)+g)-1418)+2127)-31903))
  Ty=sin(b*(c*yy*(d*yy*(81*yy*(k*yy*(f*yy-1)+g)-1418)+2127)-31903))
  x=x+t*Ty, y=y+t*Tx
  z=x+flip(y)
  |z|<=bailout
  ;SOURCE: chby8.frm
}
MMix4-lake-0061 { ; 6990609 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-150,1.5)
p_p2 = (1.5,150)
p_p3 = (-0.9949,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}
MMix4-lake-0139B { ; 6991107 - Formula by Sylvie Gallet & Jim Muth
;
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = -1e-97 + flip(100)
p_p2 = (-100,1)
p_p3 = (-0.9898,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}
MMix4-lake-0227 { ; 6000228 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-9999)
p_p2 = (1.3,2)
p_p3 = (-0.5,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}
MMix4-lake-0300 { ; 6ml30001 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.5,2)
p_p2 = (0.5,-33)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}
MMix4-lake-0303 { ; 6000524 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.3)
p_p2 = (1,-3)
p_p3 = (-0.5,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}
MMix4-lake-0304 { ; 6000525 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.5)
p_p2 = (1,-5)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}
MMix4-lake-0139 { ; 6991107 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = -10^(-97) + flip(100)
p_p2 = (-100,1)
p_p3 = (-0.9898,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}
MMix4-lake-0162 { ; 6991209 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (10,100)
p_p2 = (0.1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}
MMix4-lake-0177 { ; 6991231 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-11)
p_p2 = (-10,1)
p_p3 = (-0.88,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}
MMix4-lake-0197 { ; 6000122 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.6,0.6)
p_p2 = (-0.6,0.666)
p_p3 = (23.25,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}
MMix4-lake-0203 { ; 6000130 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,365)
p_p2 = (-1,363)
p_p3 = (971,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}
MMix4-lake-0238 { ; 6000311 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.5)
p_p2 = (-3,0.5)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}
MMix4-lake-0267 { ; 6000412 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (1,-1.1)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
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
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}
