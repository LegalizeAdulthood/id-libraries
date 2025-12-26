Kreagor {
  z = c = pixel:
  z = fn1(z) + c + p1
  x = real(z), y = imag(z)
  z = ((1/z) * (fn2(x)/fn1(y)))/ z + c
  |z| <= 4 + p2
  ;SOURCE: d-rock.frm
}
 
Zurreal { 
  z = pixel:
  z = fn1(z) + pixel
  z = fn2(1/sqr(z))/z + p1 
  |z| <= 4
  ;SOURCE: surreal.frm
}
 
