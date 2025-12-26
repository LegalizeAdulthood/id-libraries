RCL_Cosh (XAXIS) {; Ron Lewen, 76376,2567
                  ; Try corners=2.008874/-3.811126/-3.980167/3.779833/
                  ; -3.811126/3.779833 to see Figure 9.7 (P. 123) in 
                  ; Pickover's Computers, Pattern, Chaos and Beauty.
                  ; Figures 9.9 - 9.13 can be found by zooming.
                  ; Use floating point
  z=0:
  z=cosh(z) + pixel
  abs(z) < 40
  ;SOURCE: fractint.frm
}
 
RCL_16 (XAXIS) {; Ron Lewen, 76376,2567
                ; Set fn1 to sqr to generate Figure 9.18 (p. 134)
                ; from Pickover's book.
                ; Set maxiter >= 1000 to see good detail in the spirals
                ; in the three large lakes.  Also set inside=0.
  z=0.5:
  z=z*pixel-pixel/fn1(z)
  abs(z) < 8
  ;SOURCE: rclpar.frm
}
 
