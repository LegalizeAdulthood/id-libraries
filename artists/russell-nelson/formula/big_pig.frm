:: All Formulas by Vincent Damion Presogna 8^)>
;; July, 1996
;; 76455.2222@Compuserve.com
;; Enjoy & Peace be with you.

Pig_Tails {
z = c = pixel:
z = z + p1
q = fn2(z)^e 
r = fn1(z) * q
z = tan(r / q) * z + c 
|z| < 4
}

Porker {
z = c = pixel:
L = (1/tan(z)) + c
r = fn1(1/z) + p1
z = (r/L)
|z| < 4 + p2
}

Oink {
z = c = pixel + p1:
r = fn1(1/z) * imag(z)
q = fn2(1/z) * real(z)
z = sin(q) * cos(r) + c
|z| < 4 + p2
}

Pigalleto {
z = c = pixel:
r = fn1((1/z) / z) + p1 
z = fn2(z / r)
z = z + c
|z| < 4 + p2
}

Piglet {
z = c = pixel, p = pixel + p1:
z = z * z * p
r = tan((1/z) / c)  
z = fn2(z) + fn1(r)
|z| < 4 + p2
}

Swine {
z = c = pixel:
z = tan(1/z) 
r = z * (e/z) + p1
z = fn1(z) * fn2(r)
|z| < 4
}

Pigs {
z = pixel:
r = z * fn1(z)^e   
z = (fn2(z) / r) + p1
|z| < 4
}

Sow {
z = c = pixel, p = sqr(pixel) + p1:
z = z * z * p
r = tan((1/z) / c)  
z = z * z + fn1(r)
|z| <= 4 + p2
}
