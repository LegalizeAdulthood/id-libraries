gfpeul01 {; Eulers's equation e^(ipi)+1=0
  z=fn1(pixel):
  z=fn2(z^p1) + p2*fn3(exp(imag(z)*pi)+1)
  |z|<=p3
  ;SOURCE: gfpeuler.frm
}
 
gfpeul02 {; Eulers's equation e^(ipi)+1=0
  z=fn1(pixel):
  z=fn2(z^p1) + p2*fn3(exp(imag(z)*pi)-1)
  |z|<=p3
  ;SOURCE: gfpeuler.frm
}
 
gfpeul03 {; Eulers's equation e^(ipi)+1=0
  z=c=pixel:
  z=fn1(z^p1) + p2*fn2(exp(imag(c)*pi)+1)
  |z|<=p3
  ;SOURCE: gfpeuler.frm
}
 
