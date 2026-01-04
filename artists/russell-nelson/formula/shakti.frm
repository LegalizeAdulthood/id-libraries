;; All formulas by Vincent Damion Presogna
;; 76455.2222@Compuserve.com
;; June 16, 1996
;; Some formulas may require periodicity=0 
;; depending on which user selectable function you use


Gita {
z = pixel + p1:
r = fn1(tan(1/z)) + pixel + 1
z = (z*r)/fn2(r)
|z| < 4
}

Sattva {
z = pixel + p1:
r = fn1(tan(1/z)) + pixel 
z = z * fn2(r)
|z| < 4
}

Veda {
z = pixel + p1:
r = tan(1/z) + pixel
z = fn1(z * r)
|z| < 4
}

Sutra {
z = pixel + p1:
r = tan((1/z) + 1)
z = fn1(z * r)/fn2(r) 
|z| < 4
}

Dharma {
z = pixel:
z = z + p1
r = tan(1/z) + pixel
z = fn1(r) * z 
|z| < 4
}

Brahmin {
z = pixel:
z = z + p1
r = tan(1/z)^fn1(e)
z = r * fn2(z) 
|z| <= 4
}

Devotion {
z = pixel:
z = z + p1
r = fn1(z) * z * z  
q = z^e 
z = (z - imag(1/r)/z - real(1/q))
|z| <= 4
}

Shakti {
z = pixel:
z = z + p1
r = z * z * z 
q = z^e 
z = z * (r/q)
|z| <= 4
}

Bhakti {
z = pixel:
z = z + p1
r = fn2(z) * z  
q = z^pi 
z = fn1(z) * (r/q)
|z| <= 4
}

