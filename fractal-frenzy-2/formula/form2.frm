F'Liar2 {
         ; x(n+1) = 1 - abs(y(n)-x(n! )
         ; y(n+1) = 1 - abs((1-x(n+1) )-y(n) )
  z = fn1(pixel):
  x = 1 - abs(imag(z)-real(z))
  z = flip(1 - abs(1-real(x)-imag(z) ) ) + real(x)
  |z| <= p1
  ;SOURCE: form2.frm
}


timserrda3 {
            ; same as built-in "tim's_error" type
   ; p1 = initial perturbation of z, real(p2) = bailout (default 4)
  t = (4 * (real(p2)<=0) + real(p2) * (0<p2) )
  z = pixel + p1, c = z ^ z ^ z:
  z = fn1(z)
   ; must be careful to leave imag part of z unchanged     13 Jan 1993
  z = real(z) * real(c) - imag(z) * imag(c) + flip(imag(z))
  z = real(z) + flip(real(z) * imag(c) - imag(z) * real(c) ) + pixel
  |z| <= t
  ;SOURCE: form2.frm
}
