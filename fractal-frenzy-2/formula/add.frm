
comment {
This file includes the formulas required to support the file
RCLPAR.PAR.

In addition, I have included a number of additional formulas 
for your enjoyment <G>.

Ron Lewen
CIS: 76376,2567 

  }

RCL_Cosh (XAXIS) { ; Ron Lewen, 76376,2567
  ; Try corners=2.008874/-3.811126/-3.980167/3.779833/
  ; -3.811126/3.779833 to see Figure 9.7 (P. 123) in 
  ; Pickover's Computers, Pattern, Chaos and Beauty.
  ; Figures 9.9 - 9.13 can be found by zooming.
  ; Use floating point
  ;
  z=0:
    z=cosh(z) + pixel,
      abs(z) < 40
  }

Mothra (XAXIS) { ; Ron Lewen, 76376,2567
  ; Remember Mothra, the giant Japanese-eating moth?
  ; Well... here he (she?) is as a fractal!
  ;
  z=pixel:
    z2=z*z
    z3=z2*z
    z4=z3*z
    a=z4*z + z3 + z + pixel
    b=z4 + z2 + pixel
    z=b*b/a,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_11 { ; Ron Lewen, 76376,2567
  ; A variation on the formula used to generate
  ; Figure 9.18 (p. 134) from Pickover's book.
  ; P1 sets the initial value for z.
  ; Try p1=.75, or p1=2, or just experiment!
  ;
  z=real(p1):
    z=z*pixel-pixel/sqr(z)
    z=flip(z),
      abs(z) < 8
  }

RCL_10 { ; Ron Lewen, 76376,2567
  ;
  ;
  ;
  z=pixel:
    z=flip((z*z+pixel)/(pixel*pixel+z))
      |z| <= 4
  }

