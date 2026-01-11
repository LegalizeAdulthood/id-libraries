AbsLambdaJ3 (xaxis) {; Peter Anders (anders@physik.hu-berlin.de)
  cx=real(p1), cy=imag(p1), xo=real(pixel), yo=imag(pixel):
  x=cx*abs(xo-xo*xo+yo*yo)-cy*abs(yo-2*xo*yo)
  y=cy*abs(xo-xo*xo+yo*yo)+cx*abs(yo-2*xo*yo)
  xo=x
  yo=y
  abs(fn1(x*x+y*y))<real(p2)
  ;SOURCE: lambda.frm
}

AbsLambdaM1 (ORIGIN) {; Peter Anders (anders@physik.hu-berlin.de)
  xo=0.5, yo=0, cx=real(pixel), cy=imag(pixel):
  x=cx*(xo-xo*xo+yo*yo)-cy*(yo-2*xo*yo)
  y=cy*(xo-xo*xo+yo*yo)+cx*(yo-2*xo*yo)
  xo=abs(x)
  yo=abs(y)
  abs(fn1(x*x+y*y))<real(p2)
  ;SOURCE: lambda.frm
}

AbsLambdaM4 {; Peter Anders (anders@physik.hu-berlin.de)
  xo=0.5, yo=0, cx=real(pixel), cy=imag(pixel):
  x=cx*|xo-xo*xo+yo*yo|-cy*|yo-2*xo*yo|
  y=cx*|yo-2*xo*yo|+cy*|xo-xo*xo+yo*yo|
  xo=x
  yo=y
  abs(fn1(x*x+y*y))<real(p2)
  ;SOURCE: lambda.frm
}

Bifmay {; Peter Anders (anders@physik.hu-berlin.de)
  z=p1, c=pixel, b=imag(p2):
  z=c*z/((1+z)^b)
  |fn1(z)|<real(p2)
  ;SOURCE: lambda.frm
}

Lambda06 (XAXIS) {; Peter Anders (anders@physik.hu-berlin.de)
  z=p1, c=pixel:
  z=c*z*(1-z)*(-1-z)
  |fn1(z)|<real(p2)
  ;SOURCE: lambda.frm
}

