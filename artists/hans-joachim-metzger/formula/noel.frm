crown (XAXIS) {
   ; some interesting combinations make some wierd formations.
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z = z*zp2 - zp1
  zp2 = zp1^.5
  zp1 = temp
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
 
goat (XAXIS) {
   ; What about a root of the negative sum?
  z = pixel, zp = (0,0):
  temp = z
  z = z*z + zp
  zp = (-temp)^.5
  |zp| <= 4 
  ;SOURCE: noel.frm
}
 
hflip {
   ; A little non-standard math-function 
   ; produces chaotic bands like the
   ; conjugate function but the symmetry is now skew.
  z = pixel, zp=(0,0):
  temp = z
  z = z*z +  zp
  zp = flip(temp) 
  |zp| <= 4 
  ;SOURCE: noel.frm
}
 
ht1 {
   ; Ah! You can use a variable in the 
   ; inversion but now check for overflow.
   ; Good results are found when the real part 
   ; of p1 is in the range 0.1->1.0
   ; With some sort of special value aprox. 0.148148...
   ; Setting the imaginary part as well causes very strange fractals
  z = pixel, zp=temp=(0,0), huge=1.0e32:
  temp = z
  z = z*z + zp
  zp = p1/temp 
  (|zp| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}
 
htc {
   ; You can do it with a constant too.
  z = c = pixel, zp=(0,0), huge=1.0e32:
  temp = z
  z = z*z + zp
  zp = c*p1/temp 
  (|zp| <= 64) && (|z| <= huge) 
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
 
hydra (XAXIS) {
   ; The first inductive formula I came up with.
  z = pixel, zp = (0,0):
  temp = z
  z = z*z + zp
  zp = temp 
  |zp| <= 4 
  ;SOURCE: noel.frm
}
 
logf {
   ; I never did work with logs that much but this one was interesting.
  z=pixel, zp = (0,0):
  temp = z
  z = z*z + zp
  zp = log(1-temp)
  |zp| <= 4 
  ;SOURCE: noel.frm
}
 
peacock (XAXIS) {
   ; The next obvious function to try
  z = pixel, zp = (0,0):
  temp = z
  z = -cos(z) - zp
  zp = temp 
  |zp| <= 4 
  ;SOURCE: noel.frm
}
 
penta (XAXIS) {
   ; introducing a second function can add lots of variety.
  z = pixel, zp = (0,0):
  temp = z
  z = z*z - zp
  zp = conj(temp)
  |zp| <= 4 
  ;SOURCE: noel.frm
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
 
psycho (XAXIS) {
   ;  Another nice two function variation
  z = pixel, zp = (0,0):
  temp = z
  z = z*z - zp
  zp = sin(-temp)
  |zp| <= 4 
  ;SOURCE: noel.frm
}
 
quartc {
   ; This makes for an unusual combination of fractal characteristics
   ; Recognizable sin fractal filled with chaotic banding.
   ; Real part of P1 should be about 0.1 and Imag portion can be 0.0
   ; Oh yes! You will have to zoom out to +/- 2pi on the x axis 
   ; for full view.
  z=pixel, zp = (0,0), huge = 1.0e32:
  temp = z
  z = sin(z) - zp
  zp = p1/conj(temp)
  (|zp| <= 4 && |z| <= huge) 
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
 
quartz {
  z=c=pixel, zp = (0,0), huge = 1.0e32:
  temp = z
  z = -sin(z) - zp
  zp = p1/temp 
  (|zp| <= huge && |z| <= huge) 
  ;SOURCE: noel.frm
}
 
rat {
   ; Still more attempts at ht variants
  z = zp1 = pixel, zp2 = (0,0),huge=1.0e32:
  temp = z
  z = z*z - zp2
  zp2 = zp1
  zp1 = (temp/zp1)*p1
  (|zp1| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}
 
tsept {; Why not try this change on all the good formula so far?
  z = pixel, zp1 = zp2 = (0,0), huge = 1.0e32:
  temp = z
  z = z*z - zp2
  zp2 = zp1
  zp1 = p1/temp
  (|zp1| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}
 
yyy (XAXIS) {
 ; Try Zprev to the power Zed (the reverse of the ZZZ function
 ; This formula doesn't seem to work the same in fractint vers > 17.2
 ; I haven't figured out why yet but what should be inside, isn't anymore.
 ; It doesn't change the structure, just the colouring.
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z = zp1^z - zp2
  zp2 = zp1
  zp1 = 1/temp
  |zp1| <= 4
  ;SOURCE: noel.frm
}
 
zz2 (XAXIS) {
   ; Try the inversion again
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z = z^zp2 - zp1
  zp2 = zp1
  zp1 = 1/temp
  |zp1| <= 4
  ;SOURCE: noel.frm
}
 
zzz (XAXIS) {
   ; Same as XXX but introduce a new dynamic by inverting a previous term
   ; A small but curious active region. Try 256 colour decomp.
  z = zp1 = pixel, zp2 = (0,0):
  temp = z
  z = z^zp1 - zp2
  zp2 = zp1
  zp1 = 1/temp 
  |zp1| <= 4
  ;SOURCE: noel.frm
}
 
ht {
   ; Ah! You can use a variable in the 
   ; inversion but now check for overflow.
   ; Good results are found when the real part 
   ; of p1 is in the range 0.1->1.0
   ; With some sort of special value aprox. 0.148148...
   ; Setting the imaginary part as well causes very strange fractals
  z = pixel, zp=temp=(0,0), huge=1.0e32:
  temp = z
  z = z*z + zp
  zp = p1/temp 
  (|zp| <= 64) && (|z| <= huge) 
  ;SOURCE: noel.frm
}
 
