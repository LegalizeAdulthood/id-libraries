; 
;    This file contains the new versions of two of my formulas: Mandel-newton
;  and Mandel-newton-2 (both in Gallet-2.FRM).
;    As the most spectacular effect produced by the old formulas under Fractint
;  19.2 disappeared under the developers version of Fractint (version 19.3), I
;  modified these formulas to make them compatible with Fractint 19.3.
; 
;    From now on, you can replace the old formulas by the new ones.

mandel-newton   {; Sylvie Gallet [101324,3444], 1995-1996
 ; Formula designed for Fractint 19.2 and modified for Fractint 19.3
   z = pixel , c = z , iter = 1
   rad = 3.1 , center = (1.0,0.1)
   pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
   zn = center+rad/(pix-center)
   limit = real(p1) , b1 = 16 , b2 = 0.0001 :
   test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4+(z==0))
   z = (z2+c)*test1 + (z-z1)*(1-test1) 
   iter = iter+1
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

mandel-newton-2 {; Sylvie Gallet [101324,3444], 1995-1996
 ; Formula designed for Fractint 19.2 and modified for Fractint 19.3
   limit = real(p1) , test0 = 1 , test3=0 , iter = 1 
   z = pixel , c = z , b1 = 16  
   rad = 6 , pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
   center = (1.0,0.1) , zn = center+rad/(pix-center) , b2 = 0.0001 :
   test0 = 1-test0 , test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4 + (z==0))
   z = (z2+c)*test1 + (z-z1)*(1-test1) 
   test3 = (test3 || (|z|>b1))
   z = z*(1-(test3 && test0 && test1))
   iter = iter+1
   ((|z|<=b1)*test1) || ((|z1|>=b2)*(1-test1))
}
