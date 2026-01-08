Modified_a { ; Gallet-3-11 Sylvie Gallet [101324,3444], 1996 
z=fn1(pixel^p1/p2+p2*pixel/fn2(p1^pixel)),p=p2/p1:
z = z*p
(z+p) <= p1
}


Tim's_Newton{; Modified Newt_ellipt_oops by Tim Wegner
             ; Use floating point. 
z = pixel, z2 = z*z, z3 = z*z2:
   num = (z3 + fn1(p1)*z2 + 1)^.5      
   denom = (1.5*z2 + p1*z)/num    
   z = z - (num/denom)            
   z2 = z*z+c
   z3 = z*z2
    fn2(p2) <= |z3 + p1*z2 + 1| 
}


Tim's_Newton_a{;
z = pixel, z2 = z*z, z3 = z*z2:
   num = (z3 + p1*z2 + 1)^.5      
   denom = (1.5*z2 + p1*z)/num    
   z = z - (num/denom)            
   z2 = z*z+c
   z3 = z*z2
   p2 <= |z3 + p1*z2 + 1| 
}



Tim's_Newton_b{; Modified Newt_ellipt_oops by Tim Wegner
             ; Use floating point. 
z = pixel, z2 = z*z, z3 = z*z2,t = (4 * (real(p2)<=0) + real(p2) * (0<p2) ):
   num = (z3 + fn1(p1)*z2 + 1)^.5      
   denom = (1.5*z2 + p1*z)/num    
   z = z - (num/denom)            
   z = sqr(z) + p1
   z2 = z*z+c
   z3 = z*z2
   fn2(p2+t) <= |z3 + p1*z2 + 1| 

}


BEJ_N28C_B {; Revised for Fractint v. 20 by George Martin
            ; Fourth line began
            ; z3=z^(zsqr=z*z)
            ; Also, sqrz was defined and never used
            ; fn1 used as a variable
  z=pixel:
  z1=z*fn1(z*fn2(z))
  z2=sqr(z)/fn1(z)
  z3=z^(z*z), zsin=(c+p1^1.5)*(c+p1/1.2)
  z=(z*1)/(c+p2), z=fn1(z), z=fn2(z)
  |z|<4
}

