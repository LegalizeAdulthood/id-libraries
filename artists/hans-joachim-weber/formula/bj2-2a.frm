BEJ-N229e {; Revised by G. Martin to eliminate assignment to "pixel"
  newpixel=flip(-abs(pixel*sqrt(pixel*1)))
  z=sqr(newpixel), c=cotan(newpixel^fn1(z)):
  z=fn3(z*z)+(acos(c+newpixel)/fn2(c))
  |z|<4
  ;SOURCE: bej0015.frm
}

BEJ-N229f {; Revised by G. Martin to eliminate assignment to "pixel"
  newpixel=flip(-abs(pixel*sqrt(pixel*1)))
  z=sqr(newpixel), c=cotan(newpixel^fn1(z)):
  z=fn3(sin(z*z))+(acos(c+newpixel)/fn2(c))
  |z|<4
  ;SOURCE: bej0015.frm
}

