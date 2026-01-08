;; All formulas by Vincent Damion Presogna
;; 76455.2222@Compuserve.com
;; 5-20-96

Listerial { ;; Might need periodicity=0
z = pixel, tp = tan(1/pixel):
z = fn1(z) + p1
r = tp/(imag(z)/real(z))
z = tan(1/z)/sqrt(r)
|z| < 4
}

Lister_M { ;; Might need periodicity=0
z = c = pixel:
r = tan(e/z)/c
z = r * fn1(z) - p1
|z| < 4
}

Lister {   ;; Might need periodicity=0
z = pixel + p1:
r = tan(1/z)/e + pixel
z = fn1(z)/r
|z| < 4
}

Lister_2 { ;; Might need periodicity=0
z = c = pixel + p1:
r = tan(e/z)/pi
z = fn1(z)/fn2(c/r)
|z| < 4
}

Lister_3 { ;; Might need periodicity=0
z = pixel + p1:
r = tan(1/z)/e
z = fn1(1/z)*r/e
|z| < 4
}

Moo { ;;SOURCE: Mad_Cow.frm / use periodicity=0
z = pixel:
z = z + p1
r = tan(1/z) + pixel
z = fn1(z)/sqrt(r)^e
|z| < 4
}

