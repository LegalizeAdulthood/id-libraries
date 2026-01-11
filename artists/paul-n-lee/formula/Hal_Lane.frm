Wallpaper          { ;
      ; use fp math, no periodicity, XY symmetry
      ; p1=location in M-set
      ; p2=magnitude
  z=c=p1+(1/p2)*(tan(cos(real(pixel)))\
  +flip(tan(cos(imag(pixel))))):
  z=z*z+c,
  |z| <= 64
}
MytestAGnew        { ; Jim Muth
  z=c=pixel,
  a=flip(real(p1)), b=flip(imag(p1)),
  d=real(p2), f=imag(p2):
  z=(d*(z^a))^(f*(-b))+c,
  |z| <= 100
}
