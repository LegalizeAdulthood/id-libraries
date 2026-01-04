// All formula's by Vincent Damion Presogna
// 76455.2222@CompuServe.com
// April 7th, 1996 (Easter Day)
// Peace Out!! Peace In!!


Pilsner {  
z = 0, c = pixel, ppix = pixel^-1 + p1:
z = (z*1/ppix) * fn1(ppix)
z = fn2(z) + c
|z| < 4
}

Absolem {
z = 0, c = pixel:
z = z + p1
z = (z * z) * (1/c) 
z = fn1(z) * fn2(1/z)
z = z + c 
|z| <= 4 
}

Absolem_2 {
z = 0, c = pixel:
z = z + p1
z = (z * z) * (1/c) 
z = fn1(z) * fn2(1/c)
z = z + c 
|z| <= 4 
}

Absolem_SRand  {
z = 0, c = pixel:
z = z + p1
z = (srand(z) * z) * (1/z) 
z = fn1(z) * fn2(1/c)
z = z + c  
|z| <= 4 
}

Korfu (YAXIS) {
z = c = pixel:
z = z + p1
c = c/fn1(z) 
z = z * fn2(c)
|z| < 4
}

Curfew {
z = 0, c = pixel:
z = z + c + p1
z = z * fn1((1/c)/(1/z)) 
|z| < 4
}
