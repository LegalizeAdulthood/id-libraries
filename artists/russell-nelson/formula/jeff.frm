Jeff1 { z = Pixel:  z = fn1(z+(srand^(22/7))) + pixel, |z| <= 4 }

Jeff2 { z = Pixel:  z = fn1((z+(22/7^(fn2(1/4)))) + fn3(22/7-1/3)) + pixel, |z| <= 4 }

; Revised for id-libraries by Legalize Adulthood; assume 2z-4z = -2z = -2*z
Jeff3z { z = Pixel:  z = fn1(-z + sqrt(-2*z)/z^2) + pixel, |z| <= 4 }

Jeff3 {; Revised for Fractint v20 by G. Martin
  z = Pixel:
  z = fn1(-z + sqrt(-2)/z^2) + pixel
  |z| <= 4
  ;SOURCE: jeff.frm
}

Jeff4 { z = Pixel:  z = fn1(z + p^e * (fn2(z^2-z^3))) + pixel, |z| <=6 }

Jeff5 {; Revised for Fractint v20 by G. Martin
  z = Pixel:
  z = ((-z + fn1(z^2 - 4)) / 2) + pixel
  |z| <=4
  ;SOURCE: jeff.frm
}

Jeff6 { z = Pixel:  z = fn1((z^2-z^3)*(p-e)) + pixel, |z| <=4 }

Jeff7 { z = Pixel:  z = fn1(z^2+z^3) * (fn2(z/z^4)/2) + z * fn3((z^-5/z)/2) + pixel, |z| <=4 }

Jeff8 { z = Pixel:  z = fn1(pi^2+z^3) * (fn2(e/z^4)/2) + z * fn3((e^-5/pi)/2) + pixel, |z| <=4 }
