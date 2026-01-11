MandelbrotMix4a {; Jim Muth
; "a" suffix added by L.StClair 3/6/99
; to differentiate this version from the one previously posted
; no longer required for frac_ml collections (LStC 29/9/01)
; see MandelbrotMix4
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f,
h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1,
l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c,
|z| < l
}
