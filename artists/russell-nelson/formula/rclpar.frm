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
    a=z^5 + z^3 + z + pixel
    b=z^4 + z^2 + pixel
    z=b^2/a,
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

RCL_4_M (XAXIS) { ; Ron Lewen, 76376,2567
  ; A Mandelbrot-style variation on Pickover's book,
  ; Figure 8.9 (p. 105).
  ;
  ; Use floating point
  ;
  z=pixel:
    z=sin(z^2) + sin(z) + sin(pixel),
      |z| <= 4
  }
 
RCL_4_J { ; Ron Lewen, 76376,2567
  ;  A julia-style variation of the formula in Figure 8.9
  ;  (p. 105) of Pickover's book.
  ;
  z=pixel:
    z=sin(z^2) + sin(z) + sin(p1),
      |z| <= 4
  }

RCL_5_M (XAXIS) { Ron Lewen, 76376,2567
  ;
  ;  A variation on the classical Mandelbrot set
  ;  formula.
  ;
  ;  Use floating point
  ;
  z=pixel:
    z=sin(z^2+pixel),
      |z| <= 4
  }
    
RCL_5_J (ORIGIN) { Ron Lewen, 76376,2567
  ;
  ;  A variation on the classical Julia set.
  ;
  ;  Use floating point
  ;
  z=pixel:
    z=sin(z^2+p1),
      |z| <= 4
  }


RCL_6_M (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  ;  A variation on the classic Mandelbrot formula
  ;
  ;  Use floating point
  ;
  z=pixel:
    z=sin(z)^2 + pixel,
      |z| <= 4
  }

RCL_6_J (ORIGIN) { ; Ron Lewen, 76376,2567
  ;
  ;  A variation on the classic Julia formula
  ;
  ;  use floating point
  ;
  z=pixel:
    z=sin(z)^2 + p1,
      |z| <= 4
  }

RCL_7 (XAXIS) { ; Ron Lewen, 76376,2567
  ; Inspired by the Spider
  ; fractal type included with Fractint
  ;
  z=c=pixel:
    z=z^2+pixel+c
    c=c^2+pixel+z
      |z| <= 4
  }

RCL_8_M { ; Ron Lewen, 76376,2567
  ;
  ;  Another variation on the classic Mandelbrot
  ;  set.
  ;
  z=pixel:
    z=z^2+flip(pixel)
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_8_J (ORIGIN) { ; Ron Lewen, 76376,2567
  ;
  ;
  ;
  z=pixel:
    z=z^2+flip(p1)
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_9 (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  ;
  ;
  z=pixel:
    z=(z^2+pixel)/(pixel^2+z)
      |z| <= 4
  }

RCL_10 { ; Ron Lewen, 76376,2567
  ;
  ;
  ;
  z=pixel:
    z=flip((z^2+pixel)/(pixel^2+z))
      |z| <= 4
  }

RCL_Cosh_Flip (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  ; A FLIPed version of RCL_Cosh.
  ; An interesting repeating pattern with lots
  ; of detail.
  ;
  ; Use floating point
  ;
  z=0:
    z=flip(cosh(z) + pixel),
      abs(z) < 40
  }

RCL_Cosh_J { ; Ron Lewen, 76376,2567
  ;
  ; A julia-style version of RCL_Cosh above.
  ; Lots of interesting detail to zoom in on.
  ;
  ; Use floating point
  ;
  z=pixel:
    z=cosh(z) + p1,
      abs(z) < 40
  }

RCL_12 (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  z=pixel:
    z=(z^2+3z+pixel)/(z^2-3z-pixel)
      |z| <= 10
  }

RCL_13 (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  z=pixel:
    z=(z^2+2z+pixel)/(z^2-2z+pixel)
      |z| <= 100
  }

RCL_14 (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  z=pixel:
    z=z^pixel+pixel^z
      |z| <= 96
  }

RCL_15 (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  ; Adapted from Pickover's Biomorph Zoo Collection in
  ; Figure 8.7 (p. 102).
  ;
  z=pixel:
    z=z^2.71828 + pixel,
      |real(z)| <= 100 || |imag(z)| <= 100
  }

RCL_16 (XAXIS) { ; Ron Lewen, 76376,2567
  ;
  ; Set fn1 to sqr to generate Figure 9.18 (p. 134)
  ; from Pickover's book.
  ; Set maxiter >= 1000 to see good detail in the spirals
  ; in the three large lakes.  Also set inside=0.
  ;
  z=0.5:
    z=z*pixel-pixel/fn1(z),
      abs(z) < 8
  }
