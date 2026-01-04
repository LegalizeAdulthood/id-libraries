comment = { Try these functions for the formula listed.


Magnetik   =>  sin/exp/sqr/flip/conj/sqrt

Magnetik_2 =>  sin/sinh/sqr/tan/flip/conj

Magnetik_3 =>  sin/sqr/tanh/flip/conj/asinh/atan

Magnetik_4 =>  sin/cosxx/sqr/cos/flip/conj

Magnetik_5 =>  sorry no function


Vincent Presogna
CompuServe: 76455,2222
;; By Vincent Damion Presogna
;; 76455,2222@compuserve.com
;; Jan. 4th, 1996}

Magnetik { 
z = pixel + p1:
z = (z-1)*(z+0.5)*(z*z+1)
z = (z*0.3) - ((z)/fn1(z)) 
|z| < 4
}

Magnetik_2 {
z = pixel + p1:
z = (z-1)*((z*z) + z + 1.25)
z = (z*0.3) - ((z)/fn1(z)) 
|z| < 4
}

Magnetik_3 {
z = pixel + p1:
z = (z-1)*((z*z) + z + 0.05)
z = (z*0.3) - ((z)/fn1(z)) 
|z| < 4
}

Magnetik_4 {
z = pixel + p1:
z = (z*z*z) - 1
z = (z*0.3) - ((z)/fn1(z)) 
|z| < 4
}

Magnetik_5 {
z = pixel:
a = (z-1)*((z*z) + z + 1.25)
b = (z-1)*(z+0.5)*((z*z)+1)
z = z + ((a*z)/(a*z+(0.25*(-1))+(1-p1)*(b*z)/((b*z)-(0.5)*(-1))))
|z| < 4
}
