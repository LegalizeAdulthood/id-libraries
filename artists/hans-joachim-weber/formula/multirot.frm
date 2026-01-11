multi20031 {; formula   draws many rotations
   ; when fn1-2=i,f, then p1 0,0=M, 0,90=O, 90,0=E, 90,90=J
   ; when fn1-2=f,i, then p1 0,0=M, 0,90=R, 90,0=P, 90,90=J
  a=((real(p1))+(.000000000000000000001))*.01745329251994
  b=((imag(p1))+(.000000000000000000001))*.01745329251994
  z=sin(b)*fn1(real(pixel))+sin(a)*fn2(imag(pixel))+p2
  c=cos(b)*real(pixel)+cos(a)*flip(imag(pixel))+p3:
  z=z^2.003+c
  |z| <= 36
  ;SOURCE: 98msg.frm
}

