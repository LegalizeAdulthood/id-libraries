Sierpinsky {; Use p1=2 for the triangle,
            ; and p1=(1.3,.5) for a strange thing
  z=pixel, j=(0,-1), k=(-1, 0):
  x=real(z)
  y=imag(z)
  y1=(y>.5)
  x1=(x>.5)
  a=y1*j
  b=x1*(y1==0)*k
  p=a+b
  z=p1*z+p
  |z|<=100
  ;SOURCE: esc-ifs.frm
}
Spidercplx {; by Jon Horner - 100112,1700 - FRAC'Cetera
            ; Complex-form of SPIDER
            ; float=yes, p1=initial perturbation of z
  z = pixel + p1, c = pixel :
  z = z * z + c
  c = c * p2 + z
  |z| <= 64
  ;SOURCE: spidcplx.frm
}
