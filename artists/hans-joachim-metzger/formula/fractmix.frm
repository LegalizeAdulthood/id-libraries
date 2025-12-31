NwtNwt {; p1=k*p2 k=1,2,3,...   fn1,fn2=recip,ident  rest 4u to test
        ; Note that floating-point is required to
        ; make this compute accurately
  f=fn1(pixel), z = fn2(pixel), Root = 1:
  f = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1))
  z = ((p2-1) * f^p2 + Root) / (p2 * f^(p2-1))
  .001 <= |f^p2 - Root|
  ;SOURCE: fractmix.frm
}

NwtNwtNwt {; p1=k*p2 k=1,2,3,...   fn1,fn2=recip,ident  rest 4u to test
           ; Note that floating-point is required to
           ; make this compute accurately
  f=fn1(pixel), z = fn2(pixel), g = fn3(pixel)
  u=real(p1), v=imag(p1), Root = 1:
  g = ((u-1) * z^u + Root) / (u * z^(u-1))
  f = ((v-1) * g^v + Root) / (v * g^(v-1))
  z = ((p2-1) * f^p2 + Root) / (p2 * f^(p2-1))
  .001 <= |f^p2 - Root|
  ;SOURCE: fractmix.frm
}

MandMnzpwr {; shit xept p1=2
   ; Note that floating-point is required to make this compute accurately
  f=pixel, z=pixel:
  f=z^p1+pixel
  z=f*f+pixel
  |f|<=4
  ;SOURCE: fractmix.frm
}

MandMnzpwr {; shit xept p1=2
   ; Note that floating-point is required to make this compute accurately
  f=pixel, z=pixel:
  f=z^p1+pixel
  z=f*f+pixel
  |f|<=4
  ;SOURCE: fractmix.frm
}

