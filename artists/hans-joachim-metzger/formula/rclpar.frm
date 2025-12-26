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
 
