cnigel (XAXIS) {
   ; Conjugates still show the chaotic banding it tends to
   ; produce in this fractal type.
  z = pixel, zp1=zp2=zp3=(0,0):
  temp = z
  z = z*z - zp3
  zp3 = zp2
  zp2 = zp1
  zp1 = conj(temp)
  |zp1| <= 4
  ;SOURCE: noel.frm
}

globe (XAXIS) {
   ; Will it work with just a square root?
  z = pixel, zp = (0,0):
  temp = z
  z = z^.5 - zp
  zp = temp
  |zp| <= 4
  ;SOURCE: noel.frm
}

htd {
   ; Try a second order inductive term.
  z = zp2 = pixel, zp1 = (0,0), huge=1.0e32:
  temp = z
  z = zp1*zp1 - zp2
  zp2 = zp1
  zp1 = p1/temp
  (|zp1| <= 64) && (|z| <= huge)
  ;SOURCE: noel.frm
}

htexp2 {
   ; An exponential function can produce fractals as well
  z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
  temp = z
  z = exp(z) - zp
  zp = p1/temp
  (|zp| <=bail && |z| <=huge)
  ;SOURCE: noel.frm
}

htexp3 {
   ; An exponential function can produce fractals as well
  z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
  temp = z
  z = exp(z) + zp
  zp = p1/temp
  (|zp| <=bail && |z| <=huge)
  ;SOURCE: noel.frm
}

htree (XAXIS) {
   ; Try a different order of the terms.
  z = zp2 = pixel,  zp1 = (0,0), huge = 1.0e32:
  temp = z
  z = zp1*zp1  - zp2
  zp2 = zp1
  zp1 = p1/temp
  (|zp1| <= 64) && (|z| <= huge)
  ;SOURCE: noel.frm
}

htz0 {; From Noel Giffin noel@triumf.ca
      ; some unusual julia intializations
  z = pixel^3:
  z = z*z + p1
  (|z| <= 4.)
  ;SOURCE: noel1.frm
}

htzi {; From Noel Giffin noel@triumf.ca
      ; some unusual julia intializations
  z =(1.0,1.0)/pixel^4:
  z = z^2 + p1
  |z| <=32767.0
  ;SOURCE: noel1.frm
}

htzsini {; From Noel Giffin noel@triumf.ca
         ; some unusual julia intializations
  z = 1/sin(pixel)^4:
  z = z*z + p1
  |z| <=4.0
  ;SOURCE: noel1.frm
}

pheonix (XAXIS) {
   ; Add conjugation and produce a great fractal even if it's spelt wrong.
  z = pixel, zp1 = zp2 = (0,0):
  temp = z
  z  = z*z - zp2
  zp2 = zp1
  zp1 = conj(temp)
  |zp1| <= 4
  ;SOURCE: noel.frm
}

pheot {
   ; The ht flavour of the pheonix fractal gives some nice escher like
   ; fractals
  z = pixel, zp1 = zp2 = (0,0), huge=1.0e32:
  temp = z
  z  = z*z - zp2
  zp2 = zp1
  zp1 = p1/conj(temp)
  (|zp1| <= 64) && (|z| <= huge)
  ;SOURCE: noel.frm
}

quart3 {; From Noel Giffin noel@triumf.ca
  z=pixel, zp1 = zp2 = (0,0), huge = 1.0e32:
  temp = z
  z = sin(z) - zp2
  zp2 = zp1
  zp1 = p1/temp
  (|zp2| <= huge && |z| <= huge)
  ;SOURCE: noel1.frm
}

quartest {
  z = zp1 = pixel, zp2 = (0,0), huge = 1.0e32:
  temp = z
  z = sin(zp1) - zp2
  zp2 = zp1
  zp1 = p1/temp, (|zp| <= huge && |z| <= huge)
  ;SOURCE: noel1.frm
}

quartest1 {; From Noel Giffin noel@triumf.ca
  z = zp1 = pixel, zp2 = (0,0), huge = 1.0e32:
  temp = z
  z = sin(zp2) - zp1
  zp2 = zp1
  zp1 = p1/temp
  (|zp| <= huge && |z| <= huge)
  ;SOURCE: noel1.frm
}

quartz {
  z=c=pixel, zp = (0,0), huge = 1.0e32:
  temp = z
  z = -sin(z) - zp
  zp = p1/temp
  (|zp| <= huge && |z| <= huge)
  ;SOURCE: noel.frm
}

quiltX (XAXIS) {; From Noel Giffin noel@triumf.ca
                ; The combination of a typing error and
                ; a bug in fractints parser
                ; makes weird quilt like patterns,
                ; I hope they don't fix it. I like it.
  z = zp = pixel, huge = 1.e32:
  temp = z
  z = z*z  - zp
  zp = p1/temp^.5
  |zp| <= 4
  ;SOURCE: noel1.frm
}

three (XAXIS) {
; A very different idea. Don't use the current value, just previous ones.
; You still have to save it of course.
  z = pixel,  zp1 = zp2 = (0,0):
  temp = z
  z = zp2*zp2  - zp1
  zp2 = zp1
  zp1 = temp
  |zp1| <= 4
  ;SOURCE: noel.frm
}

tpet1 {
  z = pixel, zp = (0,0), huge=1.0e32:
  temp = z
  z = cos(z) - zp
  zp = p1/temp
  (|zp| <= 64) && (|z| <= huge)
  ;SOURCE: noel.frm
}

quartet {; From Noel Giffin noel@triumf.ca
     ; The quatro-HT variation. Use real part of p1  0.0 < p1 < 1.0
     ; Adding the inversion causes what looks like an
     ; infinite extension along
     ; the real axis. Using the Imag component will
     ; add some nice asymmetry.
  z=pixel, zp = (0,0), huge = 1.0e30:
  temp = z
  z = sin(z) - zp
  zp = p1/temp
  (|zp| <= huge && |z| <= huge)
  ;SOURCE: noel1.frm
}

quartet1 {; From Noel Giffin noel@triumf.ca
   ; Use an input parameter (real part of p2) to control the bailout.
   ; increasing the bailout will reduce the disk size and a wider and
   ; more interesting range of workable P1 input parameters.
  z=pixel, zp = (0,0), bail=real(p2), huge = 1.0e32:
  temp = z
  z = sin(z) - zp
  zp = p1/temp
  (|zp| <= bail && |z| <= huge)
  ;SOURCE: noel1.frm
}

