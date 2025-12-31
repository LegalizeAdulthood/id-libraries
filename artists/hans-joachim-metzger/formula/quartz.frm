QuartzJ {; Julia sets of Quartz formula
         ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
         ; Freely distributable but may not be sold.
         ; Julia sets set by two parameters; two four-D
         ; Mandelbrot sets sliced various ways.
  z=pixel:
  a=z*z
  b=z*a
  c=z*b
  z=p2*(3*c-4*b-6*a+12*z)+p1
  |z|<=127
  ;SOURCE: quartz.frm
}

QuartzJ {; Julia sets of Quartz formula
         ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
         ; Freely distributable but may not be sold.
         ; Julia sets set by two parameters; two four-D
         ; Mandelbrot sets sliced various ways.
  z=pixel:
  a=z*z
  b=z*a
  c=z*b
  z=p2*(3*c-4*b-6*a+12*z)+p1
  |z|<=127
  ;SOURCE: quartz.frm
}

QuartzJ {; Julia sets of Quartz formula
         ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
         ; Freely distributable but may not be sold.
         ; Julia sets set by two parameters; two four-D
         ; Mandelbrot sets sliced various ways.
  z=pixel:
  a=z*z
  b=z*a
  c=z*b
  z=p2*(3*c-4*b-6*a+12*z)+p1
  |z|<=127
  ;SOURCE: quartz.frm
}

QuartzM1B {; Mandelbrot set 1 sliced vertically
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.}
  z=-1:
  a=z*z
  b=z*a
  c=z*b
  z=p1*(3*c-4*b-6*a+12*z)+pixel
  |z|<=127
  ;SOURCE: quartz.frm
}

QuartzM1C {; Mandelbrot set 1 sliced diagonally
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.
  z=-1:
  a=z*z
  b=z*a
  c=z*b
  z=(pixel+p1)*(3*c-4*b-6*a+12*z)+(pixel-p1)
  |z|<=127
  ;SOURCE: quartz.frm
}

QuartzM1C {; Mandelbrot set 1 sliced diagonally
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.
  z=-1:
  a=z*z
  b=z*a
  c=z*b
  z=(pixel+p1)*(3*c-4*b-6*a+12*z)+(pixel-p1)
  |z|<=127
  ;SOURCE: quartz.frm
}

QuartzM2A {; Mandelbrot set 2 (critical point -1) sliced horizontally
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.}
  z=1:
  a=z*z
  b=z*a
  c=z*b
  z=pixel*(3*c-4*b-6*a+12*z)+p1
  |z|<=127
  ;SOURCE: quartz.frm
}

QuartzM2A {; Mandelbrot set 2 (critical point -1) sliced horizontally
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.}
  z=1:
  a=z*z
  b=z*a
  c=z*b
  z=pixel*(3*c-4*b-6*a+12*z)+p1
  |z|<=127
  ;SOURCE: quartz.frm
}

QuartzM2B {; Mandelbrot set 2 sliced vertically
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.
  z=1:
  a=z*z
  b=z*a
  c=z*b
  z=p1*(3*c-4*b-6*a+12*z)+pixel
  |z|<=127
  ;SOURCE: quartz.frm
}

QuartzM2D {; Mandelbrot set 2 sliced at an arbitrary real angle set by p2
           ; (0-1, not 0-2pi)
           ; The Quartz Fractal Formula, discovered by Paul Derbyshire.
           ; Freely distributable but may not be sold.
           ; Julia sets set by two parameters; two four-D
           ; Mandelbrot sets sliced various ways.
  w=2*3.141592654*p2
  m=cos(w)
  n=sin(w)
  z=1:
  a=z*z
  b=z*a
  c=z*b
  z=(pixel*m+p1*n)*(3*c-4*b-6*a+12*z)+(pixel*n-p1*m)
  |z|<=127
  ;SOURCE: quartz.frm
}

