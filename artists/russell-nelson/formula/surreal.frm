; // All Formulas by Vincent Damion Presogna
; // A.K.A. Sneaky-D; 76455.2222@Compuserve.com
; // 1996 copyright
; // Do what thou whilst for that is the whole of the law

Xerreal {
z = c = pixel:
z = (sqrt(-1) * z /c)^2 * c + p1
z = z * fn1(z) + pixel
|z| <= 4
}

Airreal (XYAXIS) {
z = c = pixel:
z = (1/z)^3/(1/c)^2 + p1
z = (fn1(c^2)/fn2(z^2))/c + pixel
|z| < 4
}

Surreal (XAXIS) {
z = c = pixel:
z = z * (fn1(c^2)/fn2(c^2))/c + (1/z)
|z| <= 4
}

Zurreal {
z = pixel:
z = fn1(z) + pixel
z = fn2(1/sqr(z))/z + p1
|z| <= 4
}

Cerreal (XAXIS) {
z = c = pixel:
z = z * (fn1(c^2)/sqrt(z^2))/c - z^2 + p1
|z| < 4
}
