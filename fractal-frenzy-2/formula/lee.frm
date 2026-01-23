{ The following are from Lee Skinner, have been partially generalized. }

Fzppfnre  {; Lee Skinner
  z = pixel, f = 1./(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfnpo  {; Lee Skinner
  z = pixel, f = (pixel)^(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfnsr  {; Lee Skinner
  z = pixel, f = (pixel)^.5:
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfnta  {; Lee Skinner
  z = pixel, f = tan(pixel):
   z = fn1(z) + f,
    |z|<= 50
  }

Fzppfnct  {; Lee Skinner
  z = pixel, f = cos(pixel)/sin(pixel):
   z = fn1(z) + f,
    |z|<= 50
  }

Fzppfnse  {; Lee Skinner
  z = pixel, f = 1./sin(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfncs  {; Lee Skinner
  z = pixel, f = 1./cos(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzppfnth  {; Lee Skinner
  z = pixel, f = tanh(pixel):
   z = fn1(z)+f,
    |z|<= 50
  }

Fzppfnht  {; Lee Skinner
  z = pixel, f = cosh(pixel)/sinh(pixel):
   z = fn1(z)+f,
    |z|<= 50
  }

Fzpfnseh  {; Lee Skinner
  z = pixel, f = 1./sinh(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

Fzpfncoh  {; Lee Skinner
  z = pixel, f = 1./cosh(pixel):
   z = fn1(z) + f,
    |z| <= 50
  }

