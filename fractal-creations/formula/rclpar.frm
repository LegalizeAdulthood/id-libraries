RCL_11 {
        ; A variation on the formula used to generate
        ; Figure 9.18 (p. 134) from Pickover's book.
        ; P1 sets the initial value for z.
        ; Try p1=.75, or p1=2, or just experiment!
  z=real(p1):
  z=z*pixel-pixel/sqr(z)
  z=flip(z)
  abs(z) < 8
  ;SOURCE: rclpar.frm
}


RCL_12 (XAXIS) {
                ; Revised for Fractint v20 by G. Martin
  z=pixel:
  z=(z^2+3+pixel)/(z^2-3-pixel)
  |z| <= 10
  ;SOURCE: rclpar.frm
}


RCL_13 (XAXIS) {
                ; Revised for Fractint v20 by G. Martin
  z=pixel:
  z=(z^2+2+pixel)/(z^2-2+pixel)
  |z| <= 100
  ;SOURCE: rclpar.frm
}


RCL_14 (XAXIS) {
  z=pixel:
  z=z^pixel+pixel^z
  |z| <= 96
  ;SOURCE: rclpar.frm
}


RCL_15 (XAXIS) {
                ; Adapted from Pickover's Biomorph Zoo Collection in
                ; Figure 8.7 (p. 102).
  z=pixel:
  z=z^2.71828 + pixel
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rclpar.frm
}


RCL_16 (XAXIS) {
                ; Set fn1 to sqr to generate Figure 9.18 (p. 134)
                ; from Pickover's book.
                ; Set maxiter >= 1000 to see good detail in the spirals
                ; in the three large lakes.  Also set inside=0.
  z=0.5:
  z=z*pixel-pixel/fn1(z)
  abs(z) < 8
  ;SOURCE: rclpar.frm
}


RCL_4_J {
         ; A julia-style variation of the formula in Figure 8.9
         ; (p. 105) of Pickover's book.
  z=pixel:
  z=sin(z^2) + sin(z) + sin(p1)
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_4_M (XAXIS) {
                 ; A Mandelbrot-style variation on Pickover's book,
                 ; Figure 8.9 (p. 105).
                 ; Use floating point
  z=pixel:
  z=sin(z^2) + sin(z) + sin(pixel)
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_5_J (ORIGIN) {
                  ; A variation on the classical Julia set.
                  ; Use floating point
  z=pixel:
  z=sin(z^2+p1)
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_5_M (XAXIS) {
                 ; A variation on the classical Mandelbrot set
                 ; formula.
                 ; Use floating point
  z=pixel:
  z=sin(z^2+pixel)
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_6_J (ORIGIN) {
                  ; A variation on the classic Julia formula
                  ; use floating point
  z=pixel:
  z=sin(z)^2 + p1
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_6_M (XAXIS) {
                 ; A variation on the classic Mandelbrot formula
                 ; Use floating point
  z=pixel:
  z=sin(z)^2 + pixel
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_7 (XAXIS) {
               ; Inspired by the Spider
               ; fractal type included with Fractint
  z=c=pixel:
  z=z^2+pixel+c
  c=c^2+pixel+z
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_8_J (ORIGIN) {
  z=pixel:
  z=z^2+flip(p1)
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rclpar.frm
}


RCL_8_M {
         ; Another variation on the classic Mandelbrot
         ; set.
  z=pixel:
  z=z^2+flip(pixel)
  |real(z)| <= 100 || |imag(z)| <= 100
  ;SOURCE: rclpar.frm
}


RCL_9 (XAXIS) {
  z=pixel:
  z=(z^2+pixel)/(pixel^2+z)
  |z| <= 4
  ;SOURCE: rclpar.frm
}


RCL_Cosh_Flip (XAXIS) {
                       ; A FLIPed version of RCL_Cosh.
                       ; An interesting repeating pattern with lots
                       ; of detail.
                       ; Use floating point
  z=0:
  z=flip(cosh(z) + pixel)
  abs(z) < 40
  ;SOURCE: rclpar.frm
}


RCL_Cosh_J {
            ; A julia-style version of RCL_Cosh above.
            ; Lots of interesting detail to zoom in on.
            ; Use floating point
  z=pixel:
  z=cosh(z) + p1
  abs(z) < 40
  ;SOURCE: rclpar.frm
}
