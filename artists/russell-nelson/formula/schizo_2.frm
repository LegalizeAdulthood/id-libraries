;; All formulas by Vincent Damion Presogna
;; Sept., 1996
;; 76455.2222@compuserve.com

Frantic_2 {
z = c = pixel + p1:
r = z * (1/fn1(z)) + p2
z = fn2(r) * z + c
round(|Z|) <= 4
}

Psyche_2 {
z = c = pixel:
r = z * (1/fn1(z)) + p1
z = r * fn2(z) + c
floor(|Z|) <= 4
}


