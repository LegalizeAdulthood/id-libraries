Jeff1 {; Revised for Fractint v20 by G. Martin 
  z = Pixel:  
  z = fn1(z) + pixel 
  |z| <= 4 
  ;SOURCE: jeff.frm
}
 
Jeff1 {; Revised for Fractint v20 by G. Martin 
  z = Pixel:  
  z = fn1(z) + pixel 
  |z| <= 4 
  ;SOURCE: jeff.frm
}
 
Jeff2 { 
  z = Pixel:  
  z = fn1((z+(22/7^(fn2(1/4)))) + fn3(22/7-1/3)) + pixel
  |z| <= 4 
  ;SOURCE: jeff.frm
}
 
Jeff3 {; Revised for Fractint v20 by G. Martin 
  z = Pixel:  
  z = fn1(-z + sqrt(-2)/z^2) + pixel 
  |z| <= 4 
  ;SOURCE: jeff.frm
}
 
Jeff4 { 
  z = Pixel:  
  z = fn1(z + p^e * (fn2(z^2-z^3))) + pixel
  |z| <=6 
  ;SOURCE: jeff.frm
}
 
Jeff4 { 
  z = Pixel:  
  z = fn1(z + p^e * (fn2(z^2-z^3))) + pixel
  |z| <=6 
  ;SOURCE: jeff.frm
}
 
Jeff5 {; Revised for Fractint v20 by G. Martin 
  z = Pixel:  
  z = ((-z + fn1(z^2 - 4)) / 2) + pixel 
  |z| <=4 
  ;SOURCE: jeff.frm
}
 
Jeff6 { 
  z = Pixel:  
  z = fn1((z^2-z^3)*(p-e)) + pixel 
  |z| <=4 
  ;SOURCE: jeff.frm
}
 
Wineglass (XAXIS) {; Pieter Branderhorst
  c = z = pixel:
  z = z * z + c
  c = (1+flip(imag(c))) * real(c) / 2 + z
  |z| <= 4
  ;SOURCE: fractint.frm
}
 
