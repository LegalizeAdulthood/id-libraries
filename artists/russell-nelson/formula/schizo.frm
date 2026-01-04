;; All formulas by Vincent Damion Presogna
;; Sept., 1996
;; 76455.2222@compuserve.com

Schizo {
z = c = pixel:
r = z * (1/fn1(z)) + p1
z = fn2(r) * z + c 
round(z) <= 4
}

Frantic {
z = c = pixel + p1
bail = round(|z|):
r = z * (1/fn1(z)) + p2
z = fn2(r) * z + c 
bail <= 4
}

Psyche {
z = c = pixel
bail = floor(|z|):
r = z * (1/fn1(z)) + p1
z = r * fn2(z) + c
bail <= 4
}

